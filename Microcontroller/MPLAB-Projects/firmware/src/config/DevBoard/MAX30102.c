/***************************************************
  This is a library written for the Maxim MAX30102 Optical Smoke Detector
  It should also work with the MAX30102. However, the MAX30102 does not have a Green LED.

  These sensors use I2C to communicate, as well as a single (optional)
  interrupt line that is not currently supported in this driver.

  Written by Peter Jansen and Nathan Seidle (SparkFun)
  BSD license, all text above must be included in any redistribution.
 *****************************************************/

/*
 * Designed to target the MAX30102 PPG and SPO2 sensor
 * Modified for GMU ECE Senior Design Team HeartByte
 * Spring 2022
 * Robert Wallace, Hernan Arias, Gilberto Barrientos
 * 
 */

#include "MAX30102.h"
#include "definitions.h"

// this could be adjusted to uint16_t if we want to reduce the data size
uint32_t redSamplesBuffer[32];
uint32_t irSamplesBuffer[32];

// Status Registers
static   uint8_t MAX30102_INTSTAT1 =		0x00;
static   uint8_t MAX30102_INTSTAT2 =		0x01;
static   uint8_t MAX30102_INTENABLE1 =		0x02;
static   uint8_t MAX30102_INTENABLE2 =		0x03;

// FIFO Registers
static   uint8_t MAX30102_FIFOWRITEPTR = 	0x04;
static   uint8_t MAX30102_FIFOOVERFLOW = 	0x05;
static   uint8_t MAX30102_FIFOREADPTR = 	0x06;
static   uint8_t MAX30102_FIFODATA =		0x07;
#define              FIFO_LENGTH                32;

// Configuration Registers
static   uint8_t MAX30102_FIFOCONFIG = 		0x08;
static   uint8_t MAX30102_MODECONFIG = 		0x09;
static   uint8_t MAX30102_SPO2CONFIG = 	0x0A;    // Note, sometimes listed as "SPO2" config in datasheet (pg. 11)
static   uint8_t MAX30102_LED1_PULSEAMP = 	0x0C;
static   uint8_t MAX30102_LED2_PULSEAMP = 	0x0D;
static   uint8_t MAX30102_LED_PROX_AMP = 	0x10;
static   uint8_t MAX30102_MULTILEDCONFIG1 = 0x11;
static   uint8_t MAX30102_MULTILEDCONFIG2 = 0x12;
// Die Temperature Registers
static   uint8_t MAX30102_DIETEMPINT = 		0x1F;
static   uint8_t MAX30102_DIETEMPFRAC = 	0x20;
static   uint8_t MAX30102_DIETEMPCONFIG = 	0x21;
// Proximity Function Registers
static   uint8_t MAX30102_PROXINTTHRESH = 	0x30;

// Part ID Registers
static   uint8_t MAX30102_REVISIONID = 		0xFE;
static   uint8_t MAX30102_PARTID = 			0xFF;    // Should always be 0x15. Identical to MAX30102.

// MAX30102 Commands
// Interrupt configuration (pg 13, 14)
static   uint8_t MAX30102_INT_A_FULL_MASK =		(uint8_t)~0b10000000;
static   uint8_t MAX30102_INT_A_FULL_ENABLE = 	0x80;
static   uint8_t MAX30102_INT_A_FULL_DISABLE = 	0x00;

static   uint8_t MAX30102_INT_DATA_RDY_MASK = (uint8_t)~0b01000000;
static   uint8_t MAX30102_INT_DATA_RDY_ENABLE =	0x40;
static   uint8_t MAX30102_INT_DATA_RDY_DISABLE = 0x00;

static   uint8_t MAX30102_INT_ALC_OVF_MASK = (uint8_t)~0b00100000;
static   uint8_t MAX30102_INT_ALC_OVF_ENABLE = 	0x20;
static   uint8_t MAX30102_INT_ALC_OVF_DISABLE = 0x00;

static   uint8_t MAX30102_INT_PROX_INT_MASK = (uint8_t)~0b00010000;
static   uint8_t MAX30102_INT_PROX_INT_ENABLE = 0x10;
static   uint8_t MAX30102_INT_PROX_INT_DISABLE = 0x00;

static   uint8_t MAX30102_INT_DIE_TEMP_RDY_MASK = (uint8_t)~0b00000010;
static   uint8_t MAX30102_INT_DIE_TEMP_RDY_ENABLE = 0x02;
static   uint8_t MAX30102_INT_DIE_TEMP_RDY_DISABLE = 0x00;

static   uint8_t MAX30102_SAMPLEAVG_MASK =	(uint8_t)~0b11100000;

static   uint8_t MAX30102_ROLLOVER_MASK = 	0xEF;
static   uint8_t MAX30102_ROLLOVER_ENABLE = 0x10;
static   uint8_t MAX30102_ROLLOVER_DISABLE = 0x00;

static   uint8_t MAX30102_A_FULL_MASK = 	0xF0;

// Mode configuration commands (page 19)
static   uint8_t MAX30102_SHUTDOWN_MASK = 	0x7F;
static   uint8_t MAX30102_SHUTDOWN = 		0x80;
static   uint8_t MAX30102_WAKEUP = 			0x00;

static   uint8_t MAX30102_RESET_MASK = 		0xBF;
static   uint8_t MAX30102_RESET = 			0x40;

static   uint8_t MAX30102_MODE_MASK = 		0xF8;

// Particle sensing configuration commands (pgs 19-20)
static   uint8_t MAX30102_ADCRANGE_MASK = 	0x9F;

static   uint8_t MAX30102_SAMPLERATE_MASK = 0xE3;

static   uint8_t MAX30102_PULSEWIDTH_MASK = 0xFC;
#define MAX_RESOLUTION                          18

//Multi-LED Mode configuration (pg 22)
static   uint8_t MAX30102_SLOT1_MASK = 		0xF8;
static   uint8_t MAX30102_SLOT2_MASK = 		0x8F;
static   uint8_t MAX30102_SLOT3_MASK = 		0xF8;
static   uint8_t MAX30102_SLOT4_MASK = 		0x8F;

//
// Configuration
//

// bool TWIHS0_WriteRead( uint16_t address, uint8_t *wdata, size_t wlength, uint8_t *rdata, size_t rlength )

//Begin Interrupt configuration
uint8_t getINT1(struct MAX30102 *ppg) {
    uint8_t value;
    value = readRegister(ppg->_i2caddr, MAX30102_INTSTAT1);
    return value;
}
uint8_t getINT2(struct MAX30102 *ppg) {
    uint8_t value;
    value = readRegister(ppg->_i2caddr, MAX30102_INTSTAT2);
    return value;
//    return (readRegister8(_i2caddr, MAX30102_INTSTAT2, 1));
}

void enableAFULL(struct MAX30102 *ppg) {
    bitMask(ppg->_i2caddr, MAX30102_INTENABLE1, MAX30102_INT_A_FULL_MASK, MAX30102_INT_A_FULL_ENABLE);
//  bitMask(MAX30102_INTENABLE1, MAX30102_INT_A_FULL_MASK, MAX30102_INT_A_FULL_ENABLE);
}
void disableAFULL(struct MAX30102 *ppg) {
    bitMask(ppg->_i2caddr, MAX30102_INTENABLE1, MAX30102_INT_A_FULL_MASK, MAX30102_INT_A_FULL_DISABLE);
//  bitMask(MAX30102_INTENABLE1, MAX30102_INT_A_FULL_MASK, MAX30102_INT_A_FULL_DISABLE);
}

void enableDATARDY(struct MAX30102 *ppg) {
    bitMask(ppg->_i2caddr, MAX30102_INTENABLE1, MAX30102_INT_DATA_RDY_MASK, MAX30102_INT_DATA_RDY_ENABLE);
//  bitMask(MAX30102_INTENABLE1, MAX30102_INT_DATA_RDY_MASK, MAX30102_INT_DATA_RDY_ENABLE);
}
void disableDATARDY(struct MAX30102 *ppg) {
    bitMask(ppg->_i2caddr, MAX30102_INTENABLE1, MAX30102_INT_DATA_RDY_MASK, MAX30102_INT_DATA_RDY_DISABLE);
//  bitMask(MAX30102_INTENABLE1, MAX30102_INT_DATA_RDY_MASK, MAX30102_INT_DATA_RDY_DISABLE);
}

void enableALCOVF(struct MAX30102 *ppg) {
    bitMask(ppg->_i2caddr, MAX30102_INTENABLE1, MAX30102_INT_ALC_OVF_MASK, MAX30102_INT_ALC_OVF_ENABLE);
//  bitMask(MAX30102_INTENABLE1, MAX30102_INT_ALC_OVF_MASK, MAX30102_INT_ALC_OVF_ENABLE);
}
void disableALCOVF(struct MAX30102 *ppg) {
    bitMask(ppg->_i2caddr, MAX30102_INTENABLE1, MAX30102_INT_ALC_OVF_MASK, MAX30102_INT_ALC_OVF_DISABLE);
//  bitMask(MAX30102_INTENABLE1, MAX30102_INT_ALC_OVF_MASK, MAX30102_INT_ALC_OVF_DISABLE);
}

void enablePROXINT(struct MAX30102 *ppg) {
    bitMask(ppg->_i2caddr, MAX30102_INTENABLE1, MAX30102_INT_PROX_INT_MASK, MAX30102_INT_PROX_INT_ENABLE);
//  bitMask(MAX30102_INTENABLE1, MAX30102_INT_PROX_INT_MASK, MAX30102_INT_PROX_INT_ENABLE);
}
void disablePROXINT(struct MAX30102 *ppg) {
    bitMask(ppg->_i2caddr, MAX30102_INTENABLE1, MAX30102_INT_PROX_INT_MASK, MAX30102_INT_PROX_INT_DISABLE);
//  bitMask(MAX30102_INTENABLE1, MAX30102_INT_PROX_INT_MASK, MAX30102_INT_PROX_INT_DISABLE);
}

void enableDIETEMPRDY(struct MAX30102 *ppg) {
    bitMask(ppg->_i2caddr, MAX30102_INTENABLE2, MAX30102_INT_DIE_TEMP_RDY_MASK, MAX30102_INT_DIE_TEMP_RDY_ENABLE);
//  bitMask(MAX30102_INTENABLE2, MAX30102_INT_DIE_TEMP_RDY_MASK, MAX30102_INT_DIE_TEMP_RDY_ENABLE);
}
void disableDIETEMPRDY(struct MAX30102 *ppg) {
    bitMask(ppg->_i2caddr, MAX30102_INTENABLE2, MAX30102_INT_DIE_TEMP_RDY_MASK, MAX30102_INT_DIE_TEMP_RDY_DISABLE);
//  bitMask(MAX30102_INTENABLE2, MAX30102_INT_DIE_TEMP_RDY_MASK, MAX30102_INT_DIE_TEMP_RDY_DISABLE);
}

//End Interrupt configuration

void initMAX30102(struct MAX30102 *ppg)
{
    ppg->_i2caddr = MAX30102_ADDRESS;
    ppg->ledMode = 0;
    
}

// This simply write the reset bit. We need to wait for the interrupt signal and
// check the PWR_RDY bit of INTSTATUS2
void softReset(struct MAX30102 *ppg) {
//    bool status;
    volatile uint32_t rstDelay;
    uint8_t value;
    
    bitMask(ppg->_i2caddr, MAX30102_MODECONFIG, MAX30102_RESET_MASK, MAX30102_RESET);
    
    // busy wait some time before checking reset status
    rstDelay = 0;
j:  while(rstDelay<RST_DELAY) {rstDelay++;}

    // check the reset status
    value = readRegister(ppg->_i2caddr, MAX30102_MODECONFIG);
    
    // if the reset status is still 1, go back to the busy wait
    if(value & MAX30102_RESET) {
        goto j;
    }
}

// Put IC into low power mode (datasheet pg. 19)
// During shutdown the IC will continue to respond to I2C commands but will
// not update with or take new readings (such as temperature)
void shutDown(struct MAX30102 *ppg) {
    bitMask(ppg->_i2caddr, MAX30102_MODECONFIG, MAX30102_SHUTDOWN_MASK, MAX30102_SHUTDOWN);
    bitMask(ppg->_i2caddr, MAX30102_MODECONFIG, MAX30102_MODE_MASK, ppg->ledMode);
//  bitMask(MAX30102_MODECONFIG, MAX30102_SHUTDOWN_MASK, MAX30102_SHUTDOWN);
}

// Pull IC out of low power mode (datasheet pg. 19)
void wakeUp(struct MAX30102 *ppg) {
    bitMask(ppg->_i2caddr, MAX30102_MODECONFIG, MAX30102_SHUTDOWN_MASK, MAX30102_WAKEUP);
    bitMask(ppg->_i2caddr, MAX30102_MODECONFIG, MAX30102_MODE_MASK, ppg->ledMode);
//  bitMask(MAX30102_MODECONFIG, MAX30102_SHUTDOWN_MASK, MAX30102_WAKEUP);
}

// Set which LEDs are used for sampling -- Red only, RED+IR only, or custom.
// See datasheet, page 19
// mode:
// 010 HR   (RED)
// 011 SpO2 (IR + RED))
void setLEDMode(struct MAX30102 *ppg, uint8_t mode) {
    ppg->ledMode = mode;
    bitMask(ppg->_i2caddr, MAX30102_MODECONFIG, MAX30102_MODE_MASK, mode);
}

// adcRange:
// 00 : 2048
// 01 : 4096
// 10 : 8192
// 11 : 16384
void setADCRange(struct MAX30102 *ppg, uint16_t adcRange) {
    uint8_t mappedAdcRange;
    switch(adcRange) {
        case 2048:
            mappedAdcRange = 0x00<<5;
            break;
        case 4096:
            mappedAdcRange = 0x01<<5;
            break;
        case 8192:
            mappedAdcRange = 0x02<<5;
            break;
        case 16384:
            mappedAdcRange = 0x03<<5;
            break;
        default:
            mappedAdcRange = 0x00;
            break;
    }
    bitMask(ppg->_i2caddr, MAX30102_SPO2CONFIG, MAX30102_ADCRANGE_MASK, mappedAdcRange);
//  bitMask(MAX30102_PARTICLECONFIG, MAX30102_ADCRANGE_MASK, adcRange);
}

/*
 * sampleRate:
 * 000 : 50
 * 001 : 100
 * 010 : 200
 * 011 : 400
 * 100 : 800
 * 101 : 1000
 * 110 : 1600
 * 111 : 3200
 */
void setSampleRate(struct MAX30102 *ppg, uint16_t sampleRate) {
    uint8_t mappedSampleRate;
    switch(sampleRate) {
        case 50:
            mappedSampleRate = 0x00<<2;
            break;
        case 100:
            mappedSampleRate = 0x01<<2;
            break;
        case 200:
            mappedSampleRate = 0x02<<2;
            break;
        case 400:
            mappedSampleRate = 0x03<<2;
            break;
        case 800:
            mappedSampleRate = 0x04<<2;
            break;
        case 1000:
            mappedSampleRate = 0x05<<2;
            break;
        case 1600:
            mappedSampleRate = 0x06<<2;
            break;
        case 3200:
            mappedSampleRate = 0x07<<2;
            break;
        default:
            mappedSampleRate = 0x00;
            break;
    }
    bitMask(ppg->_i2caddr, MAX30102_SPO2CONFIG, MAX30102_SAMPLERATE_MASK, mappedSampleRate);
//  bitMask(MAX30102_PARTICLECONFIG, MAX30102_SAMPLERATE_MASK, sampleRate);
}

/*
 * pulseWidth:
 * 00 : 69      15 bit resolution
 * 01 : 118     16 bit resolution
 * 10 : 215     17 bit resolution
 * 11 : 411     18 bit resolution
 */
void setPulseWidth(struct MAX30102 *ppg, uint16_t pulseWidth) {
    uint8_t mappedPulseWidth;
    switch(pulseWidth) {
        case 69:
            mappedPulseWidth = 0x00;
            break;
        case 118:
            mappedPulseWidth = 0x01;
            break;
        case 215:
            mappedPulseWidth = 0x02;
            break;
        case 411:
            mappedPulseWidth = 0x03;
            break;
        default:
            mappedPulseWidth = 0x00;
            break;
    }
    bitMask(ppg->_i2caddr, MAX30102_SPO2CONFIG, MAX30102_PULSEWIDTH_MASK, mappedPulseWidth);
//  bitMask(MAX30102_PARTICLECONFIG, MAX30102_PULSEWIDTH_MASK, pulseWidth);
}

//bool TWIHS0_Write( uint16_t address, uint8_t *pdata, size_t length )
// REFER TO DATASHEET TO SEE BYTE VALUES THAT CORRESPOND TO CURRENT
// NOTE: Amplitude values: 0x00 = 0mA, 0x7F = 25.4mA, 0xFF = 50mA (typical)
// See datasheet, page 21
void setPulseAmplitudeRed(struct MAX30102 *ppg, uint8_t amplitude) {
    ppg->pulseAmplitudeRed = amplitude;
    writeRegister(ppg->_i2caddr, MAX30102_LED1_PULSEAMP, amplitude);
}

void setPulseAmplitudeIR(struct MAX30102 *ppg, uint8_t amplitude) {
    ppg->pulseAmplitudeIR = amplitude;
    writeRegister(ppg->_i2caddr, MAX30102_LED2_PULSEAMP, amplitude);
}

//Non-Existent
void setPulseAmplitudeProximity(struct MAX30102 *ppg, uint8_t amplitude) {
    ppg->pulseAmplitudeProx = amplitude;
    writeRegister(ppg->_i2caddr, MAX30102_LED_PROX_AMP, amplitude);
}

// Set the IR ADC count that will trigger the beginning of particle-sensing mode.
// The threshMSB signifies only the 8 most significant-bits of the ADC count.
// See datasheet, page 24.
void setProximityThreshold(struct MAX30102 *ppg, uint16_t threshMSB) {
    
    writeRegister(ppg->_i2caddr, MAX30102_PROXINTTHRESH, threshMSB);
}

//Given a slot number assign a thing to it
//Devices are SLOT_RED_LED or SLOT_RED_PILOT (proximity)
//Assigning a SLOT_RED_LED will pulse LED
//Assigning a SLOT_RED_PILOT will ??
void enableSlot(struct MAX30102 *ppg, uint8_t slotNumber, uint8_t device) {
  switch (slotNumber) {
    case (1):
      bitMask(ppg->_i2caddr, MAX30102_MULTILEDCONFIG1, MAX30102_SLOT1_MASK, device);
      break;
    case (2):
      bitMask(ppg->_i2caddr, MAX30102_MULTILEDCONFIG1, MAX30102_SLOT2_MASK, device << 4);
      break;
    case (3):
      bitMask(ppg->_i2caddr, MAX30102_MULTILEDCONFIG2, MAX30102_SLOT3_MASK, device);
      break;
    case (4):
      bitMask(ppg->_i2caddr, MAX30102_MULTILEDCONFIG2, MAX30102_SLOT4_MASK, device << 4);
      break;
    default:
      //Shouldn't be here!
      break;
  }
}

//Clears all slot assignments
void disableSlots(struct MAX30102 *ppg) {
    uint8_t buff[3];
    volatile uint16_t delay;
    
    buff[0] = MAX30102_MULTILEDCONFIG1;
    buff[1] = 0;
    buff[2] = 0;
    
    TWIHS0_Write(ppg->_i2caddr, buff, 2);
    while(TWIHS0_IsBusy());
    delay = 0;
    while(delay<T_BUF){delay++;}
    
}

//
// FIFO Configuration
//

//Set sample average (Table 3, Page 18)
void setFIFOAverage(struct MAX30102 *ppg, uint8_t numberOfSamples) {
    uint8_t mappedNumberOfSamples = 0;
    switch(numberOfSamples)
    {
        case 1:
            mappedNumberOfSamples = 0<<5;
            break;
        case 2:
            mappedNumberOfSamples = 1<<5;
            break;
        case 4:
            mappedNumberOfSamples = 2<<5;
            break;
        case 8:
            mappedNumberOfSamples = 3<<5;
            break;
        case 16:
            mappedNumberOfSamples = 4<<5;
            break;
        case 32:
            mappedNumberOfSamples = 5<<5;
            break;
        default:
            mappedNumberOfSamples = 0;
            break;
    }
    bitMask(ppg->_i2caddr, MAX30102_FIFOCONFIG, MAX30102_SAMPLEAVG_MASK, mappedNumberOfSamples);
}

//Resets all points to start in a known state
//Page 15 recommends clearing FIFO before beginning a read
void clearFIFO(struct MAX30102 *ppg) {
    volatile uint16_t delay;
//    uint8_t buff[4];
    
//    buff[0] = MAX30102_FIFOWRITEPTR;
//    buff[1] = 0;
//    buff[2] = 0;
//    buff[3] = 0;
//    
//    TWIHS0_Write(ppg->_i2caddr, buff, 4);
//    while(TWIHS0_IsBusy());
//    delay = 0;
//    while(delay<T_BUF){delay++;}
    
    writeRegister(ppg->_i2caddr, MAX30102_FIFOWRITEPTR, 0);
    while(TWIHS0_IsBusy());
    delay = 0;
    while(delay<T_BUF){delay++;}
    
    writeRegister(ppg->_i2caddr, MAX30102_FIFOOVERFLOW, 0);
    while(TWIHS0_IsBusy());
    delay = 0;
    while(delay<T_BUF){delay++;}
    
    
    writeRegister(ppg->_i2caddr, MAX30102_FIFOREADPTR, 0);
    while(TWIHS0_IsBusy());
    delay = 0;
    while(delay<T_BUF){delay++;}
}

//Enable roll over if FIFO over flows
void enableFIFORollover(struct MAX30102 *ppg) {
    bitMask(ppg->_i2caddr, MAX30102_FIFOCONFIG, MAX30102_ROLLOVER_MASK, MAX30102_ROLLOVER_ENABLE);
}

//Disable roll over if FIFO over flows
void disableFIFORollover(struct MAX30102 *ppg) {
    bitMask(ppg->_i2caddr, MAX30102_FIFOCONFIG, MAX30102_ROLLOVER_MASK, MAX30102_ROLLOVER_DISABLE);
}

//Set number of samples to trigger the almost full interrupt (Page 18)
//Power on default is 32 samples
//Note it is reverse: 0x00 is 32 samples, 0x0F is 17 samples
void setFIFOAlmostFull(struct MAX30102 *ppg, uint8_t almostFull) {
    ppg->almostFullThresh = almostFull;
    bitMask(ppg->_i2caddr, MAX30102_FIFOCONFIG, MAX30102_A_FULL_MASK, almostFull);
}

//Read the FIFO Write Pointer
uint8_t getWritePointer(struct MAX30102 *ppg) {
    uint8_t value;
    value = readRegister(ppg->_i2caddr, MAX30102_FIFOWRITEPTR);
    return value;
}

//Read the FIFO Read Pointer
uint8_t getReadPointer(struct MAX30102 *ppg) {
    uint8_t value;
    value = readRegister(ppg->_i2caddr, MAX30102_FIFOREADPTR);
    return value;
}

void setWritePointer(struct MAX30102 *ppg, uint8_t value) {
    writeRegister(ppg->_i2caddr, MAX30102_FIFOWRITEPTR, value);
}

void setReadPointer(struct MAX30102 *ppg, uint8_t value) {
    writeRegister(ppg->_i2caddr, MAX30102_FIFOREADPTR, value);
}

// Initiate temperature read. Need to wait for TMP_RDY interrupt
void startTempRead(struct MAX30102 *ppg) {
    writeRegister(ppg->_i2caddr, MAX30102_DIETEMPCONFIG, 0x01);
}

// Read Die Temperature
// Returns temp in C
float readTemperature(struct MAX30102 *ppg) {
    int8_t tempInt;
    uint8_t tempFrac;
    uint8_t value;
    
    // read integer part
    value = readRegister(ppg->_i2caddr, MAX30102_DIETEMPINT);
    tempInt = value;
    
    // read fractional part
    value = readRegister(ppg->_i2caddr, MAX30102_DIETEMPFRAC);
    tempFrac =  value;

    // Step 3: Calculate temperature (datasheet pg. 23)
    return (float)tempInt + ((float)tempFrac * 0.0625);
}

// Returns die temp in F
float readTemperatureF(struct MAX30102 *ppg) {
  float temp = readTemperature(ppg);

  if (temp != -999.0) temp = temp * 1.8 + 32.0;

  return (temp);
}

// Set the PROX_INT_THRESHold
void setPROXINTTHRESH(struct MAX30102 *ppg, uint8_t val) {
  writeRegister(ppg->_i2caddr, MAX30102_PROXINTTHRESH, val);
}

//
// Device ID and Revision
//
uint8_t readPartID(struct MAX30102 *ppg) {
    uint8_t value;
    
    value = readRegister(ppg->_i2caddr, MAX30102_PARTID);

    return value;
}

uint8_t readRevisionID(struct MAX30102 *ppg) {
    uint8_t value;
    
    value = readRegister(ppg->_i2caddr, MAX30102_REVISIONID);

    return value;
}   

//
// Data Collection
//

/*
 * Read a number of Samples from the FIFO.
 */
bool dumpFIFO(struct MAX30102 *ppg, uint8_t samples) {
    bool status;
    int i;
    uint8_t data[32*6];
    uint16_t bytes;
    uint8_t padding;
    volatile uint16_t delay = 0;
    if(ppg->ledMode == 2) { // Red LED only
        bytes = samples * 3;
        status = TWIHS0_WriteRead(ppg->_i2caddr, &MAX30102_FIFODATA, 1, data, bytes);
        while(TWIHS0_IsBusy());
        delay=0;
        while(delay<T_BUF){delay++;}
        padding = MAX_RESOLUTION - ppg->resolution;
        for(i=0; i<samples; i++) {
            redSamplesBuffer[i] = ((data[i*3]     << (16-padding))
                            |(data[(i+1)*3] << (8-padding))
                            |(data[(i+2)*3] >> padding))
                            & 0x00FFFFFF;
        }
    } else 
    if(ppg->ledMode == 3) { // Red + IR LEDs
        // determine how many bytes to read
        bytes = samples * 6;
        // read data from fifo into byte array
        status = TWIHS0_WriteRead(ppg->_i2caddr, &MAX30102_FIFODATA, 1, data, bytes);
        while(TWIHS0_IsBusy());
        delay=0;
        while(delay<T_BUF){delay++;}
        padding = MAX_RESOLUTION - ppg->resolution;
        // packs bytes into sample arrays
        for(i=0; i<samples; i++) {
            redSamplesBuffer[i] = ((data[i*6]     << (16-padding))
                            |(data[(i+1)*6] << (8-padding))
                            |(data[(i+2)*6] >> padding))
                            & 0x00FFFFFF;
            irSamplesBuffer[i]  = ((data[(i+3)*6] << (16-padding))
                            |(data[(i+4)*6] << (8-padding))
                            |(data[(i+5)*6] >> padding))
                            & 0x00FFFFFF;
        }
    } else {
        return false;
    }
    clearFIFO(ppg);
    return status;
}

// Return a pointer to the RED sample array
uint32_t * getRed(struct MAX30102 *ppg) {
    return ppg->redSamplesBuffer;
}

// Return a pointer to the IR sample array
uint32_t * getIR(struct MAX30102 *ppg) {
    return (ppg->irSamplesBuffer);
}

//Given a register, read it, mask it, and then set the thing
void bitMask(uint8_t addr, uint8_t reg, uint8_t mask, uint8_t thing) {
    // Grab current register context
    uint8_t originalContents, value;
    value = readRegister(addr, reg);
    originalContents = value;

    // Zero-out the portions of the register we're interested in
    originalContents = originalContents & mask;

    // Change contents
    writeRegister(addr,reg, originalContents | thing);
}

void writeRegister(uint8_t addr, uint8_t reg, uint8_t value) {
    uint8_t buff[2];
    buff[0] = reg;
    buff[1] = value;
    TWIHS0_Write(addr, buff, 2);
    while(TWIHS0_IsBusy());
    volatile uint16_t i = 0;
    while(i<T_BUF){i++;}
}

uint8_t readRegister(uint8_t addr, uint8_t reg) {
    volatile uint16_t delay;
    uint8_t value;
    TWIHS0_WriteRead(addr, &reg, 1, &value, 1);
    while(TWIHS0_IsBusy());
    while(delay<T_BUF){delay++;}
    return value;
}

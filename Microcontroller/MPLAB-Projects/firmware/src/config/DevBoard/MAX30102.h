/*************************************************** 
 This is a library written for the Maxim MAX30105 Optical Smoke Detector
 It should also work with the MAX30102. However, the MAX30102 does not have a Green LED.

 These sensors use I2C to communicate, as well as a single (optional)
 interrupt line that is not currently supported in this driver.
 
 Written by Peter Jansen and Nathan Seidle (SparkFun)
 BSD license, all text above must be included in any redistribution.
 *****************************************************/


/*
 * Modified for GMU ECE Senior Design Team HeartByte
 * Spring 2022
 * Robert Wallace, Hernan Arias, Gilberto Barrientos
 * Angelie Ngo, George Gomez, Farris El Machtani Idrissi
 * 
 */

#pragma once

#include <stdint.h>
#include "stdbool.h"

#define MAX30102_ADDRESS    0x57 //7-bit I2C Address
//Note that MAX30102 has the same I2C address and Part ID
#define T_BUF               750 // this is the amount of time to wait between
                                // I2C transfers
#define RST_DELAY           30000

#define A_FULL_FLAG         0x80
#define PPG_RDY_FLAG        0x40
#define ALC_OVF_FLAG        0x20
#define PROX_INT_FLAG       0x10
#define PWR_RDY_FLAG        0x01
#define DIE_TEMP_RDY_FLAG   0x02

struct MAX30102{
//    uint8_t _i2caddr = 0x57;
    uint8_t _i2caddr;
    //activeLEDs is the number of channels turned on, and can be 1 to 3. 2 is common for Red+IR.
    uint8_t ledMode; //Gets set during setup. Allows check() to calculate how many bytes to read from FIFO
    uint8_t resolution;
    uint8_t pulseAmplitudeRed;
    uint8_t pulseAmplitudeIR;
    uint8_t pulseAmplitudeProx;
    
    // this could be adjusted to uint16_t if we want to reduce the data size
    uint32_t redSamplesBuffer[32];
    uint32_t irSamplesBuffer[32];
    
    uint8_t almostFullThresh;
};

void initMAX30102(struct MAX30102 *ppg);

uint32_t * getRed(struct MAX30102 *ppg); //Returns RED sample array
uint32_t * getIR(struct MAX30102 *ppg); //Returns IR sample array

// Configuration
void softReset(struct MAX30102 *ppg);
// Puts the sensor into a lpm state but maintains register values
void shutDown(struct MAX30102 *ppg); 
// moves sensor from lpm state
void wakeUp(struct MAX30102 *ppg); 

void setLEDMode(struct MAX30102 *ppg, uint8_t mode);

void setADCRange(struct MAX30102 *ppg, uint16_t adcRange);
void setSampleRate(struct MAX30102 *ppg, uint16_t sampleRate);
void setPulseWidth(struct MAX30102 *ppg, uint16_t pulseWidth);

void setPulseAmplitudeRed(struct MAX30102 *ppg, uint8_t value);
void setPulseAmplitudeIR(struct MAX30102 *ppg, uint8_t value);
void setPulseAmplitudeProximity(struct MAX30102 *ppg, uint8_t value);

void setProximityThreshold(struct MAX30102 *ppg, uint16_t threshMSB);

//Multi-led configuration mode (page 22)
void enableSlot(struct MAX30102 *ppg, uint8_t slotNumber, uint8_t device); //Given slot number, assign a device to slot
void disableSlots(struct MAX30102 *ppg);

// Data Collection

//Interrupts (page 13, 14)
uint8_t getINT1(struct MAX30102 *ppg); //Returns the main interrupt group
uint8_t getINT2(struct MAX30102 *ppg); //Returns the temp ready interrupt
void enableAFULL(struct MAX30102 *ppg); //Enable/disable individual interrupts
void disableAFULL(struct MAX30102 *ppg);
void enableDATARDY(struct MAX30102 *ppg);
void disableDATARDY(struct MAX30102 *ppg);
void enableALCOVF(struct MAX30102 *ppg);
void disableALCOVF(struct MAX30102 *ppg);
void enablePROXINT(struct MAX30102 *ppg);
void disablePROXINT(struct MAX30102 *ppg);
void enableDIETEMPRDY(struct MAX30102 *ppg);
void disableDIETEMPRDY(struct MAX30102 *ppg);

//Proximity Mode Interrupt Threshold
void setPROXINTTHRESH(struct MAX30102 *ppg, uint8_t val);

//FIFO Configuration (page 18)
void setFIFOAverage(struct MAX30102 *ppg, uint8_t samples);
void enableFIFORollover(struct MAX30102 *ppg);
void disableFIFORollover(struct MAX30102 *ppg);
void setFIFOAlmostFull(struct MAX30102 *ppg, uint8_t almostFull);

//FIFO Reading
uint8_t available(struct MAX30102 *ppg); //Tells caller how many new samples are available (head - tail)
void nextSample(struct MAX30102 *ppg); //Advances the tail of the sense array
// Reads len number of bytes from the FIFO
bool dumpFIFO(struct MAX30102 *ppg, uint8_t samples);

uint8_t getWritePointer(struct MAX30102 *ppg);
uint8_t getReadPointer(struct MAX30102 *ppg);
void setWritePointer(struct MAX30102 *ppg, uint8_t value);
void setReadPointer(struct MAX30102 *ppg, uint8_t value);
void clearFIFO(struct MAX30102 *ppg); //Sets the read/write pointers to zero

// Die Temperature
void startTempRead(struct MAX30102 *ppg);
float readTemperature(struct MAX30102 *ppg);
float readTemperatureF(struct MAX30102 *ppg);

// Detecting ID/Revision
uint8_t readRevisionID(struct MAX30102 *ppg);
uint8_t readPartID(struct MAX30102 *ppg);  

// Setup the IC with user selectable settings
//void setup(uint8_t powerLevel = 0x1F, uint8_t sampleAverage = 4, uint8_t ledMode = 3, int sampleRate = 400, int pulseWidth = 411, int adcRange = 4096);
void writeRegister(uint8_t addr, uint8_t reg, uint8_t value);
uint8_t readRegister(uint8_t addr, uint8_t reg);

void bitMask(uint8_t addr, uint8_t reg, uint8_t mask, uint8_t thing);



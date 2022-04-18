/*******************************************************************************
  Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This file contains the "main" function for a project.

  Description:
    This file contains the "main" function for a project.  The
    "main" function calls the "SYS_Initialize" function to initialize the state
    machines of all modules in the system
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes
#include "MAX30102.h"

#define TIMER_PERIOD    29                      // Alarm time in seconds

// PPG Sensor Configuration
#define MAX_SAMPLES     50                      // number of samples to read
#define FIFO_DUMP_AMT   31
#define MAX_TIMESTAMPS  50                      // number of timestamps to record
#define FIFO_AVG        4                       // average every 4 samples
#define SAMPLE_RATE     400                    // sps
#define ALMOST_FULL     32-FIFO_DUMP_AMT     // int at 31 samples
#define LED_MODE        3                       // IR + RED
#define ADC_RANGE       4096                    // nA
#define PULSE_WIDTH     411                     // uS -> 16 bit resolution
#define PROX_THRESH     3                       // proximity mode threshold

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************
// Interrupt Flags
static volatile bool timerInt = false;
static volatile bool ppgFifoFullInt = false;
static volatile bool ppgPwrRdyInt = false;
static volatile bool ppgTmpRdyInt = false;
static volatile bool ppgProxInt = false;

/*
 *  Interrupt Handler Declarations
 */
void setHandlers(void);
static void RTT_AlarmHandler(RTT_INTERRUPT_TYPE status, uintptr_t context);
static void MAX30102_IntHandler(PIO_PIN pin, uintptr_t context);

/*
 *  Support Function Declarations
 */
void ppgInit(void);
void setSysTime(void);
void startTimers(void);
void loadBuffers(void);
void ppgSetup(void);
void test(void);

uint8_t rid, pid;
// PPG Data buffers
uint16_t redBuffer[MAX_SAMPLES];
uint16_t irBuffer[MAX_SAMPLES];
uint32_t measuredSamples;

struct MAX30102 ppg;

// State transition conditions
//bool measureComplete = false;

void readPostWakeUp()
{
    bool status;
    uint8_t originalContents, value;
    uint8_t reg = 0x09;
    status = TWIHS0_WriteRead(0x57, &reg, 1, &value, 1);
    while(TWIHS0_IsBusy());
    originalContents = (status) ? value : 0;
    printf("Reading registers 0x09 address: %d \n\r", originalContents);
}
// States
enum STATES{
    BOOT_UP,
    INIT_MEASURE,
    WAIT_FOR_INT,
    TIMER_COMPLETE,
    MEASURE_COMPLETE
};
enum STATES state;

//uint8_t printReadReg(uint8_t pRegAddress)
//{
//    uint8_t value;
//    TWIHS0_WriteRead(ppg._i2caddr, &pRegAddress, 1, &value, 1);
//    printf("Value of Reg: %d", value);
//}

int main ( void )
{
//    LED_Toggle();
    uint8_t reg, value;
    uint64_t i=0;
    uint64_t init=0;
    struct tm sys_time;
    
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    
    // only use BOOT_UP state when PPG sensor powers on after SAME70
    state = BOOT_UP;
    
    //Currently sets ISR handlers for:
    // RTT alarm
    // Falling edge interrupt on PA06 for PPG interrupt line
    //Local Interrupt enable is set in this function
    setHandlers();
    
    
    //Sets up the system time for the RTC
    setSysTime();
    
    initMAX30102(&ppg);
    //Starts the RTT timer (Configured by MPLAB to be sourced by 1 Hz clock)
//    startTimers();
    
//    test();
    
    while ( true )
    {
        /* Maintain state machines of all polled MPLAB Harmony modules. */
        SYS_Tasks ( );
        switch(state) {
            case BOOT_UP:
                printf("~~BOOT_UP~~\n\r");
                // set LPM to wait for PWR_RDY interrupt from MAX30102
                // power off ppg sensor by removing the 3.3v pin from the same70
                // and remove it from the led pins
                // power onn the ppg sensor by inserting the pin then afterwards
                // insert the 3.3v pin for the LED
                //
                // NEED TO INSERT A PROCEDURE TO POWER OFF THE V_LED AND V_DD 
                // USING GPIO. 
                // 1) TURN OFF BOTH V_LED AND V_DD
                // 2) TURN ON V_DD
                // 3) WAIT FOR PWR_RDY
                while(!ppgPwrRdyInt){};
                //SUPC_SleepModeEnter();
                // 4) TURN ON V_LED
                // 5) BEGIN MAX30102 SETUP PROCEDURE
                printf("Waiting for PWR_RDY\n\r");
                

                
                ppgSetup();
                
                startTimers();
                state = INIT_MEASURE;
                break;
                
            case INIT_MEASURE:
                printf("~~INIT_MEASURE~~\n\r");
                /* Get and Display System Time*/
                RTC_TimeGet(&sys_time);
                printf("System time is: %02d:%02d:%02d:%02d:%02d:%02d\n\r",
                        sys_time.tm_year, sys_time.tm_mon, sys_time.tm_mday,
                        sys_time.tm_hour, sys_time.tm_min, sys_time.tm_sec);

                /* Start PPG Sensor for sampling */
//                wakeUp(&ppg);
                
                printf("AFULL INT EN CHECK:\n\r");
                reg = 0x02;
                value = readRegister(ppg._i2caddr, reg);
                printf("RD: Reg: %02X; Value: %02X\n\r", reg, value);
                
                printf("LED MODE CHECK:\n\r");
                reg = 0x09;
                value = readRegister(ppg._i2caddr, reg);
                printf("RD: Reg: %02X; Value: %02X\n\r", reg, value);
                
                clearFIFO(&ppg);
                measuredSamples = 0;
                init = 0;
                state = WAIT_FOR_INT;
                break;
                
            case WAIT_FOR_INT:
                if(init==0) {
                    printf("~~WAIT_FOR_INT~~\n\r");
                }
                if((init&0xFFFFFF) == 0) {
                    printf("FIFO PTR CHECK\n\r");
                    reg = 0x04;
                    value = getWritePointer(&ppg);
                    printf("RD: Reg: %02X; Value: %02X\n\r", reg, value);
                    reg = 0x06;
                    value = getReadPointer(&ppg);
                    printf("RD: Reg: %02X; Value: %02X\n\r", reg, value);
                } 
                // set LPM to wait for interrupts
                // Waiting for FIFO_ALMOST_FULL flag to then dump fifo data and
                // fill the ir and red buffers. Once buffers are full, wait for
                // the timer interrupt to initiate a new measurement.
//                SUPC_SleepModeEnter();
                init++;
                break;
                
            case MEASURE_COMPLETE:
                printf("~~MEASURE_COMPLETE~~\n\r");
                // MAX30102 LPM - maintains register state
                shutDown(&ppg);
                // "Transmit" Data
                for(i=0; i<MAX_SAMPLES; i++){
                    printf("%d\n\r", irBuffer[i]);
                }
                for(i=0; i<MAX_SAMPLES; i++){
                    printf("%d\n\r", redBuffer[i]);
                }
                state = WAIT_FOR_INT;
                break;
                
            case TIMER_COMPLETE:
                printf("~~TIMER_COMPLETE~~\n\r");
                state = INIT_MEASURE;
                break;
                
            default:
                printf("~~ERROR~~\n\r");
                break;       
        }
        
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}

/*
 * 
 * Support Function Definitions
 * 
 */

//test function to keep things readable
void test(void) {
    uint8_t reg, value;
    uint8_t pidtest, ridtest; //pid = Part ID, rid = Revision_part ID
    
    printf("~~~~~~~Testing~~~~~~~\n\r");
    
    while(!ppgPwrRdyInt) {
        // wait for power up
    }
    
    pidtest = readPartID(&ppg);
    printf(" Part ID:        %02X\n\r", pidtest);
    ridtest = readRevisionID(&ppg);
    printf(" Revision ID:    %02X\n\r", ridtest);
    printf("~~~~~~~~~~~~~~~~~~~~~\n\r");
    
    // check initial value
    reg = 0x02;
    value = 0xFF;
    printf("Reading Interrupt Enable\n\r");
    value = readRegister(ppg._i2caddr, reg);
    printf("RD: Reg: %02X; Value: %02X\n\r", reg, value);
    
    // shutdown
    reg = 9;
    value = 0x80;
    printf("Shutting Down\n\r");
    shutDown(&ppg);
//    while(TWIHS0_IsBusy());
    printf("WR: Reg: %02X; Value: %02X\n\r", reg, value);

    // enable interrupt for almost full
    reg = 2;
    value = 0x80;
    printf("Enable Interrupt\n\r");
    enableAFULL(&ppg);
//    while(TWIHS0_IsBusy());
    printf("WR: Reg: %02X; Value: %02X\n\r", reg, value);
    
    // check if interrupt is still set
    reg = 2;
    value = 0xFF;
    printf("Reading Interrupt Enable\n\r");
    value = readRegister(ppg._i2caddr, reg);
    printf("RD: Reg: %02X; Value: %02X\n\r", reg, value);
    
    reg = 8;
    value = 3;
    printf("Set the FIFO Average\n\r");
    setFIFOAverage(&ppg, value);
//    while(TWIHS0_IsBusy());
    printf("WR: Reg: %02X; Value: %02X\n\r", reg, value);
    
    
    reg = 0x08;
    value = 0xFF;
    printf("Read the FIFO Average\n\r");
    value = readRegister(ppg._i2caddr, reg);
    printf("RD: Reg: %02X; Value: %02X\n\r", reg, value);
    
    reg = 0x0C;
    printf("Set RED LED Pulse Amplitude\n\r");
    setPulseAmplitudeRed(&ppg, 0x1F);
    value = readRegister(ppg._i2caddr, reg);
    printf("RD: Reg: %02X; Value: %02X\n\r", reg, value);
    
    // wakeup ppg sensor
    reg = 9;
    value = 0;
    printf("Wake up\n\r");
    wakeUp(&ppg);
    printf("WR: Reg: %02X; Value: %02X\n\r", reg, value);
    
    // check if interrupt is still enabled
    reg = 2;
    value = 0xFF;
    printf("Check Interrupt\n\r");
    value = readRegister(ppg._i2caddr, reg);
    printf("RD: Reg: %02X; Value: %02X\n\r", reg, value);
    
    // busy wait
    //      ~~~~~~~~~~~~~~~~~~~~~
    printf("~~~~Test Complete~~~~\n\r");
    while(1);
}
// initialize timer values
void setSysTime(void) {
    struct tm sys_time;
    sys_time.tm_sec = 1;
    sys_time.tm_min = 2;
    sys_time.tm_hour = 3;
    sys_time.tm_mday = 4;
    sys_time.tm_mon = 5;
    sys_time.tm_year = 6789;
    sys_time.tm_wday = 0;
    RTC_TimeSet(&sys_time);
}
// start the RTT Timer
void startTimers(void) {
    RTT_AlarmValueSet(RTT_TimerValueGet() + TIMER_PERIOD);
    RTT_Enable();
}
// Loads ir and red fifo data into buffers
void loadBuffers(void) {
    uint32_t i;
    uint8_t limit;
    uint32_t *ir, *red;
    ir = getIR(&ppg);
    red = getRed(&ppg);
    // load ir and red fifo values into the main data buffer for transmission
    limit = (measuredSamples+31 < MAX_SAMPLES) ? 
                    31 : MAX_SAMPLES-measuredSamples;
    for(i=measuredSamples; i<measuredSamples+limit; i++) {
        irBuffer[i] = ir[i-measuredSamples];
        redBuffer[i] = red[i-measuredSamples];
    }
    measuredSamples = i;
}
// setup registers for ppg sensor
void ppgSetup(void) {
    uint8_t reg, value;
    printf("~Enter ppgSetup()~\n\r");
    
    printf("Soft reset issued\n\r");
    softReset(&ppg);
    reg = 0x09;
    value = readRegister(ppg._i2caddr, reg);
    printf("RD: Reg: %02X; Value: %02X\n\r", reg, value);
    
    printf("Shut down PPG sensor\n\r");
    shutDown(&ppg);
    reg = 0x09;
    readRegister(ppg._i2caddr, reg);
    printf("RD: Reg: %02X; Value: %02X\n\r", reg, value);
    
    printf("Set FIFO average\n\r");
    setFIFOAverage(&ppg, FIFO_AVG);
    reg = 0x08;
    value = readRegister(ppg._i2caddr, reg);
    printf("RD: Reg: %02X; Value: %02X\n\r", reg, value);
    
//    enableFIFORollover(&ppg);
    
    // led mode
    printf("Set LED mode\n\r");
//    setLEDMode(&ppg, 0x07); // multi led mode
    setLEDMode(&ppg, LED_MODE); // SpO2 mode
    reg = 0x09;
    value = readRegister(ppg._i2caddr, reg);
    printf("RD: Reg: %02X; Value: %02X\n\r", reg, value);

    printf("Set almost full threshold\n\r");
    setFIFOAlmostFull(&ppg, ALMOST_FULL);
    reg = 0x08;
    value = readRegister(ppg._i2caddr, reg);
    printf("RD: Reg: %02X; Value: %02X\n\r", reg, value);
    
    // sampling config
    // 16 bit samples at 250 Hz (1000 Hz with decimate of 4)
    
    printf("Set ADC Range\n\r");
    setADCRange(&ppg, ADC_RANGE);
    reg = 0x0A;
    value = readRegister(ppg._i2caddr, reg);
    printf("RD: Reg: %02X; Value: %02X\n\r", reg, value);

    printf("Set sample rate\n\r");
    setSampleRate(&ppg, SAMPLE_RATE);
    reg = 0x0A;
    value = readRegister(ppg._i2caddr, reg);
    printf("RD: Reg: %02X; Value: %02X\n\r", reg, value);

    printf("Set pulsewidth\n\r");
    setPulseWidth(&ppg, PULSE_WIDTH);
    reg = 0x0A;
    value = readRegister(ppg._i2caddr, reg);
    printf("RD: Reg: %02X; Value: %02X\n\r", reg, value);

    printf("Enable almost full interrupt\n\r");
    enableAFULL(&ppg);
    reg = 0x02;
    value = readRegister(ppg._i2caddr, reg);
    printf("RD: Reg: %02X; Value: %02X\n\r", reg, value);

    printf("set red pulse amplitude\n\r");
    setPulseAmplitudeRed(&ppg, 0x1F);
    reg = 0x0C;
    value = readRegister(ppg._i2caddr, reg);
    printf("RD: Reg: %02X; Value: %02X\n\r", reg, value);

    printf("Set IR pulse amplitude\n\r");
    setPulseAmplitudeIR(&ppg, 0x1F);
    reg = 0x0D;
    value = readRegister(ppg._i2caddr, reg);
    printf("RD: Reg: %02X; Value: %02X\n\r", reg, value);
    
    printf("Enable led schedule\n\r");
    printf("Slot 1: Red; Slot 2: IR\n\r");
    enableSlot(&ppg, 1, 0x01); //See pg 21 of datasheet
    enableSlot(&ppg, 2, 0x02);
    reg = 0x11;
    value = readRegister(ppg._i2caddr, reg);
    printf("RD: Reg: %02X; Value: %02X\n\r", reg, value);
    
     // fifo config
    printf("clear FIFO\n\r");
    clearFIFO(&ppg);
    reg = 0x4;
    value = readRegister(ppg._i2caddr, reg);
    printf("RD: Reg: %02X; Value: %02X\n\r", reg, value);
    reg = 0x5;
    value = readRegister(ppg._i2caddr, reg);
    printf("RD: Reg: %02X; Value: %02X\n\r", reg, value);
    reg = 0x6;
    value = readRegister(ppg._i2caddr, reg);
    printf("RD: Reg: %02X; Value: %02X\n\r", reg, value);
}

/*
 * 
 *  Interrupt Handler Definitions
 * 
 */
void setHandlers(void) {
    RTT_CallbackRegister(RTT_AlarmHandler, (uintptr_t)NULL);
    PIO_PinInterruptCallbackRegister(MAX30102_INTn_PIN, MAX30102_IntHandler, (uintptr_t)NULL);
    PIO_PinInterruptEnable(MAX30102_INTn_PIN);
}
static void RTT_AlarmHandler(RTT_INTERRUPT_TYPE status, uintptr_t context) {
    printf("RTT Alarm\n\r");
    LED_Toggle();
    
    // resets RTT alarm
    RTT_AlarmValueSet(RTT_TimerValueGet() + TIMER_PERIOD);
    state = TIMER_COMPLETE;
}
static void MAX30102_IntHandler(PIO_PIN pin, uintptr_t context) {
    uint8_t int1, int2;
    int1 = getINT1(&ppg);
    int2 = getINT2(&ppg);
    printf("Interrupt triggered\n\r");
    printf("INT1: %02X\n\r", int1);
    printf("INT2: %02X\n\r", int2);
    // decode interrupts
    // PPG power is ready so we can move to INIT_MEASURE state
    if(int1 & PWR_RDY_FLAG) {
        // insert procedure to turn on voltage to LEDs
        ppgPwrRdyInt = true;
        printf("PWR_RDY_INT Triggered\n\r");
        pid = readPartID(&ppg);
        rid = readRevisionID(&ppg);
        printf("Part ID: %2X\n\r", pid);
        printf("Revision ID: %2X\n\r", rid);
        ppgSetup();
        startTimers();
        state = INIT_MEASURE;
    }
    
    // Sensor ready for temperature measurement
    if(int2 & DIE_TEMP_RDY_FLAG) {
        printf("DIE_TEMP_RDY Triggered\n\r");
    }
    
    // proximity interrupt triggered
//    if(int1 & PROX_INT_FLAG) {
//        printf("PROX_INT Triggered\n\r");
//    }
    
    // Fifo almost full - move data to buffers
    if(int1 & A_FULL_FLAG) {
        printf("Almost Full Triggered\n\r");
        dumpFIFO(&ppg, FIFO_DUMP_AMT);
        loadBuffers();
        if(measuredSamples >= MAX_SAMPLES) {
            state = MEASURE_COMPLETE;
        }
    }
}
/*******************************************************************************
 End of File
*/


/*******************************************************************************
  MPLAB Harmony Application Source File

  Company:
    Microchip Technology Inc.

  File Name:
    app.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It
    implements the logic of the application's state machine and it may call
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <string.h>
#include "app.h"        // also beings in app_tone_lookup_table.h
//#include "ble/non_gui/ble.h"
#include "bt/driver/bm71/drv_bm71.h"
#include <string.h> // for strlen
#include <ctype.h>  // for tolower
extern BLE_DATA bleData;

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the APP_Initialize function.

    Application strings and buffers are be defined outside this structure.
*/

APP_DATA appData;
BLE_DATA bleData;

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

/// *****************************************************************************
 /*
  Function:
        static void App_TimerCallback
        (
            uintptr_t context
        )

  Summary:
    Implements the handler for timer callback function.

  Description:
    Called every 1 ms by timer services.  It then decrements WM8904Delay if
    non-zero.

  Parameters:
    context      - Contains index into driver's instance object array

  Remarks:
    None
*/

/***
static void App_TimerCallback( uintptr_t context)
{
    if (appData.buttonDelay)
    {      
        appData.buttonDelay--;
    }
    
    if (appData.waitingToConnect)
    {
        appData.waitingToConnectTimer++;
        if ((appData.waitingToConnectTimer & 0xFF) == 0)    // about every 1/4 second
        {
            LED1_Toggle();
        }
    }
}
 ***/

static void _bleEventHandler(DRV_BT_EVENT event, uint32_t param,
uintptr_t context)
{
    switch(event)
    {       
        case DRV_BT_EVENT_BLE_STATUS_CHANGED:
        {           
            switch(param)
            {             
                case DRV_BM71_BLE_STATUS_STANDBY:
                case DRV_BM71_BLE_STATUS_SCANNING:
                case DRV_BM71_BLE_STATUS_ADVERTISING:
                    LED_Set();
                    bleData.waitingToConnect = true;                    
                    break;
                    
                case DRV_BM71_BLE_STATUS_CONNECTED:                        
                    LED_Clear();
                    bleData.waitingToConnect = false;
                    break;                    
            }
        }
        break;
        
        default:
            break;
    }
}

void _bleTasks()
{               
    switch(bleData.state)
    {
        case BLE_STATE_OPEN:
        {
            if (SYS_STATUS_READY == DRV_BT_Status())
            {            
                // open BT module
                bleData.handle = DRV_BT_Open(DRV_IO_INTENT_READ,
        DRV_BT_PROTOCOL_BLE);

                if(bleData.handle != DRV_HANDLE_INVALID)
                {
                    bleData.state = BLE_STATE_SET_BT_EVENT_HANDLER;
                }
            }
        }
        break;

        case BLE_STATE_SET_BT_EVENT_HANDLER:
        {          
            DRV_BT_EventHandlerSet(bleData.handle,
                bleData.eventHandler, (uintptr_t)0);                                  

            bleData.state = BLE_STATE_INIT_DONE;            
        }
        break;               
        
        // Initialized 
        case BLE_STATE_INIT_DONE:
        {
            // waits in this state
            break;
        }        
    }
}

// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************

/* TODO:  Add any necessary local functions.
*/

// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void APP_Initialize ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Initialize ( void )
{
    appData.state = APP_STATE_INIT;    
    appData.buttonDelay = 0;        // used for button debounce
    appData.buttonMode = false;
    appData.queryDelay = 0;         // used for status queries

    appData.waitingToConnect = false;
    appData.waitingToConnectTimer = 0;    
    
    bleData.state = BLE_STATE_OPEN; 
    bleData.waitingToConnect = true;
    bleData.eventHandler = (DRV_BT_EVENT_HANDLER) _bleEventHandler;  
}

/******************************************************************************
  Function:
    void APP_Tasks ( void )

  Remarks:
    See prototype in app.h.
 */
DRV_HANDLE tmrHandle;

void APP_Tasks ( void )
{    
    _bleTasks(); 
    
    /* Check the application's current state. */
    switch ( appData.state )
    {       
        /* Application's initial state. */
        case APP_STATE_INIT:
        {
            if (DRV_BT_STATUS_READY == DRV_BT_GetPowerStatus())
            {           
                appData.state=APP_STATE_IDLE;
            }
        }
        break;
        
        // Initialized 
        case APP_STATE_IDLE:
        {           
            char* test_string;            

            if (false==bleData.waitingToConnect)
            {            
                if (1==1)     // switch pressed
                {
                    test_string = "IR Value: 1449393929929";
                    DRV_BT_SendDataOverBLE(bleData.handle,
                        (uint8_t*)test_string, strlen(test_string));

                    appData.state = APP_STATE_MSG_SENT;                
                }
            }
        }
        break;

        case APP_STATE_MSG_SENT:
        {                                  
            if (bleData.waitingToConnect)
            {                    
                appData.state = APP_STATE_IDLE;
            }            
	  }
	  break;                 
    }
}


/*******************************************************************************
 End of File
 */

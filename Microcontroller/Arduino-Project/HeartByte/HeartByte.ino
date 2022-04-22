/*
 * BLEProofPeripheral.cpp
 *
 * Created by Alexander Lavrushko on 22/03/2021.
 *
 * @brief BLEProof Peripheral ESP32
 * Bluetooth Low Energy Peripheral (also called Slave, Server) demo application for ESP32
 * 1. Advertises one service with 3 characteristics:
 *    - characteristic which supports read (BLE Central can only read)
 *    - characteristic which supports write (BLE Central can only write, with response)
 *    - characteristic which supports indication (BLE Central can only subscribe and listen for indications)
 * 2. Provides command line interface for changing values of characteristics:
 *    - use Arduino Serial Monitor with 115200 baud, and option 'Newline' or 'Carriage return' or 'Both'
 */

 /*
  * ESP32 Pinout:
  * 00 <= SCL
  * 04 <= SDA
  * 12 <= MAX30102_Int
  * 25 <= MAX30102_VDD_CTRL
  * 33 <= MAX30102_VLED_CTRL
  */

#include <string>
#include <functional>
#include <memory>
#include <BLEDevice.h>
#include <BLEUtils.h>
#include <BLEServer.h>
#include <BLE2902.h>

#include <Wire.h>
#include "MAX30105.h"

#include "heartRate.h"

#define MAX30102_SCL_PIN    0
#define MAX30102_SDA_PIN    4
#define MAX30102_INT_PIN    12
#define MAX30102_VLED_PIN   25
#define MAX30102_VDD_PIN    33

MAX30105 ppg;
const byte RATE_SIZE = 16; //Increase this for more averaging. 4 is good.
byte rates[RATE_SIZE]; //Array of heart rates
byte rateSpot = 0;
long lastBeat = 0; //Time at which the last beat occurred
long irBuffer[10];
int count=0;

float beatsPerMinute;
int beatAvg;

// --------
// Constants
// --------
#define SERVICE_UUID        "25AE1441-05D3-4C5B-8281-93D4E07420CF"
#define CHAR_READ_UUID      "25AE1442-05D3-4C5B-8281-93D4E07420CF"
#define CHAR_WRITE_UUID     "25AE1443-05D3-4C5B-8281-93D4E07420CF"
#define CHAR_INDICATE_UUID  "25AE1444-05D3-4C5B-8281-93D4E07420CF"

#define CMD_HELP "help"
#define CMD_INFO "info"
#define CMD_SET_READ "setr="
#define CMD_SET_INDICATE "seti="

// --------
// Global variables
// --------
static BLEServer* g_pServer = nullptr;
static BLECharacteristic* g_pCharRead = nullptr;
static BLECharacteristic* g_pCharWrite = nullptr;
static BLECharacteristic* g_pCharIndicate = nullptr;
static bool g_centralConnected = false;
static std::string g_cmdLine;

// --------
// Bluetooth event callbacks
// --------
class MyServerCallbacks: public BLEServerCallbacks
{
    void onConnect(BLEServer* pServer) override
    {
        Serial.println("onConnect");
        g_centralConnected = true;
    }

    void onDisconnect(BLEServer* pServer) override
    {
        Serial.println("onDisconnect, will start advertising");
        g_centralConnected = false;
        BLEDevice::startAdvertising();
    }
};

class MyCharPrintingCallbacks: public BLECharacteristicCallbacks
{
public:
    explicit MyCharPrintingCallbacks(const char* name) : m_name(name) {}

private:
    void PrintEvent(const char* event, const char* value)
    {
        Serial.print(event);
        Serial.print("(");
        Serial.print(m_name.c_str());
        Serial.print(")");
        if (value)
        {
            Serial.print(" value='");
            Serial.print(value);
            Serial.print("'");
        }
        Serial.println();
    }

private:
    void onRead(BLECharacteristic* pCharacteristic) override
    {
        PrintEvent("onRead", pCharacteristic->getValue().c_str());
    }

    void onWrite(BLECharacteristic* pCharacteristic) override
    {
        PrintEvent("onWrite", pCharacteristic->getValue().c_str());
    }

    void onNotify(BLECharacteristic* pCharacteristic) override
    {
        PrintEvent("onNotify", pCharacteristic->getValue().c_str());
    }

    void onStatus(BLECharacteristic* pCharacteristic, Status status, uint32_t code) override
    {
        std::string event("onStatus:");
        switch (status)
        {
        case SUCCESS_INDICATE: event += "SUCCESS_INDICATE"; break;
        case SUCCESS_NOTIFY: event += "SUCCESS_NOTIFY"; break;
        case ERROR_INDICATE_DISABLED: event += "ERROR_INDICATE_DISABLED"; break;
        case ERROR_NOTIFY_DISABLED: event += "ERROR_NOTIFY_DISABLED"; break;
        case ERROR_GATT: event += "ERROR_GATT"; break;
        case ERROR_NO_CLIENT: event += "ERROR_NO_CLIENT"; break;
        case ERROR_INDICATE_TIMEOUT: event += "ERROR_INDICATE_TIMEOUT"; break;
        case ERROR_INDICATE_FAILURE: event += "ERROR_INDICATE_FAILURE"; break;
        }
        event += ":";
        event += String(code).c_str();
        PrintEvent(event.c_str(), nullptr);
    }

private:
    std::string m_name;
};

// --------
// Application lifecycle: setup & loop
// --------

void setup()
{
    Serial.begin(115200);
    Serial.println("BLE Peripheral setup started");
    Wire.begin(MAX30102_SDA_PIN, MAX30102_SCL_PIN); //SDA, SCK
    

    BLEDevice::init("ESP32");
    g_pServer = BLEDevice::createServer();
    g_pServer->setCallbacks(new MyServerCallbacks());
    BLEService* pService = g_pServer->createService(SERVICE_UUID);
    
      
    // characteristic for read
    {
        uint32_t propertyFlags = BLECharacteristic::PROPERTY_READ;
        BLECharacteristic* pCharRead = pService->createCharacteristic(CHAR_READ_UUID, propertyFlags);
        pCharRead->setCallbacks(new MyCharPrintingCallbacks("CharRead"));
        pCharRead->setValue("ESP32 for read");
        g_pCharRead = pCharRead;
    }

    // characteristic for write
    {
        uint32_t propertyFlags = BLECharacteristic::PROPERTY_WRITE;
        BLECharacteristic* pCharWrite = pService->createCharacteristic(CHAR_WRITE_UUID, propertyFlags);
        pCharWrite->setCallbacks(new MyCharPrintingCallbacks("CharWrite"));
        pCharWrite->setValue("");
        g_pCharWrite = pCharWrite;
    }

    // characteristic for indicate
    {
        uint32_t propertyFlags = BLECharacteristic::PROPERTY_INDICATE;
        BLECharacteristic* pCharIndicate = pService->createCharacteristic(CHAR_INDICATE_UUID, propertyFlags);
        pCharIndicate->setCallbacks(new MyCharPrintingCallbacks("CharIndicate"));
        pCharIndicate->addDescriptor(new BLE2902());
        pCharIndicate->setValue("");
        g_pCharIndicate = pCharIndicate;
    }

    pService->start();
    BLEAdvertising* pAdvertising = BLEDevice::getAdvertising();
    pAdvertising->addServiceUUID(SERVICE_UUID);
    pAdvertising->setScanResponse(true);
    // this fixes iPhone connection issue (don't know how it works)
    {
        pAdvertising->setMinPreferred(0x06);
        pAdvertising->setMinPreferred(0x12);
    }
    BLEDevice::startAdvertising();

    Serial.println("BLE Peripheral setup done, advertising");
    Serial.println("");
    PrintInfo();
    PrintHelp();

    /*
     * SETUP MAX30102 INTERRUPT LINES
     */
    
    if (!ppg.begin(Wire, I2C_SPEED_FAST)) //Use default I2C port, 400kHz speed
    {
        Serial.println("MAX30105 was not found. Please check wiring/power. ");
    }
    Serial.println("Place your index finger on the sensor with steady pressure.");
  
    ppg.setup(); //Configure sensor with default settings
    ppg.setPulseAmplitudeRed(0x0A); //Turn Red LED to low to indicate sensor is running
    ppg.setPulseAmplitudeGreen(0); //Turn off Green LED

}

void loop()
{
    long irValue = ppg.getIR();
    if (checkForBeat(irValue) == true)
    {
        //We sensed a beat!
        long delta = millis() - lastBeat;
        lastBeat = millis();
    
        beatsPerMinute = 60 / (delta / 1000.0);
    
        if (beatsPerMinute < 255 && beatsPerMinute > 20)
        {
          rates[rateSpot++] = (byte)beatsPerMinute; //Store this reading in the array
          rateSpot %= RATE_SIZE; //Wrap variable
    
          //Take average of readings
          beatAvg = 0;
          for (byte x = 0 ; x < RATE_SIZE ; x++)
            beatAvg += rates[x];
          beatAvg /= RATE_SIZE;
        }
        count++;
        Serial.println("BMP: ");
        Serial.println(beatsPerMinute);
        Serial.println();
    }
  
    if(count > 4)
    {
        irBuffer[0] = beatAvg;
        count++;
        Serial.println("AvgHR: ");
        Serial.println(irBuffer[0]);
        Serial.println();
        count = 0;
        g_pCharRead->setValue((uint8_t *)irBuffer, 4);
        //irBuffer[count] = ppgStuff();
        //count++;
        //delay(500);
    }
        
    if (!Serial.available())
    {
        return;
    }

    char c = Serial.read();
    if (c != '\r' && c != '\n')
    {
        g_cmdLine += c;
        return;
    }

    std::string cmdLine;
    std::swap(g_cmdLine, cmdLine);
    if (cmdLine.empty())
    {
        return; 
    }

    std::string commandData;
    if (ParseCommand(cmdLine, CMD_HELP, commandData))
    {
        PrintHelp();
        return;
    }

    if (ParseCommand(cmdLine, CMD_INFO, commandData))
    {
        PrintInfo();
        return;
    }

    if (ParseCommand(cmdLine, CMD_SET_READ, commandData))
    {
        Serial.print("Got to read");
        Serial.print("Set PPG");
        Serial.print("Setting read characteristic: '");
        Serial.print(commandData.c_str());
        Serial.println("'");
        long pog = 15000;
        return;
    }

    if (ParseCommand(cmdLine, CMD_SET_INDICATE, commandData))
    {
        Serial.print("Setting indicate characteristic: '");
        Serial.print(commandData.c_str());
        Serial.println("'");
        g_pCharIndicate->setValue(commandData);
        g_pCharIndicate->indicate();
        return;
    }

    Serial.print("ERROR: command not recognized: '");
    Serial.print(cmdLine.c_str());
    Serial.println("'");
}

// --------
// Helper functions
// --------
bool ParseCommand(const std::string& cmdLine, const std::string& commandKeyword, std::string& outputCommandData)
{
    size_t commandPosition = cmdLine.find(commandKeyword);
    if (commandPosition == std::string::npos)
    {
        return false;
    }
    outputCommandData = cmdLine.substr(commandPosition + commandKeyword.length());
    return true;
}

void PrintInfo()
{
    Serial.println("-------------------------------");
    Serial.println("  Service UUID: "SERVICE_UUID);
    Serial.println(g_centralConnected ? "  Central connected" : "  Central not connected");
    Serial.println("  Characteristics:");

    Serial.print("  Readable: value='");
    Serial.print(g_pCharRead->getValue().c_str());
    Serial.println("' UUID="CHAR_READ_UUID);

    Serial.print("  Writeable: value='");
    Serial.print(g_pCharWrite->getValue().c_str());
    Serial.println("' UUID="CHAR_WRITE_UUID);

    Serial.print("  Indication: value='");
    Serial.print(g_pCharIndicate->getValue().c_str());
    Serial.println("' UUID="CHAR_INDICATE_UUID);
    Serial.println("-------------------------------");
}

void PrintHelp()
{
    Serial.println("-------------------------------");
    Serial.println("  Command line interface:");
    Serial.println("  1. "CMD_HELP" - print this description of command line interface");
    Serial.println("  2. "CMD_INFO" - print current state of BLE Peripheral");
    Serial.println("  3. "CMD_SET_READ"<value> - set value to readable characteristic");
    Serial.println("       Set 'abc def': "CMD_SET_READ"abc def");
    Serial.println("       Set empty value: "CMD_SET_READ);
    Serial.println("  4. "CMD_SET_INDICATE"<value> - set value to indication characteristic, and send indication to Central");
    Serial.println("       Set 'abc def': "CMD_SET_INDICATE"abc def");
    Serial.println("       Set empty value: "CMD_SET_INDICATE);
    Serial.println("-------------------------------");
    Serial.println("Waiting for command line input...");
}

/*
 * Author: Farris El Machtani Idrissi
 * Date: April 29 2022
 * Description: Transferring large amounts of Byte arrays via BLE to Android application
 */
#include <ArduinoBLE.h>

// Define custom BLE service for position (read-only)
BLEService ppgService("95ff7bf7-aa6f-4671-82d9-22a8931c5387");
// ppg data channels
BLECharacteristic ppg0("95ff7bf7-aa6f-4671-82d9-22a8931c5387", BLERead,100);
BLECharacteristic ppg1("95ff7bf8-aa6f-4671-82d9-22a8931c5387", BLERead,100);
BLECharacteristic ppg2("95ff7bf9-aa6f-4671-82d9-22a8931c5387", BLERead,100);
BLECharacteristic ppg3("95ff7bfa-aa6f-4671-82d9-22a8931c5387", BLERead,100);
BLECharacteristic ppg4("95ff7bfb-aa6f-4671-82d9-22a8931c5387", BLERead,100);
BLECharacteristic ppg5("95ff7bfc-aa6f-4671-82d9-22a8931c5387", BLERead,100);
BLECharacteristic ppg6("95ff7bfd-aa6f-4671-82d9-22a8931c5387", BLERead,100);
BLECharacteristic ppg7("95ff7bfe-aa6f-4671-82d9-22a8931c5387", BLERead,100);
BLECharacteristic ppg8("95ff7bff-aa6f-4671-82d9-22a8931c5387", BLERead,100);


// fresh service
BLEService freshService("95ff7ba0-aa6f-4671-82d9-22a8931c5387");
BLECharacteristic spo2("95ff7ba1-aa6f-4671-82d9-22a8931c5387", BLERead,1);
BLECharacteristic hr("95ff7ba2-aa6f-4671-82d9-22a8931c5387", BLERead,1);
// data controlling
BLEService controlService("95ff7bb0-aa6f-4671-82d9-22a8931c5387");
BLEByteCharacteristic command("95ff7bb1-aa6f-4671-82d9-22a8931c5387", BLERead|BLEWrite);



void setup() {
  /* This stuff must be defined within main or else it won't compile lmaoo*/
  // length of ppgData is variable (change l8tr)
  int N = 900;
  unsigned char* ppgData = NULL;
  ppgData = (unsigned char *)calloc(N, sizeof(unsigned char));
  /* End of stuff*/

  unsigned char hrData = 1000;
  unsigned char spo2Data = 32;

  unsigned char commandData = 0xFF;
  // Initialize internal LED (for visual debugging)
  pinMode(LED_BUILTIN, OUTPUT);
  digitalWrite(LED_BUILTIN, LOW);

  // Initialize Serial connection
  Serial.begin(9600);
  Serial.println("Init BLE");
  // Initialize BLE
  if(!BLE.begin()) {
    // Failed to initialize BLE, blink the internal LED
    Serial.println("Failed initializing BLE");
    while (1) {
      digitalWrite(LED_BUILTIN, HIGH);
      delay(100);
      digitalWrite(LED_BUILTIN, LOW);
      delay(100);
    }
  }
  Serial.println("Setup Characteristics/Services");
  // Set advertised local name and services UUID
  BLE.setDeviceName("Arduino Nano 33 IoT");
  BLE.setLocalName("Senior_Design");
  // Setup ppgService Characteristics 
  ppgService.addCharacteristic(ppg0);
  ppgService.addCharacteristic(ppg1);
  ppgService.addCharacteristic(ppg2);
  ppgService.addCharacteristic(ppg3);
  ppgService.addCharacteristic(ppg4);
  ppgService.addCharacteristic(ppg5);
  ppgService.addCharacteristic(ppg6);
  ppgService.addCharacteristic(ppg7);
  ppgService.addCharacteristic(ppg8);

  // Setup freshService Characteristics
  freshService.addCharacteristic(spo2);
  freshService.addCharacteristic(hr);

  // Setup controlService Characteristics
  controlService.addCharacteristic(command);
  
  // add services to BLE instance
  BLE.addService(ppgService);
  BLE.addService(freshService);
  BLE.addService(controlService);

  //generate values for ppgData array
  Serial.println("Begin Init Data");
  /*
   * Code that crashes system
   * also did ppgData[x] = x weirdly enough
  for(byte x = 0;x < 800; x++){
    *(ppgData+x) = x;
    *issue was iterating with byte x 
  }
  */
    for(int x = 0;x < N; x++){
      ppgData[x] = (unsigned char)x;
      //Serial.println(ppgData[x]);
    }
  Serial.println("Complete Data Initialization");
  // code hangs here? CONFIRMED

  // verify data

  Serial.println("Write 2 ppg characteristics");
  // Set default values for ppg characteristic
  // writes 100 bytes starting at ppgData
  ppg0.writeValue(ppgData,100);
  // rest follow similiar pattern
  ppg1.writeValue(ppgData+100,100);
  ppg2.writeValue(ppgData+200,100);
  ppg3.writeValue(ppgData+300,100);
  ppg4.writeValue(ppgData+400,100);
  ppg5.writeValue(ppgData+500,100);
  ppg6.writeValue(ppgData+600,100);
  ppg7.writeValue(ppgData+700,100);
  ppg8.writeValue(ppgData+800,100);
  
  // more initial values
  hr.writeValue(hrData,1);
  spo2.writeValue(spo2Data,1);
  command.writeValue(commandData);
  
  // Start advertising
  BLE.advertise();
}

void loop() {
  // Listen for BLE
  BLEDevice central = BLE.central();

  // If a central is connected
  if(central) {
    Serial.print("Connected to central: ");
    Serial.println(central.address());
  }

  // While central is still connected...
  while(central.connected()) {
    
    // can do something here if we want

    // alternatively we can use interrupts
    if (command.value() == 0x69){
      Serial.println("fuck me");
    }
    delay(1000);
  }

  // when the central disconnects, print it out:
  //Serial.print("Disconnected from central: ");
  //Annoying --->Serial.println(central.address());
  delay(1000);
}

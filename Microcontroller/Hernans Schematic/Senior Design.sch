EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A2 23386 16535
encoding utf-8
Sheet 1 1
Title "HeartByte"
Date "2021-11-05"
Rev "1.0"
Comp "Team 1"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MAX30102EFD_T:MAX30102EFD+T U1
U 1 1 618884F6
P 2000 1700
F 0 "U1" H 2000 2370 50  0000 C CNN
F 1 "MAX30102EFD+T" H 2000 2279 50  0000 C CNN
F 2 "XDCR_MAX30101EFD+" H 2000 1700 50  0001 L BNN
F 3 "" H 2000 1700 50  0001 L BNN
F 4 "None" H 2000 1700 50  0001 L BNN "PRICE"
F 5 "OLGA-14 Maxim" H 2000 1700 50  0001 L BNN "PACKAGE"
F 6 "Max30102efd+t" H 2000 1700 50  0001 L BNN "DESCRIPTION"
F 7 "Maxim Integrated" H 2000 1700 50  0001 L BNN "MF"
F 8 "Unavailable" H 2000 1700 50  0001 L BNN "AVAILABILITY"
F 9 "MAX30102EFD+T" H 2000 1700 50  0001 L BNN "MP"
	1    2000 1700
	1    0    0    -1  
$EndComp
NoConn ~ 9600 2750
NoConn ~ 9600 2850
NoConn ~ 9600 2950
NoConn ~ 9600 3050
NoConn ~ 9600 3150
NoConn ~ 9600 3250
NoConn ~ 9600 3350
NoConn ~ 9600 3450
NoConn ~ 9600 3550
NoConn ~ 9600 3650
NoConn ~ 9600 3750
NoConn ~ 9600 3950
NoConn ~ 9600 4050
NoConn ~ 9600 4150
NoConn ~ 9600 4250
NoConn ~ 9600 4350
NoConn ~ 9600 4450
NoConn ~ 9600 4550
$Comp
L power:GNDPWR #PWR01
U 1 1 6188D6DE
P 6550 6250
F 0 "#PWR01" H 6550 6050 50  0001 C CNN
F 1 "GNDPWR" H 6554 6096 50  0000 C CNN
F 2 "" H 6550 6200 50  0001 C CNN
F 3 "" H 6550 6200 50  0001 C CNN
	1    6550 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 6250 8600 6250
Wire Wire Line
	8600 6250 8600 5850
Text Label 7600 1850 2    50   ~ 0
SDA
Text Label 7600 1950 2    50   ~ 0
SCL
Text Label 1250 4100 2    50   ~ 0
SDA
Text Label 1400 1800 2    50   ~ 0
SDA
Text Label 1400 1700 2    50   ~ 0
SCL
Text Label 1250 3700 2    50   ~ 0
SCL
$Comp
L power:GNDPWR #PWR0101
U 1 1 618A271E
P 3400 4700
F 0 "#PWR0101" H 3400 4500 50  0001 C CNN
F 1 "GNDPWR" H 3404 4546 50  0000 C CNN
F 2 "" H 3400 4650 50  0001 C CNN
F 3 "" H 3400 4650 50  0001 C CNN
	1    3400 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 4700 3400 4600
Wire Wire Line
	3400 4600 2850 4600
Wire Wire Line
	3400 4600 3400 4500
Wire Wire Line
	3400 4500 2850 4500
Connection ~ 3400 4600
Wire Wire Line
	3400 4500 3400 4400
Wire Wire Line
	3400 4400 2850 4400
Connection ~ 3400 4500
$Comp
L power:GNDPWR #PWR0102
U 1 1 618A510A
P 2900 2200
F 0 "#PWR0102" H 2900 2000 50  0001 C CNN
F 1 "GNDPWR" H 2904 2046 50  0000 C CNN
F 2 "" H 2900 2150 50  0001 C CNN
F 3 "" H 2900 2150 50  0001 C CNN
	1    2900 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2000 2900 2000
Wire Wire Line
	2900 2000 2900 2100
Wire Wire Line
	2600 2100 2900 2100
Connection ~ 2900 2100
Wire Wire Line
	2900 2100 2900 2200
Text Label 4650 3450 0    50   ~ 0
+BATT
Text Label 3700 8100 0    50   ~ 0
+BATT
Text Label 2150 7450 3    50   ~ 0
GND
Text Label 2750 6350 0    50   ~ 0
GND
Text Label 7600 5050 2    50   ~ 0
NRST
Text Label 1450 6550 2    50   ~ 0
NRST
Text Label 2850 4100 0    50   ~ 0
NRST
Text Label 2850 4200 0    50   ~ 0
NRST
Text Label 1400 1600 2    50   ~ 0
INT
Text Label 2850 3700 0    50   ~ 0
INT
Text Label 2850 3800 0    50   ~ 0
INT
Text Label 1950 7450 3    50   ~ 0
INT
Text Label 7600 2050 2    50   ~ 0
VLED+
Text Label 7600 2150 2    50   ~ 0
INT
Text Label 1250 3500 2    50   ~ 0
CS
Text Label 7600 2250 2    50   ~ 0
CS
Text Label 1250 3900 2    50   ~ 0
SDO
Text Label 7600 2350 2    50   ~ 0
SDO
Text Label 1450 6350 2    50   ~ 0
HCI_EXD
Text Label 7600 3450 2    50   ~ 0
HCI_RXD
Text Label 1950 5550 1    50   ~ 0
HCI_TXD
Text Label 7600 3550 2    50   ~ 0
HCI_TXD
Text Label 2050 5550 1    50   ~ 0
PB2
Text Label 2150 5550 1    50   ~ 0
PB3
Text Label 7600 2950 2    50   ~ 0
P1_7
Text Label 2250 5550 1    50   ~ 0
BT_RF
Text Label 7600 3050 2    50   ~ 0
BT_RF
NoConn ~ 7600 2550
NoConn ~ 7600 2650
NoConn ~ 7600 4050
NoConn ~ 7600 4150
NoConn ~ 7600 4250
NoConn ~ 7600 4350
NoConn ~ 7600 4450
NoConn ~ 7600 4650
NoConn ~ 7600 4750
NoConn ~ 7600 4950
NoConn ~ 7600 5250
NoConn ~ 7600 5450
Wire Notes Line
	5750 700  5750 6500
Wire Notes Line
	5750 6500 10250 6500
Wire Notes Line
	10250 6500 10250 700 
Wire Notes Line
	10250 700  5750 700 
Text Notes 6750 650  2    50   ~ 0
ATSAME70J19B-AN (MCU)
Wire Notes Line
	950  3050 950  4950
Wire Notes Line
	4100 5300 1100 5300
Text Notes 2250 5250 2    50   ~ 0
BM71BLE01FC2 (BLE Module)
$Comp
L ADXL345BCCZ-RL:ADXL345BCCZ-RL U2
U 1 1 61889A0E
P 2050 4000
F 0 "U2" H 2050 4867 50  0000 C CNN
F 1 "ADXL345BCCZ-RL" H 2050 4776 50  0000 C CNN
F 2 "PQFN80P300X500X79-14N" H 2050 4000 50  0001 L BNN
F 3 "" H 2050 4000 50  0001 L BNN
F 4 "Analog Devices" H 2050 4000 50  0001 L BNN "MANUFACTURER"
	1    2050 4000
	1    0    0    -1  
$EndComp
Text Notes 2400 550  2    50   ~ 0
MAX30102EFD+T (Heart Rate Sensor)
Wire Notes Line
	11150 5250 13900 5250
Wire Notes Line
	13900 5250 13900 1250
Wire Notes Line
	13900 1250 11150 1250
Wire Notes Line
	11150 1250 11150 5250
NoConn ~ 13350 2800
NoConn ~ 13350 2900
NoConn ~ 13350 3000
NoConn ~ 13350 3200
NoConn ~ 13350 3300
NoConn ~ 13350 3400
NoConn ~ 13350 3600
NoConn ~ 13350 3700
NoConn ~ 11750 2400
NoConn ~ 11750 2500
NoConn ~ 11750 2600
NoConn ~ 11750 2100
NoConn ~ 11750 2200
NoConn ~ 11750 3500
NoConn ~ 11750 2800
$Comp
L power:GND #PWR05
U 1 1 61AC7882
P 13550 2050
F 0 "#PWR05" H 13550 1800 50  0001 C CNN
F 1 "GND" H 13555 1877 50  0000 C CNN
F 2 "" H 13550 2050 50  0001 C CNN
F 3 "" H 13550 2050 50  0001 C CNN
	1    13550 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	13350 1900 13550 1900
Wire Wire Line
	13550 1900 13550 2000
Wire Wire Line
	13350 2000 13550 2000
Connection ~ 13550 2000
Wire Wire Line
	13550 2000 13550 2050
$Comp
L STBC03JR:STBC03JR U4
U 1 1 61AB43F6
P 12550 3000
F 0 "U4" H 12550 1635 50  0000 C CNN
F 1 "STBC03JR" H 12550 1726 50  0000 C CNN
F 2 "BGA30N40P6X5_259X225X60N" H 12550 3000 50  0001 L BNN
F 3 "" H 12550 3000 50  0001 L BNN
F 4 "STMicroelectronics" H 12550 3000 50  0001 L BNN "MF"
F 5 "Charger IC Lithium Ion/Polymer 30-FlipChip _2.59x2.25_" H 12550 3000 50  0001 L BNN "DESCRIPTION"
F 6 "None" H 12550 3000 50  0001 L BNN "PRICE"
F 7 "UFBGA-30 STMicroelectronics" H 12550 3000 50  0001 L BNN "PACKAGE"
F 8 "Unavailable" H 12550 3000 50  0001 L BNN "AVAILABILITY"
F 9 "STBC03JR" H 12550 3000 50  0001 L BNN "MP"
	1    12550 3000
	1    0    0    1   
$EndComp
NoConn ~ 13350 2600
$Comp
L power:+BATT #PWR04
U 1 1 61ACB60C
P 13500 4650
F 0 "#PWR04" H 13500 4500 50  0001 C CNN
F 1 "+BATT" H 13515 4823 50  0000 C CNN
F 2 "" H 13500 4650 50  0001 C CNN
F 3 "" H 13500 4650 50  0001 C CNN
	1    13500 4650
	0    1    1    0   
$EndComp
$Comp
L Device:C C4
U 1 1 61ACEE07
P 13350 4650
F 0 "C4" V 13098 4650 50  0000 C CNN
F 1 "4.7 uF" V 13189 4650 50  0000 C CNN
F 2 "" H 13388 4500 50  0001 C CNN
F 3 "~" H 13350 4650 50  0001 C CNN
	1    13350 4650
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 61ACEE0D
P 13200 4650
F 0 "#PWR03" H 13200 4400 50  0001 C CNN
F 1 "GND" V 13205 4522 50  0000 R CNN
F 2 "" H 13200 4650 50  0001 C CNN
F 3 "" H 13200 4650 50  0001 C CNN
	1    13200 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	13450 4650 13450 3900
Wire Wire Line
	13450 3900 13350 3900
Text Label 13350 4000 0    50   ~ 0
IN
Text Label 7600 3850 2    50   ~ 0
IN
Text Label 6850 1000 2    50   ~ 0
+BATT
Text Label 11750 3000 2    50   ~ 0
SCL
Text Label 11750 3100 2    50   ~ 0
SDA
NoConn ~ 11750 3700
NoConn ~ 11750 3600
Text Label 11750 3300 2    50   ~ 0
BATMS
Text Label 7600 3950 2    50   ~ 0
BATMS
Text Notes 11150 1150 0    50   ~ 0
STBC03JR (Battery Charger)
NoConn ~ 9600 3850
NoConn ~ 7600 3150
NoConn ~ 7600 2850
NoConn ~ 2750 6450
NoConn ~ 2750 6550
NoConn ~ 2750 6650
NoConn ~ 2250 7450
NoConn ~ 1450 6650
NoConn ~ 1450 6750
NoConn ~ 7600 2750
$Comp
L BM71BLE01FC2-0B04AA:BM71BLE01FC2-0B04AA IC1
U 1 1 6189F63F
P 1450 6350
F 0 "IC1" H 2794 6246 50  0000 L CNN
F 1 "BM71BLE01FC2-0B04AA" H 2794 6155 50  0000 L CNN
F 2 "BM71BLE01FC20002AA" H 2600 6950 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/BM70-71-Bluetooth-Low-Energy-BLE-Module-Data-Sheet-DS60001372J.pdf" H 2600 6850 50  0001 L CNN
F 4 "MICROCHIP - BM71BLE01FC2-0B04AA - BLUETOOTH MODULE, V4.2, 2.402-2.48GHZ" H 2600 6750 50  0001 L CNN "Description"
F 5 "2" H 2600 6650 50  0001 L CNN "Height"
F 6 "579-BM71BLE01FC2-B04" H 2600 6550 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Microchip-Technology/BM71BLE01FC2-0B04AA?qs=w%2Fv1CP2dgqorRG6I8c9tdg%3D%3D" H 2600 6450 50  0001 L CNN "Mouser Price/Stock"
F 8 "Microchip" H 2600 6350 50  0001 L CNN "Manufacturer_Name"
F 9 "BM71BLE01FC2-0B04AA" H 2600 6250 50  0001 L CNN "Manufacturer_Part_Number"
	1    1450 6350
	1    0    0    -1  
$EndComp
NoConn ~ 1450 6450
NoConn ~ 7600 3250
$Comp
L Device:LED D1
U 1 1 61AE5080
P 6750 2450
F 0 "D1" H 6743 2195 50  0000 C CNN
F 1 "LED" H 6743 2286 50  0000 C CNN
F 2 "" H 6750 2450 50  0001 C CNN
F 3 "~" H 6750 2450 50  0001 C CNN
	1    6750 2450
	-1   0    0    1   
$EndComp
Wire Wire Line
	6900 2450 7600 2450
$Comp
L Device:R R3
U 1 1 61AE7645
P 6600 2600
F 0 "R3" H 6670 2646 50  0000 L CNN
F 1 "10K" H 6670 2555 50  0000 L CNN
F 2 "" V 6530 2600 50  0001 C CNN
F 3 "~" H 6600 2600 50  0001 C CNN
	1    6600 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 61AE7F85
P 6600 2750
F 0 "#PWR02" H 6600 2500 50  0001 C CNN
F 1 "GND" H 6605 2577 50  0000 C CNN
F 2 "" H 6600 2750 50  0001 C CNN
F 3 "" H 6600 2750 50  0001 C CNN
	1    6600 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 1850 7150 1850
$Comp
L Device:R R4
U 1 1 61AEBAD2
P 7000 1850
F 0 "R4" V 6793 1850 50  0000 C CNN
F 1 "10K" V 6884 1850 50  0000 C CNN
F 2 "" V 6930 1850 50  0001 C CNN
F 3 "~" H 7000 1850 50  0001 C CNN
	1    7000 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	6850 1850 6850 1300
Wire Wire Line
	7600 1950 7250 1950
Wire Wire Line
	7250 1950 7250 2150
Wire Wire Line
	7250 2150 6550 2150
$Comp
L Device:R R2
U 1 1 61AEE06B
P 6550 2000
F 0 "R2" H 6620 2046 50  0000 L CNN
F 1 "10K" H 6620 1955 50  0000 L CNN
F 2 "" V 6480 2000 50  0001 C CNN
F 3 "~" H 6550 2000 50  0001 C CNN
	1    6550 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 1850 6550 1300
Wire Wire Line
	6550 1300 6850 1300
$Comp
L MCU_Microchip_SAME:ATSAME70J19A-AN U3
U 1 1 618820E3
P 8600 3650
F 0 "U3" H 8600 1361 50  0000 C CNN
F 1 "ATSAME70J19A-AN" H 8600 1270 50  0000 C CNN
F 2 "Package_QFP:LQFP-64_10x10mm_P0.5mm" H 9900 5750 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/SAM-E70-S70-V70-V71-Family-Data-Sheet-DS60001527D.pdf" H 8600 3650 50  0001 C CNN
	1    8600 3650
	1    0    0    -1  
$EndComp
NoConn ~ 7600 3650
NoConn ~ 7600 3750
Text Notes 2300 3000 2    50   ~ 0
ADXL345BCCZ-RL (Accelerometer)
Wire Wire Line
	2600 1500 2600 1600
Wire Notes Line
	950  600  950  2450
Wire Notes Line
	4500 2450 4500 600 
Wire Notes Line
	950  2450 4500 2450
Wire Notes Line
	950  600  4500 600 
$Comp
L Device:R R9
U 1 1 61E139B0
P 4000 1450
F 0 "R9" V 3793 1450 50  0000 C CNN
F 1 "5.6K" V 3884 1450 50  0000 C CNN
F 2 "" V 3930 1450 50  0001 C CNN
F 3 "~" H 4000 1450 50  0001 C CNN
	1    4000 1450
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 61E1521A
P 3200 1450
F 0 "R6" V 2993 1450 50  0000 C CNN
F 1 "10K" V 3084 1450 50  0000 C CNN
F 2 "" V 3130 1450 50  0001 C CNN
F 3 "~" H 3200 1450 50  0001 C CNN
	1    3200 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	6550 1300 4350 1300
Wire Wire Line
	4150 1300 4150 1450
Connection ~ 6550 1300
Wire Wire Line
	3850 1450 3550 1450
Wire Wire Line
	3050 1450 2900 1450
Wire Wire Line
	2900 1450 2900 1950
Connection ~ 2900 2000
Wire Wire Line
	3550 1450 3550 1100
Wire Wire Line
	3550 1100 2600 1100
Wire Wire Line
	2600 1100 2600 1300
Connection ~ 3550 1450
Wire Wire Line
	3550 1450 3350 1450
$Comp
L Device:R R10
U 1 1 61E1C990
P 4000 1950
F 0 "R10" V 3793 1950 50  0000 C CNN
F 1 "2K" V 3884 1950 50  0000 C CNN
F 2 "" V 3930 1950 50  0001 C CNN
F 3 "~" H 4000 1950 50  0001 C CNN
	1    4000 1950
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 61E1C996
P 3200 1950
F 0 "R7" V 2993 1950 50  0000 C CNN
F 1 "4K" V 3084 1950 50  0000 C CNN
F 2 "" V 3130 1950 50  0001 C CNN
F 3 "~" H 3200 1950 50  0001 C CNN
	1    3200 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	3850 1950 3550 1950
Wire Wire Line
	3050 1950 2900 1950
Wire Wire Line
	3550 1950 3550 1600
Connection ~ 3550 1950
Wire Wire Line
	3550 1950 3350 1950
Connection ~ 2900 1950
Wire Wire Line
	2900 1950 2900 2000
Wire Wire Line
	3550 1600 2600 1600
Wire Wire Line
	4150 1550 4350 1550
Wire Wire Line
	4350 1550 4350 1300
Wire Wire Line
	4150 1550 4150 1950
Connection ~ 4350 1300
Wire Wire Line
	4350 1300 4150 1300
Text Notes 3600 1700 0    50   ~ 0
3.3V
Text Notes 3600 1150 0    50   ~ 0
1.8 V
Wire Notes Line
	1100 8350 4100 8350
Wire Notes Line
	1100 5300 1100 8350
Wire Notes Line
	4100 5300 4100 8350
$Comp
L Device:R R5
U 1 1 61E3002E
P 2950 8100
F 0 "R5" V 2743 8100 50  0000 C CNN
F 1 "2K" V 2834 8100 50  0000 C CNN
F 2 "" V 2880 8100 50  0001 C CNN
F 3 "~" H 2950 8100 50  0001 C CNN
	1    2950 8100
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 61E333E0
P 2750 7750
F 0 "R1" H 2820 7796 50  0000 L CNN
F 1 "3K" H 2820 7705 50  0000 L CNN
F 2 "" V 2680 7750 50  0001 C CNN
F 3 "~" H 2750 7750 50  0001 C CNN
	1    2750 7750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 8100 2750 8100
Wire Wire Line
	2750 8100 2750 7900
Wire Wire Line
	2750 7600 2150 7600
Wire Wire Line
	2150 7600 2150 7450
Wire Wire Line
	3100 8100 3700 8100
Wire Wire Line
	2050 7450 2050 8100
Wire Wire Line
	2050 8100 2750 8100
Connection ~ 2750 8100
$Comp
L Device:R R12
U 1 1 61E3E0FD
P 7150 1300
F 0 "R12" V 6943 1300 50  0000 C CNN
F 1 "2K" V 7034 1300 50  0000 C CNN
F 2 "" V 7080 1300 50  0001 C CNN
F 3 "~" H 7150 1300 50  0001 C CNN
	1    7150 1300
	0    1    1    0   
$EndComp
Connection ~ 6850 1300
Wire Wire Line
	6850 1000 6850 1300
Wire Wire Line
	6850 1300 7000 1300
$Comp
L Device:R R13
U 1 1 61E430B2
P 7350 1050
F 0 "R13" H 7420 1096 50  0000 L CNN
F 1 "4K" H 7420 1005 50  0000 L CNN
F 2 "" V 7280 1050 50  0001 C CNN
F 3 "~" H 7350 1050 50  0001 C CNN
	1    7350 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 1300 7350 1300
Wire Wire Line
	7350 1300 7350 1200
$Comp
L power:GND #PWR06
U 1 1 61E44ECF
P 7550 900
F 0 "#PWR06" H 7550 650 50  0001 C CNN
F 1 "GND" V 7555 772 50  0000 R CNN
F 2 "" H 7550 900 50  0001 C CNN
F 3 "" H 7550 900 50  0001 C CNN
	1    7550 900 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7350 900  7550 900 
Wire Wire Line
	7350 1300 8300 1300
Wire Wire Line
	8300 1300 8300 1450
Connection ~ 7350 1300
Wire Wire Line
	8300 1300 8500 1300
Wire Wire Line
	8500 1300 8500 1450
Connection ~ 8300 1300
Wire Wire Line
	8500 1300 8700 1300
Wire Wire Line
	8700 1300 8700 1450
Connection ~ 8500 1300
Wire Wire Line
	8700 1300 8800 1300
Wire Wire Line
	8800 1300 8800 1450
Connection ~ 8700 1300
Wire Wire Line
	8800 1300 8900 1300
Wire Wire Line
	8900 1300 8900 1450
Connection ~ 8800 1300
Wire Wire Line
	8900 1300 9000 1300
Wire Wire Line
	9000 1300 9000 1450
Connection ~ 8900 1300
Text Notes 7600 1400 0    50   ~ 0
3.3V
Wire Notes Line
	4950 3050 4950 4950
Wire Notes Line
	950  4950 4950 4950
Wire Notes Line
	950  3050 4950 3050
$Comp
L Device:R R11
U 1 1 61E58A9C
P 4450 3700
F 0 "R11" V 4243 3700 50  0000 C CNN
F 1 "1K" V 4334 3700 50  0000 C CNN
F 2 "" V 4380 3700 50  0001 C CNN
F 3 "~" H 4450 3700 50  0001 C CNN
	1    4450 3700
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 61E593EA
P 3750 3700
F 0 "R8" V 3543 3700 50  0000 C CNN
F 1 "1K" V 3634 3700 50  0000 C CNN
F 2 "" V 3680 3700 50  0001 C CNN
F 3 "~" H 3750 3700 50  0001 C CNN
	1    3750 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	4650 3450 4650 3700
Wire Wire Line
	4650 3700 4600 3700
Wire Wire Line
	4300 3700 4150 3700
Wire Wire Line
	3400 3700 3400 4400
Wire Wire Line
	3400 3700 3600 3700
Connection ~ 3400 4400
Wire Wire Line
	4150 3700 4150 3400
Wire Wire Line
	2850 3400 3350 3400
Connection ~ 4150 3700
Wire Wire Line
	4150 3700 3900 3700
Wire Wire Line
	3350 3500 3350 3400
Wire Wire Line
	2850 3500 3350 3500
Connection ~ 3350 3400
Wire Wire Line
	3350 3400 4150 3400
$EndSCHEMATC

EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:saturn-cdb-adapter
LIBS:saturn-cdb-adapter-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 3 4
Title "Saturn CDB adapter"
Date "2017-04-13"
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_02X20 P2
U 1 1 58EFDF0D
P 1850 2450
F 0 "P2" H 1850 3500 50  0000 C CNN
F 1 "CONN_02X20" V 1850 2450 50  0000 C CNN
F 2 "" H 1850 1500 50  0000 C CNN
F 3 "" H 1850 1500 50  0000 C CNN
	1    1850 2450
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X20 P5
U 1 1 58EFDF44
P 6100 2450
F 0 "P5" H 6100 3500 50  0000 C CNN
F 1 "CONN_02X20" V 6100 2450 50  0000 C CNN
F 2 "" H 6100 1500 50  0000 C CNN
F 3 "" H 6100 1500 50  0000 C CNN
	1    6100 2450
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X20 P3
U 1 1 58EFDFAD
P 1850 6000
F 0 "P3" H 1850 7050 50  0000 C CNN
F 1 "CONN_02X20" V 1850 6000 50  0000 C CNN
F 2 "" H 1850 5050 50  0000 C CNN
F 3 "" H 1850 5050 50  0000 C CNN
	1    1850 6000
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X20 P4
U 1 1 58EFDFC8
P 6100 5200
F 0 "P4" H 6100 6250 50  0000 C CNN
F 1 "CONN_02X20" V 6100 5200 50  0000 C CNN
F 2 "" H 6100 4250 50  0000 C CNN
F 3 "" H 6100 4250 50  0000 C CNN
	1    6100 5200
	1    0    0    -1  
$EndComp
Text Notes 1600 1350 0    60   ~ 0
Mates to J2
Text Notes 5850 1350 0    60   ~ 0
Mates to J1
Text Notes 1650 4900 0    60   ~ 0
Mates to J3
Text Notes 5900 4100 0    60   ~ 0
Mates to J4
$Comp
L +3.3V #PWR012
U 1 1 58EFFA1A
P 2250 1350
F 0 "#PWR012" H 2250 1200 50  0001 C CNN
F 1 "+3.3V" H 2250 1490 50  0000 C CNN
F 2 "" H 2250 1350 50  0000 C CNN
F 3 "" H 2250 1350 50  0000 C CNN
	1    2250 1350
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR013
U 1 1 58EFFA36
P 6550 1300
F 0 "#PWR013" H 6550 1150 50  0001 C CNN
F 1 "+3.3V" H 6550 1440 50  0000 C CNN
F 2 "" H 6550 1300 50  0000 C CNN
F 3 "" H 6550 1300 50  0000 C CNN
	1    6550 1300
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR014
U 1 1 58EFFA92
P 2300 4850
F 0 "#PWR014" H 2300 4700 50  0001 C CNN
F 1 "+3.3V" H 2300 4990 50  0000 C CNN
F 2 "" H 2300 4850 50  0000 C CNN
F 3 "" H 2300 4850 50  0000 C CNN
	1    2300 4850
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR015
U 1 1 58EFFAAE
P 6550 4050
F 0 "#PWR015" H 6550 3900 50  0001 C CNN
F 1 "+3.3V" H 6550 4190 50  0000 C CNN
F 2 "" H 6550 4050 50  0000 C CNN
F 3 "" H 6550 4050 50  0000 C CNN
	1    6550 4050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 58EFFB0E
P 1500 3500
F 0 "#PWR016" H 1500 3250 50  0001 C CNN
F 1 "GND" H 1500 3350 50  0000 C CNN
F 2 "" H 1500 3500 50  0000 C CNN
F 3 "" H 1500 3500 50  0000 C CNN
	1    1500 3500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 58EFFB2A
P 2200 3500
F 0 "#PWR017" H 2200 3250 50  0001 C CNN
F 1 "GND" H 2200 3350 50  0000 C CNN
F 2 "" H 2200 3500 50  0000 C CNN
F 3 "" H 2200 3500 50  0000 C CNN
	1    2200 3500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 58EFFB46
P 5750 3500
F 0 "#PWR018" H 5750 3250 50  0001 C CNN
F 1 "GND" H 5750 3350 50  0000 C CNN
F 2 "" H 5750 3500 50  0000 C CNN
F 3 "" H 5750 3500 50  0000 C CNN
	1    5750 3500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 58EFFB62
P 6450 3500
F 0 "#PWR019" H 6450 3250 50  0001 C CNN
F 1 "GND" H 6450 3350 50  0000 C CNN
F 2 "" H 6450 3500 50  0000 C CNN
F 3 "" H 6450 3500 50  0000 C CNN
	1    6450 3500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 58EFFB7E
P 1500 7050
F 0 "#PWR020" H 1500 6800 50  0001 C CNN
F 1 "GND" H 1500 6900 50  0000 C CNN
F 2 "" H 1500 7050 50  0000 C CNN
F 3 "" H 1500 7050 50  0000 C CNN
	1    1500 7050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 58EFFB9A
P 2200 7050
F 0 "#PWR021" H 2200 6800 50  0001 C CNN
F 1 "GND" H 2200 6900 50  0000 C CNN
F 2 "" H 2200 7050 50  0000 C CNN
F 3 "" H 2200 7050 50  0000 C CNN
	1    2200 7050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 58EFFBB6
P 5750 6250
F 0 "#PWR022" H 5750 6000 50  0001 C CNN
F 1 "GND" H 5750 6100 50  0000 C CNN
F 2 "" H 5750 6250 50  0000 C CNN
F 3 "" H 5750 6250 50  0000 C CNN
	1    5750 6250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR023
U 1 1 58EFFBD2
P 6450 6250
F 0 "#PWR023" H 6450 6000 50  0001 C CNN
F 1 "GND" H 6450 6100 50  0000 C CNN
F 2 "" H 6450 6250 50  0000 C CNN
F 3 "" H 6450 6250 50  0000 C CNN
	1    6450 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 1500 2250 1500
Wire Wire Line
	2250 1500 2250 1350
Wire Wire Line
	2100 1800 2200 1800
Wire Wire Line
	2200 1800 2200 3500
Wire Wire Line
	2100 2200 2200 2200
Connection ~ 2200 2200
Wire Wire Line
	2100 2600 2200 2600
Connection ~ 2200 2600
Wire Wire Line
	2100 3000 2200 3000
Connection ~ 2200 3000
Wire Wire Line
	2100 3400 2200 3400
Connection ~ 2200 3400
Wire Wire Line
	1600 1800 1500 1800
Wire Wire Line
	1500 1800 1500 3500
Wire Wire Line
	1600 2200 1500 2200
Connection ~ 1500 2200
Wire Wire Line
	1600 2600 1500 2600
Connection ~ 1500 2600
Wire Wire Line
	1600 3000 1500 3000
Connection ~ 1500 3000
Wire Wire Line
	1600 3400 1500 3400
Connection ~ 1500 3400
Wire Wire Line
	6350 1500 6550 1500
Wire Wire Line
	6550 1500 6550 1300
Wire Wire Line
	6350 1800 6450 1800
Wire Wire Line
	6450 1800 6450 3500
Wire Wire Line
	5850 1800 5750 1800
Wire Wire Line
	5750 1800 5750 3500
Wire Wire Line
	6350 2200 6450 2200
Connection ~ 6450 2200
Wire Wire Line
	6350 2600 6450 2600
Connection ~ 6450 2600
Wire Wire Line
	6350 3000 6450 3000
Connection ~ 6450 3000
Wire Wire Line
	6350 3400 6450 3400
Connection ~ 6450 3400
Wire Wire Line
	5850 3400 5750 3400
Connection ~ 5750 3400
Wire Wire Line
	5850 3000 5750 3000
Connection ~ 5750 3000
Wire Wire Line
	5850 2600 5750 2600
Connection ~ 5750 2600
Wire Wire Line
	5850 2200 5750 2200
Connection ~ 5750 2200
Wire Wire Line
	2100 5050 2300 5050
Wire Wire Line
	2300 5050 2300 4850
Wire Wire Line
	6350 4250 6550 4250
Wire Wire Line
	6550 4250 6550 4050
Wire Wire Line
	2100 5350 2200 5350
Wire Wire Line
	2200 5350 2200 7050
Wire Wire Line
	2100 5750 2200 5750
Connection ~ 2200 5750
Wire Wire Line
	2100 6150 2200 6150
Connection ~ 2200 6150
Wire Wire Line
	2100 6550 2200 6550
Connection ~ 2200 6550
Wire Wire Line
	2100 6950 2200 6950
Connection ~ 2200 6950
Wire Wire Line
	1600 5350 1500 5350
Wire Wire Line
	1500 5350 1500 7050
Wire Wire Line
	1600 5750 1500 5750
Connection ~ 1500 5750
Wire Wire Line
	1600 6150 1500 6150
Connection ~ 1500 6150
Wire Wire Line
	1600 6550 1500 6550
Connection ~ 1500 6550
Wire Wire Line
	1600 6950 1500 6950
Connection ~ 1500 6950
Wire Wire Line
	6350 4550 6450 4550
Wire Wire Line
	6450 4550 6450 6250
Wire Wire Line
	5850 4550 5750 4550
Wire Wire Line
	5750 4550 5750 6250
Wire Wire Line
	6350 5350 6450 5350
Connection ~ 6450 5350
Wire Wire Line
	6350 4950 6450 4950
Connection ~ 6450 4950
Wire Wire Line
	6350 5750 6450 5750
Connection ~ 6450 5750
Wire Wire Line
	6350 6150 6450 6150
Connection ~ 6450 6150
Wire Wire Line
	5850 4950 5750 4950
Connection ~ 5750 4950
Wire Wire Line
	5850 5350 5750 5350
Connection ~ 5750 5350
Wire Wire Line
	5850 5750 5750 5750
Connection ~ 5750 5750
Wire Wire Line
	5850 6150 5750 6150
Connection ~ 5750 6150
Wire Wire Line
	1000 1900 1600 1900
Wire Wire Line
	1000 2000 1600 2000
Wire Wire Line
	1000 2100 1600 2100
Wire Wire Line
	1000 2300 1600 2300
Wire Wire Line
	1000 2400 1600 2400
Wire Wire Line
	1000 2500 1600 2500
Wire Wire Line
	1000 2800 1600 2800
Wire Wire Line
	1000 2900 1600 2900
Wire Wire Line
	1000 3100 1600 3100
Wire Wire Line
	1000 3200 1600 3200
Wire Wire Line
	1000 3300 1600 3300
Wire Wire Line
	2100 1600 2800 1600
Wire Wire Line
	2800 1700 2100 1700
Wire Wire Line
	2800 1900 2100 1900
Wire Wire Line
	2800 2000 2100 2000
Text Label 1050 1700 0    30   ~ 0
AD0
Text Label 1050 1900 0    30   ~ 0
AD1
Text Label 1050 2000 0    30   ~ 0
AD2
Text Label 1050 2100 0    30   ~ 0
AD3
Text Label 1050 2300 0    30   ~ 0
AD4
Text Label 1050 2400 0    30   ~ 0
AD5
Text Label 1050 2500 0    30   ~ 0
AD6
Text Label 1050 2800 0    30   ~ 0
AD7
Text Label 1050 2900 0    30   ~ 0
AD8
Text Label 1050 3100 0    30   ~ 0
AD9
Text Label 1050 3200 0    30   ~ 0
AD10
Text Label 1050 3300 0    30   ~ 0
AD11
Text Label 2550 1600 0    30   ~ 0
AD12
Text Label 2550 1700 0    30   ~ 0
AD13
Text Label 2550 1900 0    30   ~ 0
AD14
Text Label 2550 2000 0    30   ~ 0
AD15
Wire Wire Line
	1100 5050 1600 5050
Wire Wire Line
	1100 5150 1600 5150
Wire Wire Line
	1100 5250 1600 5250
Wire Wire Line
	1100 5450 1600 5450
Wire Wire Line
	1100 5550 1600 5550
Wire Wire Line
	1100 5650 1600 5650
Wire Wire Line
	1100 5850 1600 5850
Wire Wire Line
	1100 5950 1600 5950
Wire Wire Line
	1100 6050 1600 6050
Wire Wire Line
	1100 6250 1600 6250
Wire Wire Line
	1100 6350 1600 6350
Wire Wire Line
	1100 6450 1600 6450
Wire Wire Line
	1100 6650 1600 6650
Wire Wire Line
	1100 6750 1600 6750
Wire Wire Line
	1100 6850 1600 6850
Wire Wire Line
	2600 5150 2100 5150
Wire Wire Line
	2600 5250 2100 5250
Wire Wire Line
	2600 5550 2100 5550
Wire Wire Line
	2600 5650 2100 5650
Wire Wire Line
	2600 5850 2100 5850
Wire Wire Line
	2600 5950 2100 5950
Wire Wire Line
	2600 6250 2100 6250
Wire Wire Line
	2600 6350 2100 6350
Wire Wire Line
	2600 6450 2100 6450
Wire Wire Line
	2600 6650 2100 6650
Wire Wire Line
	2600 6750 2100 6750
Text Label 1200 5050 0    30   ~ 0
FLASH_A0
Text Label 1200 5150 0    30   ~ 0
FLASH_A1
Text Label 1200 5250 0    30   ~ 0
FLASH_A2
Text Label 1200 5450 0    30   ~ 0
FLASH_A3
Text Label 1200 5550 0    30   ~ 0
FLASH_A4
Text Label 1200 5650 0    30   ~ 0
FLASH_A5
Text Label 1200 5850 0    30   ~ 0
FLASH_A6
Text Label 1200 5950 0    30   ~ 0
FLASH_A7
Text Label 1200 6050 0    30   ~ 0
FLASH_A8
Text Label 1200 6250 0    30   ~ 0
FLASH_A9
Text Label 1200 6350 0    30   ~ 0
FLASH_A10
Text Label 1200 6450 0    30   ~ 0
FLASH_A11
Text Label 1200 6650 0    30   ~ 0
FLASH_A12
Text Label 1200 6750 0    30   ~ 0
FLASH_A13
Text Label 1200 6850 0    30   ~ 0
FLASH_A14
Text Label 2300 5150 0    30   ~ 0
FLASH_A15
Text Label 2300 5250 0    30   ~ 0
FLASH_A16
Text Label 2300 5550 0    30   ~ 0
FLASH_A17
Text Label 2300 5650 0    30   ~ 0
FLASH_A18
Text Label 2300 5850 0    30   ~ 0
FLASH_A19
Text Label 2300 5950 0    30   ~ 0
FLASH_A20
Text Label 2300 6250 0    30   ~ 0
FLASH_A21
Text Label 2300 6350 0    30   ~ 0
FLASH_A22
Text Label 2300 6450 0    30   ~ 0
FLASH_A23
Text Label 2300 6650 0    30   ~ 0
FLASH_A24
Text Label 2300 6750 0    30   ~ 0
FLASH_A25
Wire Wire Line
	2100 2100 2800 2100
Wire Wire Line
	2800 2300 2100 2300
Wire Wire Line
	2800 2400 2100 2400
Wire Wire Line
	2800 2500 2100 2500
Text Label 2450 2100 0    30   ~ 0
FLASH_READY
Text Label 2450 2300 0    30   ~ 0
~FLASH_CE
Text Label 2450 2400 0    30   ~ 0
~FLASH_OE
Text Label 2450 2500 0    30   ~ 0
~FLASH_WE
Wire Wire Line
	2100 2700 2800 2700
Wire Wire Line
	2100 2800 2800 2800
Wire Wire Line
	2100 2900 2800 2900
Text Label 2450 2700 0    30   ~ 0
MD0
Text Label 2450 2800 0    30   ~ 0
MD1
Text Label 2450 2900 0    30   ~ 0
MD2
Wire Wire Line
	5350 4450 5850 4450
Wire Wire Line
	5350 4650 5850 4650
Wire Wire Line
	5850 4750 5350 4750
Wire Wire Line
	5850 4850 5350 4850
Wire Wire Line
	5350 5050 5850 5050
Wire Wire Line
	5350 5150 5850 5150
Wire Wire Line
	5350 5250 5850 5250
Wire Wire Line
	5350 5450 5850 5450
Text Label 5400 4450 0    30   ~ 0
CPU_~CS0
Text Label 5400 4650 0    30   ~ 0
CPU_~CS1
Text Label 5400 4750 0    30   ~ 0
CPU_~CS2
Text Label 5400 4850 0    30   ~ 0
CPU_~CS3
Text Label 5400 5050 0    30   ~ 0
CPU_~CS4
Text Label 5400 5150 0    30   ~ 0
CPU_~CS5
Text Label 5400 5250 0    30   ~ 0
CPU_~CS6
Text Label 5400 5450 0    30   ~ 0
CPU_~CS7
Wire Wire Line
	5350 5550 5850 5550
Wire Wire Line
	5350 5650 5850 5650
Wire Wire Line
	5350 5850 5850 5850
Wire Wire Line
	5350 5950 5850 5950
Wire Wire Line
	5350 6050 5850 6050
Text Label 5400 5550 0    30   ~ 0
CPU_~WRL~/~WR
Text Label 5400 5650 0    30   ~ 0
CPU_~WRH~/~LBS~
Text Label 5400 5850 0    30   ~ 0
CPU_~RD
Text Label 5400 5950 0    30   ~ 0
CPU_DPL
Text Label 5400 6050 0    30   ~ 0
CPU_DPH
$Comp
L R R8
U 1 1 58F0E982
P 2450 6050
F 0 "R8" V 2530 6050 50  0000 C CNN
F 1 "0" V 2450 6050 50  0000 C CNN
F 2 "" V 2380 6050 50  0000 C CNN
F 3 "" H 2450 6050 50  0000 C CNN
	1    2450 6050
	0    1    1    0   
$EndComp
Wire Wire Line
	2100 6050 2300 6050
Wire Wire Line
	2600 6050 3000 6050
Text Label 2700 6050 0    30   ~ 0
CPU_CLK
Wire Wire Line
	2800 3100 2100 3100
Wire Wire Line
	2800 3200 2100 3200
Text Label 2450 3100 0    30   ~ 0
CPU_~RES
Text Label 2450 3200 0    30   ~ 0
CPU_NMI
Wire Wire Line
	5350 2000 5850 2000
Wire Wire Line
	5350 2100 5850 2100
Text Label 5400 2000 0    30   ~ 0
CPU_RX
Text Label 5400 2100 0    30   ~ 0
CPU_TX
NoConn ~ 1600 1500
NoConn ~ 1600 1600
NoConn ~ 1600 2700
NoConn ~ 2100 3300
NoConn ~ 5850 1500
NoConn ~ 5850 1600
NoConn ~ 5850 1700
NoConn ~ 6350 1600
NoConn ~ 6350 1700
NoConn ~ 6350 1900
NoConn ~ 6350 2000
NoConn ~ 6350 2100
NoConn ~ 5850 1900
NoConn ~ 5850 2300
NoConn ~ 5850 2400
NoConn ~ 5850 2500
NoConn ~ 6350 2500
NoConn ~ 6350 2400
NoConn ~ 6350 2300
NoConn ~ 6350 2700
NoConn ~ 6350 2800
NoConn ~ 6350 2900
NoConn ~ 5850 2900
NoConn ~ 5850 2800
NoConn ~ 5850 2700
NoConn ~ 5850 3100
NoConn ~ 5850 3200
NoConn ~ 5850 3300
NoConn ~ 6350 3300
NoConn ~ 6350 3200
NoConn ~ 6350 3100
NoConn ~ 5850 4250
NoConn ~ 5850 4350
NoConn ~ 6350 4350
NoConn ~ 6350 4450
NoConn ~ 6350 6050
NoConn ~ 6350 5950
NoConn ~ 6350 5850
NoConn ~ 6350 5650
NoConn ~ 6350 5550
NoConn ~ 6350 5450
NoConn ~ 6350 5250
NoConn ~ 6350 5150
NoConn ~ 6350 5050
NoConn ~ 6350 4850
NoConn ~ 6350 4750
NoConn ~ 6350 4650
Wire Wire Line
	1600 1700 1000 1700
Text GLabel 1000 1700 0    25   Input ~ 0
AD0
Text GLabel 1000 1900 0    25   Input ~ 0
AD1
Text GLabel 1000 2000 0    25   Input ~ 0
AD2
Text GLabel 1000 2100 0    25   Input ~ 0
AD3
Text GLabel 1000 2300 0    25   Input ~ 0
AD4
Text GLabel 1000 2400 0    25   Input ~ 0
AD5
Text GLabel 1000 2500 0    25   Input ~ 0
AD6
Text GLabel 1000 2800 0    25   Input ~ 0
AD7
Text GLabel 1000 2900 0    25   Input ~ 0
AD8
Text GLabel 1000 3100 0    25   Input ~ 0
AD9
Text GLabel 1000 3200 0    25   Input ~ 0
AD10
Text GLabel 1000 3300 0    25   Input ~ 0
AD11
Text GLabel 2800 1600 2    25   Input ~ 0
AD12
Text GLabel 2800 1700 2    25   Input ~ 0
AD13
Text GLabel 2800 1900 2    25   Input ~ 0
AD14
Text GLabel 2800 2000 2    25   Input ~ 0
AD15
Text GLabel 1100 5050 0    25   Input ~ 0
FLASH_A0
Text GLabel 1100 5150 0    25   Input ~ 0
FLASH_A1
Text GLabel 1100 5250 0    25   Input ~ 0
FLASH_A2
Text GLabel 1100 5450 0    25   Input ~ 0
FLASH_A3
Text GLabel 1100 5550 0    25   Input ~ 0
FLASH_A4
Text GLabel 1100 5650 0    25   Input ~ 0
FLASH_A5
Text GLabel 1100 5850 0    25   Input ~ 0
FLASH_A6
Text GLabel 1100 5950 0    25   Input ~ 0
FLASH_A7
Text GLabel 1100 6050 0    25   Input ~ 0
FLASH_A8
Text GLabel 1100 6250 0    25   Input ~ 0
FLASH_A9
Text GLabel 1100 6350 0    25   Input ~ 0
FLASH_A10
Text GLabel 1100 6450 0    25   Input ~ 0
FLASH_A11
Text GLabel 1100 6650 0    25   Input ~ 0
FLASH_A12
Text GLabel 1100 6750 0    25   Input ~ 0
FLASH_A13
Text GLabel 1100 6850 0    25   Input ~ 0
FLASH_A14
Text GLabel 2600 5150 2    25   Input ~ 0
FLASH_A15
Text GLabel 2600 5250 2    25   Input ~ 0
FLASH_A16
Text GLabel 2600 5550 2    25   Input ~ 0
FLASH_A17
Text GLabel 2600 5650 2    25   Input ~ 0
FLASH_A18
Text GLabel 2600 5850 2    25   Input ~ 0
FLASH_A19
Text GLabel 2600 5950 2    25   Input ~ 0
FLASH_A20
Text GLabel 2600 6250 2    25   Input ~ 0
FLASH_A21
Text GLabel 2600 6350 2    25   Input ~ 0
FLASH_A22
Text GLabel 2600 6450 2    25   Input ~ 0
FLASH_A23
Text GLabel 2600 6650 2    25   Input ~ 0
FLASH_A24
Text GLabel 2600 6750 2    25   Input ~ 0
FLASH_A25
Text GLabel 3000 6050 2    25   Input ~ 0
CPU_CLK
NoConn ~ 2100 5450
Text GLabel 2800 2700 2    25   Input ~ 0
MD0
Text GLabel 2800 2800 2    25   Input ~ 0
MD1
Text GLabel 2800 2900 2    25   Input ~ 0
MD2
Text GLabel 2800 3100 2    25   Input ~ 0
CPU_~RES
Text GLabel 2800 3200 2    25   Input ~ 0
CPU_NMI
Text GLabel 5350 4450 0    25   Input ~ 0
CPU_~CS0
Text GLabel 5350 4650 0    25   Input ~ 0
CPU_~CS1
Text GLabel 5350 4750 0    25   Input ~ 0
CPU_~CS2
Text GLabel 5350 4850 0    25   Input ~ 0
CPU_~CS3
Text GLabel 5350 5050 0    25   Input ~ 0
CPU_~CS4
Text GLabel 5350 5150 0    25   Input ~ 0
CPU_~CS5
Text GLabel 5350 5250 0    25   Input ~ 0
CPU_~CS6
Text GLabel 5350 5450 0    25   Input ~ 0
CPU_~CS7
Text GLabel 5350 2000 0    25   Input ~ 0
CPU_RX
Text GLabel 5350 2100 0    25   Input ~ 0
CPU_TX
Text GLabel 2800 2100 2    25   Input ~ 0
FLASH_READY
Text GLabel 2800 2300 2    25   Input ~ 0
~FLASH_CE
Text GLabel 2800 2400 2    25   Input ~ 0
~FLASH_OE
Text GLabel 2800 2500 2    25   Input ~ 0
~FLASH_WE
Text GLabel 5350 5850 0    25   Input ~ 0
CPU_~RD
Text GLabel 5350 5950 0    25   Input ~ 0
CPU_DPL
Text GLabel 5350 6050 0    25   Input ~ 0
CPU_DPH
Text GLabel 5350 5550 0    25   Input ~ 0
CPU_~WRL~/~WR
Text GLabel 5350 5650 0    25   Input ~ 0
CPU_~WRH~/~LBS~
NoConn ~ 2100 6850
$EndSCHEMATC

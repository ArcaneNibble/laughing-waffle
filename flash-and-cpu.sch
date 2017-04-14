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
Sheet 2 4
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
L SH1 U1
U 1 1 58EFDE7C
P 2800 2750
F 0 "U1" H 1750 4250 60  0000 C CNN
F 1 "SH1" H 1750 1200 60  0000 C CNN
F 2 "saturn-cdb-parts:cdb-sh1" H 3100 3300 60  0001 C CNN
F 3 "" H 3100 3300 60  0001 C CNN
	1    2800 2750
	1    0    0    -1  
$EndComp
$Comp
L MT28EW_FLASH U2
U 1 1 58EFDF8E
P 7150 2150
F 0 "U2" H 6900 2950 60  0000 C CNN
F 1 "MT28EW_FLASH" H 7150 1350 60  0000 C CNN
F 2 "saturn-cdb-parts:TSOP56" H 7200 2250 60  0001 C CNN
F 3 "" H 7200 2250 60  0001 C CNN
	1    7150 2150
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X22 P1
U 1 1 58EFE031
P 8650 5150
F 0 "P1" H 8650 6300 50  0000 C CNN
F 1 "CONN_02X22" V 8650 5150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x22_Pitch2.54mm" H 8650 4250 50  0001 C CNN
F 3 "" H 8650 4250 50  0000 C CNN
	1    8650 5150
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR01
U 1 1 58F0403E
P 2250 900
F 0 "#PWR01" H 2250 750 50  0001 C CNN
F 1 "+3.3V" H 2250 1040 50  0000 C CNN
F 2 "" H 2250 900 50  0000 C CNN
F 3 "" H 2250 900 50  0000 C CNN
	1    2250 900 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 58F04058
P 3500 1100
F 0 "#PWR02" H 3500 850 50  0001 C CNN
F 1 "GND" H 3500 950 50  0000 C CNN
F 2 "" H 3500 1100 50  0000 C CNN
F 3 "" H 3500 1100 50  0000 C CNN
	1    3500 1100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 58F0409F
P 8500 2950
F 0 "#PWR03" H 8500 2700 50  0001 C CNN
F 1 "GND" H 8500 2800 50  0000 C CNN
F 2 "" H 8500 2950 50  0000 C CNN
F 3 "" H 8500 2950 50  0000 C CNN
	1    8500 2950
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR04
U 1 1 58F040B9
P 8900 2750
F 0 "#PWR04" H 8900 2600 50  0001 C CNN
F 1 "+3.3V" H 8900 2890 50  0000 C CNN
F 2 "" H 8900 2750 50  0000 C CNN
F 3 "" H 8900 2750 50  0000 C CNN
	1    8900 2750
	1    0    0    -1  
$EndComp
Text Label 1150 3350 0    30   ~ 0
AD0
Text Label 1150 3300 0    30   ~ 0
AD1
Text Label 1150 3250 0    30   ~ 0
AD2
Text Label 1150 3200 0    30   ~ 0
AD3
Text Label 1150 3150 0    30   ~ 0
AD4
Text Label 1150 3100 0    30   ~ 0
AD5
Text Label 1150 3050 0    30   ~ 0
AD6
Text Label 1150 3000 0    30   ~ 0
AD7
Text Label 1150 2950 0    30   ~ 0
AD8
Text Label 1150 2900 0    30   ~ 0
AD9
Text Label 1150 2850 0    30   ~ 0
AD10
Text Label 1150 2800 0    30   ~ 0
AD11
Text Label 1150 2750 0    30   ~ 0
AD12
Text Label 1150 2700 0    30   ~ 0
AD13
Text Label 1150 2650 0    30   ~ 0
AD14
Text Label 1150 2600 0    30   ~ 0
AD15
Text Label 1150 2500 0    30   ~ 0
CPU_A0
Text Label 1150 2450 0    30   ~ 0
CPU_A1
Text Label 1150 2400 0    30   ~ 0
CPU_A2
Text Label 1150 2350 0    30   ~ 0
CPU_A3
Text Label 1150 2300 0    30   ~ 0
CPU_A4
Text Label 1150 2250 0    30   ~ 0
CPU_A5
Text Label 1150 2200 0    30   ~ 0
CPU_A6
Text Label 1150 2150 0    30   ~ 0
CPU_A7
Text Label 1150 2100 0    30   ~ 0
CPU_A8
Text Label 1150 2050 0    30   ~ 0
CPU_A9
Text Label 1150 2000 0    30   ~ 0
CPU_A10
Text Label 1150 1950 0    30   ~ 0
CPU_A11
Text Label 1150 1900 0    30   ~ 0
CPU_A12
Text Label 1150 1850 0    30   ~ 0
CPU_A13
Text Label 1150 1800 0    30   ~ 0
CPU_A14
Text Label 1150 1750 0    30   ~ 0
CPU_A15
Text Label 1150 1700 0    30   ~ 0
CPU_A16
Text Label 1150 1650 0    30   ~ 0
CPU_A17
Text Label 1150 1600 0    30   ~ 0
CPU_A18
Text Label 1150 1550 0    30   ~ 0
CPU_A19
Text Label 1150 1500 0    30   ~ 0
CPU_A20
Text Label 1150 1450 0    30   ~ 0
CPU_A21
Text Label 7850 4100 0    30   ~ 0
CPU_A0
Text Label 7850 4200 0    30   ~ 0
CPU_A1
Text Label 7850 4300 0    30   ~ 0
CPU_A2
Text Label 7850 4400 0    30   ~ 0
CPU_A3
Text Label 7850 4500 0    30   ~ 0
CPU_A4
Text Label 7850 4600 0    30   ~ 0
CPU_A5
Text Label 7850 4700 0    30   ~ 0
CPU_A6
Text Label 7850 4800 0    30   ~ 0
CPU_A7
Text Label 7850 4900 0    30   ~ 0
CPU_A8
Text Label 7850 5000 0    30   ~ 0
CPU_A9
Text Label 7850 5100 0    30   ~ 0
CPU_A10
Text Label 7850 5200 0    30   ~ 0
CPU_A11
Text Label 7850 5300 0    30   ~ 0
CPU_A12
Text Label 7850 5400 0    30   ~ 0
CPU_A13
Text Label 7850 5500 0    30   ~ 0
CPU_A14
Text Label 7850 5600 0    30   ~ 0
CPU_A15
Text Label 7850 5700 0    30   ~ 0
CPU_A16
Text Label 7850 5800 0    30   ~ 0
CPU_A17
Text Label 7850 5900 0    30   ~ 0
CPU_A18
Text Label 7850 6000 0    30   ~ 0
CPU_A19
Text Label 7850 6100 0    30   ~ 0
CPU_A20
Text Label 7850 6200 0    30   ~ 0
CPU_A21
Text Label 9000 4100 0    30   ~ 0
FLASH_A0
Text Label 9000 4200 0    30   ~ 0
FLASH_A1
Text Label 9000 4300 0    30   ~ 0
FLASH_A2
Text Label 9000 4400 0    30   ~ 0
FLASH_A3
Text Label 9000 4500 0    30   ~ 0
FLASH_A4
Text Label 9000 4600 0    30   ~ 0
FLASH_A5
Text Label 9000 4700 0    30   ~ 0
FLASH_A6
Text Label 9000 4800 0    30   ~ 0
FLASH_A7
Text Label 9000 4900 0    30   ~ 0
FLASH_A8
Text Label 9000 5000 0    30   ~ 0
FLASH_A9
Text Label 9000 5100 0    30   ~ 0
FLASH_A10
Text Label 9000 5200 0    30   ~ 0
FLASH_A11
Text Label 9000 5300 0    30   ~ 0
FLASH_A12
Text Label 9000 5400 0    30   ~ 0
FLASH_A13
Text Label 9000 5500 0    30   ~ 0
FLASH_A14
Text Label 9000 5600 0    30   ~ 0
FLASH_A15
Text Label 9000 5700 0    30   ~ 0
FLASH_A16
Text Label 9000 5800 0    30   ~ 0
FLASH_A17
Text Label 9000 5900 0    30   ~ 0
FLASH_A18
Text Label 9000 6000 0    30   ~ 0
FLASH_A19
Text Label 9000 6100 0    30   ~ 0
FLASH_A20
Text Label 9000 6200 0    30   ~ 0
FLASH_A21
Text Label 7750 1450 0    30   ~ 0
AD0
Text Label 7750 1500 0    30   ~ 0
AD1
Text Label 7750 1550 0    30   ~ 0
AD2
Text Label 7750 1600 0    30   ~ 0
AD3
Text Label 7750 1650 0    30   ~ 0
AD4
Text Label 7750 1700 0    30   ~ 0
AD5
Text Label 7750 1750 0    30   ~ 0
AD6
Text Label 7750 1800 0    30   ~ 0
AD7
Text Label 7750 1850 0    30   ~ 0
AD8
Text Label 7750 1900 0    30   ~ 0
AD9
Text Label 7750 1950 0    30   ~ 0
AD10
Text Label 7750 2000 0    30   ~ 0
AD11
Text Label 7750 2050 0    30   ~ 0
AD12
Text Label 7750 2100 0    30   ~ 0
AD13
Text Label 7750 2150 0    30   ~ 0
AD14
Text Label 7750 2200 0    30   ~ 0
AD15
Text Label 6200 1500 0    30   ~ 0
FLASH_A0
Text Label 6200 1550 0    30   ~ 0
FLASH_A1
Text Label 6200 1600 0    30   ~ 0
FLASH_A2
Text Label 6200 1650 0    30   ~ 0
FLASH_A3
Text Label 6200 1700 0    30   ~ 0
FLASH_A4
Text Label 6200 1750 0    30   ~ 0
FLASH_A5
Text Label 6200 1800 0    30   ~ 0
FLASH_A6
Text Label 6200 1850 0    30   ~ 0
FLASH_A7
Text Label 6200 1900 0    30   ~ 0
FLASH_A8
Text Label 6200 1950 0    30   ~ 0
FLASH_A9
Text Label 6200 2000 0    30   ~ 0
FLASH_A10
Text Label 6200 2050 0    30   ~ 0
FLASH_A11
Text Label 6200 2100 0    30   ~ 0
FLASH_A12
Text Label 6200 2150 0    30   ~ 0
FLASH_A13
Text Label 6200 2200 0    30   ~ 0
FLASH_A14
Text Label 6200 2250 0    30   ~ 0
FLASH_A15
Text Label 6200 2300 0    30   ~ 0
FLASH_A16
Text Label 6200 2350 0    30   ~ 0
FLASH_A17
Text Label 6200 2400 0    30   ~ 0
FLASH_A18
Text Label 6200 2450 0    30   ~ 0
FLASH_A19
Text Label 6200 2500 0    30   ~ 0
FLASH_A20
Text Label 6200 2550 0    30   ~ 0
FLASH_A21
Text Label 6200 2600 0    30   ~ 0
FLASH_A22
Text Label 6200 2650 0    30   ~ 0
FLASH_A23
Text Label 6200 2700 0    30   ~ 0
FLASH_A24
Text Label 6200 2750 0    30   ~ 0
FLASH_A25
Text Label 7750 2300 0    30   ~ 0
~FLASH_CE
$Comp
L R R4
U 1 1 58F08D94
P 8650 2100
F 0 "R4" V 8730 2100 50  0000 C CNN
F 1 "10k" V 8650 2100 50  0000 C CNN
F 2 "Resistors_SMD:R_0402_NoSilk" V 8580 2100 50  0001 C CNN
F 3 "" H 8650 2100 50  0000 C CNN
	1    8650 2100
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR05
U 1 1 58F08DDE
P 8650 1950
F 0 "#PWR05" H 8650 1800 50  0001 C CNN
F 1 "+3.3V" H 8650 2090 50  0000 C CNN
F 2 "" H 8650 1950 50  0000 C CNN
F 3 "" H 8650 1950 50  0000 C CNN
	1    8650 1950
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 58F08F17
P 8950 2000
F 0 "R5" V 9030 2000 50  0000 C CNN
F 1 "0" V 8950 2000 50  0000 C CNN
F 2 "Resistors_SMD:R_0402_NoSilk" V 8880 2000 50  0001 C CNN
F 3 "" H 8950 2000 50  0000 C CNN
	1    8950 2000
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR06
U 1 1 58F08F53
P 8950 1850
F 0 "#PWR06" H 8950 1700 50  0001 C CNN
F 1 "+3.3V" H 8950 1990 50  0000 C CNN
F 2 "" H 8950 1850 50  0000 C CNN
F 3 "" H 8950 1850 50  0000 C CNN
	1    8950 1850
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 58F0929F
P 9200 2000
F 0 "R6" V 9280 2000 50  0000 C CNN
F 1 "0" V 9200 2000 50  0000 C CNN
F 2 "Resistors_SMD:R_0402_NoSilk" V 9130 2000 50  0001 C CNN
F 3 "" H 9200 2000 50  0000 C CNN
	1    9200 2000
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR07
U 1 1 58F092E2
P 9200 1850
F 0 "#PWR07" H 9200 1700 50  0001 C CNN
F 1 "+3.3V" H 9200 1990 50  0000 C CNN
F 2 "" H 9200 1850 50  0000 C CNN
F 3 "" H 9200 1850 50  0000 C CNN
	1    9200 1850
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 58F0979A
P 9450 2000
F 0 "R7" V 9530 2000 50  0000 C CNN
F 1 "0" V 9450 2000 50  0000 C CNN
F 2 "Resistors_SMD:R_0402_NoSilk" V 9380 2000 50  0001 C CNN
F 3 "" H 9450 2000 50  0000 C CNN
	1    9450 2000
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR08
U 1 1 58F097CB
P 9450 1850
F 0 "#PWR08" H 9450 1700 50  0001 C CNN
F 1 "+3.3V" H 9450 1990 50  0000 C CNN
F 2 "" H 9450 1850 50  0000 C CNN
F 3 "" H 9450 1850 50  0000 C CNN
	1    9450 1850
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 58F098F2
P 8400 2100
F 0 "R3" V 8480 2100 50  0000 C CNN
F 1 "10k" V 8400 2100 50  0000 C CNN
F 2 "Resistors_SMD:R_0402_NoSilk" V 8330 2100 50  0001 C CNN
F 3 "" H 8400 2100 50  0000 C CNN
	1    8400 2100
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR09
U 1 1 58F09A43
P 8400 1950
F 0 "#PWR09" H 8400 1800 50  0001 C CNN
F 1 "+3.3V" H 8400 2090 50  0000 C CNN
F 2 "" H 8400 1950 50  0000 C CNN
F 3 "" H 8400 1950 50  0000 C CNN
	1    8400 1950
	1    0    0    -1  
$EndComp
Text Label 7750 2600 0    30   ~ 0
FLASH_READY
Text Label 1150 3800 0    30   ~ 0
MD2
Text Label 1150 3850 0    30   ~ 0
MD1
Text Label 1150 3900 0    30   ~ 0
MD0
Text Label 4200 1500 0    30   ~ 0
CPU_~CS0
Text Label 4200 1550 0    30   ~ 0
CPU_~CS1
Text Label 4200 1600 0    30   ~ 0
CPU_~CS2
Text Label 4200 1650 0    30   ~ 0
CPU_~CS3
Text Label 4200 1750 0    30   ~ 0
CPU_~CS4
Text Label 4200 1800 0    30   ~ 0
CPU_~CS5
Text Label 4200 1850 0    30   ~ 0
CPU_~CS6
Text Label 4200 1900 0    30   ~ 0
CPU_~CS7
Text Label 4200 1950 0    30   ~ 0
CPU_~WRL~/~WR
Text Label 4200 2000 0    30   ~ 0
CPU_~WRH~/~LBS~
Text Label 4200 2050 0    30   ~ 0
CPU_~RD
Text Label 4200 2250 0    30   ~ 0
CPU_DPL
Text Label 4200 2300 0    30   ~ 0
CPU_DPH
Text Label 1150 3450 0    30   ~ 0
CPU_CLK
$Comp
L R R1
U 1 1 58F0F06D
P 750 4200
F 0 "R1" V 830 4200 50  0000 C CNN
F 1 "10k" V 750 4200 50  0000 C CNN
F 2 "Resistors_SMD:R_0402_NoSilk" V 680 4200 50  0001 C CNN
F 3 "" H 750 4200 50  0000 C CNN
	1    750  4200
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 58F0F1BF
P 1050 4200
F 0 "R2" V 1130 4200 50  0000 C CNN
F 1 "10k" V 1050 4200 50  0000 C CNN
F 2 "Resistors_SMD:R_0402_NoSilk" V 980 4200 50  0001 C CNN
F 3 "" H 1050 4200 50  0000 C CNN
	1    1050 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 58F0F1EF
P 750 4350
F 0 "#PWR010" H 750 4100 50  0001 C CNN
F 1 "GND" H 750 4200 50  0000 C CNN
F 2 "" H 750 4350 50  0000 C CNN
F 3 "" H 750 4350 50  0000 C CNN
	1    750  4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 58F0F217
P 1050 4350
F 0 "#PWR011" H 1050 4100 50  0001 C CNN
F 1 "GND" H 1050 4200 50  0000 C CNN
F 2 "" H 1050 4350 50  0000 C CNN
F 3 "" H 1050 4350 50  0000 C CNN
	1    1050 4350
	1    0    0    -1  
$EndComp
Text Label 800  3650 0    30   ~ 0
CPU_~RES
Text Label 800  4000 0    30   ~ 0
CPU_NMI
$Comp
L TEST_1P W1
U 1 1 58F0F8EB
P 750 3650
F 0 "W1" H 750 3850 50  0000 C CNN
F 1 "TEST_1P" H 750 3850 50  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Square-SMD-Pad_Small" H 950 3650 50  0001 C CNN
F 3 "" H 950 3650 50  0000 C CNN
	1    750  3650
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W2
U 1 1 58F0F944
P 1300 4000
F 0 "W2" H 1300 4200 50  0000 C CNN
F 1 "TEST_1P" H 1300 4200 50  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Square-SMD-Pad_Small" H 1500 4000 50  0001 C CNN
F 3 "" H 1500 4000 50  0000 C CNN
	1    1300 4000
	-1   0    0    1   
$EndComp
NoConn ~ 1450 3500
Text Label 4200 3000 0    30   ~ 0
CPU_RX
Text Label 4200 3050 0    30   ~ 0
CPU_TX
$Comp
L TEST_1P W5
U 1 1 58F12391
P 4200 2150
F 0 "W5" V 4200 2400 50  0000 C CNN
F 1 "TEST_1P" H 4200 2350 50  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Square-SMD-Pad_Small" H 4400 2150 50  0001 C CNN
F 3 "" H 4400 2150 50  0000 C CNN
	1    4200 2150
	0    1    1    0   
$EndComp
$Comp
L TEST_1P W19
U 1 1 58F12578
P 4500 2100
F 0 "W19" V 4500 2350 50  0000 C CNN
F 1 "TEST_1P" H 4500 2300 50  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Square-SMD-Pad_Small" H 4700 2100 50  0001 C CNN
F 3 "" H 4700 2100 50  0000 C CNN
	1    4500 2100
	0    1    1    0   
$EndComp
$Comp
L TEST_1P W20
U 1 1 58F125C2
P 4500 2200
F 0 "W20" V 4500 2450 50  0000 C CNN
F 1 "TEST_1P" H 4500 2400 50  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Square-SMD-Pad_Small" H 4700 2200 50  0001 C CNN
F 3 "" H 4700 2200 50  0000 C CNN
	1    4500 2200
	0    1    1    0   
$EndComp
$Comp
L TEST_1P W6
U 1 1 58F12715
P 4200 2350
F 0 "W6" V 4200 2600 50  0000 C CNN
F 1 "TEST_1P" H 4200 2550 50  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Square-SMD-Pad_Small" H 4400 2350 50  0001 C CNN
F 3 "" H 4400 2350 50  0000 C CNN
	1    4200 2350
	0    1    1    0   
$EndComp
$Comp
L TEST_1P W21
U 1 1 58F12781
P 4500 2400
F 0 "W21" V 4500 2650 50  0000 C CNN
F 1 "TEST_1P" H 4500 2600 50  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Square-SMD-Pad_Small" H 4700 2400 50  0001 C CNN
F 3 "" H 4700 2400 50  0000 C CNN
	1    4500 2400
	0    1    1    0   
$EndComp
$Comp
L TEST_1P W7
U 1 1 58F127CA
P 4200 2450
F 0 "W7" V 4200 2700 50  0000 C CNN
F 1 "TEST_1P" H 4200 2650 50  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Square-SMD-Pad_Small" H 4400 2450 50  0001 C CNN
F 3 "" H 4400 2450 50  0000 C CNN
	1    4200 2450
	0    1    1    0   
$EndComp
$Comp
L TEST_1P W22
U 1 1 58F12816
P 4500 2500
F 0 "W22" V 4500 2750 50  0000 C CNN
F 1 "TEST_1P" H 4500 2700 50  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Square-SMD-Pad_Small" H 4700 2500 50  0001 C CNN
F 3 "" H 4700 2500 50  0000 C CNN
	1    4500 2500
	0    1    1    0   
$EndComp
$Comp
L TEST_1P W23
U 1 1 58F12B52
P 4500 2650
F 0 "W23" V 4500 2900 50  0000 C CNN
F 1 "TEST_1P" H 4500 2850 50  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Square-SMD-Pad_Small" H 4700 2650 50  0001 C CNN
F 3 "" H 4700 2650 50  0000 C CNN
	1    4500 2650
	0    1    1    0   
$EndComp
$Comp
L TEST_1P W26
U 1 1 58F12BA8
P 4500 2950
F 0 "W26" V 4500 3200 50  0000 C CNN
F 1 "TEST_1P" H 4500 3150 50  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Square-SMD-Pad_Small" H 4700 2950 50  0001 C CNN
F 3 "" H 4700 2950 50  0000 C CNN
	1    4500 2950
	0    1    1    0   
$EndComp
$Comp
L TEST_1P W8
U 1 1 58F12BF7
P 4200 2600
F 0 "W8" V 4200 2850 50  0000 C CNN
F 1 "TEST_1P" H 4200 2800 50  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Square-SMD-Pad_Small" H 4400 2600 50  0001 C CNN
F 3 "" H 4400 2600 50  0000 C CNN
	1    4200 2600
	0    1    1    0   
$EndComp
$Comp
L TEST_1P W10
U 1 1 58F12C4B
P 4200 2800
F 0 "W10" V 4200 3050 50  0000 C CNN
F 1 "TEST_1P" H 4200 3000 50  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Square-SMD-Pad_Small" H 4400 2800 50  0001 C CNN
F 3 "" H 4400 2800 50  0000 C CNN
	1    4200 2800
	0    1    1    0   
$EndComp
$Comp
L TEST_1P W9
U 1 1 58F12CA2
P 4200 2700
F 0 "W9" V 4200 2950 50  0000 C CNN
F 1 "TEST_1P" H 4200 2900 50  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Square-SMD-Pad_Small" H 4400 2700 50  0001 C CNN
F 3 "" H 4400 2700 50  0000 C CNN
	1    4200 2700
	0    1    1    0   
$EndComp
$Comp
L TEST_1P W11
U 1 1 58F12CFC
P 4200 2900
F 0 "W11" V 4200 3150 50  0000 C CNN
F 1 "TEST_1P" H 4200 3100 50  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Square-SMD-Pad_Small" H 4400 2900 50  0001 C CNN
F 3 "" H 4400 2900 50  0000 C CNN
	1    4200 2900
	0    1    1    0   
$EndComp
$Comp
L TEST_1P W24
U 1 1 58F12D57
P 4500 2750
F 0 "W24" V 4500 3000 50  0000 C CNN
F 1 "TEST_1P" H 4500 2950 50  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Square-SMD-Pad_Small" H 4700 2750 50  0001 C CNN
F 3 "" H 4700 2750 50  0000 C CNN
	1    4500 2750
	0    1    1    0   
$EndComp
$Comp
L TEST_1P W25
U 1 1 58F12DB9
P 4500 2850
F 0 "W25" V 4500 3100 50  0000 C CNN
F 1 "TEST_1P" H 4500 3050 50  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Square-SMD-Pad_Small" H 4700 2850 50  0001 C CNN
F 3 "" H 4700 2850 50  0000 C CNN
	1    4500 2850
	0    1    1    0   
$EndComp
$Comp
L TEST_1P W27
U 1 1 58F12E1C
P 4500 3100
F 0 "W27" V 4500 3350 50  0000 C CNN
F 1 "TEST_1P" H 4500 3300 50  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Square-SMD-Pad_Small" H 4700 3100 50  0001 C CNN
F 3 "" H 4700 3100 50  0000 C CNN
	1    4500 3100
	0    1    1    0   
$EndComp
$Comp
L TEST_1P W12
U 1 1 58F12E98
P 4200 3150
F 0 "W12" V 4200 3400 50  0000 C CNN
F 1 "TEST_1P" H 4200 3350 50  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Square-SMD-Pad_Small" H 4400 3150 50  0001 C CNN
F 3 "" H 4400 3150 50  0000 C CNN
	1    4200 3150
	0    1    1    0   
$EndComp
$Comp
L TEST_1P W28
U 1 1 58F12EFF
P 4500 3200
F 0 "W28" V 4500 3450 50  0000 C CNN
F 1 "TEST_1P" H 4500 3400 50  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Square-SMD-Pad_Small" H 4700 3200 50  0001 C CNN
F 3 "" H 4700 3200 50  0000 C CNN
	1    4500 3200
	0    1    1    0   
$EndComp
$Comp
L TEST_1P W13
U 1 1 58F12F67
P 4200 3250
F 0 "W13" V 4200 3500 50  0000 C CNN
F 1 "TEST_1P" H 4200 3450 50  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Square-SMD-Pad_Small" H 4400 3250 50  0001 C CNN
F 3 "" H 4400 3250 50  0000 C CNN
	1    4200 3250
	0    1    1    0   
$EndComp
$Comp
L TEST_1P W29
U 1 1 58F12FD6
P 4500 3300
F 0 "W29" V 4500 3550 50  0000 C CNN
F 1 "TEST_1P" H 4500 3500 50  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Square-SMD-Pad_Small" H 4700 3300 50  0001 C CNN
F 3 "" H 4700 3300 50  0000 C CNN
	1    4500 3300
	0    1    1    0   
$EndComp
$Comp
L TEST_1P W14
U 1 1 58F13044
P 4200 3350
F 0 "W14" V 4200 3600 50  0000 C CNN
F 1 "TEST_1P" H 4200 3550 50  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Square-SMD-Pad_Small" H 4400 3350 50  0001 C CNN
F 3 "" H 4400 3350 50  0000 C CNN
	1    4200 3350
	0    1    1    0   
$EndComp
$Comp
L TEST_1P W30
U 1 1 58F13262
P 4500 3450
F 0 "W30" V 4500 3700 50  0000 C CNN
F 1 "TEST_1P" H 4500 3650 50  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Square-SMD-Pad_Small" H 4700 3450 50  0001 C CNN
F 3 "" H 4700 3450 50  0000 C CNN
	1    4500 3450
	0    1    1    0   
$EndComp
$Comp
L TEST_1P W16
U 1 1 58F1333A
P 4200 3600
F 0 "W16" V 4200 3850 50  0000 C CNN
F 1 "TEST_1P" H 4200 3800 50  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Square-SMD-Pad_Small" H 4400 3600 50  0001 C CNN
F 3 "" H 4400 3600 50  0000 C CNN
	1    4200 3600
	0    1    1    0   
$EndComp
$Comp
L TEST_1P W31
U 1 1 58F133B7
P 4500 3550
F 0 "W31" V 4500 3800 50  0000 C CNN
F 1 "TEST_1P" H 4500 3750 50  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Square-SMD-Pad_Small" H 4700 3550 50  0001 C CNN
F 3 "" H 4700 3550 50  0000 C CNN
	1    4500 3550
	0    1    1    0   
$EndComp
$Comp
L TEST_1P W17
U 1 1 58F13435
P 4200 3700
F 0 "W17" V 4200 3950 50  0000 C CNN
F 1 "TEST_1P" H 4200 3900 50  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Square-SMD-Pad_Small" H 4400 3700 50  0001 C CNN
F 3 "" H 4400 3700 50  0000 C CNN
	1    4200 3700
	0    1    1    0   
$EndComp
$Comp
L TEST_1P W15
U 1 1 58F134BA
P 4200 3500
F 0 "W15" V 4200 3750 50  0000 C CNN
F 1 "TEST_1P" H 4200 3700 50  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Square-SMD-Pad_Small" H 4400 3500 50  0001 C CNN
F 3 "" H 4400 3500 50  0000 C CNN
	1    4200 3500
	0    1    1    0   
$EndComp
$Comp
L TEST_1P W32
U 1 1 58F13544
P 4500 3650
F 0 "W32" V 4500 3900 50  0000 C CNN
F 1 "TEST_1P" H 4500 3850 50  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Square-SMD-Pad_Small" H 4700 3650 50  0001 C CNN
F 3 "" H 4700 3650 50  0000 C CNN
	1    4500 3650
	0    1    1    0   
$EndComp
$Comp
L TEST_1P W18
U 1 1 58F135C9
P 4200 3800
F 0 "W18" V 4200 4050 50  0000 C CNN
F 1 "TEST_1P" H 4200 4000 50  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Square-SMD-Pad_Small" H 4400 3800 50  0001 C CNN
F 3 "" H 4400 3800 50  0000 C CNN
	1    4200 3800
	0    1    1    0   
$EndComp
$Comp
L TEST_1P W33
U 1 1 58F13655
P 4500 3750
F 0 "W33" V 4500 4000 50  0000 C CNN
F 1 "TEST_1P" H 4500 3950 50  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Square-SMD-Pad_Small" H 4700 3750 50  0001 C CNN
F 3 "" H 4700 3750 50  0000 C CNN
	1    4500 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	2250 1100 2250 900 
Wire Wire Line
	2250 1000 3300 1000
Wire Wire Line
	3300 1000 3300 1100
Connection ~ 2250 1000
Wire Wire Line
	3250 1100 3250 1000
Connection ~ 3250 1000
Wire Wire Line
	2600 1100 2600 1000
Connection ~ 2600 1000
Wire Wire Line
	2550 1100 2550 1000
Connection ~ 2550 1000
Wire Wire Line
	2500 1100 2500 1000
Connection ~ 2500 1000
Wire Wire Line
	2450 1100 2450 1000
Connection ~ 2450 1000
Wire Wire Line
	2400 1100 2400 1000
Connection ~ 2400 1000
Wire Wire Line
	2350 1100 2350 1000
Connection ~ 2350 1000
Wire Wire Line
	2300 1100 2300 1000
Connection ~ 2300 1000
Wire Wire Line
	2700 1100 2700 900 
Wire Wire Line
	2700 900  3500 900 
Wire Wire Line
	3500 900  3500 1100
Wire Wire Line
	2750 1100 2750 900 
Connection ~ 2750 900 
Wire Wire Line
	2800 1100 2800 900 
Connection ~ 2800 900 
Wire Wire Line
	2850 1100 2850 900 
Connection ~ 2850 900 
Wire Wire Line
	2900 1100 2900 900 
Connection ~ 2900 900 
Wire Wire Line
	2950 1100 2950 900 
Connection ~ 2950 900 
Wire Wire Line
	3000 1100 3000 900 
Connection ~ 3000 900 
Wire Wire Line
	3050 1100 3050 900 
Connection ~ 3050 900 
Wire Wire Line
	3100 1100 3100 900 
Connection ~ 3100 900 
Wire Wire Line
	3150 1100 3150 900 
Connection ~ 3150 900 
Wire Wire Line
	3350 1100 3350 900 
Connection ~ 3350 900 
Wire Wire Line
	7700 2700 8500 2700
Wire Wire Line
	7700 2750 8900 2750
Wire Wire Line
	7700 2850 8500 2850
Wire Wire Line
	8500 2800 8500 2950
Wire Wire Line
	7700 2800 8500 2800
Connection ~ 8500 2850
Wire Wire Line
	1100 2800 1450 2800
Wire Wire Line
	1100 2900 1450 2900
Wire Wire Line
	1100 3000 1450 3000
Wire Wire Line
	1100 3100 1450 3100
Wire Wire Line
	1100 3200 1450 3200
Wire Wire Line
	1100 3300 1450 3300
Wire Wire Line
	1100 2650 1450 2650
Wire Wire Line
	1100 2750 1450 2750
Wire Wire Line
	1100 2850 1450 2850
Wire Wire Line
	1100 2950 1450 2950
Wire Wire Line
	1100 3050 1450 3050
Wire Wire Line
	1100 3150 1450 3150
Wire Wire Line
	1100 3250 1450 3250
Wire Wire Line
	1100 3350 1450 3350
Wire Wire Line
	1100 2500 1450 2500
Wire Wire Line
	1100 2450 1450 2450
Wire Wire Line
	1100 2400 1450 2400
Wire Wire Line
	1100 2350 1450 2350
Wire Wire Line
	1100 2300 1450 2300
Wire Wire Line
	1100 2250 1450 2250
Wire Wire Line
	1100 2200 1450 2200
Wire Wire Line
	1100 2150 1450 2150
Wire Wire Line
	1100 2100 1450 2100
Wire Wire Line
	1100 2050 1450 2050
Wire Wire Line
	1100 2000 1450 2000
Wire Wire Line
	1100 1950 1450 1950
Wire Wire Line
	1100 1900 1450 1900
Wire Wire Line
	1100 1850 1450 1850
Wire Wire Line
	1100 1800 1450 1800
Wire Wire Line
	1100 1750 1450 1750
Wire Wire Line
	1100 1700 1450 1700
Wire Wire Line
	1100 1650 1450 1650
Wire Wire Line
	1100 1600 1450 1600
Wire Wire Line
	1100 1550 1450 1550
Wire Wire Line
	1100 1500 1450 1500
Wire Wire Line
	1100 1450 1450 1450
Wire Wire Line
	7800 4100 8400 4100
Wire Wire Line
	7800 4200 8400 4200
Wire Wire Line
	7800 4300 8400 4300
Wire Wire Line
	7800 4400 8400 4400
Wire Wire Line
	7800 4500 8400 4500
Wire Wire Line
	7800 4600 8400 4600
Wire Wire Line
	7800 4700 8400 4700
Wire Wire Line
	7800 4800 8400 4800
Wire Wire Line
	7800 4900 8400 4900
Wire Wire Line
	7800 5000 8400 5000
Wire Wire Line
	7800 5100 8400 5100
Wire Wire Line
	7800 5200 8400 5200
Wire Wire Line
	7800 5300 8400 5300
Wire Wire Line
	7800 5400 8400 5400
Wire Wire Line
	7800 5500 8400 5500
Wire Wire Line
	7800 5600 8400 5600
Wire Wire Line
	7800 5700 8400 5700
Wire Wire Line
	7800 5800 8400 5800
Wire Wire Line
	7800 5900 8400 5900
Wire Wire Line
	7800 6000 8400 6000
Wire Wire Line
	7800 6100 8400 6100
Wire Wire Line
	7800 6200 8400 6200
Wire Wire Line
	8900 4100 9500 4100
Wire Wire Line
	8900 4200 9500 4200
Wire Wire Line
	8900 4300 9500 4300
Wire Wire Line
	8900 4400 9500 4400
Wire Wire Line
	8900 4500 9500 4500
Wire Wire Line
	8900 4600 9500 4600
Wire Wire Line
	8900 4700 9500 4700
Wire Wire Line
	8900 4800 9500 4800
Wire Wire Line
	8900 4900 9500 4900
Wire Wire Line
	8900 5000 9500 5000
Wire Wire Line
	8900 5100 9500 5100
Wire Wire Line
	8900 5200 9500 5200
Wire Wire Line
	8900 5300 9500 5300
Wire Wire Line
	8900 5400 9500 5400
Wire Wire Line
	8900 5500 9500 5500
Wire Wire Line
	8900 5600 9500 5600
Wire Wire Line
	8900 5700 9500 5700
Wire Wire Line
	8900 5800 9500 5800
Wire Wire Line
	8900 5900 9500 5900
Wire Wire Line
	8900 6000 9500 6000
Wire Wire Line
	8900 6100 9500 6100
Wire Wire Line
	8900 6200 9500 6200
Wire Wire Line
	7700 1450 8150 1450
Wire Wire Line
	7700 1600 8150 1600
Wire Wire Line
	7700 1650 8150 1650
Wire Wire Line
	7700 1700 8150 1700
Wire Wire Line
	7700 1750 8150 1750
Wire Wire Line
	7700 1800 8150 1800
Wire Wire Line
	7700 1850 8150 1850
Wire Wire Line
	7700 1900 8150 1900
Wire Wire Line
	7700 1950 8150 1950
Wire Wire Line
	7700 2000 8150 2000
Wire Wire Line
	7700 2050 8150 2050
Wire Wire Line
	7700 2100 8150 2100
Wire Wire Line
	7700 2150 8150 2150
Wire Wire Line
	7700 2200 8150 2200
Wire Wire Line
	7700 1500 8150 1500
Wire Wire Line
	8150 1550 7700 1550
Wire Wire Line
	6100 1500 6600 1500
Wire Wire Line
	6100 1550 6600 1550
Wire Wire Line
	6100 1600 6600 1600
Wire Wire Line
	6100 1650 6600 1650
Wire Wire Line
	6100 1700 6600 1700
Wire Wire Line
	6100 1750 6600 1750
Wire Wire Line
	6100 1800 6600 1800
Wire Wire Line
	6100 1850 6600 1850
Wire Wire Line
	6100 1900 6600 1900
Wire Wire Line
	6100 1950 6600 1950
Wire Wire Line
	6100 2000 6600 2000
Wire Wire Line
	6100 2050 6600 2050
Wire Wire Line
	6100 2100 6600 2100
Wire Wire Line
	6100 2150 6600 2150
Wire Wire Line
	6100 2200 6600 2200
Wire Wire Line
	6100 2250 6600 2250
Wire Wire Line
	6100 2300 6600 2300
Wire Wire Line
	6100 2350 6600 2350
Wire Wire Line
	6100 2400 6600 2400
Wire Wire Line
	6100 2450 6600 2450
Wire Wire Line
	6100 2500 6600 2500
Wire Wire Line
	6100 2550 6600 2550
Wire Wire Line
	6100 2600 6600 2600
Wire Wire Line
	6100 2650 6600 2650
Wire Wire Line
	6100 2700 6600 2700
Wire Wire Line
	6100 2750 6600 2750
Wire Wire Line
	7700 2300 8700 2300
Wire Wire Line
	7700 2450 8250 2450
Wire Wire Line
	8250 2450 8250 2350
Wire Wire Line
	8250 2350 8950 2350
Wire Wire Line
	7700 2500 8300 2500
Wire Wire Line
	8300 2500 8300 2400
Wire Wire Line
	8300 2400 9200 2400
Wire Wire Line
	9200 2400 9200 2150
Wire Wire Line
	8500 2700 8500 2750
Connection ~ 8500 2750
Wire Wire Line
	7700 2550 8350 2550
Wire Wire Line
	8350 2550 8350 2450
Wire Wire Line
	8350 2450 9450 2450
Wire Wire Line
	9450 2450 9450 2150
Wire Wire Line
	8650 2250 8650 2300
Connection ~ 8650 2300
Wire Wire Line
	8400 2250 8400 2600
Connection ~ 8400 2600
Wire Wire Line
	1100 3800 1450 3800
Wire Wire Line
	1100 3850 1450 3850
Wire Wire Line
	1100 3900 1450 3900
Wire Wire Line
	4150 1500 4550 1500
Wire Wire Line
	4150 1550 4550 1550
Wire Wire Line
	4150 1600 4550 1600
Wire Wire Line
	4150 1650 4550 1650
Wire Wire Line
	4150 1750 4550 1750
Wire Wire Line
	4150 1800 4550 1800
Wire Wire Line
	4150 1850 4550 1850
Wire Wire Line
	4150 1900 4550 1900
Wire Wire Line
	4150 1950 4550 1950
Wire Wire Line
	4150 2000 4550 2000
Wire Wire Line
	4150 2050 4950 2050
Wire Wire Line
	4150 2250 4950 2250
Wire Wire Line
	4150 2300 4950 2300
Wire Wire Line
	1450 3450 1100 3450
Wire Wire Line
	750  4050 750  3650
Connection ~ 750  3650
Wire Wire Line
	1050 4050 1050 4000
Connection ~ 1050 4000
Wire Wire Line
	4150 3000 5000 3000
Wire Wire Line
	4150 3050 5000 3050
Wire Wire Line
	4150 3500 4200 3500
Wire Wire Line
	4150 3600 4200 3600
Wire Wire Line
	4150 3700 4200 3700
Wire Wire Line
	4150 3800 4200 3800
Wire Wire Line
	4150 3750 4500 3750
Wire Wire Line
	4500 3650 4150 3650
Wire Wire Line
	4150 3550 4500 3550
Wire Wire Line
	4500 3450 4150 3450
Wire Wire Line
	4200 3350 4150 3350
Wire Wire Line
	4150 3300 4500 3300
Wire Wire Line
	4200 3250 4150 3250
Wire Wire Line
	4150 3200 4500 3200
Wire Wire Line
	4200 3150 4150 3150
Wire Wire Line
	4150 3100 4500 3100
Wire Wire Line
	4500 2500 4150 2500
Wire Wire Line
	4150 2450 4200 2450
Wire Wire Line
	4150 2400 4500 2400
Wire Wire Line
	4200 2350 4150 2350
Wire Wire Line
	4150 2950 4500 2950
Wire Wire Line
	4200 2900 4150 2900
Wire Wire Line
	4150 2850 4500 2850
Wire Wire Line
	4200 2800 4150 2800
Wire Wire Line
	4150 2750 4500 2750
Wire Wire Line
	4200 2700 4150 2700
Wire Wire Line
	4150 2650 4500 2650
Wire Wire Line
	4200 2600 4150 2600
Wire Wire Line
	4500 2200 4150 2200
Wire Wire Line
	4150 2150 4200 2150
Wire Wire Line
	4150 2100 4500 2100
$Comp
L TEST_1P W4
U 1 1 58F29845
P 1400 3700
F 0 "W4" V 1400 3950 50  0000 C CNN
F 1 "TEST_1P" H 1400 3900 50  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Square-SMD-Pad_Small" H 1600 3700 50  0001 C CNN
F 3 "" H 1600 3700 50  0000 C CNN
	1    1400 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1400 3700 1450 3700
$Comp
L TEST_1P W3
U 1 1 58F29AB1
P 1400 3550
F 0 "W3" V 1400 3800 50  0000 C CNN
F 1 "TEST_1P" H 1400 3750 50  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Square-SMD-Pad_Small" H 1600 3550 50  0001 C CNN
F 3 "" H 1600 3550 50  0000 C CNN
	1    1400 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1400 3550 1450 3550
Wire Wire Line
	1450 2700 1100 2700
Wire Wire Line
	1450 2600 1100 2600
Text GLabel 1100 3350 0    25   Input ~ 0
AD0
Text GLabel 1100 3300 0    25   Input ~ 0
AD1
Text GLabel 1100 3250 0    25   Input ~ 0
AD2
Text GLabel 1100 3200 0    25   Input ~ 0
AD3
Text GLabel 1100 3150 0    25   Input ~ 0
AD4
Text GLabel 1100 3100 0    25   Input ~ 0
AD5
Text GLabel 1100 3050 0    25   Input ~ 0
AD6
Text GLabel 1100 3000 0    25   Input ~ 0
AD7
Text GLabel 1100 2950 0    25   Input ~ 0
AD8
Text GLabel 1100 2900 0    25   Input ~ 0
AD9
Text GLabel 1100 2850 0    25   Input ~ 0
AD10
Text GLabel 1100 2800 0    25   Input ~ 0
AD11
Text GLabel 1100 2750 0    25   Input ~ 0
AD12
Text GLabel 1100 2700 0    25   Input ~ 0
AD13
Text GLabel 1100 2650 0    25   Input ~ 0
AD14
Text GLabel 1100 2600 0    25   Input ~ 0
AD15
Text GLabel 6100 1500 0    25   Input ~ 0
FLASH_A0
Text GLabel 6100 1550 0    25   Input ~ 0
FLASH_A1
Text GLabel 6100 1600 0    25   Input ~ 0
FLASH_A2
Text GLabel 6100 1650 0    25   Input ~ 0
FLASH_A3
Text GLabel 6100 1700 0    25   Input ~ 0
FLASH_A4
Text GLabel 6100 1750 0    25   Input ~ 0
FLASH_A5
Text GLabel 6100 1800 0    25   Input ~ 0
FLASH_A6
Text GLabel 6100 1850 0    25   Input ~ 0
FLASH_A7
Text GLabel 6100 1900 0    25   Input ~ 0
FLASH_A8
Text GLabel 6100 1950 0    25   Input ~ 0
FLASH_A9
Text GLabel 6100 2000 0    25   Input ~ 0
FLASH_A10
Text GLabel 6100 2050 0    25   Input ~ 0
FLASH_A11
Text GLabel 6100 2100 0    25   Input ~ 0
FLASH_A12
Text GLabel 6100 2150 0    25   Input ~ 0
FLASH_A13
Text GLabel 6100 2200 0    25   Input ~ 0
FLASH_A14
Text GLabel 6100 2250 0    25   Input ~ 0
FLASH_A15
Text GLabel 6100 2300 0    25   Input ~ 0
FLASH_A16
Text GLabel 6100 2350 0    25   Input ~ 0
FLASH_A17
Text GLabel 6100 2400 0    25   Input ~ 0
FLASH_A18
Text GLabel 6100 2450 0    25   Input ~ 0
FLASH_A19
Text GLabel 6100 2500 0    25   Input ~ 0
FLASH_A20
Text GLabel 6100 2550 0    25   Input ~ 0
FLASH_A21
Text GLabel 6100 2600 0    25   Input ~ 0
FLASH_A22
Text GLabel 6100 2650 0    25   Input ~ 0
FLASH_A23
Text GLabel 6100 2700 0    25   Input ~ 0
FLASH_A24
Text GLabel 6100 2750 0    25   Input ~ 0
FLASH_A25
Text GLabel 1100 3450 0    25   Input ~ 0
CPU_CLK
Text GLabel 700  3650 0    25   Input ~ 0
CPU_~RES
Wire Wire Line
	700  3650 1450 3650
Text GLabel 700  4000 0    25   Input ~ 0
CPU_NMI
Wire Wire Line
	700  4000 1450 4000
Connection ~ 1300 4000
Text GLabel 1100 3800 0    25   Input ~ 0
MD2
Text GLabel 1100 3850 0    25   Input ~ 0
MD1
Text GLabel 1100 3900 0    25   Input ~ 0
MD0
Text GLabel 4550 1500 2    25   Input ~ 0
CPU_~CS0
Text GLabel 4550 1550 2    25   Input ~ 0
CPU_~CS1
Text GLabel 4550 1600 2    25   Input ~ 0
CPU_~CS2
Text GLabel 4550 1650 2    25   Input ~ 0
CPU_~CS3
Text GLabel 4550 1750 2    25   Input ~ 0
CPU_~CS4
Text GLabel 4550 1800 2    25   Input ~ 0
CPU_~CS5
Text GLabel 4550 1850 2    25   Input ~ 0
CPU_~CS6
Text GLabel 4550 1900 2    25   Input ~ 0
CPU_~CS7
Text GLabel 5000 3000 2    25   Input ~ 0
CPU_RX
Text GLabel 5000 3050 2    25   Input ~ 0
CPU_TX
Text GLabel 7700 2350 2    25   Input ~ 0
~FLASH_OE
Text GLabel 7700 2400 2    25   Input ~ 0
~FLASH_WE
Text GLabel 8500 2600 2    25   Input ~ 0
FLASH_READY
Wire Wire Line
	8500 2600 7700 2600
Wire Wire Line
	8950 2350 8950 2150
Text GLabel 8700 2300 2    25   Input ~ 0
~FLASH_CE
Text GLabel 4950 2050 2    25   Input ~ 0
CPU_~RD
Text GLabel 4950 2250 2    25   Input ~ 0
CPU_DPL
Text GLabel 4950 2300 2    25   Input ~ 0
CPU_DPH
Text GLabel 4550 1950 2    25   Input ~ 0
CPU_~WRL~/~WR
Text GLabel 4550 2000 2    25   Input ~ 0
CPU_~WRH~/~LBS~
$EndSCHEMATC

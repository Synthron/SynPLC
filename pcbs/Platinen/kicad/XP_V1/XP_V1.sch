EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 11693 16535 portrait
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Driver_LED:PCA9635 U?
U 1 1 60ED54D6
P 4600 3100
F 0 "U?" H 4600 4281 50  0000 C CNN
F 1 "PCA9635" H 4600 4190 50  0000 C CNN
F 2 "Package_SO:TSSOP-28_4.4x9.7mm_P0.65mm" H 4600 3100 50  0001 C CNN
F 3 "https://www.nxp.com/docs/en/data-sheet/PCA9635.pdf" H 4600 3100 50  0001 C CNN
	1    4600 3100
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC856 Q?
U 1 1 60ED5FBE
P 9600 1100
F 0 "Q?" H 9791 1054 50  0000 L CNN
F 1 "BC856" H 9791 1145 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9800 1025 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC860-D.pdf" H 9600 1100 50  0001 L CNN
	1    9600 1100
	1    0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC846 Q?
U 1 1 60ED6B2C
P 9250 1700
F 0 "Q?" H 9441 1746 50  0000 L CNN
F 1 "BC846" H 9441 1655 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9450 1625 50  0001 L CIN
F 3 "https://assets.nexperia.com/documents/data-sheet/BC846_SER.pdf" H 9250 1700 50  0001 L CNN
	1    9250 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NMOS_GDS Q?
U 1 1 60ED8AED
P 10050 1350
F 0 "Q?" H 10254 1396 50  0000 L CNN
F 1 "BUK98150-55A/CUF " H 10254 1305 50  0000 L CNN
F 2 "" H 10250 1450 50  0001 C CNN
F 3 "~" H 10050 1350 50  0001 C CNN
	1    10050 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60ED9F27
P 9350 1300
F 0 "R?" H 9420 1346 50  0000 L CNN
F 1 "1k" H 9420 1255 50  0000 L CNN
F 2 "" V 9280 1300 50  0001 C CNN
F 3 "~" H 9350 1300 50  0001 C CNN
	1    9350 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60EDA1E9
P 9350 900
F 0 "R?" H 9420 946 50  0000 L CNN
F 1 "1k" H 9420 855 50  0000 L CNN
F 2 "" V 9280 900 50  0001 C CNN
F 3 "~" H 9350 900 50  0001 C CNN
	1    9350 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 900  9700 700 
$Comp
L power:GND1 #PWR?
U 1 1 60EE09E8
P 10150 1550
F 0 "#PWR?" H 10150 1300 50  0001 C CNN
F 1 "GND1" H 10155 1377 50  0000 C CNN
F 2 "" H 10150 1550 50  0001 C CNN
F 3 "" H 10150 1550 50  0001 C CNN
	1    10150 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND1 #PWR?
U 1 1 60EE0E4F
P 9350 1900
F 0 "#PWR?" H 9350 1650 50  0001 C CNN
F 1 "GND1" H 9355 1727 50  0000 C CNN
F 2 "" H 9350 1900 50  0001 C CNN
F 3 "" H 9350 1900 50  0001 C CNN
	1    9350 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 700  10150 1150
Wire Wire Line
	9350 700  9350 750 
Wire Wire Line
	9350 700  9700 700 
Wire Wire Line
	9350 1500 9350 1450
Wire Wire Line
	9350 1150 9350 1100
Wire Wire Line
	9350 1100 9400 1100
Connection ~ 9350 1100
Wire Wire Line
	9350 1100 9350 1050
Text GLabel 10350 700  2    50   Input ~ 0
OD1
Wire Wire Line
	10350 700  10150 700 
Text GLabel 8650 1700 0    50   Input ~ 0
PWM1
Wire Wire Line
	9000 1700 9050 1700
$Comp
L Device:R R?
U 1 1 60EEB567
P 9700 1550
F 0 "R?" H 9770 1596 50  0000 L CNN
F 1 "1k" H 9770 1505 50  0000 L CNN
F 2 "" V 9630 1550 50  0001 C CNN
F 3 "~" H 9700 1550 50  0001 C CNN
	1    9700 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND1 #PWR?
U 1 1 60EEBEE9
P 9700 1750
F 0 "#PWR?" H 9700 1500 50  0001 C CNN
F 1 "GND1" H 9705 1577 50  0000 C CNN
F 2 "" H 9700 1750 50  0001 C CNN
F 3 "" H 9700 1750 50  0001 C CNN
	1    9700 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 1750 9700 1700
Wire Wire Line
	9700 1400 9700 1350
Wire Wire Line
	9850 1350 9700 1350
Connection ~ 9700 1350
Wire Wire Line
	9700 1350 9700 1300
$Comp
L Device:R R?
U 1 1 60EF2CBC
P 8850 1700
F 0 "R?" V 8643 1700 50  0000 C CNN
F 1 "1k" V 8734 1700 50  0000 C CNN
F 2 "" V 8780 1700 50  0001 C CNN
F 3 "~" H 8850 1700 50  0001 C CNN
	1    8850 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	8650 1700 8700 1700
Text GLabel 10350 2200 2    50   Input ~ 0
OD3
Text GLabel 8650 3200 0    50   Input ~ 0
PWM3
Wire Wire Line
	8650 3200 8700 3200
Text GLabel 10350 3700 2    50   Input ~ 0
OD5
Text GLabel 8650 4700 0    50   Input ~ 0
PWM5
Wire Wire Line
	8650 4700 8700 4700
Text GLabel 10350 5200 2    50   Input ~ 0
OD7
Text GLabel 8650 6200 0    50   Input ~ 0
PWM7
Wire Wire Line
	8650 6200 8700 6200
Text GLabel 10400 8200 2    50   Input ~ 0
OD2
Text GLabel 8700 9200 0    50   Input ~ 0
PWM2
Wire Wire Line
	8700 9200 8750 9200
Text GLabel 10400 9700 2    50   Input ~ 0
OD4
Text GLabel 8700 10700 0    50   Input ~ 0
PWM4
Wire Wire Line
	8700 10700 8750 10700
Text GLabel 10400 11200 2    50   Input ~ 0
OD6
Text GLabel 8700 12200 0    50   Input ~ 0
PWM6
Wire Wire Line
	8700 12200 8750 12200
Text GLabel 10400 12700 2    50   Input ~ 0
OD8
Text GLabel 8700 13700 0    50   Input ~ 0
PWM8
Wire Wire Line
	8700 13700 8750 13700
$Comp
L power:+5V #PWR?
U 1 1 60F89F98
P 9800 700
F 0 "#PWR?" H 9800 550 50  0001 C CNN
F 1 "+5V" V 9815 828 50  0000 L CNN
F 2 "" H 9800 700 50  0001 C CNN
F 3 "" H 9800 700 50  0001 C CNN
	1    9800 700 
	0    1    1    0   
$EndComp
Wire Wire Line
	9800 700  9700 700 
Connection ~ 9700 700 
$EndSCHEMATC

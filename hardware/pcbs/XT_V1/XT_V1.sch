EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
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
L Relay_SolidState:MOC3043M U5
U 1 1 60CB31A5
P 8050 2050
F 0 "U5" H 8050 2375 50  0000 C CNN
F 1 "MOC3043M" H 8050 2284 50  0000 C CNN
F 2 "Package_DIP:DIP-6_W8.89mm_SMDSocket_LongPads" H 7850 1850 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/MOC3043M-D.pdf" H 8050 2050 50  0001 L CNN
	1    8050 2050
	1    0    0    -1  
$EndComp
Text Notes 9150 750  0    50   ~ 0
Caps: C0805C103JARACTU (M)\n56k: VIT ZC207 56K (R)
$Comp
L MCU_ST_STM32F1:STM32F103C8Tx U3
U 1 1 60CC659B
P 3450 2950
F 0 "U3" H 2900 1500 50  0000 C CNN
F 1 "STM32F103C8Tx" H 3900 1500 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 2850 1550 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00161566.pdf" H 3450 2950 50  0001 C CNN
	1    3450 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 60CC7FEA
P 2300 1000
F 0 "R1" H 2370 1046 50  0000 L CNN
F 1 "1k" H 2370 955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2230 1000 50  0001 C CNN
F 3 "~" H 2300 1000 50  0001 C CNN
	1    2300 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 60CC971A
P 2300 1400
F 0 "C4" H 2415 1446 50  0000 L CNN
F 1 "100n" H 2415 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2338 1250 50  0001 C CNN
F 3 "~" H 2300 1400 50  0001 C CNN
	1    2300 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 1150 2300 1200
Wire Wire Line
	2300 1200 2650 1200
Wire Wire Line
	2650 1200 2650 1650
Wire Wire Line
	2650 1650 2750 1650
Connection ~ 2300 1200
Wire Wire Line
	2300 1200 2300 1250
$Comp
L power:GND #PWR05
U 1 1 60CCDD7B
P 2300 1550
F 0 "#PWR05" H 2300 1300 50  0001 C CNN
F 1 "GND" H 2305 1377 50  0000 C CNN
F 2 "" H 2300 1550 50  0001 C CNN
F 3 "" H 2300 1550 50  0001 C CNN
	1    2300 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR04
U 1 1 60CCE393
P 2300 850
F 0 "#PWR04" H 2300 700 50  0001 C CNN
F 1 "+3V3" H 2315 1023 50  0000 C CNN
F 2 "" H 2300 850 50  0001 C CNN
F 3 "" H 2300 850 50  0001 C CNN
	1    2300 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 60CCF2F8
P 2450 2100
F 0 "R2" H 2520 2146 50  0000 L CNN
F 1 "1M" H 2520 2055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2380 2100 50  0001 C CNN
F 3 "~" H 2450 2100 50  0001 C CNN
	1    2450 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 60CD0162
P 2050 2100
F 0 "Y1" V 2004 2231 50  0000 L CNN
F 1 "8MHz" V 2095 2231 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_HC49-SD" H 2050 2100 50  0001 C CNN
F 3 "~" H 2050 2100 50  0001 C CNN
	1    2050 2100
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 60CD09F0
P 1700 1950
F 0 "C2" V 1448 1950 50  0000 C CNN
F 1 "20p" V 1539 1950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1738 1800 50  0001 C CNN
F 3 "~" H 1700 1950 50  0001 C CNN
	1    1700 1950
	0    1    1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 60CD1211
P 1700 2250
F 0 "C3" V 1448 2250 50  0000 C CNN
F 1 "20p" V 1539 2250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1738 2100 50  0001 C CNN
F 3 "~" H 1700 2250 50  0001 C CNN
	1    1700 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	1850 1950 2050 1950
Wire Wire Line
	1850 2250 2050 2250
Wire Wire Line
	2650 2250 2650 2150
Wire Wire Line
	2650 2150 2750 2150
Connection ~ 2050 2250
Wire Wire Line
	2050 2250 2450 2250
Connection ~ 2450 2250
Wire Wire Line
	2450 2250 2650 2250
Wire Wire Line
	2750 2050 2650 2050
Wire Wire Line
	2650 2050 2650 1950
Wire Wire Line
	2650 1950 2450 1950
Connection ~ 2050 1950
Connection ~ 2450 1950
Wire Wire Line
	2450 1950 2050 1950
$Comp
L power:GND #PWR01
U 1 1 60CD2C09
P 1400 2100
F 0 "#PWR01" H 1400 1850 50  0001 C CNN
F 1 "GND" V 1405 1972 50  0000 R CNN
F 2 "" H 1400 2100 50  0001 C CNN
F 3 "" H 1400 2100 50  0001 C CNN
	1    1400 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	1550 1950 1500 1950
Wire Wire Line
	1500 1950 1500 2100
Wire Wire Line
	1500 2250 1550 2250
Wire Wire Line
	1400 2100 1500 2100
Connection ~ 1500 2100
Wire Wire Line
	1500 2100 1500 2250
NoConn ~ 2750 2550
NoConn ~ 2750 2450
NoConn ~ 2750 2350
$Comp
L Device:R R3
U 1 1 60CD7680
P 2600 1850
F 0 "R3" V 2393 1850 50  0000 C CNN
F 1 "1k" V 2484 1850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2530 1850 50  0001 C CNN
F 3 "~" H 2600 1850 50  0001 C CNN
	1    2600 1850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 60CD7DD4
P 2450 1850
F 0 "#PWR010" H 2450 1600 50  0001 C CNN
F 1 "GND" V 2455 1722 50  0000 R CNN
F 2 "" H 2450 1850 50  0001 C CNN
F 3 "" H 2450 1850 50  0001 C CNN
	1    2450 1850
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 60CD899D
P 2600 2950
F 0 "R4" V 2393 2950 50  0000 C CNN
F 1 "1k" V 2484 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2530 2950 50  0001 C CNN
F 3 "~" H 2600 2950 50  0001 C CNN
	1    2600 2950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 60CD8E88
P 2450 2950
F 0 "#PWR011" H 2450 2700 50  0001 C CNN
F 1 "GND" V 2455 2822 50  0000 R CNN
F 2 "" H 2450 2950 50  0001 C CNN
F 3 "" H 2450 2950 50  0001 C CNN
	1    2450 2950
	0    1    1    0   
$EndComp
Text GLabel 2650 3550 0    50   Input ~ 0
CAN_RD
Text GLabel 2650 3650 0    50   Input ~ 0
CAN_TD
Text GLabel 2650 3750 0    50   Input ~ 0
TXD
Text GLabel 2650 3850 0    50   Input ~ 0
RXD
Text GLabel 2650 3950 0    50   Input ~ 0
DIR
Text GLabel 4450 4050 2    50   Input ~ 0
SWIO
Text GLabel 4450 4150 2    50   Input ~ 0
SWCLK
Wire Wire Line
	2650 3550 2750 3550
Wire Wire Line
	2650 3650 2750 3650
Wire Wire Line
	2650 3750 2750 3750
Wire Wire Line
	2650 3850 2750 3850
Wire Wire Line
	2650 3950 2750 3950
$Comp
L Switch:SW_DIP_x05 SW1
U 1 1 60CE03DB
P 6350 3150
F 0 "SW1" H 6350 3617 50  0000 C CNN
F 1 "SW_DIP_x05" H 6350 3526 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx05_Slide_6.7x14.26mm_W7.62mm_P2.54mm_LowProfile" H 6350 3150 50  0001 C CNN
F 3 "~" H 6350 3150 50  0001 C CNN
	1    6350 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 60CE5195
P 4850 2750
F 0 "R7" H 4780 2704 50  0000 R CNN
F 1 "1k" H 4780 2795 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4780 2750 50  0001 C CNN
F 3 "~" H 4850 2750 50  0001 C CNN
	1    4850 2750
	-1   0    0    1   
$EndComp
$Comp
L Device:R R8
U 1 1 60CE5C03
P 5100 2750
F 0 "R8" H 5030 2704 50  0000 R CNN
F 1 "1k" H 5030 2795 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5030 2750 50  0001 C CNN
F 3 "~" H 5100 2750 50  0001 C CNN
	1    5100 2750
	-1   0    0    1   
$EndComp
$Comp
L Device:R R9
U 1 1 60CE60DC
P 5350 2750
F 0 "R9" H 5280 2704 50  0000 R CNN
F 1 "1k" H 5280 2795 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5280 2750 50  0001 C CNN
F 3 "~" H 5350 2750 50  0001 C CNN
	1    5350 2750
	-1   0    0    1   
$EndComp
$Comp
L Device:R R10
U 1 1 60CE66C6
P 5600 2750
F 0 "R10" H 5530 2704 50  0000 R CNN
F 1 "1k" H 5530 2795 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5530 2750 50  0001 C CNN
F 3 "~" H 5600 2750 50  0001 C CNN
	1    5600 2750
	-1   0    0    1   
$EndComp
$Comp
L Device:R R11
U 1 1 60CE6DC8
P 5850 2750
F 0 "R11" H 5780 2704 50  0000 R CNN
F 1 "1k" H 5780 2795 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5780 2750 50  0001 C CNN
F 3 "~" H 5850 2750 50  0001 C CNN
	1    5850 2750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR025
U 1 1 60CEB2F0
P 6750 3450
F 0 "#PWR025" H 6750 3200 50  0001 C CNN
F 1 "GND" H 6755 3277 50  0000 C CNN
F 2 "" H 6750 3450 50  0001 C CNN
F 3 "" H 6750 3450 50  0001 C CNN
	1    6750 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 2950 6750 2950
Wire Wire Line
	6750 2950 6750 3050
Wire Wire Line
	6650 3350 6750 3350
Connection ~ 6750 3350
Wire Wire Line
	6750 3350 6750 3450
Wire Wire Line
	6650 3250 6750 3250
Connection ~ 6750 3250
Wire Wire Line
	6750 3250 6750 3350
Wire Wire Line
	6650 3150 6750 3150
Connection ~ 6750 3150
Wire Wire Line
	6750 3150 6750 3250
Wire Wire Line
	6650 3050 6750 3050
Connection ~ 6750 3050
Wire Wire Line
	6750 3050 6750 3150
Wire Wire Line
	6050 3050 5100 3050
Wire Wire Line
	6050 3250 5600 3250
Wire Wire Line
	4850 2900 4850 2950
Connection ~ 4850 2950
Wire Wire Line
	4850 2950 6050 2950
Wire Wire Line
	5100 2900 5100 3050
Connection ~ 5100 3050
Wire Wire Line
	5350 2900 5350 3150
Connection ~ 5350 3150
Wire Wire Line
	5350 3150 6050 3150
Wire Wire Line
	5600 2900 5600 3250
Connection ~ 5600 3250
Wire Wire Line
	5850 2900 5850 3350
Connection ~ 5850 3350
Wire Wire Line
	5850 3350 6050 3350
$Comp
L power:+3V3 #PWR015
U 1 1 60D02A17
P 5350 2500
F 0 "#PWR015" H 5350 2350 50  0001 C CNN
F 1 "+3V3" H 5365 2673 50  0000 C CNN
F 2 "" H 5350 2500 50  0001 C CNN
F 3 "" H 5350 2500 50  0001 C CNN
	1    5350 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2500 5350 2550
Wire Wire Line
	4850 2600 4850 2550
Wire Wire Line
	4850 2550 5100 2550
Connection ~ 5350 2550
Wire Wire Line
	5350 2550 5350 2600
Wire Wire Line
	5350 2550 5600 2550
Wire Wire Line
	5850 2550 5850 2600
Wire Wire Line
	5600 2600 5600 2550
Connection ~ 5600 2550
Wire Wire Line
	5600 2550 5850 2550
Wire Wire Line
	5100 2600 5100 2550
Connection ~ 5100 2550
Wire Wire Line
	5100 2550 5350 2550
$Comp
L Device:R R29
U 1 1 60D3A93E
P 9700 1850
F 0 "R29" H 9770 1896 50  0000 L CNN
F 1 "68" H 9770 1805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9630 1850 50  0001 C CNN
F 3 "~" H 9700 1850 50  0001 C CNN
	1    9700 1850
	1    0    0    -1  
$EndComp
$Comp
L Triac_Thyristor:BT136-500 Q6
U 1 1 60D3A944
P 9100 2050
F 0 "Q6" H 9228 2096 50  0000 L CNN
F 1 "BT136-500" H 9228 2005 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 9300 1975 50  0001 L CIN
F 3 "http://www.micropik.com/PDF/BT136-600.pdf" H 9100 2050 50  0001 L CNN
	1    9100 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R21
U 1 1 60D3A94A
P 8650 1950
F 0 "R21" V 8443 1950 50  0000 C CNN
F 1 "360" V 8534 1950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8580 1950 50  0001 C CNN
F 3 "~" H 8650 1950 50  0001 C CNN
	1    8650 1950
	0    1    1    0   
$EndComp
$Comp
L Device:C C16
U 1 1 60D3A950
P 9700 2250
F 0 "C16" H 9815 2296 50  0000 L CNN
F 1 "10n" H 9815 2205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 9738 2100 50  0001 C CNN
F 3 "~" H 9700 2250 50  0001 C CNN
	1    9700 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R25
U 1 1 60D3A956
P 8700 2300
F 0 "R25" H 8630 2254 50  0000 R CNN
F 1 "330" H 8630 2345 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8630 2300 50  0001 C CNN
F 3 "~" H 8700 2300 50  0001 C CNN
	1    8700 2300
	-1   0    0    1   
$EndComp
Wire Wire Line
	9100 2200 9100 2450
Wire Wire Line
	8800 1950 8800 1650
Wire Wire Line
	9100 1900 9100 1650
Wire Wire Line
	9700 2000 9700 2100
$Comp
L power:GND #PWR033
U 1 1 60D7AB05
P 7350 2150
F 0 "#PWR033" H 7350 1900 50  0001 C CNN
F 1 "GND" H 7355 1977 50  0000 C CNN
F 2 "" H 7350 2150 50  0001 C CNN
F 3 "" H 7350 2150 50  0001 C CNN
	1    7350 2150
	0    1    1    0   
$EndComp
Text GLabel 4200 3550 2    50   Input ~ 0
CH1
Text GLabel 4200 3650 2    50   Input ~ 0
CH2
Text GLabel 4200 2750 2    50   Input ~ 0
CH3
Text GLabel 4200 2850 2    50   Input ~ 0
CH4
Text GLabel 7250 2450 0    50   Input ~ 0
CH1
Wire Wire Line
	4050 2850 4200 2850
Wire Wire Line
	4050 2750 4200 2750
Wire Wire Line
	4050 3650 4200 3650
Wire Wire Line
	4050 3550 4200 3550
Text Notes 9150 3600 0    50   ~ 0
Galvanische Trennung\nmind. 1,5mm
$Comp
L Transistor_BJT:BC846 Q1
U 1 1 60EAC345
P 7550 2250
F 0 "Q1" V 7550 2400 50  0000 L CNN
F 1 "BC846" V 7450 2400 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7750 2175 50  0001 L CIN
F 3 "https://assets.nexperia.com/documents/data-sheet/BC846_SER.pdf" H 7550 2250 50  0001 L CNN
	1    7550 2250
	0    1    -1   0   
$EndComp
$Comp
L Device:R R12
U 1 1 60EBA5B4
P 7400 2450
F 0 "R12" V 7300 2450 50  0000 C CNN
F 1 "1k" V 7400 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7330 2450 50  0001 C CNN
F 3 "~" H 7400 2450 50  0001 C CNN
	1    7400 2450
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 60EFE54B
P 3200 5300
F 0 "R5" V 3300 5300 50  0000 C CNN
F 1 "120" V 3200 5300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3130 5300 50  0001 C CNN
F 3 "~" H 3200 5300 50  0001 C CNN
	1    3200 5300
	0    1    1    0   
$EndComp
$Comp
L Interface_UART:MAX485E U2
U 1 1 60F1CBBC
P 2350 6750
F 0 "U2" H 2150 7200 50  0000 C CNN
F 1 "MAX485E" H 2550 7200 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2350 6050 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX1487E-MAX491E.pdf" H 2350 6800 50  0001 C CNN
	1    2350 6750
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AP1117-33 U4
U 1 1 60F2ADB4
P 4900 900
F 0 "U4" H 4900 1142 50  0000 C CNN
F 1 "AP1117-33" H 4900 1051 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 4900 1100 50  0001 C CNN
F 3 "http://www.diodes.com/datasheets/AP1117.pdf" H 5000 650 50  0001 C CNN
	1    4900 900 
	1    0    0    -1  
$EndComp
$Comp
L Interface_CAN_LIN:SN65HVD232 U1
U 1 1 60F2D7A2
P 2350 5300
F 0 "U1" H 2150 5550 50  0000 C CNN
F 1 "SN65HVD232" H 2600 5550 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2350 4800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn65hvd230.pdf" H 2250 5700 50  0001 C CNN
	1    2350 5300
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J4
U 1 1 60F2F027
P 4700 6100
F 0 "J4" H 4750 6417 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 4750 6326 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 4700 6100 50  0001 C CNN
F 3 "~" H 4700 6100 50  0001 C CNN
	1    4700 6100
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J5
U 1 1 60F43A7E
P 6000 5350
F 0 "J5" H 6050 5767 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 6050 5676 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Horizontal" H 6000 5350 50  0001 C CNN
F 3 "~" H 6000 5350 50  0001 C CNN
	1    6000 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 60F46673
P 3400 4550
F 0 "#PWR012" H 3400 4300 50  0001 C CNN
F 1 "GND" H 3405 4377 50  0000 C CNN
F 2 "" H 3400 4550 50  0001 C CNN
F 3 "" H 3400 4550 50  0001 C CNN
	1    3400 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 4450 3250 4500
Wire Wire Line
	3250 4500 3350 4500
Wire Wire Line
	3550 4500 3550 4450
Wire Wire Line
	3450 4450 3450 4500
Connection ~ 3450 4500
Wire Wire Line
	3450 4500 3550 4500
Wire Wire Line
	3350 4450 3350 4500
Connection ~ 3350 4500
Wire Wire Line
	3350 4500 3400 4500
Wire Wire Line
	3400 4550 3400 4500
Connection ~ 3400 4500
Wire Wire Line
	3400 4500 3450 4500
$Comp
L power:+3V3 #PWR013
U 1 1 60F6B9CF
P 3450 1350
F 0 "#PWR013" H 3450 1200 50  0001 C CNN
F 1 "+3V3" H 3465 1523 50  0000 C CNN
F 2 "" H 3450 1350 50  0001 C CNN
F 3 "" H 3450 1350 50  0001 C CNN
	1    3450 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 1400 3350 1400
Wire Wire Line
	3650 1400 3650 1450
Wire Wire Line
	3250 1400 3250 1450
Wire Wire Line
	3550 1450 3550 1400
Connection ~ 3550 1400
Wire Wire Line
	3550 1400 3650 1400
Wire Wire Line
	3450 1450 3450 1400
Connection ~ 3450 1400
Wire Wire Line
	3450 1400 3550 1400
Wire Wire Line
	3350 1450 3350 1400
Connection ~ 3350 1400
Wire Wire Line
	3350 1400 3450 1400
Wire Wire Line
	3450 1350 3450 1400
NoConn ~ 2750 2750
NoConn ~ 2750 2850
NoConn ~ 2750 3050
NoConn ~ 2750 3150
NoConn ~ 2750 3250
NoConn ~ 2750 3350
NoConn ~ 2750 3450
NoConn ~ 2750 4050
NoConn ~ 2750 4150
NoConn ~ 2750 4250
NoConn ~ 4050 3450
$Comp
L power:+3V3 #PWR026
U 1 1 6102C72F
P 5800 850
F 0 "#PWR026" H 5800 700 50  0001 C CNN
F 1 "+3V3" H 5815 1023 50  0000 C CNN
F 2 "" H 5800 850 50  0001 C CNN
F 3 "" H 5800 850 50  0001 C CNN
	1    5800 850 
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR014
U 1 1 6102EDC4
P 4000 850
F 0 "#PWR014" H 4000 700 50  0001 C CNN
F 1 "VCC" H 4015 1023 50  0000 C CNN
F 2 "" H 4000 850 50  0001 C CNN
F 3 "" H 4000 850 50  0001 C CNN
	1    4000 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 6103101B
P 4400 1100
F 0 "C7" H 4515 1146 50  0000 L CNN
F 1 "100n" H 4515 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4438 950 50  0001 C CNN
F 3 "~" H 4400 1100 50  0001 C CNN
	1    4400 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 61031EB0
P 4000 1100
F 0 "C5" H 4115 1146 50  0000 L CNN
F 1 "1µ" H 4115 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4038 950 50  0001 C CNN
F 3 "~" H 4000 1100 50  0001 C CNN
	1    4000 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 6103243E
P 5400 1100
F 0 "C11" H 5515 1146 50  0000 L CNN
F 1 "100n" H 5515 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5438 950 50  0001 C CNN
F 3 "~" H 5400 1100 50  0001 C CNN
	1    5400 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 61032D10
P 5800 1100
F 0 "C13" H 5915 1146 50  0000 L CNN
F 1 "1µ" H 5915 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5838 950 50  0001 C CNN
F 3 "~" H 5800 1100 50  0001 C CNN
	1    5800 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 850  4000 900 
Wire Wire Line
	4000 900  4400 900 
Connection ~ 4000 900 
Wire Wire Line
	4000 900  4000 950 
Wire Wire Line
	4400 950  4400 900 
Connection ~ 4400 900 
Wire Wire Line
	4400 900  4600 900 
Wire Wire Line
	5200 900  5400 900 
Wire Wire Line
	5800 900  5800 850 
Wire Wire Line
	5800 950  5800 900 
Connection ~ 5800 900 
Wire Wire Line
	5400 950  5400 900 
Connection ~ 5400 900 
Wire Wire Line
	5400 900  5800 900 
Wire Wire Line
	4000 1250 4000 1300
Wire Wire Line
	4000 1300 4400 1300
Wire Wire Line
	5800 1300 5800 1250
Wire Wire Line
	5400 1250 5400 1300
Connection ~ 5400 1300
Wire Wire Line
	5400 1300 5800 1300
Wire Wire Line
	4400 1250 4400 1300
Connection ~ 4400 1300
Wire Wire Line
	4400 1300 4900 1300
Wire Wire Line
	4900 1200 4900 1300
Connection ~ 4900 1300
Wire Wire Line
	4900 1300 5400 1300
$Comp
L power:GND #PWR020
U 1 1 61090DB9
P 4900 1350
F 0 "#PWR020" H 4900 1100 50  0001 C CNN
F 1 "GND" H 4905 1177 50  0000 C CNN
F 2 "" H 4900 1350 50  0001 C CNN
F 3 "" H 4900 1350 50  0001 C CNN
	1    4900 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 1350 4900 1300
$Comp
L power:VCC #PWR016
U 1 1 610A6285
P 5700 5200
F 0 "#PWR016" H 5700 5050 50  0001 C CNN
F 1 "VCC" V 5715 5327 50  0000 L CNN
F 2 "" H 5700 5200 50  0001 C CNN
F 3 "" H 5700 5200 50  0001 C CNN
	1    5700 5200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR017
U 1 1 610AA395
P 5700 5400
F 0 "#PWR017" H 5700 5150 50  0001 C CNN
F 1 "GND" V 5705 5272 50  0000 R CNN
F 2 "" H 5700 5400 50  0001 C CNN
F 3 "" H 5700 5400 50  0001 C CNN
	1    5700 5400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR022
U 1 1 610AAC2F
P 6400 5400
F 0 "#PWR022" H 6400 5150 50  0001 C CNN
F 1 "GND" V 6405 5272 50  0000 R CNN
F 2 "" H 6400 5400 50  0001 C CNN
F 3 "" H 6400 5400 50  0001 C CNN
	1    6400 5400
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR021
U 1 1 610AB391
P 6400 5200
F 0 "#PWR021" H 6400 5050 50  0001 C CNN
F 1 "VCC" V 6415 5328 50  0000 L CNN
F 2 "" H 6400 5200 50  0001 C CNN
F 3 "" H 6400 5200 50  0001 C CNN
	1    6400 5200
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 5150 5750 5150
Wire Wire Line
	5750 5150 5750 5200
Wire Wire Line
	5750 5250 5800 5250
Wire Wire Line
	5700 5200 5750 5200
Connection ~ 5750 5200
Wire Wire Line
	5750 5200 5750 5250
Wire Wire Line
	5800 5350 5750 5350
Wire Wire Line
	5750 5350 5750 5400
Wire Wire Line
	5750 5450 5800 5450
Wire Wire Line
	5700 5400 5750 5400
Connection ~ 5750 5400
Wire Wire Line
	5750 5400 5750 5450
Wire Wire Line
	6300 5150 6350 5150
Wire Wire Line
	6350 5150 6350 5200
Wire Wire Line
	6350 5250 6300 5250
Wire Wire Line
	6400 5200 6350 5200
Connection ~ 6350 5200
Wire Wire Line
	6350 5200 6350 5250
Wire Wire Line
	6300 5350 6350 5350
Wire Wire Line
	6350 5350 6350 5400
Wire Wire Line
	6350 5450 6300 5450
Wire Wire Line
	6400 5400 6350 5400
Connection ~ 6350 5400
Wire Wire Line
	6350 5400 6350 5450
Text GLabel 5700 5550 0    50   Input ~ 0
BUS+
Text GLabel 6400 5550 2    50   Input ~ 0
BUS-
Wire Wire Line
	5700 5550 5800 5550
Wire Wire Line
	6300 5550 6400 5550
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J6
U 1 1 6113E670
P 6000 6100
F 0 "J6" H 6050 6517 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 6050 6426 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Horizontal" H 6000 6100 50  0001 C CNN
F 3 "~" H 6000 6100 50  0001 C CNN
	1    6000 6100
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR018
U 1 1 6113E676
P 5700 5950
F 0 "#PWR018" H 5700 5800 50  0001 C CNN
F 1 "VCC" V 5715 6077 50  0000 L CNN
F 2 "" H 5700 5950 50  0001 C CNN
F 3 "" H 5700 5950 50  0001 C CNN
	1    5700 5950
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR019
U 1 1 6113E67C
P 5700 6150
F 0 "#PWR019" H 5700 5900 50  0001 C CNN
F 1 "GND" V 5705 6022 50  0000 R CNN
F 2 "" H 5700 6150 50  0001 C CNN
F 3 "" H 5700 6150 50  0001 C CNN
	1    5700 6150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR024
U 1 1 6113E682
P 6400 6150
F 0 "#PWR024" H 6400 5900 50  0001 C CNN
F 1 "GND" V 6405 6022 50  0000 R CNN
F 2 "" H 6400 6150 50  0001 C CNN
F 3 "" H 6400 6150 50  0001 C CNN
	1    6400 6150
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR023
U 1 1 6113E688
P 6400 5950
F 0 "#PWR023" H 6400 5800 50  0001 C CNN
F 1 "VCC" V 6415 6078 50  0000 L CNN
F 2 "" H 6400 5950 50  0001 C CNN
F 3 "" H 6400 5950 50  0001 C CNN
	1    6400 5950
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 5900 5750 5900
Wire Wire Line
	5750 5900 5750 5950
Wire Wire Line
	5750 6000 5800 6000
Wire Wire Line
	5700 5950 5750 5950
Connection ~ 5750 5950
Wire Wire Line
	5750 5950 5750 6000
Wire Wire Line
	5800 6100 5750 6100
Wire Wire Line
	5750 6100 5750 6150
Wire Wire Line
	5750 6200 5800 6200
Wire Wire Line
	5700 6150 5750 6150
Connection ~ 5750 6150
Wire Wire Line
	5750 6150 5750 6200
Wire Wire Line
	6300 5900 6350 5900
Wire Wire Line
	6350 5900 6350 5950
Wire Wire Line
	6350 6000 6300 6000
Wire Wire Line
	6400 5950 6350 5950
Connection ~ 6350 5950
Wire Wire Line
	6350 5950 6350 6000
Wire Wire Line
	6300 6100 6350 6100
Wire Wire Line
	6350 6100 6350 6150
Wire Wire Line
	6350 6200 6300 6200
Wire Wire Line
	6400 6150 6350 6150
Connection ~ 6350 6150
Wire Wire Line
	6350 6150 6350 6200
Text GLabel 5700 6300 0    50   Input ~ 0
BUS+
Text GLabel 6400 6300 2    50   Input ~ 0
BUS-
Wire Wire Line
	5700 6300 5800 6300
Wire Wire Line
	6300 6300 6400 6300
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 61150A30
P 3650 5300
F 0 "J2" H 3730 5292 50  0000 L CNN
F 1 "Conn_01x02" H 3730 5201 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3650 5300 50  0001 C CNN
F 3 "~" H 3650 5300 50  0001 C CNN
	1    3650 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 6115ADE2
P 3200 6750
F 0 "R6" V 3300 6750 50  0000 C CNN
F 1 "150" V 3200 6750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3130 6750 50  0001 C CNN
F 3 "~" H 3200 6750 50  0001 C CNN
	1    3200 6750
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 6115C40E
P 3650 6750
F 0 "J3" H 3730 6742 50  0000 L CNN
F 1 "Conn_01x02" H 3730 6651 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3650 6750 50  0001 C CNN
F 3 "~" H 3650 6750 50  0001 C CNN
	1    3650 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 6650 3050 6650
Wire Wire Line
	4400 6650 4400 6200
Wire Wire Line
	3050 6750 3050 6650
Connection ~ 3050 6650
Wire Wire Line
	3350 6750 3450 6750
Wire Wire Line
	2750 6950 3450 6950
Wire Wire Line
	4900 6950 4900 6200
Wire Wire Line
	3450 6850 3450 6950
Connection ~ 3450 6950
Wire Wire Line
	2750 5300 2750 5200
Wire Wire Line
	2750 5200 3050 5200
Wire Wire Line
	4200 6000 4400 6000
Wire Wire Line
	2750 5400 2750 5550
Wire Wire Line
	5200 5550 5200 6000
Wire Wire Line
	5200 6000 4900 6000
Wire Wire Line
	4200 5200 4200 6000
Wire Wire Line
	3050 6650 4400 6650
Wire Wire Line
	3450 6950 4900 6950
Wire Wire Line
	2750 5550 3450 5550
Wire Wire Line
	3050 5200 3050 5300
Connection ~ 3050 5200
Wire Wire Line
	3050 5200 4200 5200
Wire Wire Line
	3350 5300 3450 5300
Wire Wire Line
	3450 5400 3450 5550
Connection ~ 3450 5550
Wire Wire Line
	3450 5550 5200 5550
$Comp
L power:+3V3 #PWR06
U 1 1 61264CD7
P 2350 5000
F 0 "#PWR06" H 2350 4850 50  0001 C CNN
F 1 "+3V3" H 2365 5173 50  0000 C CNN
F 2 "" H 2350 5000 50  0001 C CNN
F 3 "" H 2350 5000 50  0001 C CNN
	1    2350 5000
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR08
U 1 1 612692E7
P 2350 6250
F 0 "#PWR08" H 2350 6100 50  0001 C CNN
F 1 "+3V3" H 2365 6423 50  0000 C CNN
F 2 "" H 2350 6250 50  0001 C CNN
F 3 "" H 2350 6250 50  0001 C CNN
	1    2350 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 612725A7
P 2350 5700
F 0 "#PWR07" H 2350 5450 50  0001 C CNN
F 1 "GND" H 2355 5527 50  0000 C CNN
F 2 "" H 2350 5700 50  0001 C CNN
F 3 "" H 2350 5700 50  0001 C CNN
	1    2350 5700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 61273E90
P 2350 7350
F 0 "#PWR09" H 2350 7100 50  0001 C CNN
F 1 "GND" H 2355 7177 50  0000 C CNN
F 2 "" H 2350 7350 50  0001 C CNN
F 3 "" H 2350 7350 50  0001 C CNN
	1    2350 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 6850 1900 6850
Wire Wire Line
	1900 6850 1900 6800
Wire Wire Line
	1900 6750 1950 6750
Wire Wire Line
	1900 6800 1850 6800
Connection ~ 1900 6800
Wire Wire Line
	1900 6800 1900 6750
Wire Wire Line
	1950 6650 1850 6650
Wire Wire Line
	1950 6950 1850 6950
Wire Wire Line
	1950 5300 1850 5300
Wire Wire Line
	1950 5200 1850 5200
Text GLabel 1850 5200 0    50   Input ~ 0
CAN_TD
Text GLabel 1850 5300 0    50   Input ~ 0
CAN_RD
Text GLabel 1850 6950 0    50   Input ~ 0
TXD
Text GLabel 1850 6800 0    50   Input ~ 0
DIR
Text GLabel 1850 6650 0    50   Input ~ 0
RXD
Text GLabel 4400 6100 0    50   Input ~ 0
BUS+
Text GLabel 4900 6100 2    50   Input ~ 0
BUS-
$Comp
L Device:C C14
U 1 1 613115EA
P 6600 7300
F 0 "C14" H 6715 7346 50  0000 L CNN
F 1 "100n" H 6715 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6638 7150 50  0001 C CNN
F 3 "~" H 6600 7300 50  0001 C CNN
	1    6600 7300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 61318092
P 6200 7300
F 0 "C12" H 6315 7346 50  0000 L CNN
F 1 "100n" H 6315 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6238 7150 50  0001 C CNN
F 3 "~" H 6200 7300 50  0001 C CNN
	1    6200 7300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 613184EB
P 5800 7300
F 0 "C10" H 5915 7346 50  0000 L CNN
F 1 "100n" H 5915 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5838 7150 50  0001 C CNN
F 3 "~" H 5800 7300 50  0001 C CNN
	1    5800 7300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 61318973
P 5400 7300
F 0 "C9" H 5515 7346 50  0000 L CNN
F 1 "100n" H 5515 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5438 7150 50  0001 C CNN
F 3 "~" H 5400 7300 50  0001 C CNN
	1    5400 7300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 61318DC3
P 5000 7300
F 0 "C8" H 5115 7346 50  0000 L CNN
F 1 "100n" H 5115 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5038 7150 50  0001 C CNN
F 3 "~" H 5000 7300 50  0001 C CNN
	1    5000 7300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 61319261
P 4600 7300
F 0 "C6" H 4715 7346 50  0000 L CNN
F 1 "100n" H 4715 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4638 7150 50  0001 C CNN
F 3 "~" H 4600 7300 50  0001 C CNN
	1    4600 7300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR028
U 1 1 613325EB
P 6600 7550
F 0 "#PWR028" H 6600 7300 50  0001 C CNN
F 1 "GND" H 6605 7377 50  0000 C CNN
F 2 "" H 6600 7550 50  0001 C CNN
F 3 "" H 6600 7550 50  0001 C CNN
	1    6600 7550
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR027
U 1 1 6134CD62
P 6600 7050
F 0 "#PWR027" H 6600 6900 50  0001 C CNN
F 1 "+3V3" H 6615 7223 50  0000 C CNN
F 2 "" H 6600 7050 50  0001 C CNN
F 3 "" H 6600 7050 50  0001 C CNN
	1    6600 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 7050 6600 7100
Wire Wire Line
	6600 7550 6600 7500
Wire Wire Line
	6600 7100 6200 7100
Wire Wire Line
	4600 7100 4600 7150
Connection ~ 6600 7100
Wire Wire Line
	6600 7100 6600 7150
Wire Wire Line
	5000 7150 5000 7100
Connection ~ 5000 7100
Wire Wire Line
	5000 7100 4600 7100
Wire Wire Line
	5400 7150 5400 7100
Connection ~ 5400 7100
Wire Wire Line
	5400 7100 5000 7100
Wire Wire Line
	5800 7150 5800 7100
Connection ~ 5800 7100
Wire Wire Line
	5800 7100 5400 7100
Wire Wire Line
	6200 7150 6200 7100
Connection ~ 6200 7100
Wire Wire Line
	6200 7100 5800 7100
Wire Wire Line
	4600 7450 4600 7500
Wire Wire Line
	4600 7500 5000 7500
Connection ~ 6600 7500
Wire Wire Line
	6600 7500 6600 7450
Wire Wire Line
	6200 7450 6200 7500
Connection ~ 6200 7500
Wire Wire Line
	6200 7500 6600 7500
Wire Wire Line
	5800 7450 5800 7500
Connection ~ 5800 7500
Wire Wire Line
	5800 7500 6200 7500
Wire Wire Line
	5400 7450 5400 7500
Connection ~ 5400 7500
Wire Wire Line
	5400 7500 5800 7500
Wire Wire Line
	5000 7450 5000 7500
Connection ~ 5000 7500
Wire Wire Line
	5000 7500 5400 7500
$Comp
L power:PWR_FLAG #FLG01
U 1 1 6147F40A
P 4400 900
F 0 "#FLG01" H 4400 975 50  0001 C CNN
F 1 "PWR_FLAG" H 4400 1073 50  0000 C CNN
F 2 "" H 4400 900 50  0001 C CNN
F 3 "~" H 4400 900 50  0001 C CNN
	1    4400 900 
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 61481170
P 4400 1300
F 0 "#FLG02" H 4400 1375 50  0001 C CNN
F 1 "PWR_FLAG" H 4400 1473 50  0000 C CNN
F 2 "" H 4400 1300 50  0001 C CNN
F 3 "~" H 4400 1300 50  0001 C CNN
	1    4400 1300
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 61489041
P 850 3900
F 0 "J1" H 768 4217 50  0000 C CNN
F 1 "Conn_01x04" H 768 4126 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Horizontal" H 850 3900 50  0001 C CNN
F 3 "~" H 850 3900 50  0001 C CNN
	1    850  3900
	-1   0    0    -1  
$EndComp
Text GLabel 1200 3900 2    50   Input ~ 0
SWIO
Text GLabel 1200 4000 2    50   Input ~ 0
SWCLK
Wire Wire Line
	1200 3900 1050 3900
Wire Wire Line
	1050 4000 1200 4000
$Comp
L Device:C C1
U 1 1 614D8845
P 1650 3950
F 0 "C1" H 1765 3996 50  0000 L CNN
F 1 "100n" H 1765 3905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1688 3800 50  0001 C CNN
F 3 "~" H 1650 3950 50  0001 C CNN
	1    1650 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 3800 1650 3800
Wire Wire Line
	1050 4100 1650 4100
Connection ~ 1650 4100
Wire Wire Line
	1650 4100 1850 4100
Wire Wire Line
	1650 3800 1850 3800
Connection ~ 1650 3800
$Comp
L power:GND #PWR03
U 1 1 6153E686
P 1850 4100
F 0 "#PWR03" H 1850 3850 50  0001 C CNN
F 1 "GND" H 1855 3927 50  0000 C CNN
F 2 "" H 1850 4100 50  0001 C CNN
F 3 "" H 1850 4100 50  0001 C CNN
	1    1850 4100
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR02
U 1 1 61540FAF
P 1850 3800
F 0 "#PWR02" H 1850 3650 50  0001 C CNN
F 1 "+3V3" H 1865 3973 50  0000 C CNN
F 2 "" H 1850 3800 50  0001 C CNN
F 3 "" H 1850 3800 50  0001 C CNN
	1    1850 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 3250 10600 3250
Wire Wire Line
	10500 2450 10600 2450
$Comp
L XT_V1-rescue:TBL009-500-02GY-2GY-KiCAD_personalized J8
U 1 1 60D3A938
P 10600 2450
F 0 "J8" V 10954 2578 50  0000 L CNN
F 1 "TBL009-500-02GY-2GY" V 10550 2000 50  0000 L CNN
F 2 "KiCAD_personal:TBL00950002GY2GY" H 11250 2550 50  0001 L CNN
F 3 "https://www.cuidevices.com/product/resource/tbl009-500.pdf" H 11250 2450 50  0001 L CNN
F 4 "Conn Terminal Block 2 POS 5mm Solder RA Thru-Hole 10A/Contact" H 11250 2350 50  0001 L CNN "Description"
F 5 "13" H 11250 2250 50  0001 L CNN "Height"
F 6 "CUI Inc." H 11250 2150 50  0001 L CNN "Manufacturer_Name"
F 7 "TBL009-500-02GY-2GY" H 11250 2050 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "490-TBL00950002GY2GY" H 11250 1950 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/CUI-Devices/TBL009-500-02GY-2GY?qs=UXgszm6BlbHpkCnXmCRUvg%3D%3D" H 11250 1850 50  0001 L CNN "Mouser Price/Stock"
F 10 "TBL009-500-02GY-2GY" H 11250 1750 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/tbl009-500-02gy-2gy/cui-devices?region=nac" H 11250 1650 50  0001 L CNN "Arrow Price/Stock"
	1    10600 2450
	0    1    1    0   
$EndComp
Text Notes 10850 1500 0    50   ~ 0
AC 1
$Comp
L Isolator:TLP291 U6
U 1 1 60E01513
P 8050 1200
F 0 "U6" H 8050 1525 50  0000 C CNN
F 1 "TLP291" H 8050 1434 50  0000 C CNN
F 2 "Package_SO:SOIC-4_4.55x2.6mm_P1.27mm" H 7850 1000 50  0001 L CIN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=12884&prodName=TLP291" H 8050 1200 50  0001 L CNN
	1    8050 1200
	-1   0    0    -1  
$EndComp
$Comp
L Diode:SM4007 D1
U 1 1 60E037DE
P 8550 1200
F 0 "D1" V 8504 1280 50  0000 L CNN
F 1 "SM4007" V 8595 1280 50  0000 L CNN
F 2 "Diode_SMD:D_MELF" H 8550 1025 50  0001 C CNN
F 3 "http://cdn-reichelt.de/documents/datenblatt/A400/SMD1N400%23DIO.pdf" H 8550 1200 50  0001 C CNN
	1    8550 1200
	0    1    1    0   
$EndComp
$Comp
L Device:R R33
U 1 1 60E057E2
P 8850 1050
F 0 "R33" V 8643 1050 50  0000 C CNN
F 1 "56k" V 8734 1050 50  0000 C CNN
F 2 "Resistor_SMD:R_MELF_MMB-0207" V 8780 1050 50  0001 C CNN
F 3 "~" H 8850 1050 50  0001 C CNN
	1    8850 1050
	0    1    1    0   
$EndComp
Wire Wire Line
	8700 1050 8550 1050
Wire Wire Line
	8450 1050 8450 1100
Wire Wire Line
	8450 1100 8350 1100
Connection ~ 8550 1050
Wire Wire Line
	8550 1050 8450 1050
Wire Wire Line
	8350 1300 8450 1300
Wire Wire Line
	8450 1300 8450 1350
Wire Wire Line
	8450 1350 8550 1350
Wire Wire Line
	8550 1350 10050 1350
Connection ~ 8550 1350
Wire Wire Line
	10050 1350 10050 1650
$Comp
L Device:R R16
U 1 1 60CC4928
P 7550 1950
F 0 "R16" V 7343 1950 50  0000 C CNN
F 1 "max 360" V 7434 1950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7480 1950 50  0001 C CNN
F 3 "~" H 7550 1950 50  0001 C CNN
	1    7550 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	7700 1950 7750 1950
$Comp
L power:VCC #PWR029
U 1 1 60EBE988
P 7300 1950
F 0 "#PWR029" H 7300 1800 50  0001 C CNN
F 1 "VCC" H 7315 2123 50  0000 C CNN
F 2 "" H 7300 1950 50  0001 C CNN
F 3 "" H 7300 1950 50  0001 C CNN
	1    7300 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 1950 7400 1950
$Comp
L power:VCC #PWR041
U 1 1 60EB1B37
P 7700 1050
F 0 "#PWR041" H 7700 900 50  0001 C CNN
F 1 "VCC" H 7715 1223 50  0000 C CNN
F 2 "" H 7700 1050 50  0001 C CNN
F 3 "" H 7700 1050 50  0001 C CNN
	1    7700 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 1050 7700 1100
Wire Wire Line
	7700 1100 7750 1100
Text GLabel 6700 1050 0    50   Input ~ 0
ZC1
Wire Wire Line
	7150 1050 7150 1100
Wire Wire Line
	7150 1050 6700 1050
Connection ~ 7150 1050
Wire Wire Line
	7150 1000 7150 1050
$Comp
L Device:R R13
U 1 1 60EC4716
P 7150 850
F 0 "R13" H 7220 896 50  0000 L CNN
F 1 "1k" H 7220 805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7080 850 50  0001 C CNN
F 3 "~" H 7150 850 50  0001 C CNN
	1    7150 850 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR031
U 1 1 60EF4A23
P 7150 1500
F 0 "#PWR031" H 7150 1250 50  0001 C CNN
F 1 "GND" H 7155 1327 50  0000 C CNN
F 2 "" H 7150 1500 50  0001 C CNN
F 3 "" H 7150 1500 50  0001 C CNN
	1    7150 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R23
U 1 1 60EC587D
P 7600 1300
F 0 "R23" V 7393 1300 50  0000 C CNN
F 1 "1k" V 7484 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7530 1300 50  0001 C CNN
F 3 "~" H 7600 1300 50  0001 C CNN
	1    7600 1300
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC846 Q2
U 1 1 60EC1970
P 7250 1300
F 0 "Q2" H 7441 1346 50  0000 L CNN
F 1 "BC846" H 7441 1255 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7450 1225 50  0001 L CIN
F 3 "https://assets.nexperia.com/documents/data-sheet/BC846_SER.pdf" H 7250 1300 50  0001 L CNN
	1    7250 1300
	-1   0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR030
U 1 1 60FD5890
P 7150 700
F 0 "#PWR030" H 7150 550 50  0001 C CNN
F 1 "+3V3" H 7165 873 50  0000 C CNN
F 2 "" H 7150 700 50  0001 C CNN
F 3 "" H 7150 700 50  0001 C CNN
	1    7150 700 
	1    0    0    -1  
$EndComp
$Comp
L Relay_SolidState:MOC3043M U7
U 1 1 60FDAF71
P 8050 2950
F 0 "U7" H 8050 3275 50  0000 C CNN
F 1 "MOC3043M" H 8050 3184 50  0000 C CNN
F 2 "Package_DIP:DIP-6_W8.89mm_SMDSocket_LongPads" H 7850 2750 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/MOC3043M-D.pdf" H 8050 2950 50  0001 L CNN
	1    8050 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR038
U 1 1 60FDAF77
P 7350 3050
F 0 "#PWR038" H 7350 2800 50  0001 C CNN
F 1 "GND" H 7355 2877 50  0000 C CNN
F 2 "" H 7350 3050 50  0001 C CNN
F 3 "" H 7350 3050 50  0001 C CNN
	1    7350 3050
	0    1    1    0   
$EndComp
Text GLabel 7250 3350 0    50   Input ~ 0
CH2
$Comp
L Transistor_BJT:BC846 Q4
U 1 1 60FDAF7E
P 7550 3150
F 0 "Q4" V 7550 3300 50  0000 L CNN
F 1 "BC846" V 7450 3300 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7750 3075 50  0001 L CIN
F 3 "https://assets.nexperia.com/documents/data-sheet/BC846_SER.pdf" H 7550 3150 50  0001 L CNN
	1    7550 3150
	0    1    -1   0   
$EndComp
$Comp
L Device:R R15
U 1 1 60FDAF84
P 7400 3350
F 0 "R15" V 7300 3350 50  0000 C CNN
F 1 "1k" V 7400 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7330 3350 50  0001 C CNN
F 3 "~" H 7400 3350 50  0001 C CNN
	1    7400 3350
	0    1    1    0   
$EndComp
$Comp
L Device:R R19
U 1 1 60FDAF8A
P 7550 2850
F 0 "R19" V 7343 2850 50  0000 C CNN
F 1 "max 360" V 7434 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7480 2850 50  0001 C CNN
F 3 "~" H 7550 2850 50  0001 C CNN
	1    7550 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	7700 2850 7750 2850
$Comp
L power:VCC #PWR035
U 1 1 60FDAF91
P 7300 2850
F 0 "#PWR035" H 7300 2700 50  0001 C CNN
F 1 "VCC" H 7315 3023 50  0000 C CNN
F 2 "" H 7300 2850 50  0001 C CNN
F 3 "" H 7300 2850 50  0001 C CNN
	1    7300 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 2850 7400 2850
Wire Wire Line
	8350 2150 8700 2150
Wire Wire Line
	8700 2150 8950 2150
Connection ~ 8700 2150
Wire Wire Line
	8500 1950 8350 1950
Wire Wire Line
	8800 1650 9100 1650
Wire Wire Line
	9100 1650 9700 1650
Wire Wire Line
	9700 1650 9700 1700
Connection ~ 9100 1650
Wire Wire Line
	9700 2400 9700 2450
Wire Wire Line
	9700 2450 9100 2450
Connection ~ 9100 2450
Wire Wire Line
	9100 2450 8700 2450
Wire Wire Line
	10000 1650 9700 1650
Connection ~ 9700 1650
$Comp
L Device:R R35
U 1 1 610ABB0F
P 9700 2750
F 0 "R35" H 9770 2796 50  0000 L CNN
F 1 "68" H 9770 2705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9630 2750 50  0001 C CNN
F 3 "~" H 9700 2750 50  0001 C CNN
	1    9700 2750
	1    0    0    -1  
$EndComp
$Comp
L Triac_Thyristor:BT136-500 Q8
U 1 1 610ABB15
P 9100 2950
F 0 "Q8" H 9228 2996 50  0000 L CNN
F 1 "BT136-500" H 9228 2905 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 9300 2875 50  0001 L CIN
F 3 "http://www.micropik.com/PDF/BT136-600.pdf" H 9100 2950 50  0001 L CNN
	1    9100 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R26
U 1 1 610ABB1B
P 8650 2850
F 0 "R26" V 8443 2850 50  0000 C CNN
F 1 "360" V 8534 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8580 2850 50  0001 C CNN
F 3 "~" H 8650 2850 50  0001 C CNN
	1    8650 2850
	0    1    1    0   
$EndComp
$Comp
L Device:C C15
U 1 1 610ABB21
P 9700 3150
F 0 "C15" H 9815 3196 50  0000 L CNN
F 1 "10n" H 9815 3105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 9738 3000 50  0001 C CNN
F 3 "~" H 9700 3150 50  0001 C CNN
	1    9700 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R30
U 1 1 610ABB27
P 8700 3200
F 0 "R30" H 8630 3154 50  0000 R CNN
F 1 "330" H 8630 3245 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8630 3200 50  0001 C CNN
F 3 "~" H 8700 3200 50  0001 C CNN
	1    8700 3200
	-1   0    0    1   
$EndComp
Wire Wire Line
	9100 3100 9100 3350
Wire Wire Line
	8800 2850 8800 2550
Wire Wire Line
	9100 2800 9100 2550
Wire Wire Line
	9700 2900 9700 3000
Wire Wire Line
	8350 3050 8700 3050
Wire Wire Line
	8700 3050 8950 3050
Connection ~ 8700 3050
Wire Wire Line
	8500 2850 8350 2850
Wire Wire Line
	8800 2550 9100 2550
Wire Wire Line
	9100 2550 9700 2550
Wire Wire Line
	9700 2550 9700 2600
Connection ~ 9100 2550
Wire Wire Line
	9700 3300 9700 3350
Wire Wire Line
	9700 3350 9100 3350
Connection ~ 9100 3350
Wire Wire Line
	9100 3350 8700 3350
Wire Wire Line
	10000 2550 9700 2550
Connection ~ 9700 2550
Wire Wire Line
	10000 1650 10000 2550
Wire Wire Line
	9700 2450 10500 2450
Connection ~ 9700 2450
Connection ~ 10500 2450
Wire Wire Line
	9700 3350 10500 3350
Wire Wire Line
	10500 3350 10500 3250
Connection ~ 9700 3350
Connection ~ 10500 3250
$Comp
L Relay_SolidState:MOC3043M U9
U 1 1 611A9E4C
P 8050 5100
F 0 "U9" H 8050 5425 50  0000 C CNN
F 1 "MOC3043M" H 8050 5334 50  0000 C CNN
F 2 "Package_DIP:DIP-6_W8.89mm_SMDSocket_LongPads" H 7850 4900 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/MOC3043M-D.pdf" H 8050 5100 50  0001 L CNN
	1    8050 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R36
U 1 1 611A9E53
P 9700 4900
F 0 "R36" H 9770 4946 50  0000 L CNN
F 1 "68" H 9770 4855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9630 4900 50  0001 C CNN
F 3 "~" H 9700 4900 50  0001 C CNN
	1    9700 4900
	1    0    0    -1  
$EndComp
$Comp
L Triac_Thyristor:BT136-500 Q9
U 1 1 611A9E59
P 9100 5100
F 0 "Q9" H 9228 5146 50  0000 L CNN
F 1 "BT136-500" H 9228 5055 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 9300 5025 50  0001 L CIN
F 3 "http://www.micropik.com/PDF/BT136-600.pdf" H 9100 5100 50  0001 L CNN
	1    9100 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R27
U 1 1 611A9E5F
P 8650 5000
F 0 "R27" V 8443 5000 50  0000 C CNN
F 1 "360" V 8534 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8580 5000 50  0001 C CNN
F 3 "~" H 8650 5000 50  0001 C CNN
	1    8650 5000
	0    1    1    0   
$EndComp
$Comp
L Device:C C17
U 1 1 611A9E65
P 9700 5300
F 0 "C17" H 9815 5346 50  0000 L CNN
F 1 "10n" H 9815 5255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 9738 5150 50  0001 C CNN
F 3 "~" H 9700 5300 50  0001 C CNN
	1    9700 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R31
U 1 1 611A9E6B
P 8700 5350
F 0 "R31" H 8630 5304 50  0000 R CNN
F 1 "330" H 8630 5395 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8630 5350 50  0001 C CNN
F 3 "~" H 8700 5350 50  0001 C CNN
	1    8700 5350
	-1   0    0    1   
$EndComp
Wire Wire Line
	9100 5250 9100 5500
Wire Wire Line
	8800 5000 8800 4700
Wire Wire Line
	9100 4950 9100 4700
Wire Wire Line
	9700 5050 9700 5150
$Comp
L power:GND #PWR039
U 1 1 611A9E75
P 7350 5200
F 0 "#PWR039" H 7350 4950 50  0001 C CNN
F 1 "GND" H 7355 5027 50  0000 C CNN
F 2 "" H 7350 5200 50  0001 C CNN
F 3 "" H 7350 5200 50  0001 C CNN
	1    7350 5200
	0    1    1    0   
$EndComp
Text GLabel 7250 5500 0    50   Input ~ 0
CH3
$Comp
L Transistor_BJT:BC846 Q5
U 1 1 611A9E7C
P 7550 5300
F 0 "Q5" V 7550 5450 50  0000 L CNN
F 1 "BC846" V 7450 5450 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7750 5225 50  0001 L CIN
F 3 "https://assets.nexperia.com/documents/data-sheet/BC846_SER.pdf" H 7550 5300 50  0001 L CNN
	1    7550 5300
	0    1    -1   0   
$EndComp
$Comp
L Device:R R17
U 1 1 611A9E82
P 7400 5500
F 0 "R17" V 7300 5500 50  0000 C CNN
F 1 "1k" V 7400 5500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7330 5500 50  0001 C CNN
F 3 "~" H 7400 5500 50  0001 C CNN
	1    7400 5500
	0    1    1    0   
$EndComp
Wire Wire Line
	10500 6300 10600 6300
Wire Wire Line
	10500 5500 10600 5500
$Comp
L XT_V1-rescue:TBL009-500-02GY-2GY-KiCAD_personalized J10
U 1 1 611A9E92
P 10600 5500
F 0 "J10" V 10954 5628 50  0000 L CNN
F 1 "TBL009-500-02GY-2GY" V 10550 5050 50  0000 L CNN
F 2 "KiCAD_personal:TBL00950002GY2GY" H 11250 5600 50  0001 L CNN
F 3 "https://www.cuidevices.com/product/resource/tbl009-500.pdf" H 11250 5500 50  0001 L CNN
F 4 "Conn Terminal Block 2 POS 5mm Solder RA Thru-Hole 10A/Contact" H 11250 5400 50  0001 L CNN "Description"
F 5 "13" H 11250 5300 50  0001 L CNN "Height"
F 6 "CUI Inc." H 11250 5200 50  0001 L CNN "Manufacturer_Name"
F 7 "TBL009-500-02GY-2GY" H 11250 5100 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "490-TBL00950002GY2GY" H 11250 5000 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/CUI-Devices/TBL009-500-02GY-2GY?qs=UXgszm6BlbHpkCnXmCRUvg%3D%3D" H 11250 4900 50  0001 L CNN "Mouser Price/Stock"
F 10 "TBL009-500-02GY-2GY" H 11250 4800 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/tbl009-500-02gy-2gy/cui-devices?region=nac" H 11250 4700 50  0001 L CNN "Arrow Price/Stock"
	1    10600 5500
	0    1    1    0   
$EndComp
Wire Wire Line
	10500 4900 10600 4900
Wire Wire Line
	10500 4100 10600 4100
$Comp
L XT_V1-rescue:TBL009-500-02GY-2GY-KiCAD_personalized J9
U 1 1 611A9EA2
P 10500 4900
F 0 "J9" V 10854 5028 50  0000 L CNN
F 1 "TBL009-500-02GY-2GY" V 10450 4450 50  0000 L CNN
F 2 "KiCAD_personal:TBL00950002GY2GY" H 11150 5000 50  0001 L CNN
F 3 "https://www.cuidevices.com/product/resource/tbl009-500.pdf" H 11150 4900 50  0001 L CNN
F 4 "Conn Terminal Block 2 POS 5mm Solder RA Thru-Hole 10A/Contact" H 11150 4800 50  0001 L CNN "Description"
F 5 "13" H 11150 4700 50  0001 L CNN "Height"
F 6 "CUI Inc." H 11150 4600 50  0001 L CNN "Manufacturer_Name"
F 7 "TBL009-500-02GY-2GY" H 11150 4500 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "490-TBL00950002GY2GY" H 11150 4400 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/CUI-Devices/TBL009-500-02GY-2GY?qs=UXgszm6BlbHpkCnXmCRUvg%3D%3D" H 11150 4300 50  0001 L CNN "Mouser Price/Stock"
F 10 "TBL009-500-02GY-2GY" H 11150 4200 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/tbl009-500-02gy-2gy/cui-devices?region=nac" H 11150 4100 50  0001 L CNN "Arrow Price/Stock"
	1    10500 4900
	0    -1   -1   0   
$EndComp
Text Notes 10850 4550 0    50   ~ 0
AC 1
$Comp
L Isolator:TLP291 U8
U 1 1 611A9EA9
P 8050 4250
F 0 "U8" H 8050 4575 50  0000 C CNN
F 1 "TLP291" H 8050 4484 50  0000 C CNN
F 2 "Package_SO:SOIC-4_4.55x2.6mm_P1.27mm" H 7850 4050 50  0001 L CIN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=12884&prodName=TLP291" H 8050 4250 50  0001 L CNN
	1    8050 4250
	-1   0    0    -1  
$EndComp
$Comp
L Diode:SM4007 D2
U 1 1 611A9EAF
P 8550 4250
F 0 "D2" V 8504 4330 50  0000 L CNN
F 1 "SM4007" V 8595 4330 50  0000 L CNN
F 2 "Diode_SMD:D_MELF" H 8550 4075 50  0001 C CNN
F 3 "http://cdn-reichelt.de/documents/datenblatt/A400/SMD1N400%23DIO.pdf" H 8550 4250 50  0001 C CNN
	1    8550 4250
	0    1    1    0   
$EndComp
$Comp
L Device:R R34
U 1 1 611A9EB5
P 8850 4100
F 0 "R34" V 8643 4100 50  0000 C CNN
F 1 "56k" V 8734 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_MELF_MMB-0207" V 8780 4100 50  0001 C CNN
F 3 "~" H 8850 4100 50  0001 C CNN
	1    8850 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	8700 4100 8550 4100
Wire Wire Line
	8450 4100 8450 4150
Wire Wire Line
	8450 4150 8350 4150
Connection ~ 8550 4100
Wire Wire Line
	8550 4100 8450 4100
Wire Wire Line
	8350 4350 8450 4350
Wire Wire Line
	8450 4350 8450 4400
Wire Wire Line
	8450 4400 8550 4400
Connection ~ 10500 4100
Wire Wire Line
	8550 4400 10050 4400
Wire Wire Line
	10050 4900 10500 4900
Connection ~ 8550 4400
Connection ~ 10500 4900
Wire Wire Line
	10050 4400 10050 4700
$Comp
L Device:R R20
U 1 1 611A9ECA
P 7550 5000
F 0 "R20" V 7343 5000 50  0000 C CNN
F 1 "max 360" V 7434 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7480 5000 50  0001 C CNN
F 3 "~" H 7550 5000 50  0001 C CNN
	1    7550 5000
	0    1    1    0   
$EndComp
Wire Wire Line
	7700 5000 7750 5000
$Comp
L power:VCC #PWR036
U 1 1 611A9ED1
P 7300 5000
F 0 "#PWR036" H 7300 4850 50  0001 C CNN
F 1 "VCC" H 7315 5173 50  0000 C CNN
F 2 "" H 7300 5000 50  0001 C CNN
F 3 "" H 7300 5000 50  0001 C CNN
	1    7300 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 5000 7400 5000
$Comp
L power:VCC #PWR042
U 1 1 611A9ED8
P 7700 4100
F 0 "#PWR042" H 7700 3950 50  0001 C CNN
F 1 "VCC" H 7715 4273 50  0000 C CNN
F 2 "" H 7700 4100 50  0001 C CNN
F 3 "" H 7700 4100 50  0001 C CNN
	1    7700 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 4100 7700 4150
Wire Wire Line
	7700 4150 7750 4150
Text GLabel 6700 4100 0    50   Input ~ 0
ZC2
Wire Wire Line
	7150 4100 7150 4150
Wire Wire Line
	7150 4100 6700 4100
Connection ~ 7150 4100
Wire Wire Line
	7150 4050 7150 4100
$Comp
L Device:R R14
U 1 1 611A9EE5
P 7150 3900
F 0 "R14" H 7220 3946 50  0000 L CNN
F 1 "1k" H 7220 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7080 3900 50  0001 C CNN
F 3 "~" H 7150 3900 50  0001 C CNN
	1    7150 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR034
U 1 1 611A9EEB
P 7150 4550
F 0 "#PWR034" H 7150 4300 50  0001 C CNN
F 1 "GND" H 7155 4377 50  0000 C CNN
F 2 "" H 7150 4550 50  0001 C CNN
F 3 "" H 7150 4550 50  0001 C CNN
	1    7150 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R24
U 1 1 611A9EF1
P 7600 4350
F 0 "R24" V 7393 4350 50  0000 C CNN
F 1 "1k" V 7484 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7530 4350 50  0001 C CNN
F 3 "~" H 7600 4350 50  0001 C CNN
	1    7600 4350
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC846 Q3
U 1 1 611A9EF7
P 7250 4350
F 0 "Q3" H 7441 4396 50  0000 L CNN
F 1 "BC846" H 7441 4305 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7450 4275 50  0001 L CIN
F 3 "https://assets.nexperia.com/documents/data-sheet/BC846_SER.pdf" H 7250 4350 50  0001 L CNN
	1    7250 4350
	-1   0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR032
U 1 1 611A9EFD
P 7150 3750
F 0 "#PWR032" H 7150 3600 50  0001 C CNN
F 1 "+3V3" H 7165 3923 50  0000 C CNN
F 2 "" H 7150 3750 50  0001 C CNN
F 3 "" H 7150 3750 50  0001 C CNN
	1    7150 3750
	1    0    0    -1  
$EndComp
$Comp
L Relay_SolidState:MOC3043M U10
U 1 1 611A9F03
P 8050 6000
F 0 "U10" H 8050 6325 50  0000 C CNN
F 1 "MOC3043M" H 8050 6234 50  0000 C CNN
F 2 "Package_DIP:DIP-6_W8.89mm_SMDSocket_LongPads" H 7850 5800 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/MOC3043M-D.pdf" H 8050 6000 50  0001 L CNN
	1    8050 6000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR040
U 1 1 611A9F09
P 7350 6100
F 0 "#PWR040" H 7350 5850 50  0001 C CNN
F 1 "GND" H 7355 5927 50  0000 C CNN
F 2 "" H 7350 6100 50  0001 C CNN
F 3 "" H 7350 6100 50  0001 C CNN
	1    7350 6100
	0    1    1    0   
$EndComp
Text GLabel 7250 6400 0    50   Input ~ 0
CH4
$Comp
L Transistor_BJT:BC846 Q7
U 1 1 611A9F10
P 7550 6200
F 0 "Q7" V 7550 6350 50  0000 L CNN
F 1 "BC846" V 7450 6350 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7750 6125 50  0001 L CIN
F 3 "https://assets.nexperia.com/documents/data-sheet/BC846_SER.pdf" H 7550 6200 50  0001 L CNN
	1    7550 6200
	0    1    -1   0   
$EndComp
$Comp
L Device:R R18
U 1 1 611A9F16
P 7400 6400
F 0 "R18" V 7300 6400 50  0000 C CNN
F 1 "1k" V 7400 6400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7330 6400 50  0001 C CNN
F 3 "~" H 7400 6400 50  0001 C CNN
	1    7400 6400
	0    1    1    0   
$EndComp
$Comp
L Device:R R22
U 1 1 611A9F1C
P 7550 5900
F 0 "R22" V 7343 5900 50  0000 C CNN
F 1 "max 360" V 7434 5900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7480 5900 50  0001 C CNN
F 3 "~" H 7550 5900 50  0001 C CNN
	1    7550 5900
	0    1    1    0   
$EndComp
Wire Wire Line
	7700 5900 7750 5900
$Comp
L power:VCC #PWR037
U 1 1 611A9F23
P 7300 5900
F 0 "#PWR037" H 7300 5750 50  0001 C CNN
F 1 "VCC" H 7315 6073 50  0000 C CNN
F 2 "" H 7300 5900 50  0001 C CNN
F 3 "" H 7300 5900 50  0001 C CNN
	1    7300 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 5900 7400 5900
Wire Wire Line
	8350 5200 8700 5200
Wire Wire Line
	8700 5200 8950 5200
Connection ~ 8700 5200
Wire Wire Line
	8500 5000 8350 5000
Wire Wire Line
	8800 4700 9100 4700
Wire Wire Line
	9100 4700 9700 4700
Wire Wire Line
	9700 4700 9700 4750
Connection ~ 9100 4700
Wire Wire Line
	9700 5450 9700 5500
Wire Wire Line
	9700 5500 9100 5500
Connection ~ 9100 5500
Wire Wire Line
	9100 5500 8700 5500
Wire Wire Line
	10000 4700 9700 4700
Connection ~ 9700 4700
$Comp
L Device:R R37
U 1 1 611A9F3B
P 9700 5800
F 0 "R37" H 9770 5846 50  0000 L CNN
F 1 "68" H 9770 5755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9630 5800 50  0001 C CNN
F 3 "~" H 9700 5800 50  0001 C CNN
	1    9700 5800
	1    0    0    -1  
$EndComp
$Comp
L Triac_Thyristor:BT136-500 Q10
U 1 1 611A9F41
P 9100 6000
F 0 "Q10" H 9228 6046 50  0000 L CNN
F 1 "BT136-500" H 9228 5955 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 9300 5925 50  0001 L CIN
F 3 "http://www.micropik.com/PDF/BT136-600.pdf" H 9100 6000 50  0001 L CNN
	1    9100 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R28
U 1 1 611A9F47
P 8650 5900
F 0 "R28" V 8443 5900 50  0000 C CNN
F 1 "360" V 8534 5900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8580 5900 50  0001 C CNN
F 3 "~" H 8650 5900 50  0001 C CNN
	1    8650 5900
	0    1    1    0   
$EndComp
$Comp
L Device:C C18
U 1 1 611A9F4D
P 9700 6200
F 0 "C18" H 9815 6246 50  0000 L CNN
F 1 "10n" H 9815 6155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 9738 6050 50  0001 C CNN
F 3 "~" H 9700 6200 50  0001 C CNN
	1    9700 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R32
U 1 1 611A9F53
P 8700 6250
F 0 "R32" H 8630 6204 50  0000 R CNN
F 1 "330" H 8630 6295 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8630 6250 50  0001 C CNN
F 3 "~" H 8700 6250 50  0001 C CNN
	1    8700 6250
	-1   0    0    1   
$EndComp
Wire Wire Line
	9100 6150 9100 6400
Wire Wire Line
	8800 5900 8800 5600
Wire Wire Line
	9100 5850 9100 5600
Wire Wire Line
	9700 5950 9700 6050
Wire Wire Line
	8350 6100 8700 6100
Wire Wire Line
	8700 6100 8950 6100
Connection ~ 8700 6100
Wire Wire Line
	8500 5900 8350 5900
Wire Wire Line
	8800 5600 9100 5600
Wire Wire Line
	9100 5600 9700 5600
Wire Wire Line
	9700 5600 9700 5650
Connection ~ 9100 5600
Wire Wire Line
	9700 6350 9700 6400
Wire Wire Line
	9700 6400 9100 6400
Connection ~ 9100 6400
Wire Wire Line
	9100 6400 8700 6400
Wire Wire Line
	10000 5600 9700 5600
Connection ~ 9700 5600
Wire Wire Line
	10000 4700 10000 5600
Wire Wire Line
	9700 5500 10500 5500
Connection ~ 9700 5500
Connection ~ 10500 5500
Wire Wire Line
	9700 6400 10500 6400
Wire Wire Line
	10500 6400 10500 6300
Connection ~ 9700 6400
Connection ~ 10500 6300
Wire Notes Line
	8050 6150 8050 6550
Wire Notes Line
	8050 5600 8050 5250
Wire Notes Line
	8050 4750 8050 4400
Wire Notes Line
	8050 3900 8050 3100
Wire Notes Line
	8050 2600 8050 2200
Wire Notes Line
	8050 1700 8050 1350
Wire Notes Line
	8050 850  8050 500 
Wire Notes Line
	8050 3600 11200 3600
Text GLabel 4200 3950 2    50   Input ~ 0
ZC1
Text GLabel 4200 4250 2    50   Input ~ 0
ZC2
Wire Wire Line
	4200 3950 4050 3950
Wire Wire Line
	4050 4250 4200 4250
Wire Wire Line
	4050 4050 4450 4050
Wire Wire Line
	4050 4150 4450 4150
Wire Wire Line
	10000 1650 10050 1650
Connection ~ 10000 1650
Connection ~ 10050 1650
Wire Wire Line
	10050 1650 10050 1850
Wire Wire Line
	9000 4100 10500 4100
Wire Wire Line
	10000 4700 10050 4700
Connection ~ 10000 4700
Connection ~ 10050 4700
Wire Wire Line
	10050 4700 10050 4900
Connection ~ 10500 1850
Connection ~ 10500 1050
Wire Wire Line
	10500 1050 10600 1050
Wire Wire Line
	10050 1850 10500 1850
Wire Wire Line
	10500 1850 10600 1850
Wire Wire Line
	9000 1050 10500 1050
$Comp
L XT_V1-rescue:TBL009-500-02GY-2GY-KiCAD_personalized J7
U 1 1 60CB663B
P 10500 1850
F 0 "J7" V 10854 1978 50  0000 L CNN
F 1 "TBL009-500-02GY-2GY" V 10450 1400 50  0000 L CNN
F 2 "KiCAD_personal:TBL00950002GY2GY" H 11150 1950 50  0001 L CNN
F 3 "https://www.cuidevices.com/product/resource/tbl009-500.pdf" H 11150 1850 50  0001 L CNN
F 4 "Conn Terminal Block 2 POS 5mm Solder RA Thru-Hole 10A/Contact" H 11150 1750 50  0001 L CNN "Description"
F 5 "13" H 11150 1650 50  0001 L CNN "Height"
F 6 "CUI Inc." H 11150 1550 50  0001 L CNN "Manufacturer_Name"
F 7 "TBL009-500-02GY-2GY" H 11150 1450 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "490-TBL00950002GY2GY" H 11150 1350 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/CUI-Devices/TBL009-500-02GY-2GY?qs=UXgszm6BlbHpkCnXmCRUvg%3D%3D" H 11150 1250 50  0001 L CNN "Mouser Price/Stock"
F 10 "TBL009-500-02GY-2GY" H 11150 1150 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/tbl009-500-02gy-2gy/cui-devices?region=nac" H 11150 1050 50  0001 L CNN "Arrow Price/Stock"
	1    10500 1850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4050 2950 4850 2950
Wire Wire Line
	4050 3050 5100 3050
Wire Wire Line
	4050 3150 5350 3150
Wire Wire Line
	4050 3250 5600 3250
Wire Wire Line
	4050 3350 5850 3350
NoConn ~ 4050 3850
NoConn ~ 4050 3750
Text Notes 4400 3600 0    50   ~ 0
Tim1_Ch1\n
Text Notes 4400 3700 0    50   ~ 0
Tim1_Ch2
Text Notes 4400 2900 0    50   ~ 0
Tim2_Ch2
Text Notes 4400 2800 0    50   ~ 0
Tim2_Ch1
$EndSCHEMATC

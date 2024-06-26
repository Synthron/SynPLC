EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
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
L ITS4880R:ITS4880R IC1
U 1 1 60CC7886
P 11150 2250
F 0 "IC1" H 11150 3516 50  0000 C CNN
F 1 "ITS4880R" H 11150 3425 50  0000 C CNN
F 2 "KiCAD_Additional_Parts:PG-DSO-36" H 11150 2250 50  0001 L BNN
F 3 "" H 11150 2250 50  0001 L BNN
F 4 "58M7534" H 11150 2250 50  0001 L BNN "OC_NEWARK"
F 5 "ITS4880R" H 11150 2250 50  0001 L BNN "MPN"
F 6 "" H 11150 2250 50  0001 L BNN "MF"
F 7 "1440818" H 11150 2250 50  0001 L BNN "OC_FARNELL"
	1    11150 2250
	1    0    0    -1  
$EndComp
$Comp
L MCU_ST_STM32F1:STM32F103C8Tx U3
U 1 1 60CCA6E4
P 2850 3300
F 0 "U3" H 2300 1850 50  0000 C CNN
F 1 "STM32F103C8Tx" H 3300 1850 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 2250 1900 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00161566.pdf" H 2850 3300 50  0001 C CNN
	1    2850 3300
	1    0    0    -1  
$EndComp
$Comp
L Isolator:TLP291-4 U5
U 1 1 60CD0CE0
P 7400 1000
F 0 "U5" H 7400 1325 50  0000 C CNN
F 1 "TLP291-4" H 7400 1234 50  0000 C CNN
F 2 "Package_SO:SOIC-16_4.55x10.3mm_P1.27mm" H 7200 800 50  0001 L CIN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=12858&prodName=TLP291-4" H 7400 1000 50  0001 L CNN
	1    7400 1000
	1    0    0    -1  
$EndComp
$Comp
L Isolator:TLP291-4 U5
U 2 1 60CD3CE1
P 7400 1650
F 0 "U5" H 7400 1975 50  0000 C CNN
F 1 "TLP291-4" H 7400 1884 50  0000 C CNN
F 2 "Package_SO:SOIC-16_4.55x10.3mm_P1.27mm" H 7200 1450 50  0001 L CIN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=12858&prodName=TLP291-4" H 7400 1650 50  0001 L CNN
	2    7400 1650
	1    0    0    -1  
$EndComp
$Comp
L Isolator:TLP291-4 U5
U 3 1 60CD4A1C
P 7400 2300
F 0 "U5" H 7400 2625 50  0000 C CNN
F 1 "TLP291-4" H 7400 2534 50  0000 C CNN
F 2 "Package_SO:SOIC-16_4.55x10.3mm_P1.27mm" H 7200 2100 50  0001 L CIN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=12858&prodName=TLP291-4" H 7400 2300 50  0001 L CNN
	3    7400 2300
	1    0    0    -1  
$EndComp
$Comp
L Isolator:TLP291-4 U5
U 4 1 60CD591E
P 7400 2950
F 0 "U5" H 7400 3275 50  0000 C CNN
F 1 "TLP291-4" H 7400 3184 50  0000 C CNN
F 2 "Package_SO:SOIC-16_4.55x10.3mm_P1.27mm" H 7200 2750 50  0001 L CIN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=12858&prodName=TLP291-4" H 7400 2950 50  0001 L CNN
	4    7400 2950
	1    0    0    -1  
$EndComp
$Comp
L Isolator:TLP291-4 U6
U 1 1 60CE3001
P 7400 3600
F 0 "U6" H 7400 3925 50  0000 C CNN
F 1 "TLP291-4" H 7400 3834 50  0000 C CNN
F 2 "Package_SO:SOIC-16_4.55x10.3mm_P1.27mm" H 7200 3400 50  0001 L CIN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=12858&prodName=TLP291-4" H 7400 3600 50  0001 L CNN
	1    7400 3600
	1    0    0    -1  
$EndComp
$Comp
L Isolator:TLP291-4 U6
U 2 1 60CE3007
P 7400 4250
F 0 "U6" H 7400 4575 50  0000 C CNN
F 1 "TLP291-4" H 7400 4484 50  0000 C CNN
F 2 "Package_SO:SOIC-16_4.55x10.3mm_P1.27mm" H 7200 4050 50  0001 L CIN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=12858&prodName=TLP291-4" H 7400 4250 50  0001 L CNN
	2    7400 4250
	1    0    0    -1  
$EndComp
$Comp
L Isolator:TLP291-4 U6
U 3 1 60CE300D
P 7400 4900
F 0 "U6" H 7400 5225 50  0000 C CNN
F 1 "TLP291-4" H 7400 5134 50  0000 C CNN
F 2 "Package_SO:SOIC-16_4.55x10.3mm_P1.27mm" H 7200 4700 50  0001 L CIN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=12858&prodName=TLP291-4" H 7400 4900 50  0001 L CNN
	3    7400 4900
	1    0    0    -1  
$EndComp
$Comp
L Isolator:TLP291-4 U6
U 4 1 60CE3013
P 7400 5550
F 0 "U6" H 7400 5875 50  0000 C CNN
F 1 "TLP291-4" H 7400 5784 50  0000 C CNN
F 2 "Package_SO:SOIC-16_4.55x10.3mm_P1.27mm" H 7200 5350 50  0001 L CIN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=12858&prodName=TLP291-4" H 7400 5550 50  0001 L CNN
	4    7400 5550
	1    0    0    -1  
$EndComp
$Comp
L Isolator:TLP291-4 U8
U 1 1 60D0640B
P 14000 6350
F 0 "U8" H 14000 6675 50  0000 C CNN
F 1 "TLP291-4" H 14000 6584 50  0000 C CNN
F 2 "Package_SO:SOIC-16_4.55x10.3mm_P1.27mm" H 13800 6150 50  0001 L CIN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=12858&prodName=TLP291-4" H 14000 6350 50  0001 L CNN
	1    14000 6350
	0    1    1    0   
$EndComp
$Comp
L Isolator:TLP291-4 U8
U 2 1 60D06411
P 13450 6350
F 0 "U8" H 13450 6675 50  0000 C CNN
F 1 "TLP291-4" H 13450 6584 50  0000 C CNN
F 2 "Package_SO:SOIC-16_4.55x10.3mm_P1.27mm" H 13250 6150 50  0001 L CIN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=12858&prodName=TLP291-4" H 13450 6350 50  0001 L CNN
	2    13450 6350
	0    1    1    0   
$EndComp
$Comp
L Isolator:TLP291-4 U8
U 3 1 60D06417
P 12900 6350
F 0 "U8" H 12900 6675 50  0000 C CNN
F 1 "TLP291-4" H 12900 6584 50  0000 C CNN
F 2 "Package_SO:SOIC-16_4.55x10.3mm_P1.27mm" H 12700 6150 50  0001 L CIN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=12858&prodName=TLP291-4" H 12900 6350 50  0001 L CNN
	3    12900 6350
	0    1    1    0   
$EndComp
$Comp
L Isolator:TLP291-4 U8
U 4 1 60D0641D
P 12350 6350
F 0 "U8" H 12350 6675 50  0000 C CNN
F 1 "TLP291-4" H 12350 6584 50  0000 C CNN
F 2 "Package_SO:SOIC-16_4.55x10.3mm_P1.27mm" H 12150 6150 50  0001 L CIN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=12858&prodName=TLP291-4" H 12350 6350 50  0001 L CNN
	4    12350 6350
	0    1    1    0   
$EndComp
$Comp
L Isolator:TLP291-4 U7
U 1 1 60D06423
P 11800 6350
F 0 "U7" H 11800 6675 50  0000 C CNN
F 1 "TLP291-4" H 11800 6584 50  0000 C CNN
F 2 "Package_SO:SOIC-16_4.55x10.3mm_P1.27mm" H 11600 6150 50  0001 L CIN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=12858&prodName=TLP291-4" H 11800 6350 50  0001 L CNN
	1    11800 6350
	0    1    1    0   
$EndComp
$Comp
L Isolator:TLP291-4 U7
U 2 1 60D06429
P 11250 6350
F 0 "U7" H 11250 6675 50  0000 C CNN
F 1 "TLP291-4" H 11250 6584 50  0000 C CNN
F 2 "Package_SO:SOIC-16_4.55x10.3mm_P1.27mm" H 11050 6150 50  0001 L CIN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=12858&prodName=TLP291-4" H 11250 6350 50  0001 L CNN
	2    11250 6350
	0    1    1    0   
$EndComp
$Comp
L Isolator:TLP291-4 U7
U 3 1 60D0642F
P 10700 6350
F 0 "U7" H 10700 6675 50  0000 C CNN
F 1 "TLP291-4" H 10700 6584 50  0000 C CNN
F 2 "Package_SO:SOIC-16_4.55x10.3mm_P1.27mm" H 10500 6150 50  0001 L CIN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=12858&prodName=TLP291-4" H 10700 6350 50  0001 L CNN
	3    10700 6350
	0    1    1    0   
$EndComp
$Comp
L Isolator:TLP291-4 U7
U 4 1 60D06435
P 10150 6350
F 0 "U7" H 10150 6675 50  0000 C CNN
F 1 "TLP291-4" H 10150 6584 50  0000 C CNN
F 2 "Package_SO:SOIC-16_4.55x10.3mm_P1.27mm" H 9950 6150 50  0001 L CIN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=12858&prodName=TLP291-4" H 10150 6350 50  0001 L CNN
	4    10150 6350
	0    1    1    0   
$EndComp
$Comp
L Diode:SM6T36A D5
U 1 1 60D11120
P 11900 3300
F 0 "D5" V 11800 3450 50  0000 L CNN
F 1 "SM6T36A" H 11750 3400 50  0000 L CNN
F 2 "Diode_SMD:D_SMB" H 11900 3100 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/sm6t.pdf" H 11850 3300 50  0001 C CNN
	1    11900 3300
	0    1    1    0   
$EndComp
$Comp
L Diode:SM6T36A D6
U 1 1 60D1AFD5
P 12200 3300
F 0 "D6" V 12100 3450 50  0000 L CNN
F 1 "SM6T36A" H 12050 3400 50  0000 L CNN
F 2 "Diode_SMD:D_SMB" H 12200 3100 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/sm6t.pdf" H 12150 3300 50  0001 C CNN
	1    12200 3300
	0    1    1    0   
$EndComp
$Comp
L Diode:SM6T36A D8
U 1 1 60D213CD
P 12500 3300
F 0 "D8" V 12400 3450 50  0000 L CNN
F 1 "SM6T36A" H 12350 3400 50  0000 L CNN
F 2 "Diode_SMD:D_SMB" H 12500 3100 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/sm6t.pdf" H 12450 3300 50  0001 C CNN
	1    12500 3300
	0    1    1    0   
$EndComp
$Comp
L Diode:SM6T36A D9
U 1 1 60D213D3
P 12800 3300
F 0 "D9" V 12700 3450 50  0000 L CNN
F 1 "SM6T36A" H 12650 3400 50  0000 L CNN
F 2 "Diode_SMD:D_SMB" H 12800 3100 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/sm6t.pdf" H 12750 3300 50  0001 C CNN
	1    12800 3300
	0    1    1    0   
$EndComp
$Comp
L Diode:SM6T36A D11
U 1 1 60D2AFF9
P 13100 3300
F 0 "D11" V 13000 3450 50  0000 L CNN
F 1 "SM6T36A" H 12950 3400 50  0000 L CNN
F 2 "Diode_SMD:D_SMB" H 13100 3100 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/sm6t.pdf" H 13050 3300 50  0001 C CNN
	1    13100 3300
	0    1    1    0   
$EndComp
$Comp
L Diode:SM6T36A D13
U 1 1 60D2AFFF
P 13400 3300
F 0 "D13" V 13300 3450 50  0000 L CNN
F 1 "SM6T36A" H 13250 3400 50  0000 L CNN
F 2 "Diode_SMD:D_SMB" H 13400 3100 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/sm6t.pdf" H 13350 3300 50  0001 C CNN
	1    13400 3300
	0    1    1    0   
$EndComp
$Comp
L Diode:SM6T36A D14
U 1 1 60D2B005
P 13700 3300
F 0 "D14" V 13600 3450 50  0000 L CNN
F 1 "SM6T36A" H 13550 3400 50  0000 L CNN
F 2 "Diode_SMD:D_SMB" H 13700 3100 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/sm6t.pdf" H 13650 3300 50  0001 C CNN
	1    13700 3300
	0    1    1    0   
$EndComp
$Comp
L Diode:SM6T36A D16
U 1 1 60D2B00B
P 14000 3300
F 0 "D16" V 13900 3450 50  0000 L CNN
F 1 "SM6T36A" H 13850 3400 50  0000 L CNN
F 2 "Diode_SMD:D_SMB" H 14000 3100 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/sm6t.pdf" H 13950 3300 50  0001 C CNN
	1    14000 3300
	0    1    1    0   
$EndComp
NoConn ~ 11650 3250
Wire Wire Line
	11650 3050 11650 3000
Wire Wire Line
	11650 2850 11650 2800
Wire Wire Line
	11650 2650 11650 2600
Wire Wire Line
	11650 2450 11650 2400
Wire Wire Line
	11650 2250 11650 2200
Wire Wire Line
	11650 2050 11650 2000
Wire Wire Line
	11650 1850 11650 1800
Wire Wire Line
	11650 1650 11650 1600
Wire Wire Line
	11650 3000 14000 3000
Wire Wire Line
	14000 3000 14000 3100
Connection ~ 11650 3000
Wire Wire Line
	11650 3000 11650 2950
Wire Wire Line
	11650 2800 13700 2800
Wire Wire Line
	13700 2800 13700 3100
Connection ~ 11650 2800
Wire Wire Line
	11650 2800 11650 2750
Wire Wire Line
	11650 2600 13400 2600
Wire Wire Line
	13400 2600 13400 3100
Connection ~ 11650 2600
Wire Wire Line
	11650 2600 11650 2550
Wire Wire Line
	11650 2400 13100 2400
Wire Wire Line
	13100 2400 13100 3100
Connection ~ 11650 2400
Wire Wire Line
	11650 2400 11650 2350
Wire Wire Line
	11650 2200 12800 2200
Wire Wire Line
	12800 2200 12800 3100
Connection ~ 11650 2200
Wire Wire Line
	11650 2200 11650 2150
Wire Wire Line
	11650 2000 12500 2000
Wire Wire Line
	12500 2000 12500 3100
Connection ~ 11650 2000
Wire Wire Line
	11650 2000 11650 1950
Wire Wire Line
	11650 1800 12200 1800
Wire Wire Line
	12200 1800 12200 3100
Connection ~ 11650 1800
Wire Wire Line
	11650 1800 11650 1750
Wire Wire Line
	11900 1600 11900 3100
Connection ~ 11650 1600
Wire Wire Line
	11650 1600 11650 1550
$Comp
L Device:R R33
U 1 1 60D564CA
P 10250 1300
F 0 "R33" H 10320 1346 50  0000 L CNN
F 1 "47k" H 10320 1255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 10180 1300 50  0001 C CNN
F 3 "~" H 10250 1300 50  0001 C CNN
	1    10250 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R31
U 1 1 60D57A85
P 10000 1300
F 0 "R31" H 10070 1346 50  0000 L CNN
F 1 "47k" H 10070 1255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9930 1300 50  0001 C CNN
F 3 "~" H 10000 1300 50  0001 C CNN
	1    10000 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R30
U 1 1 60D5829C
P 9750 1300
F 0 "R30" H 9820 1346 50  0000 L CNN
F 1 "47k" H 9820 1255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9680 1300 50  0001 C CNN
F 3 "~" H 9750 1300 50  0001 C CNN
	1    9750 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R29
U 1 1 60D58AAB
P 9500 1300
F 0 "R29" H 9570 1346 50  0000 L CNN
F 1 "47k" H 9570 1255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9430 1300 50  0001 C CNN
F 3 "~" H 9500 1300 50  0001 C CNN
	1    9500 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R28
U 1 1 60D5922B
P 9250 1300
F 0 "R28" H 9320 1346 50  0000 L CNN
F 1 "47k" H 9320 1255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9180 1300 50  0001 C CNN
F 3 "~" H 9250 1300 50  0001 C CNN
	1    9250 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R27
U 1 1 60D599C4
P 9000 1300
F 0 "R27" H 9070 1346 50  0000 L CNN
F 1 "47k" H 9070 1255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8930 1300 50  0001 C CNN
F 3 "~" H 9000 1300 50  0001 C CNN
	1    9000 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R26
U 1 1 60D5A11C
P 8750 1300
F 0 "R26" H 8820 1346 50  0000 L CNN
F 1 "47k" H 8820 1255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8680 1300 50  0001 C CNN
F 3 "~" H 8750 1300 50  0001 C CNN
	1    8750 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R25
U 1 1 60D74666
P 8500 1300
F 0 "R25" H 8570 1346 50  0000 L CNN
F 1 "47k" H 8570 1255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8430 1300 50  0001 C CNN
F 3 "~" H 8500 1300 50  0001 C CNN
	1    8500 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 1550 8500 1550
Wire Wire Line
	8500 1550 8500 1450
Wire Wire Line
	8750 1450 8750 1750
Wire Wire Line
	8750 1750 10650 1750
Wire Wire Line
	9000 1450 9000 1950
Wire Wire Line
	9000 1950 10650 1950
Wire Wire Line
	9250 1450 9250 2150
Wire Wire Line
	9250 2150 10650 2150
Wire Wire Line
	9500 1450 9500 2350
Wire Wire Line
	9500 2350 10650 2350
Wire Wire Line
	9750 1450 9750 2550
Wire Wire Line
	9750 2550 10650 2550
Wire Wire Line
	10000 1450 10000 2750
Wire Wire Line
	10000 2750 10650 2750
Wire Wire Line
	10250 1450 10250 2950
Wire Wire Line
	10250 2950 10650 2950
Wire Wire Line
	8500 1550 8100 1550
Wire Wire Line
	8100 1550 8100 1100
Wire Wire Line
	8100 1100 7700 1100
Connection ~ 8500 1550
Connection ~ 8750 1750
Wire Wire Line
	9000 1950 8100 1950
Wire Wire Line
	8100 2400 7700 2400
Connection ~ 9000 1950
Wire Wire Line
	9250 2150 8150 2150
Wire Wire Line
	8150 3050 7700 3050
Connection ~ 9250 2150
Wire Wire Line
	9500 2350 8200 2350
Wire Wire Line
	8200 3700 7700 3700
Connection ~ 9500 2350
Wire Wire Line
	9750 2550 8250 2550
Wire Wire Line
	8250 4350 7700 4350
Connection ~ 9750 2550
Wire Wire Line
	10000 2750 8300 2750
Wire Wire Line
	8300 5000 7700 5000
Connection ~ 10000 2750
Wire Wire Line
	10250 2950 8350 2950
Wire Wire Line
	8350 5650 7700 5650
Connection ~ 10250 2950
$Comp
L power:+24V #PWR0101
U 1 1 60E21B5D
P 7850 750
F 0 "#PWR0101" H 7850 600 50  0001 C CNN
F 1 "+24V" H 7865 923 50  0000 C CNN
F 2 "" H 7850 750 50  0001 C CNN
F 3 "" H 7850 750 50  0001 C CNN
	1    7850 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 750  7850 900 
Wire Wire Line
	7850 5450 7700 5450
Wire Wire Line
	7700 4800 7850 4800
Wire Wire Line
	7700 4150 7850 4150
Wire Wire Line
	7700 3500 7850 3500
Wire Wire Line
	7700 2850 7850 2850
Wire Wire Line
	7700 2200 7850 2200
Wire Wire Line
	7700 1550 7850 1550
Wire Wire Line
	7700 900  7850 900 
Wire Wire Line
	11650 1350 11700 1350
Wire Wire Line
	11700 1350 11700 1250
Wire Wire Line
	11700 1250 11650 1250
Wire Wire Line
	11700 1250 11700 900 
Wire Wire Line
	11700 900  11150 900 
Wire Wire Line
	10600 900  10600 1250
Wire Wire Line
	10600 1250 10650 1250
Connection ~ 11700 1250
$Comp
L power:+24V #PWR0102
U 1 1 60E52DF5
P 11150 900
F 0 "#PWR0102" H 11150 750 50  0001 C CNN
F 1 "+24V" H 11165 1073 50  0000 C CNN
F 2 "" H 11150 900 50  0001 C CNN
F 3 "" H 11150 900 50  0001 C CNN
	1    11150 900 
	1    0    0    -1  
$EndComp
Connection ~ 11150 900 
Wire Wire Line
	11150 900  10600 900 
Wire Wire Line
	10250 1150 10000 1150
Connection ~ 8750 1150
Wire Wire Line
	8750 1150 8500 1150
Connection ~ 9000 1150
Wire Wire Line
	9000 1150 8750 1150
Connection ~ 9250 1150
Wire Wire Line
	9250 1150 9000 1150
Connection ~ 9500 1150
Wire Wire Line
	9500 1150 9250 1150
Connection ~ 9750 1150
Wire Wire Line
	9750 1150 9500 1150
Connection ~ 10000 1150
Wire Wire Line
	10000 1150 9750 1150
$Comp
L power:GND2 #PWR0103
U 1 1 60E5A200
P 8500 1150
F 0 "#PWR0103" H 8500 900 50  0001 C CNN
F 1 "GND2" H 8505 977 50  0000 C CNN
F 2 "" H 8500 1150 50  0001 C CNN
F 3 "" H 8500 1150 50  0001 C CNN
	1    8500 1150
	-1   0    0    1   
$EndComp
Connection ~ 8500 1150
$Comp
L DO8_V1.2-rescue:TBL009-500-02GY-2GY-KiCAD_personalized J7
U 1 1 60E66BAB
P 15750 750
F 0 "J7" V 16104 878 50  0000 L CNN
F 1 "TBL009-500-02GY-2GY" H 15650 1000 50  0000 L CNN
F 2 "KiCAD_Additional_Parts:TBL00950002GY2GY" H 16400 850 50  0001 L CNN
F 3 "https://www.cuidevices.com/product/resource/tbl009-500.pdf" H 16400 750 50  0001 L CNN
F 4 "Conn Terminal Block 2 POS 5mm Solder RA Thru-Hole 10A/Contact" H 16400 650 50  0001 L CNN "Description"
F 5 "13" H 16400 550 50  0001 L CNN "Height"
F 6 "CUI Inc." H 16400 450 50  0001 L CNN "Manufacturer_Name"
F 7 "TBL009-500-02GY-2GY" H 16400 350 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "490-TBL00950002GY2GY" H 16400 250 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/CUI-Devices/TBL009-500-02GY-2GY?qs=UXgszm6BlbHpkCnXmCRUvg%3D%3D" H 16400 150 50  0001 L CNN "Mouser Price/Stock"
F 10 "TBL009-500-02GY-2GY" H 16400 50  50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/tbl009-500-02gy-2gy/cui-devices?region=nac" H 16400 -50 50  0001 L CNN "Arrow Price/Stock"
	1    15750 750 
	0    1    1    0   
$EndComp
$Comp
L DO8_V1.2-rescue:TBL009-500-02GY-2GY-KiCAD_personalized J8
U 1 1 60E72468
P 15750 1650
F 0 "J8" V 16104 1778 50  0000 L CNN
F 1 "TBL009-500-02GY-2GY" H 15700 1900 50  0000 L CNN
F 2 "KiCAD_Additional_Parts:TBL00950002GY2GY" H 16400 1750 50  0001 L CNN
F 3 "https://www.cuidevices.com/product/resource/tbl009-500.pdf" H 16400 1650 50  0001 L CNN
F 4 "Conn Terminal Block 2 POS 5mm Solder RA Thru-Hole 10A/Contact" H 16400 1550 50  0001 L CNN "Description"
F 5 "13" H 16400 1450 50  0001 L CNN "Height"
F 6 "CUI Inc." H 16400 1350 50  0001 L CNN "Manufacturer_Name"
F 7 "TBL009-500-02GY-2GY" H 16400 1250 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "490-TBL00950002GY2GY" H 16400 1150 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/CUI-Devices/TBL009-500-02GY-2GY?qs=UXgszm6BlbHpkCnXmCRUvg%3D%3D" H 16400 1050 50  0001 L CNN "Mouser Price/Stock"
F 10 "TBL009-500-02GY-2GY" H 16400 950 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/tbl009-500-02gy-2gy/cui-devices?region=nac" H 16400 850 50  0001 L CNN "Arrow Price/Stock"
	1    15750 1650
	0    1    1    0   
$EndComp
$Comp
L DO8_V1.2-rescue:TBL009-500-02GY-2GY-KiCAD_personalized J9
U 1 1 60E75B41
P 15750 2550
F 0 "J9" V 16104 2678 50  0000 L CNN
F 1 "TBL009-500-02GY-2GY" H 15750 2800 50  0000 L CNN
F 2 "KiCAD_Additional_Parts:TBL00950002GY2GY" H 16400 2650 50  0001 L CNN
F 3 "https://www.cuidevices.com/product/resource/tbl009-500.pdf" H 16400 2550 50  0001 L CNN
F 4 "Conn Terminal Block 2 POS 5mm Solder RA Thru-Hole 10A/Contact" H 16400 2450 50  0001 L CNN "Description"
F 5 "13" H 16400 2350 50  0001 L CNN "Height"
F 6 "CUI Inc." H 16400 2250 50  0001 L CNN "Manufacturer_Name"
F 7 "TBL009-500-02GY-2GY" H 16400 2150 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "490-TBL00950002GY2GY" H 16400 2050 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/CUI-Devices/TBL009-500-02GY-2GY?qs=UXgszm6BlbHpkCnXmCRUvg%3D%3D" H 16400 1950 50  0001 L CNN "Mouser Price/Stock"
F 10 "TBL009-500-02GY-2GY" H 16400 1850 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/tbl009-500-02gy-2gy/cui-devices?region=nac" H 16400 1750 50  0001 L CNN "Arrow Price/Stock"
	1    15750 2550
	0    1    1    0   
$EndComp
$Comp
L DO8_V1.2-rescue:TBL009-500-02GY-2GY-KiCAD_personalized J10
U 1 1 60E7A290
P 15750 3450
F 0 "J10" V 16104 3578 50  0000 L CNN
F 1 "TBL009-500-02GY-2GY" H 15800 3700 50  0000 L CNN
F 2 "KiCAD_Additional_Parts:TBL00950002GY2GY" H 16400 3550 50  0001 L CNN
F 3 "https://www.cuidevices.com/product/resource/tbl009-500.pdf" H 16400 3450 50  0001 L CNN
F 4 "Conn Terminal Block 2 POS 5mm Solder RA Thru-Hole 10A/Contact" H 16400 3350 50  0001 L CNN "Description"
F 5 "13" H 16400 3250 50  0001 L CNN "Height"
F 6 "CUI Inc." H 16400 3150 50  0001 L CNN "Manufacturer_Name"
F 7 "TBL009-500-02GY-2GY" H 16400 3050 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "490-TBL00950002GY2GY" H 16400 2950 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/CUI-Devices/TBL009-500-02GY-2GY?qs=UXgszm6BlbHpkCnXmCRUvg%3D%3D" H 16400 2850 50  0001 L CNN "Mouser Price/Stock"
F 10 "TBL009-500-02GY-2GY" H 16400 2750 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/tbl009-500-02gy-2gy/cui-devices?region=nac" H 16400 2650 50  0001 L CNN "Arrow Price/Stock"
	1    15750 3450
	0    1    1    0   
$EndComp
$Comp
L DO8_V1.2-rescue:TBL009-500-02GY-2GY-KiCAD_personalized J11
U 1 1 60E7B80F
P 15750 4700
F 0 "J11" V 16104 4828 50  0000 L CNN
F 1 "TBL009-500-02GY-2GY" H 15700 4950 50  0000 L CNN
F 2 "KiCAD_Additional_Parts:TBL00950002GY2GY" H 16400 4800 50  0001 L CNN
F 3 "https://www.cuidevices.com/product/resource/tbl009-500.pdf" H 16400 4700 50  0001 L CNN
F 4 "Conn Terminal Block 2 POS 5mm Solder RA Thru-Hole 10A/Contact" H 16400 4600 50  0001 L CNN "Description"
F 5 "13" H 16400 4500 50  0001 L CNN "Height"
F 6 "CUI Inc." H 16400 4400 50  0001 L CNN "Manufacturer_Name"
F 7 "TBL009-500-02GY-2GY" H 16400 4300 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "490-TBL00950002GY2GY" H 16400 4200 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/CUI-Devices/TBL009-500-02GY-2GY?qs=UXgszm6BlbHpkCnXmCRUvg%3D%3D" H 16400 4100 50  0001 L CNN "Mouser Price/Stock"
F 10 "TBL009-500-02GY-2GY" H 16400 4000 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/tbl009-500-02gy-2gy/cui-devices?region=nac" H 16400 3900 50  0001 L CNN "Arrow Price/Stock"
	1    15750 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	15750 750  15650 750 
Wire Wire Line
	14950 750  14950 1600
Wire Wire Line
	11650 1600 11900 1600
Connection ~ 15650 750 
Wire Wire Line
	15650 750  14950 750 
Connection ~ 11900 1600
Wire Wire Line
	11900 1600 14950 1600
Wire Wire Line
	15750 1550 15650 1550
Wire Wire Line
	15000 1550 15000 1800
Wire Wire Line
	15000 1800 12200 1800
Connection ~ 15650 1550
Wire Wire Line
	15650 1550 15000 1550
Connection ~ 12200 1800
Wire Wire Line
	15750 1650 15650 1650
Wire Wire Line
	15050 1650 15050 2000
Wire Wire Line
	15050 2000 12500 2000
Connection ~ 15650 1650
Wire Wire Line
	15650 1650 15050 1650
Connection ~ 12500 2000
Wire Wire Line
	15750 2450 15650 2450
Wire Wire Line
	15100 2450 15100 2200
Wire Wire Line
	15100 2200 12800 2200
Connection ~ 15650 2450
Wire Wire Line
	15650 2450 15100 2450
Connection ~ 12800 2200
Wire Wire Line
	15750 2550 15650 2550
Wire Wire Line
	15050 2550 15050 2400
Wire Wire Line
	15050 2400 13100 2400
Connection ~ 15650 2550
Wire Wire Line
	15650 2550 15050 2550
Connection ~ 13100 2400
Wire Wire Line
	15750 3350 15650 3350
Wire Wire Line
	15050 3350 15050 2600
Wire Wire Line
	15050 2600 13400 2600
Connection ~ 15650 3350
Wire Wire Line
	15650 3350 15050 3350
Connection ~ 13400 2600
Wire Wire Line
	15750 3450 15650 3450
Wire Wire Line
	15000 3450 15000 2800
Wire Wire Line
	15000 2800 13700 2800
Connection ~ 15650 3450
Wire Wire Line
	15650 3450 15000 3450
Connection ~ 13700 2800
Wire Wire Line
	15750 4250 15650 4250
Wire Wire Line
	14950 4250 14950 3000
Wire Wire Line
	14950 3000 14000 3000
Connection ~ 15650 4250
Wire Wire Line
	15650 4250 14950 4250
Connection ~ 14000 3000
$Comp
L power:GND2 #PWR0104
U 1 1 60EAED66
P 10650 3250
F 0 "#PWR0104" H 10650 3000 50  0001 C CNN
F 1 "GND2" V 10655 3122 50  0000 R CNN
F 2 "" H 10650 3250 50  0001 C CNN
F 3 "" H 10650 3250 50  0001 C CNN
	1    10650 3250
	0    1    1    0   
$EndComp
$Comp
L power:GND2 #PWR0105
U 1 1 60EB0DD8
P 11900 3550
F 0 "#PWR0105" H 11900 3300 50  0001 C CNN
F 1 "GND2" H 11905 3377 50  0000 C CNN
F 2 "" H 11900 3550 50  0001 C CNN
F 3 "" H 11900 3550 50  0001 C CNN
	1    11900 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	11900 3450 11900 3500
Wire Wire Line
	11900 3500 12200 3500
Wire Wire Line
	14000 3500 14000 3450
Connection ~ 11900 3500
Wire Wire Line
	11900 3500 11900 3550
Wire Wire Line
	13700 3450 13700 3500
Connection ~ 13700 3500
Wire Wire Line
	13700 3500 14000 3500
Wire Wire Line
	13400 3450 13400 3500
Connection ~ 13400 3500
Wire Wire Line
	13400 3500 13700 3500
Wire Wire Line
	13100 3450 13100 3500
Connection ~ 13100 3500
Wire Wire Line
	13100 3500 13400 3500
Wire Wire Line
	12800 3450 12800 3500
Connection ~ 12800 3500
Wire Wire Line
	12800 3500 13100 3500
Wire Wire Line
	12500 3450 12500 3500
Connection ~ 12500 3500
Wire Wire Line
	12500 3500 12800 3500
Wire Wire Line
	12200 3450 12200 3500
Connection ~ 12200 3500
Wire Wire Line
	12200 3500 12500 3500
$Comp
L Device:R R34
U 1 1 60EEF18F
P 10250 5900
F 0 "R34" H 10320 5946 50  0000 L CNN
F 1 "10k" H 10320 5855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 10180 5900 50  0001 C CNN
F 3 "~" H 10250 5900 50  0001 C CNN
	1    10250 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R36
U 1 1 60EF30F9
P 10800 5900
F 0 "R36" H 10870 5946 50  0000 L CNN
F 1 "10k" H 10870 5855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 10730 5900 50  0001 C CNN
F 3 "~" H 10800 5900 50  0001 C CNN
	1    10800 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R38
U 1 1 60EF38FA
P 11350 5900
F 0 "R38" H 11420 5946 50  0000 L CNN
F 1 "10k" H 11420 5855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 11280 5900 50  0001 C CNN
F 3 "~" H 11350 5900 50  0001 C CNN
	1    11350 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R40
U 1 1 60EF5CEC
P 11900 5900
F 0 "R40" H 11970 5946 50  0000 L CNN
F 1 "10k" H 11970 5855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 11830 5900 50  0001 C CNN
F 3 "~" H 11900 5900 50  0001 C CNN
	1    11900 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R42
U 1 1 60EF6494
P 12450 5900
F 0 "R42" H 12520 5946 50  0000 L CNN
F 1 "10k" H 12520 5855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 12380 5900 50  0001 C CNN
F 3 "~" H 12450 5900 50  0001 C CNN
	1    12450 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R44
U 1 1 60EF6CF4
P 13000 5900
F 0 "R44" H 13070 5946 50  0000 L CNN
F 1 "10k" H 13070 5855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 12930 5900 50  0001 C CNN
F 3 "~" H 13000 5900 50  0001 C CNN
	1    13000 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R46
U 1 1 60EF742A
P 13550 5900
F 0 "R46" H 13620 5946 50  0000 L CNN
F 1 "10k" H 13620 5855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 13480 5900 50  0001 C CNN
F 3 "~" H 13550 5900 50  0001 C CNN
	1    13550 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R48
U 1 1 60EF7BD6
P 14100 5900
F 0 "R48" H 14170 5946 50  0000 L CNN
F 1 "10k" H 14170 5855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 14030 5900 50  0001 C CNN
F 3 "~" H 14100 5900 50  0001 C CNN
	1    14100 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND2 #PWR0106
U 1 1 60EFD2DF
P 10050 6050
F 0 "#PWR0106" H 10050 5800 50  0001 C CNN
F 1 "GND2" H 10055 5877 50  0000 C CNN
F 2 "" H 10050 6050 50  0001 C CNN
F 3 "" H 10050 6050 50  0001 C CNN
	1    10050 6050
	-1   0    0    1   
$EndComp
$Comp
L power:GND2 #PWR0107
U 1 1 60EFFD26
P 10600 6050
F 0 "#PWR0107" H 10600 5800 50  0001 C CNN
F 1 "GND2" H 10605 5877 50  0000 C CNN
F 2 "" H 10600 6050 50  0001 C CNN
F 3 "" H 10600 6050 50  0001 C CNN
	1    10600 6050
	-1   0    0    1   
$EndComp
$Comp
L power:GND2 #PWR0108
U 1 1 60F00496
P 11150 6050
F 0 "#PWR0108" H 11150 5800 50  0001 C CNN
F 1 "GND2" H 11155 5877 50  0000 C CNN
F 2 "" H 11150 6050 50  0001 C CNN
F 3 "" H 11150 6050 50  0001 C CNN
	1    11150 6050
	-1   0    0    1   
$EndComp
$Comp
L power:GND2 #PWR0109
U 1 1 60F00B4D
P 11700 6050
F 0 "#PWR0109" H 11700 5800 50  0001 C CNN
F 1 "GND2" H 11705 5877 50  0000 C CNN
F 2 "" H 11700 6050 50  0001 C CNN
F 3 "" H 11700 6050 50  0001 C CNN
	1    11700 6050
	-1   0    0    1   
$EndComp
$Comp
L power:GND2 #PWR0110
U 1 1 60F03598
P 12250 6050
F 0 "#PWR0110" H 12250 5800 50  0001 C CNN
F 1 "GND2" H 12255 5877 50  0000 C CNN
F 2 "" H 12250 6050 50  0001 C CNN
F 3 "" H 12250 6050 50  0001 C CNN
	1    12250 6050
	-1   0    0    1   
$EndComp
$Comp
L power:GND2 #PWR0111
U 1 1 60F03BB4
P 12800 6050
F 0 "#PWR0111" H 12800 5800 50  0001 C CNN
F 1 "GND2" H 12805 5877 50  0000 C CNN
F 2 "" H 12800 6050 50  0001 C CNN
F 3 "" H 12800 6050 50  0001 C CNN
	1    12800 6050
	-1   0    0    1   
$EndComp
$Comp
L power:GND2 #PWR0112
U 1 1 60F0429F
P 13350 6050
F 0 "#PWR0112" H 13350 5800 50  0001 C CNN
F 1 "GND2" H 13355 5877 50  0000 C CNN
F 2 "" H 13350 6050 50  0001 C CNN
F 3 "" H 13350 6050 50  0001 C CNN
	1    13350 6050
	-1   0    0    1   
$EndComp
$Comp
L power:GND2 #PWR0113
U 1 1 60F04917
P 13900 6050
F 0 "#PWR0113" H 13900 5800 50  0001 C CNN
F 1 "GND2" H 13905 5877 50  0000 C CNN
F 2 "" H 13900 6050 50  0001 C CNN
F 3 "" H 13900 6050 50  0001 C CNN
	1    13900 6050
	-1   0    0    1   
$EndComp
Wire Wire Line
	14000 3100 13850 3100
Wire Wire Line
	13850 3100 13850 4900
Wire Wire Line
	13850 4900 14100 4900
Wire Wire Line
	14100 4900 14100 5200
Connection ~ 14000 3100
Wire Wire Line
	14000 3100 14000 3150
Wire Wire Line
	13700 3100 13550 3100
Connection ~ 13700 3100
Wire Wire Line
	13700 3100 13700 3150
Wire Wire Line
	13550 3100 13550 5200
Wire Wire Line
	13400 3100 13250 3100
Wire Wire Line
	13250 3100 13250 4900
Wire Wire Line
	13250 4900 13000 4900
Wire Wire Line
	13000 4900 13000 5200
Connection ~ 13400 3100
Wire Wire Line
	13400 3100 13400 3150
Wire Wire Line
	12450 5750 12450 5500
Wire Wire Line
	12450 4900 12950 4900
Wire Wire Line
	12950 4900 12950 3100
Wire Wire Line
	12950 3100 13100 3100
Connection ~ 13100 3100
Wire Wire Line
	13100 3100 13100 3150
Wire Wire Line
	12800 3100 12650 3100
Wire Wire Line
	12650 3100 12650 4850
Wire Wire Line
	12650 4850 11900 4850
Wire Wire Line
	11900 4850 11900 5200
Connection ~ 12800 3100
Wire Wire Line
	12800 3100 12800 3150
Wire Wire Line
	12500 3100 12350 3100
Wire Wire Line
	12350 3100 12350 4800
Wire Wire Line
	12350 4800 11350 4800
Wire Wire Line
	11350 4800 11350 5200
Connection ~ 12500 3100
Wire Wire Line
	12500 3100 12500 3150
Wire Wire Line
	12200 3100 12050 3100
Wire Wire Line
	12050 3100 12050 4750
Wire Wire Line
	12050 4750 10800 4750
Wire Wire Line
	10800 4750 10800 5200
Connection ~ 12200 3100
Wire Wire Line
	12200 3100 12200 3150
Wire Wire Line
	11900 3100 11750 3100
Wire Wire Line
	11750 3100 11750 4700
Wire Wire Line
	11750 4700 10250 4700
Wire Wire Line
	10250 4700 10250 5200
Connection ~ 11900 3100
Wire Wire Line
	11900 3100 11900 3150
Wire Notes Line
	7400 6350 10000 6350
Wire Notes Line
	14400 6350 16050 6350
$Comp
L Diode:SM6T36A D18
U 1 1 6104AFD3
P 15250 5100
F 0 "D18" V 15150 5250 50  0000 L CNN
F 1 "SM6T36A" H 15100 5200 50  0000 L CNN
F 2 "Diode_SMD:D_SMB" H 15250 4900 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/sm6t.pdf" H 15200 5100 50  0001 C CNN
	1    15250 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	15250 4950 15250 4700
Wire Wire Line
	15250 4700 15650 4700
Connection ~ 15650 4700
Wire Wire Line
	15650 4700 15750 4700
Wire Wire Line
	15250 5250 15250 5500
Wire Wire Line
	15250 5500 15650 5500
Connection ~ 15650 5500
Wire Wire Line
	15650 5500 15750 5500
$Comp
L power:GND2 #PWR0114
U 1 1 61063B2D
P 15250 5500
F 0 "#PWR0114" H 15250 5250 50  0001 C CNN
F 1 "GND2" H 15255 5327 50  0000 C CNN
F 2 "" H 15250 5500 50  0001 C CNN
F 3 "" H 15250 5500 50  0001 C CNN
	1    15250 5500
	1    0    0    -1  
$EndComp
Connection ~ 15250 5500
$Comp
L power:+24V #PWR0115
U 1 1 61067D8F
P 14350 4700
F 0 "#PWR0115" H 14350 4550 50  0001 C CNN
F 1 "+24V" H 14365 4873 50  0000 C CNN
F 2 "" H 14350 4700 50  0001 C CNN
F 3 "" H 14350 4700 50  0001 C CNN
	1    14350 4700
	1    0    0    -1  
$EndComp
Connection ~ 15250 4700
$Comp
L Device:R R17
U 1 1 61096D63
P 6950 900
F 0 "R17" V 7050 1000 50  0000 C CNN
F 1 "2k2" V 6950 900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6880 900 50  0001 C CNN
F 3 "~" H 6950 900 50  0001 C CNN
	1    6950 900 
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 61098878
P 6750 1400
F 0 "R9" V 6650 1450 50  0000 C CNN
F 1 "1k" V 6750 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6680 1400 50  0001 C CNN
F 3 "~" H 6750 1400 50  0001 C CNN
	1    6750 1400
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC846 Q1
U 1 1 6109414A
P 6900 1200
F 0 "Q1" V 6850 1350 50  0000 C CNN
F 1 "BC846" V 6900 950 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7100 1125 50  0001 L CIN
F 3 "https://assets.nexperia.com/documents/data-sheet/BC846_SER.pdf" H 6900 1200 50  0001 L CNN
	1    6900 1200
	0    1    -1   0   
$EndComp
Wire Wire Line
	7850 900  7850 1550
Connection ~ 7850 900 
Wire Wire Line
	7850 1550 7850 2200
Connection ~ 7850 1550
Connection ~ 7850 2200
Wire Wire Line
	7850 2200 7850 2850
Connection ~ 7850 2850
Wire Wire Line
	7850 2850 7850 3500
Wire Wire Line
	7850 3500 7850 4150
Connection ~ 7850 3500
Wire Wire Line
	7850 4150 7850 4800
Connection ~ 7850 4150
Wire Wire Line
	7850 4800 7850 5450
Connection ~ 7850 4800
Wire Wire Line
	8350 2950 8350 5650
Wire Wire Line
	8300 2750 8300 5000
Wire Wire Line
	8250 2550 8250 4350
Wire Wire Line
	8200 2350 8200 3700
Wire Wire Line
	8150 2150 8150 3050
Wire Wire Line
	8100 1950 8100 2400
Wire Wire Line
	7700 1750 8750 1750
$Comp
L power:GND #PWR0116
U 1 1 6128502D
P 6700 1100
F 0 "#PWR0116" H 6700 850 50  0001 C CNN
F 1 "GND" V 6705 972 50  0000 R CNN
F 2 "" H 6700 1100 50  0001 C CNN
F 3 "" H 6700 1100 50  0001 C CNN
	1    6700 1100
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0117
U 1 1 6128620D
P 6800 900
F 0 "#PWR0117" H 6800 750 50  0001 C CNN
F 1 "VCC" V 6815 1027 50  0000 L CNN
F 2 "" H 6800 900 50  0001 C CNN
F 3 "" H 6800 900 50  0001 C CNN
	1    6800 900 
	0    -1   -1   0   
$EndComp
Text GLabel 6600 1400 0    50   Input ~ 0
CH1
Text GLabel 6600 2050 0    50   Input ~ 0
CH2
Text GLabel 6600 2700 0    50   Input ~ 0
CH3
Text GLabel 6600 3350 0    50   Input ~ 0
CH4
Text GLabel 6600 4000 0    50   Input ~ 0
CH5
Text GLabel 6600 4650 0    50   Input ~ 0
CH6
Text GLabel 6600 5300 0    50   Input ~ 0
CH7
Text GLabel 6600 5950 0    50   Input ~ 0
CH8
Wire Notes Line
	7400 6350 7400 5700
Wire Notes Line
	7400 5700 7450 5700
$Comp
L Transistor_FET:FQP27P06 Q9
U 1 1 612E725C
P 14950 4800
F 0 "Q9" V 15292 4800 50  0000 C CNN
F 1 "FQP27P06" V 15201 4800 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 15150 4725 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/FQP27P06-D.PDF" H 14950 4800 50  0001 L CNN
	1    14950 4800
	0    1    -1   0   
$EndComp
$Comp
L Device:D_Zener D17
U 1 1 612F9FA2
P 14650 4850
F 0 "D17" V 14604 4930 50  0000 L CNN
F 1 "8v2" V 14695 4930 50  0000 L CNN
F 2 "Diode_SMD:D_MiniMELF" H 14650 4850 50  0001 C CNN
F 3 "~" H 14650 4850 50  0001 C CNN
	1    14650 4850
	0    1    1    0   
$EndComp
Wire Wire Line
	14650 4700 14750 4700
Wire Wire Line
	14650 5000 14950 5000
Wire Wire Line
	15150 4700 15250 4700
$Comp
L Device:R R49
U 1 1 61321AB1
P 14950 5250
F 0 "R49" H 15020 5296 50  0000 L CNN
F 1 "10k" H 15020 5205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 14880 5250 50  0001 C CNN
F 3 "~" H 14950 5250 50  0001 C CNN
	1    14950 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	14950 5100 14950 5000
Connection ~ 14950 5000
Wire Wire Line
	14950 5500 15250 5500
Wire Wire Line
	14650 4700 14350 4700
Connection ~ 14650 4700
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 6134DE05
P 14350 4700
F 0 "#FLG0101" H 14350 4775 50  0001 C CNN
F 1 "PWR_FLAG" H 14350 4873 50  0000 C CNN
F 2 "" H 14350 4700 50  0001 C CNN
F 3 "~" H 14350 4700 50  0001 C CNN
	1    14350 4700
	-1   0    0    1   
$EndComp
Connection ~ 14350 4700
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 6134EA01
P 14950 5500
F 0 "#FLG0102" H 14950 5575 50  0001 C CNN
F 1 "PWR_FLAG" H 14950 5673 50  0000 C CNN
F 2 "" H 14950 5500 50  0001 C CNN
F 3 "~" H 14950 5500 50  0001 C CNN
	1    14950 5500
	-1   0    0    1   
$EndComp
Connection ~ 14950 5500
Wire Wire Line
	14950 5400 14950 5500
Text GLabel 3600 3600 2    50   Input ~ 0
CH1
Text GLabel 3600 3700 2    50   Input ~ 0
CH2
Text GLabel 3600 3800 2    50   Input ~ 0
CH3
Text GLabel 3600 3900 2    50   Input ~ 0
CH4
Text GLabel 3600 4000 2    50   Input ~ 0
CH5
Text GLabel 3600 4100 2    50   Input ~ 0
CH6
Text GLabel 3600 4200 2    50   Input ~ 0
CH7
Text GLabel 3600 4300 2    50   Input ~ 0
CH8
Text GLabel 2000 3800 0    50   Input ~ 0
FB8
Text GLabel 2000 3700 0    50   Input ~ 0
FB7
Text GLabel 2000 3600 0    50   Input ~ 0
FB6
Text GLabel 2000 3500 0    50   Input ~ 0
FB5
Text GLabel 2000 3400 0    50   Input ~ 0
FB4
Text GLabel 2000 3300 0    50   Input ~ 0
FB3
Text GLabel 2000 3200 0    50   Input ~ 0
FB2
Text GLabel 2000 3100 0    50   Input ~ 0
FB1
Text GLabel 3600 4400 2    50   Input ~ 0
SWIO
Text GLabel 3600 4500 2    50   Input ~ 0
SWCLK
$Comp
L Switch:SW_DIP_x05 SW1
U 1 1 6145C7BC
P 4800 3300
F 0 "SW1" H 4800 3767 50  0000 C CNN
F 1 "SW_DIP_x05" H 4800 3676 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx05_Slide_9.78x14.88mm_W7.62mm_P2.54mm" H 4800 3300 50  0001 C CNN
F 3 "~" H 4800 3300 50  0001 C CNN
	1    4800 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 6145FCBF
P 3600 2850
F 0 "R4" V 3500 2900 50  0000 C CNN
F 1 "1k" V 3600 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3530 2850 50  0001 C CNN
F 3 "~" H 3600 2850 50  0001 C CNN
	1    3600 2850
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 61462F74
P 3800 2850
F 0 "R5" V 3700 2900 50  0000 C CNN
F 1 "1k" V 3800 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3730 2850 50  0001 C CNN
F 3 "~" H 3800 2850 50  0001 C CNN
	1    3800 2850
	-1   0    0    1   
$EndComp
$Comp
L Device:R R6
U 1 1 614636B3
P 4000 2850
F 0 "R6" V 3900 2900 50  0000 C CNN
F 1 "1k" V 4000 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3930 2850 50  0001 C CNN
F 3 "~" H 4000 2850 50  0001 C CNN
	1    4000 2850
	-1   0    0    1   
$EndComp
$Comp
L Device:R R7
U 1 1 61463D39
P 4200 2850
F 0 "R7" V 4100 2900 50  0000 C CNN
F 1 "1k" V 4200 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4130 2850 50  0001 C CNN
F 3 "~" H 4200 2850 50  0001 C CNN
	1    4200 2850
	-1   0    0    1   
$EndComp
$Comp
L Device:R R8
U 1 1 614644A3
P 4400 2850
F 0 "R8" V 4300 2900 50  0000 C CNN
F 1 "1k" V 4400 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4330 2850 50  0001 C CNN
F 3 "~" H 4400 2850 50  0001 C CNN
	1    4400 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	3450 3100 3600 3100
Wire Wire Line
	3450 3300 4000 3300
Wire Wire Line
	3450 3400 4200 3400
Wire Wire Line
	3450 3500 4400 3500
Wire Wire Line
	3600 3000 3600 3100
Connection ~ 3600 3100
Wire Wire Line
	3600 3100 4500 3100
Wire Wire Line
	3800 3000 3800 3200
Wire Wire Line
	3450 3200 3800 3200
Connection ~ 3800 3200
Wire Wire Line
	3800 3200 4500 3200
Wire Wire Line
	4000 3000 4000 3300
Connection ~ 4000 3300
Wire Wire Line
	4000 3300 4500 3300
Wire Wire Line
	4200 3000 4200 3400
Connection ~ 4200 3400
Wire Wire Line
	4200 3400 4500 3400
Wire Wire Line
	4400 3000 4400 3500
Connection ~ 4400 3500
Wire Wire Line
	4400 3500 4500 3500
$Comp
L power:GND #PWR0118
U 1 1 614DFD5D
P 5150 3550
F 0 "#PWR0118" H 5150 3300 50  0001 C CNN
F 1 "GND" H 5155 3377 50  0000 C CNN
F 2 "" H 5150 3550 50  0001 C CNN
F 3 "" H 5150 3550 50  0001 C CNN
	1    5150 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3100 5150 3100
Wire Wire Line
	5150 3100 5150 3200
Wire Wire Line
	5100 3500 5150 3500
Connection ~ 5150 3500
Wire Wire Line
	5150 3500 5150 3550
Wire Wire Line
	5100 3400 5150 3400
Connection ~ 5150 3400
Wire Wire Line
	5150 3400 5150 3500
Wire Wire Line
	5100 3300 5150 3300
Connection ~ 5150 3300
Wire Wire Line
	5150 3300 5150 3400
Wire Wire Line
	5100 3200 5150 3200
Connection ~ 5150 3200
Wire Wire Line
	5150 3200 5150 3300
$Comp
L power:+3V3 #PWR0119
U 1 1 61527C58
P 4000 2600
F 0 "#PWR0119" H 4000 2450 50  0001 C CNN
F 1 "+3V3" H 4015 2773 50  0000 C CNN
F 2 "" H 4000 2600 50  0001 C CNN
F 3 "" H 4000 2600 50  0001 C CNN
	1    4000 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2700 3600 2650
Wire Wire Line
	3600 2650 3800 2650
Wire Wire Line
	4400 2650 4400 2700
Wire Wire Line
	4200 2700 4200 2650
Connection ~ 4200 2650
Wire Wire Line
	4200 2650 4400 2650
Wire Wire Line
	4000 2700 4000 2650
Connection ~ 4000 2650
Wire Wire Line
	4000 2650 4200 2650
Wire Wire Line
	4000 2600 4000 2650
Wire Wire Line
	3800 2700 3800 2650
Connection ~ 3800 2650
Wire Wire Line
	3800 2650 4000 2650
Wire Wire Line
	3450 3600 3600 3600
Wire Wire Line
	3450 3700 3600 3700
Wire Wire Line
	3450 3800 3600 3800
Wire Wire Line
	3450 3900 3600 3900
Wire Wire Line
	3450 4000 3600 4000
Wire Wire Line
	3450 4100 3600 4100
Wire Wire Line
	3450 4200 3600 4200
Wire Wire Line
	3450 4300 3600 4300
Wire Wire Line
	3450 4400 3600 4400
Wire Wire Line
	3450 4500 3600 4500
Wire Wire Line
	2150 3100 2000 3100
Wire Wire Line
	2150 3200 2000 3200
Wire Wire Line
	2150 3300 2000 3300
Wire Wire Line
	2150 3400 2000 3400
Wire Wire Line
	2150 3500 2000 3500
Wire Wire Line
	2150 3600 2000 3600
Wire Wire Line
	2150 3700 2000 3700
Wire Wire Line
	2150 3800 2000 3800
$Comp
L Device:R R1
U 1 1 616BBDE6
P 1950 2200
F 0 "R1" V 2050 2150 50  0000 C CNN
F 1 "1k" V 1950 2200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1880 2200 50  0001 C CNN
F 3 "~" H 1950 2200 50  0001 C CNN
	1    1950 2200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 616BC53F
P 1750 2200
F 0 "#PWR0120" H 1750 1950 50  0001 C CNN
F 1 "GND" V 1755 2072 50  0000 R CNN
F 2 "" H 1750 2200 50  0001 C CNN
F 3 "" H 1750 2200 50  0001 C CNN
	1    1750 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	1750 2200 1800 2200
Wire Wire Line
	2100 2200 2150 2200
$Comp
L power:GND #PWR0121
U 1 1 616E4D77
P 2650 4900
F 0 "#PWR0121" H 2650 4650 50  0001 C CNN
F 1 "GND" H 2655 4727 50  0000 C CNN
F 2 "" H 2650 4900 50  0001 C CNN
F 3 "" H 2650 4900 50  0001 C CNN
	1    2650 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 4900 2650 4850
Wire Wire Line
	2650 4850 2750 4850
Wire Wire Line
	2950 4850 2950 4800
Connection ~ 2650 4850
Wire Wire Line
	2650 4850 2650 4800
Wire Wire Line
	2850 4800 2850 4850
Connection ~ 2850 4850
Wire Wire Line
	2850 4850 2950 4850
Wire Wire Line
	2750 4800 2750 4850
Connection ~ 2750 4850
Wire Wire Line
	2750 4850 2850 4850
$Comp
L power:+3V3 #PWR0122
U 1 1 61739B9A
P 2650 1700
F 0 "#PWR0122" H 2650 1550 50  0001 C CNN
F 1 "+3V3" H 2665 1873 50  0000 C CNN
F 2 "" H 2650 1700 50  0001 C CNN
F 3 "" H 2650 1700 50  0001 C CNN
	1    2650 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1700 2650 1750
Wire Wire Line
	2650 1750 2750 1750
Wire Wire Line
	3050 1750 3050 1800
Connection ~ 2650 1750
Wire Wire Line
	2650 1750 2650 1800
Wire Wire Line
	2950 1800 2950 1750
Connection ~ 2950 1750
Wire Wire Line
	2950 1750 3050 1750
Wire Wire Line
	2850 1800 2850 1750
Connection ~ 2850 1750
Wire Wire Line
	2850 1750 2950 1750
Wire Wire Line
	2750 1800 2750 1750
Connection ~ 2750 1750
Wire Wire Line
	2750 1750 2850 1750
NoConn ~ 2150 2700
NoConn ~ 2150 2800
NoConn ~ 2150 2900
NoConn ~ 3450 4600
Text Notes 7950 6300 0    50   ~ 0
Galvanische Trennung\nmindestens 1,5mm\n
Text GLabel 9900 7550 0    50   Input ~ 0
FB8
Text GLabel 9900 7450 0    50   Input ~ 0
FB7
Text GLabel 9900 7350 0    50   Input ~ 0
FB6
Text GLabel 9900 7250 0    50   Input ~ 0
FB5
Text GLabel 9900 7150 0    50   Input ~ 0
FB4
Text GLabel 9900 7050 0    50   Input ~ 0
FB3
Text GLabel 9900 6950 0    50   Input ~ 0
FB2
Text GLabel 9900 6850 0    50   Input ~ 0
FB1
Wire Wire Line
	14550 6650 14550 6750
Wire Wire Line
	14550 6750 14100 6750
Wire Wire Line
	10250 6750 10250 6650
Wire Wire Line
	10800 6650 10800 6750
Connection ~ 10800 6750
Wire Wire Line
	10800 6750 10250 6750
Wire Wire Line
	11350 6650 11350 6750
Connection ~ 11350 6750
Wire Wire Line
	11350 6750 10800 6750
Wire Wire Line
	11900 6650 11900 6750
Connection ~ 11900 6750
Wire Wire Line
	11900 6750 11350 6750
Wire Wire Line
	12450 6650 12450 6750
Connection ~ 12450 6750
Wire Wire Line
	12450 6750 11900 6750
Wire Wire Line
	13000 6650 13000 6750
Connection ~ 13000 6750
Wire Wire Line
	13000 6750 12450 6750
Wire Wire Line
	13550 6650 13550 6750
Connection ~ 13550 6750
Wire Wire Line
	13550 6750 13000 6750
Wire Wire Line
	14100 6650 14100 6750
Connection ~ 14100 6750
Wire Wire Line
	14100 6750 13550 6750
Wire Wire Line
	10050 6650 10050 6850
Wire Wire Line
	10050 6850 9900 6850
Wire Wire Line
	10600 6650 10600 6950
Wire Wire Line
	10600 6950 9900 6950
Wire Wire Line
	11150 6650 11150 7050
Wire Wire Line
	11150 7050 9900 7050
Wire Wire Line
	11700 6650 11700 7150
Wire Wire Line
	11700 7150 9900 7150
Wire Wire Line
	12250 6650 12250 7250
Wire Wire Line
	12250 7250 9900 7250
Wire Wire Line
	12800 6650 12800 7350
Wire Wire Line
	12800 7350 9900 7350
Wire Wire Line
	13350 6650 13350 7450
Wire Wire Line
	13350 7450 9900 7450
Wire Wire Line
	13900 6650 13900 7550
Wire Wire Line
	13900 7550 9900 7550
$Comp
L Device:R R32
U 1 1 61164823
P 10050 7800
F 0 "R32" H 10120 7846 50  0000 L CNN
F 1 "1k" H 10120 7755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9980 7800 50  0001 C CNN
F 3 "~" H 10050 7800 50  0001 C CNN
	1    10050 7800
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0123
U 1 1 61165405
P 14550 6650
F 0 "#PWR0123" H 14550 6500 50  0001 C CNN
F 1 "+3V3" H 14565 6823 50  0000 C CNN
F 2 "" H 14550 6650 50  0001 C CNN
F 3 "" H 14550 6650 50  0001 C CNN
	1    14550 6650
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 6116699E
P 10050 8100
F 0 "D1" V 10089 7982 50  0000 R CNN
F 1 "LED" V 9998 7982 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 10050 8100 50  0001 C CNN
F 3 "~" H 10050 8100 50  0001 C CNN
	1    10050 8100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R18
U 1 1 6116A6AA
P 6950 1550
F 0 "R18" V 7050 1650 50  0000 C CNN
F 1 "2k2" V 6950 1550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6880 1550 50  0001 C CNN
F 3 "~" H 6950 1550 50  0001 C CNN
	1    6950 1550
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 6116A6B0
P 6750 2050
F 0 "R10" V 6650 2100 50  0000 C CNN
F 1 "1k" V 6750 2050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6680 2050 50  0001 C CNN
F 3 "~" H 6750 2050 50  0001 C CNN
	1    6750 2050
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC846 Q2
U 1 1 6116A6B6
P 6900 1850
F 0 "Q2" V 6850 2000 50  0000 C CNN
F 1 "BC846" V 6900 1600 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7100 1775 50  0001 L CIN
F 3 "https://assets.nexperia.com/documents/data-sheet/BC846_SER.pdf" H 6900 1850 50  0001 L CNN
	1    6900 1850
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 6116A6BC
P 6700 1750
F 0 "#PWR0124" H 6700 1500 50  0001 C CNN
F 1 "GND" V 6705 1622 50  0000 R CNN
F 2 "" H 6700 1750 50  0001 C CNN
F 3 "" H 6700 1750 50  0001 C CNN
	1    6700 1750
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0125
U 1 1 6116A6C2
P 6800 1550
F 0 "#PWR0125" H 6800 1400 50  0001 C CNN
F 1 "VCC" V 6815 1677 50  0000 L CNN
F 2 "" H 6800 1550 50  0001 C CNN
F 3 "" H 6800 1550 50  0001 C CNN
	1    6800 1550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R19
U 1 1 6118A521
P 6950 2200
F 0 "R19" V 7050 2300 50  0000 C CNN
F 1 "2k2" V 6950 2200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6880 2200 50  0001 C CNN
F 3 "~" H 6950 2200 50  0001 C CNN
	1    6950 2200
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 6118A527
P 6750 2700
F 0 "R11" V 6650 2750 50  0000 C CNN
F 1 "1k" V 6750 2700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6680 2700 50  0001 C CNN
F 3 "~" H 6750 2700 50  0001 C CNN
	1    6750 2700
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC846 Q3
U 1 1 6118A52D
P 6900 2500
F 0 "Q3" V 6850 2650 50  0000 C CNN
F 1 "BC846" V 6900 2250 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7100 2425 50  0001 L CIN
F 3 "https://assets.nexperia.com/documents/data-sheet/BC846_SER.pdf" H 6900 2500 50  0001 L CNN
	1    6900 2500
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 6118A533
P 6700 2400
F 0 "#PWR0126" H 6700 2150 50  0001 C CNN
F 1 "GND" V 6705 2272 50  0000 R CNN
F 2 "" H 6700 2400 50  0001 C CNN
F 3 "" H 6700 2400 50  0001 C CNN
	1    6700 2400
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0127
U 1 1 6118A539
P 6800 2200
F 0 "#PWR0127" H 6800 2050 50  0001 C CNN
F 1 "VCC" V 6815 2327 50  0000 L CNN
F 2 "" H 6800 2200 50  0001 C CNN
F 3 "" H 6800 2200 50  0001 C CNN
	1    6800 2200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R20
U 1 1 611A999F
P 6950 2850
F 0 "R20" V 7050 2950 50  0000 C CNN
F 1 "2k2" V 6950 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6880 2850 50  0001 C CNN
F 3 "~" H 6950 2850 50  0001 C CNN
	1    6950 2850
	0    1    1    0   
$EndComp
$Comp
L Device:R R12
U 1 1 611A99A5
P 6750 3350
F 0 "R12" V 6650 3400 50  0000 C CNN
F 1 "1k" V 6750 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6680 3350 50  0001 C CNN
F 3 "~" H 6750 3350 50  0001 C CNN
	1    6750 3350
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC846 Q4
U 1 1 611A99AB
P 6900 3150
F 0 "Q4" V 6850 3300 50  0000 C CNN
F 1 "BC846" V 6900 2900 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7100 3075 50  0001 L CIN
F 3 "https://assets.nexperia.com/documents/data-sheet/BC846_SER.pdf" H 6900 3150 50  0001 L CNN
	1    6900 3150
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0128
U 1 1 611A99B1
P 6700 3050
F 0 "#PWR0128" H 6700 2800 50  0001 C CNN
F 1 "GND" V 6705 2922 50  0000 R CNN
F 2 "" H 6700 3050 50  0001 C CNN
F 3 "" H 6700 3050 50  0001 C CNN
	1    6700 3050
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0129
U 1 1 611A99B7
P 6800 2850
F 0 "#PWR0129" H 6800 2700 50  0001 C CNN
F 1 "VCC" V 6815 2977 50  0000 L CNN
F 2 "" H 6800 2850 50  0001 C CNN
F 3 "" H 6800 2850 50  0001 C CNN
	1    6800 2850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R21
U 1 1 611C9609
P 6950 3500
F 0 "R21" V 7050 3600 50  0000 C CNN
F 1 "2k2" V 6950 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6880 3500 50  0001 C CNN
F 3 "~" H 6950 3500 50  0001 C CNN
	1    6950 3500
	0    1    1    0   
$EndComp
$Comp
L Device:R R13
U 1 1 611C960F
P 6750 4000
F 0 "R13" V 6650 4050 50  0000 C CNN
F 1 "1k" V 6750 4000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6680 4000 50  0001 C CNN
F 3 "~" H 6750 4000 50  0001 C CNN
	1    6750 4000
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC846 Q5
U 1 1 611C9615
P 6900 3800
F 0 "Q5" V 6850 3950 50  0000 C CNN
F 1 "BC846" V 6900 3550 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7100 3725 50  0001 L CIN
F 3 "https://assets.nexperia.com/documents/data-sheet/BC846_SER.pdf" H 6900 3800 50  0001 L CNN
	1    6900 3800
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0130
U 1 1 611C961B
P 6700 3700
F 0 "#PWR0130" H 6700 3450 50  0001 C CNN
F 1 "GND" V 6705 3572 50  0000 R CNN
F 2 "" H 6700 3700 50  0001 C CNN
F 3 "" H 6700 3700 50  0001 C CNN
	1    6700 3700
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0131
U 1 1 611C9621
P 6800 3500
F 0 "#PWR0131" H 6800 3350 50  0001 C CNN
F 1 "VCC" V 6815 3627 50  0000 L CNN
F 2 "" H 6800 3500 50  0001 C CNN
F 3 "" H 6800 3500 50  0001 C CNN
	1    6800 3500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R22
U 1 1 611E9484
P 6950 4150
F 0 "R22" V 7050 4250 50  0000 C CNN
F 1 "2k2" V 6950 4150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6880 4150 50  0001 C CNN
F 3 "~" H 6950 4150 50  0001 C CNN
	1    6950 4150
	0    1    1    0   
$EndComp
$Comp
L Device:R R14
U 1 1 611E948A
P 6750 4650
F 0 "R14" V 6650 4700 50  0000 C CNN
F 1 "1k" V 6750 4650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6680 4650 50  0001 C CNN
F 3 "~" H 6750 4650 50  0001 C CNN
	1    6750 4650
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC846 Q6
U 1 1 611E9490
P 6900 4450
F 0 "Q6" V 6850 4600 50  0000 C CNN
F 1 "BC846" V 6900 4200 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7100 4375 50  0001 L CIN
F 3 "https://assets.nexperia.com/documents/data-sheet/BC846_SER.pdf" H 6900 4450 50  0001 L CNN
	1    6900 4450
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0132
U 1 1 611E9496
P 6700 4350
F 0 "#PWR0132" H 6700 4100 50  0001 C CNN
F 1 "GND" V 6705 4222 50  0000 R CNN
F 2 "" H 6700 4350 50  0001 C CNN
F 3 "" H 6700 4350 50  0001 C CNN
	1    6700 4350
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0133
U 1 1 611E949C
P 6800 4150
F 0 "#PWR0133" H 6800 4000 50  0001 C CNN
F 1 "VCC" V 6815 4277 50  0000 L CNN
F 2 "" H 6800 4150 50  0001 C CNN
F 3 "" H 6800 4150 50  0001 C CNN
	1    6800 4150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R23
U 1 1 61208980
P 6950 4800
F 0 "R23" V 7050 4900 50  0000 C CNN
F 1 "2k2" V 6950 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6880 4800 50  0001 C CNN
F 3 "~" H 6950 4800 50  0001 C CNN
	1    6950 4800
	0    1    1    0   
$EndComp
$Comp
L Device:R R15
U 1 1 61208986
P 6750 5300
F 0 "R15" V 6650 5350 50  0000 C CNN
F 1 "1k" V 6750 5300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6680 5300 50  0001 C CNN
F 3 "~" H 6750 5300 50  0001 C CNN
	1    6750 5300
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC846 Q7
U 1 1 6120898C
P 6900 5100
F 0 "Q7" V 6850 5250 50  0000 C CNN
F 1 "BC846" V 6900 4850 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7100 5025 50  0001 L CIN
F 3 "https://assets.nexperia.com/documents/data-sheet/BC846_SER.pdf" H 6900 5100 50  0001 L CNN
	1    6900 5100
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0134
U 1 1 61208992
P 6700 5000
F 0 "#PWR0134" H 6700 4750 50  0001 C CNN
F 1 "GND" V 6705 4872 50  0000 R CNN
F 2 "" H 6700 5000 50  0001 C CNN
F 3 "" H 6700 5000 50  0001 C CNN
	1    6700 5000
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0135
U 1 1 61208998
P 6800 4800
F 0 "#PWR0135" H 6800 4650 50  0001 C CNN
F 1 "VCC" V 6815 4927 50  0000 L CNN
F 2 "" H 6800 4800 50  0001 C CNN
F 3 "" H 6800 4800 50  0001 C CNN
	1    6800 4800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R24
U 1 1 61228259
P 6950 5450
F 0 "R24" V 7050 5550 50  0000 C CNN
F 1 "2k2" V 6950 5450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6880 5450 50  0001 C CNN
F 3 "~" H 6950 5450 50  0001 C CNN
	1    6950 5450
	0    1    1    0   
$EndComp
$Comp
L Device:R R16
U 1 1 6122825F
P 6750 5950
F 0 "R16" V 6650 6000 50  0000 C CNN
F 1 "1k" V 6750 5950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6680 5950 50  0001 C CNN
F 3 "~" H 6750 5950 50  0001 C CNN
	1    6750 5950
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC846 Q8
U 1 1 61228265
P 6900 5750
F 0 "Q8" V 6850 5900 50  0000 C CNN
F 1 "BC846" V 6900 5500 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7100 5675 50  0001 L CIN
F 3 "https://assets.nexperia.com/documents/data-sheet/BC846_SER.pdf" H 6900 5750 50  0001 L CNN
	1    6900 5750
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0136
U 1 1 6122826B
P 6700 5650
F 0 "#PWR0136" H 6700 5400 50  0001 C CNN
F 1 "GND" V 6705 5522 50  0000 R CNN
F 2 "" H 6700 5650 50  0001 C CNN
F 3 "" H 6700 5650 50  0001 C CNN
	1    6700 5650
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0137
U 1 1 61228271
P 6800 5450
F 0 "#PWR0137" H 6800 5300 50  0001 C CNN
F 1 "VCC" V 6815 5577 50  0000 L CNN
F 2 "" H 6800 5450 50  0001 C CNN
F 3 "" H 6800 5450 50  0001 C CNN
	1    6800 5450
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0138
U 1 1 61264843
P 10050 8250
F 0 "#PWR0138" H 10050 8000 50  0001 C CNN
F 1 "GND" H 10055 8077 50  0000 C CNN
F 2 "" H 10050 8250 50  0001 C CNN
F 3 "" H 10050 8250 50  0001 C CNN
	1    10050 8250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R35
U 1 1 612664F0
P 10600 7800
F 0 "R35" H 10670 7846 50  0000 L CNN
F 1 "1k" H 10670 7755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 10530 7800 50  0001 C CNN
F 3 "~" H 10600 7800 50  0001 C CNN
	1    10600 7800
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 612664F6
P 10600 8100
F 0 "D2" V 10639 7982 50  0000 R CNN
F 1 "LED" V 10548 7982 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 10600 8100 50  0001 C CNN
F 3 "~" H 10600 8100 50  0001 C CNN
	1    10600 8100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0139
U 1 1 612664FC
P 10600 8250
F 0 "#PWR0139" H 10600 8000 50  0001 C CNN
F 1 "GND" H 10605 8077 50  0000 C CNN
F 2 "" H 10600 8250 50  0001 C CNN
F 3 "" H 10600 8250 50  0001 C CNN
	1    10600 8250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R37
U 1 1 61285FF9
P 11150 7800
F 0 "R37" H 11220 7846 50  0000 L CNN
F 1 "1k" H 11220 7755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 11080 7800 50  0001 C CNN
F 3 "~" H 11150 7800 50  0001 C CNN
	1    11150 7800
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 61285FFF
P 11150 8100
F 0 "D3" V 11189 7982 50  0000 R CNN
F 1 "LED" V 11098 7982 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 11150 8100 50  0001 C CNN
F 3 "~" H 11150 8100 50  0001 C CNN
	1    11150 8100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0140
U 1 1 61286005
P 11150 8250
F 0 "#PWR0140" H 11150 8000 50  0001 C CNN
F 1 "GND" H 11155 8077 50  0000 C CNN
F 2 "" H 11150 8250 50  0001 C CNN
F 3 "" H 11150 8250 50  0001 C CNN
	1    11150 8250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R39
U 1 1 6128600B
P 11700 7800
F 0 "R39" H 11770 7846 50  0000 L CNN
F 1 "1k" H 11770 7755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 11630 7800 50  0001 C CNN
F 3 "~" H 11700 7800 50  0001 C CNN
	1    11700 7800
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 61286011
P 11700 8100
F 0 "D4" V 11739 7982 50  0000 R CNN
F 1 "LED" V 11648 7982 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 11700 8100 50  0001 C CNN
F 3 "~" H 11700 8100 50  0001 C CNN
	1    11700 8100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0141
U 1 1 61286017
P 11700 8250
F 0 "#PWR0141" H 11700 8000 50  0001 C CNN
F 1 "GND" H 11705 8077 50  0000 C CNN
F 2 "" H 11700 8250 50  0001 C CNN
F 3 "" H 11700 8250 50  0001 C CNN
	1    11700 8250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R41
U 1 1 612AAAA0
P 12250 7800
F 0 "R41" H 12320 7846 50  0000 L CNN
F 1 "1k" H 12320 7755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 12180 7800 50  0001 C CNN
F 3 "~" H 12250 7800 50  0001 C CNN
	1    12250 7800
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D7
U 1 1 612AAAA6
P 12250 8100
F 0 "D7" V 12289 7982 50  0000 R CNN
F 1 "LED" V 12198 7982 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 12250 8100 50  0001 C CNN
F 3 "~" H 12250 8100 50  0001 C CNN
	1    12250 8100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0142
U 1 1 612AAAAC
P 12250 8250
F 0 "#PWR0142" H 12250 8000 50  0001 C CNN
F 1 "GND" H 12255 8077 50  0000 C CNN
F 2 "" H 12250 8250 50  0001 C CNN
F 3 "" H 12250 8250 50  0001 C CNN
	1    12250 8250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R43
U 1 1 612AAAB2
P 12800 7800
F 0 "R43" H 12870 7846 50  0000 L CNN
F 1 "1k" H 12870 7755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 12730 7800 50  0001 C CNN
F 3 "~" H 12800 7800 50  0001 C CNN
	1    12800 7800
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D10
U 1 1 612AAAB8
P 12800 8100
F 0 "D10" V 12839 7982 50  0000 R CNN
F 1 "LED" V 12748 7982 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 12800 8100 50  0001 C CNN
F 3 "~" H 12800 8100 50  0001 C CNN
	1    12800 8100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0143
U 1 1 612AAABE
P 12800 8250
F 0 "#PWR0143" H 12800 8000 50  0001 C CNN
F 1 "GND" H 12805 8077 50  0000 C CNN
F 2 "" H 12800 8250 50  0001 C CNN
F 3 "" H 12800 8250 50  0001 C CNN
	1    12800 8250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R45
U 1 1 612AAAC4
P 13350 7800
F 0 "R45" H 13420 7846 50  0000 L CNN
F 1 "1k" H 13420 7755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 13280 7800 50  0001 C CNN
F 3 "~" H 13350 7800 50  0001 C CNN
	1    13350 7800
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D12
U 1 1 612AAACA
P 13350 8100
F 0 "D12" V 13389 7982 50  0000 R CNN
F 1 "LED" V 13298 7982 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 13350 8100 50  0001 C CNN
F 3 "~" H 13350 8100 50  0001 C CNN
	1    13350 8100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0144
U 1 1 612AAAD0
P 13350 8250
F 0 "#PWR0144" H 13350 8000 50  0001 C CNN
F 1 "GND" H 13355 8077 50  0000 C CNN
F 2 "" H 13350 8250 50  0001 C CNN
F 3 "" H 13350 8250 50  0001 C CNN
	1    13350 8250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R47
U 1 1 612AAAD6
P 13900 7800
F 0 "R47" H 13970 7846 50  0000 L CNN
F 1 "1k" H 13970 7755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 13830 7800 50  0001 C CNN
F 3 "~" H 13900 7800 50  0001 C CNN
	1    13900 7800
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D15
U 1 1 612AAADC
P 13900 8100
F 0 "D15" V 13939 7982 50  0000 R CNN
F 1 "LED" V 13848 7982 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 13900 8100 50  0001 C CNN
F 3 "~" H 13900 8100 50  0001 C CNN
	1    13900 8100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0145
U 1 1 612AAAE2
P 13900 8250
F 0 "#PWR0145" H 13900 8000 50  0001 C CNN
F 1 "GND" H 13905 8077 50  0000 C CNN
F 2 "" H 13900 8250 50  0001 C CNN
F 3 "" H 13900 8250 50  0001 C CNN
	1    13900 8250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 6850 10050 7650
Connection ~ 10050 6850
Wire Wire Line
	10600 6950 10600 7650
Connection ~ 10600 6950
Wire Wire Line
	11150 7050 11150 7650
Connection ~ 11150 7050
Wire Wire Line
	11700 7150 11700 7650
Connection ~ 11700 7150
Wire Wire Line
	12250 7250 12250 7650
Connection ~ 12250 7250
Wire Wire Line
	12800 7350 12800 7650
Connection ~ 12800 7350
Wire Wire Line
	13350 7450 13350 7650
Connection ~ 13350 7450
Wire Wire Line
	13900 7550 13900 7650
Connection ~ 13900 7550
$Comp
L Interface_CAN_LIN:SN65HVD232 U1
U 1 1 614370EC
P 1800 8000
F 0 "U1" H 1550 8250 50  0000 C CNN
F 1 "SN65HVD232" H 2100 8250 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 1800 7500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn65hvd230.pdf" H 1700 8400 50  0001 C CNN
	1    1800 8000
	1    0    0    -1  
$EndComp
$Comp
L Interface_UART:MAX485E U2
U 1 1 61438417
P 1800 10000
F 0 "U2" H 1550 10450 50  0000 C CNN
F 1 "MAX485E" H 2000 10450 50  0000 C CNN
F 2 "Package_SO:SO-8_3.9x4.9mm_P1.27mm" H 1800 9300 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX1487E-MAX491E.pdf" H 1800 10050 50  0001 C CNN
	1    1800 10000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J4
U 1 1 6143A4BF
P 4600 9100
F 0 "J4" H 4650 9417 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 4650 9326 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 4600 9100 50  0001 C CNN
F 3 "~" H 4600 9100 50  0001 C CNN
	1    4600 9100
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J5
U 1 1 6143CFFE
P 7550 7100
F 0 "J5" H 7600 7517 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 7600 7426 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Horizontal" H 7550 7100 50  0001 C CNN
F 3 "~" H 7550 7100 50  0001 C CNN
	1    7550 7100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 6143F3E5
P 3250 8000
F 0 "J2" H 3330 7992 50  0000 L CNN
F 1 "Conn_01x02" H 3330 7901 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3250 8000 50  0001 C CNN
F 3 "~" H 3250 8000 50  0001 C CNN
	1    3250 8000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 61440BE7
P 3250 10000
F 0 "J3" H 3330 9992 50  0000 L CNN
F 1 "Conn_01x02" H 3330 9901 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3250 10000 50  0001 C CNN
F 3 "~" H 3250 10000 50  0001 C CNN
	1    3250 10000
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AP1117-33 U4
U 1 1 61442EEB
P 4500 6050
F 0 "U4" H 4500 6292 50  0000 C CNN
F 1 "AP1117-33" H 4500 6201 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 4500 6250 50  0001 C CNN
F 3 "http://www.diodes.com/datasheets/AP1117.pdf" H 4600 5800 50  0001 C CNN
	1    4500 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 61445FB4
P 2850 8000
F 0 "R2" V 2750 8050 50  0000 C CNN
F 1 "120" V 2850 8000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2780 8000 50  0001 C CNN
F 3 "~" H 2850 8000 50  0001 C CNN
	1    2850 8000
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 61446CBF
P 2850 10000
F 0 "R3" V 2750 10050 50  0000 C CNN
F 1 "150" V 2850 10000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2780 10000 50  0001 C CNN
F 3 "~" H 2850 10000 50  0001 C CNN
	1    2850 10000
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 9900 2700 9900
Wire Wire Line
	4300 9900 4300 9200
Wire Wire Line
	2700 10000 2700 9900
Connection ~ 2700 9900
Wire Wire Line
	2700 9900 4300 9900
Wire Wire Line
	3000 10000 3050 10000
Wire Wire Line
	2200 10200 3050 10200
Wire Wire Line
	4800 10200 4800 9200
Wire Wire Line
	3050 10100 3050 10200
Connection ~ 3050 10200
Wire Wire Line
	3050 10200 4800 10200
Wire Wire Line
	2200 8000 2450 8000
Wire Wire Line
	2450 8000 2450 7850
Wire Wire Line
	2450 7850 2700 7850
Wire Wire Line
	4100 7850 4100 9000
Wire Wire Line
	4100 9000 4300 9000
Wire Wire Line
	2200 8100 2450 8100
Wire Wire Line
	2450 8100 2450 8200
Wire Wire Line
	2450 8200 3050 8200
Wire Wire Line
	5000 8200 5000 9000
Wire Wire Line
	5000 9000 4800 9000
Wire Wire Line
	3050 8000 3000 8000
Wire Wire Line
	2700 8000 2700 7850
Connection ~ 2700 7850
Wire Wire Line
	2700 7850 4100 7850
Wire Wire Line
	3050 8100 3050 8200
Connection ~ 3050 8200
Wire Wire Line
	3050 8200 5000 8200
$Comp
L power:VCC #PWR0146
U 1 1 6158EC7B
P 7950 6950
F 0 "#PWR0146" H 7950 6800 50  0001 C CNN
F 1 "VCC" V 7965 7077 50  0000 L CNN
F 2 "" H 7950 6950 50  0001 C CNN
F 3 "" H 7950 6950 50  0001 C CNN
	1    7950 6950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0147
U 1 1 6158F881
P 7950 7150
F 0 "#PWR0147" H 7950 6900 50  0001 C CNN
F 1 "GND" H 7955 6977 50  0000 C CNN
F 2 "" H 7950 7150 50  0001 C CNN
F 3 "" H 7950 7150 50  0001 C CNN
	1    7950 7150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7850 6900 7900 6900
Wire Wire Line
	7900 6900 7900 6950
Wire Wire Line
	7900 7000 7850 7000
Wire Wire Line
	7950 6950 7900 6950
Connection ~ 7900 6950
Wire Wire Line
	7900 6950 7900 7000
Wire Wire Line
	7850 7100 7900 7100
Wire Wire Line
	7900 7100 7900 7150
Wire Wire Line
	7900 7200 7850 7200
Wire Wire Line
	7950 7150 7900 7150
Connection ~ 7900 7150
Wire Wire Line
	7900 7150 7900 7200
$Comp
L power:VCC #PWR0148
U 1 1 6162456E
P 7250 6950
F 0 "#PWR0148" H 7250 6800 50  0001 C CNN
F 1 "VCC" V 7265 7077 50  0000 L CNN
F 2 "" H 7250 6950 50  0001 C CNN
F 3 "" H 7250 6950 50  0001 C CNN
	1    7250 6950
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR0149
U 1 1 61624574
P 7250 7150
F 0 "#PWR0149" H 7250 6900 50  0001 C CNN
F 1 "GND" H 7255 6977 50  0000 C CNN
F 2 "" H 7250 7150 50  0001 C CNN
F 3 "" H 7250 7150 50  0001 C CNN
	1    7250 7150
	0    1    -1   0   
$EndComp
Wire Wire Line
	7350 6900 7300 6900
Wire Wire Line
	7300 6900 7300 6950
Wire Wire Line
	7300 7000 7350 7000
Wire Wire Line
	7250 6950 7300 6950
Connection ~ 7300 6950
Wire Wire Line
	7300 6950 7300 7000
Wire Wire Line
	7350 7100 7300 7100
Wire Wire Line
	7300 7100 7300 7150
Wire Wire Line
	7300 7200 7350 7200
Wire Wire Line
	7250 7150 7300 7150
Connection ~ 7300 7150
Wire Wire Line
	7300 7150 7300 7200
Text GLabel 7350 7300 0    50   Input ~ 0
BUS+
Text GLabel 7850 7300 2    50   Input ~ 0
BUS-
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J6
U 1 1 616789F7
P 7550 7850
F 0 "J6" H 7600 8267 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 7600 8176 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Horizontal" H 7550 7850 50  0001 C CNN
F 3 "~" H 7550 7850 50  0001 C CNN
	1    7550 7850
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0150
U 1 1 616789FD
P 7950 7700
F 0 "#PWR0150" H 7950 7550 50  0001 C CNN
F 1 "VCC" V 7965 7827 50  0000 L CNN
F 2 "" H 7950 7700 50  0001 C CNN
F 3 "" H 7950 7700 50  0001 C CNN
	1    7950 7700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0151
U 1 1 61678A03
P 7950 7900
F 0 "#PWR0151" H 7950 7650 50  0001 C CNN
F 1 "GND" H 7955 7727 50  0000 C CNN
F 2 "" H 7950 7900 50  0001 C CNN
F 3 "" H 7950 7900 50  0001 C CNN
	1    7950 7900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7850 7650 7900 7650
Wire Wire Line
	7900 7650 7900 7700
Wire Wire Line
	7900 7750 7850 7750
Wire Wire Line
	7950 7700 7900 7700
Connection ~ 7900 7700
Wire Wire Line
	7900 7700 7900 7750
Wire Wire Line
	7850 7850 7900 7850
Wire Wire Line
	7900 7850 7900 7900
Wire Wire Line
	7900 7950 7850 7950
Wire Wire Line
	7950 7900 7900 7900
Connection ~ 7900 7900
Wire Wire Line
	7900 7900 7900 7950
$Comp
L power:VCC #PWR0152
U 1 1 61678A15
P 7250 7700
F 0 "#PWR0152" H 7250 7550 50  0001 C CNN
F 1 "VCC" V 7265 7827 50  0000 L CNN
F 2 "" H 7250 7700 50  0001 C CNN
F 3 "" H 7250 7700 50  0001 C CNN
	1    7250 7700
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR0153
U 1 1 61678A1B
P 7250 7900
F 0 "#PWR0153" H 7250 7650 50  0001 C CNN
F 1 "GND" H 7255 7727 50  0000 C CNN
F 2 "" H 7250 7900 50  0001 C CNN
F 3 "" H 7250 7900 50  0001 C CNN
	1    7250 7900
	0    1    -1   0   
$EndComp
Wire Wire Line
	7350 7650 7300 7650
Wire Wire Line
	7300 7650 7300 7700
Wire Wire Line
	7300 7750 7350 7750
Wire Wire Line
	7250 7700 7300 7700
Connection ~ 7300 7700
Wire Wire Line
	7300 7700 7300 7750
Wire Wire Line
	7350 7850 7300 7850
Wire Wire Line
	7300 7850 7300 7900
Wire Wire Line
	7300 7950 7350 7950
Wire Wire Line
	7250 7900 7300 7900
Connection ~ 7300 7900
Wire Wire Line
	7300 7900 7300 7950
Text GLabel 7350 8050 0    50   Input ~ 0
BUS+
Text GLabel 7850 8050 2    50   Input ~ 0
BUS-
Text GLabel 4800 9100 2    50   Input ~ 0
BUS-
Text GLabel 4300 9100 0    50   Input ~ 0
BUS+
$Comp
L power:GND #PWR0154
U 1 1 61701161
P 1800 10600
F 0 "#PWR0154" H 1800 10350 50  0001 C CNN
F 1 "GND" H 1805 10427 50  0000 C CNN
F 2 "" H 1800 10600 50  0001 C CNN
F 3 "" H 1800 10600 50  0001 C CNN
	1    1800 10600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0155
U 1 1 61701D8C
P 1800 8400
F 0 "#PWR0155" H 1800 8150 50  0001 C CNN
F 1 "GND" H 1805 8227 50  0000 C CNN
F 2 "" H 1800 8400 50  0001 C CNN
F 3 "" H 1800 8400 50  0001 C CNN
	1    1800 8400
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0156
U 1 1 6170320F
P 1800 9500
F 0 "#PWR0156" H 1800 9350 50  0001 C CNN
F 1 "+3V3" H 1815 9673 50  0000 C CNN
F 2 "" H 1800 9500 50  0001 C CNN
F 3 "" H 1800 9500 50  0001 C CNN
	1    1800 9500
	1    0    0    -1  
$EndComp
Text GLabel 2000 3900 0    50   Input ~ 0
CAN_RD
Text GLabel 2000 4000 0    50   Input ~ 0
CAN_TD
Text GLabel 2000 4100 0    50   Input ~ 0
TXD
Text GLabel 2000 4200 0    50   Input ~ 0
RXD
Text GLabel 2000 4300 0    50   Input ~ 0
DIR
NoConn ~ 2150 4600
NoConn ~ 2150 4500
NoConn ~ 2150 4400
Wire Wire Line
	2000 4300 2150 4300
Wire Wire Line
	2000 4200 2150 4200
Wire Wire Line
	2000 4100 2150 4100
Wire Wire Line
	2000 4000 2150 4000
Wire Wire Line
	2000 3900 2150 3900
Text GLabel 1250 8000 0    50   Input ~ 0
CAN_RD
Text GLabel 1250 7900 0    50   Input ~ 0
CAN_TD
Text GLabel 1250 10200 0    50   Input ~ 0
TXD
Text GLabel 1250 9900 0    50   Input ~ 0
RXD
Text GLabel 1250 10050 0    50   Input ~ 0
DIR
Wire Wire Line
	1250 7900 1400 7900
Wire Wire Line
	1250 8000 1400 8000
Wire Wire Line
	1250 9900 1400 9900
Wire Wire Line
	1250 10200 1400 10200
Wire Wire Line
	1400 10100 1350 10100
Wire Wire Line
	1350 10100 1350 10050
Wire Wire Line
	1350 10000 1400 10000
Wire Wire Line
	1250 10050 1350 10050
Connection ~ 1350 10050
Wire Wire Line
	1350 10050 1350 10000
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 61A18050
P 1550 6150
F 0 "J1" H 1468 6467 50  0000 C CNN
F 1 "Conn_01x04" H 1468 6376 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 1550 6150 50  0001 C CNN
F 3 "~" H 1550 6150 50  0001 C CNN
	1    1550 6150
	-1   0    0    -1  
$EndComp
Text GLabel 1900 6150 2    50   Input ~ 0
SWIO
Text GLabel 1900 6250 2    50   Input ~ 0
SWCLK
$Comp
L Device:C C1
U 1 1 61A78592
P 2350 6200
F 0 "C1" H 2465 6246 50  0000 L CNN
F 1 "100n" H 2465 6155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2388 6050 50  0001 C CNN
F 3 "~" H 2350 6200 50  0001 C CNN
	1    2350 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 6050 2350 6050
Wire Wire Line
	1750 6350 2350 6350
Wire Wire Line
	1750 6250 1900 6250
Wire Wire Line
	1750 6150 1900 6150
$Comp
L power:+3V3 #PWR0157
U 1 1 61702755
P 1800 7700
F 0 "#PWR0157" H 1800 7550 50  0001 C CNN
F 1 "+3V3" H 1815 7873 50  0000 C CNN
F 2 "" H 1800 7700 50  0001 C CNN
F 3 "" H 1800 7700 50  0001 C CNN
	1    1800 7700
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0158
U 1 1 61B70A83
P 2500 6050
F 0 "#PWR0158" H 2500 5900 50  0001 C CNN
F 1 "+3V3" H 2515 6223 50  0000 C CNN
F 2 "" H 2500 6050 50  0001 C CNN
F 3 "" H 2500 6050 50  0001 C CNN
	1    2500 6050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0159
U 1 1 61B715CD
P 2500 6350
F 0 "#PWR0159" H 2500 6100 50  0001 C CNN
F 1 "GND" H 2505 6177 50  0000 C CNN
F 2 "" H 2500 6350 50  0001 C CNN
F 3 "" H 2500 6350 50  0001 C CNN
	1    2500 6350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2500 6050 2350 6050
Connection ~ 2350 6050
Wire Wire Line
	2500 6350 2350 6350
Connection ~ 2350 6350
$Comp
L Device:C C3
U 1 1 61BD7D51
P 3950 6200
F 0 "C3" H 4065 6246 50  0000 L CNN
F 1 "100n" H 4065 6155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3988 6050 50  0001 C CNN
F 3 "~" H 3950 6200 50  0001 C CNN
	1    3950 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 61BD857B
P 3600 6200
F 0 "C2" H 3715 6246 50  0000 L CNN
F 1 "1µ" H 3715 6155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3638 6050 50  0001 C CNN
F 3 "~" H 3600 6200 50  0001 C CNN
	1    3600 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 61BD8BD1
P 5050 6200
F 0 "C4" H 5165 6246 50  0000 L CNN
F 1 "100n" H 5165 6155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5088 6050 50  0001 C CNN
F 3 "~" H 5050 6200 50  0001 C CNN
	1    5050 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 61BD974A
P 5450 6200
F 0 "C5" H 5565 6246 50  0000 L CNN
F 1 "1µ" H 5565 6155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5488 6050 50  0001 C CNN
F 3 "~" H 5450 6200 50  0001 C CNN
	1    5450 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 6050 3950 6050
Connection ~ 3950 6050
Wire Wire Line
	3950 6050 3600 6050
Wire Wire Line
	3600 6350 3950 6350
Connection ~ 3950 6350
Wire Wire Line
	3950 6350 4500 6350
Connection ~ 4500 6350
Wire Wire Line
	4500 6350 5050 6350
Connection ~ 5050 6350
Wire Wire Line
	5050 6350 5450 6350
Wire Wire Line
	5450 6050 5050 6050
Connection ~ 5050 6050
Wire Wire Line
	5050 6050 4800 6050
$Comp
L power:+3V3 #PWR0160
U 1 1 61C74023
P 5450 6050
F 0 "#PWR0160" H 5450 5900 50  0001 C CNN
F 1 "+3V3" H 5465 6223 50  0000 C CNN
F 2 "" H 5450 6050 50  0001 C CNN
F 3 "" H 5450 6050 50  0001 C CNN
	1    5450 6050
	1    0    0    -1  
$EndComp
Connection ~ 5450 6050
$Comp
L power:GND #PWR0161
U 1 1 61C74E13
P 4500 6350
F 0 "#PWR0161" H 4500 6100 50  0001 C CNN
F 1 "GND" H 4505 6177 50  0000 C CNN
F 2 "" H 4500 6350 50  0001 C CNN
F 3 "" H 4500 6350 50  0001 C CNN
	1    4500 6350
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0162
U 1 1 61C754E8
P 3600 6050
F 0 "#PWR0162" H 3600 5900 50  0001 C CNN
F 1 "VCC" V 3615 6177 50  0000 L CNN
F 2 "" H 3600 6050 50  0001 C CNN
F 3 "" H 3600 6050 50  0001 C CNN
	1    3600 6050
	-1   0    0    -1  
$EndComp
Connection ~ 3600 6050
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 61C7611E
P 3950 6050
F 0 "#FLG0103" H 3950 6125 50  0001 C CNN
F 1 "PWR_FLAG" H 3950 6223 50  0000 C CNN
F 2 "" H 3950 6050 50  0001 C CNN
F 3 "~" H 3950 6050 50  0001 C CNN
	1    3950 6050
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 61C7ADED
P 3950 6350
F 0 "#FLG0104" H 3950 6425 50  0001 C CNN
F 1 "PWR_FLAG" H 3950 6523 50  0000 C CNN
F 2 "" H 3950 6350 50  0001 C CNN
F 3 "~" H 3950 6350 50  0001 C CNN
	1    3950 6350
	-1   0    0    1   
$EndComp
$Comp
L Device:R R50
U 1 1 61CB34BF
P 1800 1350
F 0 "R50" V 1700 1400 50  0000 C CNN
F 1 "1k" V 1800 1350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1730 1350 50  0001 C CNN
F 3 "~" H 1800 1350 50  0001 C CNN
	1    1800 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 61CB3E61
P 1800 1750
F 0 "C8" H 1915 1796 50  0000 L CNN
F 1 "100n" H 1915 1705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1838 1600 50  0001 C CNN
F 3 "~" H 1800 1750 50  0001 C CNN
	1    1800 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0163
U 1 1 61CB4D61
P 1800 1900
F 0 "#PWR0163" H 1800 1650 50  0001 C CNN
F 1 "GND" V 1805 1772 50  0000 R CNN
F 2 "" H 1800 1900 50  0001 C CNN
F 3 "" H 1800 1900 50  0001 C CNN
	1    1800 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1500 1800 1550
Wire Wire Line
	1800 1550 2150 1550
Wire Wire Line
	2150 1550 2150 2000
Connection ~ 1800 1550
Wire Wire Line
	1800 1550 1800 1600
$Comp
L power:+3V3 #PWR0164
U 1 1 61D53635
P 1800 1200
F 0 "#PWR0164" H 1800 1050 50  0001 C CNN
F 1 "+3V3" H 1815 1373 50  0000 C CNN
F 2 "" H 1800 1200 50  0001 C CNN
F 3 "" H 1800 1200 50  0001 C CNN
	1    1800 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R51
U 1 1 61D53CB5
P 1950 2450
F 0 "R51" V 1850 2500 50  0000 C CNN
F 1 "1k" V 1950 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1880 2450 50  0001 C CNN
F 3 "~" H 1950 2450 50  0001 C CNN
	1    1950 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 61D560E9
P 1550 2450
F 0 "Y1" V 1504 2581 50  0000 L CNN
F 1 "8MHz" V 1595 2581 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_HC49-SD" H 1550 2450 50  0001 C CNN
F 3 "~" H 1550 2450 50  0001 C CNN
	1    1550 2450
	0    1    1    0   
$EndComp
$Comp
L Device:C C6
U 1 1 61D57CD4
P 1250 2300
F 0 "C6" V 998 2300 50  0000 C CNN
F 1 "100n" V 1089 2300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1288 2150 50  0001 C CNN
F 3 "~" H 1250 2300 50  0001 C CNN
	1    1250 2300
	0    1    1    0   
$EndComp
$Comp
L Device:C C7
U 1 1 61D58575
P 1250 2600
F 0 "C7" V 1502 2600 50  0000 C CNN
F 1 "100n" V 1411 2600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1288 2450 50  0001 C CNN
F 3 "~" H 1250 2600 50  0001 C CNN
	1    1250 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1400 2600 1550 2600
Wire Wire Line
	2100 2600 2100 2500
Wire Wire Line
	2100 2500 2150 2500
Connection ~ 1550 2600
Wire Wire Line
	1550 2600 1950 2600
Connection ~ 1950 2600
Wire Wire Line
	1950 2600 2100 2600
Wire Wire Line
	2150 2400 2100 2400
Wire Wire Line
	2100 2400 2100 2300
Wire Wire Line
	2100 2300 1950 2300
Connection ~ 1550 2300
Wire Wire Line
	1550 2300 1400 2300
Connection ~ 1950 2300
Wire Wire Line
	1950 2300 1550 2300
$Comp
L power:GND #PWR0165
U 1 1 61DC8091
P 1000 2450
F 0 "#PWR0165" H 1000 2200 50  0001 C CNN
F 1 "GND" V 1005 2322 50  0000 R CNN
F 2 "" H 1000 2450 50  0001 C CNN
F 3 "" H 1000 2450 50  0001 C CNN
	1    1000 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	1100 2300 1050 2300
Wire Wire Line
	1050 2300 1050 2450
Wire Wire Line
	1050 2600 1100 2600
Wire Wire Line
	1000 2450 1050 2450
Connection ~ 1050 2450
Wire Wire Line
	1050 2450 1050 2600
$Comp
L Device:C C9
U 1 1 61E3DCC4
P 3550 7250
F 0 "C9" H 3665 7296 50  0000 L CNN
F 1 "100n" H 3665 7205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3588 7100 50  0001 C CNN
F 3 "~" H 3550 7250 50  0001 C CNN
	1    3550 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 61E3E627
P 3950 7250
F 0 "C10" H 4065 7296 50  0000 L CNN
F 1 "100n" H 4065 7205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3988 7100 50  0001 C CNN
F 3 "~" H 3950 7250 50  0001 C CNN
	1    3950 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 61E3E96B
P 4350 7250
F 0 "C11" H 4465 7296 50  0000 L CNN
F 1 "100n" H 4465 7205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4388 7100 50  0001 C CNN
F 3 "~" H 4350 7250 50  0001 C CNN
	1    4350 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 61E3ED39
P 4750 7250
F 0 "C12" H 4865 7296 50  0000 L CNN
F 1 "100n" H 4865 7205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4788 7100 50  0001 C CNN
F 3 "~" H 4750 7250 50  0001 C CNN
	1    4750 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 61E3F16B
P 5150 7250
F 0 "C13" H 5265 7296 50  0000 L CNN
F 1 "100n" H 5265 7205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5188 7100 50  0001 C CNN
F 3 "~" H 5150 7250 50  0001 C CNN
	1    5150 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 61E3F57D
P 5550 7250
F 0 "C14" H 5665 7296 50  0000 L CNN
F 1 "100n" H 5665 7205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5588 7100 50  0001 C CNN
F 3 "~" H 5550 7250 50  0001 C CNN
	1    5550 7250
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR01
U 1 1 61E3F8AC
P 3550 7000
F 0 "#PWR01" H 3550 6850 50  0001 C CNN
F 1 "+3V3" H 3565 7173 50  0000 C CNN
F 2 "" H 3550 7000 50  0001 C CNN
F 3 "" H 3550 7000 50  0001 C CNN
	1    3550 7000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 61E3FF0B
P 3550 7500
F 0 "#PWR02" H 3550 7250 50  0001 C CNN
F 1 "GND" H 3555 7327 50  0000 C CNN
F 2 "" H 3550 7500 50  0001 C CNN
F 3 "" H 3550 7500 50  0001 C CNN
	1    3550 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 7000 3550 7050
Wire Wire Line
	3550 7050 3950 7050
Wire Wire Line
	5550 7050 5550 7100
Connection ~ 3550 7050
Wire Wire Line
	3550 7050 3550 7100
Wire Wire Line
	3550 7500 3550 7450
Wire Wire Line
	5550 7450 5550 7400
Connection ~ 3550 7450
Wire Wire Line
	3550 7450 3550 7400
Wire Wire Line
	5150 7400 5150 7450
Connection ~ 5150 7450
Wire Wire Line
	5150 7450 5550 7450
Wire Wire Line
	4750 7400 4750 7450
Wire Wire Line
	3550 7450 3950 7450
Connection ~ 4750 7450
Wire Wire Line
	4750 7450 5150 7450
Wire Wire Line
	4350 7400 4350 7450
Connection ~ 4350 7450
Wire Wire Line
	4350 7450 4750 7450
Wire Wire Line
	3950 7400 3950 7450
Connection ~ 3950 7450
Wire Wire Line
	3950 7450 4350 7450
Wire Wire Line
	3950 7100 3950 7050
Connection ~ 3950 7050
Wire Wire Line
	3950 7050 4350 7050
Wire Wire Line
	4350 7100 4350 7050
Connection ~ 4350 7050
Wire Wire Line
	4350 7050 4750 7050
Wire Wire Line
	4750 7100 4750 7050
Connection ~ 4750 7050
Wire Wire Line
	4750 7050 5150 7050
Wire Wire Line
	5150 7100 5150 7050
Connection ~ 5150 7050
Wire Wire Line
	5150 7050 5550 7050
$Comp
L Device:C C15
U 1 1 62124FD0
P 9850 3650
F 0 "C15" H 9965 3696 50  0000 L CNN
F 1 "100n" H 9965 3605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 9888 3500 50  0001 C CNN
F 3 "~" H 9850 3650 50  0001 C CNN
	1    9850 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND2 #PWR04
U 1 1 62125C82
P 9850 3800
F 0 "#PWR04" H 9850 3550 50  0001 C CNN
F 1 "GND2" V 9855 3672 50  0000 R CNN
F 2 "" H 9850 3800 50  0001 C CNN
F 3 "" H 9850 3800 50  0001 C CNN
	1    9850 3800
	1    0    0    -1  
$EndComp
$Comp
L power:+24V #PWR03
U 1 1 6212645E
P 9850 3500
F 0 "#PWR03" H 9850 3350 50  0001 C CNN
F 1 "+24V" H 9865 3673 50  0000 C CNN
F 2 "" H 9850 3500 50  0001 C CNN
F 3 "" H 9850 3500 50  0001 C CNN
	1    9850 3500
	1    0    0    -1  
$EndComp
$Comp
L Diode:LL4148 D19
U 1 1 60EA1319
P 10250 5350
F 0 "D19" V 10296 5270 50  0000 R CNN
F 1 "LL4148" V 10205 5270 50  0000 R CNN
F 2 "Diode_SMD:D_MiniMELF" H 10250 5175 50  0001 C CNN
F 3 "http://www.vishay.com/docs/85557/ll4148.pdf" H 10250 5350 50  0001 C CNN
	1    10250 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10250 5500 10250 5750
$Comp
L Diode:LL4148 D20
U 1 1 60EA3837
P 10800 5350
F 0 "D20" V 10846 5270 50  0000 R CNN
F 1 "LL4148" V 10755 5270 50  0000 R CNN
F 2 "Diode_SMD:D_MiniMELF" H 10800 5175 50  0001 C CNN
F 3 "http://www.vishay.com/docs/85557/ll4148.pdf" H 10800 5350 50  0001 C CNN
	1    10800 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10800 5500 10800 5750
$Comp
L Diode:LL4148 D21
U 1 1 60EA3CF3
P 11350 5350
F 0 "D21" V 11396 5270 50  0000 R CNN
F 1 "LL4148" V 11305 5270 50  0000 R CNN
F 2 "Diode_SMD:D_MiniMELF" H 11350 5175 50  0001 C CNN
F 3 "http://www.vishay.com/docs/85557/ll4148.pdf" H 11350 5350 50  0001 C CNN
	1    11350 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	11350 5500 11350 5750
$Comp
L Diode:LL4148 D22
U 1 1 60EA42EA
P 11900 5350
F 0 "D22" V 11946 5270 50  0000 R CNN
F 1 "LL4148" V 11855 5270 50  0000 R CNN
F 2 "Diode_SMD:D_MiniMELF" H 11900 5175 50  0001 C CNN
F 3 "http://www.vishay.com/docs/85557/ll4148.pdf" H 11900 5350 50  0001 C CNN
	1    11900 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	11900 5500 11900 5750
$Comp
L Diode:LL4148 D23
U 1 1 60EA49D4
P 12450 5350
F 0 "D23" V 12496 5270 50  0000 R CNN
F 1 "LL4148" V 12405 5270 50  0000 R CNN
F 2 "Diode_SMD:D_MiniMELF" H 12450 5175 50  0001 C CNN
F 3 "http://www.vishay.com/docs/85557/ll4148.pdf" H 12450 5350 50  0001 C CNN
	1    12450 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	12450 5200 12450 4900
$Comp
L Diode:LL4148 D24
U 1 1 60EA4F2A
P 13000 5350
F 0 "D24" V 13046 5270 50  0000 R CNN
F 1 "LL4148" V 12955 5270 50  0000 R CNN
F 2 "Diode_SMD:D_MiniMELF" H 13000 5175 50  0001 C CNN
F 3 "http://www.vishay.com/docs/85557/ll4148.pdf" H 13000 5350 50  0001 C CNN
	1    13000 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	13000 5500 13000 5750
$Comp
L Diode:LL4148 D25
U 1 1 60EA55F9
P 13550 5350
F 0 "D25" V 13596 5270 50  0000 R CNN
F 1 "LL4148" V 13505 5270 50  0000 R CNN
F 2 "Diode_SMD:D_MiniMELF" H 13550 5175 50  0001 C CNN
F 3 "http://www.vishay.com/docs/85557/ll4148.pdf" H 13550 5350 50  0001 C CNN
	1    13550 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	13550 5500 13550 5750
$Comp
L Diode:LL4148 D26
U 1 1 60EA5BFC
P 14100 5350
F 0 "D26" V 14146 5270 50  0000 R CNN
F 1 "LL4148" V 14055 5270 50  0000 R CNN
F 2 "Diode_SMD:D_MiniMELF" H 14100 5175 50  0001 C CNN
F 3 "http://www.vishay.com/docs/85557/ll4148.pdf" H 14100 5350 50  0001 C CNN
	1    14100 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	14100 5500 14100 5750
$EndSCHEMATC

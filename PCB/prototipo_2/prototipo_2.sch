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
L Connector:Conn_01x20_Female Widora_izq1
U 1 1 60EBA48F
P 2900 1950
F 0 "Widora_izq1" H 2928 1926 50  0000 L CNN
F 1 "Conn_01x20_Female" H 2928 1835 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x20_P2.54mm_Vertical" H 2900 1950 50  0001 C CNN
F 3 "~" H 2900 1950 50  0001 C CNN
	1    2900 1950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x20_Female Widora_der1
U 1 1 60EBD342
P 3400 2050
F 0 "Widora_der1" H 3292 825 50  0000 C CNN
F 1 "Conn_01x20_Female" H 3292 916 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x20_P2.54mm_Vertical" H 3400 2050 50  0001 C CNN
F 3 "~" H 3400 2050 50  0001 C CNN
	1    3400 2050
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0101
U 1 1 60ECDBD2
P 1000 1800
F 0 "#PWR0101" H 1000 1650 50  0001 C CNN
F 1 "+3.3V" H 1015 1973 50  0000 C CNN
F 2 "" H 1000 1800 50  0001 C CNN
F 3 "" H 1000 1800 50  0001 C CNN
	1    1000 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 60ECF0EE
P 1000 1200
F 0 "#PWR0102" H 1000 1050 50  0001 C CNN
F 1 "+5V" H 1015 1373 50  0000 C CNN
F 2 "" H 1000 1200 50  0001 C CNN
F 3 "" H 1000 1200 50  0001 C CNN
	1    1000 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 60ED1D52
P 1000 2550
F 0 "#PWR0103" H 1000 2300 50  0001 C CNN
F 1 "GND" H 1005 2377 50  0000 C CNN
F 2 "" H 1000 2550 50  0001 C CNN
F 3 "" H 1000 2550 50  0001 C CNN
	1    1000 2550
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 60ED3579
P 1000 2450
F 0 "#FLG0101" H 1000 2525 50  0001 C CNN
F 1 "PWR_FLAG" H 1000 2623 50  0000 C CNN
F 2 "" H 1000 2450 50  0001 C CNN
F 3 "~" H 1000 2450 50  0001 C CNN
	1    1000 2450
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 60ED8B4E
P 1000 1300
F 0 "#FLG0102" H 1000 1375 50  0001 C CNN
F 1 "PWR_FLAG" H 1000 1473 50  0000 C CNN
F 2 "" H 1000 1300 50  0001 C CNN
F 3 "~" H 1000 1300 50  0001 C CNN
	1    1000 1300
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 60ED9EEC
P 1000 1900
F 0 "#FLG0103" H 1000 1975 50  0001 C CNN
F 1 "PWR_FLAG" H 1000 2073 50  0000 C CNN
F 2 "" H 1000 1900 50  0001 C CNN
F 3 "~" H 1000 1900 50  0001 C CNN
	1    1000 1900
	-1   0    0    1   
$EndComp
Wire Wire Line
	1000 1800 1000 1850
Wire Wire Line
	1250 1850 1000 1850
Connection ~ 1000 1850
Wire Wire Line
	1000 1850 1000 1900
Wire Wire Line
	1000 2450 1000 2500
Wire Wire Line
	1250 2500 1000 2500
Connection ~ 1000 2500
Wire Wire Line
	1000 2500 1000 2550
Wire Wire Line
	1000 1200 1000 1250
Wire Wire Line
	1250 1250 1000 1250
Connection ~ 1000 1250
Wire Wire Line
	1000 1250 1000 1300
Text Label 1250 1250 0    50   ~ 0
5V
Text Label 1250 1850 0    50   ~ 0
3V3
Text Label 1250 2500 0    50   ~ 0
GND
Wire Wire Line
	2700 1050 2400 1050
Wire Wire Line
	2700 1150 2400 1150
Wire Wire Line
	2700 1250 2400 1250
Wire Wire Line
	2700 1350 2400 1350
Wire Wire Line
	2700 1450 2400 1450
Wire Wire Line
	2700 1550 2400 1550
Wire Wire Line
	2700 1650 2400 1650
Wire Wire Line
	2400 1750 2700 1750
Wire Wire Line
	2400 1850 2700 1850
Wire Wire Line
	2400 1950 2700 1950
Wire Wire Line
	2400 2050 2700 2050
Wire Wire Line
	2400 2150 2700 2150
Wire Wire Line
	2400 2250 2700 2250
Wire Wire Line
	2400 2350 2700 2350
Wire Wire Line
	2400 2450 2700 2450
Wire Wire Line
	2400 2550 2700 2550
Wire Wire Line
	2400 2650 2700 2650
Wire Wire Line
	2400 2750 2700 2750
Wire Wire Line
	2400 2850 2700 2850
Wire Wire Line
	2400 2950 2700 2950
Wire Wire Line
	3600 1050 3900 1050
Wire Wire Line
	3900 1150 3600 1150
Wire Wire Line
	3900 1250 3600 1250
Wire Wire Line
	3900 1350 3600 1350
Wire Wire Line
	3900 1450 3600 1450
Wire Wire Line
	3900 1550 3600 1550
Wire Wire Line
	3900 1650 3600 1650
Wire Wire Line
	3600 1750 3900 1750
Wire Wire Line
	3900 1850 3600 1850
Wire Wire Line
	3900 1950 3600 1950
Wire Wire Line
	3900 2050 3600 2050
Wire Wire Line
	3900 2150 3600 2150
Wire Wire Line
	3900 2250 3600 2250
Wire Wire Line
	3900 2350 3600 2350
Wire Wire Line
	3600 2450 3900 2450
Wire Wire Line
	3900 2550 3600 2550
Wire Wire Line
	3900 2650 3600 2650
Wire Wire Line
	3900 2750 3600 2750
Wire Wire Line
	3900 2850 3600 2850
Wire Wire Line
	3900 2950 3600 2950
Text Label 3900 1150 0    50   ~ 0
GND
Text Label 3900 2950 0    50   ~ 0
GND
Text Label 2400 2950 0    50   ~ 0
GND
Text Label 2400 1150 0    50   ~ 0
GND
Text Label 3900 1050 0    50   ~ 0
5V
Text Label 2400 1050 0    50   ~ 0
3V3
Text Label 2400 1250 0    50   ~ 0
3V3
Text Label 2400 2850 0    50   ~ 0
SDA
Text Label 2400 2550 0    50   ~ 0
SCL
$Comp
L Connector:Conn_01x06_Female Conv_lvl_izq1
U 1 1 60FA8BA0
P 1300 4350
F 0 "Conv_lvl_izq1" H 1328 4326 50  0000 L CNN
F 1 "Conn_01x06_Female" H 1328 4235 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 1300 4350 50  0001 C CNN
F 3 "~" H 1300 4350 50  0001 C CNN
	1    1300 4350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Female Conv_lvl_der1
U 1 1 60FAB588
P 1800 4450
F 0 "Conv_lvl_der1" H 1692 3925 50  0000 C CNN
F 1 "Conn_01x06_Female" H 1692 4016 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 1800 4450 50  0001 C CNN
F 3 "~" H 1800 4450 50  0001 C CNN
	1    1800 4450
	-1   0    0    1   
$EndComp
Wire Wire Line
	800  4150 1100 4150
Wire Wire Line
	800  4250 1100 4250
Wire Wire Line
	800  4350 1100 4350
Wire Wire Line
	800  4450 1100 4450
Wire Wire Line
	800  4550 1100 4550
Wire Wire Line
	800  4650 1100 4650
Wire Wire Line
	2000 4150 2300 4150
Wire Wire Line
	2300 4250 2000 4250
Wire Wire Line
	2300 4350 2000 4350
Wire Wire Line
	2300 4450 2000 4450
Wire Wire Line
	2300 4550 2000 4550
Text Label 800  4150 0    50   ~ 0
TXI1
Text Label 800  4250 0    50   ~ 0
RXO1
Text Label 800  4350 0    50   ~ 0
3V3
Text Label 800  4450 0    50   ~ 0
GND
Text Label 800  4550 0    50   ~ 0
RXO2
Text Label 800  4650 0    50   ~ 0
TXI2
Text Label 2300 4150 0    50   ~ 0
TXO1
Text Label 2300 4250 0    50   ~ 0
RXI1
Text Label 2300 4350 0    50   ~ 0
5V
Text Label 2300 4450 0    50   ~ 0
GND
Text Label 2300 4550 0    50   ~ 0
RXI2
$Comp
L Connector:Conn_01x06_Female IMU0
U 1 1 60EEACA6
P 6350 4000
F 0 "IMU0" H 6378 3976 50  0000 L CNN
F 1 "Conn_01x06_Female" H 6378 3885 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 6350 4000 50  0001 C CNN
F 3 "~" H 6350 4000 50  0001 C CNN
	1    6350 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3800 6150 3800
Wire Wire Line
	5850 3900 6150 3900
Wire Wire Line
	5850 4000 6150 4000
Wire Wire Line
	5850 4100 6150 4100
Wire Wire Line
	5850 4200 6150 4200
Wire Wire Line
	5850 4300 6150 4300
$Comp
L Connector:Conn_01x06_Female IMU1
U 1 1 60EF6149
P 7350 4000
F 0 "IMU1" H 7378 3976 50  0000 L CNN
F 1 "Conn_01x06_Female" H 7378 3885 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 7350 4000 50  0001 C CNN
F 3 "~" H 7350 4000 50  0001 C CNN
	1    7350 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 3800 7150 3800
Wire Wire Line
	6850 3900 7150 3900
Wire Wire Line
	6850 4000 7150 4000
Wire Wire Line
	6850 4100 7150 4100
Wire Wire Line
	6850 4200 7150 4200
Wire Wire Line
	6850 4300 7150 4300
$Comp
L Connector:Conn_01x06_Female IMU4
U 1 1 60F011EB
P 7350 4750
F 0 "IMU4" H 7378 4726 50  0000 L CNN
F 1 "Conn_01x06_Female" H 7378 4635 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 7350 4750 50  0001 C CNN
F 3 "~" H 7350 4750 50  0001 C CNN
	1    7350 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 4550 7150 4550
Wire Wire Line
	6850 4650 7150 4650
Wire Wire Line
	6850 4750 7150 4750
Wire Wire Line
	6850 4850 7150 4850
Wire Wire Line
	6850 4950 7150 4950
Wire Wire Line
	6850 5050 7150 5050
$Comp
L Connector:Conn_01x06_Female IMU3
U 1 1 60F0B047
P 6350 4750
F 0 "IMU3" H 6378 4726 50  0000 L CNN
F 1 "Conn_01x06_Female" H 6378 4635 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 6350 4750 50  0001 C CNN
F 3 "~" H 6350 4750 50  0001 C CNN
	1    6350 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 4550 6150 4550
Wire Wire Line
	5850 4650 6150 4650
Wire Wire Line
	5850 4750 6150 4750
Wire Wire Line
	5850 4850 6150 4850
Wire Wire Line
	5850 4950 6150 4950
Wire Wire Line
	5850 5050 6150 5050
$Comp
L Connector:Conn_01x06_Female IMU2
U 1 1 60F17D79
P 8350 4000
F 0 "IMU2" H 8378 3976 50  0000 L CNN
F 1 "Conn_01x06_Female" H 8378 3885 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 8350 4000 50  0001 C CNN
F 3 "~" H 8350 4000 50  0001 C CNN
	1    8350 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 3800 8150 3800
Wire Wire Line
	7850 3900 8150 3900
Wire Wire Line
	7850 4000 8150 4000
Wire Wire Line
	7850 4100 8150 4100
Wire Wire Line
	7850 4200 8150 4200
Wire Wire Line
	7850 4300 8150 4300
Text Label 5850 3800 0    50   ~ 0
3V3
Text Label 5850 3900 0    50   ~ 0
GND
Text Label 5850 4000 0    50   ~ 0
SD0
Text Label 5850 4100 0    50   ~ 0
SC0
Text Label 5850 4200 0    50   ~ 0
INT0
Text Label 5850 4300 0    50   ~ 0
FSYNC0
Text Label 6850 3800 0    50   ~ 0
3V3
Text Label 6850 3900 0    50   ~ 0
GND
Text Label 6850 4000 0    50   ~ 0
SD1
Text Label 6850 4100 0    50   ~ 0
SC1
Text Label 6850 4200 0    50   ~ 0
INT1
Text Label 6850 4300 0    50   ~ 0
FSYNC1
Text Label 7850 3800 0    50   ~ 0
3V3
Text Label 7850 3900 0    50   ~ 0
GND
Text Label 7850 4000 0    50   ~ 0
SD2
Text Label 7850 4100 0    50   ~ 0
SC2
Text Label 7850 4200 0    50   ~ 0
INT2
Text Label 7850 4300 0    50   ~ 0
FSYNC2
Text Label 5850 4550 0    50   ~ 0
3V3
Text Label 5850 4650 0    50   ~ 0
GND
Text Label 5850 4750 0    50   ~ 0
SD3
Text Label 5850 4850 0    50   ~ 0
SC3
Text Label 5850 4950 0    50   ~ 0
INT3
Text Label 5850 5050 0    50   ~ 0
FSYNC3
Text Label 6850 4550 0    50   ~ 0
3V3
Text Label 6850 4650 0    50   ~ 0
GND
Text Label 6850 4750 0    50   ~ 0
SD4
Text Label 6850 4850 0    50   ~ 0
SC4
Text Label 6850 4950 0    50   ~ 0
INT4
Text Label 6850 5050 0    50   ~ 0
FSYNC4
Text Notes 6300 3600 0    50   ~ 0
SENSORES DOF IMU 9255
$Comp
L Connector:Conn_01x04_Female Laser_amort_izq1
U 1 1 60F857E0
P 3750 6000
F 0 "Laser_amort_izq1" H 3778 5976 50  0000 L CNN
F 1 "Conn_01x04_Female" H 3778 5885 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 3750 6000 50  0001 C CNN
F 3 "~" H 3750 6000 50  0001 C CNN
	1    3750 6000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female Laser_amort_der1
U 1 1 60F86D3F
P 3750 6550
F 0 "Laser_amort_der1" H 3778 6526 50  0000 L CNN
F 1 "Conn_01x04_Female" H 3778 6435 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 3750 6550 50  0001 C CNN
F 3 "~" H 3750 6550 50  0001 C CNN
	1    3750 6550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female Laser_amor_delant1
U 1 1 60F87BFA
P 3750 7200
F 0 "Laser_amor_delant1" H 3778 7176 50  0000 L CNN
F 1 "Conn_01x04_Female" H 3778 7085 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 3750 7200 50  0001 C CNN
F 3 "~" H 3750 7200 50  0001 C CNN
	1    3750 7200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J12
U 1 1 60FD847D
P 4200 6000
F 0 "J12" H 4092 5675 50  0000 C CNN
F 1 "Conn_01x02_Female" H 4092 5766 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 4200 6000 50  0001 C CNN
F 3 "~" H 4200 6000 50  0001 C CNN
	1    4200 6000
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Female J14
U 1 1 60FD9BD9
P 4250 6550
F 0 "J14" H 4142 6225 50  0000 C CNN
F 1 "Conn_01x02_Female" H 4142 6316 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 4250 6550 50  0001 C CNN
F 3 "~" H 4250 6550 50  0001 C CNN
	1    4250 6550
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Female J13
U 1 1 60FDADC0
P 4200 7200
F 0 "J13" H 4092 6875 50  0000 C CNN
F 1 "Conn_01x02_Female" H 4092 6966 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 4200 7200 50  0001 C CNN
F 3 "~" H 4200 7200 50  0001 C CNN
	1    4200 7200
	-1   0    0    1   
$EndComp
Wire Wire Line
	3250 5900 3550 5900
Wire Wire Line
	3250 6000 3550 6000
Wire Wire Line
	3250 6100 3550 6100
Wire Wire Line
	3250 6200 3550 6200
Wire Wire Line
	3250 6450 3550 6450
Wire Wire Line
	3250 6550 3550 6550
Wire Wire Line
	3250 6650 3550 6650
Wire Wire Line
	3250 6750 3550 6750
Wire Wire Line
	3250 7100 3550 7100
Wire Wire Line
	3250 7200 3550 7200
Wire Wire Line
	3250 7300 3550 7300
Wire Wire Line
	3250 7400 3550 7400
Text Notes 3600 5550 0    50   ~ 0
SENSORES LASER GYVL53LOX
Text Label 3250 5900 0    50   ~ 0
3V3
Text Label 3250 6000 0    50   ~ 0
GND
Text Label 3250 6100 0    50   ~ 0
SC5
Text Label 3250 6200 0    50   ~ 0
SD5
Text Label 4700 5900 0    50   ~ 0
X5
Text Label 4700 6000 0    50   ~ 0
G5
Text Label 3250 6450 0    50   ~ 0
3V3
Text Label 3250 6550 0    50   ~ 0
GND
Text Label 3250 6650 0    50   ~ 0
SC6
Text Label 3250 6750 0    50   ~ 0
SD6
Text Label 4750 6450 0    50   ~ 0
X6
Text Label 4750 6550 0    50   ~ 0
G6
Text Label 3250 7100 0    50   ~ 0
3V3
Text Label 3250 7200 0    50   ~ 0
GND
Text Label 3250 7300 0    50   ~ 0
SC7
Text Label 3250 7400 0    50   ~ 0
SD7
Text Label 4700 7100 0    50   ~ 0
X7
Text Label 4700 7200 0    50   ~ 0
G7
$Comp
L Connector:Conn_01x03_Female Vel_delant1
U 1 1 61072C7E
P 1300 5400
F 0 "Vel_delant1" H 1328 5426 50  0000 L CNN
F 1 "Conn_01x03_Female" H 1328 5335 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 1300 5400 50  0001 C CNN
F 3 "~" H 1300 5400 50  0001 C CNN
	1    1300 5400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Female Vel_traser1
U 1 1 610742B6
P 1300 6000
F 0 "Vel_traser1" H 1328 6026 50  0000 L CNN
F 1 "Conn_01x03_Female" H 1328 5935 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 1300 6000 50  0001 C CNN
F 3 "~" H 1300 6000 50  0001 C CNN
	1    1300 6000
	1    0    0    -1  
$EndComp
Text Notes 800  5100 0    50   ~ 0
SENSORES DE VELOCIDAD
Wire Wire Line
	800  5500 1100 5500
Wire Wire Line
	1100 5400 800  5400
Wire Wire Line
	800  5300 1100 5300
Wire Wire Line
	800  6100 1100 6100
Wire Wire Line
	1100 6000 800  6000
Wire Wire Line
	800  5900 1100 5900
Text Label 800  5300 0    50   ~ 0
GND
Text Label 800  5500 0    50   ~ 0
5V
Text Label 800  5900 0    50   ~ 0
GND
Text Label 800  6100 0    50   ~ 0
5V
Text Label 800  5400 0    50   ~ 0
RXI1
Text Label 800  6000 0    50   ~ 0
RXI2
Wire Notes Line
	5600 3450 9350 3450
Text Notes 1000 3700 0    50   ~ 0
CONVERSOR DE NIVELES LÓGICOS
Wire Notes Line
	550  3450 2850 3450
Wire Notes Line
	2850 3450 2850 6350
Wire Notes Line
	2850 6350 550  6350
Wire Notes Line
	550  6350 550  3450
$Comp
L Connector:Conn_01x04_Female GPS1
U 1 1 61131714
P 1850 7050
F 0 "GPS1" H 1878 7026 50  0000 L CNN
F 1 "Conn_01x04_Female" H 1878 6935 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 1850 7050 50  0001 C CNN
F 3 "~" H 1850 7050 50  0001 C CNN
	1    1850 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 6950 1650 6950
Wire Wire Line
	1350 7050 1650 7050
Wire Wire Line
	1350 7150 1650 7150
Wire Wire Line
	1350 7250 1650 7250
Text Label 1350 6950 0    50   ~ 0
GND
Text Label 1350 7050 0    50   ~ 0
RX2
Text Label 1350 7150 0    50   ~ 0
TX2
Text Label 1350 7250 0    50   ~ 0
5V
Text Label 2400 1350 0    50   ~ 0
RX2
Text Label 2400 1450 0    50   ~ 0
TX2
Text Notes 900  7150 0    50   ~ 0
tx en gps\nrx en gps
Text Notes 1350 6750 0    50   ~ 0
MÓDULO GPS
Wire Notes Line
	550  6600 2850 6600
Wire Notes Line
	2850 6600 2850 7500
Wire Notes Line
	2850 7500 550  7500
Wire Notes Line
	550  7500 550  6600
Text Notes 2850 750  0    50   ~ 0
WIDORA AIR V6.0
Text Label 3900 2550 0    50   ~ 0
RXO2
Text Label 3900 2450 0    50   ~ 0
RXO1
Text Notes 4200 2450 0    50   ~ 0
velocidad 1
Text Notes 4200 2550 0    50   ~ 0
velocidad 2
Text Notes 1950 1350 0    50   ~ 0
Señal GPS
Text Notes 1950 1450 0    50   ~ 0
Señal GPS
Text Label 3900 1250 0    50   ~ 0
IO4
Text Notes 1900 2550 0    50   ~ 0
Multiplexor
Text Notes 1900 2850 0    50   ~ 0
Multiplexor
Text Label 2400 1550 0    50   ~ 0
HD
Text Label 2400 1650 0    50   ~ 0
WP
Text Label 2400 1750 0    50   ~ 0
CS0
Text Label 2400 1850 0    50   ~ 0
CLK
Text Label 2400 1950 0    50   ~ 0
SPIQ
Text Label 2400 2050 0    50   ~ 0
SPID
Text Label 2400 2150 0    50   ~ 0
IO5
Text Label 2400 2250 0    50   ~ 0
IO18
Text Label 2400 2350 0    50   ~ 0
IO23
Text Label 2400 2450 0    50   ~ 0
IO19
Text Label 2400 2650 0    50   ~ 0
RXD0
Text Label 2400 2750 0    50   ~ 0
TXD0
Text Label 3900 1350 0    50   ~ 0
IO0
Text Label 3900 1450 0    50   ~ 0
IO2
Text Label 3900 1550 0    50   ~ 0
IO15
Text Label 3900 1650 0    50   ~ 0
IO13
Text Label 3900 1750 0    50   ~ 0
IO12
Text Label 3900 1850 0    50   ~ 0
IO14
Text Label 3900 1950 0    50   ~ 0
IO27
Text Label 3900 2050 0    50   ~ 0
IO26
Text Label 3900 2150 0    50   ~ 0
IO25
Text Label 3900 2250 0    50   ~ 0
IO33
Text Label 3900 2350 0    50   ~ 0
IO32
Text Label 3900 2650 0    50   ~ 0
PU
Text Label 3900 2750 0    50   ~ 0
VN
Text Label 3900 2850 0    50   ~ 0
VP
$Comp
L Connector:Conn_01x20_Female Widora_aux_der1
U 1 1 611AA77A
P 6050 2000
F 0 "Widora_aux_der1" H 5942 775 50  0000 C CNN
F 1 "Conn_01x20_Female" H 5942 866 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x20_P2.54mm_Vertical" H 6050 2000 50  0001 C CNN
F 3 "~" H 6050 2000 50  0001 C CNN
	1    6050 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	6250 1000 6550 1000
Wire Wire Line
	6550 1100 6250 1100
Wire Wire Line
	6550 1200 6250 1200
Wire Wire Line
	6550 1300 6250 1300
Wire Wire Line
	6550 1400 6250 1400
Wire Wire Line
	6550 1500 6250 1500
Wire Wire Line
	6550 1600 6250 1600
Wire Wire Line
	6250 1700 6550 1700
Wire Wire Line
	6550 1800 6250 1800
Wire Wire Line
	6550 1900 6250 1900
Wire Wire Line
	6550 2000 6250 2000
Wire Wire Line
	6550 2100 6250 2100
Wire Wire Line
	6550 2200 6250 2200
Wire Wire Line
	6550 2300 6250 2300
Wire Wire Line
	6250 2400 6550 2400
Wire Wire Line
	6550 2500 6250 2500
Wire Wire Line
	6550 2600 6250 2600
Wire Wire Line
	6550 2700 6250 2700
Wire Wire Line
	6550 2800 6250 2800
Wire Wire Line
	6550 2900 6250 2900
Text Label 6550 1100 0    50   ~ 0
GND
Text Label 6550 2900 0    50   ~ 0
GND
Text Label 6550 1000 0    50   ~ 0
5V
Text Label 6550 2500 0    50   ~ 0
RXO2
Text Label 6550 2400 0    50   ~ 0
RXO1
Text Label 6550 1200 0    50   ~ 0
IO4
Text Label 6550 1300 0    50   ~ 0
IO0
Text Label 6550 1400 0    50   ~ 0
IO2
Text Label 6550 1500 0    50   ~ 0
IO15
Text Label 6550 1600 0    50   ~ 0
IO13
Text Label 6550 1700 0    50   ~ 0
IO12
Text Label 6550 1800 0    50   ~ 0
IO14
Text Label 6550 1900 0    50   ~ 0
IO27
Text Label 6550 2000 0    50   ~ 0
IO26
Text Label 6550 2100 0    50   ~ 0
IO25
Text Label 6550 2200 0    50   ~ 0
IO33
Text Label 6550 2300 0    50   ~ 0
IO32
Text Label 6550 2600 0    50   ~ 0
PU
Text Label 6550 2700 0    50   ~ 0
VN
Text Label 6550 2800 0    50   ~ 0
VP
$Comp
L Connector:Conn_01x20_Female Widora_aux_izq1
U 1 1 611BC8C7
P 5850 1900
F 0 "Widora_aux_izq1" H 5878 1876 50  0000 L CNN
F 1 "Conn_01x20_Female" H 5878 1785 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x20_P2.54mm_Vertical" H 5850 1900 50  0001 C CNN
F 3 "~" H 5850 1900 50  0001 C CNN
	1    5850 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 1000 5350 1000
Wire Wire Line
	5650 1100 5350 1100
Wire Wire Line
	5650 1200 5350 1200
Wire Wire Line
	5650 1300 5350 1300
Wire Wire Line
	5650 1400 5350 1400
Wire Wire Line
	5650 1500 5350 1500
Wire Wire Line
	5650 1600 5350 1600
Wire Wire Line
	5350 1700 5650 1700
Wire Wire Line
	5350 1800 5650 1800
Wire Wire Line
	5350 1900 5650 1900
Wire Wire Line
	5350 2000 5650 2000
Wire Wire Line
	5350 2100 5650 2100
Wire Wire Line
	5350 2200 5650 2200
Wire Wire Line
	5350 2300 5650 2300
Wire Wire Line
	5350 2400 5650 2400
Wire Wire Line
	5350 2500 5650 2500
Wire Wire Line
	5350 2600 5650 2600
Wire Wire Line
	5350 2700 5650 2700
Wire Wire Line
	5350 2800 5650 2800
Wire Wire Line
	5350 2900 5650 2900
Text Label 5350 2900 0    50   ~ 0
GND
Text Label 5350 1100 0    50   ~ 0
GND
Text Label 5350 1000 0    50   ~ 0
3V3
Text Label 5350 1200 0    50   ~ 0
3V3
Text Label 5350 2800 0    50   ~ 0
SDA
Text Label 5350 2500 0    50   ~ 0
SCL
Text Label 5350 1300 0    50   ~ 0
RX2
Text Label 5350 1400 0    50   ~ 0
TX2
Text Label 5350 1500 0    50   ~ 0
HD
Text Label 5350 1600 0    50   ~ 0
WP
Text Label 5350 1700 0    50   ~ 0
CS0
Text Label 5350 1800 0    50   ~ 0
CLK
Text Label 5350 1900 0    50   ~ 0
SPIQ
Text Label 5350 2000 0    50   ~ 0
SPID
Text Label 5350 2100 0    50   ~ 0
IO5
Text Label 5350 2200 0    50   ~ 0
IO18
Text Label 5350 2300 0    50   ~ 0
IO23
Text Label 5350 2400 0    50   ~ 0
IO19
Text Label 5350 2600 0    50   ~ 0
RXD0
Text Label 5350 2700 0    50   ~ 0
TXD0
Text Notes 5550 750  0    50   ~ 0
PINES PARALELOS A LA WIDORA
Wire Notes Line
	5150 600  7000 600 
Wire Notes Line
	7000 600  7000 3050
Wire Notes Line
	7000 3050 5150 3050
Wire Notes Line
	5150 3050 5150 600 
Wire Notes Line
	1750 600  4900 600 
Wire Notes Line
	4900 600  4900 3050
Wire Notes Line
	4900 3050 1750 3050
Wire Notes Line
	1750 3050 1750 600 
$Comp
L Device:LED D1
U 1 1 6128D24B
P 7850 1050
F 0 "D1" H 7843 795 50  0000 C CNN
F 1 "LED" H 7843 886 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 7850 1050 50  0001 C CNN
F 3 "~" H 7850 1050 50  0001 C CNN
	1    7850 1050
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D2
U 1 1 6128E48D
P 7850 1550
F 0 "D2" H 7843 1295 50  0000 C CNN
F 1 "LED" H 7843 1386 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 7850 1550 50  0001 C CNN
F 3 "~" H 7850 1550 50  0001 C CNN
	1    7850 1550
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D3
U 1 1 6128EE6E
P 7850 2050
F 0 "D3" H 7843 1795 50  0000 C CNN
F 1 "LED" H 7843 1886 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 7850 2050 50  0001 C CNN
F 3 "~" H 7850 2050 50  0001 C CNN
	1    7850 2050
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 6129D872
P 8450 1050
F 0 "R1" V 8243 1050 50  0000 C CNN
F 1 "220" V 8334 1050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 8380 1050 50  0001 C CNN
F 3 "~" H 8450 1050 50  0001 C CNN
	1    8450 1050
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 6129E10F
P 8450 1550
F 0 "R2" V 8243 1550 50  0000 C CNN
F 1 "220" V 8334 1550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 8380 1550 50  0001 C CNN
F 3 "~" H 8450 1550 50  0001 C CNN
	1    8450 1550
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 6129E7C7
P 8450 2050
F 0 "R3" V 8243 2050 50  0000 C CNN
F 1 "220" V 8334 2050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 8380 2050 50  0001 C CNN
F 3 "~" H 8450 2050 50  0001 C CNN
	1    8450 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	8000 1050 8300 1050
Wire Wire Line
	8000 1550 8300 1550
Wire Wire Line
	8000 2050 8300 2050
Wire Wire Line
	7700 1050 7400 1050
Wire Wire Line
	7700 1550 7400 1550
Wire Wire Line
	7700 2050 7400 2050
Wire Wire Line
	8900 1050 8600 1050
Wire Wire Line
	8900 1550 8600 1550
Wire Wire Line
	8900 2050 8600 2050
$Comp
L power:GND #PWR0104
U 1 1 613C111B
P 8900 2050
F 0 "#PWR0104" H 8900 1800 50  0001 C CNN
F 1 "GND" H 8905 1877 50  0000 C CNN
F 2 "" H 8900 2050 50  0001 C CNN
F 3 "" H 8900 2050 50  0001 C CNN
	1    8900 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 613D0F18
P 8900 1550
F 0 "#PWR0105" H 8900 1300 50  0001 C CNN
F 1 "GND" H 8905 1377 50  0000 C CNN
F 2 "" H 8900 1550 50  0001 C CNN
F 3 "" H 8900 1550 50  0001 C CNN
	1    8900 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 613DFBF9
P 8900 1050
F 0 "#PWR0106" H 8900 800 50  0001 C CNN
F 1 "GND" H 8905 877 50  0000 C CNN
F 2 "" H 8900 1050 50  0001 C CNN
F 3 "" H 8900 1050 50  0001 C CNN
	1    8900 1050
	1    0    0    -1  
$EndComp
Text Label 7400 1050 0    50   ~ 0
IO15
Text Label 7400 1550 0    50   ~ 0
IO13
Text Label 7400 2050 0    50   ~ 0
IO12
Text Notes 9150 1100 0    50   ~ 0
Falla en algún sensor
Text Notes 9150 1600 0    50   ~ 0
Falla en envio de datos
Text Notes 9150 2100 0    50   ~ 0
Falla en setup
Text Notes 7400 700  0    50   ~ 0
LEDS DE ESTADO
Wire Notes Line
	7250 2900 10200 2900
Wire Notes Line
	10200 600  7250 600 
Wire Notes Line
	3000 5150 3000 3450
Wire Notes Line
	5450 5150 3000 5150
Wire Notes Line
	5450 3450 5450 5150
Wire Notes Line
	3000 3450 5450 3450
Text Notes 3700 3550 0    50   ~ 0
MULTIPLEXOR TCA9548A
Text Label 5050 4950 0    50   ~ 0
SD2
Text Label 5050 4850 0    50   ~ 0
SC2
Text Label 5050 4750 0    50   ~ 0
SD3
Text Label 5050 4650 0    50   ~ 0
SC3
Text Label 5050 4550 0    50   ~ 0
SD4
Text Label 5050 4450 0    50   ~ 0
SC4
Text Label 5050 4350 0    50   ~ 0
SD5
Text Label 5050 4250 0    50   ~ 0
SC5
Text Label 5050 4150 0    50   ~ 0
SD6
Text Label 5050 4050 0    50   ~ 0
SC6
Text Label 5050 3950 0    50   ~ 0
SD7
Text Label 5050 3850 0    50   ~ 0
SC7
Text Label 3250 4950 0    50   ~ 0
SC1
Text Label 3250 4850 0    50   ~ 0
SD1
Text Label 3250 4750 0    50   ~ 0
SC0
Text Label 3250 4650 0    50   ~ 0
SD0
Text Label 3250 4550 0    50   ~ 0
A2
Text Label 3250 4450 0    50   ~ 0
A1
Text Label 3250 4350 0    50   ~ 0
A0
Text Label 3250 4250 0    50   ~ 0
RST
Text Label 3250 4150 0    50   ~ 0
SCL
Text Label 3250 4050 0    50   ~ 0
SDA
Text Label 3250 3950 0    50   ~ 0
GND
Text Label 3250 3850 0    50   ~ 0
3V3
Wire Wire Line
	3250 4950 3550 4950
Wire Wire Line
	3250 4850 3550 4850
Wire Wire Line
	3250 4750 3550 4750
Wire Wire Line
	3250 4650 3550 4650
Wire Wire Line
	3250 4250 3550 4250
Wire Wire Line
	3550 4150 3250 4150
Wire Wire Line
	3550 4050 3250 4050
Wire Wire Line
	3550 3950 3250 3950
Wire Wire Line
	3550 3850 3250 3850
Wire Wire Line
	5050 4950 4750 4950
Wire Wire Line
	5050 4850 4750 4850
Wire Wire Line
	5050 4750 4750 4750
Wire Wire Line
	5050 4650 4750 4650
Wire Wire Line
	5050 4550 4750 4550
Wire Wire Line
	5050 4450 4750 4450
Wire Wire Line
	4750 4350 5050 4350
Wire Wire Line
	5050 4250 4750 4250
Wire Wire Line
	5050 4150 4750 4150
Wire Wire Line
	5050 4050 4750 4050
Wire Wire Line
	5050 3950 4750 3950
Wire Wire Line
	5050 3850 4750 3850
$Comp
L Connector:Conn_01x12_Female Mux_der1
U 1 1 60F93223
P 4550 4450
F 0 "Mux_der1" H 4442 3625 50  0000 C CNN
F 1 "Conn_01x12_Female" H 4442 3716 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x12_P2.54mm_Vertical" H 4550 4450 50  0001 C CNN
F 3 "~" H 4550 4450 50  0001 C CNN
	1    4550 4450
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x12_Female Mux_izq1
U 1 1 60F8F88D
P 3750 4350
F 0 "Mux_izq1" H 3778 4326 50  0000 L CNN
F 1 "Conn_01x12_Female" H 3778 4235 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x12_P2.54mm_Vertical" H 3750 4350 50  0001 C CNN
F 3 "~" H 3750 4350 50  0001 C CNN
	1    3750 4350
	1    0    0    -1  
$EndComp
Wire Notes Line
	1550 600  1550 3050
Wire Notes Line
	1550 3050 600  3050
Wire Notes Line
	600  3050 600  600 
Wire Notes Line
	600  600  1550 600 
Text Notes 850  750  0    50   ~ 0
ALIMENTACIÓN
Wire Notes Line
	5600 3450 5600 5150
Wire Notes Line
	5600 5150 9350 5150
Wire Notes Line
	9350 5150 9350 3450
Wire Notes Line
	5450 5300 5450 7500
Wire Notes Line
	5450 5300 3000 5300
Wire Notes Line
	3000 5300 3000 7500
Wire Notes Line
	3000 7500 5450 7500
Wire Wire Line
	2300 4650 2000 4650
Text Label 2300 4650 0    50   ~ 0
TXO2
$Comp
L power:GND #PWR0107
U 1 1 6167E137
P 3100 4550
F 0 "#PWR0107" H 3100 4300 50  0001 C CNN
F 1 "GND" H 3105 4377 50  0000 C CNN
F 2 "" H 3100 4550 50  0001 C CNN
F 3 "" H 3100 4550 50  0001 C CNN
	1    3100 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 4550 3550 4550
Wire Wire Line
	3100 4450 3100 4550
Wire Wire Line
	3100 4450 3550 4450
Connection ~ 3100 4550
Wire Wire Line
	3100 4350 3100 4450
Wire Wire Line
	3100 4350 3550 4350
Connection ~ 3100 4450
NoConn ~ 2000 4150
NoConn ~ 2000 4650
NoConn ~ 1100 4150
NoConn ~ 1100 4650
Wire Wire Line
	4700 6000 4400 6000
Wire Wire Line
	4700 5900 4400 5900
Wire Wire Line
	4750 6550 4450 6550
Wire Wire Line
	4750 6450 4450 6450
Wire Wire Line
	4700 7200 4400 7200
Wire Wire Line
	4700 7100 4400 7100
NoConn ~ 4400 5900
NoConn ~ 4400 6000
NoConn ~ 4450 6450
NoConn ~ 4450 6550
NoConn ~ 4400 7100
NoConn ~ 4400 7200
NoConn ~ 3550 4250
NoConn ~ 6150 5050
NoConn ~ 6150 4950
NoConn ~ 7150 5050
NoConn ~ 7150 4950
NoConn ~ 6150 4300
NoConn ~ 6150 4200
NoConn ~ 7150 4300
NoConn ~ 7150 4200
NoConn ~ 8150 4300
NoConn ~ 8150 4200
$Comp
L Connector:Conn_01x02_Female ALIMENTACION1
U 1 1 60F5A07D
P 8250 2650
F 0 "ALIMENTACION1" H 8278 2626 50  0000 L CNN
F 1 "Conn_01x02_Female" H 8278 2535 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 8250 2650 50  0001 C CNN
F 3 "~" H 8250 2650 50  0001 C CNN
	1    8250 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 2650 7750 2650
Wire Wire Line
	8050 2750 7750 2750
Text Label 7750 2650 0    50   ~ 0
3V3
Text Label 7750 2750 0    50   ~ 0
GND
Wire Notes Line
	7250 600  7250 2900
Wire Notes Line
	10200 600  10200 2900
$EndSCHEMATC

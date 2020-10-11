EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 5650 1200 1    50   Output ~ 0
+3.3V
Text HLabel 5700 6250 3    50   Output ~ 0
GND
Text HLabel 2550 2050 0    50   BiDi ~ 0
A
Text HLabel 2550 2550 0    50   BiDi ~ 0
B
Text HLabel 2550 3050 0    50   BiDi ~ 0
Cin
Text HLabel 2550 4950 0    50   Input ~ 0
S
Text HLabel 2550 5500 0    50   Input ~ 0
Cout
Text HLabel 7200 1200 1    50   Input ~ 0
VCC
$Comp
L power:VCC #PWR0103
U 1 1 5F89FB04
P 9450 1200
F 0 "#PWR0103" H 9450 1050 50  0001 C CNN
F 1 "VCC" H 9465 1373 50  0000 C CNN
F 2 "" H 9450 1200 50  0001 C CNN
F 3 "" H 9450 1200 50  0001 C CNN
	1    9450 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 1600 9450 1200
Wire Wire Line
	7200 1200 7200 1600
$Comp
L power:GND #PWR0104
U 1 1 5F8A1A69
P 9450 6200
F 0 "#PWR0104" H 9450 5950 50  0001 C CNN
F 1 "GND" H 9455 6027 50  0000 C CNN
F 2 "" H 9450 6200 50  0001 C CNN
F 3 "" H 9450 6200 50  0001 C CNN
	1    9450 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 5850 9450 5850
Wire Wire Line
	9450 5850 9450 6200
Wire Wire Line
	7200 1600 9450 1600
Text HLabel 7250 6250 3    50   Input ~ 0
GND
Wire Wire Line
	7250 5850 7250 6250
$EndSCHEMATC

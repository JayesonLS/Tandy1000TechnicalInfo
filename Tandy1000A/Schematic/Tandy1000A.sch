EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "Tandy 1000A Mainboard"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Intel:8088 U28
U 1 1 601D145D
P 3850 3050
F 0 "U28" H 3850 5121 50  0000 C CNN
F 1 "8088" H 3850 5030 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm" H 3850 5121 50  0001 C CIN
F 3 "http://datasheets.chipdb.org/Intel/x86/808x/datashts/8088/231456-006.pdf" H 3850 5030 50  0001 C CNN
F 4 "U64" H 3850 4939 50  0000 C CNN "1000 Ref"
	1    3850 3050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U13
U 6 1 601D5819
P 4950 5950
F 0 "U13" H 4950 6267 50  0000 C CNN
F 1 "74LS04" H 4950 6176 50  0000 C CNN
F 2 "" H 4950 5950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 4950 5950 50  0001 C CNN
	6    4950 5950
	1    0    0    -1  
$EndComp
Text GLabel 3050 1950 0    50   Input ~ 0
RESET
Wire Wire Line
	3150 1950 3050 1950
Text GLabel 4550 5950 0    50   Input ~ 0
RESET
Wire Wire Line
	4650 5950 4550 5950
$Comp
L 74xx:74LS08 U16
U 3 1 601D9211
P 5750 5650
F 0 "U16" H 5750 5975 50  0000 C CNN
F 1 "74LS08" H 5750 5884 50  0000 C CNN
F 2 "" H 5750 5650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 5750 5650 50  0001 C CNN
	3    5750 5650
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push S1
U 1 1 601DCDCC
P 1200 7100
F 0 "S1" V 1246 7052 50  0000 R CNN
F 1 "RESET" V 1155 7052 50  0000 R CNN
F 2 "" H 1200 7300 50  0001 C CNN
F 3 "~" H 1200 7300 50  0001 C CNN
	1    1200 7100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 601DDDDC
P 1200 7400
F 0 "#PWR?" H 1200 7150 50  0001 C CNN
F 1 "GND" H 1205 7227 50  0000 C CNN
F 2 "" H 1200 7400 50  0001 C CNN
F 3 "" H 1200 7400 50  0001 C CNN
	1    1200 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 7400 1200 7300
$Comp
L Device:R R6
U 1 1 601DE67A
P 1200 6650
F 0 "R6" H 1270 6696 50  0000 L CNN
F 1 "10K" H 1270 6605 50  0000 L CNN
F 2 "" V 1130 6650 50  0001 C CNN
F 3 "~" H 1200 6650 50  0001 C CNN
	1    1200 6650
	1    0    0    -1  
$EndComp
$Comp
L pspice:DIODE CR2
U 1 1 601DF23D
P 1750 6600
F 0 "CR2" V 1796 6472 50  0000 R CNN
F 1 "1N4148" V 1705 6472 50  0000 R CNN
F 2 "" H 1750 6600 50  0001 C CNN
F 3 "~" H 1750 6600 50  0001 C CNN
	1    1750 6600
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C25
U 1 1 601E06A8
P 1750 7150
F 0 "C25" H 1868 7196 50  0000 L CNN
F 1 "22uF (measured in circuit)" H 1868 7105 50  0000 L CNN
F 2 "" H 1788 7000 50  0001 C CNN
F 3 "~" H 1750 7150 50  0001 C CNN
	1    1750 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 601E17C2
P 1750 7400
F 0 "#PWR?" H 1750 7150 50  0001 C CNN
F 1 "GND" H 1755 7227 50  0000 C CNN
F 2 "" H 1750 7400 50  0001 C CNN
F 3 "" H 1750 7400 50  0001 C CNN
	1    1750 7400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 601E1D19
P 1200 6250
F 0 "#PWR?" H 1200 6100 50  0001 C CNN
F 1 "+5V" H 1215 6423 50  0000 C CNN
F 2 "" H 1200 6250 50  0001 C CNN
F 3 "" H 1200 6250 50  0001 C CNN
	1    1200 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 6800 1200 6850
Wire Wire Line
	1200 6850 1750 6850
Wire Wire Line
	1750 6850 1750 7000
Connection ~ 1200 6850
Wire Wire Line
	1200 6850 1200 6900
Wire Wire Line
	1750 6850 1850 6850
Connection ~ 1750 6850
Wire Wire Line
	1200 6500 1200 6350
Wire Wire Line
	1750 6400 1750 6350
Wire Wire Line
	1750 6350 1200 6350
Connection ~ 1200 6350
Wire Wire Line
	1200 6350 1200 6250
Wire Wire Line
	1750 7300 1750 7400
Wire Wire Line
	1750 6800 1750 6850
Text GLabel 1850 6850 2    50   Input ~ 0
_RESET_IN*
$Comp
L Connector_Generic:Conn_02x20_Counter_Clockwise U25
U 1 1 601E81E8
P 6950 2850
F 0 "U25" H 7000 3967 50  0000 C CNN
F 1 "VC2587/8079011 Custom" H 7000 3876 50  0000 C CNN
F 2 "" H 6950 2850 50  0001 C CNN
F 3 "~" H 6950 2850 50  0001 C CNN
	1    6950 2850
	1    0    0    -1  
$EndComp
Text GLabel 7350 3850 2    50   Input ~ 0
_RESET_IN*
Wire Wire Line
	7350 3850 7250 3850
$Comp
L power:GND #PWR?
U 1 1 601EC0C8
P 6650 3950
F 0 "#PWR?" H 6650 3700 50  0001 C CNN
F 1 "GND" H 6655 3777 50  0000 C CNN
F 2 "" H 6650 3950 50  0001 C CNN
F 3 "" H 6650 3950 50  0001 C CNN
	1    6650 3950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 601EC944
P 7550 1850
F 0 "#PWR?" H 7550 1700 50  0001 C CNN
F 1 "+5V" H 7565 2023 50  0000 C CNN
F 2 "" H 7550 1850 50  0001 C CNN
F 3 "" H 7550 1850 50  0001 C CNN
	1    7550 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 1950 7550 1950
Wire Wire Line
	7550 1950 7550 1850
Wire Wire Line
	6750 3850 6650 3850
Wire Wire Line
	6650 3850 6650 3950
$Comp
L 74xx:74LS244 U41
U 1 1 601EE66D
P 10150 4200
F 0 "U41" H 10150 5271 50  0000 C CNN
F 1 "74LS244" H 10150 5180 50  0000 C CNN
F 2 "" H 10150 4200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls244.pdf" H 10150 4200 50  0001 C CNN
F 4 "U82" H 10150 5089 50  0000 C CNN "1000 Ref"
	1    10150 4200
	1    0    0    -1  
$EndComp
Text GLabel 3050 1550 0    50   Input ~ 0
CPUCLK
Text GLabel 9550 3800 0    50   Input ~ 0
CPUCLK
Wire Wire Line
	9650 3800 9550 3800
Wire Wire Line
	3150 1550 3050 1550
Wire Wire Line
	9650 4000 9550 4000
Text GLabel 9550 4000 0    50   Input ~ 0
14MCK
$Comp
L Device:R R22
U 1 1 601F1573
P 10900 3800
F 0 "R22" V 10850 3650 50  0000 C CNN
F 1 "47R" V 10900 3800 50  0000 C CNN
F 2 "" V 10830 3800 50  0001 C CNN
F 3 "~" H 10900 3800 50  0001 C CNN
	1    10900 3800
	0    1    1    0   
$EndComp
$Comp
L Device:R R27
U 1 1 601F1F22
P 10900 4000
F 0 "R27" V 10850 3850 50  0000 C CNN
F 1 "47R" V 10900 4000 50  0000 C CNN
F 2 "" V 10830 4000 50  0001 C CNN
F 3 "~" H 10900 4000 50  0001 C CNN
	1    10900 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	10750 3800 10650 3800
Wire Wire Line
	10650 4000 10750 4000
Wire Wire Line
	11050 3800 11150 3800
Wire Wire Line
	11050 4000 11150 4000
Text GLabel 11150 3800 2    50   Input ~ 0
CLK
Text GLabel 11150 4000 2    50   Input ~ 0
OSC
$Comp
L power:GND #PWR?
U 1 1 601F58FE
P 9550 4800
F 0 "#PWR?" H 9550 4550 50  0001 C CNN
F 1 "GND" H 9555 4627 50  0000 C CNN
F 2 "" H 9550 4800 50  0001 C CNN
F 3 "" H 9550 4800 50  0001 C CNN
	1    9550 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 4600 9550 4600
Wire Wire Line
	9550 4600 9550 4700
Wire Wire Line
	9650 4700 9550 4700
Connection ~ 9550 4700
Wire Wire Line
	9550 4700 9550 4800
Text GLabel 7350 3350 2    50   Input ~ 0
CPUCLK
Text GLabel 7350 3450 2    50   Input ~ 0
_14MCKX
Wire Wire Line
	7350 3350 7250 3350
Wire Wire Line
	7250 3450 7350 3450
Wire Wire Line
	3150 1750 3050 1750
Text GLabel 3050 1750 0    50   Input ~ 0
CPUREADY
Wire Wire Line
	6750 2350 6650 2350
Text GLabel 6450 3750 0    50   Input ~ 0
_14MCKX
Wire Wire Line
	6750 3750 6550 3750
$Comp
L 74xx:74LS244 U26
U 1 1 601F9DED
P 10150 2100
F 0 "U26" H 10150 3081 50  0000 C CNN
F 1 "74LS244" H 10150 2990 50  0000 C CNN
F 2 "" H 10150 2100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls244.pdf" H 10150 2100 50  0001 C CNN
	1    10150 2100
	1    0    0    -1  
$EndComp
Text GLabel 6650 2350 0    50   Input ~ 0
CPUREADY
Text GLabel 6650 3350 0    50   Input ~ 0
READY
Wire Wire Line
	6750 3350 6650 3350
Text GLabel 10750 2100 2    50   Input ~ 0
IOW*
Text GLabel 10750 2000 2    50   Input ~ 0
IOR*
Text GLabel 10750 1800 2    50   Input ~ 0
MEMW*
Text GLabel 10750 1900 2    50   Input ~ 0
MEMR*
Wire Wire Line
	10750 1800 10650 1800
Wire Wire Line
	10750 1900 10650 1900
Wire Wire Line
	10750 2000 10650 2000
Wire Wire Line
	10650 2100 10750 2100
Wire Wire Line
	10750 2300 10650 2300
Text GLabel 9550 2100 0    50   Input ~ 0
_IOWX*
Text GLabel 9550 1800 0    50   Input ~ 0
_MEMWX*
Wire Wire Line
	9650 1800 9550 1800
Wire Wire Line
	9650 2100 9550 2100
Text GLabel 9550 1900 0    50   Input ~ 0
_MEMRX*
Text GLabel 9550 2000 0    50   Input ~ 0
_IORX*
Text GLabel 10750 2300 2    50   Input ~ 0
ALE
Text GLabel 9550 2300 0    50   Input ~ 0
_ALEX
Wire Wire Line
	9650 1900 9550 1900
Wire Wire Line
	9550 2000 9650 2000
Wire Wire Line
	9650 2300 9550 2300
Text GLabel 6650 3050 0    50   Input ~ 0
_IOWX*
Text GLabel 6650 3150 0    50   Input ~ 0
_IORX*
Text GLabel 6650 2450 0    50   Input ~ 0
_ALEX
Text GLabel 6650 2950 0    50   Input ~ 0
_MEMWX*
Text GLabel 6650 2750 0    50   Input ~ 0
_MEMRX*
Wire Wire Line
	6750 2450 6650 2450
Wire Wire Line
	6650 2750 6750 2750
Wire Wire Line
	6750 2950 6650 2950
Wire Wire Line
	6650 3050 6750 3050
Wire Wire Line
	6750 3150 6650 3150
Wire Wire Line
	9650 2500 9550 2500
Wire Wire Line
	9550 2500 9550 2600
Wire Wire Line
	9650 2600 9550 2600
Connection ~ 9550 2600
Text GLabel 6650 1950 0    50   Input ~ 0
_2.37MHz50%DC
Text GLabel 6650 2050 0    50   Input ~ 0
_1.19MHz50%DC
Text GLabel 6650 2150 0    50   Input ~ 0
_RESET_OUT
Wire Wire Line
	6750 1950 6650 1950
Wire Wire Line
	6650 2050 6750 2050
Wire Wire Line
	6750 2150 6650 2150
Wire Wire Line
	7250 3650 7950 3650
Text GLabel 7350 3250 2    50   Input ~ 0
3.579MHz
Text GLabel 7350 3150 2    50   Input ~ 0
???1.78MHz50%DC
Wire Wire Line
	7350 3250 7250 3250
Wire Wire Line
	7250 3150 7350 3150
Text GLabel 7350 3050 2    50   Input ~ 0
???1.78MHz87%DC
Text GLabel 9550 4300 0    50   Input ~ 0
RESET_OUT
Wire Wire Line
	9650 4300 9550 4300
Text GLabel 10750 4300 2    50   Input ~ 0
RESET
Wire Wire Line
	10750 4300 10650 4300
Wire Wire Line
	10650 3700 10900 3700
Wire Wire Line
	10900 3700 10900 3000
Wire Wire Line
	10900 3000 9550 3000
Wire Wire Line
	9550 3000 9550 2600
Text GLabel 6650 2550 0    50   Input ~ 0
INTCS*
Wire Wire Line
	6750 2550 6650 2550
$Comp
L Interface:8259A U17
U 1 1 601EFA86
P 5450 7900
F 0 "U17" H 5450 9271 50  0000 C CNN
F 1 "8259A" H 5450 9180 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm" H 5450 7900 50  0001 C CIN
F 3 "http://pdos.csail.mit.edu/6.828/2005/readings/hardware/8259A.pdf" H 5450 7900 50  0001 C CNN
F 4 "U63" H 5450 9089 50  0000 C CNN "1000 Ref"
	1    5450 7900
	1    0    0    -1  
$EndComp
Text GLabel 4750 8200 0    50   Input ~ 0
INTCS*
Wire Wire Line
	4850 8200 4750 8200
$Comp
L 74xx:74LS138 U12
U 1 1 601F71E6
P 5450 10400
F 0 "U12" H 5450 11271 50  0000 C CNN
F 1 "74LS138" H 5450 11180 50  0000 C CNN
F 2 "" H 5450 10400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS138" H 5450 10400 50  0001 C CNN
F 4 "U80" H 5450 11089 50  0000 C CNN "1000 Ref"
	1    5450 10400
	1    0    0    -1  
$EndComp
Text GLabel 6050 10700 2    50   Input ~ 0
INTCS*
Wire Wire Line
	6050 10700 5950 10700
$Comp
L Timer:8253 U?
U 1 1 601FEE1C
P 7600 7700
F 0 "U?" H 7600 8881 50  0000 C CNN
F 1 "8253" H 7600 8790 50  0000 C CNN
F 2 "Package_DIP:DIP-24_W15.24mm" H 7650 7950 50  0001 C CNN
F 3 "http://www.cpcwiki.eu/imgs/e/e3/8253.pdf" H 7150 8600 50  0001 C CNN
	1    7600 7700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 8100 8300 8100
Wire Wire Line
	8300 8100 8300 7600
Wire Wire Line
	8200 7100 8300 7100
Connection ~ 8300 7100
Wire Wire Line
	8300 7100 8300 7000
Wire Wire Line
	8200 7600 8300 7600
Connection ~ 8300 7600
Wire Wire Line
	8300 7600 8300 7100
Text GLabel 8300 7000 1    50   Input ~ 0
_1.19MHz50%DC
Text Notes 5800 2000 0    50   ~ 0
N/C?
$Comp
L Memory_EPROM:27C256 U51
U 1 1 6020B2D5
P 3700 6650
F 0 "U51" H 3700 7931 50  0000 C CNN
F 1 "BIOS ROM" H 3700 7840 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm" H 3700 6650 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc0014.pdf" H 3700 6650 50  0001 C CNN
	1    3700 6650
	1    0    0    -1  
$EndComp
Text GLabel 3200 7450 0    50   Input ~ 0
ROMSEL0*
Wire Wire Line
	3300 7450 3200 7450
Text Notes 2750 7500 2    50   ~ 0
From U64 PLCC
$Comp
L Connector_Generic:Conn_02x17_Odd_Even J5
U 1 1 60211035
P 14100 4950
F 0 "J5" H 14150 5967 50  0000 C CNN
F 1 "Floppy" H 14150 5876 50  0000 C CNN
F 2 "" H 14100 4950 50  0001 C CNN
F 3 "~" H 14100 4950 50  0001 C CNN
	1    14100 4950
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x20_Counter_Clockwise U9
U 1 1 602144F1
P 13100 2500
F 0 "U9" H 13150 3707 50  0000 C CNN
F 1 "TACO111/3A-2125-BB/8079012 Custom" H 13150 3616 50  0000 C CNN
F 2 "" H 13100 2500 50  0001 C CNN
F 3 "~" H 13100 2500 50  0001 C CNN
F 4 "Very similar (same?) as 8075069 in SX/EX" H 13150 3525 50  0000 C CNN "Note"
	1    13100 2500
	1    0    0    -1  
$EndComp
Text GLabel 13500 2000 2    50   Input ~ 0
TIMERCH2GATE
Text GLabel 13500 3100 2    50   Input ~ 0
TMROUT2
Wire Wire Line
	13500 3100 13400 3100
Wire Wire Line
	13500 2000 13400 2000
Text Notes 13400 1950 0    50   ~ 0
PC3 (Fast) on SX
Text GLabel 13500 2200 2    50   Input ~ 0
DS0
Text GLabel 13500 2300 2    50   Input ~ 0
DS1
Text GLabel 13500 2600 2    50   Input ~ 0
MTRON
Wire Wire Line
	13500 2600 13400 2600
Wire Wire Line
	13500 2300 13400 2300
Wire Wire Line
	13400 2200 13500 2200
$Comp
L 74xx:74LS07 U58
U 1 1 6022B509
P 13150 4950
F 0 "U58" H 13150 5267 50  0000 C CNN
F 1 "7417" H 13150 5176 50  0000 C CNN
F 2 "" H 13150 4950 50  0001 C CNN
F 3 "www.ti.com/lit/ds/symlink/sn74ls07.pdf" H 13150 4950 50  0001 C CNN
	1    13150 4950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS07 U58
U 2 1 6022CB3B
P 13150 5500
F 0 "U58" H 13150 5817 50  0000 C CNN
F 1 "7417" H 13150 5726 50  0000 C CNN
F 2 "" H 13150 5500 50  0001 C CNN
F 3 "www.ti.com/lit/ds/symlink/sn74ls07.pdf" H 13150 5500 50  0001 C CNN
	2    13150 5500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS07 U58
U 3 1 6022DDD1
P 13150 4450
F 0 "U58" H 13150 4767 50  0000 C CNN
F 1 "7417" H 13150 4676 50  0000 C CNN
F 2 "" H 13150 4450 50  0001 C CNN
F 3 "www.ti.com/lit/ds/symlink/sn74ls07.pdf" H 13150 4450 50  0001 C CNN
	3    13150 4450
	1    0    0    -1  
$EndComp
Text GLabel 12750 4950 0    50   Input ~ 0
DS1
Text GLabel 12750 4450 0    50   Input ~ 0
DS0
Text GLabel 12750 5500 0    50   Input ~ 0
MTRON
Wire Wire Line
	12850 4950 12750 4950
Wire Wire Line
	12750 5500 12850 5500
Wire Wire Line
	12850 4450 12750 4450
Wire Wire Line
	13450 5500 13700 5500
Wire Wire Line
	13450 4450 13600 4450
Wire Wire Line
	13600 4450 13600 4550
Wire Wire Line
	13600 4550 13800 4550
Wire Wire Line
	13600 4950 13450 4950
Wire Wire Line
	13600 4950 13600 4650
Wire Wire Line
	13600 4650 13800 4650
Wire Wire Line
	13700 5500 13700 4850
Wire Wire Line
	13700 4850 13800 4850
Wire Wire Line
	8950 2150 8950 3700
Wire Wire Line
	8950 3700 9650 3700
Wire Wire Line
	7250 2150 8950 2150
Wire Wire Line
	7350 3050 7250 3050
Text Label 7350 2150 0    50   ~ 0
U26_OE*
Wire Wire Line
	5650 1600 5650 2250
Wire Wire Line
	5650 1600 9650 1600
Wire Wire Line
	5650 2250 6750 2250
$Comp
L Oscillator:SG-51 Y2
U 1 1 601FA8F9
P 7500 4550
F 0 "Y2" H 7844 4596 50  0000 L CNN
F 1 "28.5MHz" H 7844 4505 50  0000 L CNN
F 2 "Oscillator:Oscillator_SeikoEpson_SG-8002DB" H 7950 4200 50  0001 C CNN
F 3 "https://support.epson.biz/td/api/doc_check.php?mode=dl&lang=en&Parts=SG-51P" H 7400 4550 50  0001 C CNN
	1    7500 4550
	1    0    0    -1  
$EndComp
NoConn ~ 7200 4550
Wire Wire Line
	7800 4550 7950 4550
Wire Wire Line
	7950 4550 7950 3750
Wire Wire Line
	7250 3750 7950 3750
Text Label 7350 3750 0    50   ~ 0
28.5MHz4vPP
Text Label 7350 3650 0    50   ~ 0
28.5MHz6vPP
$Comp
L Device:R R26
U 1 1 6020F2B4
P 8100 3650
F 0 "R26" V 8200 3650 50  0000 C CNN
F 1 "1K" V 8100 3650 50  0000 C CNN
F 2 "" V 8030 3650 50  0001 C CNN
F 3 "~" H 8100 3650 50  0001 C CNN
	1    8100 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	8250 3650 8350 3650
Text Notes 8300 3700 0    50   ~ 0
->???
$Comp
L 74xx:74LS245 U53
U 1 1 6021E738
P 10650 6550
F 0 "U53" H 10650 7621 50  0000 C CNN
F 1 "74LS245" H 10650 7530 50  0000 C CNN
F 2 "" H 10650 6550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 10650 6550 50  0001 C CNN
F 4 "U62" H 10650 7439 50  0000 C CNN "1000 Ref"
	1    10650 6550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 U54
U 1 1 6021F458
P 10650 8650
F 0 "U54" H 10650 9631 50  0000 C CNN
F 1 "74LS245" H 10650 9540 50  0000 C CNN
F 2 "" H 10650 8650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 10650 8650 50  0001 C CNN
	1    10650 8650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 7050 10150 7050
Wire Wire Line
	11250 6050 11150 6050
Wire Wire Line
	11150 6150 11250 6150
Wire Wire Line
	11250 6250 11150 6250
Wire Wire Line
	11150 6350 11250 6350
Wire Wire Line
	11250 6450 11150 6450
Wire Wire Line
	11150 6550 11250 6550
Wire Wire Line
	11250 6650 11150 6650
Wire Wire Line
	11150 6750 11250 6750
Text GLabel 11250 6450 2    50   Input ~ 0
D4
Text GLabel 11250 6550 2    50   Input ~ 0
D5
Text GLabel 11250 6650 2    50   Input ~ 0
D6
Text GLabel 11250 6350 2    50   Input ~ 0
D3
Text GLabel 11250 6250 2    50   Input ~ 0
D2
Text GLabel 11250 6750 2    50   Input ~ 0
D7
Text GLabel 11250 6150 2    50   Input ~ 0
D1
Text GLabel 11250 6050 2    50   Input ~ 0
D0
Text GLabel 10750 2200 2    50   Input ~ 0
DEN*
Text GLabel 10050 7050 0    50   Input ~ 0
DEN*
Wire Wire Line
	10750 2200 10650 2200
Text GLabel 9550 2200 0    50   Input ~ 0
_DENX*
Text GLabel 6650 2650 0    50   Input ~ 0
_DENX*
Wire Wire Line
	6750 2650 6650 2650
Wire Wire Line
	9650 2200 9550 2200
Text Notes 10650 1600 0    50   ~ 0
->???
Text Notes 10650 1700 0    50   ~ 0
->???
Text Notes 9350 1700 0    50   ~ 0
->???
Text GLabel 4850 4250 2    50   Input ~ 0
IO_M*
Text GLabel 6650 3650 0    50   Input ~ 0
IO_M*
Wire Wire Line
	6750 3650 6650 3650
$Comp
L Device:R R59
U 1 1 602762D6
P 4650 1200
F 0 "R59" V 4550 1100 50  0000 L CNN
F 1 "10K" V 4650 1100 50  0000 L CNN
F 2 "" V 4580 1200 50  0001 C CNN
F 3 "~" H 4650 1200 50  0001 C CNN
	1    4650 1200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6027E051
P 4850 850
F 0 "#PWR?" H 4850 700 50  0001 C CNN
F 1 "+5V" H 4865 1023 50  0000 C CNN
F 2 "" H 4850 850 50  0001 C CNN
F 3 "" H 4850 850 50  0001 C CNN
	1    4850 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 1050 4650 950 
Wire Wire Line
	4650 950  4850 950 
Wire Wire Line
	4850 950  4850 850 
Wire Wire Line
	4850 950  4850 1050
Connection ~ 4850 950 
Wire Wire Line
	4850 950  5050 950 
Wire Wire Line
	5050 950  5050 1050
Wire Wire Line
	4850 4250 4650 4250
Wire Wire Line
	4650 4250 4650 1350
Connection ~ 4650 4250
Wire Wire Line
	4650 4250 4550 4250
Text GLabel 5150 1550 2    50   Input ~ 0
DT_R*
Text GLabel 5150 1650 2    50   Input ~ 0
_CPUDENX*
Wire Wire Line
	5150 1650 4850 1650
$Comp
L Device:R R57
U 1 1 6027CAB1
P 4850 1200
F 0 "R57" V 4750 1100 50  0000 L CNN
F 1 "10K" V 4850 1100 50  0000 L CNN
F 2 "" V 4780 1200 50  0001 C CNN
F 3 "~" H 4850 1200 50  0001 C CNN
	1    4850 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R58
U 1 1 6027DCEE
P 5050 1200
F 0 "R58" V 4950 1100 50  0000 L CNN
F 1 "10K" V 5050 1100 50  0000 L CNN
F 2 "" V 4980 1200 50  0001 C CNN
F 3 "~" H 5050 1200 50  0001 C CNN
	1    5050 1200
	1    0    0    -1  
$EndComp
Connection ~ 4850 1650
Wire Wire Line
	4850 1650 4550 1650
Wire Wire Line
	4550 1550 5050 1550
Wire Wire Line
	5050 1350 5050 1550
Connection ~ 5050 1550
Wire Wire Line
	5050 1550 5150 1550
Wire Wire Line
	4850 1350 4850 1650
Text GLabel 6650 3450 0    50   Input ~ 0
_CPUDENX*
Wire Wire Line
	6750 3450 6650 3450
Text GLabel 6650 3550 0    50   Input ~ 0
DT_R*
Wire Wire Line
	6650 3550 6750 3550
$Comp
L MCU_Intel:8087 U?
U 1 1 602E4384
P 1650 3050
F 0 "U?" H 1650 5031 50  0000 C CNN
F 1 "8087" H 1650 4940 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm" H 1700 3150 50  0001 C CIN
F 3 "http://datasheets.chipdb.org/Intel/x86/808x/datashts/8087/205835-007.pdf" H 1650 3100 50  0001 C CNN
	1    1650 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  2550 850  2550
Wire Wire Line
	850  2550 850  4950
Wire Wire Line
	850  4950 2650 4950
Wire Wire Line
	2650 4950 2650 2550
Wire Wire Line
	2650 2550 3150 2550
Wire Wire Line
	4550 1750 4750 1750
Wire Wire Line
	4750 1750 4750 5050
Wire Wire Line
	4750 5050 750  5050
Wire Wire Line
	750  5050 750  2350
Wire Wire Line
	750  2350 950  2350
Wire Wire Line
	2450 3150 2450 1550
Wire Wire Line
	2450 1550 2350 1550
Wire Wire Line
	2450 3150 3150 3150
Text GLabel 6650 2850 0    50   Input ~ 0
_INTA*
Wire Wire Line
	6750 2850 6650 2850
Text GLabel 4750 8700 0    50   Input ~ 0
_INTA*
Wire Wire Line
	4750 8700 4850 8700
$Comp
L Device:R R24
U 1 1 6032BE78
P 6300 3900
F 0 "R24" V 6400 3800 50  0000 L CNN
F 1 "33R" V 6300 3800 50  0000 L CNN
F 2 "" V 6230 3900 50  0001 C CNN
F 3 "~" H 6300 3900 50  0001 C CNN
	1    6300 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	6450 3900 6550 3900
Wire Wire Line
	6550 3900 6550 3750
Connection ~ 6550 3750
Wire Wire Line
	6550 3750 6450 3750
Wire Wire Line
	6150 3900 6050 3900
Text GLabel 6050 3900 0    50   Input ~ 0
14MCK
$Comp
L Connector_Generic:Conn_02x08_Counter_Clockwise U70
U 1 1 60351CCA
P 12700 8500
F 0 "U70" H 12750 9107 50  0000 C CNN
F 1 "SN76496" H 12750 9016 50  0000 C CNN
F 2 "" H 12700 8500 50  0001 C CNN
F 3 "~" H 12700 8500 50  0001 C CNN
F 4 "U96" H 12750 8925 50  0000 C CNN "1000 Ref"
	1    12700 8500
	1    0    0    -1  
$EndComp
Text GLabel 13100 8400 2    50   Input ~ 0
3.579MHz
Wire Wire Line
	13100 8400 13000 8400
Wire Wire Line
	12500 8700 12400 8700
Text GLabel 12400 8700 0    50   Input ~ 0
SOUNDCS*
Text Notes 11950 8750 2    50   ~ 0
From U64 PLCC
Wire Wire Line
	10150 6950 10050 6950
Text GLabel 10050 6950 0    50   Input ~ 0
_U53_DIR
Text GLabel 6650 3250 0    50   Input ~ 0
_U53_DIR
Wire Wire Line
	6750 3250 6650 3250
Wire Wire Line
	6050 5650 8650 5650
Wire Wire Line
	8650 5650 8650 3550
Wire Wire Line
	8650 3550 7250 3550
Text Label 8300 3650 0    50   ~ 0
_V28MHZ
$Comp
L 74xx:74LS04 U24
U 3 1 6039605F
P 4950 5400
F 0 "U24" H 4950 5717 50  0000 C CNN
F 1 "74LS04" H 4950 5626 50  0000 C CNN
F 2 "" H 4950 5400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 4950 5400 50  0001 C CNN
	3    4950 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 5400 5350 5400
Wire Wire Line
	5350 5400 5350 5550
Wire Wire Line
	5350 5550 5450 5550
Wire Wire Line
	5250 5950 5350 5950
Wire Wire Line
	5350 5950 5350 5750
Wire Wire Line
	5350 5750 5450 5750
Text Notes 4400 5400 0    50   ~ 0
->???
Wire Wire Line
	10650 4400 11450 4400
Wire Wire Line
	11450 4400 11450 3050
Wire Wire Line
	11450 3050 9000 3050
Wire Wire Line
	9000 3050 9000 2050
Wire Wire Line
	9000 2050 7250 2050
Text GLabel 9550 4400 0    50   Input ~ 0
BREQ*
Wire Wire Line
	9650 4400 9550 4400
Text Label 7350 2050 0    50   ~ 0
BREQ*_IN
Wire Wire Line
	3150 2950 2550 2950
Wire Wire Line
	2550 2950 2550 1000
Wire Wire Line
	2550 1000 650  1000
Wire Wire Line
	650  1000 650  2950
Wire Wire Line
	650  2950 950  2950
$Comp
L Connector_Generic:Conn_01x01 E8
U 1 1 60268E26
P 350 2950
F 0 "E8" H 268 2725 50  0000 C CNN
F 1 "Conn_01x01" H 268 2816 50  0000 C CNN
F 2 "" H 350 2950 50  0001 C CNN
F 3 "~" H 350 2950 50  0001 C CNN
	1    350  2950
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 JE9
U 1 1 6026903C
P 350 3150
F 0 "JE9" H 250 3350 50  0000 C CNN
F 1 "Conn_01x01" H 250 3250 50  0000 C CNN
F 2 "" H 350 3150 50  0001 C CNN
F 3 "~" H 350 3150 50  0001 C CNN
	1    350  3150
	-1   0    0    1   
$EndComp
Text Notes 200  3300 1    50   ~ 0
Jumper if 8087\nnot present
Connection ~ 650  2950
Text GLabel 550  3450 0    50   Input ~ 0
RG_GT*
Wire Wire Line
	650  2950 550  2950
Wire Wire Line
	650  3150 650  3450
Wire Wire Line
	650  3450 550  3450
Wire Wire Line
	550  3150 650  3150
Connection ~ 650  3150
Wire Wire Line
	650  3150 950  3150
Text GLabel 7350 2250 2    50   Input ~ 0
RG_GT*
Wire Wire Line
	7350 2250 7250 2250
$Comp
L 74xx:74LS244 U36
U 1 1 602A9CF3
P 14950 8250
F 0 "U36" H 14950 9231 50  0000 C CNN
F 1 "74LS244" H 14950 9140 50  0000 C CNN
F 2 "" H 14950 8250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls244.pdf" H 14950 8250 50  0001 C CNN
	1    14950 8250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Pack03_SIP RP1
U 1 1 602C8D7F
P 17000 8100
F 0 "RP1" V 17008 8305 50  0000 L CNN
F 1 "33R" V 17099 8305 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP6" V 17575 8100 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 17000 8100 50  0001 C CNN
	1    17000 8100
	0    1    1    0   
$EndComp
Wire Wire Line
	15450 8350 16250 8350
Wire Wire Line
	16250 8350 16250 8100
Wire Wire Line
	16250 8100 16800 8100
$Comp
L Connector_Generic:Conn_02x08_Counter_Clockwise U?
U 1 1 602D9542
P 17350 9650
F 0 "U?" H 17400 10167 50  0000 C CNN
F 1 "DRAM" H 17400 10076 50  0000 C CNN
F 2 "" H 17350 9650 50  0001 C CNN
F 3 "~" H 17350 9650 50  0001 C CNN
	1    17350 9650
	1    0    0    -1  
$EndComp
Wire Wire Line
	16800 8200 16700 8200
Wire Wire Line
	16700 8200 16700 8850
Wire Wire Line
	16700 8850 17950 8850
Wire Wire Line
	17950 8850 17950 9450
Wire Wire Line
	17950 9450 17650 9450
Text Label 17750 9450 0    50   ~ 0
CAS*
Text GLabel 7350 2350 2    50   Input ~ 0
_CASX*
Wire Wire Line
	7350 2350 7250 2350
Text GLabel 14350 8350 0    50   Input ~ 0
_CASX*
Wire Wire Line
	14450 8350 14350 8350
Wire Wire Line
	17150 9750 16600 9750
Wire Wire Line
	16600 9750 16600 8500
Wire Wire Line
	16600 8500 16800 8500
Text Label 17050 9750 2    50   ~ 0
RAS*
Wire Wire Line
	15450 8250 16350 8250
Wire Wire Line
	16350 8250 16350 8400
Wire Wire Line
	16350 8400 16800 8400
Text GLabel 14350 8250 0    50   Input ~ 0
_RASX*
Wire Wire Line
	14450 8250 14350 8250
Text GLabel 7350 2950 2    50   Input ~ 0
_RASX*
Wire Wire Line
	7350 2950 7250 2950
Text Notes 8350 3000 2    50   ~ 0
Also to U64 PLCC
$Comp
L 74xx:74LS374 U5
U 1 1 603857F5
P 17700 3250
F 0 "U5" H 17700 4231 50  0000 C CNN
F 1 "74LS374" H 17700 4140 50  0000 C CNN
F 2 "" H 17700 3250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS374" H 17700 3250 50  0001 C CNN
	1    17700 3250
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS374 U22
U 1 1 603889D2
P 17700 5250
F 0 "U22" H 17700 6231 50  0000 C CNN
F 1 "74LS374" H 17700 6140 50  0000 C CNN
F 2 "" H 17700 5250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS374" H 17700 5250 50  0001 C CNN
	1    17700 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	17200 3650 17100 3650
Wire Wire Line
	17100 3650 17100 5650
Wire Wire Line
	17100 5650 17200 5650
Wire Wire Line
	17100 5650 15050 5650
Wire Wire Line
	15050 5650 15050 6100
Wire Wire Line
	15050 6100 11850 6100
Wire Wire Line
	11850 6100 11850 5300
Wire Wire Line
	11850 5300 8750 5300
Wire Wire Line
	8750 5300 8750 2850
Wire Wire Line
	8750 2850 7250 2850
Connection ~ 17100 5650
$Comp
L 74xx:74LS374 U6
U 1 1 603A91A3
P 19150 3900
F 0 "U6" H 19150 4881 50  0000 C CNN
F 1 "74LS374" H 19150 4790 50  0000 C CNN
F 2 "" H 19150 3900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS374" H 19150 3900 50  0001 C CNN
	1    19150 3900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS374 U23
U 1 1 603A9AD1
P 19150 5900
F 0 "U23" H 19150 6881 50  0000 C CNN
F 1 "74LS374" H 19150 6790 50  0000 C CNN
F 2 "" H 19150 5900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS374" H 19150 5900 50  0001 C CNN
	1    19150 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	18650 4300 18550 4300
Wire Wire Line
	18550 4300 18550 6300
Wire Wire Line
	18550 6300 18650 6300
Connection ~ 18550 6300
Wire Wire Line
	7250 2550 8800 2550
Wire Wire Line
	8800 2550 8800 5250
Wire Wire Line
	8800 5250 11900 5250
Wire Wire Line
	11900 5250 11900 6300
Wire Wire Line
	11900 6300 18550 6300
Text Notes 7300 2550 0    50   ~ 0
VSRD* or VSWR*?
Text Notes 7300 2850 0    50   ~ 0
VSRD* or VSWR*?
$EndSCHEMATC

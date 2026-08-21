*
*
*
*                       LINUX           Sat Jun 28 12:50:33 2025
*
*
*
*  PROGRAM  advgen
*
*  Name           : advgen - Quantus - (64-bit)
*  Version        : 21.2.2-p045
*  Build Date     : Fri Sep 23 10:27:37 PDT 2022
*
*  HSPICE LIBRARY
*
*
*

*
.SUBCKT Inverter Vdd Vss In Out
*
*
*  caps2d version: 10
*
*
*       TRANSISTOR CARDS
*
*
MNM0	Out#2	In#4	Vss#1	Vss#3	nmos1v	L=1e-07	W=1.2e-07
+ AD=6.96e-14	AS=6.96e-14	PD=1.16e-06	PS=1.16e-06	simW=1.2e-07 fw=1.2e-07
MPM0	Out#5	In#1	Vdd#1	Vdd	pmos1v	L=1e-07	W=1.2e-07
+ AD=6.96e-14	AS=6.96e-14	PD=1.16e-06	PS=1.16e-06	simW=1.2e-07 fw=1.2e-07
*
*
*       RESISTOR AND CAP/DIODE CARDS
*
Rj1	In#1	In#2	59.617226	$poly	$W=1e-07
Rj2	In#2	In#3	86.452614	$poly	$W=1e-07
Rj3	In#2	In#4	47.617229	$poly	$W=1e-07
Ri1	In	In#3	10.520000	$mt1	$W=1.2e-07
Ri2	Out	Out#1	0.587273	$mt1	$W=1.2e-07
Ri3	Out#1	Out#3	0.363604	$mt1	$W=1.2e-07
Ri5	Out#1	Out#6	0.430271	$mt1	$W=1.2e-07
Ri7	Out#2	Out#3	15.000000	$mt1	$W=1.2e-07
Ri8	Out#5	Out#6	15.000000	$mt1	$W=1.2e-07
Ri11	Vdd#2	Vdd	0.155789	$mt1	$W=3.8e-07
Ri12	Vdd#1	Vdd#2	15.000000	$mt1	$W=3.8e-07
Ri16	Vss#2	Vss	0.138947	$mt1	$W=3.8e-07
Ri17	Vss#1	Vss#2	15.000000	$mt1	$W=3.8e-07
Ri18	Vss#3	Vss#2	15.000000	$mt1	$W=3.8e-07
*
*       CAPACITOR CARDS
*
*
C1	Vdd	Vss	cmodel	3.49104e-16
C2	In	Vss	cmodel	4.95565e-17
C3	Out	Vss	cmodel	5.29921e-17
C4	In#1	Vss	cmodel	6.45409e-17
C5	In#4	Vss	cmodel	5.90097e-17
C6	In#3	Vss	cmodel	1.13487e-16
C7	Out#1	Vss	cmodel	6.57011e-17
C8	Out#3	Vss	cmodel	5.01387e-17
C9	Out#6	Vss	cmodel	5.28087e-17
C10	Vdd#2	Vss	cmodel	4.21916e-17
C11	In#2	Vss	cmodel	7.91992e-17
*
*
.ENDS Inverter
*

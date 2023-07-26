opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 49521"

opt pagewidth 120

	opt lm

	processor	16F870
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 46 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
INDF equ 00h ;# 
# 52 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TMR0 equ 01h ;# 
# 58 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PCL equ 02h ;# 
# 64 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
STATUS equ 03h ;# 
# 151 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
FSR equ 04h ;# 
# 157 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PORTA equ 05h ;# 
# 206 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PORTB equ 06h ;# 
# 267 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PORTC equ 07h ;# 
# 328 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PCLATH equ 0Ah ;# 
# 347 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
INTCON equ 0Bh ;# 
# 424 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PIR1 equ 0Ch ;# 
# 474 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PIR2 equ 0Dh ;# 
# 494 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TMR1 equ 0Eh ;# 
# 500 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TMR1L equ 0Eh ;# 
# 506 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TMR1H equ 0Fh ;# 
# 512 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
T1CON equ 010h ;# 
# 588 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TMR2 equ 011h ;# 
# 594 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
T2CON equ 012h ;# 
# 664 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
CCPR1 equ 015h ;# 
# 670 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
CCPR1L equ 015h ;# 
# 676 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
CCPR1H equ 016h ;# 
# 682 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
CCP1CON equ 017h ;# 
# 739 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
RCSTA equ 018h ;# 
# 833 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TXREG equ 019h ;# 
# 839 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
RCREG equ 01Ah ;# 
# 845 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
ADRESH equ 01Eh ;# 
# 851 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
ADCON0 equ 01Fh ;# 
# 946 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
OPTION_REG equ 081h ;# 
# 1015 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TRISA equ 085h ;# 
# 1064 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TRISB equ 086h ;# 
# 1125 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TRISC equ 087h ;# 
# 1186 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PIE1 equ 08Ch ;# 
# 1236 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PIE2 equ 08Dh ;# 
# 1256 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PCON equ 08Eh ;# 
# 1289 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PR2 equ 092h ;# 
# 1295 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TXSTA equ 098h ;# 
# 1375 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
SPBRG equ 099h ;# 
# 1381 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
ADRESL equ 09Eh ;# 
# 1387 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
ADCON1 equ 09Fh ;# 
# 1439 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
EEDATA equ 010Ch ;# 
# 1445 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
EEADR equ 010Dh ;# 
# 1451 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
EEDATH equ 010Eh ;# 
# 1457 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
EEADRH equ 010Fh ;# 
# 1463 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
EECON1 equ 018Ch ;# 
# 1507 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
EECON2 equ 018Dh ;# 
# 46 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
INDF equ 00h ;# 
# 52 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TMR0 equ 01h ;# 
# 58 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PCL equ 02h ;# 
# 64 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
STATUS equ 03h ;# 
# 151 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
FSR equ 04h ;# 
# 157 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PORTA equ 05h ;# 
# 206 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PORTB equ 06h ;# 
# 267 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PORTC equ 07h ;# 
# 328 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PCLATH equ 0Ah ;# 
# 347 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
INTCON equ 0Bh ;# 
# 424 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PIR1 equ 0Ch ;# 
# 474 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PIR2 equ 0Dh ;# 
# 494 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TMR1 equ 0Eh ;# 
# 500 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TMR1L equ 0Eh ;# 
# 506 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TMR1H equ 0Fh ;# 
# 512 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
T1CON equ 010h ;# 
# 588 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TMR2 equ 011h ;# 
# 594 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
T2CON equ 012h ;# 
# 664 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
CCPR1 equ 015h ;# 
# 670 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
CCPR1L equ 015h ;# 
# 676 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
CCPR1H equ 016h ;# 
# 682 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
CCP1CON equ 017h ;# 
# 739 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
RCSTA equ 018h ;# 
# 833 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TXREG equ 019h ;# 
# 839 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
RCREG equ 01Ah ;# 
# 845 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
ADRESH equ 01Eh ;# 
# 851 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
ADCON0 equ 01Fh ;# 
# 946 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
OPTION_REG equ 081h ;# 
# 1015 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TRISA equ 085h ;# 
# 1064 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TRISB equ 086h ;# 
# 1125 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TRISC equ 087h ;# 
# 1186 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PIE1 equ 08Ch ;# 
# 1236 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PIE2 equ 08Dh ;# 
# 1256 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PCON equ 08Eh ;# 
# 1289 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PR2 equ 092h ;# 
# 1295 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TXSTA equ 098h ;# 
# 1375 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
SPBRG equ 099h ;# 
# 1381 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
ADRESL equ 09Eh ;# 
# 1387 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
ADCON1 equ 09Fh ;# 
# 1439 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
EEDATA equ 010Ch ;# 
# 1445 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
EEADR equ 010Dh ;# 
# 1451 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
EEDATH equ 010Eh ;# 
# 1457 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
EEADRH equ 010Fh ;# 
# 1463 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
EECON1 equ 018Ch ;# 
# 1507 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
EECON2 equ 018Dh ;# 
# 46 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
INDF equ 00h ;# 
# 52 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TMR0 equ 01h ;# 
# 58 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PCL equ 02h ;# 
# 64 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
STATUS equ 03h ;# 
# 151 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
FSR equ 04h ;# 
# 157 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PORTA equ 05h ;# 
# 206 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PORTB equ 06h ;# 
# 267 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PORTC equ 07h ;# 
# 328 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PCLATH equ 0Ah ;# 
# 347 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
INTCON equ 0Bh ;# 
# 424 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PIR1 equ 0Ch ;# 
# 474 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PIR2 equ 0Dh ;# 
# 494 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TMR1 equ 0Eh ;# 
# 500 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TMR1L equ 0Eh ;# 
# 506 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TMR1H equ 0Fh ;# 
# 512 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
T1CON equ 010h ;# 
# 588 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TMR2 equ 011h ;# 
# 594 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
T2CON equ 012h ;# 
# 664 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
CCPR1 equ 015h ;# 
# 670 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
CCPR1L equ 015h ;# 
# 676 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
CCPR1H equ 016h ;# 
# 682 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
CCP1CON equ 017h ;# 
# 739 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
RCSTA equ 018h ;# 
# 833 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TXREG equ 019h ;# 
# 839 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
RCREG equ 01Ah ;# 
# 845 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
ADRESH equ 01Eh ;# 
# 851 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
ADCON0 equ 01Fh ;# 
# 946 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
OPTION_REG equ 081h ;# 
# 1015 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TRISA equ 085h ;# 
# 1064 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TRISB equ 086h ;# 
# 1125 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TRISC equ 087h ;# 
# 1186 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PIE1 equ 08Ch ;# 
# 1236 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PIE2 equ 08Dh ;# 
# 1256 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PCON equ 08Eh ;# 
# 1289 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PR2 equ 092h ;# 
# 1295 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TXSTA equ 098h ;# 
# 1375 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
SPBRG equ 099h ;# 
# 1381 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
ADRESL equ 09Eh ;# 
# 1387 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
ADCON1 equ 09Fh ;# 
# 1439 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
EEDATA equ 010Ch ;# 
# 1445 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
EEADR equ 010Dh ;# 
# 1451 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
EEDATH equ 010Eh ;# 
# 1457 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
EEADRH equ 010Fh ;# 
# 1463 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
EECON1 equ 018Ch ;# 
# 1507 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
EECON2 equ 018Dh ;# 
# 46 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
INDF equ 00h ;# 
# 52 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TMR0 equ 01h ;# 
# 58 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PCL equ 02h ;# 
# 64 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
STATUS equ 03h ;# 
# 151 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
FSR equ 04h ;# 
# 157 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PORTA equ 05h ;# 
# 206 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PORTB equ 06h ;# 
# 267 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PORTC equ 07h ;# 
# 328 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PCLATH equ 0Ah ;# 
# 347 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
INTCON equ 0Bh ;# 
# 424 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PIR1 equ 0Ch ;# 
# 474 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PIR2 equ 0Dh ;# 
# 494 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TMR1 equ 0Eh ;# 
# 500 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TMR1L equ 0Eh ;# 
# 506 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TMR1H equ 0Fh ;# 
# 512 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
T1CON equ 010h ;# 
# 588 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TMR2 equ 011h ;# 
# 594 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
T2CON equ 012h ;# 
# 664 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
CCPR1 equ 015h ;# 
# 670 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
CCPR1L equ 015h ;# 
# 676 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
CCPR1H equ 016h ;# 
# 682 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
CCP1CON equ 017h ;# 
# 739 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
RCSTA equ 018h ;# 
# 833 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TXREG equ 019h ;# 
# 839 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
RCREG equ 01Ah ;# 
# 845 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
ADRESH equ 01Eh ;# 
# 851 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
ADCON0 equ 01Fh ;# 
# 946 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
OPTION_REG equ 081h ;# 
# 1015 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TRISA equ 085h ;# 
# 1064 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TRISB equ 086h ;# 
# 1125 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TRISC equ 087h ;# 
# 1186 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PIE1 equ 08Ch ;# 
# 1236 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PIE2 equ 08Dh ;# 
# 1256 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PCON equ 08Eh ;# 
# 1289 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PR2 equ 092h ;# 
# 1295 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TXSTA equ 098h ;# 
# 1375 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
SPBRG equ 099h ;# 
# 1381 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
ADRESL equ 09Eh ;# 
# 1387 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
ADCON1 equ 09Fh ;# 
# 1439 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
EEDATA equ 010Ch ;# 
# 1445 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
EEADR equ 010Dh ;# 
# 1451 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
EEDATH equ 010Eh ;# 
# 1457 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
EEADRH equ 010Fh ;# 
# 1463 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
EECON1 equ 018Ch ;# 
# 1507 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
EECON2 equ 018Dh ;# 
	FNCALL	_main,_SIM300Init
	FNCALL	_SIM300Init,_USARTInit
	FNCALL	_SIM300Init,_SIM300Cmd
	FNCALL	_SIM300Init,_USARTDataAvailable
	FNCALL	_SIM300Init,_USARTReadBuffer
	FNCALL	_SIM300Init,_SIM300CheckResponse
	FNCALL	_SIM300Cmd,_USARTWriteString
	FNCALL	_SIM300Cmd,_USARTWriteChar
	FNCALL	_SIM300Cmd,_strlen
	FNCALL	_SIM300Cmd,_USARTDataAvailable
	FNCALL	_SIM300Cmd,_USARTReadBuffer
	FNCALL	_SIM300Cmd,___wmul
	FNCALL	_USARTWriteString,_USARTWriteChar
	FNCALL	_USARTReadBuffer,_USARTReadData
	FNROOT	_main
	FNCALL	_ISR,_USARTHandleRxInt
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_UQEnd
	global	_UQFront
	global	_URBuff
	global	USARTWriteInt@F765
	global	_sim300_buffer
	global	_PIR1bits
_PIR1bits	set	0xC
	global	_PORTB
_PORTB	set	0x6
	global	_RCREG
_RCREG	set	0x1A
	global	_RCSTAbits
_RCSTAbits	set	0x18
	global	_TXREG
_TXREG	set	0x19
	global	_GIE
_GIE	set	0x5F
	global	_PEIE
_PEIE	set	0x5E
	global	_RB1
_RB1	set	0x31
	global	_RB7
_RB7	set	0x37
	global	_RCIF
_RCIF	set	0x65
	global	_SPBRG
_SPBRG	set	0x99
	global	_TRISB
_TRISB	set	0x86
	global	_TXSTAbits
_TXSTAbits	set	0x98
	global	_RCIE
_RCIE	set	0x465
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	global __stringdata
__stringdata:
	
STR_4:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	43	;'+'
	retlw	67	;'C'
	retlw	83	;'S'
	retlw	77	;'M'
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	83	;'S'
	retlw	63	;'?'
	retlw	0
psect	strings
	
STR_3:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	43	;'+'
	retlw	67	;'C'
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	71	;'G'
	retlw	63	;'?'
	retlw	0
psect	strings
	
STR_5:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	43	;'+'
	retlw	67	;'C'
	retlw	83	;'S'
	retlw	80	;'P'
	retlw	78	;'N'
	retlw	63	;'?'
	retlw	0
psect	strings
	
STR_7:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	43	;'+'
	retlw	71	;'G'
	retlw	77	;'M'
	retlw	73	;'I'
	retlw	0
psect	strings
	
STR_8:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	43	;'+'
	retlw	71	;'G'
	retlw	77	;'M'
	retlw	77	;'M'
	retlw	0
psect	strings
	
STR_6:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	43	;'+'
	retlw	71	;'G'
	retlw	83	;'S'
	retlw	78	;'N'
	retlw	0
psect	strings
	
STR_2:	
	retlw	79	;'O'
	retlw	75	;'K'
	retlw	0
psect	strings
	
STR_1:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	0
psect	strings
	global __end_of__stringdata
__end_of__stringdata:
; #config settings
	file	"Modem.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_UQEnd:
       ds      1

_UQFront:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_URBuff:
       ds      10

USARTWriteInt@F765:
       ds      5

_sim300_buffer:
       ds      10

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+019h)
	fcall	clear_ram
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
?_USARTHandleRxInt:	; 0 bytes @ 0x0
??_USARTHandleRxInt:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
?_USARTWriteChar:	; 0 bytes @ 0x0
?_USARTWriteString:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_SIM300Cmd:	; 1 bytes @ 0x0
?_USARTReadData:	; 1 bytes @ 0x0
?_USARTDataAvailable:	; 1 bytes @ 0x0
?_SIM300Init:	; 1 bytes @ 0x0
	ds	4
	global	USARTHandleRxInt@data
USARTHandleRxInt@data:	; 1 bytes @ 0x4
	ds	1
??_ISR:	; 0 bytes @ 0x5
	ds	4
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_USARTInit
?_USARTInit:	; 0 bytes @ 0x0
??_USARTWriteChar:	; 0 bytes @ 0x0
??_USARTReadData:	; 0 bytes @ 0x0
??_USARTDataAvailable:	; 0 bytes @ 0x0
	global	?_SIM300CheckResponse
?_SIM300CheckResponse:	; 1 bytes @ 0x0
	global	?_strlen
?_strlen:	; 2 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	USARTWriteChar@ch
USARTWriteChar@ch:	; 1 bytes @ 0x0
	global	SIM300CheckResponse@check
SIM300CheckResponse@check:	; 1 bytes @ 0x0
	global	USARTInit@baud_rate
USARTInit@baud_rate:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	ds	1
??_USARTWriteString:	; 0 bytes @ 0x1
	global	USARTReadData@data
USARTReadData@data:	; 1 bytes @ 0x1
	global	SIM300CheckResponse@len
SIM300CheckResponse@len:	; 1 bytes @ 0x1
	ds	1
??_SIM300CheckResponse:	; 0 bytes @ 0x2
??_strlen:	; 0 bytes @ 0x2
??_USARTInit:	; 0 bytes @ 0x2
	global	?_USARTReadBuffer
?_USARTReadBuffer:	; 0 bytes @ 0x2
	global	USARTWriteString@str
USARTWriteString@str:	; 1 bytes @ 0x2
	global	USARTReadBuffer@len
USARTReadBuffer@len:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	ds	2
??_USARTReadBuffer:	; 0 bytes @ 0x4
??___wmul:	; 0 bytes @ 0x4
	global	SIM300CheckResponse@i
SIM300CheckResponse@i:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	1
	global	SIM300CheckResponse@response
SIM300CheckResponse@response:	; 1 bytes @ 0x5
	ds	1
	global	USARTReadBuffer@buff
USARTReadBuffer@buff:	; 1 bytes @ 0x6
	global	strlen@s
strlen@s:	; 1 bytes @ 0x6
	ds	1
	global	strlen@cp
strlen@cp:	; 1 bytes @ 0x7
	global	USARTReadBuffer@i
USARTReadBuffer@i:	; 2 bytes @ 0x7
	ds	2
??_SIM300Cmd:	; 0 bytes @ 0x9
	ds	2
	global	SIM300Cmd@i
SIM300Cmd@i:	; 2 bytes @ 0xB
	ds	2
	global	SIM300Cmd@cmd
SIM300Cmd@cmd:	; 1 bytes @ 0xD
	ds	1
	global	SIM300Cmd@len
SIM300Cmd@len:	; 1 bytes @ 0xE
	ds	1
??_SIM300Init:	; 0 bytes @ 0xF
	ds	2
	global	SIM300Init@i
SIM300Init@i:	; 2 bytes @ 0x11
	ds	2
??_main:	; 0 bytes @ 0x13
	ds	3
	global	main@r
main@r:	; 1 bytes @ 0x16
	ds	1
	global	main@i
main@i:	; 1 bytes @ 0x17
	ds	1
;!
;!Data Sizes:
;!    Strings     56
;!    Constant    0
;!    Data        0
;!    BSS         27
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      9      11
;!    BANK0            80     24      49
;!    BANK1            32      0       0

;!
;!Pointer List with Targets:
;!
;!    ?___wmul	unsigned int  size(1) Largest target is 0
;!
;!    ?_strlen	unsigned int  size(1) Largest target is 11
;!		 -> STR_8(CODE[7]), STR_7(CODE[7]), STR_6(CODE[7]), STR_5(CODE[9]), 
;!		 -> STR_4(CODE[11]), STR_3(CODE[9]), STR_1(CODE[3]), 
;!
;!    strlen@s	PTR const unsigned char  size(1) Largest target is 11
;!		 -> STR_8(CODE[7]), STR_7(CODE[7]), STR_6(CODE[7]), STR_5(CODE[9]), 
;!		 -> STR_4(CODE[11]), STR_3(CODE[9]), STR_1(CODE[3]), 
;!
;!    strlen@cp	PTR const unsigned char  size(1) Largest target is 11
;!		 -> STR_8(CODE[7]), STR_7(CODE[7]), STR_6(CODE[7]), STR_5(CODE[9]), 
;!		 -> STR_4(CODE[11]), STR_3(CODE[9]), STR_1(CODE[3]), 
;!
;!    sp__strcpy	PTR unsigned char  size(1) Largest target is 0
;!
;!    sp__strchr	PTR unsigned char  size(1) Largest target is 10
;!		 -> NULL(NULL[0]), sim300_buffer(BANK0[10]), 
;!
;!    SIM300CheckResponse@check	PTR const unsigned char  size(1) Largest target is 3
;!		 -> STR_2(CODE[3]), 
;!
;!    SIM300CheckResponse@response	PTR const unsigned char  size(1) Largest target is 10
;!		 -> sim300_buffer(BANK0[10]), 
;!
;!    SIM300Cmd@cmd	PTR const unsigned char  size(1) Largest target is 11
;!		 -> STR_8(CODE[7]), STR_7(CODE[7]), STR_6(CODE[7]), STR_5(CODE[9]), 
;!		 -> STR_4(CODE[11]), STR_3(CODE[9]), STR_1(CODE[3]), 
;!
;!    USARTReadBuffer@buff	PTR unsigned char  size(1) Largest target is 10
;!		 -> sim300_buffer(BANK0[10]), 
;!
;!    USARTWriteString@str	PTR const unsigned char  size(1) Largest target is 11
;!		 -> STR_8(CODE[7]), STR_7(CODE[7]), STR_6(CODE[7]), STR_5(CODE[9]), 
;!		 -> STR_4(CODE[11]), STR_3(CODE[9]), STR_1(CODE[3]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _ISR in COMMON
;!
;!    _ISR->_USARTHandleRxInt
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_SIM300Init
;!    _SIM300Init->_SIM300Cmd
;!    _SIM300Cmd->_USARTReadBuffer
;!    _USARTWriteString->_USARTWriteChar
;!    _USARTReadBuffer->_USARTReadData
;!
;!Critical Paths under _ISR in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK1
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 5     5      0    1062
;!                                             19 BANK0      5     5      0
;!                         _SIM300Init
;! ---------------------------------------------------------------------------------
;! (1) _SIM300Init                                           4     4      0     946
;!                                             15 BANK0      4     4      0
;!                          _USARTInit
;!                          _SIM300Cmd
;!                 _USARTDataAvailable
;!                    _USARTReadBuffer
;!                _SIM300CheckResponse
;! ---------------------------------------------------------------------------------
;! (2) _USARTInit                                            3     1      2      22
;!                                              0 BANK0      3     1      2
;! ---------------------------------------------------------------------------------
;! (2) _SIM300Cmd                                            6     6      0     520
;!                                              9 BANK0      6     6      0
;!                   _USARTWriteString
;!                     _USARTWriteChar
;!                             _strlen
;!                 _USARTDataAvailable
;!                    _USARTReadBuffer
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (3) _USARTWriteString                                     2     2      0      67
;!                                              1 BANK0      2     2      0
;!                     _USARTWriteChar
;! ---------------------------------------------------------------------------------
;! (3) _USARTWriteChar                                       1     1      0      22
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _USARTDataAvailable                                   1     1      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _USARTReadBuffer                                      7     5      2     113
;!                                              2 BANK0      7     5      2
;!                      _USARTReadData
;! ---------------------------------------------------------------------------------
;! (3) _USARTReadData                                        2     2      0      23
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (2) _SIM300CheckResponse                                  6     4      2     267
;!                                              0 BANK0      6     4      2
;! ---------------------------------------------------------------------------------
;! (3) _strlen                                               8     6      2      90
;!                                              0 BANK0      8     6      2
;! ---------------------------------------------------------------------------------
;! (3) ___wmul                                               6     2      4      92
;!                                              0 BANK0      6     2      4
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _ISR                                                  4     4      0      23
;!                                              5 COMMON     4     4      0
;!                   _USARTHandleRxInt
;! ---------------------------------------------------------------------------------
;! (6) _USARTHandleRxInt                                     5     5      0      23
;!                                              0 COMMON     5     5      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _SIM300Init
;!     _USARTInit
;!     _SIM300Cmd
;!       _USARTWriteString
;!         _USARTWriteChar
;!       _USARTWriteChar
;!       _strlen
;!       _USARTDataAvailable
;!       _USARTReadBuffer
;!         _USARTReadData
;!       ___wmul
;!     _USARTDataAvailable
;!     _USARTReadBuffer
;!       _USARTReadData
;!     _SIM300CheckResponse
;!
;! _ISR (ROOT)
;!   _USARTHandleRxInt
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA              40      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      9       B       1       78.6%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       8       2        0.0%
;!ABS                  0      0      3C       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50     18      31       5       61.3%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            20      0       0       6        0.0%
;!BANK1               20      0       0       7        0.0%
;!DATA                 0      0      44       8        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 20 in file "C:\XC8 PROJECTS\Modem\Test.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   23[BANK0 ] unsigned char 
;;  r               1   22[BANK0 ] char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       2       0
;;      Temps:          0       3       0
;;      Totals:         0       5       0
;;Total ram usage:        5 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_SIM300Init
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\XC8 PROJECTS\Modem\Test.c"
	line	20
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 2
; Regs used in _main: [allreg]
	line	21
	
l1814:	
;Test.c: 21: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	22
;Test.c: 22: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	23
	
l1816:	
;Test.c: 23: char i = 0;
	clrf	(main@i)
	line	26
	
l1818:	
;Test.c: 26: for(i = 0; i <= 5; i++)
	clrf	(main@i)
	
l1820:	
	movlw	(06h)
	subwf	(main@i),w
	skipc
	goto	u1151
	goto	u1150
u1151:
	goto	l259
u1150:
	goto	l1832
	
l1822:	
	goto	l1832
	line	27
	
l259:	
	line	28
;Test.c: 27: {
;Test.c: 28: RB7 = 1;
	bsf	(55/8),(55)&7	;volatile
	line	29
	
l1824:	
;Test.c: 29: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u1457:
	decfsz	((??_main+0)+0),f
	goto	u1457
	decfsz	((??_main+0)+0+1),f
	goto	u1457
	decfsz	((??_main+0)+0+2),f
	goto	u1457
	nop2
opt asmopt_on

	line	30
	
l1826:	
;Test.c: 30: RB7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	31
;Test.c: 31: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u1467:
	decfsz	((??_main+0)+0),f
	goto	u1467
	decfsz	((??_main+0)+0+1),f
	goto	u1467
	decfsz	((??_main+0)+0+2),f
	goto	u1467
	nop2
opt asmopt_on

	line	26
	
l1828:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	
l1830:	
	movlw	(06h)
	subwf	(main@i),w
	skipc
	goto	u1161
	goto	u1160
u1161:
	goto	l259
u1160:
	goto	l1832
	
l260:	
	line	34
	
l1832:	
;Test.c: 32: }
;Test.c: 34: int8_t r= SIM300Init();
	fcall	_SIM300Init
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@r)
	line	36
	
l1834:	
;Test.c: 36: for(i = 0; i <= 10; i++)
	clrf	(main@i)
	
l1836:	
	movlw	(0Bh)
	subwf	(main@i),w
	skipc
	goto	u1171
	goto	u1170
u1171:
	goto	l1840
u1170:
	goto	l1846
	
l1838:	
	goto	l1846
	line	37
	
l261:	
	line	38
	
l1840:	
;Test.c: 37: {
;Test.c: 38: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u1477:
	decfsz	((??_main+0)+0),f
	goto	u1477
	decfsz	((??_main+0)+0+1),f
	goto	u1477
	decfsz	((??_main+0)+0+2),f
	goto	u1477
	nop2
opt asmopt_on

	line	36
	
l1842:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	
l1844:	
	movlw	(0Bh)
	subwf	(main@i),w
	skipc
	goto	u1181
	goto	u1180
u1181:
	goto	l1840
u1180:
	goto	l1846
	
l262:	
	line	41
	
l1846:	
;Test.c: 39: }
;Test.c: 41: if(r == 1)
	movf	(main@r),w
	xorlw	01h
	skipz
	goto	u1191
	goto	u1190
u1191:
	goto	l268
u1190:
	line	43
	
l1848:	
;Test.c: 42: {
;Test.c: 43: RB7 = 1;
	bsf	(55/8),(55)&7	;volatile
	line	44
;Test.c: 44: while(1)
	
l264:	
	line	46
;Test.c: 45: {
	
l265:	
	line	44
	goto	l264
	
l266:	
	line	47
;Test.c: 46: }
;Test.c: 47: }
	goto	l271
	line	48
	
l263:	
	line	50
;Test.c: 48: else
;Test.c: 49: {
;Test.c: 50: while(1)
	
l268:	
	line	52
;Test.c: 51: {
;Test.c: 52: RB7 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7	;volatile
	line	53
	
l1850:	
;Test.c: 53: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u1487:
	decfsz	((??_main+0)+0),f
	goto	u1487
	decfsz	((??_main+0)+0+1),f
	goto	u1487
	decfsz	((??_main+0)+0+2),f
	goto	u1487
	nop2
opt asmopt_on

	line	54
	
l1852:	
;Test.c: 54: RB7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	55
;Test.c: 55: _delay(500000);
	opt asmopt_off
movlw  3
movwf	((??_main+0)+0+2),f
movlw	138
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u1497:
	decfsz	((??_main+0)+0),f
	goto	u1497
	decfsz	((??_main+0)+0+1),f
	goto	u1497
	decfsz	((??_main+0)+0+2),f
	goto	u1497
	nop2
opt asmopt_on

	goto	l268
	line	56
	
l269:	
	line	50
	goto	l268
	
l270:	
	goto	l271
	line	57
	
l267:	
	line	58
	
l271:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_SIM300Init

;; *************** function _SIM300Init *****************
;; Defined at:
;;		line 59 in file "C:\XC8 PROJECTS\Modem\sim300.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   17[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       2       0
;;      Temps:          0       2       0
;;      Totals:         0       4       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_USARTInit
;;		_SIM300Cmd
;;		_USARTDataAvailable
;;		_USARTReadBuffer
;;		_SIM300CheckResponse
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text305,local,class=CODE,delta=2,merge=1
global __ptext305
__ptext305:	;psect for function _SIM300Init
psect	text305
	file	"C:\XC8 PROJECTS\Modem\sim300.c"
	line	59
	global	__size_of_SIM300Init
	__size_of_SIM300Init	equ	__end_of_SIM300Init-_SIM300Init
	
_SIM300Init:	
	opt	stack 2
; Regs used in _SIM300Init: [allreg]
	line	61
	
l1566:	
;sim300.c: 61: USARTInit(9600);
	movlw	low(02580h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_USARTInit)
	movlw	high(02580h)
	movwf	((?_USARTInit))+1
	fcall	_USARTInit
	line	64
	
l1568:	
;sim300.c: 64: SIM300Cmd("AT");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_SIM300Cmd
	line	67
	
l1570:	
;sim300.c: 67: uint16_t i=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(SIM300Init@i)
	clrf	(SIM300Init@i+1)
	line	73
;sim300.c: 73: while(i<10)
	goto	l1582
	
l166:	
	line	75
	
l1572:	
;sim300.c: 74: {
;sim300.c: 75: if(USARTDataAvailable()<6)
	fcall	_USARTDataAvailable
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_SIM300Init+0)+0
	movlw	(06h)
	subwf	0+(??_SIM300Init+0)+0,w
	skipnc
	goto	u881
	goto	u880
u881:
	goto	l1578
u880:
	line	77
	
l1574:	
;sim300.c: 76: {
;sim300.c: 77: i++;
	movlw	low(01h)
	addwf	(SIM300Init@i),f
	skipnc
	incf	(SIM300Init@i+1),f
	movlw	high(01h)
	addwf	(SIM300Init@i+1),f
	line	78
;sim300.c: 78: _delay(10000);
	opt asmopt_off
movlw	13
movwf	((??_SIM300Init+0)+0+1),f
	movlw	251
movwf	((??_SIM300Init+0)+0),f
u1507:
	decfsz	((??_SIM300Init+0)+0),f
	goto	u1507
	decfsz	((??_SIM300Init+0)+0+1),f
	goto	u1507
	nop2
opt asmopt_on

	line	79
;sim300.c: 79: continue;
	goto	l1582
	line	80
	
l1576:	
;sim300.c: 80: }
	goto	l1582
	line	81
	
l167:	
	line	85
	
l1578:	
;sim300.c: 81: else
;sim300.c: 82: {
;sim300.c: 85: USARTReadBuffer(sim300_buffer,6);
	movlw	low(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_USARTReadBuffer)
	movlw	high(06h)
	movwf	((?_USARTReadBuffer))+1
	movlw	(_sim300_buffer)&0ffh
	fcall	_USARTReadBuffer
	line	87
;sim300.c: 87: return SIM300CheckResponse(sim300_buffer,"OK",6);
	movlw	((STR_2-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_SIM300Init+0)+0
	movf	(??_SIM300Init+0)+0,w
	movwf	(?_SIM300CheckResponse)
	movlw	(06h)
	movwf	(??_SIM300Init+1)+0
	movf	(??_SIM300Init+1)+0,w
	movwf	0+(?_SIM300CheckResponse)+01h
	movlw	(_sim300_buffer)&0ffh
	fcall	_SIM300CheckResponse
	goto	l169
	
l1580:	
	goto	l169
	line	88
	
l168:	
	goto	l1582
	line	89
	
l165:	
	line	73
	
l1582:	
	movlw	high(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(SIM300Init@i+1),w
	movlw	low(0Ah)
	skipnz
	subwf	(SIM300Init@i),w
	skipc
	goto	u891
	goto	u890
u891:
	goto	l1572
u890:
	goto	l1584
	
l170:	
	line	94
	
l1584:	
;sim300.c: 88: }
;sim300.c: 89: }
;sim300.c: 94: return -3;
	movlw	(-3)
	goto	l169
	
l1586:	
	line	95
	
l169:	
	return
	opt stack 0
GLOBAL	__end_of_SIM300Init
	__end_of_SIM300Init:
	signat	_SIM300Init,89
	global	_USARTInit

;; *************** function _USARTInit *****************
;; Defined at:
;;		line 32 in file "C:\XC8 PROJECTS\Modem\usart_pic16.c"
;; Parameters:    Size  Location     Type
;;  baud_rate       2    0[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       2       0
;;      Locals:         0       0       0
;;      Temps:          0       1       0
;;      Totals:         0       3       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SIM300Init
;; This function uses a non-reentrant model
;;
psect	text306,local,class=CODE,delta=2,merge=1
global __ptext306
__ptext306:	;psect for function _USARTInit
psect	text306
	file	"C:\XC8 PROJECTS\Modem\usart_pic16.c"
	line	32
	global	__size_of_USARTInit
	__size_of_USARTInit	equ	__end_of_USARTInit-_USARTInit
	
_USARTInit:	
	opt	stack 4
; Regs used in _USARTInit: [wreg-fsr0h+status,2+status,0]
	line	34
	
l1406:	
;usart_pic16.c: 34: UQFront=UQEnd=-1;
	movlw	(-1)
	movwf	(_UQEnd)	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_USARTInit+0)+0
	movf	(??_USARTInit+0)+0,w
	movwf	(_UQFront)	;volatile
	line	37
;usart_pic16.c: 37: switch(baud_rate)
	goto	l1418
	line	39
;usart_pic16.c: 38: {
;usart_pic16.c: 39: case 9600:
	
l46:	
	line	40
	
l1408:	
;usart_pic16.c: 40: SPBRG=25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	41
;usart_pic16.c: 41: break;
	goto	l47
	line	42
;usart_pic16.c: 42: case 19200:
	
l48:	
	line	43
	
l1410:	
;usart_pic16.c: 43: SPBRG=12;
	movlw	(0Ch)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	44
;usart_pic16.c: 44: break;
	goto	l47
	line	45
;usart_pic16.c: 45: case 28800:
	
l49:	
	line	46
	
l1412:	
;usart_pic16.c: 46: SPBRG=8;
	movlw	(08h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	47
;usart_pic16.c: 47: break;
	goto	l47
	line	48
;usart_pic16.c: 48: case 33600:
	
l50:	
	line	49
	
l1414:	
;usart_pic16.c: 49: SPBRG=6;
	movlw	(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	50
;usart_pic16.c: 50: break;
	goto	l47
	line	51
	
l1416:	
;usart_pic16.c: 51: }
	goto	l47
	line	37
	
l45:	
	
l1418:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 4 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 37 to 131
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte          104     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	bcf	status, 5	;RP0=0, select bank0
	movf (USARTInit@baud_rate+1),w
	opt asmopt_off
	xorlw	37^0	; case 37
	skipnz
	goto	l2032
	xorlw	75^37	; case 75
	skipnz
	goto	l2034
	xorlw	112^75	; case 112
	skipnz
	goto	l2036
	xorlw	131^112	; case 131
	skipnz
	goto	l2038
	goto	l47
	opt asmopt_on
	
l2032:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 128 to 128
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           10     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf (USARTInit@baud_rate),w
	opt asmopt_off
	xorlw	128^0	; case 128
	skipnz
	goto	l1408
	goto	l47
	opt asmopt_on
	
l2034:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte            7     6 (fixed)
; jumptable            260     6 (fixed)
; rangetable             5     6 (fixed)
; spacedrange            8     9 (fixed)
; locatedrange           1     3 (fixed)
;	Chosen strategy is simple_byte

	movf (USARTInit@baud_rate),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l1410
	goto	l47
	opt asmopt_on
	
l2036:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 128 to 128
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           10     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf (USARTInit@baud_rate),w
	opt asmopt_off
	xorlw	128^0	; case 128
	skipnz
	goto	l1412
	goto	l47
	opt asmopt_on
	
l2038:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 64 to 64
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           10     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf (USARTInit@baud_rate),w
	opt asmopt_off
	xorlw	64^0	; case 64
	skipnz
	goto	l1414
	goto	l47
	opt asmopt_on

	line	51
	
l47:	
	line	53
;usart_pic16.c: 53: TXSTAbits.TX9=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(152)^080h,6	;volatile
	line	54
;usart_pic16.c: 54: TXSTAbits.TXEN=1;
	bsf	(152)^080h,5	;volatile
	line	55
;usart_pic16.c: 55: TXSTAbits.SYNC=0;
	bcf	(152)^080h,4	;volatile
	line	56
;usart_pic16.c: 56: TXSTAbits.BRGH=1;
	bsf	(152)^080h,2	;volatile
	line	59
;usart_pic16.c: 59: RCSTAbits.SPEN=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(24),7	;volatile
	line	60
;usart_pic16.c: 60: RCSTAbits.RX9=0;
	bcf	(24),6	;volatile
	line	61
;usart_pic16.c: 61: RCSTAbits.CREN=1;
	bsf	(24),4	;volatile
	line	62
;usart_pic16.c: 62: RCSTAbits.ADDEN=0;
	bcf	(24),3	;volatile
	line	65
;usart_pic16.c: 65: RCIE=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1125/8)^080h,(1125)&7	;volatile
	line	66
;usart_pic16.c: 66: PEIE=1;
	bsf	(94/8),(94)&7	;volatile
	line	69
;usart_pic16.c: 69: (GIE = 1);
	bsf	(95/8),(95)&7	;volatile
	line	70
	
l51:	
	return
	opt stack 0
GLOBAL	__end_of_USARTInit
	__end_of_USARTInit:
	signat	_USARTInit,4216
	global	_SIM300Cmd

;; *************** function _SIM300Cmd *****************
;; Defined at:
;;		line 98 in file "C:\XC8 PROJECTS\Modem\sim300.c"
;; Parameters:    Size  Location     Type
;;  cmd             1    wreg     PTR const unsigned char 
;;		 -> STR_8(7), STR_7(7), STR_6(7), STR_5(9), 
;;		 -> STR_4(11), STR_3(9), STR_1(3), 
;; Auto vars:     Size  Location     Type
;;  cmd             1   13[BANK0 ] PTR const unsigned char 
;;		 -> STR_8(7), STR_7(7), STR_6(7), STR_5(9), 
;;		 -> STR_4(11), STR_3(9), STR_1(3), 
;;  i               2   11[BANK0 ] unsigned int 
;;  len             1   14[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       4       0
;;      Temps:          0       2       0
;;      Totals:         0       6       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_USARTWriteString
;;		_USARTWriteChar
;;		_strlen
;;		_USARTDataAvailable
;;		_USARTReadBuffer
;;		___wmul
;; This function is called by:
;;		_SIM300Init
;;		_SIM300GetNetStat
;;		_SIM300IsSIMInserted
;;		_SIM300GetProviderName
;;		_SIM300GetIMEI
;;		_SIM300GetManufacturer
;;		_SIM300GetModel
;; This function uses a non-reentrant model
;;
psect	text307,local,class=CODE,delta=2,merge=1
global __ptext307
__ptext307:	;psect for function _SIM300Cmd
psect	text307
	file	"C:\XC8 PROJECTS\Modem\sim300.c"
	line	98
	global	__size_of_SIM300Cmd
	__size_of_SIM300Cmd	equ	__end_of_SIM300Cmd-_SIM300Cmd
	
_SIM300Cmd:	
	opt	stack 2
; Regs used in _SIM300Cmd: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;SIM300Cmd@cmd stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(SIM300Cmd@cmd)
	line	99
	
l1588:	
;sim300.c: 99: USARTWriteString(cmd);
	movf	(SIM300Cmd@cmd),w
	fcall	_USARTWriteString
	line	100
	
l1590:	
;sim300.c: 100: USARTWriteChar(0x0D);
	movlw	(0Dh)
	fcall	_USARTWriteChar
	line	102
	
l1592:	
;sim300.c: 102: uint8_t len=strlen(cmd);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SIM300Cmd@cmd),w
	fcall	_strlen
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_strlen)),w
	movwf	(??_SIM300Cmd+0)+0
	movf	(??_SIM300Cmd+0)+0,w
	movwf	(SIM300Cmd@len)
	line	104
	
l1594:	
;sim300.c: 104: len++;
	movlw	(01h)
	movwf	(??_SIM300Cmd+0)+0
	movf	(??_SIM300Cmd+0)+0,w
	addwf	(SIM300Cmd@len),f
	line	106
	
l1596:	
;sim300.c: 106: uint16_t i=0;
	clrf	(SIM300Cmd@i)
	clrf	(SIM300Cmd@i+1)
	line	109
;sim300.c: 109: while(i<10*len)
	goto	l1608
	
l174:	
	line	111
	
l1598:	
;sim300.c: 110: {
;sim300.c: 111: if(USARTDataAvailable()<len)
	fcall	_USARTDataAvailable
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_SIM300Cmd+0)+0
	movf	(SIM300Cmd@len),w
	subwf	0+(??_SIM300Cmd+0)+0,w
	skipnc
	goto	u901
	goto	u900
u901:
	goto	l1604
u900:
	line	113
	
l1600:	
;sim300.c: 112: {
;sim300.c: 113: i++;
	movlw	low(01h)
	addwf	(SIM300Cmd@i),f
	skipnc
	incf	(SIM300Cmd@i+1),f
	movlw	high(01h)
	addwf	(SIM300Cmd@i+1),f
	line	114
;sim300.c: 114: _delay(10000);
	opt asmopt_off
movlw	13
movwf	((??_SIM300Cmd+0)+0+1),f
	movlw	251
movwf	((??_SIM300Cmd+0)+0),f
u1517:
	decfsz	((??_SIM300Cmd+0)+0),f
	goto	u1517
	decfsz	((??_SIM300Cmd+0)+0+1),f
	goto	u1517
	nop2
opt asmopt_on

	line	115
;sim300.c: 115: continue;
	goto	l1608
	line	116
	
l1602:	
;sim300.c: 116: }
	goto	l1608
	line	117
	
l175:	
	line	121
	
l1604:	
;sim300.c: 117: else
;sim300.c: 118: {
;sim300.c: 121: USARTReadBuffer(sim300_buffer,len);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SIM300Cmd@len),w
	movwf	(??_SIM300Cmd+0)+0+0
	clrf	(??_SIM300Cmd+0)+0+1
	movf	0+(??_SIM300Cmd+0)+0,w
	movwf	(?_USARTReadBuffer)
	movf	1+(??_SIM300Cmd+0)+0,w
	movwf	(?_USARTReadBuffer+1)
	movlw	(_sim300_buffer)&0ffh
	fcall	_USARTReadBuffer
	goto	l177
	line	123
	
l1606:	
;sim300.c: 123: return 1;
;	Return value of _SIM300Cmd is never used
	goto	l177
	line	124
	
l176:	
	goto	l1608
	line	125
	
l173:	
	line	109
	
l1608:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SIM300Cmd@len),w
	movwf	(??_SIM300Cmd+0)+0+0
	clrf	(??_SIM300Cmd+0)+0+1
	movf	0+(??_SIM300Cmd+0)+0,w
	movwf	(?___wmul)
	movf	1+(??_SIM300Cmd+0)+0,w
	movwf	(?___wmul+1)
	movlw	low(0Ah)
	movwf	0+(?___wmul)+02h
	movlw	high(0Ah)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___wmul)),w
	subwf	(SIM300Cmd@i+1),w
	skipz
	goto	u915
	movf	(0+(?___wmul)),w
	subwf	(SIM300Cmd@i),w
u915:
	skipc
	goto	u911
	goto	u910
u911:
	goto	l1598
u910:
	goto	l177
	
l178:	
	line	128
;sim300.c: 124: }
;sim300.c: 125: }
;sim300.c: 127: return -3;
;	Return value of _SIM300Cmd is never used
	
l177:	
	return
	opt stack 0
GLOBAL	__end_of_SIM300Cmd
	__end_of_SIM300Cmd:
	signat	_SIM300Cmd,4217
	global	_USARTWriteString

;; *************** function _USARTWriteString *****************
;; Defined at:
;;		line 81 in file "C:\XC8 PROJECTS\Modem\usart_pic16.c"
;; Parameters:    Size  Location     Type
;;  str             1    wreg     PTR const unsigned char 
;;		 -> STR_8(7), STR_7(7), STR_6(7), STR_5(9), 
;;		 -> STR_4(11), STR_3(9), STR_1(3), 
;; Auto vars:     Size  Location     Type
;;  str             1    2[BANK0 ] PTR const unsigned char 
;;		 -> STR_8(7), STR_7(7), STR_6(7), STR_5(9), 
;;		 -> STR_4(11), STR_3(9), STR_1(3), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       1       0
;;      Temps:          0       1       0
;;      Totals:         0       2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_USARTWriteChar
;; This function is called by:
;;		_SIM300Cmd
;;		_USARTWriteLine
;; This function uses a non-reentrant model
;;
psect	text308,local,class=CODE,delta=2,merge=1
global __ptext308
__ptext308:	;psect for function _USARTWriteString
psect	text308
	file	"C:\XC8 PROJECTS\Modem\usart_pic16.c"
	line	81
	global	__size_of_USARTWriteString
	__size_of_USARTWriteString	equ	__end_of_USARTWriteString-_USARTWriteString
	
_USARTWriteString:	
	opt	stack 2
; Regs used in _USARTWriteString: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;USARTWriteString@str stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(USARTWriteString@str)
	line	82
	
l1440:	
;usart_pic16.c: 82: while(*str!='\0')
	goto	l1446
	
l61:	
	line	84
	
l1442:	
;usart_pic16.c: 83: {
;usart_pic16.c: 84: USARTWriteChar(*str);
	movf	(USARTWriteString@str),w
	movwf	fsr0
	fcall	stringdir
	fcall	_USARTWriteChar
	line	85
	
l1444:	
;usart_pic16.c: 85: str++;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_USARTWriteString+0)+0
	movf	(??_USARTWriteString+0)+0,w
	addwf	(USARTWriteString@str),f
	goto	l1446
	line	86
	
l60:	
	line	82
	
l1446:	
	movf	(USARTWriteString@str),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u711
	goto	u710
u711:
	goto	l1442
u710:
	goto	l63
	
l62:	
	line	87
	
l63:	
	return
	opt stack 0
GLOBAL	__end_of_USARTWriteString
	__end_of_USARTWriteString:
	signat	_USARTWriteString,4216
	global	_USARTWriteChar

;; *************** function _USARTWriteChar *****************
;; Defined at:
;;		line 74 in file "C:\XC8 PROJECTS\Modem\usart_pic16.c"
;; Parameters:    Size  Location     Type
;;  ch              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch              1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       1       0
;;      Temps:          0       0       0
;;      Totals:         0       1       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USARTWriteString
;;		_SIM300Cmd
;;		_USARTWriteLine
;;		_USARTWriteInt
;;		_USARTGotoNewLine
;; This function uses a non-reentrant model
;;
psect	text309,local,class=CODE,delta=2,merge=1
global __ptext309
__ptext309:	;psect for function _USARTWriteChar
psect	text309
	file	"C:\XC8 PROJECTS\Modem\usart_pic16.c"
	line	74
	global	__size_of_USARTWriteChar
	__size_of_USARTWriteChar	equ	__end_of_USARTWriteChar-_USARTWriteChar
	
_USARTWriteChar:	
	opt	stack 3
; Regs used in _USARTWriteChar: [wreg]
;USARTWriteChar@ch stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(USARTWriteChar@ch)
	line	75
	
l1436:	
;usart_pic16.c: 75: while(!PIR1bits.TXIF);
	goto	l54
	
l55:	
	
l54:	
	btfss	(12),4	;volatile
	goto	u701
	goto	u700
u701:
	goto	l54
u700:
	goto	l1438
	
l56:	
	line	76
	
l1438:	
;usart_pic16.c: 76: TXREG=ch;
	movf	(USARTWriteChar@ch),w
	movwf	(25)	;volatile
	line	77
	
l57:	
	return
	opt stack 0
GLOBAL	__end_of_USARTWriteChar
	__end_of_USARTWriteChar:
	signat	_USARTWriteChar,4216
	global	_USARTDataAvailable

;; *************** function _USARTDataAvailable *****************
;; Defined at:
;;		line 160 in file "C:\XC8 PROJECTS\Modem\usart_pic16.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       1       0
;;      Totals:         0       1       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SIM300Init
;;		_SIM300Cmd
;;		_USARTFlushBuffer
;;		_SIM300WaitForResponse
;;		_SIM300GetNetStat
;;		_SIM300IsSIMInserted
;; This function uses a non-reentrant model
;;
psect	text310,local,class=CODE,delta=2,merge=1
global __ptext310
__ptext310:	;psect for function _USARTDataAvailable
psect	text310
	file	"C:\XC8 PROJECTS\Modem\usart_pic16.c"
	line	160
	global	__size_of_USARTDataAvailable
	__size_of_USARTDataAvailable	equ	__end_of_USARTDataAvailable-_USARTDataAvailable
	
_USARTDataAvailable:	
	opt	stack 4
; Regs used in _USARTDataAvailable: [wreg+status,2+status,0]
	line	161
	
l1474:	
;usart_pic16.c: 161: if(UQFront==-1)
	movf	(_UQFront),w	;volatile
	xorlw	-1
	skipz
	goto	u751
	goto	u750
u751:
	goto	l1480
u750:
	line	162
	
l1476:	
;usart_pic16.c: 162: return 0;
	movlw	(0)
	goto	l91
	
l1478:	
	goto	l91
	
l90:	
	line	163
	
l1480:	
;usart_pic16.c: 163: if(UQFront<UQEnd)
	movf	(_UQFront),w	;volatile
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_USARTDataAvailable+0)+0
	movf	(_UQEnd),w	;volatile
	xorlw	80h
	subwf	(??_USARTDataAvailable+0)+0
	skipnc
	goto	u761
	goto	u760
u761:
	goto	l1488
u760:
	line	164
	
l1482:	
;usart_pic16.c: 164: return(UQEnd-UQFront+1);
	decf	(_UQFront),w	;volatile
	xorlw	0ffh
	addwf	(_UQEnd),w	;volatile
	addlw	01h
	goto	l91
	
l1484:	
	goto	l91
	
l1486:	
	goto	l91
	line	165
	
l92:	
	
l1488:	
;usart_pic16.c: 165: else if(UQFront>UQEnd)
	movf	(_UQEnd),w	;volatile
	xorlw	80h
	movwf	(??_USARTDataAvailable+0)+0
	movf	(_UQFront),w	;volatile
	xorlw	80h
	subwf	(??_USARTDataAvailable+0)+0
	skipnc
	goto	u771
	goto	u770
u771:
	goto	l1496
u770:
	line	166
	
l1490:	
;usart_pic16.c: 166: return (10-UQFront+UQEnd+1);
	decf	(_UQFront),w	;volatile
	xorlw	0ffh
	addwf	(_UQEnd),w	;volatile
	addlw	0Bh
	goto	l91
	
l1492:	
	goto	l91
	
l1494:	
	goto	l91
	line	167
	
l94:	
	line	168
	
l1496:	
;usart_pic16.c: 167: else
;usart_pic16.c: 168: return 1;
	movlw	(01h)
	goto	l91
	
l1498:	
	goto	l91
	
l95:	
	goto	l91
	
l93:	
	line	169
	
l91:	
	return
	opt stack 0
GLOBAL	__end_of_USARTDataAvailable
	__end_of_USARTDataAvailable:
	signat	_USARTDataAvailable,89
	global	_USARTReadBuffer

;; *************** function _USARTReadBuffer *****************
;; Defined at:
;;		line 224 in file "C:\XC8 PROJECTS\Modem\usart_pic16.c"
;; Parameters:    Size  Location     Type
;;  buff            1    wreg     PTR unsigned char 
;;		 -> sim300_buffer(10), 
;;  len             2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  buff            1    6[BANK0 ] PTR unsigned char 
;;		 -> sim300_buffer(10), 
;;  i               2    7[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       2       0
;;      Locals:         0       3       0
;;      Temps:          0       2       0
;;      Totals:         0       7       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_USARTReadData
;; This function is called by:
;;		_SIM300Init
;;		_SIM300Cmd
;;		_SIM300GetNetStat
;;		_SIM300IsSIMInserted
;; This function uses a non-reentrant model
;;
psect	text311,local,class=CODE,delta=2,merge=1
global __ptext311
__ptext311:	;psect for function _USARTReadBuffer
psect	text311
	file	"C:\XC8 PROJECTS\Modem\usart_pic16.c"
	line	224
	global	__size_of_USARTReadBuffer
	__size_of_USARTReadBuffer	equ	__end_of_USARTReadBuffer-_USARTReadBuffer
	
_USARTReadBuffer:	
	opt	stack 3
; Regs used in _USARTReadBuffer: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;USARTReadBuffer@buff stored from wreg
	line	226
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(USARTReadBuffer@buff)
	
l1552:	
;usart_pic16.c: 225: uint16_t i;
;usart_pic16.c: 226: for(i=0;i<len;i++)
	clrf	(USARTReadBuffer@i)
	clrf	(USARTReadBuffer@i+1)
	goto	l1558
	line	227
	
l120:	
	line	228
	
l1554:	
;usart_pic16.c: 227: {
;usart_pic16.c: 228: buff[i]=USARTReadData();
	fcall	_USARTReadData
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_USARTReadBuffer+0)+0
	movf	(USARTReadBuffer@i),w
	addwf	(USARTReadBuffer@buff),w
	movwf	(??_USARTReadBuffer+1)+0
	movf	0+(??_USARTReadBuffer+1)+0,w
	movwf	fsr0
	movf	(??_USARTReadBuffer+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	226
	
l1556:	
	movlw	low(01h)
	addwf	(USARTReadBuffer@i),f
	skipnc
	incf	(USARTReadBuffer@i+1),f
	movlw	high(01h)
	addwf	(USARTReadBuffer@i+1),f
	goto	l1558
	
l119:	
	
l1558:	
	movf	(USARTReadBuffer@len+1),w
	subwf	(USARTReadBuffer@i+1),w
	skipz
	goto	u865
	movf	(USARTReadBuffer@len),w
	subwf	(USARTReadBuffer@i),w
u865:
	skipc
	goto	u861
	goto	u860
u861:
	goto	l1554
u860:
	goto	l122
	
l121:	
	line	230
	
l122:	
	return
	opt stack 0
GLOBAL	__end_of_USARTReadBuffer
	__end_of_USARTReadBuffer:
	signat	_USARTReadBuffer,8312
	global	_USARTReadData

;; *************** function _USARTReadData *****************
;; Defined at:
;;		line 132 in file "C:\XC8 PROJECTS\Modem\usart_pic16.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data            1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       1       0
;;      Temps:          0       1       0
;;      Totals:         0       2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USARTReadBuffer
;;		_USARTFlushBuffer
;;		_SIM300WaitForResponse
;; This function uses a non-reentrant model
;;
psect	text312,local,class=CODE,delta=2,merge=1
global __ptext312
__ptext312:	;psect for function _USARTReadData
psect	text312
	file	"C:\XC8 PROJECTS\Modem\usart_pic16.c"
	line	132
	global	__size_of_USARTReadData
	__size_of_USARTReadData	equ	__end_of_USARTReadData-_USARTReadData
	
_USARTReadData:	
	opt	stack 3
; Regs used in _USARTReadData: [wreg-fsr0h+status,2+status,0]
	line	136
	
l1452:	
;usart_pic16.c: 133: char data;
;usart_pic16.c: 136: if(UQFront==-1)
	movf	(_UQFront),w	;volatile
	xorlw	-1
	skipz
	goto	u721
	goto	u720
u721:
	goto	l1458
u720:
	line	137
	
l1454:	
;usart_pic16.c: 137: return 0;
	movlw	(0)
	goto	l84
	
l1456:	
	goto	l84
	
l83:	
	line	139
	
l1458:	
;usart_pic16.c: 139: data=URBuff[UQFront];
	movf	(_UQFront),w
	addlw	_URBuff&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_USARTReadData+0)+0
	movf	(??_USARTReadData+0)+0,w
	movwf	(USARTReadData@data)
	line	141
	
l1460:	
;usart_pic16.c: 141: if(UQFront==UQEnd)
	movf	(_UQFront),w	;volatile
	xorwf	(_UQEnd),w	;volatile
	skipz
	goto	u731
	goto	u730
u731:
	goto	l1464
u730:
	line	145
	
l1462:	
;usart_pic16.c: 142: {
;usart_pic16.c: 145: UQFront=UQEnd=-1;
	movlw	(-1)
	movwf	(_UQEnd)	;volatile
	movwf	(??_USARTReadData+0)+0
	movf	(??_USARTReadData+0)+0,w
	movwf	(_UQFront)	;volatile
	line	146
;usart_pic16.c: 146: }
	goto	l1470
	line	147
	
l85:	
	line	149
	
l1464:	
;usart_pic16.c: 147: else
;usart_pic16.c: 148: {
;usart_pic16.c: 149: UQFront++;
	movlw	(01h)
	movwf	(??_USARTReadData+0)+0
	movf	(??_USARTReadData+0)+0,w
	addwf	(_UQFront),f	;volatile
	line	151
	
l1466:	
;usart_pic16.c: 151: if(UQFront==10)
	movf	(_UQFront),w	;volatile
	xorlw	0Ah
	skipz
	goto	u741
	goto	u740
u741:
	goto	l1470
u740:
	line	152
	
l1468:	
;usart_pic16.c: 152: UQFront=0;
	clrf	(_UQFront)	;volatile
	goto	l1470
	
l87:	
	goto	l1470
	line	153
	
l86:	
	line	155
	
l1470:	
;usart_pic16.c: 153: }
;usart_pic16.c: 155: return data;
	movf	(USARTReadData@data),w
	goto	l84
	
l1472:	
	line	156
	
l84:	
	return
	opt stack 0
GLOBAL	__end_of_USARTReadData
	__end_of_USARTReadData:
	signat	_USARTReadData,89
	global	_SIM300CheckResponse

;; *************** function _SIM300CheckResponse *****************
;; Defined at:
;;		line 131 in file "C:\XC8 PROJECTS\Modem\sim300.c"
;; Parameters:    Size  Location     Type
;;  response        1    wreg     PTR const unsigned char 
;;		 -> sim300_buffer(10), 
;;  check           1    0[BANK0 ] PTR const unsigned char 
;;		 -> STR_2(3), 
;;  len             1    1[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  response        1    5[BANK0 ] PTR const unsigned char 
;;		 -> sim300_buffer(10), 
;;  i               1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       2       0
;;      Locals:         0       2       0
;;      Temps:          0       2       0
;;      Totals:         0       6       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SIM300Init
;; This function uses a non-reentrant model
;;
psect	text313,local,class=CODE,delta=2,merge=1
global __ptext313
__ptext313:	;psect for function _SIM300CheckResponse
psect	text313
	file	"C:\XC8 PROJECTS\Modem\sim300.c"
	line	131
	global	__size_of_SIM300CheckResponse
	__size_of_SIM300CheckResponse	equ	__end_of_SIM300CheckResponse-_SIM300CheckResponse
	
_SIM300CheckResponse:	
	opt	stack 4
; Regs used in _SIM300CheckResponse: [wreg-fsr0h+status,2+status,0+pclath]
;SIM300CheckResponse@response stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(SIM300CheckResponse@response)
	line	132
	
l1610:	
;sim300.c: 132: len-=2;
	movlw	low(02h)
	subwf	(SIM300CheckResponse@len),f
	line	135
	
l1612:	
;sim300.c: 135: if(response[0]!=0x0D | response[1]!=0x0A)
	movf	(SIM300CheckResponse@response),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	xorlw	0Dh
	skipz
	goto	u921
	goto	u920
u921:
	goto	l1616
u920:
	
l1614:	
	incf	(SIM300CheckResponse@response),w
	movwf	fsr0
	movf	indf,w
	xorlw	0Ah
	skipnz
	goto	u931
	goto	u930
u931:
	goto	l1620
u930:
	goto	l1616
	
l183:	
	line	136
	
l1616:	
;sim300.c: 136: return -1;
	movlw	(-1)
	goto	l184
	
l1618:	
	goto	l184
	
l181:	
	line	139
	
l1620:	
;sim300.c: 139: if(response[len]!=0x0D | response[len+1]!=0x0A)
	movf	(SIM300CheckResponse@len),w
	addwf	(SIM300CheckResponse@response),w
	movwf	(??_SIM300CheckResponse+0)+0
	movf	0+(??_SIM300CheckResponse+0)+0,w
	movwf	fsr0
	movf	indf,w
	xorlw	0Dh
	skipz
	goto	u941
	goto	u940
u941:
	goto	l1624
u940:
	
l1622:	
	movf	(SIM300CheckResponse@len),w
	addlw	01h
	addwf	(SIM300CheckResponse@response),w
	movwf	(??_SIM300CheckResponse+0)+0
	movf	0+(??_SIM300CheckResponse+0)+0,w
	movwf	fsr0
	movf	indf,w
	xorlw	0Ah
	skipnz
	goto	u951
	goto	u950
u951:
	goto	l1628
u950:
	goto	l1624
	
l187:	
	line	140
	
l1624:	
;sim300.c: 140: return -1;
	movlw	(-1)
	goto	l184
	
l1626:	
	goto	l184
	
l185:	
	line	144
	
l1628:	
;sim300.c: 144: for(uint8_t i=2;i<len;i++)
	movlw	(02h)
	movwf	(??_SIM300CheckResponse+0)+0
	movf	(??_SIM300CheckResponse+0)+0,w
	movwf	(SIM300CheckResponse@i)
	goto	l1638
	line	145
	
l189:	
	line	146
	
l1630:	
;sim300.c: 145: {
;sim300.c: 146: if(response[i]!=check[i-2])
	movf	(SIM300CheckResponse@i),w
	addlw	-2
	addwf	(SIM300CheckResponse@check),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_SIM300CheckResponse+0)+0
	movf	(SIM300CheckResponse@i),w
	addwf	(SIM300CheckResponse@response),w
	movwf	(??_SIM300CheckResponse+1)+0
	movf	0+(??_SIM300CheckResponse+1)+0,w
	movwf	fsr0
	movf	indf,w
	xorwf	(??_SIM300CheckResponse+0)+0,w
	skipnz
	goto	u961
	goto	u960
u961:
	goto	l1636
u960:
	line	147
	
l1632:	
;sim300.c: 147: return -2;
	movlw	(-2)
	goto	l184
	
l1634:	
	goto	l184
	
l190:	
	line	144
	
l1636:	
	movlw	(01h)
	movwf	(??_SIM300CheckResponse+0)+0
	movf	(??_SIM300CheckResponse+0)+0,w
	addwf	(SIM300CheckResponse@i),f
	goto	l1638
	
l188:	
	
l1638:	
	movf	(SIM300CheckResponse@len),w
	subwf	(SIM300CheckResponse@i),w
	skipc
	goto	u971
	goto	u970
u971:
	goto	l1630
u970:
	goto	l1640
	
l191:	
	line	150
	
l1640:	
;sim300.c: 148: }
;sim300.c: 150: return 1;
	movlw	(01h)
	goto	l184
	
l1642:	
	line	151
	
l184:	
	return
	opt stack 0
GLOBAL	__end_of_SIM300CheckResponse
	__end_of_SIM300CheckResponse:
	signat	_SIM300CheckResponse,12409
	global	_strlen

;; *************** function _strlen *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v1.12\sources\strlen.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_8(7), STR_7(7), STR_6(7), STR_5(9), 
;;		 -> STR_4(11), STR_3(9), STR_1(3), 
;; Auto vars:     Size  Location     Type
;;  s               1    6[BANK0 ] PTR const unsigned char 
;;		 -> STR_8(7), STR_7(7), STR_6(7), STR_5(9), 
;;		 -> STR_4(11), STR_3(9), STR_1(3), 
;;  cp              1    7[BANK0 ] PTR const unsigned char 
;;		 -> STR_8(7), STR_7(7), STR_6(7), STR_5(9), 
;;		 -> STR_4(11), STR_3(9), STR_1(3), 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       2       0
;;      Locals:         0       2       0
;;      Temps:          0       4       0
;;      Totals:         0       8       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SIM300Cmd
;;		_SIM300GetProviderName
;; This function uses a non-reentrant model
;;
psect	text314,local,class=CODE,delta=2,merge=1
global __ptext314
__ptext314:	;psect for function _strlen
psect	text314
	file	"C:\Program Files (x86)\Microchip\xc8\v1.12\sources\strlen.c"
	line	5
	global	__size_of_strlen
	__size_of_strlen	equ	__end_of_strlen-_strlen
	
_strlen:	
	opt	stack 3
; Regs used in _strlen: [wreg-fsr0h+status,2+status,0+pclath]
;strlen@s stored from wreg
	line	8
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(strlen@s)
	
l1644:	
	movf	(strlen@s),w
	movwf	(??_strlen+0)+0
	movf	(??_strlen+0)+0,w
	movwf	(strlen@cp)
	line	9
	goto	l1648
	
l367:	
	line	10
	
l1646:	
	movlw	(01h)
	movwf	(??_strlen+0)+0
	movf	(??_strlen+0)+0,w
	addwf	(strlen@cp),f
	goto	l1648
	line	11
	
l366:	
	line	9
	
l1648:	
	movf	(strlen@cp),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u981
	goto	u980
u981:
	goto	l1646
u980:
	goto	l1650
	
l368:	
	line	12
	
l1650:	
	movf	(strlen@s),w
	movwf	(??_strlen+0)+0
	movlw	80h
	movwf	(??_strlen+0)+0+1
	comf	(??_strlen+0)+0,f
	comf	(??_strlen+0)+1,f
	incf	(??_strlen+0)+0,f
	skipnz
	incf	(??_strlen+0)+1,f
	movf	(strlen@cp),w
	movwf	(??_strlen+2)+0
	movlw	80h
	movwf	(??_strlen+2)+0+1
	movf	0+(??_strlen+0)+0,w
	addwf	0+(??_strlen+2)+0,w
	movwf	(?_strlen)
	movf	1+(??_strlen+0)+0,w
	skipnc
	incf	1+(??_strlen+0)+0,w
	addwf	1+(??_strlen+2)+0,w
	movwf	1+(?_strlen)
	goto	l369
	
l1652:	
	line	13
	
l369:	
	return
	opt stack 0
GLOBAL	__end_of_strlen
	__end_of_strlen:
	signat	_strlen,4218
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\Microchip\xc8\v1.12\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[BANK0 ] unsigned int 
;;  multiplicand    2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       4       0
;;      Locals:         0       2       0
;;      Temps:          0       0       0
;;      Totals:         0       6       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SIM300Cmd
;; This function uses a non-reentrant model
;;
psect	text315,local,class=CODE,delta=2,merge=1
global __ptext315
__ptext315:	;psect for function ___wmul
psect	text315
	file	"C:\Program Files (x86)\Microchip\xc8\v1.12\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 3
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l1854:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l1856
	line	6
	
l378:	
	line	7
	
l1856:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u1201
	goto	u1200
u1201:
	goto	l379
u1200:
	line	8
	
l1858:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l379:	
	line	9
	movlw	01h
	
u1215:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u1215
	line	10
	
l1860:	
	movlw	01h
	
u1225:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u1225
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u1231
	goto	u1230
u1231:
	goto	l1856
u1230:
	goto	l1862
	
l380:	
	line	12
	
l1862:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l381
	
l1864:	
	line	13
	
l381:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 7 in file "C:\XC8 PROJECTS\Modem\isr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          4       0       0
;;      Totals:         4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_USARTHandleRxInt
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text316,local,class=CODE,delta=2,merge=1
global __ptext316
__ptext316:	;psect for function _ISR
psect	text316
	file	"C:\XC8 PROJECTS\Modem\isr.c"
	line	7
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 2
; Regs used in _ISR: [wreg-fsr0h+status,2+status,0+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+0)
	movf	fsr0,w
	movwf	(??_ISR+1)
	movf	pclath,w
	movwf	(??_ISR+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+3)
	ljmp	_ISR
psect	text316
	line	8
	
i1l1944:	
;isr.c: 8: if (RCIE && RCIF) {
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1125/8)^080h,(1125)&7	;volatile
	goto	u143_21
	goto	u143_20
u143_21:
	goto	i1l16
u143_20:
	
i1l1946:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7	;volatile
	goto	u144_21
	goto	u144_20
u144_21:
	goto	i1l16
u144_20:
	line	9
	
i1l1948:	
;isr.c: 9: USARTHandleRxInt();
	fcall	_USARTHandleRxInt
	goto	i1l16
	line	10
	
i1l1950:	
;isr.c: 10: return;
	goto	i1l16
	line	11
	
i1l15:	
	line	12
	
i1l16:	
	movf	(??_ISR+3),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(??_ISR+2),w
	movwf	pclath
	movf	(??_ISR+1),w
	movwf	fsr0
	swapf	(??_ISR+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,88
	global	_USARTHandleRxInt

;; *************** function _USARTHandleRxInt *****************
;; Defined at:
;;		line 100 in file "C:\XC8 PROJECTS\Modem\usart_pic16.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data            1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         1       0       0
;;      Temps:          4       0       0
;;      Totals:         5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text317,local,class=CODE,delta=2,merge=1
global __ptext317
__ptext317:	;psect for function _USARTHandleRxInt
psect	text317
	file	"C:\XC8 PROJECTS\Modem\usart_pic16.c"
	line	100
	global	__size_of_USARTHandleRxInt
	__size_of_USARTHandleRxInt	equ	__end_of_USARTHandleRxInt-_USARTHandleRxInt
	
_USARTHandleRxInt:	
	opt	stack 2
; Regs used in _USARTHandleRxInt: [wreg-fsr0h+status,2+status,0]
	line	102
	
i1l1378:	
;usart_pic16.c: 102: if(RB1==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7	;volatile
	goto	u62_21
	goto	u62_20
u62_21:
	goto	i1l69
u62_20:
	line	103
	
i1l1380:	
;usart_pic16.c: 103: RB1=0;
	bcf	(49/8),(49)&7	;volatile
	goto	i1l1382
	line	104
	
i1l69:	
	line	105
;usart_pic16.c: 104: else
;usart_pic16.c: 105: RB1=1;
	bsf	(49/8),(49)&7	;volatile
	goto	i1l1382
	
i1l70:	
	line	108
	
i1l1382:	
;usart_pic16.c: 108: char data=RCREG;
	movf	(26),w	;volatile
	movwf	(??_USARTHandleRxInt+0)+0
	movf	(??_USARTHandleRxInt+0)+0,w
	movwf	(USARTHandleRxInt@data)
	line	111
;usart_pic16.c: 111: if(((UQEnd==10-1) && UQFront==0) || ((UQEnd+1)==UQFront))
	movf	(_UQEnd),w	;volatile
	xorlw	09h
	skipz
	goto	u63_21
	goto	u63_20
u63_21:
	goto	i1l1386
u63_20:
	
i1l1384:	
	movf	(_UQFront),w	;volatile
	skipz
	goto	u64_20
	goto	i1l1388
u64_20:
	goto	i1l1386
	
i1l75:	
	
i1l1386:	
	movf	(_UQFront),w	;volatile
	movwf	(??_USARTHandleRxInt+0)+0
	clrf	(??_USARTHandleRxInt+0)+0+1
	btfsc	(??_USARTHandleRxInt+0)+0,7
	decf	(??_USARTHandleRxInt+0)+0+1,f
	movlw	01h
	addwf	(_UQEnd),w	;volatile
	movwf	(??_USARTHandleRxInt+2)+0
	clrf	1+(??_USARTHandleRxInt+2)+0
	skipnc
	incf	((??_USARTHandleRxInt+2)+0)+1,f
	btfss	(_UQEnd),7
	goto	u65_24
	decf	((??_USARTHandleRxInt+2)+0)+1,f
	u65_24:	;volatile
	
	movf	1+(??_USARTHandleRxInt+0)+0,w
	xorwf	1+(??_USARTHandleRxInt+2)+0,w
	skipz
	goto	u66_25
	movf	0+(??_USARTHandleRxInt+0)+0,w
	xorwf	0+(??_USARTHandleRxInt+2)+0,w
u66_25:

	skipz
	goto	u66_21
	goto	u66_20
u66_21:
	goto	i1l1394
u66_20:
	goto	i1l1388
	
i1l73:	
	line	114
	
i1l1388:	
;usart_pic16.c: 112: {
;usart_pic16.c: 114: UQFront++;
	movlw	(01h)
	movwf	(??_USARTHandleRxInt+0)+0
	movf	(??_USARTHandleRxInt+0)+0,w
	addwf	(_UQFront),f	;volatile
	line	115
	
i1l1390:	
;usart_pic16.c: 115: if(UQFront==10)
	movf	(_UQFront),w	;volatile
	xorlw	0Ah
	skipz
	goto	u67_21
	goto	u67_20
u67_21:
	goto	i1l1394
u67_20:
	line	116
	
i1l1392:	
;usart_pic16.c: 116: UQFront=0;
	clrf	(_UQFront)	;volatile
	goto	i1l1394
	
i1l76:	
	goto	i1l1394
	line	117
	
i1l71:	
	line	119
	
i1l1394:	
;usart_pic16.c: 117: }
;usart_pic16.c: 119: if(UQEnd==10-1)
	movf	(_UQEnd),w	;volatile
	xorlw	09h
	skipz
	goto	u68_21
	goto	u68_20
u68_21:
	goto	i1l1398
u68_20:
	line	120
	
i1l1396:	
;usart_pic16.c: 120: UQEnd=0;
	clrf	(_UQEnd)	;volatile
	goto	i1l1400
	line	121
	
i1l77:	
	line	122
	
i1l1398:	
;usart_pic16.c: 121: else
;usart_pic16.c: 122: UQEnd++;
	movlw	(01h)
	movwf	(??_USARTHandleRxInt+0)+0
	movf	(??_USARTHandleRxInt+0)+0,w
	addwf	(_UQEnd),f	;volatile
	goto	i1l1400
	
i1l78:	
	line	124
	
i1l1400:	
;usart_pic16.c: 124: URBuff[UQEnd]=data;
	movf	(USARTHandleRxInt@data),w
	movwf	(??_USARTHandleRxInt+0)+0
	movf	(_UQEnd),w
	addlw	_URBuff&0ffh
	movwf	fsr0
	movf	(??_USARTHandleRxInt+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	126
	
i1l1402:	
;usart_pic16.c: 126: if(UQFront==-1)
	movf	(_UQFront),w	;volatile
	xorlw	-1
	skipz
	goto	u69_21
	goto	u69_20
u69_21:
	goto	i1l80
u69_20:
	line	127
	
i1l1404:	
;usart_pic16.c: 127: UQFront=0;
	clrf	(_UQFront)	;volatile
	goto	i1l80
	
i1l79:	
	line	128
	
i1l80:	
	return
	opt stack 0
GLOBAL	__end_of_USARTHandleRxInt
	__end_of_USARTHandleRxInt:
	signat	_USARTHandleRxInt,88
psect	text318,local,class=CODE,delta=2,merge=1
global __ptext318
__ptext318:	;psect for function _USARTHandleRxInt
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end

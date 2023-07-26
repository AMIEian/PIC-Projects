opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 58300"

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
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PCLATH equ 0Ah ;# 
# 350 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
INTCON equ 0Bh ;# 
# 427 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PIR1 equ 0Ch ;# 
# 477 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PIR2 equ 0Dh ;# 
# 497 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TMR1 equ 0Eh ;# 
# 503 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TMR1L equ 0Eh ;# 
# 509 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TMR1H equ 0Fh ;# 
# 515 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
T1CON equ 010h ;# 
# 591 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TMR2 equ 011h ;# 
# 597 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
T2CON equ 012h ;# 
# 667 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
CCPR1 equ 015h ;# 
# 673 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
CCPR1L equ 015h ;# 
# 679 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
CCPR1H equ 016h ;# 
# 685 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
CCP1CON equ 017h ;# 
# 742 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
RCSTA equ 018h ;# 
# 836 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TXREG equ 019h ;# 
# 842 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
RCREG equ 01Ah ;# 
# 848 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
ADRESH equ 01Eh ;# 
# 854 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
ADCON0 equ 01Fh ;# 
# 949 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
OPTION_REG equ 081h ;# 
# 1018 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TRISA equ 085h ;# 
# 1067 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TRISB equ 086h ;# 
# 1128 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TRISC equ 087h ;# 
# 1189 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PIE1 equ 08Ch ;# 
# 1239 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PIE2 equ 08Dh ;# 
# 1259 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PCON equ 08Eh ;# 
# 1292 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PR2 equ 092h ;# 
# 1298 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TXSTA equ 098h ;# 
# 1378 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
SPBRG equ 099h ;# 
# 1384 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
ADRESL equ 09Eh ;# 
# 1390 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
ADCON1 equ 09Fh ;# 
# 1442 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
EEDATA equ 010Ch ;# 
# 1448 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
EEADR equ 010Dh ;# 
# 1454 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
EEDATH equ 010Eh ;# 
# 1460 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
EEADRH equ 010Fh ;# 
# 1466 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
EECON1 equ 018Ch ;# 
# 1510 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PCLATH equ 0Ah ;# 
# 350 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
INTCON equ 0Bh ;# 
# 427 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PIR1 equ 0Ch ;# 
# 477 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PIR2 equ 0Dh ;# 
# 497 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TMR1 equ 0Eh ;# 
# 503 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TMR1L equ 0Eh ;# 
# 509 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TMR1H equ 0Fh ;# 
# 515 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
T1CON equ 010h ;# 
# 591 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TMR2 equ 011h ;# 
# 597 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
T2CON equ 012h ;# 
# 667 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
CCPR1 equ 015h ;# 
# 673 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
CCPR1L equ 015h ;# 
# 679 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
CCPR1H equ 016h ;# 
# 685 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
CCP1CON equ 017h ;# 
# 742 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
RCSTA equ 018h ;# 
# 836 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TXREG equ 019h ;# 
# 842 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
RCREG equ 01Ah ;# 
# 848 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
ADRESH equ 01Eh ;# 
# 854 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
ADCON0 equ 01Fh ;# 
# 949 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
OPTION_REG equ 081h ;# 
# 1018 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TRISA equ 085h ;# 
# 1067 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TRISB equ 086h ;# 
# 1128 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TRISC equ 087h ;# 
# 1189 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PIE1 equ 08Ch ;# 
# 1239 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PIE2 equ 08Dh ;# 
# 1259 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PCON equ 08Eh ;# 
# 1292 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PR2 equ 092h ;# 
# 1298 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TXSTA equ 098h ;# 
# 1378 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
SPBRG equ 099h ;# 
# 1384 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
ADRESL equ 09Eh ;# 
# 1390 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
ADCON1 equ 09Fh ;# 
# 1442 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
EEDATA equ 010Ch ;# 
# 1448 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
EEADR equ 010Dh ;# 
# 1454 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
EEDATH equ 010Eh ;# 
# 1460 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
EEADRH equ 010Fh ;# 
# 1466 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
EECON1 equ 018Ch ;# 
# 1510 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PCLATH equ 0Ah ;# 
# 350 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
INTCON equ 0Bh ;# 
# 427 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PIR1 equ 0Ch ;# 
# 477 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PIR2 equ 0Dh ;# 
# 497 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TMR1 equ 0Eh ;# 
# 503 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TMR1L equ 0Eh ;# 
# 509 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TMR1H equ 0Fh ;# 
# 515 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
T1CON equ 010h ;# 
# 591 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TMR2 equ 011h ;# 
# 597 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
T2CON equ 012h ;# 
# 667 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
CCPR1 equ 015h ;# 
# 673 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
CCPR1L equ 015h ;# 
# 679 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
CCPR1H equ 016h ;# 
# 685 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
CCP1CON equ 017h ;# 
# 742 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
RCSTA equ 018h ;# 
# 836 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TXREG equ 019h ;# 
# 842 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
RCREG equ 01Ah ;# 
# 848 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
ADRESH equ 01Eh ;# 
# 854 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
ADCON0 equ 01Fh ;# 
# 949 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
OPTION_REG equ 081h ;# 
# 1018 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TRISA equ 085h ;# 
# 1067 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TRISB equ 086h ;# 
# 1128 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TRISC equ 087h ;# 
# 1189 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PIE1 equ 08Ch ;# 
# 1239 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PIE2 equ 08Dh ;# 
# 1259 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PCON equ 08Eh ;# 
# 1292 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PR2 equ 092h ;# 
# 1298 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TXSTA equ 098h ;# 
# 1378 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
SPBRG equ 099h ;# 
# 1384 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
ADRESL equ 09Eh ;# 
# 1390 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
ADCON1 equ 09Fh ;# 
# 1442 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
EEDATA equ 010Ch ;# 
# 1448 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
EEADR equ 010Dh ;# 
# 1454 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
EEDATH equ 010Eh ;# 
# 1460 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
EEADRH equ 010Fh ;# 
# 1466 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
EECON1 equ 018Ch ;# 
# 1510 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PCLATH equ 0Ah ;# 
# 350 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
INTCON equ 0Bh ;# 
# 427 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PIR1 equ 0Ch ;# 
# 477 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PIR2 equ 0Dh ;# 
# 497 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TMR1 equ 0Eh ;# 
# 503 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TMR1L equ 0Eh ;# 
# 509 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TMR1H equ 0Fh ;# 
# 515 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
T1CON equ 010h ;# 
# 591 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TMR2 equ 011h ;# 
# 597 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
T2CON equ 012h ;# 
# 667 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
CCPR1 equ 015h ;# 
# 673 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
CCPR1L equ 015h ;# 
# 679 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
CCPR1H equ 016h ;# 
# 685 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
CCP1CON equ 017h ;# 
# 742 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
RCSTA equ 018h ;# 
# 836 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TXREG equ 019h ;# 
# 842 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
RCREG equ 01Ah ;# 
# 848 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
ADRESH equ 01Eh ;# 
# 854 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
ADCON0 equ 01Fh ;# 
# 949 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
OPTION_REG equ 081h ;# 
# 1018 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TRISA equ 085h ;# 
# 1067 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TRISB equ 086h ;# 
# 1128 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TRISC equ 087h ;# 
# 1189 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PIE1 equ 08Ch ;# 
# 1239 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PIE2 equ 08Dh ;# 
# 1259 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PCON equ 08Eh ;# 
# 1292 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PR2 equ 092h ;# 
# 1298 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TXSTA equ 098h ;# 
# 1378 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
SPBRG equ 099h ;# 
# 1384 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
ADRESL equ 09Eh ;# 
# 1390 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
ADCON1 equ 09Fh ;# 
# 1442 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
EEDATA equ 010Ch ;# 
# 1448 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
EEADR equ 010Dh ;# 
# 1454 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
EEDATH equ 010Eh ;# 
# 1460 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
EEADRH equ 010Fh ;# 
# 1466 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
EECON1 equ 018Ch ;# 
# 1510 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PCLATH equ 0Ah ;# 
# 350 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
INTCON equ 0Bh ;# 
# 427 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PIR1 equ 0Ch ;# 
# 477 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PIR2 equ 0Dh ;# 
# 497 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TMR1 equ 0Eh ;# 
# 503 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TMR1L equ 0Eh ;# 
# 509 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TMR1H equ 0Fh ;# 
# 515 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
T1CON equ 010h ;# 
# 591 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TMR2 equ 011h ;# 
# 597 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
T2CON equ 012h ;# 
# 667 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
CCPR1 equ 015h ;# 
# 673 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
CCPR1L equ 015h ;# 
# 679 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
CCPR1H equ 016h ;# 
# 685 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
CCP1CON equ 017h ;# 
# 742 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
RCSTA equ 018h ;# 
# 836 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TXREG equ 019h ;# 
# 842 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
RCREG equ 01Ah ;# 
# 848 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
ADRESH equ 01Eh ;# 
# 854 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
ADCON0 equ 01Fh ;# 
# 949 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
OPTION_REG equ 081h ;# 
# 1018 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TRISA equ 085h ;# 
# 1067 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TRISB equ 086h ;# 
# 1128 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TRISC equ 087h ;# 
# 1189 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PIE1 equ 08Ch ;# 
# 1239 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PIE2 equ 08Dh ;# 
# 1259 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PCON equ 08Eh ;# 
# 1292 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PR2 equ 092h ;# 
# 1298 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TXSTA equ 098h ;# 
# 1378 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
SPBRG equ 099h ;# 
# 1384 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
ADRESL equ 09Eh ;# 
# 1390 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
ADCON1 equ 09Fh ;# 
# 1442 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
EEDATA equ 010Ch ;# 
# 1448 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
EEADR equ 010Dh ;# 
# 1454 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
EEDATH equ 010Eh ;# 
# 1460 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
EEADRH equ 010Fh ;# 
# 1466 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
EECON1 equ 018Ch ;# 
# 1510 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PCLATH equ 0Ah ;# 
# 350 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
INTCON equ 0Bh ;# 
# 427 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PIR1 equ 0Ch ;# 
# 477 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PIR2 equ 0Dh ;# 
# 497 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TMR1 equ 0Eh ;# 
# 503 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TMR1L equ 0Eh ;# 
# 509 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TMR1H equ 0Fh ;# 
# 515 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
T1CON equ 010h ;# 
# 591 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TMR2 equ 011h ;# 
# 597 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
T2CON equ 012h ;# 
# 667 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
CCPR1 equ 015h ;# 
# 673 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
CCPR1L equ 015h ;# 
# 679 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
CCPR1H equ 016h ;# 
# 685 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
CCP1CON equ 017h ;# 
# 742 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
RCSTA equ 018h ;# 
# 836 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TXREG equ 019h ;# 
# 842 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
RCREG equ 01Ah ;# 
# 848 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
ADRESH equ 01Eh ;# 
# 854 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
ADCON0 equ 01Fh ;# 
# 949 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
OPTION_REG equ 081h ;# 
# 1018 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TRISA equ 085h ;# 
# 1067 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TRISB equ 086h ;# 
# 1128 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TRISC equ 087h ;# 
# 1189 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PIE1 equ 08Ch ;# 
# 1239 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PIE2 equ 08Dh ;# 
# 1259 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PCON equ 08Eh ;# 
# 1292 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PR2 equ 092h ;# 
# 1298 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TXSTA equ 098h ;# 
# 1378 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
SPBRG equ 099h ;# 
# 1384 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
ADRESL equ 09Eh ;# 
# 1390 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
ADCON1 equ 09Fh ;# 
# 1442 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
EEDATA equ 010Ch ;# 
# 1448 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
EEADR equ 010Dh ;# 
# 1454 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
EEDATH equ 010Eh ;# 
# 1460 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
EEADRH equ 010Fh ;# 
# 1466 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
EECON1 equ 018Ch ;# 
# 1510 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
EECON2 equ 018Dh ;# 
	FNCALL	_main,_change_password
	FNCALL	_main,_eeprom_read
	FNCALL	_main,_get_user_input
	FNCALL	_main,_init_DTMF
	FNCALL	_main,_motor_start
	FNCALL	_main,_motor_stop
	FNCALL	_main,_phase_check
	FNCALL	_main,_phone_received
	FNCALL	_main,_play_message
	FNCALL	_main,_power_message
	FNCALL	_main,_press_button
	FNCALL	_main,_thanks_message
	FNCALL	_main,_welcome_user
	FNCALL	_welcome_user,_audio_stoped
	FNCALL	_welcome_user,_check_password
	FNCALL	_welcome_user,_play_message
	FNCALL	_welcome_user,_press_button
	FNCALL	_welcome_user,_thanks_message
	FNCALL	_welcome_user,_welcome_message
	FNCALL	_welcome_message,_audio_stoped
	FNCALL	_welcome_message,_play_message
	FNCALL	_thanks_message,_audio_stoped
	FNCALL	_thanks_message,_play_message
	FNCALL	_check_password,_eeprom_read
	FNCALL	_check_password,_play_message
	FNCALL	_power_message,_audio_stoped
	FNCALL	_power_message,_play_message
	FNCALL	_motor_stop,_eeprom_write
	FNCALL	_motor_start,_eeprom_write
	FNCALL	_get_user_input,_play_message_group
	FNCALL	_play_message_group,_audio_stoped
	FNCALL	_play_message_group,_play_message
	FNCALL	_change_password,_eeprom_write
	FNCALL	_change_password,_play_message
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_Change_OK
	global	_Correct_Password
	global	_Input_Not_Received
	global	_Latest_Input
	global	_Message_End
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"E:\Study Material\XC8 PROJECTS\DTMF\ivr.h"
	line	9

;initializer for _Change_OK
	retlw	03h
	line	7

;initializer for _Correct_Password
	retlw	01h
	line	8

;initializer for _Input_Not_Received
	retlw	02h
	file	"E:\Study Material\XC8 PROJECTS\DTMF\dtmf_lib.h"
	line	5

;initializer for _Latest_Input
	retlw	0FFh
	file	"E:\Study Material\XC8 PROJECTS\DTMF\ivr.h"
	line	5

;initializer for _Message_End
	retlw	0EEh
	global	_LP_FLAG
	global	_MOTOR_FLAG
	global	_Wrong_Password
	global	_PORTA
_PORTA	set	0x5
	global	_PORTB
_PORTB	set	0x6
	global	_CARRY
_CARRY	set	0x18
	global	_GIE
_GIE	set	0x5F
	global	_INTE
_INTE	set	0x5C
	global	_INTF
_INTF	set	0x59
	global	_RA5
_RA5	set	0x2D
	global	_RB1
_RB1	set	0x31
	global	_RB2
_RB2	set	0x32
	global	_RB3
_RB3	set	0x33
	global	_RC0
_RC0	set	0x38
	global	_RC1
_RC1	set	0x39
	global	_RC2
_RC2	set	0x3A
	global	_RC3
_RC3	set	0x3B
	global	_RC4
_RC4	set	0x3C
	global	_RC7
_RC7	set	0x3F
	global	_ADCON1
_ADCON1	set	0x9F
	global	_OPTION_REGbits
_OPTION_REGbits	set	0x81
	global	_TRISA
_TRISA	set	0x85
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_EEADR
_EEADR	set	0x10D
	global	_EEDATA
_EEDATA	set	0x10C
	global	_EECON1
_EECON1	set	0x18C
	global	_EECON2
_EECON2	set	0x18D
	global	_RD
_RD	set	0xC60
	global	_WR
_WR	set	0xC61
	global	_WREN
_WREN	set	0xC62
; #config settings
	file	"DTMF_Controller.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_LP_FLAG:
       ds      1

_MOTOR_FLAG:
       ds      1

_Wrong_Password:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"E:\Study Material\XC8 PROJECTS\DTMF\ivr.h"
	line	9
_Change_OK:
       ds      1

psect	dataBANK0
	file	"E:\Study Material\XC8 PROJECTS\DTMF\ivr.h"
	line	7
_Correct_Password:
       ds      1

psect	dataBANK0
	file	"E:\Study Material\XC8 PROJECTS\DTMF\ivr.h"
	line	8
_Input_Not_Received:
       ds      1

psect	dataBANK0
	file	"E:\Study Material\XC8 PROJECTS\DTMF\dtmf_lib.h"
	line	5
_Latest_Input:
       ds      1

psect	dataBANK0
	file	"E:\Study Material\XC8 PROJECTS\DTMF\ivr.h"
	line	5
_Message_End:
       ds      1

	file	"DTMF_Controller.as"
	line	#
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	line	#
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
	fcall	__pidataBANK0+2		;fetch initializer
	movwf	__pdataBANK0+2&07fh		
	fcall	__pidataBANK0+3		;fetch initializer
	movwf	__pdataBANK0+3&07fh		
	fcall	__pidataBANK0+4		;fetch initializer
	movwf	__pdataBANK0+4&07fh		
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_press_button:	; 0 bytes @ 0x0
?_play_message:	; 0 bytes @ 0x0
?_init_DTMF:	; 0 bytes @ 0x0
?_motor_start:	; 0 bytes @ 0x0
?_motor_stop:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
??_ISR:	; 0 bytes @ 0x0
?_eeprom_read:	; 1 bytes @ 0x0
?_welcome_user:	; 1 bytes @ 0x0
?_power_message:	; 1 bytes @ 0x0
?_thanks_message:	; 1 bytes @ 0x0
?_get_user_input:	; 1 bytes @ 0x0
?_change_password:	; 1 bytes @ 0x0
?_welcome_message:	; 1 bytes @ 0x0
?_check_password:	; 1 bytes @ 0x0
?_play_message_group:	; 1 bytes @ 0x0
?_audio_stoped:	; 1 bytes @ 0x0
?_phone_received:	; 1 bytes @ 0x0
?_phase_check:	; 1 bytes @ 0x0
	ds	6
?_eeprom_write:	; 0 bytes @ 0x6
??_eeprom_read:	; 0 bytes @ 0x6
??_press_button:	; 0 bytes @ 0x6
??_audio_stoped:	; 0 bytes @ 0x6
??_phone_received:	; 0 bytes @ 0x6
??_init_DTMF:	; 0 bytes @ 0x6
??_phase_check:	; 0 bytes @ 0x6
	global	play_message@Message
play_message@Message:	; 1 bytes @ 0x6
	global	eeprom_write@value
eeprom_write@value:	; 1 bytes @ 0x6
	ds	1
??_eeprom_write:	; 0 bytes @ 0x7
??_power_message:	; 0 bytes @ 0x7
??_thanks_message:	; 0 bytes @ 0x7
??_welcome_message:	; 0 bytes @ 0x7
??_play_message_group:	; 0 bytes @ 0x7
	global	eeprom_read@addr
eeprom_read@addr:	; 1 bytes @ 0x7
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_play_message:	; 0 bytes @ 0x0
	global	eeprom_write@addr
eeprom_write@addr:	; 1 bytes @ 0x0
	ds	1
??_motor_start:	; 0 bytes @ 0x1
??_motor_stop:	; 0 bytes @ 0x1
	ds	2
??_change_password:	; 0 bytes @ 0x3
??_check_password:	; 0 bytes @ 0x3
	global	welcome_message@temp
welcome_message@temp:	; 1 bytes @ 0x3
	global	play_message_group@temp
play_message_group@temp:	; 1 bytes @ 0x3
	global	power_message@temp
power_message@temp:	; 1 bytes @ 0x3
	global	thanks_message@temp
thanks_message@temp:	; 1 bytes @ 0x3
	ds	1
	global	check_password@password
check_password@password:	; 1 bytes @ 0x4
	global	change_password@count
change_password@count:	; 1 bytes @ 0x4
	global	play_message_group@temp_206
play_message_group@temp_206:	; 1 bytes @ 0x4
	ds	1
	global	check_password@count
check_password@count:	; 1 bytes @ 0x5
	global	play_message_group@temp_207
play_message_group@temp_207:	; 1 bytes @ 0x5
	global	change_password@timer
change_password@timer:	; 2 bytes @ 0x5
	ds	1
	global	play_message_group@group
play_message_group@group:	; 1 bytes @ 0x6
	global	check_password@timer
check_password@timer:	; 2 bytes @ 0x6
	ds	1
??_get_user_input:	; 0 bytes @ 0x7
	ds	1
??_welcome_user:	; 0 bytes @ 0x8
	global	get_user_input@group
get_user_input@group:	; 1 bytes @ 0x8
	ds	1
	global	welcome_user@result
welcome_user@result:	; 1 bytes @ 0x9
	global	get_user_input@attempts
get_user_input@attempts:	; 1 bytes @ 0x9
	ds	1
	global	get_user_input@Input_Timer
get_user_input@Input_Timer:	; 2 bytes @ 0xA
	ds	2
	global	get_user_input@result
get_user_input@result:	; 1 bytes @ 0xC
	ds	1
??_main:	; 0 bytes @ 0xD
	ds	3
	global	main@valid_user
main@valid_user:	; 1 bytes @ 0x10
	ds	1
	global	main@timer
main@timer:	; 1 bytes @ 0x11
	ds	1
	global	main@Dry_Run_Timer
main@Dry_Run_Timer:	; 1 bytes @ 0x12
	ds	1
	global	main@count
main@count:	; 1 bytes @ 0x13
	ds	1
	global	main@chances
main@chances:	; 1 bytes @ 0x14
	ds	1
	global	main@res
main@res:	; 1 bytes @ 0x15
	ds	1
	global	main@repeat
main@repeat:	; 1 bytes @ 0x16
	ds	1
	global	main@input
main@input:	; 1 bytes @ 0x17
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        5
;!    BSS         3
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      8       8
;!    BANK0            80     24      32
;!    BANK1            32      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_eeprom_read
;!    _main->_power_message
;!    _main->_thanks_message
;!    _welcome_user->_thanks_message
;!    _welcome_user->_welcome_message
;!    _welcome_message->_play_message
;!    _thanks_message->_play_message
;!    _check_password->_eeprom_read
;!    _power_message->_play_message
;!    _motor_stop->_eeprom_write
;!    _motor_start->_eeprom_write
;!    _get_user_input->_play_message_group
;!    _play_message_group->_play_message
;!    _change_password->_eeprom_write
;!
;!Critical Paths under _ISR in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_get_user_input
;!    _welcome_user->_check_password
;!    _welcome_message->_play_message
;!    _thanks_message->_play_message
;!    _check_password->_play_message
;!    _power_message->_play_message
;!    _motor_stop->_eeprom_write
;!    _motor_start->_eeprom_write
;!    _get_user_input->_play_message_group
;!    _play_message_group->_play_message
;!    _change_password->_play_message
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
;! (0) _main                                                11    11      0    2046
;!                                             13 BANK0     11    11      0
;!                    _change_password
;!                        _eeprom_read
;!                     _get_user_input
;!                          _init_DTMF
;!                        _motor_start
;!                         _motor_stop
;!                        _phase_check
;!                     _phone_received
;!                       _play_message
;!                      _power_message
;!                       _press_button
;!                     _thanks_message
;!                       _welcome_user
;! ---------------------------------------------------------------------------------
;! (1) _welcome_user                                         2     2      0     390
;!                                              8 BANK0      2     2      0
;!                       _audio_stoped
;!                     _check_password
;!                       _play_message
;!                       _press_button
;!                     _thanks_message
;!                    _welcome_message
;! ---------------------------------------------------------------------------------
;! (2) _welcome_message                                      2     2      0      68
;!                                              7 COMMON     1     1      0
;!                                              3 BANK0      1     1      0
;!                       _audio_stoped
;!                       _play_message
;! ---------------------------------------------------------------------------------
;! (2) _thanks_message                                       2     2      0      68
;!                                              7 COMMON     1     1      0
;!                                              3 BANK0      1     1      0
;!                       _audio_stoped
;!                       _play_message
;! ---------------------------------------------------------------------------------
;! (2) _press_button                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _check_password                                       5     5      0     161
;!                                              3 BANK0      5     5      0
;!                        _eeprom_read
;!                       _play_message
;! ---------------------------------------------------------------------------------
;! (3) _eeprom_read                                          2     2      0      22
;!                                              6 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _power_message                                        2     2      0      68
;!                                              7 COMMON     1     1      0
;!                                              3 BANK0      1     1      0
;!                       _audio_stoped
;!                       _play_message
;! ---------------------------------------------------------------------------------
;! (1) _phone_received                                       1     1      0       0
;!                                              6 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _phase_check                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _motor_stop                                           3     3      0     203
;!                                              1 BANK0      3     3      0
;!                       _eeprom_write
;! ---------------------------------------------------------------------------------
;! (1) _motor_start                                          3     3      0     203
;!                                              1 BANK0      3     3      0
;!                       _eeprom_write
;! ---------------------------------------------------------------------------------
;! (1) _init_DTMF                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _get_user_input                                       6     6      0     319
;!                                              7 BANK0      6     6      0
;!                 _play_message_group
;! ---------------------------------------------------------------------------------
;! (2) _play_message_group                                   5     5      0     158
;!                                              7 COMMON     1     1      0
;!                                              3 BANK0      4     4      0
;!                       _audio_stoped
;!                       _play_message
;! ---------------------------------------------------------------------------------
;! (3) _audio_stoped                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _change_password                                      4     4      0     319
;!                                              3 BANK0      4     4      0
;!                       _eeprom_write
;!                       _play_message
;! ---------------------------------------------------------------------------------
;! (3) _play_message                                         4     4      0      45
;!                                              6 COMMON     1     1      0
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (2) _eeprom_write                                         3     2      1     203
;!                                              6 COMMON     2     1      1
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _ISR                                                  6     6      0       0
;!                                              0 COMMON     6     6      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _change_password
;!     _eeprom_write
;!     _play_message
;!   _eeprom_read
;!   _get_user_input
;!     _play_message_group
;!       _audio_stoped
;!       _play_message
;!   _init_DTMF
;!   _motor_start
;!     _eeprom_write
;!   _motor_stop
;!     _eeprom_write
;!   _phase_check
;!   _phone_received
;!   _play_message
;!   _power_message
;!     _audio_stoped
;!     _play_message
;!   _press_button
;!   _thanks_message
;!     _audio_stoped
;!     _play_message
;!   _welcome_user
;!     _audio_stoped
;!     _check_password
;!       _eeprom_read
;!       _play_message
;!     _play_message
;!     _press_button
;!     _thanks_message
;!       _audio_stoped
;!       _play_message
;!     _welcome_message
;!       _audio_stoped
;!       _play_message
;!
;! _ISR (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               20      0       0       7        0.0%
;!BITBANK1            20      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     18      20       5       40.0%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      8       8       1       57.1%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      28       8        0.0%
;!ABS                  0      0      28       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA              40      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 14 in file "E:\Study Material\XC8 PROJECTS\DTMF\DTMF_Controller.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  input           1   23[BANK0 ] unsigned char 
;;  repeat          1   22[BANK0 ] unsigned char 
;;  res             1   21[BANK0 ] unsigned char 
;;  chances         1   20[BANK0 ] unsigned char 
;;  valid_user      1   16[BANK0 ] unsigned char 
;;  count           1   19[BANK0 ] unsigned char 
;;  Dry_Run_Time    1   18[BANK0 ] unsigned char 
;;  timer           1   17[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       8       0
;;      Temps:          0       3       0
;;      Totals:         0      11       0
;;Total ram usage:       11 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_change_password
;;		_eeprom_read
;;		_get_user_input
;;		_init_DTMF
;;		_motor_start
;;		_motor_stop
;;		_phase_check
;;		_phone_received
;;		_play_message
;;		_power_message
;;		_press_button
;;		_thanks_message
;;		_welcome_user
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"E:\Study Material\XC8 PROJECTS\DTMF\DTMF_Controller.C"
	line	14
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"E:\Study Material\XC8 PROJECTS\DTMF\DTMF_Controller.C"
	line	14
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 4
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	16
	
l1694:	
;DTMF_Controller.C: 16: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	17
	
l1696:	
;DTMF_Controller.C: 17: TRISB = 0xFF;
	movlw	(0FFh)
	movwf	(134)^080h	;volatile
	line	18
	
l1698:	
;DTMF_Controller.C: 18: TRISC = 0x47;
	movlw	(047h)
	movwf	(135)^080h	;volatile
	line	19
	
l1700:	
;DTMF_Controller.C: 19: ADCON1 = 0x06;
	movlw	(06h)
	movwf	(159)^080h	;volatile
	line	20
	
l1702:	
;DTMF_Controller.C: 20: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	22
	
l1704:	
;DTMF_Controller.C: 22: char timer = 0;
	clrf	(main@timer)
	line	23
	
l1706:	
;DTMF_Controller.C: 23: char Dry_Run_Timer = 0;
	clrf	(main@Dry_Run_Timer)
	line	24
	
l1708:	
;DTMF_Controller.C: 24: char count = 0;
	clrf	(main@count)
	line	27
	
l1710:	
;DTMF_Controller.C: 27: for(count = 0; count <= 10; count++)
	clrf	(main@count)
	movlw	(0Bh)
	subwf	(main@count),w
	skipc
	goto	u1311
	goto	u1310
u1311:
	goto	l153
u1310:
	goto	l1722
	
l1712:	
	goto	l1722
	line	28
	
l153:	
	line	29
;DTMF_Controller.C: 28: {
;DTMF_Controller.C: 29: RC7 = 1;
	bsf	(63/8),(63)&7	;volatile
	line	30
	
l1714:	
;DTMF_Controller.C: 30: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u1627:
	decfsz	((??_main+0)+0),f
	goto	u1627
	decfsz	((??_main+0)+0+1),f
	goto	u1627
	decfsz	((??_main+0)+0+2),f
	goto	u1627
	nop2
opt asmopt_on

	line	31
	
l1716:	
;DTMF_Controller.C: 31: RC7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(63/8),(63)&7	;volatile
	line	32
;DTMF_Controller.C: 32: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u1637:
	decfsz	((??_main+0)+0),f
	goto	u1637
	decfsz	((??_main+0)+0+1),f
	goto	u1637
	decfsz	((??_main+0)+0+2),f
	goto	u1637
	nop2
opt asmopt_on

	line	27
	
l1718:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@count),f
	
l1720:	
	movlw	(0Bh)
	subwf	(main@count),w
	skipc
	goto	u1321
	goto	u1320
u1321:
	goto	l153
u1320:
	goto	l1722
	
l154:	
	line	35
	
l1722:	
;DTMF_Controller.C: 33: }
;DTMF_Controller.C: 35: init_DTMF();
	fcall	_init_DTMF
	line	38
	
l1724:	
;DTMF_Controller.C: 38: MOTOR_FLAG = (char)eeprom_read(11);
	movlw	(0Bh)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_MOTOR_FLAG)
	line	39
;DTMF_Controller.C: 39: if(MOTOR_FLAG != 0 && MOTOR_FLAG != 1)
	movf	(_MOTOR_FLAG),w
	skipz
	goto	u1330
	goto	l1768
u1330:
	
l1726:	
	movf	(_MOTOR_FLAG),w
	xorlw	01h
	skipnz
	goto	u1341
	goto	u1340
u1341:
	goto	l1768
u1340:
	line	40
	
l1728:	
;DTMF_Controller.C: 40: MOTOR_FLAG = 0;
	clrf	(_MOTOR_FLAG)
	goto	l1768
	
l155:	
	goto	l1768
	line	42
;DTMF_Controller.C: 42: while(1)
	
l156:	
	line	44
;DTMF_Controller.C: 43: {
;DTMF_Controller.C: 44: while(phone_received() == 0)
	goto	l1768
	
l158:	
	line	47
	
l1730:	
;DTMF_Controller.C: 45: {
;DTMF_Controller.C: 47: if(MOTOR_FLAG == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_MOTOR_FLAG),w
	xorlw	01h
	skipz
	goto	u1351
	goto	u1350
u1351:
	goto	l1768
u1350:
	line	49
	
l1732:	
;DTMF_Controller.C: 48: {
;DTMF_Controller.C: 49: if(timer == 150)
	movf	(main@timer),w
	xorlw	096h
	skipz
	goto	u1361
	goto	u1360
u1361:
	goto	l1766
u1360:
	line	51
	
l1734:	
;DTMF_Controller.C: 50: {
;DTMF_Controller.C: 51: timer = 0;
	clrf	(main@timer)
	line	52
	
l1736:	
;DTMF_Controller.C: 52: if(phase_check() == 1)
	fcall	_phase_check
	xorlw	01h
	skipz
	goto	u1371
	goto	u1370
u1371:
	goto	l1744
u1370:
	line	54
	
l1738:	
;DTMF_Controller.C: 53: {
;DTMF_Controller.C: 54: if(LP_FLAG == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LP_FLAG),f
	skipz
	goto	u1381
	goto	u1380
u1381:
	goto	l1750
u1380:
	line	56
	
l1740:	
;DTMF_Controller.C: 55: {
;DTMF_Controller.C: 56: motor_start();
	fcall	_motor_start
	line	57
	
l1742:	
;DTMF_Controller.C: 57: LP_FLAG = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_LP_FLAG)
	incf	(_LP_FLAG),f
	goto	l1750
	line	58
	
l162:	
	line	59
;DTMF_Controller.C: 58: }
;DTMF_Controller.C: 59: }
	goto	l1750
	line	60
	
l161:	
	line	62
	
l1744:	
;DTMF_Controller.C: 60: else
;DTMF_Controller.C: 61: {
;DTMF_Controller.C: 62: if(LP_FLAG == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LP_FLAG),w
	xorlw	01h
	skipz
	goto	u1391
	goto	u1390
u1391:
	goto	l1750
u1390:
	line	64
	
l1746:	
;DTMF_Controller.C: 63: {
;DTMF_Controller.C: 64: motor_stop();
	fcall	_motor_stop
	line	65
	
l1748:	
;DTMF_Controller.C: 65: LP_FLAG = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_LP_FLAG)
	goto	l1750
	line	66
	
l164:	
	goto	l1750
	line	67
	
l163:	
	line	70
	
l1750:	
;DTMF_Controller.C: 66: }
;DTMF_Controller.C: 67: }
;DTMF_Controller.C: 70: if(RB3 == 0)
	btfsc	(51/8),(51)&7	;volatile
	goto	u1401
	goto	u1400
u1401:
	goto	l1764
u1400:
	line	72
	
l1752:	
;DTMF_Controller.C: 71: {
;DTMF_Controller.C: 72: Dry_Run_Timer++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@Dry_Run_Timer),f
	line	73
	
l1754:	
;DTMF_Controller.C: 73: if(Dry_Run_Timer == 8)
	movf	(main@Dry_Run_Timer),w
	xorlw	08h
	skipz
	goto	u1411
	goto	u1410
u1411:
	goto	l1766
u1410:
	line	76
	
l1756:	
;DTMF_Controller.C: 74: {
;DTMF_Controller.C: 76: motor_stop();
	fcall	_motor_stop
	line	77
	
l1758:	
;DTMF_Controller.C: 77: MOTOR_FLAG = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_MOTOR_FLAG)
	line	78
	
l1760:	
;DTMF_Controller.C: 78: LP_FLAG = 0;
	clrf	(_LP_FLAG)
	line	79
	
l1762:	
;DTMF_Controller.C: 79: Dry_Run_Timer = 0;
	clrf	(main@Dry_Run_Timer)
	goto	l1766
	line	80
	
l166:	
	line	81
;DTMF_Controller.C: 80: }
;DTMF_Controller.C: 81: }
	goto	l1766
	line	82
	
l165:	
	line	84
	
l1764:	
;DTMF_Controller.C: 82: else
;DTMF_Controller.C: 83: {
;DTMF_Controller.C: 84: Dry_Run_Timer = 0;
	clrf	(main@Dry_Run_Timer)
	goto	l1766
	line	85
	
l167:	
	goto	l1766
	line	86
	
l160:	
	line	87
	
l1766:	
;DTMF_Controller.C: 85: }
;DTMF_Controller.C: 86: }
;DTMF_Controller.C: 87: timer++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@timer),f
	goto	l1768
	line	88
	
l159:	
	goto	l1768
	line	89
	
l157:	
	line	44
	
l1768:	
	fcall	_phone_received
	xorlw	0
	skipnz
	goto	u1421
	goto	u1420
u1421:
	goto	l1730
u1420:
	
l168:	
	line	94
;DTMF_Controller.C: 88: }
;DTMF_Controller.C: 89: }
;DTMF_Controller.C: 92: char input;
;DTMF_Controller.C: 93: char res;
;DTMF_Controller.C: 94: char repeat = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@repeat)
	incf	(main@repeat),f
	line	95
	
l1770:	
;DTMF_Controller.C: 95: char chances = 0;
	clrf	(main@chances)
	line	98
	
l1772:	
;DTMF_Controller.C: 98: char valid_user = welcome_user();
	fcall	_welcome_user
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@valid_user)
	line	100
	
l1774:	
;DTMF_Controller.C: 100: if(valid_user == 1)
	movf	(main@valid_user),w
	xorlw	01h
	skipz
	goto	u1431
	goto	u1430
u1431:
	goto	l1768
u1430:
	line	102
	
l1776:	
;DTMF_Controller.C: 101: {
;DTMF_Controller.C: 102: if(phase_check() == 0)
	fcall	_phase_check
	iorlw	0
	skipz
	goto	u1441
	goto	u1440
u1441:
	goto	l1782
u1440:
	line	105
	
l1778:	
;DTMF_Controller.C: 103: {
;DTMF_Controller.C: 105: res = power_message();
	fcall	_power_message
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@res)
	line	107
;DTMF_Controller.C: 107: res = thanks_message();
	fcall	_thanks_message
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@res)
	line	108
	
l1780:	
;DTMF_Controller.C: 108: press_button();
	fcall	_press_button
	line	109
;DTMF_Controller.C: 109: }
	goto	l1768
	line	110
	
l170:	
	line	113
	
l1782:	
;DTMF_Controller.C: 110: else
;DTMF_Controller.C: 111: {
;DTMF_Controller.C: 113: if(MOTOR_FLAG == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_MOTOR_FLAG),f
	skipz
	goto	u1451
	goto	u1450
u1451:
	goto	l1866
u1450:
	goto	l1826
	line	115
	
l1784:	
;DTMF_Controller.C: 114: {
;DTMF_Controller.C: 115: while(repeat == 1)
	goto	l1826
	
l174:	
	line	117
	
l1786:	
;DTMF_Controller.C: 116: {
;DTMF_Controller.C: 117: input = get_user_input(0);
	movlw	(0)
	fcall	_get_user_input
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@input)
	line	118
	
l1788:	
;DTMF_Controller.C: 118: chances++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@chances),f
	line	121
	
l1790:	
;DTMF_Controller.C: 121: if(input == Message_End)
	movf	(main@input),w
	xorwf	(_Message_End),w
	skipz
	goto	u1461
	goto	u1460
u1461:
	goto	l1794
u1460:
	line	122
	
l1792:	
;DTMF_Controller.C: 122: repeat = 0;
	clrf	(main@repeat)
	goto	l1794
	
l175:	
	line	125
	
l1794:	
;DTMF_Controller.C: 125: if(input == 0x06)
	movf	(main@input),w
	xorlw	06h
	skipz
	goto	u1471
	goto	u1470
u1471:
	goto	l1806
u1470:
	line	127
	
l1796:	
;DTMF_Controller.C: 126: {
;DTMF_Controller.C: 127: res = change_password();
	fcall	_change_password
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@res)
	line	129
	
l1798:	
;DTMF_Controller.C: 129: if(res != Change_OK)
	movf	(main@res),w
	xorwf	(_Change_OK),w
	skipnz
	goto	u1481
	goto	u1480
u1481:
	goto	l1802
u1480:
	line	130
	
l1800:	
;DTMF_Controller.C: 130: repeat = 0;
	clrf	(main@repeat)
	goto	l1806
	line	131
	
l177:	
	line	134
	
l1802:	
;DTMF_Controller.C: 131: else
;DTMF_Controller.C: 132: {
;DTMF_Controller.C: 134: play_message(10);
	movlw	(0Ah)
	fcall	_play_message
	line	135
	
l1804:	
;DTMF_Controller.C: 135: repeat = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@repeat)
	goto	l1806
	line	136
	
l178:	
	goto	l1806
	line	137
	
l176:	
	line	140
	
l1806:	
;DTMF_Controller.C: 136: }
;DTMF_Controller.C: 137: }
;DTMF_Controller.C: 140: if(input == 0x02)
	movf	(main@input),w
	xorlw	02h
	skipz
	goto	u1491
	goto	u1490
u1491:
	goto	l1822
u1490:
	line	142
	
l1808:	
;DTMF_Controller.C: 141: {
;DTMF_Controller.C: 142: if(phase_check() == 0)
	fcall	_phase_check
	iorlw	0
	skipz
	goto	u1501
	goto	u1500
u1501:
	goto	l1814
u1500:
	line	145
	
l1810:	
;DTMF_Controller.C: 143: {
;DTMF_Controller.C: 145: res = power_message();
	fcall	_power_message
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@res)
	line	146
	
l1812:	
;DTMF_Controller.C: 146: repeat = 0;
	clrf	(main@repeat)
	line	147
;DTMF_Controller.C: 147: }
	goto	l1822
	line	148
	
l180:	
	line	151
	
l1814:	
;DTMF_Controller.C: 148: else
;DTMF_Controller.C: 149: {
;DTMF_Controller.C: 151: motor_start();
	fcall	_motor_start
	line	152
	
l1816:	
;DTMF_Controller.C: 152: MOTOR_FLAG = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_MOTOR_FLAG)
	incf	(_MOTOR_FLAG),f
	line	153
	
l1818:	
;DTMF_Controller.C: 153: LP_FLAG = 1;
	clrf	(_LP_FLAG)
	incf	(_LP_FLAG),f
	line	156
;DTMF_Controller.C: 156: play_message(4);
	movlw	(04h)
	fcall	_play_message
	line	157
	
l1820:	
;DTMF_Controller.C: 157: repeat = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@repeat)
	goto	l1822
	line	158
	
l181:	
	goto	l1822
	line	159
	
l179:	
	line	162
	
l1822:	
;DTMF_Controller.C: 158: }
;DTMF_Controller.C: 159: }
;DTMF_Controller.C: 162: if(chances >= 3)
	movlw	(03h)
	subwf	(main@chances),w
	skipc
	goto	u1511
	goto	u1510
u1511:
	goto	l1826
u1510:
	line	163
	
l1824:	
;DTMF_Controller.C: 163: repeat = 0;
	clrf	(main@repeat)
	goto	l1826
	
l182:	
	goto	l1826
	line	164
	
l173:	
	line	115
	
l1826:	
	movf	(main@repeat),w
	xorlw	01h
	skipnz
	goto	u1521
	goto	u1520
u1521:
	goto	l1786
u1520:
	goto	l1828
	
l183:	
	line	166
	
l1828:	
;DTMF_Controller.C: 164: }
;DTMF_Controller.C: 166: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u1647:
	decfsz	((??_main+0)+0),f
	goto	u1647
	decfsz	((??_main+0)+0+1),f
	goto	u1647
	decfsz	((??_main+0)+0+2),f
	goto	u1647
	nop2
opt asmopt_on

	line	167
	
l1830:	
;DTMF_Controller.C: 167: res = thanks_message();
	fcall	_thanks_message
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@res)
	line	169
;DTMF_Controller.C: 169: press_button();
	fcall	_press_button
	line	170
;DTMF_Controller.C: 170: }
	goto	l1768
	line	172
	
l172:	
	line	174
;DTMF_Controller.C: 172: else
;DTMF_Controller.C: 173: {
;DTMF_Controller.C: 174: while(repeat == 1)
	goto	l1866
	
l186:	
	line	176
	
l1832:	
;DTMF_Controller.C: 175: {
;DTMF_Controller.C: 176: input = get_user_input(1);
	movlw	(01h)
	fcall	_get_user_input
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@input)
	line	177
	
l1834:	
;DTMF_Controller.C: 177: chances++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@chances),f
	line	180
	
l1836:	
;DTMF_Controller.C: 180: if(input == Message_End)
	movf	(main@input),w
	xorwf	(_Message_End),w
	skipz
	goto	u1531
	goto	u1530
u1531:
	goto	l1840
u1530:
	line	181
	
l1838:	
;DTMF_Controller.C: 181: repeat = 0;
	clrf	(main@repeat)
	goto	l1840
	
l187:	
	line	184
	
l1840:	
;DTMF_Controller.C: 184: if(input == 0x06)
	movf	(main@input),w
	xorlw	06h
	skipz
	goto	u1541
	goto	u1540
u1541:
	goto	l1852
u1540:
	line	186
	
l1842:	
;DTMF_Controller.C: 185: {
;DTMF_Controller.C: 186: res = change_password();
	fcall	_change_password
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@res)
	line	188
	
l1844:	
;DTMF_Controller.C: 188: if(res != Change_OK)
	movf	(main@res),w
	xorwf	(_Change_OK),w
	skipnz
	goto	u1551
	goto	u1550
u1551:
	goto	l1848
u1550:
	line	189
	
l1846:	
;DTMF_Controller.C: 189: repeat = 0;
	clrf	(main@repeat)
	goto	l1852
	line	190
	
l189:	
	line	193
	
l1848:	
;DTMF_Controller.C: 190: else
;DTMF_Controller.C: 191: {
;DTMF_Controller.C: 193: play_message(10);
	movlw	(0Ah)
	fcall	_play_message
	line	194
	
l1850:	
;DTMF_Controller.C: 194: repeat = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@repeat)
	goto	l1852
	line	195
	
l190:	
	goto	l1852
	line	196
	
l188:	
	line	199
	
l1852:	
;DTMF_Controller.C: 195: }
;DTMF_Controller.C: 196: }
;DTMF_Controller.C: 199: if(input == 0x01)
	movf	(main@input),w
	xorlw	01h
	skipz
	goto	u1561
	goto	u1560
u1561:
	goto	l1862
u1560:
	line	202
	
l1854:	
;DTMF_Controller.C: 200: {
;DTMF_Controller.C: 202: motor_stop();
	fcall	_motor_stop
	line	203
	
l1856:	
;DTMF_Controller.C: 203: MOTOR_FLAG = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_MOTOR_FLAG)
	line	204
	
l1858:	
;DTMF_Controller.C: 204: LP_FLAG = 0;
	clrf	(_LP_FLAG)
	line	207
;DTMF_Controller.C: 207: play_message(5);
	movlw	(05h)
	fcall	_play_message
	line	208
	
l1860:	
;DTMF_Controller.C: 208: repeat = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@repeat)
	goto	l1862
	line	209
	
l191:	
	line	212
	
l1862:	
;DTMF_Controller.C: 209: }
;DTMF_Controller.C: 212: if(chances >= 3)
	movlw	(03h)
	subwf	(main@chances),w
	skipc
	goto	u1571
	goto	u1570
u1571:
	goto	l1866
u1570:
	line	213
	
l1864:	
;DTMF_Controller.C: 213: repeat = 0;
	clrf	(main@repeat)
	goto	l1866
	
l192:	
	goto	l1866
	line	214
	
l185:	
	line	174
	
l1866:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@repeat),w
	xorlw	01h
	skipnz
	goto	u1581
	goto	u1580
u1581:
	goto	l1832
u1580:
	goto	l1868
	
l193:	
	line	217
	
l1868:	
;DTMF_Controller.C: 214: }
;DTMF_Controller.C: 217: res = thanks_message();
	fcall	_thanks_message
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@res)
	line	219
	
l1870:	
;DTMF_Controller.C: 219: press_button();
	fcall	_press_button
	goto	l1768
	line	220
	
l184:	
	goto	l1768
	line	221
	
l171:	
	goto	l1768
	line	222
	
l169:	
	goto	l1768
	line	223
	
l194:	
	line	42
	goto	l1768
	
l195:	
	line	224
	
l196:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_welcome_user

;; *************** function _welcome_user *****************
;; Defined at:
;;		line 226 in file "E:\Study Material\XC8 PROJECTS\DTMF\DTMF_Controller.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  result          1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
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
;;		_audio_stoped
;;		_check_password
;;		_play_message
;;		_press_button
;;		_thanks_message
;;		_welcome_message
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	226
global __ptext1
__ptext1:	;psect for function _welcome_user
psect	text1
	file	"E:\Study Material\XC8 PROJECTS\DTMF\DTMF_Controller.C"
	line	226
	global	__size_of_welcome_user
	__size_of_welcome_user	equ	__end_of_welcome_user-_welcome_user
	
_welcome_user:	
;incstack = 0
	opt	stack 4
; Regs used in _welcome_user: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	228
	
l1590:	
;DTMF_Controller.C: 228: press_button();
	fcall	_press_button
	line	232
	
l1592:	
;DTMF_Controller.C: 231: char result;
;DTMF_Controller.C: 232: result = welcome_message();
	fcall	_welcome_message
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_welcome_user+0)+0
	movf	(??_welcome_user+0)+0,w
	movwf	(welcome_user@result)
	line	237
	
l1594:	
;DTMF_Controller.C: 237: result = check_password();
	fcall	_check_password
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_welcome_user+0)+0
	movf	(??_welcome_user+0)+0,w
	movwf	(welcome_user@result)
	line	239
	
l1596:	
;DTMF_Controller.C: 239: if(result != Correct_Password)
	movf	(welcome_user@result),w
	xorwf	(_Correct_Password),w
	skipnz
	goto	u1151
	goto	u1150
u1151:
	goto	l1606
u1150:
	line	242
	
l1598:	
;DTMF_Controller.C: 240: {
;DTMF_Controller.C: 242: play_message(8);
	movlw	(08h)
	fcall	_play_message
	line	244
;DTMF_Controller.C: 244: while(audio_stoped() == 0)
	goto	l1600
	
l201:	
	goto	l1600
	line	246
;DTMF_Controller.C: 245: {
	
l200:	
	line	244
	
l1600:	
	fcall	_audio_stoped
	xorlw	0
	skipnz
	goto	u1161
	goto	u1160
u1161:
	goto	l1600
u1160:
	goto	l1602
	
l202:	
	line	248
	
l1602:	
;DTMF_Controller.C: 246: }
;DTMF_Controller.C: 248: Latest_Input = 0xFF;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_welcome_user+0)+0
	movf	(??_welcome_user+0)+0,w
	movwf	(_Latest_Input)	;volatile
	line	249
	
l1604:	
;DTMF_Controller.C: 249: result = check_password();
	fcall	_check_password
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_welcome_user+0)+0
	movf	(??_welcome_user+0)+0,w
	movwf	(welcome_user@result)
	goto	l1606
	line	250
	
l199:	
	line	252
	
l1606:	
;DTMF_Controller.C: 250: }
;DTMF_Controller.C: 252: if(result == Correct_Password)
	movf	(welcome_user@result),w
	xorwf	(_Correct_Password),w
	skipz
	goto	u1171
	goto	u1170
u1171:
	goto	l1614
u1170:
	line	253
	
l1608:	
;DTMF_Controller.C: 253: return 1;
	movlw	(01h)
	goto	l204
	
l1610:	
	goto	l204
	
l1612:	
	goto	l204
	line	254
	
l203:	
	line	257
	
l1614:	
;DTMF_Controller.C: 254: else
;DTMF_Controller.C: 255: {
;DTMF_Controller.C: 257: result = thanks_message();
	fcall	_thanks_message
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_welcome_user+0)+0
	movf	(??_welcome_user+0)+0,w
	movwf	(welcome_user@result)
	line	259
	
l1616:	
;DTMF_Controller.C: 259: press_button();
	fcall	_press_button
	line	260
;DTMF_Controller.C: 260: return 0;
	movlw	(0)
	goto	l204
	
l1618:	
	goto	l204
	line	261
	
l205:	
	line	262
	
l204:	
	return
	opt stack 0
GLOBAL	__end_of_welcome_user
	__end_of_welcome_user:
	signat	_welcome_user,89
	global	_welcome_message

;; *************** function _welcome_message *****************
;; Defined at:
;;		line 8 in file "E:\Study Material\XC8 PROJECTS\DTMF\ivr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp            1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       1       0
;;      Temps:          1       0       0
;;      Totals:         1       1       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_audio_stoped
;;		_play_message
;; This function is called by:
;;		_welcome_user
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\DTMF\ivr.c"
	line	8
global __ptext2
__ptext2:	;psect for function _welcome_message
psect	text2
	file	"E:\Study Material\XC8 PROJECTS\DTMF\ivr.c"
	line	8
	global	__size_of_welcome_message
	__size_of_welcome_message	equ	__end_of_welcome_message-_welcome_message
	
_welcome_message:	
;incstack = 0
	opt	stack 4
; Regs used in _welcome_message: [wreg+status,2+status,0+pclath+cstack]
	line	11
	
l1444:	
;ivr.c: 11: play_message(1);
	movlw	(01h)
	fcall	_play_message
	line	14
;ivr.c: 14: while(Latest_Input == 0xFF && audio_stoped() == 0)
	goto	l1446
	
l250:	
	goto	l1446
	line	16
;ivr.c: 15: {
	
l249:	
	line	14
	
l1446:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Latest_Input),w	;volatile
	xorlw	0FFh
	skipz
	goto	u921
	goto	u920
u921:
	goto	l1450
u920:
	
l1448:	
	fcall	_audio_stoped
	xorlw	0
	skipnz
	goto	u931
	goto	u930
u931:
	goto	l1446
u930:
	goto	l1450
	
l252:	
	goto	l1450
	
l253:	
	line	19
	
l1450:	
;ivr.c: 16: }
;ivr.c: 19: if(Latest_Input != 0xFF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Latest_Input),w	;volatile
	xorlw	0FFh
	skipnz
	goto	u941
	goto	u940
u941:
	goto	l1458
u940:
	line	22
	
l1452:	
;ivr.c: 20: {
;ivr.c: 21: unsigned char temp;
;ivr.c: 22: temp = Latest_Input;
	movf	(_Latest_Input),w	;volatile
	movwf	(??_welcome_message+0)+0
	movf	(??_welcome_message+0)+0,w
	movwf	(welcome_message@temp)
	line	23
;ivr.c: 23: Latest_Input = 0xFF;
	movlw	(0FFh)
	movwf	(??_welcome_message+0)+0
	movf	(??_welcome_message+0)+0,w
	movwf	(_Latest_Input)	;volatile
	line	24
;ivr.c: 24: return temp;
	movf	(welcome_message@temp),w
	goto	l255
	
l1454:	
	goto	l255
	line	25
	
l1456:	
;ivr.c: 25: }
	goto	l255
	line	26
	
l254:	
	line	28
	
l1458:	
;ivr.c: 26: else
;ivr.c: 27: {
;ivr.c: 28: return Message_End;
	movf	(_Message_End),w
	goto	l255
	
l1460:	
	goto	l255
	line	29
	
l256:	
	line	30
	
l255:	
	return
	opt stack 0
GLOBAL	__end_of_welcome_message
	__end_of_welcome_message:
	signat	_welcome_message,89
	global	_thanks_message

;; *************** function _thanks_message *****************
;; Defined at:
;;		line 203 in file "E:\Study Material\XC8 PROJECTS\DTMF\ivr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp            1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       1       0
;;      Temps:          1       0       0
;;      Totals:         1       1       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_audio_stoped
;;		_play_message
;; This function is called by:
;;		_main
;;		_welcome_user
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	203
global __ptext3
__ptext3:	;psect for function _thanks_message
psect	text3
	file	"E:\Study Material\XC8 PROJECTS\DTMF\ivr.c"
	line	203
	global	__size_of_thanks_message
	__size_of_thanks_message	equ	__end_of_thanks_message-_thanks_message
	
_thanks_message:	
;incstack = 0
	opt	stack 4
; Regs used in _thanks_message: [wreg+status,2+status,0+pclath+cstack]
	line	206
	
l1426:	
;ivr.c: 206: play_message(12);
	movlw	(0Ch)
	fcall	_play_message
	line	209
;ivr.c: 209: while(Latest_Input == 0xFF && audio_stoped() == 0)
	goto	l1428
	
l322:	
	goto	l1428
	line	211
;ivr.c: 210: {
	
l321:	
	line	209
	
l1428:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Latest_Input),w	;volatile
	xorlw	0FFh
	skipz
	goto	u891
	goto	u890
u891:
	goto	l1432
u890:
	
l1430:	
	fcall	_audio_stoped
	xorlw	0
	skipnz
	goto	u901
	goto	u900
u901:
	goto	l1428
u900:
	goto	l1432
	
l324:	
	goto	l1432
	
l325:	
	line	214
	
l1432:	
;ivr.c: 211: }
;ivr.c: 214: if(Latest_Input != 0xFF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Latest_Input),w	;volatile
	xorlw	0FFh
	skipnz
	goto	u911
	goto	u910
u911:
	goto	l1440
u910:
	line	217
	
l1434:	
;ivr.c: 215: {
;ivr.c: 216: unsigned char temp;
;ivr.c: 217: temp = Latest_Input;
	movf	(_Latest_Input),w	;volatile
	movwf	(??_thanks_message+0)+0
	movf	(??_thanks_message+0)+0,w
	movwf	(thanks_message@temp)
	line	218
;ivr.c: 218: Latest_Input = 0xFF;
	movlw	(0FFh)
	movwf	(??_thanks_message+0)+0
	movf	(??_thanks_message+0)+0,w
	movwf	(_Latest_Input)	;volatile
	line	219
;ivr.c: 219: return temp;
	movf	(thanks_message@temp),w
	goto	l327
	
l1436:	
	goto	l327
	line	220
	
l1438:	
;ivr.c: 220: }
	goto	l327
	line	221
	
l326:	
	line	223
	
l1440:	
;ivr.c: 221: else
;ivr.c: 222: {
;ivr.c: 223: return Message_End;
	movf	(_Message_End),w
	goto	l327
	
l1442:	
	goto	l327
	line	224
	
l328:	
	line	225
	
l327:	
	return
	opt stack 0
GLOBAL	__end_of_thanks_message
	__end_of_thanks_message:
	signat	_thanks_message,89
	global	_press_button

;; *************** function _press_button *****************
;; Defined at:
;;		line 295 in file "E:\Study Material\XC8 PROJECTS\DTMF\DTMF_Controller.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_welcome_user
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\DTMF\DTMF_Controller.C"
	line	295
global __ptext4
__ptext4:	;psect for function _press_button
psect	text4
	file	"E:\Study Material\XC8 PROJECTS\DTMF\DTMF_Controller.C"
	line	295
	global	__size_of_press_button
	__size_of_press_button	equ	__end_of_press_button-_press_button
	
_press_button:	
;incstack = 0
	opt	stack 5
; Regs used in _press_button: []
	line	302
	
l224:	
	return
	opt stack 0
GLOBAL	__end_of_press_button
	__end_of_press_button:
	signat	_press_button,88
	global	_check_password

;; *************** function _check_password *****************
;; Defined at:
;;		line 32 in file "E:\Study Material\XC8 PROJECTS\DTMF\ivr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  timer           2    6[BANK0 ] int 
;;  count           1    5[BANK0 ] unsigned char 
;;  password        1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       4       0
;;      Temps:          0       1       0
;;      Totals:         0       5       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_eeprom_read
;;		_play_message
;; This function is called by:
;;		_welcome_user
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\DTMF\ivr.c"
	line	32
global __ptext5
__ptext5:	;psect for function _check_password
psect	text5
	file	"E:\Study Material\XC8 PROJECTS\DTMF\ivr.c"
	line	32
	global	__size_of_check_password
	__size_of_check_password	equ	__end_of_check_password-_check_password
	
_check_password:	
;incstack = 0
	opt	stack 4
; Regs used in _check_password: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	34
	
l1462:	
;ivr.c: 34: char count = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(check_password@count)
	line	35
;ivr.c: 35: int timer = 0;
	clrf	(check_password@timer)
	clrf	(check_password@timer+1)
	line	39
	
l1464:	
;ivr.c: 36: char password;
;ivr.c: 39: play_message(7);
	movlw	(07h)
	fcall	_play_message
	goto	l1466
	line	41
;ivr.c: 41: while(1)
	
l259:	
	line	43
	
l1466:	
;ivr.c: 42: {
;ivr.c: 43: password = (char)eeprom_read(count);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(check_password@count),w
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_check_password+0)+0
	movf	(??_check_password+0)+0,w
	movwf	(check_password@password)
	line	44
;ivr.c: 44: timer = 0;
	clrf	(check_password@timer)
	clrf	(check_password@timer+1)
	line	46
;ivr.c: 46: while(Latest_Input == 0xFF && timer <= 20000)
	goto	l260
	
l261:	
	line	50
	
l1468:	
;ivr.c: 47: {
;ivr.c: 50: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_check_password+0)+0,f
u1657:
	nop
decfsz	(??_check_password+0)+0,f
	goto	u1657
	nop2	;nop
	nop
opt asmopt_on

	line	51
;ivr.c: 51: timer++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(check_password@timer),f
	skipnc
	incf	(check_password@timer+1),f
	movlw	high(01h)
	addwf	(check_password@timer+1),f
	line	52
	
l260:	
	line	46
	movf	(_Latest_Input),w	;volatile
	xorlw	0FFh
	skipz
	goto	u951
	goto	u950
u951:
	goto	l1472
u950:
	
l1470:	
	movf	(check_password@timer+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04E21h))^80h
	subwf	btemp+1,w
	skipz
	goto	u965
	movlw	low(04E21h)
	subwf	(check_password@timer),w
u965:

	skipc
	goto	u961
	goto	u960
u961:
	goto	l1468
u960:
	goto	l1472
	
l263:	
	goto	l1472
	
l264:	
	line	55
	
l1472:	
;ivr.c: 52: }
;ivr.c: 55: if(timer > 20000)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(check_password@timer+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04E21h))^80h
	subwf	btemp+1,w
	skipz
	goto	u975
	movlw	low(04E21h)
	subwf	(check_password@timer),w
u975:

	skipc
	goto	u971
	goto	u970
u971:
	goto	l1478
u970:
	line	56
	
l1474:	
;ivr.c: 56: return Input_Not_Received;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Input_Not_Received),w
	goto	l266
	
l1476:	
	goto	l266
	
l265:	
	line	59
	
l1478:	
;ivr.c: 59: if(Latest_Input == password)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Latest_Input),w	;volatile
	xorwf	(check_password@password),w
	skipz
	goto	u981
	goto	u980
u981:
	goto	l1490
u980:
	line	62
	
l1480:	
;ivr.c: 60: {
;ivr.c: 62: if(Latest_Input == 0x0C)
	movf	(_Latest_Input),w	;volatile
	xorlw	0Ch
	skipz
	goto	u991
	goto	u990
u991:
	goto	l1486
u990:
	line	64
	
l1482:	
;ivr.c: 63: {
;ivr.c: 64: Latest_Input = 0xFF;
	movlw	(0FFh)
	movwf	(??_check_password+0)+0
	movf	(??_check_password+0)+0,w
	movwf	(_Latest_Input)	;volatile
	line	65
;ivr.c: 65: return Correct_Password;
	movf	(_Correct_Password),w
	goto	l266
	
l1484:	
	goto	l266
	line	66
	
l268:	
	line	67
	
l1486:	
;ivr.c: 66: }
;ivr.c: 67: Latest_Input = 0xFF;
	movlw	(0FFh)
	movwf	(??_check_password+0)+0
	movf	(??_check_password+0)+0,w
	movwf	(_Latest_Input)	;volatile
	line	68
	
l1488:	
;ivr.c: 68: count++;
	movlw	(01h)
	movwf	(??_check_password+0)+0
	movf	(??_check_password+0)+0,w
	addwf	(check_password@count),f
	line	69
;ivr.c: 69: }
	goto	l1466
	line	70
	
l267:	
	line	72
	
l1490:	
;ivr.c: 70: else
;ivr.c: 71: {
;ivr.c: 72: Latest_Input = 0xFF;
	movlw	(0FFh)
	movwf	(??_check_password+0)+0
	movf	(??_check_password+0)+0,w
	movwf	(_Latest_Input)	;volatile
	line	73
;ivr.c: 73: return Wrong_Password;
	movf	(_Wrong_Password),w
	goto	l266
	
l1492:	
	goto	l266
	line	74
	
l269:	
	goto	l1466
	line	75
	
l270:	
	line	41
	goto	l1466
	
l271:	
	line	76
	
l266:	
	return
	opt stack 0
GLOBAL	__end_of_check_password
	__end_of_check_password:
	signat	_check_password,89
	global	_eeprom_read

;; *************** function _eeprom_read *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic\eeread.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr            1    7[COMMON] unsigned char 
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
;;      Locals:         1       0       0
;;      Temps:          1       0       0
;;      Totals:         2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_check_password
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic\eeread.c"
	line	6
global __ptext6
__ptext6:	;psect for function _eeprom_read
psect	text6
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic\eeread.c"
	line	6
	global	__size_of_eeprom_read
	__size_of_eeprom_read	equ	__end_of_eeprom_read-_eeprom_read
	
_eeprom_read:	
;incstack = 0
	opt	stack 4
; Regs used in _eeprom_read: [wreg+status,2+status,0]
;eeprom_read@addr stored from wreg
	movwf	(eeprom_read@addr)
	line	8
	
l353:	
	line	9
# 9 "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic\eeread.c"
clrwdt ;# 
psect	text6
	line	10
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	btfsc	(3169/8)^0180h,(3169)&7	;volsfr
	goto	u851
	goto	u850
u851:
	goto	l353
u850:
	goto	l1402
	
l354:	
	line	11
	
l1402:	
	movf	(eeprom_read@addr),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	movlw	(03Fh)
	movwf	(??_eeprom_read+0)+0
	movf	(??_eeprom_read+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	andwf	(396)^0180h,f	;volsfr
	bsf	(3168/8)^0180h,(3168)&7	;volsfr
	clrc
	btfsc	(3168/8)^0180h,(3168)&7	;volsfr
	setc
	movlw	0
	skipnc
	movlw	1

	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(268)^0100h,w	;volatile
	goto	l355
	
l1404:	
	line	12
	
l355:	
	return
	opt stack 0
GLOBAL	__end_of_eeprom_read
	__end_of_eeprom_read:
	signat	_eeprom_read,4217
	global	_power_message

;; *************** function _power_message *****************
;; Defined at:
;;		line 179 in file "E:\Study Material\XC8 PROJECTS\DTMF\ivr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp            1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       1       0
;;      Temps:          1       0       0
;;      Totals:         1       1       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_audio_stoped
;;		_play_message
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\DTMF\ivr.c"
	line	179
global __ptext7
__ptext7:	;psect for function _power_message
psect	text7
	file	"E:\Study Material\XC8 PROJECTS\DTMF\ivr.c"
	line	179
	global	__size_of_power_message
	__size_of_power_message	equ	__end_of_power_message-_power_message
	
_power_message:	
;incstack = 0
	opt	stack 5
; Regs used in _power_message: [wreg+status,2+status,0+pclath+cstack]
	line	182
	
l1620:	
;ivr.c: 182: play_message(11);
	movlw	(0Bh)
	fcall	_play_message
	line	185
;ivr.c: 185: while(Latest_Input == 0xFF && audio_stoped() == 0)
	goto	l1622
	
l312:	
	goto	l1622
	line	187
;ivr.c: 186: {
	
l311:	
	line	185
	
l1622:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Latest_Input),w	;volatile
	xorlw	0FFh
	skipz
	goto	u1181
	goto	u1180
u1181:
	goto	l1626
u1180:
	
l1624:	
	fcall	_audio_stoped
	xorlw	0
	skipnz
	goto	u1191
	goto	u1190
u1191:
	goto	l1622
u1190:
	goto	l1626
	
l314:	
	goto	l1626
	
l315:	
	line	190
	
l1626:	
;ivr.c: 187: }
;ivr.c: 190: if(Latest_Input != 0xFF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Latest_Input),w	;volatile
	xorlw	0FFh
	skipnz
	goto	u1201
	goto	u1200
u1201:
	goto	l1634
u1200:
	line	193
	
l1628:	
;ivr.c: 191: {
;ivr.c: 192: unsigned char temp;
;ivr.c: 193: temp = Latest_Input;
	movf	(_Latest_Input),w	;volatile
	movwf	(??_power_message+0)+0
	movf	(??_power_message+0)+0,w
	movwf	(power_message@temp)
	line	194
;ivr.c: 194: Latest_Input = 0xFF;
	movlw	(0FFh)
	movwf	(??_power_message+0)+0
	movf	(??_power_message+0)+0,w
	movwf	(_Latest_Input)	;volatile
	line	195
;ivr.c: 195: return temp;
	movf	(power_message@temp),w
	goto	l317
	
l1630:	
	goto	l317
	line	196
	
l1632:	
;ivr.c: 196: }
	goto	l317
	line	197
	
l316:	
	line	199
	
l1634:	
;ivr.c: 197: else
;ivr.c: 198: {
;ivr.c: 199: return Message_End;
	movf	(_Message_End),w
	goto	l317
	
l1636:	
	goto	l317
	line	200
	
l318:	
	line	201
	
l317:	
	return
	opt stack 0
GLOBAL	__end_of_power_message
	__end_of_power_message:
	signat	_power_message,89
	global	_phone_received

;; *************** function _phone_received *****************
;; Defined at:
;;		line 67 in file "E:\Study Material\XC8 PROJECTS\DTMF\audio_player.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          1       0       0
;;      Totals:         1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\DTMF\audio_player.c"
	line	67
global __ptext8
__ptext8:	;psect for function _phone_received
psect	text8
	file	"E:\Study Material\XC8 PROJECTS\DTMF\audio_player.c"
	line	67
	global	__size_of_phone_received
	__size_of_phone_received	equ	__end_of_phone_received-_phone_received
	
_phone_received:	
;incstack = 0
	opt	stack 6
; Regs used in _phone_received: [wreg]
	line	69
	
l1540:	
;audio_player.c: 69: if(Latest_Input == 0x0A)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Latest_Input),w	;volatile
	xorlw	0Ah
	skipz
	goto	u1111
	goto	u1110
u1111:
	goto	l1548
u1110:
	line	71
	
l1542:	
;audio_player.c: 70: {
;audio_player.c: 71: Latest_Input = 0xFF;
	movlw	(0FFh)
	movwf	(??_phone_received+0)+0
	movf	(??_phone_received+0)+0,w
	movwf	(_Latest_Input)	;volatile
	line	72
;audio_player.c: 72: return 1;
	movlw	(01h)
	goto	l41
	
l1544:	
	goto	l41
	line	73
	
l1546:	
;audio_player.c: 73: }
	goto	l41
	line	74
	
l40:	
	line	76
	
l1548:	
;audio_player.c: 74: else
;audio_player.c: 75: {
;audio_player.c: 76: Latest_Input = 0xFF;
	movlw	(0FFh)
	movwf	(??_phone_received+0)+0
	movf	(??_phone_received+0)+0,w
	movwf	(_Latest_Input)	;volatile
	line	77
;audio_player.c: 77: return 0;
	movlw	(0)
	goto	l41
	
l1550:	
	goto	l41
	line	78
	
l42:	
	line	79
	
l41:	
	return
	opt stack 0
GLOBAL	__end_of_phone_received
	__end_of_phone_received:
	signat	_phone_received,89
	global	_phase_check

;; *************** function _phase_check *****************
;; Defined at:
;;		line 7 in file "E:\Study Material\XC8 PROJECTS\DTMF\motor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\DTMF\motor.c"
	line	7
global __ptext9
__ptext9:	;psect for function _phase_check
psect	text9
	file	"E:\Study Material\XC8 PROJECTS\DTMF\motor.c"
	line	7
	global	__size_of_phase_check
	__size_of_phase_check	equ	__end_of_phase_check-_phase_check
	
_phase_check:	
;incstack = 0
	opt	stack 6
; Regs used in _phase_check: [wreg]
	line	9
	
l1554:	
;motor.c: 9: if(RC0 == 1 && RC1 == 1 && RC2 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(56/8),(56)&7	;volatile
	goto	u1121
	goto	u1120
u1121:
	goto	l1566
u1120:
	
l1556:	
	btfss	(57/8),(57)&7	;volatile
	goto	u1131
	goto	u1130
u1131:
	goto	l1566
u1130:
	
l1558:	
	btfss	(58/8),(58)&7	;volatile
	goto	u1141
	goto	u1140
u1141:
	goto	l1566
u1140:
	line	10
	
l1560:	
;motor.c: 10: return 1;
	movlw	(01h)
	goto	l77
	
l1562:	
	goto	l77
	
l1564:	
	goto	l77
	line	11
	
l76:	
	line	12
	
l1566:	
;motor.c: 11: else
;motor.c: 12: return 0;
	movlw	(0)
	goto	l77
	
l1568:	
	goto	l77
	
l78:	
	line	13
	
l77:	
	return
	opt stack 0
GLOBAL	__end_of_phase_check
	__end_of_phase_check:
	signat	_phase_check,89
	global	_motor_stop

;; *************** function _motor_stop *****************
;; Defined at:
;;		line 24 in file "E:\Study Material\XC8 PROJECTS\DTMF\motor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       3       0
;;      Totals:         0       3       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_eeprom_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	line	24
global __ptext10
__ptext10:	;psect for function _motor_stop
psect	text10
	file	"E:\Study Material\XC8 PROJECTS\DTMF\motor.c"
	line	24
	global	__size_of_motor_stop
	__size_of_motor_stop	equ	__end_of_motor_stop-_motor_stop
	
_motor_stop:	
;incstack = 0
	opt	stack 5
; Regs used in _motor_stop: [wreg+status,2+status,0+pclath+cstack]
	line	26
	
l1580:	
;motor.c: 26: RC4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(60/8),(60)&7	;volatile
	line	27
	
l1582:	
;motor.c: 27: _delay((unsigned long)((5000)*(4000000/4000.0)));
	opt asmopt_off
movlw  26
movwf	((??_motor_stop+0)+0+2),f
movlw	94
movwf	((??_motor_stop+0)+0+1),f
	movlw	134
movwf	((??_motor_stop+0)+0),f
u1667:
	decfsz	((??_motor_stop+0)+0),f
	goto	u1667
	decfsz	((??_motor_stop+0)+0+1),f
	goto	u1667
	decfsz	((??_motor_stop+0)+0+2),f
	goto	u1667
	nop
opt asmopt_on

	line	28
	
l1584:	
;motor.c: 28: RC4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7	;volatile
	line	29
	
l1586:	
;motor.c: 29: RC7 = 0;
	bcf	(63/8),(63)&7	;volatile
	line	30
	
l1588:	
;motor.c: 30: eeprom_write(11,0);
	clrf	(eeprom_write@value)
	movlw	(0Bh)
	fcall	_eeprom_write
	line	31
	
l84:	
	return
	opt stack 0
GLOBAL	__end_of_motor_stop
	__end_of_motor_stop:
	signat	_motor_stop,88
	global	_motor_start

;; *************** function _motor_start *****************
;; Defined at:
;;		line 15 in file "E:\Study Material\XC8 PROJECTS\DTMF\motor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       3       0
;;      Totals:         0       3       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_eeprom_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	line	15
global __ptext11
__ptext11:	;psect for function _motor_start
psect	text11
	file	"E:\Study Material\XC8 PROJECTS\DTMF\motor.c"
	line	15
	global	__size_of_motor_start
	__size_of_motor_start	equ	__end_of_motor_start-_motor_start
	
_motor_start:	
;incstack = 0
	opt	stack 5
; Regs used in _motor_start: [wreg+status,2+status,0+pclath+cstack]
	line	17
	
l1570:	
;motor.c: 17: RC3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7	;volatile
	line	18
	
l1572:	
;motor.c: 18: _delay((unsigned long)((5000)*(4000000/4000.0)));
	opt asmopt_off
movlw  26
movwf	((??_motor_start+0)+0+2),f
movlw	94
movwf	((??_motor_start+0)+0+1),f
	movlw	134
movwf	((??_motor_start+0)+0),f
u1677:
	decfsz	((??_motor_start+0)+0),f
	goto	u1677
	decfsz	((??_motor_start+0)+0+1),f
	goto	u1677
	decfsz	((??_motor_start+0)+0+2),f
	goto	u1677
	nop
opt asmopt_on

	line	19
	
l1574:	
;motor.c: 19: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7	;volatile
	line	20
	
l1576:	
;motor.c: 20: RC7 = 1;
	bsf	(63/8),(63)&7	;volatile
	line	21
	
l1578:	
;motor.c: 21: eeprom_write(11,1);
	clrf	(eeprom_write@value)
	incf	(eeprom_write@value),f
	movlw	(0Bh)
	fcall	_eeprom_write
	line	22
	
l81:	
	return
	opt stack 0
GLOBAL	__end_of_motor_start
	__end_of_motor_start:
	signat	_motor_start,88
	global	_init_DTMF

;; *************** function _init_DTMF *****************
;; Defined at:
;;		line 6 in file "E:\Study Material\XC8 PROJECTS\DTMF\dtmf_lib.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\DTMF\dtmf_lib.c"
	line	6
global __ptext12
__ptext12:	;psect for function _init_DTMF
psect	text12
	file	"E:\Study Material\XC8 PROJECTS\DTMF\dtmf_lib.c"
	line	6
	global	__size_of_init_DTMF
	__size_of_init_DTMF	equ	__end_of_init_DTMF-_init_DTMF
	
_init_DTMF:	
;incstack = 0
	opt	stack 6
; Regs used in _init_DTMF: []
	line	8
	
l1552:	
;dtmf_lib.c: 8: OPTION_REGbits.nRBPU = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(129)^080h,7	;volatile
	line	9
;dtmf_lib.c: 9: OPTION_REGbits.INTEDG = 0;
	bcf	(129)^080h,6	;volatile
	line	10
;dtmf_lib.c: 10: INTE = 1;
	bsf	(92/8),(92)&7	;volatile
	line	11
;dtmf_lib.c: 11: (GIE = 1);
	bsf	(95/8),(95)&7	;volatile
	line	12
	
l53:	
	return
	opt stack 0
GLOBAL	__end_of_init_DTMF
	__end_of_init_DTMF:
	signat	_init_DTMF,88
	global	_get_user_input

;; *************** function _get_user_input *****************
;; Defined at:
;;		line 264 in file "E:\Study Material\XC8 PROJECTS\DTMF\DTMF_Controller.C"
;; Parameters:    Size  Location     Type
;;  group           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  group           1    8[BANK0 ] unsigned char 
;;  Input_Timer     2   10[BANK0 ] int 
;;  result          1   12[BANK0 ] unsigned char 
;;  attempts        1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       5       0
;;      Temps:          0       1       0
;;      Totals:         0       6       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_play_message_group
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\DTMF\DTMF_Controller.C"
	line	264
global __ptext13
__ptext13:	;psect for function _get_user_input
psect	text13
	file	"E:\Study Material\XC8 PROJECTS\DTMF\DTMF_Controller.C"
	line	264
	global	__size_of_get_user_input
	__size_of_get_user_input	equ	__end_of_get_user_input-_get_user_input
	
_get_user_input:	
;incstack = 0
	opt	stack 4
; Regs used in _get_user_input: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;get_user_input@group stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(get_user_input@group)
	line	266
	
l1638:	
;DTMF_Controller.C: 266: char result = Message_End;
	movf	(_Message_End),w
	movwf	(??_get_user_input+0)+0
	movf	(??_get_user_input+0)+0,w
	movwf	(get_user_input@result)
	line	267
	
l1640:	
;DTMF_Controller.C: 267: char attempts = 0;
	clrf	(get_user_input@attempts)
	line	268
;DTMF_Controller.C: 268: while(attempts < 3 && result == Message_End)
	goto	l208
	
l209:	
	line	270
	
l1642:	
;DTMF_Controller.C: 269: {
;DTMF_Controller.C: 270: result = play_message_group(group);
	movf	(get_user_input@group),w
	fcall	_play_message_group
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_get_user_input+0)+0
	movf	(??_get_user_input+0)+0,w
	movwf	(get_user_input@result)
	line	271
	
l1644:	
;DTMF_Controller.C: 271: if(result == Message_End)
	movf	(get_user_input@result),w
	xorwf	(_Message_End),w
	skipz
	goto	u1211
	goto	u1210
u1211:
	goto	l208
u1210:
	line	275
	
l1646:	
;DTMF_Controller.C: 272: {
;DTMF_Controller.C: 275: int Input_Timer = 0;
	clrf	(get_user_input@Input_Timer)
	clrf	(get_user_input@Input_Timer+1)
	line	276
;DTMF_Controller.C: 276: while(Input_Timer < 10000 && Latest_Input == 0xFF)
	goto	l1650
	
l212:	
	line	278
	
l1648:	
;DTMF_Controller.C: 277: {
;DTMF_Controller.C: 278: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_get_user_input+0)+0,f
u1687:
	nop
decfsz	(??_get_user_input+0)+0,f
	goto	u1687
	nop2	;nop
	nop
opt asmopt_on

	line	279
;DTMF_Controller.C: 279: Input_Timer++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(get_user_input@Input_Timer),f
	skipnc
	incf	(get_user_input@Input_Timer+1),f
	movlw	high(01h)
	addwf	(get_user_input@Input_Timer+1),f
	goto	l1650
	line	280
	
l211:	
	line	276
	
l1650:	
	movf	(get_user_input@Input_Timer+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02710h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1225
	movlw	low(02710h)
	subwf	(get_user_input@Input_Timer),w
u1225:

	skipnc
	goto	u1221
	goto	u1220
u1221:
	goto	l1654
u1220:
	
l1652:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Latest_Input),w	;volatile
	xorlw	0FFh
	skipnz
	goto	u1231
	goto	u1230
u1231:
	goto	l1648
u1230:
	goto	l1654
	
l214:	
	goto	l1654
	
l215:	
	line	282
	
l1654:	
;DTMF_Controller.C: 280: }
;DTMF_Controller.C: 282: if(Input_Timer >= 10000)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(get_user_input@Input_Timer+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02710h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1245
	movlw	low(02710h)
	subwf	(get_user_input@Input_Timer),w
u1245:

	skipc
	goto	u1241
	goto	u1240
u1241:
	goto	l1658
u1240:
	line	283
	
l1656:	
;DTMF_Controller.C: 283: attempts++;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_get_user_input+0)+0
	movf	(??_get_user_input+0)+0,w
	addwf	(get_user_input@attempts),f
	goto	l208
	line	284
	
l216:	
	line	287
	
l1658:	
;DTMF_Controller.C: 284: else
;DTMF_Controller.C: 285: {
;DTMF_Controller.C: 287: result = Latest_Input;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Latest_Input),w	;volatile
	movwf	(??_get_user_input+0)+0
	movf	(??_get_user_input+0)+0,w
	movwf	(get_user_input@result)
	line	288
;DTMF_Controller.C: 288: Latest_Input = 0xFF;
	movlw	(0FFh)
	movwf	(??_get_user_input+0)+0
	movf	(??_get_user_input+0)+0,w
	movwf	(_Latest_Input)	;volatile
	goto	l208
	line	289
	
l217:	
	goto	l208
	line	290
	
l210:	
	line	291
	
l208:	
	line	268
	movlw	(03h)
	subwf	(get_user_input@attempts),w
	skipnc
	goto	u1251
	goto	u1250
u1251:
	goto	l1662
u1250:
	
l1660:	
	movf	(get_user_input@result),w
	xorwf	(_Message_End),w
	skipnz
	goto	u1261
	goto	u1260
u1261:
	goto	l1642
u1260:
	goto	l1662
	
l219:	
	goto	l1662
	
l220:	
	line	292
	
l1662:	
;DTMF_Controller.C: 289: }
;DTMF_Controller.C: 290: }
;DTMF_Controller.C: 291: }
;DTMF_Controller.C: 292: return result;
	movf	(get_user_input@result),w
	goto	l221
	
l1664:	
	line	293
	
l221:	
	return
	opt stack 0
GLOBAL	__end_of_get_user_input
	__end_of_get_user_input:
	signat	_get_user_input,4217
	global	_play_message_group

;; *************** function _play_message_group *****************
;; Defined at:
;;		line 113 in file "E:\Study Material\XC8 PROJECTS\DTMF\ivr.c"
;; Parameters:    Size  Location     Type
;;  group           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  group           1    6[BANK0 ] unsigned char 
;;  temp            1    4[BANK0 ] unsigned char 
;;  temp            1    3[BANK0 ] unsigned char 
;;  temp            1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       4       0
;;      Temps:          1       0       0
;;      Totals:         1       4       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_audio_stoped
;;		_play_message
;; This function is called by:
;;		_get_user_input
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\DTMF\ivr.c"
	line	113
global __ptext14
__ptext14:	;psect for function _play_message_group
psect	text14
	file	"E:\Study Material\XC8 PROJECTS\DTMF\ivr.c"
	line	113
	global	__size_of_play_message_group
	__size_of_play_message_group	equ	__end_of_play_message_group-_play_message_group
	
_play_message_group:	
;incstack = 0
	opt	stack 4
; Regs used in _play_message_group: [wreg+status,2+status,0+pclath+cstack]
;play_message_group@group stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(play_message_group@group)
	line	115
	
l1494:	
;ivr.c: 115: if(group == 1)
	movf	(play_message_group@group),w
	xorlw	01h
	skipz
	goto	u1001
	goto	u1000
u1001:
	goto	l1508
u1000:
	line	118
	
l1496:	
;ivr.c: 116: {
;ivr.c: 118: play_message(2);
	movlw	(02h)
	fcall	_play_message
	line	121
;ivr.c: 121: while(Latest_Input == 0xFF && audio_stoped() == 0)
	goto	l1498
	
l289:	
	goto	l1498
	line	123
;ivr.c: 122: {
	
l288:	
	line	121
	
l1498:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Latest_Input),w	;volatile
	xorlw	0FFh
	skipz
	goto	u1011
	goto	u1010
u1011:
	goto	l1502
u1010:
	
l1500:	
	fcall	_audio_stoped
	xorlw	0
	skipnz
	goto	u1021
	goto	u1020
u1021:
	goto	l1498
u1020:
	goto	l1502
	
l291:	
	goto	l1502
	
l292:	
	line	126
	
l1502:	
;ivr.c: 123: }
;ivr.c: 126: if(Latest_Input != 0xFF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Latest_Input),w	;volatile
	xorlw	0FFh
	skipnz
	goto	u1031
	goto	u1030
u1031:
	goto	l1508
u1030:
	line	129
	
l1504:	
;ivr.c: 127: {
;ivr.c: 128: unsigned char temp;
;ivr.c: 129: temp = Latest_Input;
	movf	(_Latest_Input),w	;volatile
	movwf	(??_play_message_group+0)+0
	movf	(??_play_message_group+0)+0,w
	movwf	(play_message_group@temp)
	line	130
;ivr.c: 130: Latest_Input = 0xFF;
	movlw	(0FFh)
	movwf	(??_play_message_group+0)+0
	movf	(??_play_message_group+0)+0,w
	movwf	(_Latest_Input)	;volatile
	line	131
;ivr.c: 131: return temp;
	movf	(play_message_group@temp),w
	goto	l294
	
l1506:	
	goto	l294
	line	132
	
l293:	
	goto	l1508
	line	133
	
l287:	
	line	135
	
l1508:	
;ivr.c: 132: }
;ivr.c: 133: }
;ivr.c: 135: if(group == 0)
	movf	(play_message_group@group),f
	skipz
	goto	u1041
	goto	u1040
u1041:
	goto	l1522
u1040:
	line	138
	
l1510:	
;ivr.c: 136: {
;ivr.c: 138: play_message(3);
	movlw	(03h)
	fcall	_play_message
	line	141
;ivr.c: 141: while(Latest_Input == 0xFF && audio_stoped() == 0)
	goto	l1512
	
l297:	
	goto	l1512
	line	143
;ivr.c: 142: {
	
l296:	
	line	141
	
l1512:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Latest_Input),w	;volatile
	xorlw	0FFh
	skipz
	goto	u1051
	goto	u1050
u1051:
	goto	l1516
u1050:
	
l1514:	
	fcall	_audio_stoped
	xorlw	0
	skipnz
	goto	u1061
	goto	u1060
u1061:
	goto	l1512
u1060:
	goto	l1516
	
l299:	
	goto	l1516
	
l300:	
	line	146
	
l1516:	
;ivr.c: 143: }
;ivr.c: 146: if(Latest_Input != 0xFF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Latest_Input),w	;volatile
	xorlw	0FFh
	skipnz
	goto	u1071
	goto	u1070
u1071:
	goto	l1522
u1070:
	line	149
	
l1518:	
;ivr.c: 147: {
;ivr.c: 148: unsigned char temp;
;ivr.c: 149: temp = Latest_Input;
	movf	(_Latest_Input),w	;volatile
	movwf	(??_play_message_group+0)+0
	movf	(??_play_message_group+0)+0,w
	movwf	(play_message_group@temp_206)
	line	150
;ivr.c: 150: Latest_Input = 0xFF;
	movlw	(0FFh)
	movwf	(??_play_message_group+0)+0
	movf	(??_play_message_group+0)+0,w
	movwf	(_Latest_Input)	;volatile
	line	151
;ivr.c: 151: return temp;
	movf	(play_message_group@temp_206),w
	goto	l294
	
l1520:	
	goto	l294
	line	152
	
l301:	
	goto	l1522
	line	153
	
l295:	
	line	158
	
l1522:	
;ivr.c: 152: }
;ivr.c: 153: }
;ivr.c: 158: play_message(6);
	movlw	(06h)
	fcall	_play_message
	line	161
;ivr.c: 161: while(Latest_Input == 0xFF && audio_stoped() == 0)
	goto	l1524
	
l303:	
	goto	l1524
	line	163
;ivr.c: 162: {
	
l302:	
	line	161
	
l1524:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Latest_Input),w	;volatile
	xorlw	0FFh
	skipz
	goto	u1081
	goto	u1080
u1081:
	goto	l1528
u1080:
	
l1526:	
	fcall	_audio_stoped
	xorlw	0
	skipnz
	goto	u1091
	goto	u1090
u1091:
	goto	l1524
u1090:
	goto	l1528
	
l305:	
	goto	l1528
	
l306:	
	line	166
	
l1528:	
;ivr.c: 163: }
;ivr.c: 166: if(Latest_Input != 0xFF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Latest_Input),w	;volatile
	xorlw	0FFh
	skipnz
	goto	u1101
	goto	u1100
u1101:
	goto	l1536
u1100:
	line	169
	
l1530:	
;ivr.c: 167: {
;ivr.c: 168: unsigned char temp;
;ivr.c: 169: temp = Latest_Input;
	movf	(_Latest_Input),w	;volatile
	movwf	(??_play_message_group+0)+0
	movf	(??_play_message_group+0)+0,w
	movwf	(play_message_group@temp_207)
	line	170
;ivr.c: 170: Latest_Input = 0xFF;
	movlw	(0FFh)
	movwf	(??_play_message_group+0)+0
	movf	(??_play_message_group+0)+0,w
	movwf	(_Latest_Input)	;volatile
	line	171
;ivr.c: 171: return temp;
	movf	(play_message_group@temp_207),w
	goto	l294
	
l1532:	
	goto	l294
	line	172
	
l1534:	
;ivr.c: 172: }
	goto	l294
	line	173
	
l307:	
	line	175
	
l1536:	
;ivr.c: 173: else
;ivr.c: 174: {
;ivr.c: 175: return Message_End;
	movf	(_Message_End),w
	goto	l294
	
l1538:	
	goto	l294
	line	176
	
l308:	
	line	177
	
l294:	
	return
	opt stack 0
GLOBAL	__end_of_play_message_group
	__end_of_play_message_group:
	signat	_play_message_group,4217
	global	_audio_stoped

;; *************** function _audio_stoped *****************
;; Defined at:
;;		line 18 in file "E:\Study Material\XC8 PROJECTS\DTMF\audio_player.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_welcome_user
;;		_welcome_message
;;		_play_message_group
;;		_power_message
;;		_thanks_message
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\DTMF\audio_player.c"
	line	18
global __ptext15
__ptext15:	;psect for function _audio_stoped
psect	text15
	file	"E:\Study Material\XC8 PROJECTS\DTMF\audio_player.c"
	line	18
	global	__size_of_audio_stoped
	__size_of_audio_stoped	equ	__end_of_audio_stoped-_audio_stoped
	
_audio_stoped:	
;incstack = 0
	opt	stack 4
; Regs used in _audio_stoped: [wreg]
	line	20
	
l1390:	
;audio_player.c: 20: if(RB2 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(50/8),(50)&7	;volatile
	goto	u841
	goto	u840
u841:
	goto	l1398
u840:
	line	21
	
l1392:	
;audio_player.c: 21: return 1;
	movlw	(01h)
	goto	l19
	
l1394:	
	goto	l19
	
l1396:	
	goto	l19
	line	22
	
l18:	
	line	23
	
l1398:	
;audio_player.c: 22: else
;audio_player.c: 23: return 0;
	movlw	(0)
	goto	l19
	
l1400:	
	goto	l19
	
l20:	
	line	24
	
l19:	
	return
	opt stack 0
GLOBAL	__end_of_audio_stoped
	__end_of_audio_stoped:
	signat	_audio_stoped,89
	global	_change_password

;; *************** function _change_password *****************
;; Defined at:
;;		line 78 in file "E:\Study Material\XC8 PROJECTS\DTMF\ivr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  timer           2    5[BANK0 ] int 
;;  count           1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       3       0
;;      Temps:          0       1       0
;;      Totals:         0       4       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_eeprom_write
;;		_play_message
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\DTMF\ivr.c"
	line	78
global __ptext16
__ptext16:	;psect for function _change_password
psect	text16
	file	"E:\Study Material\XC8 PROJECTS\DTMF\ivr.c"
	line	78
	global	__size_of_change_password
	__size_of_change_password	equ	__end_of_change_password-_change_password
	
_change_password:	
;incstack = 0
	opt	stack 5
; Regs used in _change_password: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	80
	
l1666:	
;ivr.c: 80: int timer = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(change_password@timer)
	clrf	(change_password@timer+1)
	line	81
;ivr.c: 81: char count = 0;
	clrf	(change_password@count)
	line	84
	
l1668:	
;ivr.c: 84: play_message(9);
	movlw	(09h)
	fcall	_play_message
	goto	l1670
	line	86
;ivr.c: 86: while(1)
	
l274:	
	line	88
	
l1670:	
;ivr.c: 87: {
;ivr.c: 88: timer = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(change_password@timer)
	clrf	(change_password@timer+1)
	line	90
;ivr.c: 90: while(Latest_Input == 0xFF && timer <= 20000)
	goto	l275
	
l276:	
	line	94
	
l1672:	
;ivr.c: 91: {
;ivr.c: 94: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_change_password+0)+0,f
u1697:
	nop
decfsz	(??_change_password+0)+0,f
	goto	u1697
	nop2	;nop
	nop
opt asmopt_on

	line	95
;ivr.c: 95: timer++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(change_password@timer),f
	skipnc
	incf	(change_password@timer+1),f
	movlw	high(01h)
	addwf	(change_password@timer+1),f
	line	96
	
l275:	
	line	90
	movf	(_Latest_Input),w	;volatile
	xorlw	0FFh
	skipz
	goto	u1271
	goto	u1270
u1271:
	goto	l1676
u1270:
	
l1674:	
	movf	(change_password@timer+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04E21h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1285
	movlw	low(04E21h)
	subwf	(change_password@timer),w
u1285:

	skipc
	goto	u1281
	goto	u1280
u1281:
	goto	l1672
u1280:
	goto	l1676
	
l278:	
	goto	l1676
	
l279:	
	line	99
	
l1676:	
;ivr.c: 96: }
;ivr.c: 99: if(timer > 20000)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(change_password@timer+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04E21h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1295
	movlw	low(04E21h)
	subwf	(change_password@timer),w
u1295:

	skipc
	goto	u1291
	goto	u1290
u1291:
	goto	l1682
u1290:
	line	100
	
l1678:	
;ivr.c: 100: return Input_Not_Received;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Input_Not_Received),w
	goto	l281
	
l1680:	
	goto	l281
	
l280:	
	line	102
	
l1682:	
;ivr.c: 102: eeprom_write(count,Latest_Input);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Latest_Input),w	;volatile
	movwf	(??_change_password+0)+0
	movf	(??_change_password+0)+0,w
	movwf	(eeprom_write@value)
	movf	(change_password@count),w
	fcall	_eeprom_write
	line	103
	
l1684:	
;ivr.c: 103: if(Latest_Input == 0x0C)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Latest_Input),w	;volatile
	xorlw	0Ch
	skipz
	goto	u1301
	goto	u1300
u1301:
	goto	l1690
u1300:
	line	105
	
l1686:	
;ivr.c: 104: {
;ivr.c: 105: Latest_Input = 0xFF;
	movlw	(0FFh)
	movwf	(??_change_password+0)+0
	movf	(??_change_password+0)+0,w
	movwf	(_Latest_Input)	;volatile
	line	106
;ivr.c: 106: return Change_OK;
	movf	(_Change_OK),w
	goto	l281
	
l1688:	
	goto	l281
	line	107
	
l282:	
	line	108
	
l1690:	
;ivr.c: 107: }
;ivr.c: 108: Latest_Input = 0xFF;
	movlw	(0FFh)
	movwf	(??_change_password+0)+0
	movf	(??_change_password+0)+0,w
	movwf	(_Latest_Input)	;volatile
	line	109
	
l1692:	
;ivr.c: 109: count++;
	movlw	(01h)
	movwf	(??_change_password+0)+0
	movf	(??_change_password+0)+0,w
	addwf	(change_password@count),f
	goto	l1670
	line	110
	
l283:	
	line	86
	goto	l1670
	
l284:	
	line	111
	
l281:	
	return
	opt stack 0
GLOBAL	__end_of_change_password
	__end_of_change_password:
	signat	_change_password,89
	global	_play_message

;; *************** function _play_message *****************
;; Defined at:
;;		line 8 in file "E:\Study Material\XC8 PROJECTS\DTMF\audio_player.c"
;; Parameters:    Size  Location     Type
;;  Message         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Message         1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         1       0       0
;;      Temps:          0       3       0
;;      Totals:         1       3       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_welcome_user
;;		_welcome_message
;;		_check_password
;;		_change_password
;;		_play_message_group
;;		_power_message
;;		_thanks_message
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\DTMF\audio_player.c"
	line	8
global __ptext17
__ptext17:	;psect for function _play_message
psect	text17
	file	"E:\Study Material\XC8 PROJECTS\DTMF\audio_player.c"
	line	8
	global	__size_of_play_message
	__size_of_play_message	equ	__end_of_play_message-_play_message
	
_play_message:	
;incstack = 0
	opt	stack 4
; Regs used in _play_message: [wreg+status,2+status,0]
;play_message@Message stored from wreg
	movwf	(play_message@Message)
	line	10
	
l1378:	
;audio_player.c: 10: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_play_message+0)+0+2),f
movlw	138
movwf	((??_play_message+0)+0+1),f
	movlw	86
movwf	((??_play_message+0)+0),f
u1707:
	decfsz	((??_play_message+0)+0),f
	goto	u1707
	decfsz	((??_play_message+0)+0+1),f
	goto	u1707
	decfsz	((??_play_message+0)+0+2),f
	goto	u1707
	nop2
opt asmopt_on

	line	11
	
l1380:	
;audio_player.c: 11: Message = Message - 1;
	movf	(play_message@Message),w
	addlw	0FFh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_play_message+0)+0
	movf	(??_play_message+0)+0,w
	movwf	(play_message@Message)
	line	12
	
l1382:	
;audio_player.c: 12: PORTA = Message;
	movf	(play_message@Message),w
	movwf	(5)	;volatile
	line	13
	
l1384:	
;audio_player.c: 13: RA5 = 1;
	bsf	(45/8),(45)&7	;volatile
	line	14
	
l1386:	
;audio_player.c: 14: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_play_message+0)+0+2),f
movlw	19
movwf	((??_play_message+0)+0+1),f
	movlw	177
movwf	((??_play_message+0)+0),f
u1717:
	decfsz	((??_play_message+0)+0),f
	goto	u1717
	decfsz	((??_play_message+0)+0+1),f
	goto	u1717
	decfsz	((??_play_message+0)+0+2),f
	goto	u1717
	nop2
opt asmopt_on

	line	15
	
l1388:	
;audio_player.c: 15: RA5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(45/8),(45)&7	;volatile
	line	16
	
l15:	
	return
	opt stack 0
GLOBAL	__end_of_play_message
	__end_of_play_message:
	signat	_play_message,4216
	global	_eeprom_write

;; *************** function _eeprom_write *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic\eewrite.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;;  value           1    6[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr            1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         1       0       0
;;      Locals:         0       1       0
;;      Temps:          1       0       0
;;      Totals:         2       1       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_motor_start
;;		_motor_stop
;;		_change_password
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic\eewrite.c"
	line	6
global __ptext18
__ptext18:	;psect for function _eeprom_write
psect	text18
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic\eewrite.c"
	line	6
	global	__size_of_eeprom_write
	__size_of_eeprom_write	equ	__end_of_eeprom_write-_eeprom_write
	
_eeprom_write:	
;incstack = 0
	opt	stack 5
; Regs used in _eeprom_write: [wreg+status,2+status,0]
;eeprom_write@addr stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(eeprom_write@addr)
	line	8
	
l374:	
	goto	l375
	
l376:	
	
l375:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	btfsc	(3169/8)^0180h,(3169)&7	;volsfr
	goto	u861
	goto	u860
u861:
	goto	l375
u860:
	goto	l1406
	
l377:	
	
l1406:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(eeprom_write@addr),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	movf	(eeprom_write@value),w
	movwf	(268)^0100h	;volatile
	
l1408:	
	movlw	(03Fh)
	movwf	(??_eeprom_write+0)+0
	movf	(??_eeprom_write+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	andwf	(396)^0180h,f	;volsfr
	
l1410:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(24/8),(24)&7	;volatile
	
l1412:	
	btfss	(95/8),(95)&7	;volatile
	goto	u871
	goto	u870
u871:
	goto	l378
u870:
	
l1414:	
	bsf	(24/8),(24)&7	;volatile
	
l378:	
	bcf	(95/8),(95)&7	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3170/8)^0180h,(3170)&7	;volsfr
	
l1416:	
	movlw	(055h)
	movwf	(397)^0180h	;volsfr
	movlw	(0AAh)
	movwf	(397)^0180h	;volsfr
	
l1418:	
	bsf	(3169/8)^0180h,(3169)&7	;volsfr
	
l1420:	
	bcf	(3170/8)^0180h,(3170)&7	;volsfr
	
l1422:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(24/8),(24)&7	;volatile
	goto	u881
	goto	u880
u881:
	goto	l381
u880:
	
l1424:	
	bsf	(95/8),(95)&7	;volatile
	goto	l381
	
l379:	
	goto	l381
	
l380:	
	line	9
	
l381:	
	return
	opt stack 0
GLOBAL	__end_of_eeprom_write
	__end_of_eeprom_write:
	signat	_eeprom_write,8312
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 3 in file "E:\Study Material\XC8 PROJECTS\DTMF\isr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          6       0       0
;;      Totals:         6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\DTMF\isr.c"
	line	3
global __ptext19
__ptext19:	;psect for function _ISR
psect	text19
	file	"E:\Study Material\XC8 PROJECTS\DTMF\isr.c"
	line	3
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 4
; Regs used in _ISR: [wreg+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+2)
	movf	fsr0,w
	movwf	(??_ISR+3)
	movf	pclath,w
	movwf	(??_ISR+4)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+5)
	ljmp	_ISR
psect	text19
	line	5
	
i1l1872:	
;isr.c: 5: if(INTE && INTF)
	btfss	(92/8),(92)&7	;volatile
	goto	u159_21
	goto	u159_20
u159_21:
	goto	i1l340
u159_20:
	
i1l1874:	
	btfss	(89/8),(89)&7	;volatile
	goto	u160_21
	goto	u160_20
u160_21:
	goto	i1l340
u160_20:
	line	7
	
i1l1876:	
;isr.c: 6: {
;isr.c: 7: Latest_Input = 0x00;
	clrf	(_Latest_Input)	;volatile
	line	8
	
i1l1878:	
;isr.c: 8: Latest_Input = PORTB;
	movf	(6),w	;volatile
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_Latest_Input)	;volatile
	line	9
;isr.c: 9: Latest_Input = Latest_Input & 0xF0;
	movf	(_Latest_Input),w	;volatile
	andlw	0F0h
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_Latest_Input)	;volatile
	line	10
	
i1l1880:	
;isr.c: 10: Latest_Input = Latest_Input >> 4;
	movf	(_Latest_Input),w	;volatile
	movwf	(??_ISR+0)+0
	movlw	04h
u161_25:
	clrc
	rrf	(??_ISR+0)+0,f
	addlw	-1
	skipz
	goto	u161_25
	movf	0+(??_ISR+0)+0,w
	movwf	(??_ISR+1)+0
	movf	(??_ISR+1)+0,w
	movwf	(_Latest_Input)	;volatile
	line	11
	
i1l1882:	
;isr.c: 11: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	goto	i1l340
	line	12
	
i1l339:	
	line	13
	
i1l340:	
	movf	(??_ISR+5),w
	movwf	btemp+1
	movf	(??_ISR+4),w
	movwf	pclath
	movf	(??_ISR+3),w
	movwf	fsr0
	swapf	(??_ISR+2)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,88
global	___latbits
___latbits	equ	0
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end

opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 59893"

opt pagewidth 120

	opt lm

	processor	16F628A
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
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PORTA equ 05h ;# 
# 221 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PORTB equ 06h ;# 
# 282 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PCLATH equ 0Ah ;# 
# 301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
INTCON equ 0Bh ;# 
# 378 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PIR1 equ 0Ch ;# 
# 434 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TMR1 equ 0Eh ;# 
# 440 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TMR1L equ 0Eh ;# 
# 446 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TMR1H equ 0Fh ;# 
# 452 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
T1CON equ 010h ;# 
# 510 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TMR2 equ 011h ;# 
# 516 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
T2CON equ 012h ;# 
# 586 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
CCPR1 equ 015h ;# 
# 592 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
CCPR1L equ 015h ;# 
# 598 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
CCPR1H equ 016h ;# 
# 604 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
CCP1CON equ 017h ;# 
# 661 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
RCSTA equ 018h ;# 
# 731 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TXREG equ 019h ;# 
# 737 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
RCREG equ 01Ah ;# 
# 743 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
CMCON equ 01Fh ;# 
# 812 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
OPTION_REG equ 081h ;# 
# 881 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TRISA equ 085h ;# 
# 942 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TRISB equ 086h ;# 
# 1003 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PIE1 equ 08Ch ;# 
# 1059 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PCON equ 08Eh ;# 
# 1107 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PR2 equ 092h ;# 
# 1113 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TXSTA equ 098h ;# 
# 1169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
SPBRG equ 099h ;# 
# 1175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
EEDATA equ 09Ah ;# 
# 1181 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
EEADR equ 09Bh ;# 
# 1187 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
EECON1 equ 09Ch ;# 
# 1224 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
EECON2 equ 09Dh ;# 
# 1230 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
VRCON equ 09Fh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PORTA equ 05h ;# 
# 221 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PORTB equ 06h ;# 
# 282 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PCLATH equ 0Ah ;# 
# 301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
INTCON equ 0Bh ;# 
# 378 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PIR1 equ 0Ch ;# 
# 434 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TMR1 equ 0Eh ;# 
# 440 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TMR1L equ 0Eh ;# 
# 446 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TMR1H equ 0Fh ;# 
# 452 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
T1CON equ 010h ;# 
# 510 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TMR2 equ 011h ;# 
# 516 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
T2CON equ 012h ;# 
# 586 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
CCPR1 equ 015h ;# 
# 592 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
CCPR1L equ 015h ;# 
# 598 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
CCPR1H equ 016h ;# 
# 604 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
CCP1CON equ 017h ;# 
# 661 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
RCSTA equ 018h ;# 
# 731 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TXREG equ 019h ;# 
# 737 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
RCREG equ 01Ah ;# 
# 743 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
CMCON equ 01Fh ;# 
# 812 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
OPTION_REG equ 081h ;# 
# 881 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TRISA equ 085h ;# 
# 942 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TRISB equ 086h ;# 
# 1003 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PIE1 equ 08Ch ;# 
# 1059 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PCON equ 08Eh ;# 
# 1107 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PR2 equ 092h ;# 
# 1113 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TXSTA equ 098h ;# 
# 1169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
SPBRG equ 099h ;# 
# 1175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
EEDATA equ 09Ah ;# 
# 1181 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
EEADR equ 09Bh ;# 
# 1187 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
EECON1 equ 09Ch ;# 
# 1224 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
EECON2 equ 09Dh ;# 
# 1230 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
VRCON equ 09Fh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PORTA equ 05h ;# 
# 221 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PORTB equ 06h ;# 
# 282 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PCLATH equ 0Ah ;# 
# 301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
INTCON equ 0Bh ;# 
# 378 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PIR1 equ 0Ch ;# 
# 434 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TMR1 equ 0Eh ;# 
# 440 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TMR1L equ 0Eh ;# 
# 446 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TMR1H equ 0Fh ;# 
# 452 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
T1CON equ 010h ;# 
# 510 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TMR2 equ 011h ;# 
# 516 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
T2CON equ 012h ;# 
# 586 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
CCPR1 equ 015h ;# 
# 592 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
CCPR1L equ 015h ;# 
# 598 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
CCPR1H equ 016h ;# 
# 604 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
CCP1CON equ 017h ;# 
# 661 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
RCSTA equ 018h ;# 
# 731 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TXREG equ 019h ;# 
# 737 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
RCREG equ 01Ah ;# 
# 743 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
CMCON equ 01Fh ;# 
# 812 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
OPTION_REG equ 081h ;# 
# 881 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TRISA equ 085h ;# 
# 942 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TRISB equ 086h ;# 
# 1003 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PIE1 equ 08Ch ;# 
# 1059 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PCON equ 08Eh ;# 
# 1107 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PR2 equ 092h ;# 
# 1113 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TXSTA equ 098h ;# 
# 1169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
SPBRG equ 099h ;# 
# 1175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
EEDATA equ 09Ah ;# 
# 1181 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
EEADR equ 09Bh ;# 
# 1187 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
EECON1 equ 09Ch ;# 
# 1224 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
EECON2 equ 09Dh ;# 
# 1230 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
VRCON equ 09Fh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PORTA equ 05h ;# 
# 221 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PORTB equ 06h ;# 
# 282 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PCLATH equ 0Ah ;# 
# 301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
INTCON equ 0Bh ;# 
# 378 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PIR1 equ 0Ch ;# 
# 434 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TMR1 equ 0Eh ;# 
# 440 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TMR1L equ 0Eh ;# 
# 446 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TMR1H equ 0Fh ;# 
# 452 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
T1CON equ 010h ;# 
# 510 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TMR2 equ 011h ;# 
# 516 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
T2CON equ 012h ;# 
# 586 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
CCPR1 equ 015h ;# 
# 592 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
CCPR1L equ 015h ;# 
# 598 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
CCPR1H equ 016h ;# 
# 604 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
CCP1CON equ 017h ;# 
# 661 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
RCSTA equ 018h ;# 
# 731 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TXREG equ 019h ;# 
# 737 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
RCREG equ 01Ah ;# 
# 743 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
CMCON equ 01Fh ;# 
# 812 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
OPTION_REG equ 081h ;# 
# 881 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TRISA equ 085h ;# 
# 942 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TRISB equ 086h ;# 
# 1003 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PIE1 equ 08Ch ;# 
# 1059 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PCON equ 08Eh ;# 
# 1107 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PR2 equ 092h ;# 
# 1113 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TXSTA equ 098h ;# 
# 1169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
SPBRG equ 099h ;# 
# 1175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
EEDATA equ 09Ah ;# 
# 1181 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
EEADR equ 09Bh ;# 
# 1187 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
EECON1 equ 09Ch ;# 
# 1224 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
EECON2 equ 09Dh ;# 
# 1230 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
VRCON equ 09Fh ;# 
	FNCALL	_main,_USARTInit
	FNCALL	_main,_USARTWriteChar
	FNROOT	_main
	FNCALL	_ISR,_Beeper
	FNCALL	_ISR,_USARTHandleRxInt
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_UQEnd
	global	_UQFront
	global	_ms_counter
	global	_sec_counter
	global	_URBuff
	global	USARTWriteInt@F659
	global	_CMCON
_CMCON	set	0x1F
	global	_PIR1bits
_PIR1bits	set	0xC
	global	_PORTB
_PORTB	set	0x6
	global	_RCREG
_RCREG	set	0x1A
	global	_RCSTAbits
_RCSTAbits	set	0x18
	global	_TMR0
_TMR0	set	0x1
	global	_TXREG
_TXREG	set	0x19
	global	_C2OUT
_C2OUT	set	0xFF
	global	_GIE
_GIE	set	0x5F
	global	_PEIE
_PEIE	set	0x5E
	global	_RB0
_RB0	set	0x30
	global	_RB3
_RB3	set	0x33
	global	_RB4
_RB4	set	0x34
	global	_RB5
_RB5	set	0x35
	global	_RB6
_RB6	set	0x36
	global	_RB7
_RB7	set	0x37
	global	_RCIF
_RCIF	set	0x65
	global	_T0IE
_T0IE	set	0x5D
	global	_T0IF
_T0IF	set	0x5A
	global	_OPTION_REG
_OPTION_REG	set	0x81
	global	_SPBRG
_SPBRG	set	0x99
	global	_TRISA
_TRISA	set	0x85
	global	_TRISB
_TRISB	set	0x86
	global	_TXSTAbits
_TXSTAbits	set	0x98
	global	_VRCON
_VRCON	set	0x9F
	global	_RCIE
_RCIE	set	0x465
psect	text0,local,class=CODE,delta=2,merge=1
; #config settings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
	line	1538
global __ptext0
__ptext0:	;psect for function _Beeper
	file	"Transmitter_628.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_UQEnd:
       ds      1

_UQFront:
       ds      1

_ms_counter:
       ds      1

_sec_counter:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_URBuff:
       ds      64

USARTWriteInt@F659:
       ds      5

	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop0		;do the next byte

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssCOMMON)
	movwf	fsr
	movlw	low((__pbssCOMMON)+04h)
	fcall	clear_ram0
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+045h)
	fcall	clear_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_Beeper:	; 0 bytes @ 0x0
??_Beeper:	; 0 bytes @ 0x0
?_USARTWriteChar:	; 0 bytes @ 0x0
?_USARTHandleRxInt:	; 0 bytes @ 0x0
??_USARTHandleRxInt:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	ds	4
	global	USARTHandleRxInt@data
USARTHandleRxInt@data:	; 1 bytes @ 0x4
	ds	1
??_ISR:	; 0 bytes @ 0x5
	ds	4
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?_USARTInit:	; 0 bytes @ 0x0
??_USARTWriteChar:	; 0 bytes @ 0x0
	global	USARTWriteChar@ch
USARTWriteChar@ch:	; 1 bytes @ 0x0
	global	USARTInit@baud_rate
USARTInit@baud_rate:	; 2 bytes @ 0x0
	ds	2
??_USARTInit:	; 0 bytes @ 0x2
	ds	1
??_main:	; 0 bytes @ 0x3
	ds	3
	global	main@input
main@input:	; 1 bytes @ 0x6
	ds	1
	global	main@count
main@count:	; 1 bytes @ 0x7
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         73
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      9      13
;!    BANK0            80      8      77
;!    BANK1            80      0       0
;!    BANK2            48      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


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
;!    _main->_USARTInit
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
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK2
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
;! (0) _main                                                 5     5      0     168
;!                                              3 BANK0      5     5      0
;!                          _USARTInit
;!                     _USARTWriteChar
;! ---------------------------------------------------------------------------------
;! (1) _USARTWriteChar                                       1     1      0      22
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _USARTInit                                            3     1      2      75
;!                                              0 BANK0      3     1      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (2) _ISR                                                  4     4      0      15
;!                                              5 COMMON     4     4      0
;!                             _Beeper
;!                   _USARTHandleRxInt
;! ---------------------------------------------------------------------------------
;! (3) _USARTHandleRxInt                                     5     5      0      15
;!                                              0 COMMON     5     5      0
;! ---------------------------------------------------------------------------------
;! (3) _Beeper                                               1     1      0       0
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _USARTInit
;!   _USARTWriteChar
;!
;! _ISR (ROOT)
;!   _Beeper
;!   _USARTHandleRxInt
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA              80      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      9       D       1       92.9%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!BANK0               50      8      4D       3       96.3%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!ABS                  0      0      5A       4        0.0%
;!BITBANK0            50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK2            30      0       0       8        0.0%
;!BANK2               30      0       0       9        0.0%
;!DATA                 0      0      5A      10        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 12 in file "E:\Study Material\XC8 PROJECTS\Bluetooth Foot Switch\Transmitter\SerTest.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           1    7[BANK0 ] unsigned char 
;;  input           1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       3       0       0
;;      Totals:         0       5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_USARTInit
;;		_USARTWriteChar
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"E:\Study Material\XC8 PROJECTS\Bluetooth Foot Switch\Transmitter\SerTest.c"
	line	12
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"E:\Study Material\XC8 PROJECTS\Bluetooth Foot Switch\Transmitter\SerTest.c"
	line	12
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	16
	
l1122:	
;SerTest.c: 16: OPTION_REG = 0x87;
	movlw	(087h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	17
	
l1124:	
;SerTest.c: 17: T0IE = 0;
	bcf	(93/8),(93)&7	;volatile
	line	19
;SerTest.c: 19: TRISB = 0xF0;
	movlw	(0F0h)
	movwf	(134)^080h	;volatile
	line	20
	
l1126:	
;SerTest.c: 20: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	22
	
l1128:	
;SerTest.c: 21: char count;
;SerTest.c: 22: unsigned char input = 0;
	clrf	(main@input)
	line	24
	
l1130:	
;SerTest.c: 24: for(count = 0; count < 5; count++)
	clrf	(main@count)
	
l1132:	
	movlw	(05h)
	subwf	(main@count),w
	skipc
	goto	u551
	goto	u550
u551:
	goto	l180
u550:
	goto	l1144
	
l1134:	
	goto	l1144
	line	25
	
l180:	
	line	26
;SerTest.c: 25: {
;SerTest.c: 26: RB0 = 1;
	bsf	(48/8),(48)&7	;volatile
	line	27
	
l1136:	
;SerTest.c: 27: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u867:
	decfsz	((??_main+0)+0),f
	goto	u867
	decfsz	((??_main+0)+0+1),f
	goto	u867
	decfsz	((??_main+0)+0+2),f
	goto	u867
	nop2
opt asmopt_on

	line	28
	
l1138:	
;SerTest.c: 28: RB0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	line	29
;SerTest.c: 29: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u877:
	decfsz	((??_main+0)+0),f
	goto	u877
	decfsz	((??_main+0)+0+1),f
	goto	u877
	decfsz	((??_main+0)+0+2),f
	goto	u877
	nop2
opt asmopt_on

	line	24
	
l1140:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@count),f
	
l1142:	
	movlw	(05h)
	subwf	(main@count),w
	skipc
	goto	u561
	goto	u560
u561:
	goto	l180
u560:
	goto	l1144
	
l181:	
	line	32
	
l1144:	
;SerTest.c: 30: }
;SerTest.c: 32: TRISA = 0x07;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	33
;SerTest.c: 33: CMCON = 0x05;
	movlw	(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	34
;SerTest.c: 34: VRCON = 0xE9;
	movlw	(0E9h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	37
	
l1146:	
;SerTest.c: 37: USARTInit(9600);
	movlw	low(02580h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(USARTInit@baud_rate)
	movlw	high(02580h)
	movwf	((USARTInit@baud_rate))+1
	fcall	_USARTInit
	line	38
	
l1148:	
;SerTest.c: 38: (GIE = 1);
	bsf	(95/8),(95)&7	;volatile
	goto	l1150
	line	39
;SerTest.c: 39: while(1)
	
l182:	
	line	42
	
l1150:	
;SerTest.c: 40: {
;SerTest.c: 42: if(C2OUT == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(255/8),(255)&7	;volatile
	goto	u571
	goto	u570
u571:
	goto	l1154
u570:
	line	43
	
l1152:	
;SerTest.c: 43: T0IE = 1;
	bsf	(93/8),(93)&7	;volatile
	goto	l1154
	
l183:	
	line	45
	
l1154:	
;SerTest.c: 45: input = PORTB & 0xF0;
	movf	(6),w	;volatile
	andlw	0F0h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@input)
	line	46
;SerTest.c: 46: while(input == 0x00)
	goto	l1160
	
l185:	
	line	49
	
l1156:	
;SerTest.c: 47: {
;SerTest.c: 49: _delay(50000);
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u887:
	decfsz	((??_main+0)+0),f
	goto	u887
	decfsz	((??_main+0)+0+1),f
	goto	u887
	nop
opt asmopt_on

	line	50
	
l1158:	
;SerTest.c: 50: input = PORTB & 0xF0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	andlw	0F0h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@input)
	goto	l1160
	line	51
	
l184:	
	line	46
	
l1160:	
	movf	(main@input),w
	skipz
	goto	u580
	goto	l1156
u580:
	
l186:	
	line	53
;SerTest.c: 51: }
;SerTest.c: 53: if(RB7 == 1)
	btfss	(55/8),(55)&7	;volatile
	goto	u591
	goto	u590
u591:
	goto	l188
u590:
	line	54
	
l1162:	
;SerTest.c: 54: USARTWriteChar('W');
	movlw	(057h)
	fcall	_USARTWriteChar
	goto	l188
	
l187:	
	line	55
;SerTest.c: 55: while(RB7 == 1)
	goto	l188
	
l189:	
	line	57
;SerTest.c: 56: {
	
l188:	
	line	55
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(55/8),(55)&7	;volatile
	goto	u601
	goto	u600
u601:
	goto	l188
u600:
	
l190:	
	line	59
;SerTest.c: 57: }
;SerTest.c: 59: if(RB6 == 1)
	btfss	(54/8),(54)&7	;volatile
	goto	u611
	goto	u610
u611:
	goto	l192
u610:
	line	60
	
l1164:	
;SerTest.c: 60: USARTWriteChar('X');
	movlw	(058h)
	fcall	_USARTWriteChar
	goto	l192
	
l191:	
	line	61
;SerTest.c: 61: while(RB6 == 1)
	goto	l192
	
l193:	
	line	63
;SerTest.c: 62: {
	
l192:	
	line	61
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(54/8),(54)&7	;volatile
	goto	u621
	goto	u620
u621:
	goto	l192
u620:
	
l194:	
	line	65
;SerTest.c: 63: }
;SerTest.c: 65: if(RB5 == 1)
	btfss	(53/8),(53)&7	;volatile
	goto	u631
	goto	u630
u631:
	goto	l196
u630:
	line	66
	
l1166:	
;SerTest.c: 66: USARTWriteChar('Y');
	movlw	(059h)
	fcall	_USARTWriteChar
	goto	l196
	
l195:	
	line	67
;SerTest.c: 67: while(RB5 == 1)
	goto	l196
	
l197:	
	line	69
;SerTest.c: 68: {
	
l196:	
	line	67
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(53/8),(53)&7	;volatile
	goto	u641
	goto	u640
u641:
	goto	l196
u640:
	
l198:	
	line	71
;SerTest.c: 69: }
;SerTest.c: 71: if(RB4 == 1)
	btfss	(52/8),(52)&7	;volatile
	goto	u651
	goto	u650
u651:
	goto	l200
u650:
	line	72
	
l1168:	
;SerTest.c: 72: USARTWriteChar('Z');
	movlw	(05Ah)
	fcall	_USARTWriteChar
	goto	l200
	
l199:	
	line	73
;SerTest.c: 73: while(RB4 == 1)
	goto	l200
	
l201:	
	line	75
;SerTest.c: 74: {
	
l200:	
	line	73
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(52/8),(52)&7	;volatile
	goto	u661
	goto	u660
u661:
	goto	l200
u660:
	goto	l1170
	
l202:	
	line	77
	
l1170:	
;SerTest.c: 75: }
;SerTest.c: 77: USARTWriteChar('R');
	movlw	(052h)
	fcall	_USARTWriteChar
	goto	l1150
	line	78
	
l203:	
	line	39
	goto	l1150
	
l204:	
	line	79
	
l205:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_USARTWriteChar

;; *************** function _USARTWriteChar *****************
;; Defined at:
;;		line 77 in file "E:\Study Material\XC8 PROJECTS\Bluetooth Foot Switch\Transmitter\usart_pic16.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_USARTWriteString
;;		_USARTWriteLine
;;		_USARTWriteInt
;;		_USARTGotoNewLine
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\Bluetooth Foot Switch\Transmitter\usart_pic16.c"
	line	77
global __ptext1
__ptext1:	;psect for function _USARTWriteChar
psect	text1
	file	"E:\Study Material\XC8 PROJECTS\Bluetooth Foot Switch\Transmitter\usart_pic16.c"
	line	77
	global	__size_of_USARTWriteChar
	__size_of_USARTWriteChar	equ	__end_of_USARTWriteChar-_USARTWriteChar
	
_USARTWriteChar:	
;incstack = 0
	opt	stack 5
; Regs used in _USARTWriteChar: [wreg]
;USARTWriteChar@ch stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(USARTWriteChar@ch)
	line	79
	
l1054:	
;usart_pic16.c: 79: while(!PIR1bits.TXIF);
	goto	l36
	
l37:	
	
l36:	
	btfss	(12),4	;volatile
	goto	u451
	goto	u450
u451:
	goto	l36
u450:
	goto	l1056
	
l38:	
	line	81
	
l1056:	
;usart_pic16.c: 81: TXREG=ch;
	movf	(USARTWriteChar@ch),w
	movwf	(25)	;volatile
	line	82
	
l39:	
	return
	opt stack 0
GLOBAL	__end_of_USARTWriteChar
	__end_of_USARTWriteChar:
	signat	_USARTWriteChar,4216
	global	_USARTInit

;; *************** function _USARTInit *****************
;; Defined at:
;;		line 31 in file "E:\Study Material\XC8 PROJECTS\Bluetooth Foot Switch\Transmitter\usart_pic16.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       2       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	31
global __ptext2
__ptext2:	;psect for function _USARTInit
psect	text2
	file	"E:\Study Material\XC8 PROJECTS\Bluetooth Foot Switch\Transmitter\usart_pic16.c"
	line	31
	global	__size_of_USARTInit
	__size_of_USARTInit	equ	__end_of_USARTInit-_USARTInit
	
_USARTInit:	
;incstack = 0
	opt	stack 5
; Regs used in _USARTInit: [wreg-fsr0h+status,2+status,0]
	line	34
	
l1024:	
;usart_pic16.c: 34: UQFront=UQEnd=-1;
	movlw	(-1)
	movwf	(_UQEnd)	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_USARTInit+0)+0
	movf	(??_USARTInit+0)+0,w
	movwf	(_UQFront)	;volatile
	line	38
;usart_pic16.c: 38: switch(baud_rate)
	goto	l1036
	line	40
;usart_pic16.c: 39: {
;usart_pic16.c: 40: case 9600:
	
l28:	
	line	41
	
l1026:	
;usart_pic16.c: 41: SPBRG=25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	42
;usart_pic16.c: 42: break;
	goto	l29
	line	43
;usart_pic16.c: 43: case 19200:
	
l30:	
	line	44
	
l1028:	
;usart_pic16.c: 44: SPBRG=129;
	movlw	(081h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	45
;usart_pic16.c: 45: break;
	goto	l29
	line	46
;usart_pic16.c: 46: case 38400:
	
l31:	
	line	47
	
l1030:	
;usart_pic16.c: 47: SPBRG=64;
	movlw	(040h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	48
;usart_pic16.c: 48: break;
	goto	l29
	line	49
;usart_pic16.c: 49: case 57600:
	
l32:	
	line	50
	
l1032:	
;usart_pic16.c: 50: SPBRG=42;
	movlw	(02Ah)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	51
;usart_pic16.c: 51: break;
	goto	l29
	line	52
	
l1034:	
;usart_pic16.c: 52: }
	goto	l29
	line	38
	
l27:	
	
l1036:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 4 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 37 to 225
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte          198     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	bcf	status, 5	;RP0=0, select bank0
	movf (USARTInit@baud_rate+1),w
	opt asmopt_off
	xorlw	37^0	; case 37
	skipnz
	goto	l1334
	xorlw	75^37	; case 75
	skipnz
	goto	l1336
	xorlw	150^75	; case 150
	skipnz
	goto	l1338
	xorlw	225^150	; case 225
	skipnz
	goto	l1340
	goto	l29
	opt asmopt_on
	
l1334:	
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
	goto	l1026
	goto	l29
	opt asmopt_on
	
l1336:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte            7     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (USARTInit@baud_rate),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l1028
	goto	l29
	opt asmopt_on
	
l1338:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte            7     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (USARTInit@baud_rate),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l1030
	goto	l29
	opt asmopt_on
	
l1340:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte            7     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (USARTInit@baud_rate),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l1032
	goto	l29
	opt asmopt_on

	line	52
	
l29:	
	line	59
;usart_pic16.c: 59: TXSTAbits.TX9=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(152)^080h,6	;volatile
	line	60
;usart_pic16.c: 60: TXSTAbits.TXEN=1;
	bsf	(152)^080h,5	;volatile
	line	61
;usart_pic16.c: 61: TXSTAbits.SYNC=0;
	bcf	(152)^080h,4	;volatile
	line	62
;usart_pic16.c: 62: TXSTAbits.BRGH=1;
	bsf	(152)^080h,2	;volatile
	line	65
;usart_pic16.c: 65: RCSTAbits.SPEN=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(24),7	;volatile
	line	66
;usart_pic16.c: 66: RCSTAbits.RX9=0;
	bcf	(24),6	;volatile
	line	67
;usart_pic16.c: 67: RCSTAbits.CREN=1;
	bsf	(24),4	;volatile
	line	68
;usart_pic16.c: 68: RCSTAbits.ADDEN=0;
	bcf	(24),3	;volatile
	line	71
;usart_pic16.c: 71: RCIE=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1125/8)^080h,(1125)&7	;volatile
	line	72
;usart_pic16.c: 72: PEIE=1;
	bsf	(94/8),(94)&7	;volatile
	line	74
;usart_pic16.c: 74: (GIE = 1);
	bsf	(95/8),(95)&7	;volatile
	line	75
	
l33:	
	return
	opt stack 0
GLOBAL	__end_of_USARTInit
	__end_of_USARTInit:
	signat	_USARTInit,4216
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 7 in file "E:\Study Material\XC8 PROJECTS\Bluetooth Foot Switch\Transmitter\isr.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          4       0       0       0
;;      Totals:         4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Beeper
;;		_USARTHandleRxInt
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\Bluetooth Foot Switch\Transmitter\isr.c"
	line	7
global __ptext3
__ptext3:	;psect for function _ISR
psect	text3
	file	"E:\Study Material\XC8 PROJECTS\Bluetooth Foot Switch\Transmitter\isr.c"
	line	7
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 5
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
psect	text3
	line	10
	
i1l876:	
;isr.c: 10: if (RCIE && RCIF) {
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1125/8)^080h,(1125)&7	;volatile
	goto	u29_21
	goto	u29_20
u29_21:
	goto	i1l135
u29_20:
	
i1l878:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7	;volatile
	goto	u30_21
	goto	u30_20
u30_21:
	goto	i1l135
u30_20:
	line	11
	
i1l880:	
;isr.c: 11: USARTHandleRxInt();
	fcall	_USARTHandleRxInt
	goto	i1l136
	line	12
	
i1l882:	
;isr.c: 12: return;
	goto	i1l136
	line	13
	
i1l135:	
	line	15
;isr.c: 13: }
;isr.c: 15: if (T0IE && T0IF) {
	btfss	(93/8),(93)&7	;volatile
	goto	u31_21
	goto	u31_20
u31_21:
	goto	i1l136
u31_20:
	
i1l884:	
	btfss	(90/8),(90)&7	;volatile
	goto	u32_21
	goto	u32_20
u32_21:
	goto	i1l136
u32_20:
	line	16
	
i1l886:	
;isr.c: 16: Beeper();
	fcall	_Beeper
	line	17
	
i1l888:	
;isr.c: 17: TMR0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(1)	;volatile
	line	18
	
i1l890:	
;isr.c: 18: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	goto	i1l136
	line	19
	
i1l892:	
;isr.c: 19: return;
	goto	i1l136
	line	20
	
i1l137:	
	line	21
	
i1l136:	
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
;;		line 101 in file "E:\Study Material\XC8 PROJECTS\Bluetooth Foot Switch\Transmitter\usart_pic16.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          4       0       0       0
;;      Totals:         5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\Bluetooth Foot Switch\Transmitter\usart_pic16.c"
	line	101
global __ptext4
__ptext4:	;psect for function _USARTHandleRxInt
psect	text4
	file	"E:\Study Material\XC8 PROJECTS\Bluetooth Foot Switch\Transmitter\usart_pic16.c"
	line	101
	global	__size_of_USARTHandleRxInt
	__size_of_USARTHandleRxInt	equ	__end_of_USARTHandleRxInt-_USARTHandleRxInt
	
_USARTHandleRxInt:	
;incstack = 0
	opt	stack 5
; Regs used in _USARTHandleRxInt: [wreg-fsr0h+status,2+status,0]
	line	104
	
i1l716:	
;usart_pic16.c: 104: char data=RCREG;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(26),w	;volatile
	movwf	(??_USARTHandleRxInt+0)+0
	movf	(??_USARTHandleRxInt+0)+0,w
	movwf	(USARTHandleRxInt@data)
	line	107
;usart_pic16.c: 107: if(((UQEnd==64-1) && UQFront==0) || ((UQEnd+1)==UQFront))
	movf	(_UQEnd),w	;volatile
	xorlw	03Fh
	skipz
	goto	u3_21
	goto	u3_20
u3_21:
	goto	i1l720
u3_20:
	
i1l718:	
	movf	(_UQFront),w	;volatile
	skipz
	goto	u4_20
	goto	i1l722
u4_20:
	goto	i1l720
	
i1l55:	
	
i1l720:	
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
	btfss	(_UQEnd),7	;volatile
	goto	u5_24
	decf	((??_USARTHandleRxInt+2)+0)+1,f
	u5_24:
	
	movf	1+(??_USARTHandleRxInt+0)+0,w
	xorwf	1+(??_USARTHandleRxInt+2)+0,w
	skipz
	goto	u6_25
	movf	0+(??_USARTHandleRxInt+0)+0,w
	xorwf	0+(??_USARTHandleRxInt+2)+0,w
u6_25:

	skipz
	goto	u6_21
	goto	u6_20
u6_21:
	goto	i1l728
u6_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	goto	i1l722
	
i1l53:	
	line	110
	
i1l722:	
;usart_pic16.c: 108: {
;usart_pic16.c: 110: UQFront++;
	movlw	(01h)
	movwf	(??_USARTHandleRxInt+0)+0
	movf	(??_USARTHandleRxInt+0)+0,w
	addwf	(_UQFront),f	;volatile
	line	111
	
i1l724:	
;usart_pic16.c: 111: if(UQFront==64) UQFront=0;
	movf	(_UQFront),w	;volatile
	xorlw	040h
	skipz
	goto	u7_21
	goto	u7_20
u7_21:
	goto	i1l728
u7_20:
	
i1l726:	
	clrf	(_UQFront)	;volatile
	goto	i1l728
	
i1l56:	
	goto	i1l728
	line	112
	
i1l51:	
	line	114
	
i1l728:	
;usart_pic16.c: 112: }
;usart_pic16.c: 114: if(UQEnd==64-1)
	movf	(_UQEnd),w	;volatile
	xorlw	03Fh
	skipz
	goto	u8_21
	goto	u8_20
u8_21:
	goto	i1l732
u8_20:
	line	115
	
i1l730:	
;usart_pic16.c: 115: UQEnd=0;
	clrf	(_UQEnd)	;volatile
	goto	i1l734
	line	116
	
i1l57:	
	line	117
	
i1l732:	
;usart_pic16.c: 116: else
;usart_pic16.c: 117: UQEnd++;
	movlw	(01h)
	movwf	(??_USARTHandleRxInt+0)+0
	movf	(??_USARTHandleRxInt+0)+0,w
	addwf	(_UQEnd),f	;volatile
	goto	i1l734
	
i1l58:	
	line	119
	
i1l734:	
;usart_pic16.c: 119: URBuff[UQEnd]=data;
	movf	(USARTHandleRxInt@data),w
	movwf	(??_USARTHandleRxInt+0)+0
	movf	(_UQEnd),w
	addlw	_URBuff&0ffh
	movwf	fsr0
	movf	(??_USARTHandleRxInt+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	121
	
i1l736:	
;usart_pic16.c: 121: if(UQFront==-1) UQFront=0;
	movf	(_UQFront),w	;volatile
	xorlw	-1
	skipz
	goto	u9_21
	goto	u9_20
u9_21:
	goto	i1l60
u9_20:
	
i1l738:	
	clrf	(_UQFront)	;volatile
	goto	i1l60
	
i1l59:	
	line	123
	
i1l60:	
	return
	opt stack 0
GLOBAL	__end_of_USARTHandleRxInt
	__end_of_USARTHandleRxInt:
	signat	_USARTHandleRxInt,88
	global	_Beeper

;; *************** function _Beeper *****************
;; Defined at:
;;		line 8 in file "E:\Study Material\XC8 PROJECTS\Bluetooth Foot Switch\Transmitter\beep.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\Bluetooth Foot Switch\Transmitter\beep.c"
	line	8
global __ptext5
__ptext5:	;psect for function _Beeper
psect	text5
	file	"E:\Study Material\XC8 PROJECTS\Bluetooth Foot Switch\Transmitter\beep.c"
	line	8
	global	__size_of_Beeper
	__size_of_Beeper	equ	__end_of_Beeper-_Beeper
	
_Beeper:	
;incstack = 0
	opt	stack 5
; Regs used in _Beeper: [wreg+status,2+status,0]
	line	12
	
i1l788:	
;beep.c: 12: ms_counter++;
	movlw	(01h)
	movwf	(??_Beeper+0)+0
	movf	(??_Beeper+0)+0,w
	addwf	(_ms_counter),f
	line	13
	
i1l790:	
;beep.c: 13: if(ms_counter == 15)
	movf	(_ms_counter),w
	xorlw	0Fh
	skipz
	goto	u16_21
	goto	u16_20
u16_21:
	goto	i1l217
u16_20:
	line	15
	
i1l792:	
;beep.c: 14: {
;beep.c: 15: ms_counter = 0;
	clrf	(_ms_counter)
	line	16
	
i1l794:	
;beep.c: 16: sec_counter++;
	movlw	(01h)
	movwf	(??_Beeper+0)+0
	movf	(??_Beeper+0)+0,w
	addwf	(_sec_counter),f
	line	17
	
i1l796:	
;beep.c: 17: if(sec_counter == 16)
	movf	(_sec_counter),w
	xorlw	010h
	skipz
	goto	u17_21
	goto	u17_20
u17_21:
	goto	i1l800
u17_20:
	line	18
	
i1l798:	
;beep.c: 18: RB3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(51/8),(51)&7	;volatile
	goto	i1l800
	
i1l215:	
	line	19
	
i1l800:	
;beep.c: 19: if(sec_counter == 17)
	movf	(_sec_counter),w
	xorlw	011h
	skipz
	goto	u18_21
	goto	u18_20
u18_21:
	goto	i1l217
u18_20:
	line	21
	
i1l802:	
;beep.c: 20: {
;beep.c: 21: RB3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7	;volatile
	line	22
	
i1l804:	
;beep.c: 22: sec_counter = 0;
	clrf	(_sec_counter)
	goto	i1l217
	line	23
	
i1l216:	
	goto	i1l217
	line	24
	
i1l214:	
	line	25
	
i1l217:	
	return
	opt stack 0
GLOBAL	__end_of_Beeper
	__end_of_Beeper:
	signat	_Beeper,88
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

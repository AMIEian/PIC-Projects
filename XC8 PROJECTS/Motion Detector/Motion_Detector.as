opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 59893"

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
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
PCLATH equ 0Ah ;# 
# 350 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
INTCON equ 0Bh ;# 
# 427 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
PIR1 equ 0Ch ;# 
# 477 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
PIR2 equ 0Dh ;# 
# 497 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
TMR1 equ 0Eh ;# 
# 503 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
TMR1L equ 0Eh ;# 
# 509 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
TMR1H equ 0Fh ;# 
# 515 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
T1CON equ 010h ;# 
# 591 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
TMR2 equ 011h ;# 
# 597 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
T2CON equ 012h ;# 
# 667 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
CCPR1 equ 015h ;# 
# 673 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
CCPR1L equ 015h ;# 
# 679 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
CCPR1H equ 016h ;# 
# 685 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
CCP1CON equ 017h ;# 
# 742 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
RCSTA equ 018h ;# 
# 836 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
TXREG equ 019h ;# 
# 842 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
RCREG equ 01Ah ;# 
# 848 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
ADRESH equ 01Eh ;# 
# 854 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
ADCON0 equ 01Fh ;# 
# 949 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
OPTION_REG equ 081h ;# 
# 1018 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
TRISA equ 085h ;# 
# 1067 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
TRISB equ 086h ;# 
# 1128 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
TRISC equ 087h ;# 
# 1189 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
PIE1 equ 08Ch ;# 
# 1239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
PIE2 equ 08Dh ;# 
# 1259 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
PCON equ 08Eh ;# 
# 1292 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
PR2 equ 092h ;# 
# 1298 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
TXSTA equ 098h ;# 
# 1378 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
SPBRG equ 099h ;# 
# 1384 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
ADRESL equ 09Eh ;# 
# 1390 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
ADCON1 equ 09Fh ;# 
# 1442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
EEDATA equ 010Ch ;# 
# 1448 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
EEADR equ 010Dh ;# 
# 1454 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
EEDATH equ 010Eh ;# 
# 1460 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
EEADRH equ 010Fh ;# 
# 1466 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
EECON1 equ 018Ch ;# 
# 1510 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
PCLATH equ 0Ah ;# 
# 350 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
INTCON equ 0Bh ;# 
# 427 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
PIR1 equ 0Ch ;# 
# 477 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
PIR2 equ 0Dh ;# 
# 497 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
TMR1 equ 0Eh ;# 
# 503 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
TMR1L equ 0Eh ;# 
# 509 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
TMR1H equ 0Fh ;# 
# 515 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
T1CON equ 010h ;# 
# 591 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
TMR2 equ 011h ;# 
# 597 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
T2CON equ 012h ;# 
# 667 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
CCPR1 equ 015h ;# 
# 673 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
CCPR1L equ 015h ;# 
# 679 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
CCPR1H equ 016h ;# 
# 685 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
CCP1CON equ 017h ;# 
# 742 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
RCSTA equ 018h ;# 
# 836 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
TXREG equ 019h ;# 
# 842 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
RCREG equ 01Ah ;# 
# 848 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
ADRESH equ 01Eh ;# 
# 854 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
ADCON0 equ 01Fh ;# 
# 949 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
OPTION_REG equ 081h ;# 
# 1018 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
TRISA equ 085h ;# 
# 1067 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
TRISB equ 086h ;# 
# 1128 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
TRISC equ 087h ;# 
# 1189 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
PIE1 equ 08Ch ;# 
# 1239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
PIE2 equ 08Dh ;# 
# 1259 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
PCON equ 08Eh ;# 
# 1292 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
PR2 equ 092h ;# 
# 1298 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
TXSTA equ 098h ;# 
# 1378 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
SPBRG equ 099h ;# 
# 1384 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
ADRESL equ 09Eh ;# 
# 1390 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
ADCON1 equ 09Fh ;# 
# 1442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
EEDATA equ 010Ch ;# 
# 1448 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
EEADR equ 010Dh ;# 
# 1454 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
EEDATH equ 010Eh ;# 
# 1460 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
EEADRH equ 010Fh ;# 
# 1466 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
EECON1 equ 018Ch ;# 
# 1510 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
PCLATH equ 0Ah ;# 
# 350 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
INTCON equ 0Bh ;# 
# 427 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
PIR1 equ 0Ch ;# 
# 477 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
PIR2 equ 0Dh ;# 
# 497 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
TMR1 equ 0Eh ;# 
# 503 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
TMR1L equ 0Eh ;# 
# 509 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
TMR1H equ 0Fh ;# 
# 515 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
T1CON equ 010h ;# 
# 591 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
TMR2 equ 011h ;# 
# 597 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
T2CON equ 012h ;# 
# 667 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
CCPR1 equ 015h ;# 
# 673 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
CCPR1L equ 015h ;# 
# 679 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
CCPR1H equ 016h ;# 
# 685 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
CCP1CON equ 017h ;# 
# 742 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
RCSTA equ 018h ;# 
# 836 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
TXREG equ 019h ;# 
# 842 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
RCREG equ 01Ah ;# 
# 848 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
ADRESH equ 01Eh ;# 
# 854 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
ADCON0 equ 01Fh ;# 
# 949 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
OPTION_REG equ 081h ;# 
# 1018 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
TRISA equ 085h ;# 
# 1067 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
TRISB equ 086h ;# 
# 1128 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
TRISC equ 087h ;# 
# 1189 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
PIE1 equ 08Ch ;# 
# 1239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
PIE2 equ 08Dh ;# 
# 1259 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
PCON equ 08Eh ;# 
# 1292 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
PR2 equ 092h ;# 
# 1298 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
TXSTA equ 098h ;# 
# 1378 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
SPBRG equ 099h ;# 
# 1384 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
ADRESL equ 09Eh ;# 
# 1390 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
ADCON1 equ 09Fh ;# 
# 1442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
EEDATA equ 010Ch ;# 
# 1448 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
EEADR equ 010Dh ;# 
# 1454 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
EEDATH equ 010Eh ;# 
# 1460 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
EEADRH equ 010Fh ;# 
# 1466 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
EECON1 equ 018Ch ;# 
# 1510 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
EECON2 equ 018Dh ;# 
	FNCALL	_main,_ADCInit
	FNCALL	_main,_Accident_Detect
	FNCALL	_main,_Vib_Detect
	FNCALL	_Vib_Detect,_GetXAccl
	FNCALL	_Vib_Detect,_GetYAccl
	FNCALL	_Vib_Detect,_GetZAccl
	FNCALL	_Vib_Detect,___bmul
	FNCALL	_Vib_Detect,___ftge
	FNCALL	_Vib_Detect,___fttol
	FNCALL	_Vib_Detect,___lbtoft
	FNCALL	_Vib_Detect,_delay
	FNCALL	___lbtoft,___ftpack
	FNCALL	_Accident_Detect,_GetXAccl
	FNCALL	_Accident_Detect,_GetYAccl
	FNCALL	_Accident_Detect,_GetZAccl
	FNCALL	_Accident_Detect,___ftadd
	FNCALL	_Accident_Detect,___ftdiv
	FNCALL	_Accident_Detect,___ftge
	FNCALL	_Accident_Detect,___ftmul
	FNCALL	_Accident_Detect,___ftneg
	FNCALL	___ftadd,___ftpack
	FNCALL	_GetZAccl,_ReadADC
	FNCALL	_GetZAccl,___ftdiv
	FNCALL	_GetZAccl,___ftmul
	FNCALL	_GetZAccl,___lwdiv
	FNCALL	_GetZAccl,___lwtoft
	FNCALL	_GetYAccl,_ReadADC
	FNCALL	_GetYAccl,___ftdiv
	FNCALL	_GetYAccl,___ftmul
	FNCALL	_GetYAccl,___lwdiv
	FNCALL	_GetYAccl,___lwtoft
	FNCALL	_GetXAccl,_ReadADC
	FNCALL	_GetXAccl,___ftdiv
	FNCALL	_GetXAccl,___ftmul
	FNCALL	_GetXAccl,___lwdiv
	FNCALL	_GetXAccl,___lwtoft
	FNCALL	___lwtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNROOT	_main
	global	_AccidentG
	global	_Vib_Sensitivity
psect	idataBANK1,class=CODE,space=0,delta=2,noexec
global __pidataBANK1
__pidataBANK1:
	file	"E:\Study Material\XC8 PROJECTS\Motion Detector\motion_det.c"
	line	10

;initializer for _AccidentG
	retlw	0xb8
	retlw	0xfe
	retlw	0x3f

	line	9

;initializer for _Vib_Sensitivity
	retlw	0x0
	retlw	0xa0
	retlw	0x41

	global	_ADCON0bits
_ADCON0bits	set	0x1F
	global	_ADRESH
_ADRESH	set	0x1E
	global	_RB0
_RB0	set	0x30
	global	_RB1
_RB1	set	0x31
	global	_RB2
_RB2	set	0x32
	global	_RB4
_RB4	set	0x34
	global	_ADCON1bits
_ADCON1bits	set	0x9F
	global	_ADRESL
_ADRESL	set	0x9E
	global	_TRISB
_TRISB	set	0x86
; #config settings
	file	"Motion_Detector.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"E:\Study Material\XC8 PROJECTS\Motion Detector\motion_det.c"
	line	10
_AccidentG:
       ds      3

psect	dataBANK1
	file	"E:\Study Material\XC8 PROJECTS\Motion Detector\motion_det.c"
	line	9
_Vib_Sensitivity:
       ds      3

	file	"Motion_Detector.as"
	line	#
; Initialize objects allocated to BANK1
	global __pidataBANK1
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	fcall	__pidataBANK1+0		;fetch initializer
	movwf	__pdataBANK1+0&07fh		
	fcall	__pidataBANK1+1		;fetch initializer
	movwf	__pdataBANK1+1&07fh		
	fcall	__pidataBANK1+2		;fetch initializer
	movwf	__pdataBANK1+2&07fh		
	fcall	__pidataBANK1+3		;fetch initializer
	movwf	__pdataBANK1+3&07fh		
	fcall	__pidataBANK1+4		;fetch initializer
	movwf	__pdataBANK1+4&07fh		
	fcall	__pidataBANK1+5		;fetch initializer
	movwf	__pdataBANK1+5&07fh		
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_ADCInit:	; 0 bytes @ 0x0
??_ADCInit:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_Accident_Detect:	; 1 bytes @ 0x0
?_Vib_Detect:	; 1 bytes @ 0x0
?___bmul:	; 1 bytes @ 0x0
	global	?_delay
?_delay:	; 2 bytes @ 0x0
	global	?_ReadADC
?_ReadADC:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x0
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x0
	ds	1
??___bmul:	; 0 bytes @ 0x1
	ds	1
??_delay:	; 0 bytes @ 0x2
??_ReadADC:	; 0 bytes @ 0x2
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	1
??___ftneg:	; 0 bytes @ 0x3
	global	ReadADC@ch
ReadADC@ch:	; 1 bytes @ 0x3
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	ds	1
??___lwdiv:	; 0 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	ds	1
??___ftpack:	; 0 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	2
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	ds	1
	global	?___lbtoft
?___lbtoft:	; 3 bytes @ 0x8
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x8
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x8
	ds	3
??___lwtoft:	; 0 bytes @ 0xB
	global	___lbtoft@c
___lbtoft@c:	; 1 bytes @ 0xB
	ds	1
??_GetXAccl:	; 0 bytes @ 0xC
??_GetYAccl:	; 0 bytes @ 0xC
??_GetZAccl:	; 0 bytes @ 0xC
	ds	1
??_Accident_Detect:	; 0 bytes @ 0xD
	global	main@count
main@count:	; 1 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??___lbtoft:	; 0 bytes @ 0x0
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x0
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x0
	ds	3
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x3
	ds	1
?___ftge:	; 1 bit 
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x4
	ds	2
??___ftdiv:	; 0 bytes @ 0x6
	ds	1
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x7
	ds	3
??___ftge:	; 0 bytes @ 0xA
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0xA
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0xB
	ds	3
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0xE
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0xF
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x10
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x10
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x13
	ds	3
??___ftmul:	; 0 bytes @ 0x16
	ds	4
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x1A
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x1B
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x1E
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x1F
	ds	1
	global	?_GetXAccl
?_GetXAccl:	; 3 bytes @ 0x20
	global	?_GetYAccl
?_GetYAccl:	; 3 bytes @ 0x20
	global	?_GetZAccl
?_GetZAccl:	; 3 bytes @ 0x20
	ds	3
	global	GetXAccl@t
GetXAccl@t:	; 3 bytes @ 0x23
	global	GetYAccl@t
GetYAccl@t:	; 3 bytes @ 0x23
	global	GetZAccl@t
GetZAccl@t:	; 3 bytes @ 0x23
	ds	3
	global	GetXAccl@adc_value
GetXAccl@adc_value:	; 2 bytes @ 0x26
	global	GetYAccl@adc_value
GetYAccl@adc_value:	; 2 bytes @ 0x26
	global	GetZAccl@adc_value
GetZAccl@adc_value:	; 2 bytes @ 0x26
	ds	2
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x28
	global	?___fttol
?___fttol:	; 4 bytes @ 0x28
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x28
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x28
	ds	3
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x2B
	ds	1
??___fttol:	; 0 bytes @ 0x2C
	ds	2
??___ftadd:	; 0 bytes @ 0x2E
	ds	2
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x30
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x31
	ds	1
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x32
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x33
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x34
	ds	1
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x35
	global	_Accident_Detect$563
_Accident_Detect$563:	; 3 bytes @ 0x35
	ds	1
??_Vib_Detect:	; 0 bytes @ 0x36
	ds	2
	global	Vib_Detect@X
Vib_Detect@X:	; 2 bytes @ 0x38
	global	_Accident_Detect$564
_Accident_Detect$564:	; 3 bytes @ 0x38
	ds	2
	global	Vib_Detect@Y
Vib_Detect@Y:	; 2 bytes @ 0x3A
	ds	1
	global	_Accident_Detect$565
_Accident_Detect$565:	; 3 bytes @ 0x3B
	ds	1
	global	Vib_Detect@Z
Vib_Detect@Z:	; 2 bytes @ 0x3C
	ds	2
	global	Vib_Detect@counter
Vib_Detect@counter:	; 1 bytes @ 0x3E
	global	Accident_Detect@zero_G
Accident_Detect@zero_G:	; 3 bytes @ 0x3E
	ds	1
	global	Vib_Detect@looper
Vib_Detect@looper:	; 1 bytes @ 0x3F
	ds	1
	global	Vib_Detect@readings
Vib_Detect@readings:	; 1 bytes @ 0x40
	ds	1
	global	Vib_Detect@X_Diff
Vib_Detect@X_Diff:	; 1 bytes @ 0x41
	global	Accident_Detect@scale
Accident_Detect@scale:	; 3 bytes @ 0x41
	ds	1
	global	Vib_Detect@Y_Diff
Vib_Detect@Y_Diff:	; 1 bytes @ 0x42
	ds	1
	global	Vib_Detect@Z_Diff
Vib_Detect@Z_Diff:	; 1 bytes @ 0x43
	ds	1
	global	Accident_Detect@x_G
Accident_Detect@x_G:	; 3 bytes @ 0x44
	ds	3
	global	Accident_Detect@y_G
Accident_Detect@y_G:	; 3 bytes @ 0x47
	ds	3
	global	Accident_Detect@z_G
Accident_Detect@z_G:	; 3 bytes @ 0x4A
	ds	3
??_main:	; 0 bytes @ 0x4D
	ds	3
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        6
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     80      80
;!    BANK1            32      0       6

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _Vib_Detect->_GetXAccl
;!    _Vib_Detect->_GetYAccl
;!    _Vib_Detect->_GetZAccl
;!    ___lbtoft->___ftpack
;!    ___fttol->_GetXAccl
;!    ___fttol->_GetYAccl
;!    ___fttol->_GetZAccl
;!    _Accident_Detect->_GetXAccl
;!    _Accident_Detect->_GetYAccl
;!    _Accident_Detect->_GetZAccl
;!    ___ftge->___lbtoft
;!    ___ftadd->_GetXAccl
;!    ___ftadd->_GetYAccl
;!    ___ftadd->_GetZAccl
;!    _GetZAccl->___lwtoft
;!    _GetYAccl->___lwtoft
;!    _GetXAccl->___lwtoft
;!    ___lwtoft->___ftpack
;!    ___ftmul->___lwtoft
;!    ___ftdiv->___lwtoft
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_Accident_Detect
;!    _Vib_Detect->___fttol
;!    ___fttol->_GetXAccl
;!    ___fttol->_GetYAccl
;!    ___fttol->_GetZAccl
;!    _Accident_Detect->___ftadd
;!    ___ftge->___lbtoft
;!    ___ftadd->_GetXAccl
;!    ___ftadd->_GetYAccl
;!    ___ftadd->_GetZAccl
;!    _GetZAccl->___ftmul
;!    _GetYAccl->___ftmul
;!    _GetXAccl->___ftmul
;!    ___ftmul->___ftdiv
;!
;!Critical Paths under _main in BANK1
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
;! (0) _main                                                 4     4      0   72091
;!                                             13 COMMON     1     1      0
;!                                             77 BANK0      3     3      0
;!                            _ADCInit
;!                    _Accident_Detect
;!                         _Vib_Detect
;! ---------------------------------------------------------------------------------
;! (1) _Vib_Detect                                          14    14      0   32550
;!                                             54 BANK0     14    14      0
;!                           _GetXAccl
;!                           _GetYAccl
;!                           _GetZAccl
;!                             ___bmul
;!                             ___ftge
;!                            ___fttol
;!                           ___lbtoft
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (2) _delay                                                2     0      2       0
;!                                              0 COMMON     2     0      2
;! ---------------------------------------------------------------------------------
;! (2) ___lbtoft                                             8     5      3    2109
;!                                              8 COMMON     4     1      3
;!                                              0 BANK0      4     4      0
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (2) ___fttol                                             14    10      4     636
;!                                             40 BANK0     14    10      4
;!                           _GetXAccl (ARG)
;!                           _GetYAccl (ARG)
;!                           _GetZAccl (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___bmul                                               4     3      1     284
;!                                              0 COMMON     4     3      1
;! ---------------------------------------------------------------------------------
;! (1) _Accident_Detect                                     24    24      0   39495
;!                                             53 BANK0     24    24      0
;!                           _GetXAccl
;!                           _GetYAccl
;!                           _GetZAccl
;!                            ___ftadd
;!                            ___ftdiv
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftneg
;! ---------------------------------------------------------------------------------
;! (2) ___ftneg                                              3     0      3     237
;!                                              0 COMMON     3     0      3
;! ---------------------------------------------------------------------------------
;! (2) ___ftge                                              12     6      6    1288
;!                                              4 BANK0     12     6      6
;!                           ___lbtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftadd                                             13     7      6    3413
;!                                             40 BANK0     13     7      6
;!                           _GetXAccl (ARG)
;!                           _GetYAccl (ARG)
;!                           _GetZAccl (ARG)
;!                            ___ftdiv (ARG)
;!                            ___ftneg (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (2) _GetZAccl                                             9     6      3    9278
;!                                             12 COMMON     1     1      0
;!                                             32 BANK0      8     5      3
;!                            _ReadADC
;!                            ___ftdiv
;!                            ___ftmul
;!                            ___lwdiv
;!                           ___lwtoft
;! ---------------------------------------------------------------------------------
;! (2) _GetYAccl                                             9     6      3    9278
;!                                             12 COMMON     1     1      0
;!                                             32 BANK0      8     5      3
;!                            _ReadADC
;!                            ___ftdiv
;!                            ___ftmul
;!                            ___lwdiv
;!                           ___lwtoft
;! ---------------------------------------------------------------------------------
;! (2) _GetXAccl                                             9     6      3    9278
;!                                             12 COMMON     1     1      0
;!                                             32 BANK0      8     5      3
;!                            _ReadADC
;!                            ___ftdiv
;!                            ___ftmul
;!                            ___lwdiv
;!                           ___lwtoft
;! ---------------------------------------------------------------------------------
;! (3) ___lwtoft                                             4     1      3    2301
;!                                              8 COMMON     4     1      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (3) ___lwdiv                                              8     4      4     546
;!                                              0 COMMON     8     4      4
;! ---------------------------------------------------------------------------------
;! (3) ___ftmul                                             16    10      6    3181
;!                                             16 BANK0     16    10      6
;!                            ___ftdiv (ARG)
;!                           ___ftpack
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftdiv                                             16    10      6    3135
;!                                              0 BANK0     16    10      6
;!                            ___ftneg (ARG)
;!                           ___ftpack
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftpack                                             8     3      5    2087
;!                                              0 COMMON     8     3      5
;! ---------------------------------------------------------------------------------
;! (3) _ReadADC                                              4     2      2      44
;!                                              0 COMMON     4     2      2
;! ---------------------------------------------------------------------------------
;! (1) _ADCInit                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _ADCInit
;!   _Accident_Detect
;!     _GetXAccl
;!       _ReadADC
;!       ___ftdiv
;!         ___ftneg (ARG)
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftmul
;!         ___ftdiv (ARG)
;!           ___ftneg (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___lwdiv
;!       ___lwtoft
;!         ___ftpack
;!     _GetYAccl
;!       _ReadADC
;!       ___ftdiv
;!         ___ftneg (ARG)
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftmul
;!         ___ftdiv (ARG)
;!           ___ftneg (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___lwdiv
;!       ___lwtoft
;!         ___ftpack
;!     _GetZAccl
;!       _ReadADC
;!       ___ftdiv
;!         ___ftneg (ARG)
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftmul
;!         ___ftdiv (ARG)
;!           ___ftneg (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___lwdiv
;!       ___lwtoft
;!         ___ftpack
;!     ___ftadd
;!       _GetXAccl (ARG)
;!         _ReadADC
;!         ___ftdiv
;!           ___ftneg (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftmul
;!           ___ftdiv (ARG)
;!             ___ftneg (ARG)
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___lwdiv
;!         ___lwtoft
;!           ___ftpack
;!       _GetYAccl (ARG)
;!         _ReadADC
;!         ___ftdiv
;!           ___ftneg (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftmul
;!           ___ftdiv (ARG)
;!             ___ftneg (ARG)
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___lwdiv
;!         ___lwtoft
;!           ___ftpack
;!       _GetZAccl (ARG)
;!         _ReadADC
;!         ___ftdiv
;!           ___ftneg (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftmul
;!           ___ftdiv (ARG)
;!             ___ftneg (ARG)
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___lwdiv
;!         ___lwtoft
;!           ___ftpack
;!       ___ftdiv (ARG)
;!         ___ftneg (ARG)
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftneg (ARG)
;!       ___ftpack (ARG)
;!     ___ftdiv
;!       ___ftneg (ARG)
;!       ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___ftge
;!       ___lbtoft (ARG)
;!         ___ftpack
;!     ___ftmul
;!       ___ftdiv (ARG)
;!         ___ftneg (ARG)
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___ftneg
;!   _Vib_Detect
;!     _GetXAccl
;!       _ReadADC
;!       ___ftdiv
;!         ___ftneg (ARG)
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftmul
;!         ___ftdiv (ARG)
;!           ___ftneg (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___lwdiv
;!       ___lwtoft
;!         ___ftpack
;!     _GetYAccl
;!       _ReadADC
;!       ___ftdiv
;!         ___ftneg (ARG)
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftmul
;!         ___ftdiv (ARG)
;!           ___ftneg (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___lwdiv
;!       ___lwtoft
;!         ___ftpack
;!     _GetZAccl
;!       _ReadADC
;!       ___ftdiv
;!         ___ftneg (ARG)
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftmul
;!         ___ftdiv (ARG)
;!           ___ftneg (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___lwdiv
;!       ___lwtoft
;!         ___ftpack
;!     ___bmul
;!     ___ftge
;!       ___lbtoft (ARG)
;!         ___ftpack
;!     ___fttol
;!       _GetXAccl (ARG)
;!         _ReadADC
;!         ___ftdiv
;!           ___ftneg (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftmul
;!           ___ftdiv (ARG)
;!             ___ftneg (ARG)
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___lwdiv
;!         ___lwtoft
;!           ___ftpack
;!       _GetYAccl (ARG)
;!         _ReadADC
;!         ___ftdiv
;!           ___ftneg (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftmul
;!           ___ftdiv (ARG)
;!             ___ftneg (ARG)
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___lwdiv
;!         ___lwtoft
;!           ___ftpack
;!       _GetZAccl (ARG)
;!         _ReadADC
;!         ___ftdiv
;!           ___ftneg (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftmul
;!           ___ftdiv (ARG)
;!             ___ftneg (ARG)
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___lwdiv
;!         ___lwtoft
;!           ___ftpack
;!     ___lbtoft
;!       ___ftpack
;!     _delay
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               20      0       6       7       18.8%
;!BITBANK1            20      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     50      50       5      100.0%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      E       E       1      100.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      64       8        0.0%
;!ABS                  0      0      64       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA              40      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 12 in file "E:\Study Material\XC8 PROJECTS\Motion Detector\motion_det.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         1       0       0
;;      Temps:          0       3       0
;;      Totals:         1       3       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_ADCInit
;;		_Accident_Detect
;;		_Vib_Detect
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"E:\Study Material\XC8 PROJECTS\Motion Detector\motion_det.c"
	line	12
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"E:\Study Material\XC8 PROJECTS\Motion Detector\motion_det.c"
	line	12
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 4
; Regs used in _main: [allreg]
	line	15
	
l1560:	
;motion_det.c: 14: char count;
;motion_det.c: 15: TRISB = 0xF0;
	movlw	(0F0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	18
	
l1562:	
;motion_det.c: 18: for(count = 0; count < 5; count++)
	clrf	(main@count)
	
l1564:	
	movlw	(05h)
	subwf	(main@count),w
	skipc
	goto	u2021
	goto	u2020
u2021:
	goto	l33
u2020:
	goto	l1576
	
l1566:	
	goto	l1576
	line	19
	
l33:	
	line	20
;motion_det.c: 19: {
;motion_det.c: 20: RB2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(50/8),(50)&7	;volatile
	line	21
	
l1568:	
;motion_det.c: 21: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u2097:
	decfsz	((??_main+0)+0),f
	goto	u2097
	decfsz	((??_main+0)+0+1),f
	goto	u2097
	decfsz	((??_main+0)+0+2),f
	goto	u2097
	nop2
opt asmopt_on

	line	22
	
l1570:	
;motion_det.c: 22: RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7	;volatile
	line	23
;motion_det.c: 23: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u2107:
	decfsz	((??_main+0)+0),f
	goto	u2107
	decfsz	((??_main+0)+0+1),f
	goto	u2107
	decfsz	((??_main+0)+0+2),f
	goto	u2107
	nop2
opt asmopt_on

	line	18
	
l1572:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@count),f
	
l1574:	
	movlw	(05h)
	subwf	(main@count),w
	skipc
	goto	u2031
	goto	u2030
u2031:
	goto	l33
u2030:
	goto	l1576
	
l34:	
	line	26
	
l1576:	
;motion_det.c: 24: }
;motion_det.c: 26: ADCInit();
	fcall	_ADCInit
	line	28
;motion_det.c: 28: while(1)
	
l35:	
	line	30
;motion_det.c: 29: {
;motion_det.c: 30: if(Accident_Detect() == 1)
	fcall	_Accident_Detect
	xorlw	01h
	skipz
	goto	u2041
	goto	u2040
u2041:
	goto	l1584
u2040:
	line	32
	
l1578:	
;motion_det.c: 31: {
;motion_det.c: 32: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7	;volatile
	line	34
;motion_det.c: 34: while(RB4 == 0)
	goto	l1582
	
l38:	
	line	36
	
l1580:	
;motion_det.c: 35: {
;motion_det.c: 36: _delay(10);
	opt asmopt_off
movlw	3
movwf	(??_main+0)+0,f
u2117:
decfsz	(??_main+0)+0,f
	goto	u2117
opt asmopt_on

	goto	l1582
	line	37
	
l37:	
	line	34
	
l1582:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(52/8),(52)&7	;volatile
	goto	u2051
	goto	u2050
u2051:
	goto	l1580
u2050:
	
l39:	
	line	38
;motion_det.c: 37: }
;motion_det.c: 38: RB1 = 0;
	bcf	(49/8),(49)&7	;volatile
	goto	l1584
	line	39
	
l36:	
	line	40
	
l1584:	
;motion_det.c: 39: }
;motion_det.c: 40: if(Vib_Detect() == 1)
	fcall	_Vib_Detect
	xorlw	01h
	skipz
	goto	u2061
	goto	u2060
u2061:
	goto	l40
u2060:
	line	41
	
l1586:	
;motion_det.c: 41: RB0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	
l40:	
	line	42
;motion_det.c: 42: if(RB4 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(52/8),(52)&7	;volatile
	goto	u2071
	goto	u2070
u2071:
	goto	l35
u2070:
	line	44
	
l1588:	
;motion_det.c: 43: {
;motion_det.c: 44: _delay(5000);
	opt asmopt_off
movlw	7
movwf	((??_main+0)+0+1),f
	movlw	125
movwf	((??_main+0)+0),f
u2127:
	decfsz	((??_main+0)+0),f
	goto	u2127
	decfsz	((??_main+0)+0+1),f
	goto	u2127
opt asmopt_on

	line	45
	
l1590:	
;motion_det.c: 45: if(RB4 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(52/8),(52)&7	;volatile
	goto	u2081
	goto	u2080
u2081:
	goto	l35
u2080:
	line	46
	
l1592:	
;motion_det.c: 46: RB0 = 0;
	bcf	(48/8),(48)&7	;volatile
	goto	l35
	
l42:	
	goto	l35
	line	47
	
l41:	
	goto	l35
	line	48
	
l43:	
	line	28
	goto	l35
	
l44:	
	line	49
	
l45:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_Vib_Detect

;; *************** function _Vib_Detect *****************
;; Defined at:
;;		line 74 in file "E:\Study Material\XC8 PROJECTS\Motion Detector\motion_det.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Z               2   60[BANK0 ] int 
;;  Y               2   58[BANK0 ] int 
;;  X               2   56[BANK0 ] int 
;;  Z_Diff          1   67[BANK0 ] unsigned char 
;;  Y_Diff          1   66[BANK0 ] unsigned char 
;;  X_Diff          1   65[BANK0 ] unsigned char 
;;  readings        1   64[BANK0 ] unsigned char 
;;  looper          1   63[BANK0 ] unsigned char 
;;  counter         1   62[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0      12       0
;;      Temps:          0       2       0
;;      Totals:         0      14       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_GetXAccl
;;		_GetYAccl
;;		_GetZAccl
;;		___bmul
;;		___ftge
;;		___fttol
;;		___lbtoft
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	74
global __ptext1
__ptext1:	;psect for function _Vib_Detect
psect	text1
	file	"E:\Study Material\XC8 PROJECTS\Motion Detector\motion_det.c"
	line	74
	global	__size_of_Vib_Detect
	__size_of_Vib_Detect	equ	__end_of_Vib_Detect-_Vib_Detect
	
_Vib_Detect:	
;incstack = 0
	opt	stack 4
; Regs used in _Vib_Detect: [allreg]
	line	76
	
l1504:	
;motion_det.c: 76: unsigned char X_Diff = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Vib_Detect@X_Diff)
	line	77
;motion_det.c: 77: unsigned char Y_Diff = 0;
	clrf	(Vib_Detect@Y_Diff)
	line	78
;motion_det.c: 78: unsigned char Z_Diff = 0;
	clrf	(Vib_Detect@Z_Diff)
	line	79
;motion_det.c: 79: int X = 0;
	clrf	(Vib_Detect@X)
	clrf	(Vib_Detect@X+1)
	line	80
;motion_det.c: 80: int Y = 0;
	clrf	(Vib_Detect@Y)
	clrf	(Vib_Detect@Y+1)
	line	81
;motion_det.c: 81: int Z = 0;
	clrf	(Vib_Detect@Z)
	clrf	(Vib_Detect@Z+1)
	line	82
;motion_det.c: 82: char readings = 0;
	clrf	(Vib_Detect@readings)
	line	83
;motion_det.c: 83: char counter = 0;
	clrf	(Vib_Detect@counter)
	line	84
	
l1506:	
;motion_det.c: 84: char looper = 1;
	clrf	(Vib_Detect@looper)
	incf	(Vib_Detect@looper),f
	line	85
;motion_det.c: 85: while(looper == 1 && counter < 5)
	goto	l1552
	
l59:	
	line	88
	
l1508:	
;motion_det.c: 86: {
;motion_det.c: 88: for(readings = 0; readings < 10; readings++)
	clrf	(Vib_Detect@readings)
	
l1510:	
	movlw	(0Ah)
	subwf	(Vib_Detect@readings),w
	skipc
	goto	u1951
	goto	u1950
u1951:
	goto	l1514
u1950:
	goto	l1534
	
l1512:	
	goto	l1534
	line	89
	
l60:	
	line	91
	
l1514:	
;motion_det.c: 89: {
;motion_det.c: 91: X = (int)GetXAccl();
	fcall	_GetXAccl
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_GetXAccl)),w
	movwf	(___fttol@f1)
	movf	(1+(?_GetXAccl)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?_GetXAccl)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	clrf	(Vib_Detect@X+1)
	addwf	(Vib_Detect@X+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(Vib_Detect@X)
	addwf	(Vib_Detect@X)

	line	92
;motion_det.c: 92: Y = (int)GetYAccl();
	fcall	_GetYAccl
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_GetYAccl)),w
	movwf	(___fttol@f1)
	movf	(1+(?_GetYAccl)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?_GetYAccl)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	clrf	(Vib_Detect@Y+1)
	addwf	(Vib_Detect@Y+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(Vib_Detect@Y)
	addwf	(Vib_Detect@Y)

	line	93
;motion_det.c: 93: Z = (int)GetZAccl();
	fcall	_GetZAccl
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_GetZAccl)),w
	movwf	(___fttol@f1)
	movf	(1+(?_GetZAccl)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?_GetZAccl)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	clrf	(Vib_Detect@Z+1)
	addwf	(Vib_Detect@Z+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(Vib_Detect@Z)
	addwf	(Vib_Detect@Z)

	line	95
	
l1516:	
;motion_det.c: 95: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	96
	
l1518:	
;motion_det.c: 96: X_Diff = X_Diff + ((int)GetXAccl() - X);
	fcall	_GetXAccl
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_GetXAccl)),w
	movwf	(___fttol@f1)
	movf	(1+(?_GetXAccl)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?_GetXAccl)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decf	(Vib_Detect@X),w
	xorlw	0ffh
	addwf	0+(((0+(?___fttol)))),w
	movwf	(??_Vib_Detect+0)+0
	movf	(Vib_Detect@X_Diff),w
	addwf	0+(??_Vib_Detect+0)+0,w
	movwf	(??_Vib_Detect+1)+0
	movf	(??_Vib_Detect+1)+0,w
	movwf	(Vib_Detect@X_Diff)
	line	97
	
l1520:	
;motion_det.c: 97: Y_Diff = Y_Diff + ((int)GetYAccl() - Y);
	fcall	_GetYAccl
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_GetYAccl)),w
	movwf	(___fttol@f1)
	movf	(1+(?_GetYAccl)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?_GetYAccl)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decf	(Vib_Detect@Y),w
	xorlw	0ffh
	addwf	0+(((0+(?___fttol)))),w
	movwf	(??_Vib_Detect+0)+0
	movf	(Vib_Detect@Y_Diff),w
	addwf	0+(??_Vib_Detect+0)+0,w
	movwf	(??_Vib_Detect+1)+0
	movf	(??_Vib_Detect+1)+0,w
	movwf	(Vib_Detect@Y_Diff)
	line	98
	
l1522:	
;motion_det.c: 98: Z_Diff = Z_Diff + ((int)GetZAccl() - Z);
	fcall	_GetZAccl
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_GetZAccl)),w
	movwf	(___fttol@f1)
	movf	(1+(?_GetZAccl)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?_GetZAccl)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decf	(Vib_Detect@Z),w
	xorlw	0ffh
	addwf	0+(((0+(?___fttol)))),w
	movwf	(??_Vib_Detect+0)+0
	movf	(Vib_Detect@Z_Diff),w
	addwf	0+(??_Vib_Detect+0)+0,w
	movwf	(??_Vib_Detect+1)+0
	movf	(??_Vib_Detect+1)+0,w
	movwf	(Vib_Detect@Z_Diff)
	line	100
;motion_det.c: 100: if(X_Diff < 0)
	goto	l1530
	line	101
	
l1524:	
;motion_det.c: 101: X_Diff = X_Diff * -1;
	movlw	(0FFh)
	movwf	(??_Vib_Detect+0)+0
	movf	(??_Vib_Detect+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(Vib_Detect@X_Diff),w
	fcall	___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Vib_Detect+1)+0
	movf	(??_Vib_Detect+1)+0,w
	movwf	(Vib_Detect@X_Diff)
	goto	l1530
	
l62:	
	line	102
;motion_det.c: 102: if(Y_Diff < 0)
	goto	l1530
	line	103
	
l1526:	
;motion_det.c: 103: Y_Diff = Y_Diff * -1;
	movlw	(0FFh)
	movwf	(??_Vib_Detect+0)+0
	movf	(??_Vib_Detect+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(Vib_Detect@Y_Diff),w
	fcall	___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Vib_Detect+1)+0
	movf	(??_Vib_Detect+1)+0,w
	movwf	(Vib_Detect@Y_Diff)
	goto	l1530
	
l63:	
	line	104
;motion_det.c: 104: if(Z_Diff < 0)
	goto	l1530
	line	105
	
l1528:	
;motion_det.c: 105: Z_Diff = Z_Diff * -1;
	movlw	(0FFh)
	movwf	(??_Vib_Detect+0)+0
	movf	(??_Vib_Detect+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(Vib_Detect@Z_Diff),w
	fcall	___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Vib_Detect+1)+0
	movf	(??_Vib_Detect+1)+0,w
	movwf	(Vib_Detect@Z_Diff)
	goto	l1530
	
l64:	
	line	88
	
l1530:	
	movlw	(01h)
	movwf	(??_Vib_Detect+0)+0
	movf	(??_Vib_Detect+0)+0,w
	addwf	(Vib_Detect@readings),f
	
l1532:	
	movlw	(0Ah)
	subwf	(Vib_Detect@readings),w
	skipc
	goto	u1961
	goto	u1960
u1961:
	goto	l1514
u1960:
	goto	l1534
	
l61:	
	line	107
	
l1534:	
;motion_det.c: 106: }
;motion_det.c: 107: if(X_Diff >= Vib_Sensitivity || Y_Diff >= Vib_Sensitivity || Z_Diff >= Vib_Sensitivity)
	movf	(Vib_Detect@X_Diff),w
	fcall	___lbtoft
	movf	(0+(?___lbtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff1)
	movf	(1+(?___lbtoft)),w
	movwf	(___ftge@ff1+1)
	movf	(2+(?___lbtoft)),w
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_Vib_Sensitivity)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_Vib_Sensitivity+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_Vib_Sensitivity+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u1971
	goto	u1970
u1971:
	goto	l1540
u1970:
	
l1536:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Vib_Detect@Y_Diff),w
	fcall	___lbtoft
	movf	(0+(?___lbtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff1)
	movf	(1+(?___lbtoft)),w
	movwf	(___ftge@ff1+1)
	movf	(2+(?___lbtoft)),w
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_Vib_Sensitivity)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_Vib_Sensitivity+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_Vib_Sensitivity+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u1981
	goto	u1980
u1981:
	goto	l1540
u1980:
	
l1538:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Vib_Detect@Z_Diff),w
	fcall	___lbtoft
	movf	(0+(?___lbtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff1)
	movf	(1+(?___lbtoft)),w
	movwf	(___ftge@ff1+1)
	movf	(2+(?___lbtoft)),w
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_Vib_Sensitivity)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_Vib_Sensitivity+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_Vib_Sensitivity+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u1991
	goto	u1990
u1991:
	goto	l1550
u1990:
	goto	l1540
	
l67:	
	line	109
	
l1540:	
;motion_det.c: 108: {
;motion_det.c: 109: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	110
	
l1542:	
;motion_det.c: 110: counter++;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Vib_Detect+0)+0
	movf	(??_Vib_Detect+0)+0,w
	addwf	(Vib_Detect@counter),f
	line	111
	
l1544:	
;motion_det.c: 111: X_Diff = 0;
	clrf	(Vib_Detect@X_Diff)
	line	112
	
l1546:	
;motion_det.c: 112: Y_Diff = 0;
	clrf	(Vib_Detect@Y_Diff)
	line	113
	
l1548:	
;motion_det.c: 113: Z_Diff = 0;
	clrf	(Vib_Detect@Z_Diff)
	line	114
;motion_det.c: 114: }
	goto	l1552
	line	115
	
l65:	
	line	116
	
l1550:	
;motion_det.c: 115: else
;motion_det.c: 116: looper = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Vib_Detect@looper)
	goto	l1552
	
l68:	
	goto	l1552
	line	117
	
l58:	
	line	85
	
l1552:	
	movf	(Vib_Detect@looper),w
	xorlw	01h
	skipz
	goto	u2001
	goto	u2000
u2001:
	goto	l1556
u2000:
	
l1554:	
	movlw	(05h)
	subwf	(Vib_Detect@counter),w
	skipc
	goto	u2011
	goto	u2010
u2011:
	goto	l1508
u2010:
	goto	l1556
	
l70:	
	goto	l1556
	
l71:	
	line	118
	
l1556:	
;motion_det.c: 117: }
;motion_det.c: 118: return looper;
	movf	(Vib_Detect@looper),w
	goto	l72
	
l1558:	
	line	119
	
l72:	
	return
	opt stack 0
GLOBAL	__end_of_Vib_Detect
	__end_of_Vib_Detect:
	signat	_Vib_Detect,89
	global	_delay
	global	___lbtoft

;; *************** function ___lbtoft *****************
;; Defined at:
;;		line 27 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lbtoft.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   11[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         3       0       0
;;      Locals:         1       0       0
;;      Temps:          0       4       0
;;      Totals:         4       4       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_Vib_Detect
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lbtoft.c"
	line	27
global __ptext2
__ptext2:	;psect for function ___lbtoft
psect	text2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lbtoft.c"
	line	27
	global	__size_of___lbtoft
	__size_of___lbtoft	equ	__end_of___lbtoft-___lbtoft
	
___lbtoft:	
;incstack = 0
	opt	stack 5
; Regs used in ___lbtoft: [wreg+status,2+status,0+pclath+cstack]
;___lbtoft@c stored from wreg
	movwf	(___lbtoft@c)
	line	29
	
l1458:	
	movf	(___lbtoft@c),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??___lbtoft+0)+0)
	clrf	((??___lbtoft+0)+0+1)
	clrf	((??___lbtoft+0)+0+2)
	movf	0+(??___lbtoft+0)+0,w
	movwf	(___ftpack@arg)
	movf	1+(??___lbtoft+0)+0,w
	movwf	(___ftpack@arg+1)
	movf	2+(??___lbtoft+0)+0,w
	movwf	(___ftpack@arg+2)
	movlw	(08Eh)
	movwf	(??___lbtoft+3)+0
	movf	(??___lbtoft+3)+0,w
	movwf	(___ftpack@exp)
	clrf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___lbtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lbtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lbtoft+2)
	goto	l462
	
l1460:	
	line	30
	
l462:	
	return
	opt stack 0
GLOBAL	__end_of___lbtoft
	__end_of___lbtoft:
	signat	___lbtoft,4219
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   40[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   49[BANK0 ] unsigned long 
;;  exp1            1   53[BANK0 ] unsigned char 
;;  sign1           1   48[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   40[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       4       0
;;      Locals:         0       6       0
;;      Temps:          0       4       0
;;      Totals:         0      14       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Vib_Detect
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
global __ptext3
__ptext3:	;psect for function ___fttol
psect	text3
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;incstack = 0
	opt	stack 6
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l1414:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1)),f
	skipz
	goto	u1791
	goto	u1790
u1791:
	goto	l1420
u1790:
	line	50
	
l1416:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l431
	
l1418:	
	goto	l431
	
l430:	
	line	51
	
l1420:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u1805:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u1800:
	addlw	-1
	skipz
	goto	u1805
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l1422:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l1424:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l1426:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l1428:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l1430:	
	btfss	(___fttol@exp1),7
	goto	u1811
	goto	u1810
u1811:
	goto	l1440
u1810:
	line	57
	
l1432:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u1821
	goto	u1820
u1821:
	goto	l1438
u1820:
	line	58
	
l1434:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l431
	
l1436:	
	goto	l431
	
l433:	
	goto	l1438
	line	59
	
l434:	
	line	60
	
l1438:	
	movlw	01h
u1835:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u1835

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u1841
	goto	u1840
u1841:
	goto	l1438
u1840:
	goto	l1450
	
l435:	
	line	62
	goto	l1450
	
l432:	
	line	63
	
l1440:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u1851
	goto	u1850
u1851:
	goto	l1448
u1850:
	line	64
	
l1442:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l431
	
l1444:	
	goto	l431
	
l437:	
	line	65
	goto	l1448
	
l439:	
	line	66
	
l1446:	
	movlw	01h
	movwf	(??___fttol+0)+0
u1865:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u1865
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l1448
	line	68
	
l438:	
	line	65
	
l1448:	
	movf	(___fttol@exp1),f
	skipz
	goto	u1871
	goto	u1870
u1871:
	goto	l1446
u1870:
	goto	l1450
	
l440:	
	goto	l1450
	line	69
	
l436:	
	line	70
	
l1450:	
	movf	(___fttol@sign1),w
	skipz
	goto	u1880
	goto	l1454
u1880:
	line	71
	
l1452:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	goto	l1454
	
l441:	
	line	72
	
l1454:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l431
	
l1456:	
	line	73
	
l431:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___bmul

;; *************** function ___bmul *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul8.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    3[COMMON] unsigned char 
;;  product         1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         1       0       0
;;      Locals:         2       0       0
;;      Temps:          1       0       0
;;      Totals:         4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Vib_Detect
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul8.c"
	line	4
global __ptext4
__ptext4:	;psect for function ___bmul
psect	text4
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul8.c"
	line	4
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
;incstack = 0
	opt	stack 6
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	6
	
l1298:	
	clrf	(___bmul@product)
	goto	l1300
	line	42
	
l206:	
	line	43
	
l1300:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u1471
	goto	u1470
u1471:
	goto	l1304
u1470:
	line	44
	
l1302:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	goto	l1304
	
l207:	
	line	45
	
l1304:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	46
	
l1306:	
	clrc
	rrf	(___bmul@multiplier),f

	line	47
	
l1308:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u1481
	goto	u1480
u1481:
	goto	l1300
u1480:
	goto	l1310
	
l208:	
	line	50
	
l1310:	
	movf	(___bmul@product),w
	goto	l209
	
l1312:	
	line	51
	
l209:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
	signat	___bmul,8313
	global	_Accident_Detect

;; *************** function _Accident_Detect *****************
;; Defined at:
;;		line 51 in file "E:\Study Material\XC8 PROJECTS\Motion Detector\motion_det.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  z_G             3   74[BANK0 ] float 
;;  y_G             3   71[BANK0 ] float 
;;  x_G             3   68[BANK0 ] float 
;;  scale           3   65[BANK0 ] float 
;;  zero_G          3   62[BANK0 ] float 
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
;;      Locals:         0      24       0
;;      Temps:          0       0       0
;;      Totals:         0      24       0
;;Total ram usage:       24 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_GetXAccl
;;		_GetYAccl
;;		_GetZAccl
;;		___ftadd
;;		___ftdiv
;;		___ftge
;;		___ftmul
;;		___ftneg
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\Motion Detector\motion_det.c"
	line	51
global __ptext5
__ptext5:	;psect for function _Accident_Detect
psect	text5
	file	"E:\Study Material\XC8 PROJECTS\Motion Detector\motion_det.c"
	line	51
	global	__size_of_Accident_Detect
	__size_of_Accident_Detect	equ	__end_of_Accident_Detect-_Accident_Detect
	
_Accident_Detect:	
;incstack = 0
	opt	stack 4
; Regs used in _Accident_Detect: [wreg+status,2+status,0+pclath+cstack]
	line	53
	
l1468:	
;motion_det.c: 53: float zero_G = 512.0f;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Accident_Detect@zero_G)
	movlw	0x0
	movwf	(Accident_Detect@zero_G+1)
	movlw	0x44
	movwf	(Accident_Detect@zero_G+2)
	line	54
;motion_det.c: 54: float scale = 102.3f;
	movlw	0x9a
	movwf	(Accident_Detect@scale)
	movlw	0xcc
	movwf	(Accident_Detect@scale+1)
	movlw	0x42
	movwf	(Accident_Detect@scale+2)
	line	56
	
l1470:	
;motion_det.c: 56: float x_G = (GetXAccl() - zero_G)/scale;
	movf	(Accident_Detect@zero_G),w
	movwf	(___ftneg@f1)
	movf	(Accident_Detect@zero_G+1),w
	movwf	(___ftneg@f1+1)
	movf	(Accident_Detect@zero_G+2),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	movf	(1+(?___ftneg)),w
	movwf	(___ftadd@f1+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftadd@f1+2)
	fcall	_GetXAccl
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_GetXAccl)),w
	movwf	(___ftadd@f2)
	movf	(1+(?_GetXAccl)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?_GetXAccl)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(_Accident_Detect$563)
	movf	(1+(?___ftadd)),w
	movwf	(_Accident_Detect$563+1)
	movf	(2+(?___ftadd)),w
	movwf	(_Accident_Detect$563+2)
	
l1472:	
;motion_det.c: 56: float x_G = (GetXAccl() - zero_G)/scale;
	movf	(Accident_Detect@scale),w
	movwf	(___ftdiv@f2)
	movf	(Accident_Detect@scale+1),w
	movwf	(___ftdiv@f2+1)
	movf	(Accident_Detect@scale+2),w
	movwf	(___ftdiv@f2+2)
	movf	(_Accident_Detect$563),w
	movwf	(___ftdiv@f1)
	movf	(_Accident_Detect$563+1),w
	movwf	(___ftdiv@f1+1)
	movf	(_Accident_Detect$563+2),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(Accident_Detect@x_G)
	movf	(1+(?___ftdiv)),w
	movwf	(Accident_Detect@x_G+1)
	movf	(2+(?___ftdiv)),w
	movwf	(Accident_Detect@x_G+2)
	line	57
	
l1474:	
;motion_det.c: 57: float y_G = (GetYAccl() - zero_G)/scale;
	movf	(Accident_Detect@zero_G),w
	movwf	(___ftneg@f1)
	movf	(Accident_Detect@zero_G+1),w
	movwf	(___ftneg@f1+1)
	movf	(Accident_Detect@zero_G+2),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	movf	(1+(?___ftneg)),w
	movwf	(___ftadd@f1+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftadd@f1+2)
	fcall	_GetYAccl
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_GetYAccl)),w
	movwf	(___ftadd@f2)
	movf	(1+(?_GetYAccl)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?_GetYAccl)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(_Accident_Detect$564)
	movf	(1+(?___ftadd)),w
	movwf	(_Accident_Detect$564+1)
	movf	(2+(?___ftadd)),w
	movwf	(_Accident_Detect$564+2)
	
l1476:	
;motion_det.c: 57: float y_G = (GetYAccl() - zero_G)/scale;
	movf	(Accident_Detect@scale),w
	movwf	(___ftdiv@f2)
	movf	(Accident_Detect@scale+1),w
	movwf	(___ftdiv@f2+1)
	movf	(Accident_Detect@scale+2),w
	movwf	(___ftdiv@f2+2)
	movf	(_Accident_Detect$564),w
	movwf	(___ftdiv@f1)
	movf	(_Accident_Detect$564+1),w
	movwf	(___ftdiv@f1+1)
	movf	(_Accident_Detect$564+2),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(Accident_Detect@y_G)
	movf	(1+(?___ftdiv)),w
	movwf	(Accident_Detect@y_G+1)
	movf	(2+(?___ftdiv)),w
	movwf	(Accident_Detect@y_G+2)
	line	58
	
l1478:	
;motion_det.c: 58: float z_G = (GetZAccl() - zero_G)/scale;
	movf	(Accident_Detect@zero_G),w
	movwf	(___ftneg@f1)
	movf	(Accident_Detect@zero_G+1),w
	movwf	(___ftneg@f1+1)
	movf	(Accident_Detect@zero_G+2),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	movf	(1+(?___ftneg)),w
	movwf	(___ftadd@f1+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftadd@f1+2)
	fcall	_GetZAccl
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_GetZAccl)),w
	movwf	(___ftadd@f2)
	movf	(1+(?_GetZAccl)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?_GetZAccl)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(_Accident_Detect$565)
	movf	(1+(?___ftadd)),w
	movwf	(_Accident_Detect$565+1)
	movf	(2+(?___ftadd)),w
	movwf	(_Accident_Detect$565+2)
	
l1480:	
;motion_det.c: 58: float z_G = (GetZAccl() - zero_G)/scale;
	movf	(Accident_Detect@scale),w
	movwf	(___ftdiv@f2)
	movf	(Accident_Detect@scale+1),w
	movwf	(___ftdiv@f2+1)
	movf	(Accident_Detect@scale+2),w
	movwf	(___ftdiv@f2+2)
	movf	(_Accident_Detect$565),w
	movwf	(___ftdiv@f1)
	movf	(_Accident_Detect$565+1),w
	movwf	(___ftdiv@f1+1)
	movf	(_Accident_Detect$565+2),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(Accident_Detect@z_G)
	movf	(1+(?___ftdiv)),w
	movwf	(Accident_Detect@z_G+1)
	movf	(2+(?___ftdiv)),w
	movwf	(Accident_Detect@z_G+2)
	line	61
	
l1482:	
;motion_det.c: 61: if(x_G < 0)
	movf	(Accident_Detect@x_G),w
	movwf	(___ftge@ff1)
	movf	(Accident_Detect@x_G+1),w
	movwf	(___ftge@ff1+1)
	movf	(Accident_Detect@x_G+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0x0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u1891
	goto	u1890
u1891:
	goto	l48
u1890:
	line	62
	
l1484:	
;motion_det.c: 62: x_G = x_G * -1;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	movlw	0x80
	movwf	(___ftmul@f1+1)
	movlw	0xbf
	movwf	(___ftmul@f1+2)
	movf	(Accident_Detect@x_G),w
	movwf	(___ftmul@f2)
	movf	(Accident_Detect@x_G+1),w
	movwf	(___ftmul@f2+1)
	movf	(Accident_Detect@x_G+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(Accident_Detect@x_G)
	movf	(1+(?___ftmul)),w
	movwf	(Accident_Detect@x_G+1)
	movf	(2+(?___ftmul)),w
	movwf	(Accident_Detect@x_G+2)
	
l48:	
	line	63
;motion_det.c: 63: if(y_G < 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Accident_Detect@y_G),w
	movwf	(___ftge@ff1)
	movf	(Accident_Detect@y_G+1),w
	movwf	(___ftge@ff1+1)
	movf	(Accident_Detect@y_G+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0x0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u1901
	goto	u1900
u1901:
	goto	l49
u1900:
	line	64
	
l1486:	
;motion_det.c: 64: y_G = y_G * -1;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	movlw	0x80
	movwf	(___ftmul@f1+1)
	movlw	0xbf
	movwf	(___ftmul@f1+2)
	movf	(Accident_Detect@y_G),w
	movwf	(___ftmul@f2)
	movf	(Accident_Detect@y_G+1),w
	movwf	(___ftmul@f2+1)
	movf	(Accident_Detect@y_G+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(Accident_Detect@y_G)
	movf	(1+(?___ftmul)),w
	movwf	(Accident_Detect@y_G+1)
	movf	(2+(?___ftmul)),w
	movwf	(Accident_Detect@y_G+2)
	
l49:	
	line	65
;motion_det.c: 65: if(z_G < 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Accident_Detect@z_G),w
	movwf	(___ftge@ff1)
	movf	(Accident_Detect@z_G+1),w
	movwf	(___ftge@ff1+1)
	movf	(Accident_Detect@z_G+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0x0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u1911
	goto	u1910
u1911:
	goto	l50
u1910:
	line	66
	
l1488:	
;motion_det.c: 66: z_G = z_G * -1;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	movlw	0x80
	movwf	(___ftmul@f1+1)
	movlw	0xbf
	movwf	(___ftmul@f1+2)
	movf	(Accident_Detect@z_G),w
	movwf	(___ftmul@f2)
	movf	(Accident_Detect@z_G+1),w
	movwf	(___ftmul@f2+1)
	movf	(Accident_Detect@z_G+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(Accident_Detect@z_G)
	movf	(1+(?___ftmul)),w
	movwf	(Accident_Detect@z_G+1)
	movf	(2+(?___ftmul)),w
	movwf	(Accident_Detect@z_G+2)
	
l50:	
	line	68
;motion_det.c: 68: if(x_G > AccidentG || y_G > AccidentG || z_G > AccidentG)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_AccidentG)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_AccidentG+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_AccidentG+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff1+2)
	movf	(Accident_Detect@x_G),w
	movwf	(___ftge@ff2)
	movf	(Accident_Detect@x_G+1),w
	movwf	(___ftge@ff2+1)
	movf	(Accident_Detect@x_G+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u1921
	goto	u1920
u1921:
	goto	l1494
u1920:
	
l1490:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_AccidentG)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_AccidentG+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_AccidentG+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff1+2)
	movf	(Accident_Detect@y_G),w
	movwf	(___ftge@ff2)
	movf	(Accident_Detect@y_G+1),w
	movwf	(___ftge@ff2+1)
	movf	(Accident_Detect@y_G+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u1931
	goto	u1930
u1931:
	goto	l1494
u1930:
	
l1492:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_AccidentG)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_AccidentG+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_AccidentG+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff1+2)
	movf	(Accident_Detect@z_G),w
	movwf	(___ftge@ff2)
	movf	(Accident_Detect@z_G+1),w
	movwf	(___ftge@ff2+1)
	movf	(Accident_Detect@z_G+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u1941
	goto	u1940
u1941:
	goto	l1500
u1940:
	goto	l1494
	
l53:	
	line	69
	
l1494:	
;motion_det.c: 69: return 1;
	movlw	(01h)
	goto	l54
	
l1496:	
	goto	l54
	
l1498:	
	goto	l54
	line	70
	
l51:	
	line	71
	
l1500:	
;motion_det.c: 70: else
;motion_det.c: 71: return 0;
	movlw	(0)
	goto	l54
	
l1502:	
	goto	l54
	
l55:	
	line	72
	
l54:	
	return
	opt stack 0
GLOBAL	__end_of_Accident_Detect
	__end_of_Accident_Detect:
	signat	_Accident_Detect,89
	global	___ftneg

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[COMMON] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         3       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Accident_Detect
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
	line	15
global __ptext6
__ptext6:	;psect for function ___ftneg
psect	text6
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
	line	15
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
;incstack = 0
	opt	stack 6
; Regs used in ___ftneg: [wreg]
	line	17
	
l1406:	
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u1781
	goto	u1780
u1781:
	goto	l1410
u1780:
	line	18
	
l1408:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	goto	l1410
	
l421:	
	line	19
	
l1410:	
	goto	l422
	
l1412:	
	line	20
	
l422:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
	signat	___ftneg,4219
	global	___ftge

;; *************** function ___ftge *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    4[BANK0 ] float 
;;  ff2             3    7[BANK0 ] float 
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
;;      Params:         0       6       0
;;      Locals:         0       0       0
;;      Temps:          0       6       0
;;      Totals:         0      12       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Accident_Detect
;;		_Vib_Detect
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
	line	4
global __ptext7
__ptext7:	;psect for function ___ftge
psect	text7
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
	line	4
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
;incstack = 0
	opt	stack 6
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l1386:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___ftge@ff1+2),(23)&7
	goto	u1731
	goto	u1730
u1731:
	goto	l1390
u1730:
	line	7
	
l1388:	
	movlw	low(0800000h)
	movwf	((??___ftge+0)+0)
	movlw	high(0800000h)
	movwf	((??___ftge+0)+0+1)
	movlw	low highword(0800000h)
	movwf	((??___ftge+0)+0+2)
	comf	(___ftge@ff1),w
	movwf	(??___ftge+3)+0
	comf	(___ftge@ff1+1),w
	movwf	((??___ftge+3)+0+1)
	comf	(___ftge@ff1+2),w
	movwf	((??___ftge+3)+0+2)
	incf	(??___ftge+3)+0,f
	skipnz
	incf	((??___ftge+3)+0+1),f
	skipnz
	incf	((??___ftge+3)+0+2),f
	movf	0+(??___ftge+3)+0,w
	addwf	(??___ftge+0)+0,f
	movf	1+(??___ftge+3)+0,w
	skipnc
	incfsz	1+(??___ftge+3)+0,w
	goto	u1741
	goto	u1742
u1741:
	addwf	(??___ftge+0)+1,f
	
u1742:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u1743
	goto	u1744
u1743:
	addwf	(??___ftge+0)+2,f
	
u1744:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff1)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+2)
	goto	l1390
	
l403:	
	line	8
	
l1390:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u1751
	goto	u1750
u1751:
	goto	l1394
u1750:
	line	9
	
l1392:	
	movlw	low(0800000h)
	movwf	((??___ftge+0)+0)
	movlw	high(0800000h)
	movwf	((??___ftge+0)+0+1)
	movlw	low highword(0800000h)
	movwf	((??___ftge+0)+0+2)
	comf	(___ftge@ff2),w
	movwf	(??___ftge+3)+0
	comf	(___ftge@ff2+1),w
	movwf	((??___ftge+3)+0+1)
	comf	(___ftge@ff2+2),w
	movwf	((??___ftge+3)+0+2)
	incf	(??___ftge+3)+0,f
	skipnz
	incf	((??___ftge+3)+0+1),f
	skipnz
	incf	((??___ftge+3)+0+2),f
	movf	0+(??___ftge+3)+0,w
	addwf	(??___ftge+0)+0,f
	movf	1+(??___ftge+3)+0,w
	skipnc
	incfsz	1+(??___ftge+3)+0,w
	goto	u1761
	goto	u1762
u1761:
	addwf	(??___ftge+0)+1,f
	
u1762:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u1763
	goto	u1764
u1763:
	addwf	(??___ftge+0)+2,f
	
u1764:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff2)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+2)
	goto	l1394
	
l404:	
	line	10
	
l1394:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l1396:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l1398:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u1775
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u1775
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u1775:
	skipnc
	goto	u1771
	goto	u1770
u1771:
	goto	l1402
u1770:
	
l1400:	
	clrc
	
	goto	l405
	
l1084:	
	
l1402:	
	setc
	
	goto	l405
	
l1086:	
	goto	l405
	
l1404:	
	line	13
	
l405:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
	global	___ftadd

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 86 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   40[BANK0 ] float 
;;  f2              3   43[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   52[BANK0 ] unsigned char 
;;  exp2            1   51[BANK0 ] unsigned char 
;;  sign            1   50[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   40[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       6       0
;;      Locals:         0       3       0
;;      Temps:          0       4       0
;;      Totals:         0      13       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_Accident_Detect
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
global __ptext8
__ptext8:	;psect for function ___ftadd
psect	text8
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
;incstack = 0
	opt	stack 5
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l1314:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftadd@f1),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f1+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f1+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp1)
	line	91
	movf	(___ftadd@f2),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f2+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f2+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp2)
	line	92
	
l1316:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u1490
	goto	l1322
u1490:
	
l1318:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u1501
	goto	u1500
u1501:
	goto	l1326
u1500:
	
l1320:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u1511
	goto	u1510
u1511:
	goto	l1326
u1510:
	goto	l1322
	
l364:	
	line	93
	
l1322:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l365
	
l1324:	
	goto	l365
	
l362:	
	line	94
	
l1326:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u1520
	goto	l368
u1520:
	
l1328:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u1531
	goto	u1530
u1531:
	goto	l1332
u1530:
	
l1330:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u1541
	goto	u1540
u1541:
	goto	l1332
u1540:
	
l368:	
	line	95
	goto	l365
	
l366:	
	line	96
	
l1332:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l1334:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u1551
	goto	u1550
u1551:
	goto	l369
u1550:
	line	98
	
l1336:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l369:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u1561
	goto	u1560
u1561:
	goto	l370
u1560:
	line	100
	
l1338:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l370:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l1340:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l1342:	
	bsf	(___ftadd@f2)+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2),f
	movlw	0FFh
	andwf	(___ftadd@f2+1),f
	movlw	0
	andwf	(___ftadd@f2+2),f
	line	106
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u1571
	goto	u1570
u1571:
	goto	l1354
u1570:
	goto	l1344
	line	109
	
l372:	
	line	110
	
l1344:	
	movlw	01h
u1585:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u1585
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l1346:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u1591
	goto	u1590
u1591:
	goto	l1352
u1590:
	
l1348:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u1601
	goto	u1600
u1601:
	goto	l1344
u1600:
	goto	l1352
	
l374:	
	goto	l1352
	
l375:	
	line	113
	goto	l1352
	
l377:	
	line	114
	
l1350:	
	movlw	01h
u1615:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u1615

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l1352
	line	116
	
l376:	
	line	113
	
l1352:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u1621
	goto	u1620
u1621:
	goto	l1350
u1620:
	goto	l379
	
l378:	
	line	117
	goto	l379
	
l371:	
	
l1354:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u1631
	goto	u1630
u1631:
	goto	l379
u1630:
	goto	l1356
	line	120
	
l381:	
	line	121
	
l1356:	
	movlw	01h
u1645:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u1645
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l1358:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u1651
	goto	u1650
u1651:
	goto	l1364
u1650:
	
l1360:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u1661
	goto	u1660
u1661:
	goto	l1356
u1660:
	goto	l1364
	
l383:	
	goto	l1364
	
l384:	
	line	124
	goto	l1364
	
l386:	
	line	125
	
l1362:	
	movlw	01h
u1675:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u1675

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l1364
	line	127
	
l385:	
	line	124
	
l1364:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u1681
	goto	u1680
u1681:
	goto	l1362
u1680:
	goto	l379
	
l387:	
	goto	l379
	line	128
	
l380:	
	line	129
	
l379:	
	btfss	(___ftadd@sign),(7)&7
	goto	u1691
	goto	u1690
u1691:
	goto	l1368
u1690:
	line	131
	
l1366:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	movlw	01h
	addwf	(___ftadd@f1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+2),f
	goto	l1368
	line	133
	
l388:	
	line	134
	
l1368:	
	btfss	(___ftadd@sign),(6)&7
	goto	u1701
	goto	u1700
u1701:
	goto	l1372
u1700:
	line	136
	
l1370:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	goto	l1372
	line	138
	
l389:	
	line	139
	
l1372:	
	clrf	(___ftadd@sign)
	line	140
	
l1374:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u1711
	addwf	(___ftadd@f2+1),f
u1711:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u1712
	addwf	(___ftadd@f2+2),f
u1712:

	line	141
	
l1376:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u1721
	goto	u1720
u1721:
	goto	l1382
u1720:
	line	142
	
l1378:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	line	144
	
l1380:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	goto	l1382
	line	145
	
l390:	
	line	146
	
l1382:	
	movf	(___ftadd@f2),w
	movwf	(___ftpack@arg)
	movf	(___ftadd@f2+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftadd@f2+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftadd@sign),w
	movwf	(??___ftadd+1)+0
	movf	(??___ftadd+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	goto	l365
	
l1384:	
	line	148
	
l365:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	_GetZAccl

;; *************** function _GetZAccl *****************
;; Defined at:
;;		line 55 in file "E:\Study Material\XC8 PROJECTS\Motion Detector\adxl335.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  t               3   35[BANK0 ] float 
;;  adc_value       2   38[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  3   32[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       3       0
;;      Locals:         0       5       0
;;      Temps:          1       0       0
;;      Totals:         1       8       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ReadADC
;;		___ftdiv
;;		___ftmul
;;		___lwdiv
;;		___lwtoft
;; This function is called by:
;;		_Accident_Detect
;;		_Vib_Detect
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\Motion Detector\adxl335.c"
	line	55
global __ptext9
__ptext9:	;psect for function _GetZAccl
psect	text9
	file	"E:\Study Material\XC8 PROJECTS\Motion Detector\adxl335.c"
	line	55
	global	__size_of_GetZAccl
	__size_of_GetZAccl	equ	__end_of_GetZAccl-_GetZAccl
	
_GetZAccl:	
;incstack = 0
	opt	stack 4
; Regs used in _GetZAccl: [wreg+status,2+status,0+pclath+cstack]
	line	61
	
l1284:	
;adxl335.c: 58: float t;
;adxl335.c: 61: uint16_t adc_value=ReadADC(2);
	movlw	(02h)
	fcall	_ReadADC
	movf	(1+(?_ReadADC)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(GetZAccl@adc_value+1)
	addwf	(GetZAccl@adc_value+1)
	movf	(0+(?_ReadADC)),w
	clrf	(GetZAccl@adc_value)
	addwf	(GetZAccl@adc_value)

	line	62
	
l1286:	
;adxl335.c: 62: _delay((unsigned long)((100)*(4000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_GetZAccl+0)+0,f
u2137:
decfsz	(??_GetZAccl+0)+0,f
	goto	u2137
opt asmopt_on

	line	64
	
l1288:	
;adxl335.c: 64: adc_value+=ReadADC(2);
	movlw	(02h)
	fcall	_ReadADC
	movf	(0+(?_ReadADC)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(GetZAccl@adc_value),f
	skipnc
	incf	(GetZAccl@adc_value+1),f
	movf	(1+(?_ReadADC)),w
	addwf	(GetZAccl@adc_value+1),f
	line	65
;adxl335.c: 65: _delay((unsigned long)((100)*(4000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_GetZAccl+0)+0,f
u2147:
decfsz	(??_GetZAccl+0)+0,f
	goto	u2147
opt asmopt_on

	line	67
	
l1290:	
;adxl335.c: 67: adc_value+=ReadADC(2);
	movlw	(02h)
	fcall	_ReadADC
	movf	(0+(?_ReadADC)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(GetZAccl@adc_value),f
	skipnc
	incf	(GetZAccl@adc_value+1),f
	movf	(1+(?_ReadADC)),w
	addwf	(GetZAccl@adc_value+1),f
	line	68
	
l1292:	
;adxl335.c: 68: _delay((unsigned long)((100)*(4000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_GetZAccl+0)+0,f
u2157:
decfsz	(??_GetZAccl+0)+0,f
	goto	u2157
opt asmopt_on

	line	70
;adxl335.c: 70: adc_value=adc_value/3;
	movlw	low(03h)
	movwf	(___lwdiv@divisor)
	movlw	high(03h)
	movwf	((___lwdiv@divisor))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(GetZAccl@adc_value+1),w
	clrf	(___lwdiv@dividend+1)
	addwf	(___lwdiv@dividend+1)
	movf	(GetZAccl@adc_value),w
	clrf	(___lwdiv@dividend)
	addwf	(___lwdiv@dividend)

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(GetZAccl@adc_value+1)
	addwf	(GetZAccl@adc_value+1)
	movf	(0+(?___lwdiv)),w
	clrf	(GetZAccl@adc_value)
	addwf	(GetZAccl@adc_value)

	line	73
;adxl335.c: 73: t=((adc_value/1023.00)*500.00);
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0xfa
	movwf	(___ftmul@f1+1)
	movlw	0x43
	movwf	(___ftmul@f1+2)
	movlw	0xc0
	movwf	(___ftdiv@f2)
	movlw	0x7f
	movwf	(___ftdiv@f2+1)
	movlw	0x44
	movwf	(___ftdiv@f2+2)
	movf	(GetZAccl@adc_value+1),w
	clrf	(___lwtoft@c+1)
	addwf	(___lwtoft@c+1)
	movf	(GetZAccl@adc_value),w
	clrf	(___lwtoft@c)
	addwf	(___lwtoft@c)

	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(___ftmul@f2)
	movf	(1+(?___ftdiv)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(GetZAccl@t)
	movf	(1+(?___ftmul)),w
	movwf	(GetZAccl@t+1)
	movf	(2+(?___ftmul)),w
	movwf	(GetZAccl@t+2)
	line	75
	
l1294:	
;adxl335.c: 75: return t;
	movf	(GetZAccl@t),w
	movwf	(?_GetZAccl)
	movf	(GetZAccl@t+1),w
	movwf	(?_GetZAccl+1)
	movf	(GetZAccl@t+2),w
	movwf	(?_GetZAccl+2)
	goto	l105
	
l1296:	
	line	76
	
l105:	
	return
	opt stack 0
GLOBAL	__end_of_GetZAccl
	__end_of_GetZAccl:
	signat	_GetZAccl,91
	global	_GetYAccl

;; *************** function _GetYAccl *****************
;; Defined at:
;;		line 32 in file "E:\Study Material\XC8 PROJECTS\Motion Detector\adxl335.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  t               3   35[BANK0 ] float 
;;  adc_value       2   38[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  3   32[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       3       0
;;      Locals:         0       5       0
;;      Temps:          1       0       0
;;      Totals:         1       8       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ReadADC
;;		___ftdiv
;;		___ftmul
;;		___lwdiv
;;		___lwtoft
;; This function is called by:
;;		_Accident_Detect
;;		_Vib_Detect
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	line	32
global __ptext10
__ptext10:	;psect for function _GetYAccl
psect	text10
	file	"E:\Study Material\XC8 PROJECTS\Motion Detector\adxl335.c"
	line	32
	global	__size_of_GetYAccl
	__size_of_GetYAccl	equ	__end_of_GetYAccl-_GetYAccl
	
_GetYAccl:	
;incstack = 0
	opt	stack 4
; Regs used in _GetYAccl: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l1270:	
;adxl335.c: 35: float t;
;adxl335.c: 38: uint16_t adc_value=ReadADC(1);
	movlw	(01h)
	fcall	_ReadADC
	movf	(1+(?_ReadADC)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(GetYAccl@adc_value+1)
	addwf	(GetYAccl@adc_value+1)
	movf	(0+(?_ReadADC)),w
	clrf	(GetYAccl@adc_value)
	addwf	(GetYAccl@adc_value)

	line	39
	
l1272:	
;adxl335.c: 39: _delay((unsigned long)((100)*(4000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_GetYAccl+0)+0,f
u2167:
decfsz	(??_GetYAccl+0)+0,f
	goto	u2167
opt asmopt_on

	line	41
	
l1274:	
;adxl335.c: 41: adc_value+=ReadADC(1);
	movlw	(01h)
	fcall	_ReadADC
	movf	(0+(?_ReadADC)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(GetYAccl@adc_value),f
	skipnc
	incf	(GetYAccl@adc_value+1),f
	movf	(1+(?_ReadADC)),w
	addwf	(GetYAccl@adc_value+1),f
	line	42
;adxl335.c: 42: _delay((unsigned long)((100)*(4000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_GetYAccl+0)+0,f
u2177:
decfsz	(??_GetYAccl+0)+0,f
	goto	u2177
opt asmopt_on

	line	44
	
l1276:	
;adxl335.c: 44: adc_value+=ReadADC(1);
	movlw	(01h)
	fcall	_ReadADC
	movf	(0+(?_ReadADC)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(GetYAccl@adc_value),f
	skipnc
	incf	(GetYAccl@adc_value+1),f
	movf	(1+(?_ReadADC)),w
	addwf	(GetYAccl@adc_value+1),f
	line	45
	
l1278:	
;adxl335.c: 45: _delay((unsigned long)((100)*(4000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_GetYAccl+0)+0,f
u2187:
decfsz	(??_GetYAccl+0)+0,f
	goto	u2187
opt asmopt_on

	line	47
;adxl335.c: 47: adc_value=adc_value/3;
	movlw	low(03h)
	movwf	(___lwdiv@divisor)
	movlw	high(03h)
	movwf	((___lwdiv@divisor))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(GetYAccl@adc_value+1),w
	clrf	(___lwdiv@dividend+1)
	addwf	(___lwdiv@dividend+1)
	movf	(GetYAccl@adc_value),w
	clrf	(___lwdiv@dividend)
	addwf	(___lwdiv@dividend)

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(GetYAccl@adc_value+1)
	addwf	(GetYAccl@adc_value+1)
	movf	(0+(?___lwdiv)),w
	clrf	(GetYAccl@adc_value)
	addwf	(GetYAccl@adc_value)

	line	50
;adxl335.c: 50: t=((adc_value/1023.00)*500.00);
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0xfa
	movwf	(___ftmul@f1+1)
	movlw	0x43
	movwf	(___ftmul@f1+2)
	movlw	0xc0
	movwf	(___ftdiv@f2)
	movlw	0x7f
	movwf	(___ftdiv@f2+1)
	movlw	0x44
	movwf	(___ftdiv@f2+2)
	movf	(GetYAccl@adc_value+1),w
	clrf	(___lwtoft@c+1)
	addwf	(___lwtoft@c+1)
	movf	(GetYAccl@adc_value),w
	clrf	(___lwtoft@c)
	addwf	(___lwtoft@c)

	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(___ftmul@f2)
	movf	(1+(?___ftdiv)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(GetYAccl@t)
	movf	(1+(?___ftmul)),w
	movwf	(GetYAccl@t+1)
	movf	(2+(?___ftmul)),w
	movwf	(GetYAccl@t+2)
	line	52
	
l1280:	
;adxl335.c: 52: return t;
	movf	(GetYAccl@t),w
	movwf	(?_GetYAccl)
	movf	(GetYAccl@t+1),w
	movwf	(?_GetYAccl+1)
	movf	(GetYAccl@t+2),w
	movwf	(?_GetYAccl+2)
	goto	l102
	
l1282:	
	line	53
	
l102:	
	return
	opt stack 0
GLOBAL	__end_of_GetYAccl
	__end_of_GetYAccl:
	signat	_GetYAccl,91
	global	_GetXAccl

;; *************** function _GetXAccl *****************
;; Defined at:
;;		line 9 in file "E:\Study Material\XC8 PROJECTS\Motion Detector\adxl335.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  t               3   35[BANK0 ] float 
;;  adc_value       2   38[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  3   32[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       3       0
;;      Locals:         0       5       0
;;      Temps:          1       0       0
;;      Totals:         1       8       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ReadADC
;;		___ftdiv
;;		___ftmul
;;		___lwdiv
;;		___lwtoft
;; This function is called by:
;;		_Accident_Detect
;;		_Vib_Detect
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	line	9
global __ptext11
__ptext11:	;psect for function _GetXAccl
psect	text11
	file	"E:\Study Material\XC8 PROJECTS\Motion Detector\adxl335.c"
	line	9
	global	__size_of_GetXAccl
	__size_of_GetXAccl	equ	__end_of_GetXAccl-_GetXAccl
	
_GetXAccl:	
;incstack = 0
	opt	stack 4
; Regs used in _GetXAccl: [wreg+status,2+status,0+pclath+cstack]
	line	15
	
l1256:	
;adxl335.c: 12: float t;
;adxl335.c: 15: uint16_t adc_value=ReadADC(0);
	movlw	(0)
	fcall	_ReadADC
	movf	(1+(?_ReadADC)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(GetXAccl@adc_value+1)
	addwf	(GetXAccl@adc_value+1)
	movf	(0+(?_ReadADC)),w
	clrf	(GetXAccl@adc_value)
	addwf	(GetXAccl@adc_value)

	line	16
	
l1258:	
;adxl335.c: 16: _delay((unsigned long)((100)*(4000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_GetXAccl+0)+0,f
u2197:
decfsz	(??_GetXAccl+0)+0,f
	goto	u2197
opt asmopt_on

	line	18
	
l1260:	
;adxl335.c: 18: adc_value+=ReadADC(0);
	movlw	(0)
	fcall	_ReadADC
	movf	(0+(?_ReadADC)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(GetXAccl@adc_value),f
	skipnc
	incf	(GetXAccl@adc_value+1),f
	movf	(1+(?_ReadADC)),w
	addwf	(GetXAccl@adc_value+1),f
	line	19
;adxl335.c: 19: _delay((unsigned long)((100)*(4000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_GetXAccl+0)+0,f
u2207:
decfsz	(??_GetXAccl+0)+0,f
	goto	u2207
opt asmopt_on

	line	21
	
l1262:	
;adxl335.c: 21: adc_value+=ReadADC(0);
	movlw	(0)
	fcall	_ReadADC
	movf	(0+(?_ReadADC)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(GetXAccl@adc_value),f
	skipnc
	incf	(GetXAccl@adc_value+1),f
	movf	(1+(?_ReadADC)),w
	addwf	(GetXAccl@adc_value+1),f
	line	22
	
l1264:	
;adxl335.c: 22: _delay((unsigned long)((100)*(4000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_GetXAccl+0)+0,f
u2217:
decfsz	(??_GetXAccl+0)+0,f
	goto	u2217
opt asmopt_on

	line	24
;adxl335.c: 24: adc_value=adc_value/3;
	movlw	low(03h)
	movwf	(___lwdiv@divisor)
	movlw	high(03h)
	movwf	((___lwdiv@divisor))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(GetXAccl@adc_value+1),w
	clrf	(___lwdiv@dividend+1)
	addwf	(___lwdiv@dividend+1)
	movf	(GetXAccl@adc_value),w
	clrf	(___lwdiv@dividend)
	addwf	(___lwdiv@dividend)

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(GetXAccl@adc_value+1)
	addwf	(GetXAccl@adc_value+1)
	movf	(0+(?___lwdiv)),w
	clrf	(GetXAccl@adc_value)
	addwf	(GetXAccl@adc_value)

	line	27
;adxl335.c: 27: t=((adc_value/1023.00)*500.00);
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0xfa
	movwf	(___ftmul@f1+1)
	movlw	0x43
	movwf	(___ftmul@f1+2)
	movlw	0xc0
	movwf	(___ftdiv@f2)
	movlw	0x7f
	movwf	(___ftdiv@f2+1)
	movlw	0x44
	movwf	(___ftdiv@f2+2)
	movf	(GetXAccl@adc_value+1),w
	clrf	(___lwtoft@c+1)
	addwf	(___lwtoft@c+1)
	movf	(GetXAccl@adc_value),w
	clrf	(___lwtoft@c)
	addwf	(___lwtoft@c)

	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(___ftmul@f2)
	movf	(1+(?___ftdiv)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(GetXAccl@t)
	movf	(1+(?___ftmul)),w
	movwf	(GetXAccl@t+1)
	movf	(2+(?___ftmul)),w
	movwf	(GetXAccl@t+2)
	line	29
	
l1266:	
;adxl335.c: 29: return t;
	movf	(GetXAccl@t),w
	movwf	(?_GetXAccl)
	movf	(GetXAccl@t+1),w
	movwf	(?_GetXAccl+1)
	movf	(GetXAccl@t+2),w
	movwf	(?_GetXAccl+2)
	goto	l99
	
l1268:	
	line	30
	
l99:	
	return
	opt stack 0
GLOBAL	__end_of_GetXAccl
	__end_of_GetXAccl:
	signat	_GetXAccl,91
	global	___lwtoft

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 28 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         3       0       0
;;      Locals:         0       0       0
;;      Temps:          1       0       0
;;      Totals:         4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_GetXAccl
;;		_GetYAccl
;;		_GetZAccl
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
	line	28
global __ptext12
__ptext12:	;psect for function ___lwtoft
psect	text12
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
	line	28
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:	
;incstack = 0
	opt	stack 4
; Regs used in ___lwtoft: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l1252:	
	movf	(___lwtoft@c),w
	movwf	(___ftpack@arg)
	movf	(___lwtoft@c+1),w
	movwf	(___ftpack@arg+1)
	clrf	(___ftpack@arg+2)
	movlw	(08Eh)
	movwf	(??___lwtoft+0)+0
	movf	(??___lwtoft+0)+0,w
	movwf	(___ftpack@exp)
	clrf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___lwtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lwtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lwtoft+2)
	goto	l540
	
l1254:	
	line	31
	
l540:	
	return
	opt stack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
	signat	___lwtoft,4219
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[COMMON] unsigned int 
;;  counter         1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         4       0       0
;;      Locals:         3       0       0
;;      Temps:          1       0       0
;;      Totals:         8       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_GetXAccl
;;		_GetYAccl
;;		_GetZAccl
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
global __ptext13
__ptext13:	;psect for function ___lwdiv
psect	text13
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 5
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l1226:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l1228:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u1401
	goto	u1400
u1401:
	goto	l1248
u1400:
	line	16
	
l1230:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l1236
	
l520:	
	line	18
	
l1232:	
	movlw	01h
	
u1415:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u1415
	line	19
	
l1234:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l1236
	line	20
	
l519:	
	line	17
	
l1236:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u1421
	goto	u1420
u1421:
	goto	l1232
u1420:
	goto	l1238
	
l521:	
	goto	l1238
	line	21
	
l522:	
	line	22
	
l1238:	
	movlw	01h
	
u1435:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u1435
	line	23
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u1445
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u1445:
	skipc
	goto	u1441
	goto	u1440
u1441:
	goto	l1244
u1440:
	line	24
	
l1240:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l1242:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l1244
	line	26
	
l523:	
	line	27
	
l1244:	
	movlw	01h
	
u1455:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u1455
	line	28
	
l1246:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u1461
	goto	u1460
u1461:
	goto	l1238
u1460:
	goto	l1248
	
l524:	
	goto	l1248
	line	29
	
l518:	
	line	30
	
l1248:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l525
	
l1250:	
	line	31
	
l525:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   16[BANK0 ] float 
;;  f2              3   19[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   27[BANK0 ] unsigned um
;;  sign            1   31[BANK0 ] unsigned char 
;;  cntr            1   30[BANK0 ] unsigned char 
;;  exp             1   26[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   16[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       6       0
;;      Locals:         0       6       0
;;      Temps:          0       4       0
;;      Totals:         0      16       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_Accident_Detect
;;		_GetXAccl
;;		_GetYAccl
;;		_GetZAccl
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
global __ptext14
__ptext14:	;psect for function ___ftmul
psect	text14
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	67
	
l1176:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp)),f
	skipz
	goto	u1261
	goto	u1260
u1261:
	goto	l1182
u1260:
	line	68
	
l1178:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l411
	
l1180:	
	goto	l411
	
l410:	
	line	69
	
l1182:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign)),f
	skipz
	goto	u1271
	goto	u1270
u1271:
	goto	l1188
u1270:
	line	70
	
l1184:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l411
	
l1186:	
	goto	l411
	
l412:	
	line	71
	
l1188:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	addwf	(___ftmul@exp),f
	line	72
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u1285:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u1280:
	addlw	-1
	skipz
	goto	u1285
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	line	73
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u1295:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u1290:
	addlw	-1
	skipz
	goto	u1295
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	xorwf	(___ftmul@sign),f
	line	74
	movlw	(080h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	andwf	(___ftmul@sign),f
	line	75
	
l1190:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	77
	
l1192:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	78
	
l1194:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	79
	
l1196:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	134
	
l1198:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l1200
	line	135
	
l413:	
	line	136
	
l1200:	
	btfss	(___ftmul@f1),(0)&7
	goto	u1301
	goto	u1300
u1301:
	goto	l1204
u1300:
	line	137
	
l1202:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u1311
	addwf	(___ftmul@f3_as_product+1),f
u1311:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u1312
	addwf	(___ftmul@f3_as_product+2),f
u1312:

	goto	l1204
	
l414:	
	line	138
	
l1204:	
	movlw	01h
u1325:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u1325

	line	139
	
l1206:	
	movlw	01h
u1335:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u1335
	line	140
	
l1208:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u1341
	goto	u1340
u1341:
	goto	l1200
u1340:
	goto	l1210
	
l415:	
	line	143
	
l1210:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l1212
	line	144
	
l416:	
	line	145
	
l1212:	
	btfss	(___ftmul@f1),(0)&7
	goto	u1351
	goto	u1350
u1351:
	goto	l1216
u1350:
	line	146
	
l1214:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u1361
	addwf	(___ftmul@f3_as_product+1),f
u1361:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u1362
	addwf	(___ftmul@f3_as_product+2),f
u1362:

	goto	l1216
	
l417:	
	line	147
	
l1216:	
	movlw	01h
u1375:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u1375

	line	148
	
l1218:	
	movlw	01h
u1385:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u1385

	line	149
	
l1220:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u1391
	goto	u1390
u1391:
	goto	l1212
u1390:
	goto	l1222
	
l418:	
	line	156
	
l1222:	
	movf	(___ftmul@f3_as_product),w
	movwf	(___ftpack@arg)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftmul@exp),w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftmul@sign),w
	movwf	(??___ftmul+1)+0
	movf	(??___ftmul+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	goto	l411
	
l1224:	
	line	157
	
l411:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 49 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3    0[BANK0 ] float 
;;  f1              3    3[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   11[BANK0 ] float 
;;  sign            1   15[BANK0 ] unsigned char 
;;  exp             1   14[BANK0 ] unsigned char 
;;  cntr            1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       6       0
;;      Locals:         0       6       0
;;      Temps:          0       4       0
;;      Totals:         0      16       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_Accident_Detect
;;		_GetXAccl
;;		_GetYAccl
;;		_GetZAccl
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
	line	49
global __ptext15
__ptext15:	;psect for function ___ftdiv
psect	text15
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
	line	49
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l1134:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@exp)
	movf	((___ftdiv@exp)),f
	skipz
	goto	u1181
	goto	u1180
u1181:
	goto	l1140
u1180:
	line	56
	
l1136:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l396
	
l1138:	
	goto	l396
	
l395:	
	line	57
	
l1140:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	movf	((___ftdiv@sign)),f
	skipz
	goto	u1191
	goto	u1190
u1191:
	goto	l1146
u1190:
	line	58
	
l1142:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l396
	
l1144:	
	goto	l396
	
l397:	
	line	59
	
l1146:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l1148:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l1150:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u1205:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u1200:
	addlw	-1
	skipz
	goto	u1205
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l1152:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u1215:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u1210:
	addlw	-1
	skipz
	goto	u1215
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l1154:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l1156:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l1158:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	67
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	68
	movlw	(018h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftdiv@cntr)
	goto	l1160
	line	69
	
l398:	
	line	70
	
l1160:	
	movlw	01h
u1225:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u1225
	line	71
	
l1162:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u1235
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u1235
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u1235:
	skipc
	goto	u1231
	goto	u1230
u1231:
	goto	l1168
u1230:
	line	72
	
l1164:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	skipc
	incfsz	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	skipc
	incf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),f
	line	73
	
l1166:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l1168
	line	74
	
l399:	
	line	75
	
l1168:	
	movlw	01h
u1245:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u1245
	line	76
	
l1170:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u1251
	goto	u1250
u1251:
	goto	l1160
u1250:
	goto	l1172
	
l400:	
	line	77
	
l1172:	
	movf	(___ftdiv@f3),w
	movwf	(___ftpack@arg)
	movf	(___ftdiv@f3+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftdiv@f3+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftdiv@exp),w
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftdiv@sign),w
	movwf	(??___ftdiv+1)+0
	movf	(??___ftdiv+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	goto	l396
	
l1174:	
	line	78
	
l396:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMMON] unsigned um
;;  exp             1    3[COMMON] unsigned char 
;;  sign            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         5       0       0
;;      Locals:         0       0       0
;;      Temps:          3       0       0
;;      Totals:         8       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___lbtoft
;;		___lwtoft
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
global __ptext16
__ptext16:	;psect for function ___ftpack
psect	text16
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;incstack = 0
	opt	stack 5
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l1088:	
	movf	(___ftpack@exp),w
	skipz
	goto	u1050
	goto	l1092
u1050:
	
l1090:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u1061
	goto	u1060
u1061:
	goto	l1098
u1060:
	goto	l1092
	
l345:	
	line	65
	
l1092:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l346
	
l1094:	
	goto	l346
	
l343:	
	line	66
	goto	l1098
	
l348:	
	line	67
	
l1096:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u1075:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u1075

	goto	l1098
	line	69
	
l347:	
	line	66
	
l1098:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1081
	goto	u1080
u1081:
	goto	l1096
u1080:
	goto	l350
	
l349:	
	line	70
	goto	l350
	
l351:	
	line	71
	
l1100:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l1102:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
l1104:	
	movlw	01h
u1095:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u1095

	line	74
	
l350:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1101
	goto	u1100
u1101:
	goto	l1100
u1100:
	goto	l1108
	
l352:	
	line	75
	goto	l1108
	
l354:	
	line	76
	
l1106:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u1115:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u1115
	goto	l1108
	line	78
	
l353:	
	line	75
	
l1108:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u1121
	goto	u1120
u1121:
	goto	l1106
u1120:
	
l355:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u1131
	goto	u1130
u1131:
	goto	l356
u1130:
	line	80
	
l1110:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l356:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l1112:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u1145:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u1140:
	addlw	-1
	skipz
	goto	u1145
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l1114:	
	movf	(___ftpack@sign),w
	skipz
	goto	u1150
	goto	l357
u1150:
	line	84
	
l1116:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l357:	
	line	85
	line	86
	
l346:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_ReadADC

;; *************** function _ReadADC *****************
;; Defined at:
;;		line 25 in file "E:\Study Material\XC8 PROJECTS\Motion Detector\adc_pic16.c"
;; Parameters:    Size  Location     Type
;;  ch              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch              1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         2       0       0
;;      Locals:         1       0       0
;;      Temps:          1       0       0
;;      Totals:         4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_GetXAccl
;;		_GetYAccl
;;		_GetZAccl
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\Motion Detector\adc_pic16.c"
	line	25
global __ptext17
__ptext17:	;psect for function _ReadADC
psect	text17
	file	"E:\Study Material\XC8 PROJECTS\Motion Detector\adc_pic16.c"
	line	25
	global	__size_of_ReadADC
	__size_of_ReadADC	equ	__end_of_ReadADC-_ReadADC
	
_ReadADC:	
;incstack = 0
	opt	stack 5
; Regs used in _ReadADC: [wreg+status,2+status,0]
;ReadADC@ch stored from wreg
	movwf	(ReadADC@ch)
	line	27
	
l1118:	
;adc_pic16.c: 27: if(ch>7) return 0;
	movlw	(08h)
	subwf	(ReadADC@ch),w
	skipc
	goto	u1161
	goto	u1160
u1161:
	goto	l1124
u1160:
	
l1120:	
	clrf	(?_ReadADC)
	clrf	(?_ReadADC+1)
	goto	l89
	
l1122:	
	goto	l89
	
l88:	
	line	29
	
l1124:	
;adc_pic16.c: 29: ADCON0bits.CHS=ch;
	movf	(ReadADC@ch),w
	movwf	(??_ReadADC+0)+0
	rlf	(??_ReadADC+0)+0,f
	rlf	(??_ReadADC+0)+0,f
	rlf	(??_ReadADC+0)+0,f
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(31),w	;volatile
	xorwf	(??_ReadADC+0)+0,w
	andlw	not (((1<<3)-1)<<3)
	xorwf	(??_ReadADC+0)+0,w
	movwf	(31)	;volatile
	line	32
	
l1126:	
;adc_pic16.c: 32: _delay((unsigned long)((100)*(4000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_ReadADC+0)+0,f
u2227:
decfsz	(??_ReadADC+0)+0,f
	goto	u2227
opt asmopt_on

	line	35
	
l1128:	
;adc_pic16.c: 35: ADCON0bits.GO=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(31),2	;volatile
	line	38
;adc_pic16.c: 38: while(ADCON0bits.GO);
	goto	l90
	
l91:	
	
l90:	
	btfsc	(31),2	;volatile
	goto	u1171
	goto	u1170
u1171:
	goto	l90
u1170:
	goto	l1130
	
l92:	
	line	40
	
l1130:	
;adc_pic16.c: 40: return ((ADRESH<<8)|ADRESL);
	movf	(30),w	;volatile
	clrf	(?_ReadADC+1)
	addwf	(?_ReadADC+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	clrf	(?_ReadADC)
	addwf	(?_ReadADC)

	goto	l89
	
l1132:	
	line	42
	
l89:	
	return
	opt stack 0
GLOBAL	__end_of_ReadADC
	__end_of_ReadADC:
	signat	_ReadADC,4218
	global	_ADCInit

;; *************** function _ADCInit *****************
;; Defined at:
;;		line 8 in file "E:\Study Material\XC8 PROJECTS\Motion Detector\adc_pic16.c"
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
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1
	line	8
global __ptext18
__ptext18:	;psect for function _ADCInit
psect	text18
	file	"E:\Study Material\XC8 PROJECTS\Motion Detector\adc_pic16.c"
	line	8
	global	__size_of_ADCInit
	__size_of_ADCInit	equ	__end_of_ADCInit-_ADCInit
	
_ADCInit:	
;incstack = 0
	opt	stack 7
; Regs used in _ADCInit: [wreg+status,2+status,0]
	line	10
	
l1462:	
;adc_pic16.c: 10: ADCON1bits.ADFM=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(159)^080h,7	;volatile
	line	15
	
l1464:	
;adc_pic16.c: 15: ADCON1bits.PCFG=0x00;
	movlw	((0 & ((1<<4)-1))<<0)|not (((1<<4)-1)<<0)
	andwf	(159)^080h,f	;volatile
	line	18
;adc_pic16.c: 18: ADCON0bits.ADCS=0b10;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(31),w	;volatile
	andlw	not (((1<<2)-1)<<6)
	iorlw	(02h & ((1<<2)-1))<<6
	movwf	(31)	;volatile
	line	22
	
l1466:	
;adc_pic16.c: 22: ADCON0bits.ADON=1;
	bsf	(31),0	;volatile
	line	24
	
l85:	
	return
	opt stack 0
GLOBAL	__end_of_ADCInit
	__end_of_ADCInit:
	signat	_ADCInit,88
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

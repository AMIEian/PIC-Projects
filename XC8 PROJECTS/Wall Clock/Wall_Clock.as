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
	FNCALL	_main,_MAX7219_Init
	FNCALL	_main,___awmod
	FNCALL	_main,_display_time
	FNCALL	_main,_rand
	FNCALL	_main,_srand
	FNCALL	_main,_update_time
	FNCALL	_update_time,_check_alarm
	FNCALL	_update_time,_update_date
	FNCALL	_rand,___lmul
	FNCALL	_rand,_srand
	FNCALL	_display_time,___awdiv
	FNCALL	_display_time,___awmod
	FNCALL	_display_time,_display_date
	FNCALL	_display_time,_display_mins
	FNCALL	_display_time,_display_secs
	FNCALL	_display_date,_MAX7219_DisplayChar
	FNCALL	_MAX7219_DisplayChar,_MAX7219_LookupCode
	FNCALL	_MAX7219_DisplayChar,_MAX7219_Write
	FNCALL	_MAX7219_Init,_MAX7219_Clear
	FNCALL	_MAX7219_Init,_MAX7219_DisplayTestStop
	FNCALL	_MAX7219_Init,_MAX7219_SetBrightness
	FNCALL	_MAX7219_Init,_MAX7219_ShutdownStop
	FNCALL	_MAX7219_Init,_MAX7219_Write
	FNCALL	_MAX7219_ShutdownStop,_MAX7219_Write
	FNCALL	_MAX7219_SetBrightness,_MAX7219_Write
	FNCALL	_MAX7219_DisplayTestStop,_MAX7219_Write
	FNCALL	_MAX7219_Clear,_MAX7219_Write
	FNCALL	_MAX7219_Write,_MAX7219_SendByte
	FNROOT	_main
	FNCALL	_ISR,___bmul
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_alarm_hrs
	global	_date_flag
	global	_day
	global	_hrs
	global	_min_flag
	global	_month
	global	_year
	global	_display
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"E:\Study Material\XC8 PROJECTS\Wall Clock\timekeeper.h"
	line	8

;initializer for _alarm_hrs
	retlw	0Ch
	line	9

;initializer for _date_flag
	retlw	01h
	line	7

;initializer for _day
	retlw	01h

;initializer for _hrs
	retlw	0Ch
	line	9

;initializer for _min_flag
	retlw	01h
	line	7

;initializer for _month
	retlw	01h

;initializer for _year
	retlw	0Fh
psect	idataBANK1,class=CODE,space=0,delta=2,noexec
global __pidataBANK1
__pidataBANK1:
	file	"E:\Study Material\XC8 PROJECTS\Wall Clock\display.h"
	line	6

;initializer for _display
	retlw	03Fh
	retlw	06h
	retlw	05Bh
	retlw	04Fh
	retlw	066h
	retlw	06Dh
	retlw	07Dh
	retlw	07h
	retlw	07Fh
	retlw	06Fh
	retlw	0
	global	_MAX7219_Font
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
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
	global __stringbase
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	file	"E:\Study Material\XC8 PROJECTS\Wall Clock\MAX7219.C"
	line	269
_MAX7219_Font:
	retlw	020h
	retlw	0
	retlw	030h
	retlw	07Eh
	retlw	031h
	retlw	030h
	retlw	032h
	retlw	06Dh
	retlw	033h
	retlw	079h
	retlw	034h
	retlw	033h
	retlw	035h
	retlw	05Bh
	retlw	036h
	retlw	05Fh
	retlw	037h
	retlw	070h
	retlw	038h
	retlw	07Fh
	retlw	039h
	retlw	07Bh
	retlw	041h
	retlw	077h
	retlw	042h
	retlw	01Fh
	retlw	043h
	retlw	04Eh
	retlw	044h
	retlw	03Dh
	retlw	045h
	retlw	04Fh
	retlw	046h
	retlw	047h
	retlw	047h
	retlw	05Eh
	retlw	04Ch
	retlw	0Eh
	retlw	02Dh
	retlw	01h
	retlw	0
	retlw	0
	global __end_of_MAX7219_Font
__end_of_MAX7219_Font:
	global	_MAX7219_Font
	global	_ch
	global	_error
	global	_index
	global	_set_alarm
	global	_randx
	global	_msecs
	global	_ran
	global	_Twenty_Four_Hrs
	global	_adjustment
	global	_alarm_auto_repeat
	global	_alarm_bell
	global	_alarm_flag
	global	_alarm_mins
	global	_beeps
	global	_eagle_flag
	global	_hrs_flag
	global	_mins
	global	_randf
	global	_sec_flag
	global	_secs
	global	_date_display_array
	global	_time_display_array
	global	_alarm_array
	global	_PORTB
_PORTB	set	0x6
	global	_RCREG
_RCREG	set	0x1A
	global	_RCSTAbits
_RCSTAbits	set	0x18
	global	_TMR0
_TMR0	set	0x1
	global	_GIE
_GIE	set	0x5F
	global	_PEIE
_PEIE	set	0x5E
	global	_RB1
_RB1	set	0x31
	global	_RB2
_RB2	set	0x32
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
	global	_RC0
_RC0	set	0x38
	global	_RC1
_RC1	set	0x39
	global	_RC2
_RC2	set	0x3A
	global	_RC5
_RC5	set	0x3D
	global	_RCIF
_RCIF	set	0x65
	global	_T0IE
_T0IE	set	0x5D
	global	_T0IF
_T0IF	set	0x5A
	global	_ADCON1
_ADCON1	set	0x9F
	global	_OPTION_REG
_OPTION_REG	set	0x81
	global	_SPBRG
_SPBRG	set	0x99
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_TXSTAbits
_TXSTAbits	set	0x98
	global	_RCIE
_RCIE	set	0x465
; #config settings
	file	"Wall_Clock.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_ch:
       ds      1

_error:
       ds      1

_index:
       ds      1

_set_alarm:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_randx:
       ds      4

_msecs:
       ds      2

_ran:
       ds      2

_Twenty_Four_Hrs:
       ds      1

_adjustment:
       ds      1

_alarm_auto_repeat:
       ds      1

_alarm_bell:
       ds      1

_alarm_flag:
       ds      1

_alarm_mins:
       ds      1

_beeps:
       ds      1

_eagle_flag:
       ds      1

_hrs_flag:
       ds      1

_mins:
       ds      1

_randf:
       ds      1

_sec_flag:
       ds      1

_secs:
       ds      1

_date_display_array:
       ds      8

_time_display_array:
       ds      6

_alarm_array:
       ds      4

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"E:\Study Material\XC8 PROJECTS\Wall Clock\timekeeper.h"
	line	8
_alarm_hrs:
       ds      1

psect	dataBANK0
	file	"E:\Study Material\XC8 PROJECTS\Wall Clock\timekeeper.h"
	line	9
_date_flag:
       ds      1

psect	dataBANK0
	file	"E:\Study Material\XC8 PROJECTS\Wall Clock\timekeeper.h"
	line	7
_day:
       ds      1

psect	dataBANK0
	file	"E:\Study Material\XC8 PROJECTS\Wall Clock\timekeeper.h"
	line	7
_hrs:
       ds      1

psect	dataBANK0
	file	"E:\Study Material\XC8 PROJECTS\Wall Clock\timekeeper.h"
	line	9
_min_flag:
       ds      1

psect	dataBANK0
	file	"E:\Study Material\XC8 PROJECTS\Wall Clock\timekeeper.h"
	line	7
_month:
       ds      1

psect	dataBANK0
	file	"E:\Study Material\XC8 PROJECTS\Wall Clock\timekeeper.h"
	line	7
_year:
       ds      1

psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"E:\Study Material\XC8 PROJECTS\Wall Clock\display.h"
	line	6
_display:
       ds      11

	file	"Wall_Clock.as"
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
	movlw	low((__pbssBANK0)+027h)
	fcall	clear_ram0
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
	fcall	__pidataBANK1+6		;fetch initializer
	movwf	__pdataBANK1+6&07fh		
	fcall	__pidataBANK1+7		;fetch initializer
	movwf	__pdataBANK1+7&07fh		
	fcall	__pidataBANK1+8		;fetch initializer
	movwf	__pdataBANK1+8&07fh		
	fcall	__pidataBANK1+9		;fetch initializer
	movwf	__pdataBANK1+9&07fh		
	fcall	__pidataBANK1+10		;fetch initializer
	movwf	__pdataBANK1+10&07fh		
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	fcall	__pidataBANK0+5		;fetch initializer
	movwf	__pdataBANK0+5&07fh		
	fcall	__pidataBANK0+6		;fetch initializer
	movwf	__pdataBANK0+6&07fh		
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_update_date:	; 0 bytes @ 0x0
?_check_alarm:	; 0 bytes @ 0x0
?_MAX7219_Init:	; 0 bytes @ 0x0
?_display_time:	; 0 bytes @ 0x0
?_display_secs:	; 0 bytes @ 0x0
?_display_mins:	; 0 bytes @ 0x0
?_display_date:	; 0 bytes @ 0x0
?_MAX7219_ShutdownStop:	; 0 bytes @ 0x0
?_MAX7219_DisplayTestStop:	; 0 bytes @ 0x0
?_MAX7219_Clear:	; 0 bytes @ 0x0
?_MAX7219_SetBrightness:	; 0 bytes @ 0x0
?_MAX7219_SendByte:	; 0 bytes @ 0x0
?_update_time:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
?_MAX7219_LookupCode:	; 1 bytes @ 0x0
?___bmul:	; 1 bytes @ 0x0
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x0
	ds	1
??___bmul:	; 0 bytes @ 0x1
	ds	1
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x2
	ds	1
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x3
	ds	1
??_ISR:	; 0 bytes @ 0x4
	ds	6
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_update_date:	; 0 bytes @ 0x0
??_check_alarm:	; 0 bytes @ 0x0
?_srand:	; 0 bytes @ 0x0
??_display_secs:	; 0 bytes @ 0x0
??_display_mins:	; 0 bytes @ 0x0
??_MAX7219_LookupCode:	; 0 bytes @ 0x0
??_MAX7219_SendByte:	; 0 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	?___lmul
?___lmul:	; 4 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	global	srand@x
srand@x:	; 2 bytes @ 0x0
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0x0
	ds	1
	global	update_date@temp
update_date@temp:	; 1 bytes @ 0x1
	global	MAX7219_LookupCode@character
MAX7219_LookupCode@character:	; 1 bytes @ 0x1
	ds	1
??_srand:	; 0 bytes @ 0x2
??_update_time:	; 0 bytes @ 0x2
	global	MAX7219_LookupCode@i
MAX7219_LookupCode@i:	; 1 bytes @ 0x2
	global	MAX7219_SendByte@dataout
MAX7219_SendByte@dataout:	; 1 bytes @ 0x2
	global	display_secs@number
display_secs@number:	; 2 bytes @ 0x2
	global	display_mins@number
display_mins@number:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	MAX7219_SendByte@mask
MAX7219_SendByte@mask:	; 1 bytes @ 0x3
	ds	1
??___awdiv:	; 0 bytes @ 0x4
??___awmod:	; 0 bytes @ 0x4
	global	MAX7219_SendByte@i
MAX7219_SendByte@i:	; 1 bytes @ 0x4
	global	display_secs@Flag
display_secs@Flag:	; 2 bytes @ 0x4
	global	display_mins@Flag
display_mins@Flag:	; 2 bytes @ 0x4
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x4
	ds	1
?_MAX7219_Write:	; 0 bytes @ 0x5
	global	MAX7219_Write@dataout
MAX7219_Write@dataout:	; 1 bytes @ 0x5
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
??_MAX7219_Write:	; 0 bytes @ 0x6
	global	MAX7219_Write@reg_number
MAX7219_Write@reg_number:	; 1 bytes @ 0x6
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	global	display_secs@Mask
display_secs@Mask:	; 2 bytes @ 0x6
	global	display_mins@Mask
display_mins@Mask:	; 2 bytes @ 0x6
	ds	1
?_MAX7219_DisplayChar:	; 0 bytes @ 0x7
??_MAX7219_ShutdownStop:	; 0 bytes @ 0x7
??_MAX7219_DisplayTestStop:	; 0 bytes @ 0x7
??_MAX7219_Clear:	; 0 bytes @ 0x7
??_MAX7219_SetBrightness:	; 0 bytes @ 0x7
	global	MAX7219_DisplayChar@character
MAX7219_DisplayChar@character:	; 1 bytes @ 0x7
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	1
??___lmul:	; 0 bytes @ 0x8
	global	MAX7219_SetBrightness@brightness
MAX7219_SetBrightness@brightness:	; 1 bytes @ 0x8
	global	MAX7219_Clear@i
MAX7219_Clear@i:	; 1 bytes @ 0x8
	global	MAX7219_DisplayChar@dot
MAX7219_DisplayChar@dot:	; 1 bytes @ 0x8
	global	display_secs@bits
display_secs@bits:	; 2 bytes @ 0x8
	global	display_mins@bits
display_mins@bits:	; 2 bytes @ 0x8
	ds	1
??_MAX7219_Init:	; 0 bytes @ 0x9
??_MAX7219_DisplayChar:	; 0 bytes @ 0x9
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x9
	ds	1
	global	MAX7219_DisplayChar@digit
MAX7219_DisplayChar@digit:	; 1 bytes @ 0xA
	global	display_secs@digit
display_secs@digit:	; 2 bytes @ 0xA
	global	display_mins@digit
display_mins@digit:	; 2 bytes @ 0xA
	ds	1
	global	MAX7219_DisplayChar@ch
MAX7219_DisplayChar@ch:	; 1 bytes @ 0xB
	ds	1
??_display_date:	; 0 bytes @ 0xC
	ds	1
	global	?_rand
?_rand:	; 2 bytes @ 0xD
	global	display_date@i
display_date@i:	; 1 bytes @ 0xD
	ds	1
??_display_time:	; 0 bytes @ 0xE
	ds	1
??_rand:	; 0 bytes @ 0xF
	ds	2
	global	display_time@temp
display_time@temp:	; 1 bytes @ 0x11
	ds	7
??_main:	; 0 bytes @ 0x18
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    42
;!    Data        18
;!    BSS         43
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     10      14
;!    BANK0            80     26      72
;!    BANK1            32      0      11

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
;!    _ISR->___bmul
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_rand
;!    _update_time->_update_date
;!    _rand->___lmul
;!    _display_time->_display_date
;!    _display_date->_MAX7219_DisplayChar
;!    _MAX7219_DisplayChar->_MAX7219_Write
;!    _MAX7219_Init->_MAX7219_Clear
;!    _MAX7219_Init->_MAX7219_SetBrightness
;!    _MAX7219_ShutdownStop->_MAX7219_Write
;!    _MAX7219_SetBrightness->_MAX7219_Write
;!    _MAX7219_DisplayTestStop->_MAX7219_Write
;!    _MAX7219_Clear->_MAX7219_Write
;!    _MAX7219_Write->_MAX7219_SendByte
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
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 2     2      0    8532
;!                                             24 BANK0      2     2      0
;!                       _MAX7219_Init
;!                            ___awmod
;!                       _display_time
;!                               _rand
;!                              _srand
;!                        _update_time
;! ---------------------------------------------------------------------------------
;! (1) _update_time                                          1     1      0      23
;!                                              2 BANK0      1     1      0
;!                        _check_alarm
;!                        _update_date
;! ---------------------------------------------------------------------------------
;! (2) _update_date                                          2     2      0      23
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (2) _check_alarm                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _rand                                                11     9      2     326
;!                                             13 BANK0     11     9      2
;!                             ___lmul
;!                              _srand
;! ---------------------------------------------------------------------------------
;! (1) _srand                                                2     0      2     128
;!                                              0 BANK0      2     0      2
;! ---------------------------------------------------------------------------------
;! (2) ___lmul                                              13     5      8     198
;!                                              0 BANK0     13     5      8
;! ---------------------------------------------------------------------------------
;! (1) _display_time                                         4     4      0    3756
;!                                             14 BANK0      4     4      0
;!                            ___awdiv
;!                            ___awmod
;!                       _display_date
;!                       _display_mins
;!                       _display_secs
;! ---------------------------------------------------------------------------------
;! (2) _display_secs                                        12    12      0     228
;!                                              0 BANK0     12    12      0
;! ---------------------------------------------------------------------------------
;! (2) _display_mins                                        12    12      0     228
;!                                              0 BANK0     12    12      0
;! ---------------------------------------------------------------------------------
;! (2) _display_date                                         2     2      0    1032
;!                                             12 BANK0      2     2      0
;!                _MAX7219_DisplayChar
;! ---------------------------------------------------------------------------------
;! (3) _MAX7219_DisplayChar                                  5     3      2     942
;!                                              7 BANK0      5     3      2
;!                 _MAX7219_LookupCode
;!                      _MAX7219_Write
;! ---------------------------------------------------------------------------------
;! (4) _MAX7219_LookupCode                                   3     3      0      90
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (2) ___awmod                                              7     3      4    1038
;!                                              0 BANK0      7     3      4
;! ---------------------------------------------------------------------------------
;! (2) ___awdiv                                              9     5      4     936
;!                                              0 BANK0      9     5      4
;! ---------------------------------------------------------------------------------
;! (1) _MAX7219_Init                                         1     1      0    3261
;!                                              9 BANK0      1     1      0
;!                      _MAX7219_Clear
;!            _MAX7219_DisplayTestStop
;!              _MAX7219_SetBrightness
;!               _MAX7219_ShutdownStop
;!                      _MAX7219_Write
;! ---------------------------------------------------------------------------------
;! (2) _MAX7219_ShutdownStop                                 0     0      0     634
;!                      _MAX7219_Write
;! ---------------------------------------------------------------------------------
;! (2) _MAX7219_SetBrightness                                2     2      0     657
;!                                              7 BANK0      2     2      0
;!                      _MAX7219_Write
;! ---------------------------------------------------------------------------------
;! (2) _MAX7219_DisplayTestStop                              0     0      0     634
;!                      _MAX7219_Write
;! ---------------------------------------------------------------------------------
;! (2) _MAX7219_Clear                                        2     2      0     702
;!                                              7 BANK0      2     2      0
;!                      _MAX7219_Write
;! ---------------------------------------------------------------------------------
;! (4) _MAX7219_Write                                        2     1      1     634
;!                                              5 BANK0      2     1      1
;!                   _MAX7219_SendByte
;! ---------------------------------------------------------------------------------
;! (5) _MAX7219_SendByte                                     5     5      0     113
;!                                              0 BANK0      5     5      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (6) _ISR                                                  6     6      0     516
;!                                              4 COMMON     6     6      0
;!                             ___bmul
;! ---------------------------------------------------------------------------------
;! (7) ___bmul                                               4     3      1     516
;!                                              0 COMMON     4     3      1
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 7
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _MAX7219_Init
;!     _MAX7219_Clear
;!       _MAX7219_Write
;!         _MAX7219_SendByte
;!     _MAX7219_DisplayTestStop
;!       _MAX7219_Write
;!         _MAX7219_SendByte
;!     _MAX7219_SetBrightness
;!       _MAX7219_Write
;!         _MAX7219_SendByte
;!     _MAX7219_ShutdownStop
;!       _MAX7219_Write
;!         _MAX7219_SendByte
;!     _MAX7219_Write
;!       _MAX7219_SendByte
;!   ___awmod
;!   _display_time
;!     ___awdiv
;!     ___awmod
;!     _display_date
;!       _MAX7219_DisplayChar
;!         _MAX7219_LookupCode
;!         _MAX7219_Write
;!           _MAX7219_SendByte
;!     _display_mins
;!     _display_secs
;!   _rand
;!     ___lmul
;!     _srand
;!   _srand
;!   _update_time
;!     _check_alarm
;!     _update_date
;!
;! _ISR (ROOT)
;!   ___bmul
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               20      0       B       7       34.4%
;!BITBANK1            20      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     1A      48       5       90.0%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      A       E       1      100.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      61       8        0.0%
;!ABS                  0      0      61       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA              40      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 13 in file "E:\Study Material\XC8 PROJECTS\Wall Clock\wallclock.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       2       0
;;      Totals:         0       2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_MAX7219_Init
;;		___awmod
;;		_display_time
;;		_rand
;;		_srand
;;		_update_time
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"E:\Study Material\XC8 PROJECTS\Wall Clock\wallclock.c"
	line	13
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"E:\Study Material\XC8 PROJECTS\Wall Clock\wallclock.c"
	line	13
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	15
	
l1944:	
;wallclock.c: 15: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	16
	
l1946:	
;wallclock.c: 16: TRISC = 0xC0;
	movlw	(0C0h)
	movwf	(135)^080h	;volatile
	line	17
	
l1948:	
;wallclock.c: 17: ADCON1 = 0x06;
	movlw	(06h)
	movwf	(159)^080h	;volatile
	line	19
;wallclock.c: 19: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	20
	
l1950:	
;wallclock.c: 20: RC5 = 0;
	bcf	(61/8),(61)&7	;volatile
	line	23
	
l1952:	
;wallclock.c: 23: MAX7219_Init ();
	fcall	_MAX7219_Init
	line	26
	
l1954:	
;wallclock.c: 26: SPBRG=25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	29
	
l1956:	
;wallclock.c: 29: TXSTAbits.TX9=0;
	bcf	(152)^080h,6	;volatile
	line	30
	
l1958:	
;wallclock.c: 30: TXSTAbits.TXEN=1;
	bsf	(152)^080h,5	;volatile
	line	31
	
l1960:	
;wallclock.c: 31: TXSTAbits.SYNC=0;
	bcf	(152)^080h,4	;volatile
	line	32
	
l1962:	
;wallclock.c: 32: TXSTAbits.BRGH=1;
	bsf	(152)^080h,2	;volatile
	line	35
	
l1964:	
;wallclock.c: 35: RCSTAbits.SPEN=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(24),7	;volatile
	line	36
	
l1966:	
;wallclock.c: 36: RCSTAbits.RX9=0;
	bcf	(24),6	;volatile
	line	37
	
l1968:	
;wallclock.c: 37: RCSTAbits.CREN=1;
	bsf	(24),4	;volatile
	line	38
	
l1970:	
;wallclock.c: 38: RCSTAbits.ADDEN=0;
	bcf	(24),3	;volatile
	line	41
	
l1972:	
;wallclock.c: 41: RCIE=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1125/8)^080h,(1125)&7	;volatile
	line	42
	
l1974:	
;wallclock.c: 42: PEIE=1;
	bsf	(94/8),(94)&7	;volatile
	line	45
	
l1976:	
;wallclock.c: 45: OPTION_REG = 0xC1;
	movlw	(0C1h)
	movwf	(129)^080h	;volatile
	line	46
	
l1978:	
;wallclock.c: 46: T0IE = 1;
	bsf	(93/8),(93)&7	;volatile
	line	47
	
l1980:	
;wallclock.c: 47: TMR0 = 17;
	movlw	(011h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	49
	
l1982:	
;wallclock.c: 49: (GIE = 1);
	bsf	(95/8),(95)&7	;volatile
	line	51
	
l1984:	
;wallclock.c: 51: srand(100);
	movlw	low(064h)
	movwf	(srand@x)
	movlw	high(064h)
	movwf	((srand@x))+1
	fcall	_srand
	goto	l1986
	line	53
;wallclock.c: 53: while(1)
	
l183:	
	line	55
	
l1986:	
;wallclock.c: 54: {
;wallclock.c: 55: if(sec_flag == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_sec_flag),w
	xorlw	01h
	skipz
	goto	u1881
	goto	u1880
u1881:
	goto	l1986
u1880:
	line	57
	
l1988:	
;wallclock.c: 56: {
;wallclock.c: 57: if((secs % 5) == 0)
	movlw	low(05h)
	movwf	(___awmod@divisor)
	movlw	high(05h)
	movwf	((___awmod@divisor))+1
	movf	(_secs),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(___awmod@dividend)
	movf	1+(??_main+0)+0,w
	movwf	(___awmod@dividend+1)
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((1+(?___awmod))),w
	iorwf	((0+(?___awmod))),w
	skipz
	goto	u1891
	goto	u1890
u1891:
	goto	l1996
u1890:
	line	59
	
l1990:	
;wallclock.c: 58: {
;wallclock.c: 59: ran = rand();
	fcall	_rand
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_rand)),w
	clrf	(_ran+1)
	addwf	(_ran+1)
	movf	(0+(?_rand)),w
	clrf	(_ran)
	addwf	(_ran)

	line	60
	
l1992:	
;wallclock.c: 60: if((ran % 2) == 0)
	btfsc	(_ran),(0)&7
	goto	u1901
	goto	u1900
u1901:
	goto	l186
u1900:
	line	61
	
l1994:	
;wallclock.c: 61: eagle_flag = 1;
	clrf	(_eagle_flag)
	incf	(_eagle_flag),f
	goto	l1996
	line	62
	
l186:	
	line	63
;wallclock.c: 62: else
;wallclock.c: 63: date_flag = 1;
	clrf	(_date_flag)
	incf	(_date_flag),f
	goto	l1996
	
l187:	
	goto	l1996
	line	64
	
l185:	
	line	66
	
l1996:	
;wallclock.c: 64: }
;wallclock.c: 66: update_time();
	fcall	_update_time
	line	67
;wallclock.c: 67: display_time();
	fcall	_display_time
	line	68
	
l1998:	
;wallclock.c: 68: sec_flag = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_sec_flag)
	line	69
	
l2000:	
;wallclock.c: 69: if(alarm_bell == 1 && secs < 15)
	movf	(_alarm_bell),w
	xorlw	01h
	skipz
	goto	u1911
	goto	u1910
u1911:
	goto	l188
u1910:
	
l2002:	
	movlw	(0Fh)
	subwf	(_secs),w
	skipnc
	goto	u1921
	goto	u1920
u1921:
	goto	l188
u1920:
	line	70
	
l2004:	
;wallclock.c: 70: RC5 = 1;
	bsf	(61/8),(61)&7	;volatile
	goto	l2006
	line	71
	
l188:	
	line	72
;wallclock.c: 71: else
;wallclock.c: 72: RC5 = 0;
	bcf	(61/8),(61)&7	;volatile
	goto	l2006
	
l189:	
	line	73
	
l2006:	
;wallclock.c: 73: if(beeps > 0)
	movf	(_beeps),w
	skipz
	goto	u1930
	goto	l1986
u1930:
	line	75
	
l2008:	
;wallclock.c: 74: {
;wallclock.c: 75: RB1 = ~RB1;
	movlw	1<<((49)&7)
	xorwf	((49)/8),f
	line	76
	
l2010:	
;wallclock.c: 76: beeps--;
	movlw	low(01h)
	subwf	(_beeps),f
	goto	l1986
	line	77
	
l190:	
	goto	l1986
	line	78
	
l184:	
	goto	l1986
	line	79
	
l191:	
	line	53
	goto	l1986
	
l192:	
	line	80
	
l193:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_update_time

;; *************** function _update_time *****************
;; Defined at:
;;		line 3 in file "E:\Study Material\XC8 PROJECTS\Wall Clock\timekeeper.C"
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
;;      Temps:          0       1       0
;;      Totals:         0       1       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_check_alarm
;;		_update_date
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\Wall Clock\timekeeper.C"
	line	3
global __ptext1
__ptext1:	;psect for function _update_time
psect	text1
	file	"E:\Study Material\XC8 PROJECTS\Wall Clock\timekeeper.C"
	line	3
	global	__size_of_update_time
	__size_of_update_time	equ	__end_of_update_time-_update_time
	
_update_time:	
;incstack = 0
	opt	stack 4
; Regs used in _update_time: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	6
	
l1802:	
;timekeeper.C: 6: if(secs == 60)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_secs),w
	xorlw	03Ch
	skipz
	goto	u1691
	goto	u1690
u1691:
	goto	l47
u1690:
	line	8
	
l1804:	
;timekeeper.C: 7: {
;timekeeper.C: 8: secs = 0;
	clrf	(_secs)
	line	9
	
l1806:	
;timekeeper.C: 9: mins++;
	movlw	(01h)
	movwf	(??_update_time+0)+0
	movf	(??_update_time+0)+0,w
	addwf	(_mins),f
	line	10
	
l1808:	
;timekeeper.C: 10: if(mins == 60)
	movf	(_mins),w
	xorlw	03Ch
	skipz
	goto	u1701
	goto	u1700
u1701:
	goto	l1824
u1700:
	line	12
	
l1810:	
;timekeeper.C: 11: {
;timekeeper.C: 12: mins = 0;
	clrf	(_mins)
	line	13
	
l1812:	
;timekeeper.C: 13: hrs++;
	movlw	(01h)
	movwf	(??_update_time+0)+0
	movf	(??_update_time+0)+0,w
	addwf	(_hrs),f
	line	14
	
l1814:	
;timekeeper.C: 14: if(hrs == 24)
	movf	(_hrs),w
	xorlw	018h
	skipz
	goto	u1711
	goto	u1710
u1711:
	goto	l1822
u1710:
	line	16
	
l1816:	
;timekeeper.C: 15: {
;timekeeper.C: 16: hrs = 0;
	clrf	(_hrs)
	line	17
	
l1818:	
;timekeeper.C: 17: update_date();
	fcall	_update_date
	line	18
	
l1820:	
;timekeeper.C: 18: date_flag = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_date_flag)
	incf	(_date_flag),f
	goto	l1822
	line	19
	
l45:	
	line	20
	
l1822:	
;timekeeper.C: 19: }
;timekeeper.C: 20: hrs_flag = 1;
	clrf	(_hrs_flag)
	incf	(_hrs_flag),f
	goto	l1824
	line	21
	
l44:	
	line	22
	
l1824:	
;timekeeper.C: 21: }
;timekeeper.C: 22: min_flag = 1;
	clrf	(_min_flag)
	incf	(_min_flag),f
	line	23
	
l1826:	
;timekeeper.C: 23: if(alarm_flag == 1)
	movf	(_alarm_flag),w
	xorlw	01h
	skipz
	goto	u1721
	goto	u1720
u1721:
	goto	l47
u1720:
	line	24
	
l1828:	
;timekeeper.C: 24: check_alarm();
	fcall	_check_alarm
	goto	l47
	
l46:	
	goto	l47
	line	25
	
l43:	
	goto	l47
	line	26
	
l1830:	
	line	27
;timekeeper.C: 25: }
;timekeeper.C: 26: return;
	
l47:	
	return
	opt stack 0
GLOBAL	__end_of_update_time
	__end_of_update_time:
	signat	_update_time,88
	global	_update_date

;; *************** function _update_date *****************
;; Defined at:
;;		line 29 in file "E:\Study Material\XC8 PROJECTS\Wall Clock\timekeeper.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp            1    1[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0
;;      Temps:          0       1       0
;;      Totals:         0       2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_update_time
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	29
global __ptext2
__ptext2:	;psect for function _update_date
psect	text2
	file	"E:\Study Material\XC8 PROJECTS\Wall Clock\timekeeper.C"
	line	29
	global	__size_of_update_date
	__size_of_update_date	equ	__end_of_update_date-_update_date
	
_update_date:	
;incstack = 0
	opt	stack 4
; Regs used in _update_date: [wreg-fsr0h+status,2+status,0]
	line	32
	
l1540:	
;timekeeper.C: 31: unsigned char temp;
;timekeeper.C: 32: switch(day)
	goto	l1596
	line	34
;timekeeper.C: 33: {
;timekeeper.C: 34: case 28:
	
l51:	
	line	35
	
l1542:	
;timekeeper.C: 35: if(month == 2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_month),w
	xorlw	02h
	skipz
	goto	u1161
	goto	u1160
u1161:
	goto	l1554
u1160:
	line	38
	
l1544:	
;timekeeper.C: 36: {
;timekeeper.C: 38: temp = year % 4;
	movf	(_year),w
	andlw	03h
	movwf	(??_update_date+0)+0
	movf	(??_update_date+0)+0,w
	movwf	(update_date@temp)
	line	39
	
l1546:	
;timekeeper.C: 39: if(temp == 0)
	movf	(update_date@temp),f
	skipz
	goto	u1171
	goto	u1170
u1171:
	goto	l1550
u1170:
	line	40
	
l1548:	
;timekeeper.C: 40: day++;
	movlw	(01h)
	movwf	(??_update_date+0)+0
	movf	(??_update_date+0)+0,w
	addwf	(_day),f
	goto	l70
	line	41
	
l53:	
	line	43
	
l1550:	
;timekeeper.C: 41: else
;timekeeper.C: 42: {
;timekeeper.C: 43: month++;
	movlw	(01h)
	movwf	(??_update_date+0)+0
	movf	(??_update_date+0)+0,w
	addwf	(_month),f
	line	44
	
l1552:	
;timekeeper.C: 44: day = 1;
	clrf	(_day)
	incf	(_day),f
	goto	l70
	line	45
	
l54:	
	line	46
;timekeeper.C: 45: }
;timekeeper.C: 46: }
	goto	l70
	line	47
	
l52:	
	line	48
	
l1554:	
;timekeeper.C: 47: else
;timekeeper.C: 48: day++;
	movlw	(01h)
	movwf	(??_update_date+0)+0
	movf	(??_update_date+0)+0,w
	addwf	(_day),f
	goto	l70
	
l55:	
	line	49
;timekeeper.C: 49: break;
	goto	l70
	line	50
;timekeeper.C: 50: case 29:
	
l57:	
	line	52
	
l1556:	
;timekeeper.C: 52: if(month == 2)
	movf	(_month),w
	xorlw	02h
	skipz
	goto	u1181
	goto	u1180
u1181:
	goto	l1562
u1180:
	line	54
	
l1558:	
;timekeeper.C: 53: {
;timekeeper.C: 54: month++;
	movlw	(01h)
	movwf	(??_update_date+0)+0
	movf	(??_update_date+0)+0,w
	addwf	(_month),f
	line	55
	
l1560:	
;timekeeper.C: 55: day = 1;
	clrf	(_day)
	incf	(_day),f
	line	56
;timekeeper.C: 56: }
	goto	l70
	line	57
	
l58:	
	line	58
	
l1562:	
;timekeeper.C: 57: else
;timekeeper.C: 58: day++;
	movlw	(01h)
	movwf	(??_update_date+0)+0
	movf	(??_update_date+0)+0,w
	addwf	(_day),f
	goto	l70
	
l59:	
	line	59
;timekeeper.C: 59: break;
	goto	l70
	line	60
;timekeeper.C: 60: case 30:
	
l60:	
	line	61
	
l1564:	
;timekeeper.C: 61: if(month == 4 || month == 6 || month == 9 || month == 11)
	movf	(_month),w
	xorlw	04h
	skipnz
	goto	u1191
	goto	u1190
u1191:
	goto	l63
u1190:
	
l1566:	
	movf	(_month),w
	xorlw	06h
	skipnz
	goto	u1201
	goto	u1200
u1201:
	goto	l63
u1200:
	
l1568:	
	movf	(_month),w
	xorlw	09h
	skipnz
	goto	u1211
	goto	u1210
u1211:
	goto	l63
u1210:
	
l1570:	
	movf	(_month),w
	xorlw	0Bh
	skipz
	goto	u1221
	goto	u1220
u1221:
	goto	l1574
u1220:
	
l63:	
	line	63
;timekeeper.C: 62: {
;timekeeper.C: 63: day = 1;
	clrf	(_day)
	incf	(_day),f
	line	64
	
l1572:	
;timekeeper.C: 64: month++;
	movlw	(01h)
	movwf	(??_update_date+0)+0
	movf	(??_update_date+0)+0,w
	addwf	(_month),f
	line	65
;timekeeper.C: 65: }
	goto	l70
	line	66
	
l61:	
	line	67
	
l1574:	
;timekeeper.C: 66: else
;timekeeper.C: 67: day++;
	movlw	(01h)
	movwf	(??_update_date+0)+0
	movf	(??_update_date+0)+0,w
	addwf	(_day),f
	goto	l70
	
l64:	
	line	68
;timekeeper.C: 68: break;
	goto	l70
	line	69
;timekeeper.C: 69: default :
	
l65:	
	line	70
	
l1576:	
;timekeeper.C: 70: if(day == 31)
	movf	(_day),w
	xorlw	01Fh
	skipz
	goto	u1231
	goto	u1230
u1231:
	goto	l1592
u1230:
	line	72
	
l1578:	
;timekeeper.C: 71: {
;timekeeper.C: 72: day = 1;
	clrf	(_day)
	incf	(_day),f
	line	73
	
l1580:	
;timekeeper.C: 73: month++;
	movlw	(01h)
	movwf	(??_update_date+0)+0
	movf	(??_update_date+0)+0,w
	addwf	(_month),f
	line	74
	
l1582:	
;timekeeper.C: 74: if(month == 13)
	movf	(_month),w
	xorlw	0Dh
	skipz
	goto	u1241
	goto	u1240
u1241:
	goto	l70
u1240:
	line	76
	
l1584:	
;timekeeper.C: 75: {
;timekeeper.C: 76: month = 1;
	clrf	(_month)
	incf	(_month),f
	line	77
	
l1586:	
;timekeeper.C: 77: year++;
	movlw	(01h)
	movwf	(??_update_date+0)+0
	movf	(??_update_date+0)+0,w
	addwf	(_year),f
	line	78
	
l1588:	
;timekeeper.C: 78: if(year == 100)
	movf	(_year),w
	xorlw	064h
	skipz
	goto	u1251
	goto	u1250
u1251:
	goto	l70
u1250:
	line	79
	
l1590:	
;timekeeper.C: 79: year = 0;
	clrf	(_year)
	goto	l70
	
l68:	
	goto	l70
	line	80
	
l67:	
	line	81
;timekeeper.C: 80: }
;timekeeper.C: 81: }
	goto	l70
	line	82
	
l66:	
	line	83
	
l1592:	
;timekeeper.C: 82: else
;timekeeper.C: 83: day++;
	movlw	(01h)
	movwf	(??_update_date+0)+0
	movf	(??_update_date+0)+0,w
	addwf	(_day),f
	goto	l70
	
l69:	
	line	84
;timekeeper.C: 84: break;
	goto	l70
	line	85
	
l1594:	
;timekeeper.C: 85: }
	goto	l70
	line	32
	
l50:	
	
l1596:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_day),w
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 28 to 30
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; direct_byte           12     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	28^0	; case 28
	skipnz
	goto	l1542
	xorlw	29^28	; case 29
	skipnz
	goto	l1556
	xorlw	30^29	; case 30
	skipnz
	goto	l1564
	goto	l1576
	opt asmopt_on

	line	85
	
l56:	
	line	86
	
l70:	
	return
	opt stack 0
GLOBAL	__end_of_update_date
	__end_of_update_date:
	signat	_update_date,88
	global	_check_alarm

;; *************** function _check_alarm *****************
;; Defined at:
;;		line 88 in file "E:\Study Material\XC8 PROJECTS\Wall Clock\timekeeper.C"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_update_time
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	88
global __ptext3
__ptext3:	;psect for function _check_alarm
psect	text3
	file	"E:\Study Material\XC8 PROJECTS\Wall Clock\timekeeper.C"
	line	88
	global	__size_of_check_alarm
	__size_of_check_alarm	equ	__end_of_check_alarm-_check_alarm
	
_check_alarm:	
;incstack = 0
	opt	stack 4
; Regs used in _check_alarm: [wreg+status,2+status,0]
	line	90
	
l1598:	
;timekeeper.C: 90: if(alarm_hrs == hrs && alarm_mins == mins)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_alarm_hrs),w
	xorwf	(_hrs),w
	skipz
	goto	u1261
	goto	u1260
u1261:
	goto	l1608
u1260:
	
l1600:	
	movf	(_alarm_mins),w
	xorwf	(_mins),w
	skipz
	goto	u1271
	goto	u1270
u1271:
	goto	l1608
u1270:
	line	92
	
l1602:	
;timekeeper.C: 91: {
;timekeeper.C: 92: alarm_bell = 1;
	clrf	(_alarm_bell)
	incf	(_alarm_bell),f
	line	93
	
l1604:	
;timekeeper.C: 93: if(alarm_auto_repeat == 0)
	movf	(_alarm_auto_repeat),f
	skipz
	goto	u1281
	goto	u1280
u1281:
	goto	l76
u1280:
	line	94
	
l1606:	
;timekeeper.C: 94: alarm_flag = 0;
	clrf	(_alarm_flag)
	goto	l76
	
l74:	
	line	95
;timekeeper.C: 95: }
	goto	l76
	line	96
	
l73:	
	line	97
	
l1608:	
;timekeeper.C: 96: else
;timekeeper.C: 97: alarm_bell = 0;
	clrf	(_alarm_bell)
	goto	l76
	
l75:	
	goto	l76
	line	98
	
l1610:	
	line	99
;timekeeper.C: 98: return;
	
l76:	
	return
	opt stack 0
GLOBAL	__end_of_check_alarm
	__end_of_check_alarm:
	signat	_check_alarm,88
	global	_rand

;; *************** function _rand *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\rand.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   13[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       2       0
;;      Locals:         0       0       0
;;      Temps:          0       9       0
;;      Totals:         0      11       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___lmul
;;		_srand
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\rand.c"
	line	13
global __ptext4
__ptext4:	;psect for function _rand
psect	text4
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\rand.c"
	line	13
	global	__size_of_rand
	__size_of_rand	equ	__end_of_rand-_rand
	
_rand:	
;incstack = 0
	opt	stack 4
; Regs used in _rand: [wreg+status,2+status,0+pclath+cstack]
	line	15
	
l1836:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_randf),f
	skipz
	goto	u1731
	goto	u1730
u1731:
	goto	l825
u1730:
	line	16
	
l1838:	
	movlw	low(01h)
	movwf	(srand@x)
	movlw	high(01h)
	movwf	((srand@x))+1
	fcall	_srand
	
l825:	
	line	17
	movlw	039h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_rand+0)+0)
	movlw	030h
	movwf	((??_rand+0)+0+1)
	movlw	0
	movwf	((??_rand+0)+0+2)
	movlw	0
	movwf	((??_rand+0)+0+3)
	movf	(_randx+3),w
	movwf	(___lmul@multiplier+3)
	movf	(_randx+2),w
	movwf	(___lmul@multiplier+2)
	movf	(_randx+1),w
	movwf	(___lmul@multiplier+1)
	movf	(_randx),w
	movwf	(___lmul@multiplier)

	movlw	041h
	movwf	(___lmul@multiplicand+3)
	movlw	0C6h
	movwf	(___lmul@multiplicand+2)
	movlw	04Eh
	movwf	(___lmul@multiplicand+1)
	movlw	06Dh
	movwf	(___lmul@multiplicand)

	fcall	___lmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lmul)),w
	addwf	(??_rand+0)+0,f
	movf	(1+(?___lmul)),w
	skipnc
	incfsz	(1+(?___lmul)),w
	goto	u1740
	goto	u1741
u1740:
	addwf	(??_rand+0)+1,f
u1741:
	movf	(2+(?___lmul)),w
	skipnc
	incfsz	(2+(?___lmul)),w
	goto	u1742
	goto	u1743
u1742:
	addwf	(??_rand+0)+2,f
u1743:
	movf	(3+(?___lmul)),w
	skipnc
	incf	(3+(?___lmul)),w
	addwf	(??_rand+0)+3,f
	movf	3+(??_rand+0)+0,w
	movwf	(_randx+3)
	movf	2+(??_rand+0)+0,w
	movwf	(_randx+2)
	movf	1+(??_rand+0)+0,w
	movwf	(_randx+1)
	movf	0+(??_rand+0)+0,w
	movwf	(_randx)

	movf	((_randx)),w
	movwf	(??_rand+4)+0
	movf	((_randx+1)),w
	movwf	((??_rand+4)+0+1)
	movf	((_randx+2)),w
	movwf	((??_rand+4)+0+2)
	movf	((_randx+3)),w
	movwf	((??_rand+4)+0+3)
	movlw	010h
	movwf	(??_rand+8)+0
u1755:
	rlf	(??_rand+4)+3,w
	rrf	(??_rand+4)+3,f
	rrf	(??_rand+4)+2,f
	rrf	(??_rand+4)+1,f
	rrf	(??_rand+4)+0,f
u1750:
	decfsz	(??_rand+8)+0,f
	goto	u1755
	movlw	low(07FFFh)
	andwf	0+(??_rand+4)+0,w
	movwf	(?_rand)
	movlw	high(07FFFh)
	andwf	1+(??_rand+4)+0,w
	movwf	1+(?_rand)
	goto	l826
	
l1840:	
	line	18
	
l826:	
	return
	opt stack 0
GLOBAL	__end_of_rand
	__end_of_rand:
	signat	_rand,90
	global	_srand

;; *************** function _srand *****************
;; Defined at:
;;		line 7 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\rand.c"
;; Parameters:    Size  Location     Type
;;  x               2    0[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       2       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_rand
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	7
global __ptext5
__ptext5:	;psect for function _srand
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\rand.c"
	line	7
	global	__size_of_srand
	__size_of_srand	equ	__end_of_srand-_srand
	
_srand:	
;incstack = 0
	opt	stack 5
; Regs used in _srand: [wreg]
	line	9
	
l1612:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(srand@x),w
	movwf	(_randx)
	movf	(srand@x+1),w
	movwf	((_randx))+1
	clrf	2+((_randx))
	clrf	3+((_randx))
	line	10
	
l1614:	
	clrf	(_randf)
	incf	(_randf),f
	line	11
	
l822:	
	return
	opt stack 0
GLOBAL	__end_of_srand
	__end_of_srand:
	signat	_srand,4216
	global	___lmul

;; *************** function ___lmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\Umul32.c"
;; Parameters:    Size  Location     Type
;;  multiplier      4    0[BANK0 ] unsigned long 
;;  multiplicand    4    4[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  product         4    9[BANK0 ] unsigned long 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       8       0
;;      Locals:         0       4       0
;;      Temps:          0       1       0
;;      Totals:         0      13       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_rand
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\Umul32.c"
	line	15
global __ptext6
__ptext6:	;psect for function ___lmul
psect	text6
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\Umul32.c"
	line	15
	global	__size_of___lmul
	__size_of___lmul	equ	__end_of___lmul-___lmul
	
___lmul:	
;incstack = 0
	opt	stack 4
; Regs used in ___lmul: [wreg+status,2+status,0]
	line	119
	
l1706:	
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___lmul@product+3)
	movlw	0
	movwf	(___lmul@product+2)
	movlw	0
	movwf	(___lmul@product+1)
	movlw	0
	movwf	(___lmul@product)

	goto	l1708
	line	120
	
l475:	
	line	121
	
l1708:	
	btfss	(___lmul@multiplier),(0)&7
	goto	u1451
	goto	u1450
u1451:
	goto	l1712
u1450:
	line	122
	
l1710:	
	movf	(___lmul@multiplicand),w
	addwf	(___lmul@product),f
	movf	(___lmul@multiplicand+1),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1461
	addwf	(___lmul@product+1),f
u1461:
	movf	(___lmul@multiplicand+2),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1462
	addwf	(___lmul@product+2),f
u1462:
	movf	(___lmul@multiplicand+3),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1463
	addwf	(___lmul@product+3),f
u1463:

	goto	l1712
	
l476:	
	line	123
	
l1712:	
	movlw	01h
	movwf	(??___lmul+0)+0
u1475:
	clrc
	rlf	(___lmul@multiplicand),f
	rlf	(___lmul@multiplicand+1),f
	rlf	(___lmul@multiplicand+2),f
	rlf	(___lmul@multiplicand+3),f
	decfsz	(??___lmul+0)+0
	goto	u1475
	line	124
	
l1714:	
	movlw	01h
u1485:
	clrc
	rrf	(___lmul@multiplier+3),f
	rrf	(___lmul@multiplier+2),f
	rrf	(___lmul@multiplier+1),f
	rrf	(___lmul@multiplier),f
	addlw	-1
	skipz
	goto	u1485

	line	125
	movf	(___lmul@multiplier+3),w
	iorwf	(___lmul@multiplier+2),w
	iorwf	(___lmul@multiplier+1),w
	iorwf	(___lmul@multiplier),w
	skipz
	goto	u1491
	goto	u1490
u1491:
	goto	l1708
u1490:
	goto	l1716
	
l477:	
	line	128
	
l1716:	
	movf	(___lmul@product+3),w
	movwf	(?___lmul+3)
	movf	(___lmul@product+2),w
	movwf	(?___lmul+2)
	movf	(___lmul@product+1),w
	movwf	(?___lmul+1)
	movf	(___lmul@product),w
	movwf	(?___lmul)

	goto	l478
	
l1718:	
	line	129
	
l478:	
	return
	opt stack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
	signat	___lmul,8316
	global	_display_time

;; *************** function _display_time *****************
;; Defined at:
;;		line 7 in file "E:\Study Material\XC8 PROJECTS\Wall Clock\display.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp            1   17[BANK0 ] unsigned char 
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
;;      Temps:          0       3       0
;;      Totals:         0       4       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___awdiv
;;		___awmod
;;		_display_date
;;		_display_mins
;;		_display_secs
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\Wall Clock\display.C"
	line	7
global __ptext7
__ptext7:	;psect for function _display_time
psect	text7
	file	"E:\Study Material\XC8 PROJECTS\Wall Clock\display.C"
	line	7
	global	__size_of_display_time
	__size_of_display_time	equ	__end_of_display_time-_display_time
	
_display_time:	
;incstack = 0
	opt	stack 1
; Regs used in _display_time: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	12
	
l1842:	
;display.C: 9: char temp;
;display.C: 12: temp = secs;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_secs),w
	movwf	(??_display_time+0)+0
	movf	(??_display_time+0)+0,w
	movwf	(display_time@temp)
	line	13
	
l1844:	
;display.C: 13: time_display_array[0] = temp % 10;
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	movf	(display_time@temp),w
	movwf	(??_display_time+0)+0
	clrf	(??_display_time+0)+0+1
	movf	0+(??_display_time+0)+0,w
	movwf	(___awmod@dividend)
	movf	1+(??_display_time+0)+0,w
	movwf	(___awmod@dividend+1)
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	movwf	(??_display_time+2)+0
	movf	(??_display_time+2)+0,w
	movwf	(_time_display_array)
	line	14
	
l1846:	
;display.C: 14: time_display_array[1] = temp/10;
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(display_time@temp),w
	movwf	(??_display_time+0)+0
	clrf	(??_display_time+0)+0+1
	movf	0+(??_display_time+0)+0,w
	movwf	(___awdiv@dividend)
	movf	1+(??_display_time+0)+0,w
	movwf	(___awdiv@dividend+1)
	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	movwf	(??_display_time+2)+0
	movf	(??_display_time+2)+0,w
	movwf	0+(_time_display_array)+01h
	line	16
	
l1848:	
;display.C: 16: display_secs();
	fcall	_display_secs
	line	17
	
l1850:	
;display.C: 17: if(min_flag == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_min_flag),w
	xorlw	01h
	skipz
	goto	u1761
	goto	u1760
u1761:
	goto	l1888
u1760:
	line	19
	
l1852:	
;display.C: 18: {
;display.C: 19: temp = mins;
	movf	(_mins),w
	movwf	(??_display_time+0)+0
	movf	(??_display_time+0)+0,w
	movwf	(display_time@temp)
	line	20
	
l1854:	
;display.C: 20: time_display_array[2] = temp % 10;
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	movf	(display_time@temp),w
	movwf	(??_display_time+0)+0
	clrf	(??_display_time+0)+0+1
	movf	0+(??_display_time+0)+0,w
	movwf	(___awmod@dividend)
	movf	1+(??_display_time+0)+0,w
	movwf	(___awmod@dividend+1)
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	movwf	(??_display_time+2)+0
	movf	(??_display_time+2)+0,w
	movwf	0+(_time_display_array)+02h
	line	21
	
l1856:	
;display.C: 21: time_display_array[3] = temp/10;
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(display_time@temp),w
	movwf	(??_display_time+0)+0
	clrf	(??_display_time+0)+0+1
	movf	0+(??_display_time+0)+0,w
	movwf	(___awdiv@dividend)
	movf	1+(??_display_time+0)+0,w
	movwf	(___awdiv@dividend+1)
	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	movwf	(??_display_time+2)+0
	movf	(??_display_time+2)+0,w
	movwf	0+(_time_display_array)+03h
	line	23
;display.C: 23: temp = hrs;
	movf	(_hrs),w
	movwf	(??_display_time+0)+0
	movf	(??_display_time+0)+0,w
	movwf	(display_time@temp)
	line	26
	
l1858:	
;display.C: 26: if(Twenty_Four_Hrs == 0 && hrs > 12)
	movf	(_Twenty_Four_Hrs),f
	skipz
	goto	u1771
	goto	u1770
u1771:
	goto	l1864
u1770:
	
l1860:	
	movlw	(0Dh)
	subwf	(_hrs),w
	skipc
	goto	u1781
	goto	u1780
u1781:
	goto	l1864
u1780:
	line	27
	
l1862:	
;display.C: 27: temp = hrs - 12;
	movf	(_hrs),w
	addlw	0F4h
	movwf	(??_display_time+0)+0
	movf	(??_display_time+0)+0,w
	movwf	(display_time@temp)
	goto	l1864
	
l285:	
	line	28
	
l1864:	
;display.C: 28: if(Twenty_Four_Hrs == 0 && hrs == 0)
	movf	(_Twenty_Four_Hrs),f
	skipz
	goto	u1791
	goto	u1790
u1791:
	goto	l286
u1790:
	
l1866:	
	movf	(_hrs),f
	skipz
	goto	u1801
	goto	u1800
u1801:
	goto	l286
u1800:
	line	29
	
l1868:	
;display.C: 29: temp = 12;
	movlw	(0Ch)
	movwf	(??_display_time+0)+0
	movf	(??_display_time+0)+0,w
	movwf	(display_time@temp)
	
l286:	
	line	31
;display.C: 31: if(hrs_flag == 1)
	movf	(_hrs_flag),w
	xorlw	01h
	skipz
	goto	u1811
	goto	u1810
u1811:
	goto	l1874
u1810:
	line	33
	
l1870:	
;display.C: 32: {
;display.C: 33: beeps = temp * 2;
	movf	(display_time@temp),w
	movwf	(??_display_time+0)+0
	addwf	(??_display_time+0)+0,w
	movwf	(??_display_time+1)+0
	movf	(??_display_time+1)+0,w
	movwf	(_beeps)
	line	34
	
l1872:	
;display.C: 34: hrs_flag = 0;
	clrf	(_hrs_flag)
	goto	l1874
	line	35
	
l287:	
	line	37
	
l1874:	
;display.C: 35: }
;display.C: 37: time_display_array[4] = temp % 10;
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	movf	(display_time@temp),w
	movwf	(??_display_time+0)+0
	clrf	(??_display_time+0)+0+1
	movf	0+(??_display_time+0)+0,w
	movwf	(___awmod@dividend)
	movf	1+(??_display_time+0)+0,w
	movwf	(___awmod@dividend+1)
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	movwf	(??_display_time+2)+0
	movf	(??_display_time+2)+0,w
	movwf	0+(_time_display_array)+04h
	line	38
	
l1876:	
;display.C: 38: time_display_array[5] = temp/10;
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(display_time@temp),w
	movwf	(??_display_time+0)+0
	clrf	(??_display_time+0)+0+1
	movf	0+(??_display_time+0)+0,w
	movwf	(___awdiv@dividend)
	movf	1+(??_display_time+0)+0,w
	movwf	(___awdiv@dividend+1)
	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	movwf	(??_display_time+2)+0
	movf	(??_display_time+2)+0,w
	movwf	0+(_time_display_array)+05h
	line	40
	
l1878:	
;display.C: 40: if(Twenty_Four_Hrs == 0 && time_display_array[5] == 0)
	movf	(_Twenty_Four_Hrs),f
	skipz
	goto	u1821
	goto	u1820
u1821:
	goto	l1884
u1820:
	
l1880:	
	movf	0+(_time_display_array)+05h,f
	skipz
	goto	u1831
	goto	u1830
u1831:
	goto	l1884
u1830:
	line	41
	
l1882:	
;display.C: 41: time_display_array[5] = 10;
	movlw	(0Ah)
	movwf	(??_display_time+0)+0
	movf	(??_display_time+0)+0,w
	movwf	0+(_time_display_array)+05h
	goto	l1884
	
l288:	
	line	43
	
l1884:	
;display.C: 43: display_mins();
	fcall	_display_mins
	line	45
	
l1886:	
;display.C: 45: min_flag = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_min_flag)
	goto	l1888
	line	46
	
l284:	
	line	47
	
l1888:	
;display.C: 46: }
;display.C: 47: if(date_flag == 1)
	movf	(_date_flag),w
	xorlw	01h
	skipz
	goto	u1841
	goto	u1840
u1841:
	goto	l1920
u1840:
	line	49
	
l1890:	
;display.C: 48: {
;display.C: 49: temp = year;
	movf	(_year),w
	movwf	(??_display_time+0)+0
	movf	(??_display_time+0)+0,w
	movwf	(display_time@temp)
	line	50
	
l1892:	
;display.C: 50: date_display_array[0] = temp % 10;
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	movf	(display_time@temp),w
	movwf	(??_display_time+0)+0
	clrf	(??_display_time+0)+0+1
	movf	0+(??_display_time+0)+0,w
	movwf	(___awmod@dividend)
	movf	1+(??_display_time+0)+0,w
	movwf	(___awmod@dividend+1)
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	movwf	(??_display_time+2)+0
	movf	(??_display_time+2)+0,w
	movwf	(_date_display_array)
	line	51
	
l1894:	
;display.C: 51: date_display_array[0] = date_display_array[0] + 48;
	movf	(_date_display_array),w
	addlw	030h
	movwf	(??_display_time+0)+0
	movf	(??_display_time+0)+0,w
	movwf	(_date_display_array)
	line	52
	
l1896:	
;display.C: 52: date_display_array[1] = temp/10;
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(display_time@temp),w
	movwf	(??_display_time+0)+0
	clrf	(??_display_time+0)+0+1
	movf	0+(??_display_time+0)+0,w
	movwf	(___awdiv@dividend)
	movf	1+(??_display_time+0)+0,w
	movwf	(___awdiv@dividend+1)
	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	movwf	(??_display_time+2)+0
	movf	(??_display_time+2)+0,w
	movwf	0+(_date_display_array)+01h
	line	53
	
l1898:	
;display.C: 53: date_display_array[1] = date_display_array[1] + 48;
	movf	0+(_date_display_array)+01h,w
	addlw	030h
	movwf	(??_display_time+0)+0
	movf	(??_display_time+0)+0,w
	movwf	0+(_date_display_array)+01h
	line	54
;display.C: 54: date_display_array[2] = '-';
	movlw	(02Dh)
	movwf	(??_display_time+0)+0
	movf	(??_display_time+0)+0,w
	movwf	0+(_date_display_array)+02h
	line	56
;display.C: 56: temp = month;
	movf	(_month),w
	movwf	(??_display_time+0)+0
	movf	(??_display_time+0)+0,w
	movwf	(display_time@temp)
	line	57
	
l1900:	
;display.C: 57: date_display_array[3] = temp % 10;
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	movf	(display_time@temp),w
	movwf	(??_display_time+0)+0
	clrf	(??_display_time+0)+0+1
	movf	0+(??_display_time+0)+0,w
	movwf	(___awmod@dividend)
	movf	1+(??_display_time+0)+0,w
	movwf	(___awmod@dividend+1)
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	movwf	(??_display_time+2)+0
	movf	(??_display_time+2)+0,w
	movwf	0+(_date_display_array)+03h
	line	58
	
l1902:	
;display.C: 58: date_display_array[3] = date_display_array[3] + 48;
	movf	0+(_date_display_array)+03h,w
	addlw	030h
	movwf	(??_display_time+0)+0
	movf	(??_display_time+0)+0,w
	movwf	0+(_date_display_array)+03h
	line	59
	
l1904:	
;display.C: 59: date_display_array[4] = temp/10;
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(display_time@temp),w
	movwf	(??_display_time+0)+0
	clrf	(??_display_time+0)+0+1
	movf	0+(??_display_time+0)+0,w
	movwf	(___awdiv@dividend)
	movf	1+(??_display_time+0)+0,w
	movwf	(___awdiv@dividend+1)
	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	movwf	(??_display_time+2)+0
	movf	(??_display_time+2)+0,w
	movwf	0+(_date_display_array)+04h
	line	60
	
l1906:	
;display.C: 60: date_display_array[4] = date_display_array[4] + 48;
	movf	0+(_date_display_array)+04h,w
	addlw	030h
	movwf	(??_display_time+0)+0
	movf	(??_display_time+0)+0,w
	movwf	0+(_date_display_array)+04h
	line	61
;display.C: 61: date_display_array[5] = '-';
	movlw	(02Dh)
	movwf	(??_display_time+0)+0
	movf	(??_display_time+0)+0,w
	movwf	0+(_date_display_array)+05h
	line	63
;display.C: 63: temp = day;
	movf	(_day),w
	movwf	(??_display_time+0)+0
	movf	(??_display_time+0)+0,w
	movwf	(display_time@temp)
	line	64
	
l1908:	
;display.C: 64: date_display_array[6] = temp % 10;
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	movf	(display_time@temp),w
	movwf	(??_display_time+0)+0
	clrf	(??_display_time+0)+0+1
	movf	0+(??_display_time+0)+0,w
	movwf	(___awmod@dividend)
	movf	1+(??_display_time+0)+0,w
	movwf	(___awmod@dividend+1)
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	movwf	(??_display_time+2)+0
	movf	(??_display_time+2)+0,w
	movwf	0+(_date_display_array)+06h
	line	65
	
l1910:	
;display.C: 65: date_display_array[6] = date_display_array[6] + 48;
	movf	0+(_date_display_array)+06h,w
	addlw	030h
	movwf	(??_display_time+0)+0
	movf	(??_display_time+0)+0,w
	movwf	0+(_date_display_array)+06h
	line	66
	
l1912:	
;display.C: 66: date_display_array[7] = temp/10;
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(display_time@temp),w
	movwf	(??_display_time+0)+0
	clrf	(??_display_time+0)+0+1
	movf	0+(??_display_time+0)+0,w
	movwf	(___awdiv@dividend)
	movf	1+(??_display_time+0)+0,w
	movwf	(___awdiv@dividend+1)
	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	movwf	(??_display_time+2)+0
	movf	(??_display_time+2)+0,w
	movwf	0+(_date_display_array)+07h
	line	67
	
l1914:	
;display.C: 67: date_display_array[7] = date_display_array[7] + 48;
	movf	0+(_date_display_array)+07h,w
	addlw	030h
	movwf	(??_display_time+0)+0
	movf	(??_display_time+0)+0,w
	movwf	0+(_date_display_array)+07h
	line	69
	
l1916:	
;display.C: 69: display_date();
	fcall	_display_date
	line	71
	
l1918:	
;display.C: 71: date_flag = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_date_flag)
	goto	l1920
	line	72
	
l289:	
	line	73
	
l1920:	
;display.C: 72: }
;display.C: 73: if(eagle_flag == 1)
	movf	(_eagle_flag),w
	xorlw	01h
	skipz
	goto	u1851
	goto	u1850
u1851:
	goto	l291
u1850:
	line	75
	
l1922:	
;display.C: 74: {
;display.C: 75: date_display_array[7] = ' ';
	movlw	(020h)
	movwf	(??_display_time+0)+0
	movf	(??_display_time+0)+0,w
	movwf	0+(_date_display_array)+07h
	line	76
;display.C: 76: date_display_array[6] = 'E';
	movlw	(045h)
	movwf	(??_display_time+0)+0
	movf	(??_display_time+0)+0,w
	movwf	0+(_date_display_array)+06h
	line	77
;display.C: 77: date_display_array[5] = 'A';
	movlw	(041h)
	movwf	(??_display_time+0)+0
	movf	(??_display_time+0)+0,w
	movwf	0+(_date_display_array)+05h
	line	78
;display.C: 78: date_display_array[4] = 'G';
	movlw	(047h)
	movwf	(??_display_time+0)+0
	movf	(??_display_time+0)+0,w
	movwf	0+(_date_display_array)+04h
	line	79
;display.C: 79: date_display_array[3] = 'L';
	movlw	(04Ch)
	movwf	(??_display_time+0)+0
	movf	(??_display_time+0)+0,w
	movwf	0+(_date_display_array)+03h
	line	80
;display.C: 80: date_display_array[2] = 'E';
	movlw	(045h)
	movwf	(??_display_time+0)+0
	movf	(??_display_time+0)+0,w
	movwf	0+(_date_display_array)+02h
	line	81
;display.C: 81: date_display_array[1] = ' ';
	movlw	(020h)
	movwf	(??_display_time+0)+0
	movf	(??_display_time+0)+0,w
	movwf	0+(_date_display_array)+01h
	line	82
;display.C: 82: date_display_array[0] = ' ';
	movlw	(020h)
	movwf	(??_display_time+0)+0
	movf	(??_display_time+0)+0,w
	movwf	(_date_display_array)
	line	84
	
l1924:	
;display.C: 84: display_date();
	fcall	_display_date
	line	86
	
l1926:	
;display.C: 86: eagle_flag = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_eagle_flag)
	goto	l291
	line	87
	
l290:	
	line	88
	
l291:	
	return
	opt stack 0
GLOBAL	__end_of_display_time
	__end_of_display_time:
	signat	_display_time,88
	global	_display_secs

;; *************** function _display_secs *****************
;; Defined at:
;;		line 90 in file "E:\Study Material\XC8 PROJECTS\Wall Clock\display.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  digit           2   10[BANK0 ] unsigned short 
;;  bits            2    8[BANK0 ] unsigned short 
;;  Mask            2    6[BANK0 ] unsigned short 
;;  Flag            2    4[BANK0 ] unsigned short 
;;  number          2    2[BANK0 ] unsigned short 
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
;;      Locals:         0      10       0
;;      Temps:          0       2       0
;;      Totals:         0      12       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_display_time
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	line	90
global __ptext8
__ptext8:	;psect for function _display_secs
psect	text8
	file	"E:\Study Material\XC8 PROJECTS\Wall Clock\display.C"
	line	90
	global	__size_of_display_secs
	__size_of_display_secs	equ	__end_of_display_secs-_display_secs
	
_display_secs:	
;incstack = 0
	opt	stack 4
; Regs used in _display_secs: [wreg-fsr0h+status,2+status,0]
	line	93
	
l1616:	
;display.C: 92: unsigned short Mask, bits, Flag, digit, number;
;display.C: 93: for(digit = 0; digit < 2; digit++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(display_secs@digit)
	clrf	(display_secs@digit+1)
	
l1618:	
	movlw	high(02h)
	subwf	(display_secs@digit+1),w
	movlw	low(02h)
	skipnz
	subwf	(display_secs@digit),w
	skipc
	goto	u1291
	goto	u1290
u1291:
	goto	l1622
u1290:
	goto	l295
	
l1620:	
	goto	l295
	line	94
	
l294:	
	line	96
	
l1622:	
;display.C: 94: {
;display.C: 96: number = display[time_display_array[digit]];
	movf	(display_secs@digit),w
	addlw	_time_display_array&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	addlw	_display&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_display_secs+0)+0
	clrf	(??_display_secs+0)+0+1
	movf	0+(??_display_secs+0)+0,w
	movwf	(display_secs@number)
	movf	1+(??_display_secs+0)+0,w
	movwf	(display_secs@number+1)
	line	97
	
l1624:	
;display.C: 97: Mask = 0x01;
	movlw	low(01h)
	movwf	(display_secs@Mask)
	movlw	high(01h)
	movwf	((display_secs@Mask))+1
	line	98
	
l1626:	
;display.C: 98: for (bits=0; bits<8; bits++)
	clrf	(display_secs@bits)
	clrf	(display_secs@bits+1)
	
l1628:	
	movlw	high(08h)
	subwf	(display_secs@bits+1),w
	movlw	low(08h)
	skipnz
	subwf	(display_secs@bits),w
	skipc
	goto	u1301
	goto	u1300
u1301:
	goto	l1632
u1300:
	goto	l1644
	
l1630:	
	goto	l1644
	line	99
	
l296:	
	line	100
	
l1632:	
;display.C: 99: {
;display.C: 100: Flag = number & Mask;
	movf	(display_secs@Mask),w
	andwf	(display_secs@number),w
	movwf	(display_secs@Flag)
	movf	(display_secs@Mask+1),w
	andwf	(display_secs@number+1),w
	movwf	1+(display_secs@Flag)
	line	101
	
l1634:	
;display.C: 101: if(Flag == 0)
	movf	((display_secs@Flag+1)),w
	iorwf	((display_secs@Flag)),w
	skipz
	goto	u1311
	goto	u1310
u1311:
	goto	l1638
u1310:
	line	103
	
l1636:	
;display.C: 102: {
;display.C: 103: RB2 = 0;
	bcf	(50/8),(50)&7	;volatile
	line	104
;display.C: 104: _delay(1);
		opt asmopt_off
	nop
	opt asmopt_on

	line	105
;display.C: 105: RB3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(51/8),(51)&7	;volatile
	line	106
;display.C: 106: _delay(1);
		opt asmopt_off
	nop
	opt asmopt_on

	line	107
;display.C: 107: RB3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7	;volatile
	goto	l1638
	line	108
	
l298:	
	line	109
	
l1638:	
;display.C: 108: }
;display.C: 109: if(Flag > 0)
	movf	(display_secs@Flag+1),w
	iorwf	(display_secs@Flag),w
	skipnz
	goto	u1321
	goto	u1320
u1321:
	goto	l1642
u1320:
	line	111
	
l1640:	
;display.C: 110: {
;display.C: 111: RB2 = 1;
	bsf	(50/8),(50)&7	;volatile
	line	112
;display.C: 112: _delay(1);
		opt asmopt_off
	nop
	opt asmopt_on

	line	113
;display.C: 113: RB3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(51/8),(51)&7	;volatile
	line	114
;display.C: 114: _delay(1);
		opt asmopt_off
	nop
	opt asmopt_on

	line	115
;display.C: 115: RB3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7	;volatile
	goto	l1642
	line	116
	
l299:	
	line	117
	
l1642:	
;display.C: 116: }
;display.C: 117: Mask = Mask << 1;
	clrc
	rlf	(display_secs@Mask),w
	movwf	(display_secs@Mask)
	rlf	(display_secs@Mask+1),w
	movwf	1+(display_secs@Mask)
	line	98
	movlw	low(01h)
	addwf	(display_secs@bits),f
	skipnc
	incf	(display_secs@bits+1),f
	movlw	high(01h)
	addwf	(display_secs@bits+1),f
	movlw	high(08h)
	subwf	(display_secs@bits+1),w
	movlw	low(08h)
	skipnz
	subwf	(display_secs@bits),w
	skipc
	goto	u1331
	goto	u1330
u1331:
	goto	l1632
u1330:
	goto	l1644
	
l297:	
	line	93
	
l1644:	
	movlw	low(01h)
	addwf	(display_secs@digit),f
	skipnc
	incf	(display_secs@digit+1),f
	movlw	high(01h)
	addwf	(display_secs@digit+1),f
	movlw	high(02h)
	subwf	(display_secs@digit+1),w
	movlw	low(02h)
	skipnz
	subwf	(display_secs@digit),w
	skipc
	goto	u1341
	goto	u1340
u1341:
	goto	l1622
u1340:
	
l295:	
	line	121
;display.C: 118: }
;display.C: 119: }
;display.C: 121: RB4 = 1;
	bsf	(52/8),(52)&7	;volatile
	line	122
;display.C: 122: _delay(1);
		opt asmopt_off
	nop
	opt asmopt_on

	line	123
;display.C: 123: RB4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7	;volatile
	line	124
	
l300:	
	return
	opt stack 0
GLOBAL	__end_of_display_secs
	__end_of_display_secs:
	signat	_display_secs,88
	global	_display_mins

;; *************** function _display_mins *****************
;; Defined at:
;;		line 126 in file "E:\Study Material\XC8 PROJECTS\Wall Clock\display.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  digit           2   10[BANK0 ] unsigned short 
;;  bits            2    8[BANK0 ] unsigned short 
;;  Mask            2    6[BANK0 ] unsigned short 
;;  Flag            2    4[BANK0 ] unsigned short 
;;  number          2    2[BANK0 ] unsigned short 
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
;;      Locals:         0      10       0
;;      Temps:          0       2       0
;;      Totals:         0      12       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_display_time
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	line	126
global __ptext9
__ptext9:	;psect for function _display_mins
psect	text9
	file	"E:\Study Material\XC8 PROJECTS\Wall Clock\display.C"
	line	126
	global	__size_of_display_mins
	__size_of_display_mins	equ	__end_of_display_mins-_display_mins
	
_display_mins:	
;incstack = 0
	opt	stack 4
; Regs used in _display_mins: [wreg-fsr0h+status,2+status,0]
	line	129
	
l1646:	
;display.C: 128: unsigned short Mask, bits, Flag, digit, number;
;display.C: 129: for(digit = 2; digit < 6; digit++)
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(display_mins@digit)
	movlw	high(02h)
	movwf	((display_mins@digit))+1
	movlw	high(06h)
	subwf	(display_mins@digit+1),w
	movlw	low(06h)
	skipnz
	subwf	(display_mins@digit),w
	skipc
	goto	u1351
	goto	u1350
u1351:
	goto	l1650
u1350:
	goto	l304
	
l1648:	
	goto	l304
	line	130
	
l303:	
	line	132
	
l1650:	
;display.C: 130: {
;display.C: 132: number = display[time_display_array[digit]];
	movf	(display_mins@digit),w
	addlw	_time_display_array&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	addlw	_display&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_display_mins+0)+0
	clrf	(??_display_mins+0)+0+1
	movf	0+(??_display_mins+0)+0,w
	movwf	(display_mins@number)
	movf	1+(??_display_mins+0)+0,w
	movwf	(display_mins@number+1)
	line	133
	
l1652:	
;display.C: 133: Mask = 0x01;
	movlw	low(01h)
	movwf	(display_mins@Mask)
	movlw	high(01h)
	movwf	((display_mins@Mask))+1
	line	134
	
l1654:	
;display.C: 134: for (bits=0; bits<8; bits++)
	clrf	(display_mins@bits)
	clrf	(display_mins@bits+1)
	
l1656:	
	movlw	high(08h)
	subwf	(display_mins@bits+1),w
	movlw	low(08h)
	skipnz
	subwf	(display_mins@bits),w
	skipc
	goto	u1361
	goto	u1360
u1361:
	goto	l1660
u1360:
	goto	l1672
	
l1658:	
	goto	l1672
	line	135
	
l305:	
	line	136
	
l1660:	
;display.C: 135: {
;display.C: 136: Flag = number & Mask;
	movf	(display_mins@Mask),w
	andwf	(display_mins@number),w
	movwf	(display_mins@Flag)
	movf	(display_mins@Mask+1),w
	andwf	(display_mins@number+1),w
	movwf	1+(display_mins@Flag)
	line	137
	
l1662:	
;display.C: 137: if(Flag == 0)
	movf	((display_mins@Flag+1)),w
	iorwf	((display_mins@Flag)),w
	skipz
	goto	u1371
	goto	u1370
u1371:
	goto	l1666
u1370:
	line	139
	
l1664:	
;display.C: 138: {
;display.C: 139: RB5 = 0;
	bcf	(53/8),(53)&7	;volatile
	line	140
;display.C: 140: _delay(1);
		opt asmopt_off
	nop
	opt asmopt_on

	line	141
;display.C: 141: RB6 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(54/8),(54)&7	;volatile
	line	142
;display.C: 142: _delay(1);
		opt asmopt_off
	nop
	opt asmopt_on

	line	143
;display.C: 143: RB6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(54/8),(54)&7	;volatile
	goto	l1666
	line	144
	
l307:	
	line	145
	
l1666:	
;display.C: 144: }
;display.C: 145: if(Flag > 0)
	movf	(display_mins@Flag+1),w
	iorwf	(display_mins@Flag),w
	skipnz
	goto	u1381
	goto	u1380
u1381:
	goto	l1670
u1380:
	line	147
	
l1668:	
;display.C: 146: {
;display.C: 147: RB5 = 1;
	bsf	(53/8),(53)&7	;volatile
	line	148
;display.C: 148: _delay(1);
		opt asmopt_off
	nop
	opt asmopt_on

	line	149
;display.C: 149: RB6 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(54/8),(54)&7	;volatile
	line	150
;display.C: 150: _delay(1);
		opt asmopt_off
	nop
	opt asmopt_on

	line	151
;display.C: 151: RB6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(54/8),(54)&7	;volatile
	goto	l1670
	line	152
	
l308:	
	line	153
	
l1670:	
;display.C: 152: }
;display.C: 153: Mask = Mask << 1;
	clrc
	rlf	(display_mins@Mask),w
	movwf	(display_mins@Mask)
	rlf	(display_mins@Mask+1),w
	movwf	1+(display_mins@Mask)
	line	134
	movlw	low(01h)
	addwf	(display_mins@bits),f
	skipnc
	incf	(display_mins@bits+1),f
	movlw	high(01h)
	addwf	(display_mins@bits+1),f
	movlw	high(08h)
	subwf	(display_mins@bits+1),w
	movlw	low(08h)
	skipnz
	subwf	(display_mins@bits),w
	skipc
	goto	u1391
	goto	u1390
u1391:
	goto	l1660
u1390:
	goto	l1672
	
l306:	
	line	129
	
l1672:	
	movlw	low(01h)
	addwf	(display_mins@digit),f
	skipnc
	incf	(display_mins@digit+1),f
	movlw	high(01h)
	addwf	(display_mins@digit+1),f
	movlw	high(06h)
	subwf	(display_mins@digit+1),w
	movlw	low(06h)
	skipnz
	subwf	(display_mins@digit),w
	skipc
	goto	u1401
	goto	u1400
u1401:
	goto	l1650
u1400:
	
l304:	
	line	157
;display.C: 154: }
;display.C: 155: }
;display.C: 157: RB7 = 1;
	bsf	(55/8),(55)&7	;volatile
	line	158
;display.C: 158: _delay(1);
		opt asmopt_off
	nop
	opt asmopt_on

	line	159
;display.C: 159: RB7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	160
	
l309:	
	return
	opt stack 0
GLOBAL	__end_of_display_mins
	__end_of_display_mins:
	signat	_display_mins,88
	global	_display_date

;; *************** function _display_date *****************
;; Defined at:
;;		line 162 in file "E:\Study Material\XC8 PROJECTS\Wall Clock\display.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   13[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_MAX7219_DisplayChar
;; This function is called by:
;;		_display_time
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	line	162
global __ptext10
__ptext10:	;psect for function _display_date
psect	text10
	file	"E:\Study Material\XC8 PROJECTS\Wall Clock\display.C"
	line	162
	global	__size_of_display_date
	__size_of_display_date	equ	__end_of_display_date-_display_date
	
_display_date:	
;incstack = 0
	opt	stack 1
; Regs used in _display_date: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	165
	
l1674:	
;display.C: 164: char i;
;display.C: 165: for(i = 1; i <= 8; i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(display_date@i)
	incf	(display_date@i),f
	
l1676:	
	movlw	(09h)
	subwf	(display_date@i),w
	skipc
	goto	u1411
	goto	u1410
u1411:
	goto	l1680
u1410:
	goto	l314
	
l1678:	
	goto	l314
	line	166
	
l312:	
	line	167
	
l1680:	
;display.C: 166: {
;display.C: 167: MAX7219_DisplayChar (i, date_display_array[i-1], 0);
	movf	(display_date@i),w
	addlw	0FFh
	addlw	_date_display_array&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_display_date+0)+0
	movf	(??_display_date+0)+0,w
	movwf	(MAX7219_DisplayChar@character)
	clrf	(MAX7219_DisplayChar@dot)
	movf	(display_date@i),w
	fcall	_MAX7219_DisplayChar
	line	165
	
l1682:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_display_date+0)+0
	movf	(??_display_date+0)+0,w
	addwf	(display_date@i),f
	
l1684:	
	movlw	(09h)
	subwf	(display_date@i),w
	skipc
	goto	u1421
	goto	u1420
u1421:
	goto	l1680
u1420:
	goto	l314
	
l313:	
	line	169
	
l314:	
	return
	opt stack 0
GLOBAL	__end_of_display_date
	__end_of_display_date:
	signat	_display_date,88
	global	_MAX7219_DisplayChar

;; *************** function _MAX7219_DisplayChar *****************
;; Defined at:
;;		line 237 in file "E:\Study Material\XC8 PROJECTS\Wall Clock\MAX7219.C"
;; Parameters:    Size  Location     Type
;;  digit           1    wreg     unsigned char 
;;  character       1    7[BANK0 ] unsigned char 
;;  dot             1    8[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  digit           1   10[BANK0 ] unsigned char 
;;  ch              1   11[BANK0 ] unsigned char 
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
;;      Locals:         0       2       0
;;      Temps:          0       1       0
;;      Totals:         0       5       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_MAX7219_LookupCode
;;		_MAX7219_Write
;; This function is called by:
;;		_display_date
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\Wall Clock\MAX7219.C"
	line	237
global __ptext11
__ptext11:	;psect for function _MAX7219_DisplayChar
psect	text11
	file	"E:\Study Material\XC8 PROJECTS\Wall Clock\MAX7219.C"
	line	237
	global	__size_of_MAX7219_DisplayChar
	__size_of_MAX7219_DisplayChar	equ	__end_of_MAX7219_DisplayChar-_MAX7219_DisplayChar
	
_MAX7219_DisplayChar:	
;incstack = 0
	opt	stack 1
; Regs used in _MAX7219_DisplayChar: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;MAX7219_DisplayChar@digit stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(MAX7219_DisplayChar@digit)
	line	240
	
l1532:	
;MAX7219.C: 239: char ch;
;MAX7219.C: 240: ch = MAX7219_LookupCode(character);
	movf	(MAX7219_DisplayChar@character),w
	fcall	_MAX7219_LookupCode
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_MAX7219_DisplayChar+0)+0
	movf	(??_MAX7219_DisplayChar+0)+0,w
	movwf	(MAX7219_DisplayChar@ch)
	line	241
	
l1534:	
;MAX7219.C: 241: if(dot == 1)
	movf	(MAX7219_DisplayChar@dot),w
	xorlw	01h
	skipz
	goto	u1151
	goto	u1150
u1151:
	goto	l1538
u1150:
	line	242
	
l1536:	
;MAX7219.C: 242: ch = ch | 0x80;
	movf	(MAX7219_DisplayChar@ch),w
	iorlw	080h
	movwf	(??_MAX7219_DisplayChar+0)+0
	movf	(??_MAX7219_DisplayChar+0)+0,w
	movwf	(MAX7219_DisplayChar@ch)
	goto	l1538
	
l360:	
	line	243
	
l1538:	
;MAX7219.C: 243: MAX7219_Write(digit, ch);
	movf	(MAX7219_DisplayChar@ch),w
	movwf	(??_MAX7219_DisplayChar+0)+0
	movf	(??_MAX7219_DisplayChar+0)+0,w
	movwf	(MAX7219_Write@dataout)
	movf	(MAX7219_DisplayChar@digit),w
	fcall	_MAX7219_Write
	line	244
	
l361:	
	return
	opt stack 0
GLOBAL	__end_of_MAX7219_DisplayChar
	__end_of_MAX7219_DisplayChar:
	signat	_MAX7219_DisplayChar,12408
	global	_MAX7219_LookupCode

;; *************** function _MAX7219_LookupCode *****************
;; Defined at:
;;		line 302 in file "E:\Study Material\XC8 PROJECTS\Wall Clock\MAX7219.C"
;; Parameters:    Size  Location     Type
;;  character       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  character       1    1[BANK0 ] unsigned char 
;;  i               1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       2       0
;;      Temps:          0       1       0
;;      Totals:         0       3       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_MAX7219_DisplayChar
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	line	302
global __ptext12
__ptext12:	;psect for function _MAX7219_LookupCode
psect	text12
	file	"E:\Study Material\XC8 PROJECTS\Wall Clock\MAX7219.C"
	line	302
	global	__size_of_MAX7219_LookupCode
	__size_of_MAX7219_LookupCode	equ	__end_of_MAX7219_LookupCode-_MAX7219_LookupCode
	
_MAX7219_LookupCode:	
;incstack = 0
	opt	stack 2
; Regs used in _MAX7219_LookupCode: [wreg-fsr0h+status,2+status,0+pclath]
;MAX7219_LookupCode@character stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(MAX7219_LookupCode@character)
	line	305
	
l1516:	
;MAX7219.C: 304: char i;
;MAX7219.C: 305: for (i = 0; MAX7219_Font[i].ascii; i++)
	clrf	(MAX7219_LookupCode@i)
	goto	l1526
	line	306
	
l367:	
	
l1518:	
;MAX7219.C: 306: if (character == MAX7219_Font[i].ascii)
	movf	(MAX7219_LookupCode@i),w
	movwf	(??_MAX7219_LookupCode+0)+0
	addwf	(??_MAX7219_LookupCode+0)+0,w
	addlw	low((_MAX7219_Font)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	xorwf	(MAX7219_LookupCode@character),w
	skipz
	goto	u1131
	goto	u1130
u1131:
	goto	l1524
u1130:
	line	307
	
l1520:	
;MAX7219.C: 307: return MAX7219_Font[i].segs;
	setc
	rlf	(MAX7219_LookupCode@i),w
	addlw	low((_MAX7219_Font)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	goto	l369
	
l1522:	
	goto	l369
	
l368:	
	line	305
	
l1524:	
	movlw	(01h)
	movwf	(??_MAX7219_LookupCode+0)+0
	movf	(??_MAX7219_LookupCode+0)+0,w
	addwf	(MAX7219_LookupCode@i),f
	goto	l1526
	
l366:	
	
l1526:	
	movf	(MAX7219_LookupCode@i),w
	movwf	(??_MAX7219_LookupCode+0)+0
	addwf	(??_MAX7219_LookupCode+0)+0,w
	addlw	low((_MAX7219_Font)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u1141
	goto	u1140
u1141:
	goto	l1518
u1140:
	goto	l1528
	
l370:	
	line	308
	
l1528:	
;MAX7219.C: 308: return 0;
	movlw	(0)
	goto	l369
	
l1530:	
	line	309
	
l369:	
	return
	opt stack 0
GLOBAL	__end_of_MAX7219_LookupCode
	__end_of_MAX7219_LookupCode:
	signat	_MAX7219_LookupCode,4217
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[BANK0 ] unsigned char 
;;  counter         1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       4       0
;;      Locals:         0       2       0
;;      Temps:          0       1       0
;;      Totals:         0       7       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_display_time
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\awmod.c"
	line	6
global __ptext13
__ptext13:	;psect for function ___awmod
psect	text13
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\awmod.c"
	line	6
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
;incstack = 0
	opt	stack 4
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	13
	
l1764:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awmod@sign)
	line	14
	
l1766:	
	btfss	(___awmod@dividend+1),7
	goto	u1601
	goto	u1600
u1601:
	goto	l1772
u1600:
	line	15
	
l1768:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	16
	
l1770:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	goto	l1772
	line	17
	
l599:	
	line	18
	
l1772:	
	btfss	(___awmod@divisor+1),7
	goto	u1611
	goto	u1610
u1611:
	goto	l1776
u1610:
	line	19
	
l1774:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l1776
	
l600:	
	line	20
	
l1776:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u1621
	goto	u1620
u1621:
	goto	l1794
u1620:
	line	21
	
l1778:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	22
	goto	l1784
	
l603:	
	line	23
	
l1780:	
	movlw	01h
	
u1635:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u1635
	line	24
	
l1782:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l1784
	line	25
	
l602:	
	line	22
	
l1784:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u1641
	goto	u1640
u1641:
	goto	l1780
u1640:
	goto	l1786
	
l604:	
	goto	l1786
	line	26
	
l605:	
	line	27
	
l1786:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u1655
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u1655:
	skipc
	goto	u1651
	goto	u1650
u1651:
	goto	l1790
u1650:
	line	28
	
l1788:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l1790
	
l606:	
	line	29
	
l1790:	
	movlw	01h
	
u1665:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u1665
	line	30
	
l1792:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u1671
	goto	u1670
u1671:
	goto	l1786
u1670:
	goto	l1794
	
l607:	
	goto	l1794
	line	31
	
l601:	
	line	32
	
l1794:	
	movf	(___awmod@sign),w
	skipz
	goto	u1680
	goto	l1798
u1680:
	line	33
	
l1796:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l1798
	
l608:	
	line	34
	
l1798:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l609
	
l1800:	
	line	35
	
l609:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[BANK0 ] int 
;;  sign            1    6[BANK0 ] unsigned char 
;;  counter         1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       4       0
;;      Locals:         0       4       0
;;      Temps:          0       1       0
;;      Totals:         0       9       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_display_time
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\awdiv.c"
	line	6
global __ptext14
__ptext14:	;psect for function ___awdiv
psect	text14
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 4
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l1720:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@sign)
	line	15
	
l1722:	
	btfss	(___awdiv@divisor+1),7
	goto	u1501
	goto	u1500
u1501:
	goto	l1728
u1500:
	line	16
	
l1724:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l1726:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	goto	l1728
	line	18
	
l586:	
	line	19
	
l1728:	
	btfss	(___awdiv@dividend+1),7
	goto	u1511
	goto	u1510
u1511:
	goto	l1734
u1510:
	line	20
	
l1730:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l1732:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l1734
	line	22
	
l587:	
	line	23
	
l1734:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l1736:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u1521
	goto	u1520
u1521:
	goto	l1756
u1520:
	line	25
	
l1738:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l1744
	
l590:	
	line	27
	
l1740:	
	movlw	01h
	
u1535:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u1535
	line	28
	
l1742:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l1744
	line	29
	
l589:	
	line	26
	
l1744:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u1541
	goto	u1540
u1541:
	goto	l1740
u1540:
	goto	l1746
	
l591:	
	goto	l1746
	line	30
	
l592:	
	line	31
	
l1746:	
	movlw	01h
	
u1555:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u1555
	line	32
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u1565
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u1565:
	skipc
	goto	u1561
	goto	u1560
u1561:
	goto	l1752
u1560:
	line	33
	
l1748:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
l1750:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l1752
	line	35
	
l593:	
	line	36
	
l1752:	
	movlw	01h
	
u1575:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u1575
	line	37
	
l1754:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u1581
	goto	u1580
u1581:
	goto	l1746
u1580:
	goto	l1756
	
l594:	
	goto	l1756
	line	38
	
l588:	
	line	39
	
l1756:	
	movf	(___awdiv@sign),w
	skipz
	goto	u1590
	goto	l1760
u1590:
	line	40
	
l1758:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l1760
	
l595:	
	line	41
	
l1760:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l596
	
l1762:	
	line	42
	
l596:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_MAX7219_Init

;; *************** function _MAX7219_Init *****************
;; Defined at:
;;		line 119 in file "E:\Study Material\XC8 PROJECTS\Wall Clock\MAX7219.C"
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
;;      Temps:          0       1       0
;;      Totals:         0       1       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_MAX7219_Clear
;;		_MAX7219_DisplayTestStop
;;		_MAX7219_SetBrightness
;;		_MAX7219_ShutdownStop
;;		_MAX7219_Write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\Wall Clock\MAX7219.C"
	line	119
global __ptext15
__ptext15:	;psect for function _MAX7219_Init
psect	text15
	file	"E:\Study Material\XC8 PROJECTS\Wall Clock\MAX7219.C"
	line	119
	global	__size_of_MAX7219_Init
	__size_of_MAX7219_Init	equ	__end_of_MAX7219_Init-_MAX7219_Init
	
_MAX7219_Init:	
;incstack = 0
	opt	stack 2
; Regs used in _MAX7219_Init: [wreg+status,2+status,0+pclath+cstack]
	line	121
	
l1832:	
;MAX7219.C: 121: (RC0 = 0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7	;volatile
	line	122
;MAX7219.C: 122: (RC2 = 0);
	bcf	(58/8),(58)&7	;volatile
	line	123
;MAX7219.C: 123: (RC1 = 0);
	bcf	(57/8),(57)&7	;volatile
	line	125
	
l1834:	
;MAX7219.C: 125: MAX7219_Write(0x0b, 7);
	movlw	(07h)
	movwf	(??_MAX7219_Init+0)+0
	movf	(??_MAX7219_Init+0)+0,w
	movwf	(MAX7219_Write@dataout)
	movlw	(0Bh)
	fcall	_MAX7219_Write
	line	126
;MAX7219.C: 126: MAX7219_Write(0x09, 0x00);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(MAX7219_Write@dataout)
	movlw	(09h)
	fcall	_MAX7219_Write
	line	127
;MAX7219.C: 127: MAX7219_ShutdownStop();
	fcall	_MAX7219_ShutdownStop
	line	128
;MAX7219.C: 128: MAX7219_DisplayTestStop();
	fcall	_MAX7219_DisplayTestStop
	line	129
;MAX7219.C: 129: MAX7219_Clear();
	fcall	_MAX7219_Clear
	line	130
;MAX7219.C: 130: MAX7219_SetBrightness(0x06);
	movlw	(06h)
	fcall	_MAX7219_SetBrightness
	line	131
	
l337:	
	return
	opt stack 0
GLOBAL	__end_of_MAX7219_Init
	__end_of_MAX7219_Init:
	signat	_MAX7219_Init,88
	global	_MAX7219_ShutdownStop

;; *************** function _MAX7219_ShutdownStop *****************
;; Defined at:
;;		line 158 in file "E:\Study Material\XC8 PROJECTS\Wall Clock\MAX7219.C"
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
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_MAX7219_Write
;; This function is called by:
;;		_MAX7219_Init
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	line	158
global __ptext16
__ptext16:	;psect for function _MAX7219_ShutdownStop
psect	text16
	file	"E:\Study Material\XC8 PROJECTS\Wall Clock\MAX7219.C"
	line	158
	global	__size_of_MAX7219_ShutdownStop
	__size_of_MAX7219_ShutdownStop	equ	__end_of_MAX7219_ShutdownStop-_MAX7219_ShutdownStop
	
_MAX7219_ShutdownStop:	
;incstack = 0
	opt	stack 2
; Regs used in _MAX7219_ShutdownStop: [wreg+status,2+status,0+pclath+cstack]
	line	160
	
l1686:	
;MAX7219.C: 160: MAX7219_Write(0x0c, 1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(MAX7219_Write@dataout)
	incf	(MAX7219_Write@dataout),f
	movlw	(0Ch)
	fcall	_MAX7219_Write
	line	161
	
l343:	
	return
	opt stack 0
GLOBAL	__end_of_MAX7219_ShutdownStop
	__end_of_MAX7219_ShutdownStop:
	signat	_MAX7219_ShutdownStop,88
	global	_MAX7219_SetBrightness

;; *************** function _MAX7219_SetBrightness *****************
;; Defined at:
;;		line 203 in file "E:\Study Material\XC8 PROJECTS\Wall Clock\MAX7219.C"
;; Parameters:    Size  Location     Type
;;  brightness      1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  brightness      1    8[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0
;;      Temps:          0       1       0
;;      Totals:         0       2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_MAX7219_Write
;; This function is called by:
;;		_MAX7219_Init
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	line	203
global __ptext17
__ptext17:	;psect for function _MAX7219_SetBrightness
psect	text17
	file	"E:\Study Material\XC8 PROJECTS\Wall Clock\MAX7219.C"
	line	203
	global	__size_of_MAX7219_SetBrightness
	__size_of_MAX7219_SetBrightness	equ	__end_of_MAX7219_SetBrightness-_MAX7219_SetBrightness
	
_MAX7219_SetBrightness:	
;incstack = 0
	opt	stack 2
; Regs used in _MAX7219_SetBrightness: [wreg+status,2+status,0+pclath+cstack]
;MAX7219_SetBrightness@brightness stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(MAX7219_SetBrightness@brightness)
	line	205
	
l1702:	
;MAX7219.C: 205: brightness &= 0x0f;
	movlw	(0Fh)
	movwf	(??_MAX7219_SetBrightness+0)+0
	movf	(??_MAX7219_SetBrightness+0)+0,w
	andwf	(MAX7219_SetBrightness@brightness),f
	line	206
	
l1704:	
;MAX7219.C: 206: MAX7219_Write(0x0a, brightness);
	movf	(MAX7219_SetBrightness@brightness),w
	movwf	(??_MAX7219_SetBrightness+0)+0
	movf	(??_MAX7219_SetBrightness+0)+0,w
	movwf	(MAX7219_Write@dataout)
	movlw	(0Ah)
	fcall	_MAX7219_Write
	line	207
	
l352:	
	return
	opt stack 0
GLOBAL	__end_of_MAX7219_SetBrightness
	__end_of_MAX7219_SetBrightness:
	signat	_MAX7219_SetBrightness,4216
	global	_MAX7219_DisplayTestStop

;; *************** function _MAX7219_DisplayTestStop *****************
;; Defined at:
;;		line 188 in file "E:\Study Material\XC8 PROJECTS\Wall Clock\MAX7219.C"
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
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_MAX7219_Write
;; This function is called by:
;;		_MAX7219_Init
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1
	line	188
global __ptext18
__ptext18:	;psect for function _MAX7219_DisplayTestStop
psect	text18
	file	"E:\Study Material\XC8 PROJECTS\Wall Clock\MAX7219.C"
	line	188
	global	__size_of_MAX7219_DisplayTestStop
	__size_of_MAX7219_DisplayTestStop	equ	__end_of_MAX7219_DisplayTestStop-_MAX7219_DisplayTestStop
	
_MAX7219_DisplayTestStop:	
;incstack = 0
	opt	stack 2
; Regs used in _MAX7219_DisplayTestStop: [wreg+status,2+status,0+pclath+cstack]
	line	190
	
l1688:	
;MAX7219.C: 190: MAX7219_Write(0x0f, 0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(MAX7219_Write@dataout)
	movlw	(0Fh)
	fcall	_MAX7219_Write
	line	191
	
l349:	
	return
	opt stack 0
GLOBAL	__end_of_MAX7219_DisplayTestStop
	__end_of_MAX7219_DisplayTestStop:
	signat	_MAX7219_DisplayTestStop,88
	global	_MAX7219_Clear

;; *************** function _MAX7219_Clear *****************
;; Defined at:
;;		line 219 in file "E:\Study Material\XC8 PROJECTS\Wall Clock\MAX7219.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    8[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0
;;      Temps:          0       1       0
;;      Totals:         0       2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_MAX7219_Write
;; This function is called by:
;;		_MAX7219_Init
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1
	line	219
global __ptext19
__ptext19:	;psect for function _MAX7219_Clear
psect	text19
	file	"E:\Study Material\XC8 PROJECTS\Wall Clock\MAX7219.C"
	line	219
	global	__size_of_MAX7219_Clear
	__size_of_MAX7219_Clear	equ	__end_of_MAX7219_Clear-_MAX7219_Clear
	
_MAX7219_Clear:	
;incstack = 0
	opt	stack 2
; Regs used in _MAX7219_Clear: [wreg+status,2+status,0+pclath+cstack]
	line	222
	
l1690:	
;MAX7219.C: 221: char i;
;MAX7219.C: 222: for (i=0; i < 8; i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(MAX7219_Clear@i)
	
l1692:	
	movlw	(08h)
	subwf	(MAX7219_Clear@i),w
	skipc
	goto	u1431
	goto	u1430
u1431:
	goto	l1696
u1430:
	goto	l357
	
l1694:	
	goto	l357
	line	223
	
l355:	
	
l1696:	
;MAX7219.C: 223: MAX7219_Write(i, 0x00);
	clrf	(MAX7219_Write@dataout)
	movf	(MAX7219_Clear@i),w
	fcall	_MAX7219_Write
	line	222
	
l1698:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_MAX7219_Clear+0)+0
	movf	(??_MAX7219_Clear+0)+0,w
	addwf	(MAX7219_Clear@i),f
	
l1700:	
	movlw	(08h)
	subwf	(MAX7219_Clear@i),w
	skipc
	goto	u1441
	goto	u1440
u1441:
	goto	l1696
u1440:
	goto	l357
	
l356:	
	line	224
	
l357:	
	return
	opt stack 0
GLOBAL	__end_of_MAX7219_Clear
	__end_of_MAX7219_Clear:
	signat	_MAX7219_Clear,88
	global	_MAX7219_Write

;; *************** function _MAX7219_Write *****************
;; Defined at:
;;		line 322 in file "E:\Study Material\XC8 PROJECTS\Wall Clock\MAX7219.C"
;; Parameters:    Size  Location     Type
;;  reg_number      1    wreg     unsigned char 
;;  dataout         1    5[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  reg_number      1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       1       0
;;      Locals:         0       1       0
;;      Temps:          0       0       0
;;      Totals:         0       2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_MAX7219_SendByte
;; This function is called by:
;;		_MAX7219_Init
;;		_MAX7219_ShutdownStop
;;		_MAX7219_DisplayTestStop
;;		_MAX7219_SetBrightness
;;		_MAX7219_Clear
;;		_MAX7219_DisplayChar
;;		_MAX7219_ShutdownStart
;;		_MAX7219_DisplayTestStart
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1
	line	322
global __ptext20
__ptext20:	;psect for function _MAX7219_Write
psect	text20
	file	"E:\Study Material\XC8 PROJECTS\Wall Clock\MAX7219.C"
	line	322
	global	__size_of_MAX7219_Write
	__size_of_MAX7219_Write	equ	__end_of_MAX7219_Write-_MAX7219_Write
	
_MAX7219_Write:	
;incstack = 0
	opt	stack 1
; Regs used in _MAX7219_Write: [wreg+status,2+status,0+pclath+cstack]
;MAX7219_Write@reg_number stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(MAX7219_Write@reg_number)
	line	324
	
l1508:	
;MAX7219.C: 324: (RC1 = 1);
	bsf	(57/8),(57)&7	;volatile
	line	325
	
l1510:	
;MAX7219.C: 325: MAX7219_SendByte(reg_number);
	movf	(MAX7219_Write@reg_number),w
	fcall	_MAX7219_SendByte
	line	326
;MAX7219.C: 326: MAX7219_SendByte(dataout);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(MAX7219_Write@dataout),w
	fcall	_MAX7219_SendByte
	line	327
	
l1512:	
;MAX7219.C: 327: (RC1 = 0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7	;volatile
	line	328
	
l1514:	
;MAX7219.C: 328: (RC1 = 1);
	bsf	(57/8),(57)&7	;volatile
	line	329
	
l373:	
	return
	opt stack 0
GLOBAL	__end_of_MAX7219_Write
	__end_of_MAX7219_Write:
	signat	_MAX7219_Write,8312
	global	_MAX7219_SendByte

;; *************** function _MAX7219_SendByte *****************
;; Defined at:
;;		line 341 in file "E:\Study Material\XC8 PROJECTS\Wall Clock\MAX7219.C"
;; Parameters:    Size  Location     Type
;;  dataout         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dataout         1    2[BANK0 ] unsigned char 
;;  mask            1    3[BANK0 ] unsigned char 
;;  i               1    4[BANK0 ] unsigned char 
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
;;      Locals:         0       3       0
;;      Temps:          0       2       0
;;      Totals:         0       5       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_MAX7219_Write
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1
	line	341
global __ptext21
__ptext21:	;psect for function _MAX7219_SendByte
psect	text21
	file	"E:\Study Material\XC8 PROJECTS\Wall Clock\MAX7219.C"
	line	341
	global	__size_of_MAX7219_SendByte
	__size_of_MAX7219_SendByte	equ	__end_of_MAX7219_SendByte-_MAX7219_SendByte
	
_MAX7219_SendByte:	
;incstack = 0
	opt	stack 1
; Regs used in _MAX7219_SendByte: [wreg+status,2+status,0]
;MAX7219_SendByte@dataout stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(MAX7219_SendByte@dataout)
	line	344
	
l1492:	
;MAX7219.C: 343: char i;
;MAX7219.C: 344: for (i=8; i>0; i--) {
	movlw	(08h)
	movwf	(??_MAX7219_SendByte+0)+0
	movf	(??_MAX7219_SendByte+0)+0,w
	movwf	(MAX7219_SendByte@i)
	
l1494:	
	movf	(MAX7219_SendByte@i),f
	skipz
	goto	u1091
	goto	u1090
u1091:
	goto	l1498
u1090:
	goto	l380
	
l1496:	
	goto	l380
	
l376:	
	line	345
	
l1498:	
;MAX7219.C: 345: unsigned char mask = 1 << (i - 1);
	movlw	(01h)
	movwf	(??_MAX7219_SendByte+0)+0
	movf	(MAX7219_SendByte@i),w
	addlw	-1
	addlw	1
	goto	u1104
u1105:
	clrc
	rlf	(??_MAX7219_SendByte+0)+0,f
u1104:
	addlw	-1
	skipz
	goto	u1105
	movf	0+(??_MAX7219_SendByte+0)+0,w
	movwf	(??_MAX7219_SendByte+1)+0
	movf	(??_MAX7219_SendByte+1)+0,w
	movwf	(MAX7219_SendByte@mask)
	line	346
	
l1500:	
;MAX7219.C: 346: (RC2 = 0);
	bcf	(58/8),(58)&7	;volatile
	line	347
;MAX7219.C: 347: if (dataout & mask)
	movf	(MAX7219_SendByte@dataout),w
	andwf	(MAX7219_SendByte@mask),w
	btfsc	status,2
	goto	u1111
	goto	u1110
u1111:
	goto	l378
u1110:
	line	348
	
l1502:	
;MAX7219.C: 348: (RC0 = 1);
	bsf	(56/8),(56)&7	;volatile
	goto	l379
	line	349
	
l378:	
	line	350
;MAX7219.C: 349: else
;MAX7219.C: 350: (RC0 = 0);
	bcf	(56/8),(56)&7	;volatile
	
l379:	
	line	351
;MAX7219.C: 351: (RC2 = 1);
	bsf	(58/8),(58)&7	;volatile
	line	344
	
l1504:	
	movlw	low(01h)
	subwf	(MAX7219_SendByte@i),f
	
l1506:	
	movf	(MAX7219_SendByte@i),f
	skipz
	goto	u1121
	goto	u1120
u1121:
	goto	l1498
u1120:
	goto	l380
	
l377:	
	line	353
	
l380:	
	return
	opt stack 0
GLOBAL	__end_of_MAX7219_SendByte
	__end_of_MAX7219_SendByte:
	signat	_MAX7219_SendByte,4216
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 82 in file "E:\Study Material\XC8 PROJECTS\Wall Clock\wallclock.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___bmul
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\Wall Clock\wallclock.c"
	line	82
global __ptext22
__ptext22:	;psect for function _ISR
psect	text22
	file	"E:\Study Material\XC8 PROJECTS\Wall Clock\wallclock.c"
	line	82
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 1
; Regs used in _ISR: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
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
psect	text22
	line	85
	
i1l2012:	
;wallclock.c: 85: if(T0IE && T0IF)
	btfss	(93/8),(93)&7	;volatile
	goto	u194_21
	goto	u194_20
u194_21:
	goto	i1l196
u194_20:
	
i1l2014:	
	btfss	(90/8),(90)&7	;volatile
	goto	u195_21
	goto	u195_20
u195_21:
	goto	i1l196
u195_20:
	line	88
	
i1l2016:	
# 88 "E:\Study Material\XC8 PROJECTS\Wall Clock\wallclock.c"
NOP ;# 
	line	89
# 89 "E:\Study Material\XC8 PROJECTS\Wall Clock\wallclock.c"
NOP ;# 
	line	90
# 90 "E:\Study Material\XC8 PROJECTS\Wall Clock\wallclock.c"
NOP ;# 
	line	91
# 91 "E:\Study Material\XC8 PROJECTS\Wall Clock\wallclock.c"
NOP ;# 
	line	92
# 92 "E:\Study Material\XC8 PROJECTS\Wall Clock\wallclock.c"
NOP ;# 
psect	text22
	line	95
	
i1l2018:	
;wallclock.c: 95: msecs++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_msecs),f
	skipnc
	incf	(_msecs+1),f
	movlw	high(01h)
	addwf	(_msecs+1),f
	line	96
;wallclock.c: 96: if(msecs == 999)
	movlw	high(03E7h)
	xorwf	(_msecs+1),w
	skipz
	goto	u196_25
	movlw	low(03E7h)
	xorwf	(_msecs),w
u196_25:

	skipz
	goto	u196_21
	goto	u196_20
u196_21:
	goto	i1l2036
u196_20:
	line	98
	
i1l2020:	
;wallclock.c: 97: {
;wallclock.c: 98: for(error = 0; error < 68; error++)
	clrf	(_error)
	
i1l2022:	
	movlw	(044h)
	subwf	(_error),w
	skipc
	goto	u197_21
	goto	u197_20
u197_21:
	goto	i1l198
u197_20:
	goto	i1l199
	
i1l2024:	
	goto	i1l199
	line	99
	
i1l198:	
	line	101
# 101 "E:\Study Material\XC8 PROJECTS\Wall Clock\wallclock.c"
goto $+1 ;# 
psect	text22
	line	98
	
i1l2026:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	addwf	(_error),f
	
i1l2028:	
	movlw	(044h)
	subwf	(_error),w
	skipc
	goto	u198_21
	goto	u198_20
u198_21:
	goto	i1l198
u198_20:
	
i1l199:	
	line	105
# 105 "E:\Study Material\XC8 PROJECTS\Wall Clock\wallclock.c"
goto $+1 ;# 
	line	106
# 106 "E:\Study Material\XC8 PROJECTS\Wall Clock\wallclock.c"
goto $+1 ;# 
	line	107
# 107 "E:\Study Material\XC8 PROJECTS\Wall Clock\wallclock.c"
goto $+1 ;# 
psect	text22
	line	109
	
i1l2030:	
;wallclock.c: 109: secs++;
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_secs),f
	line	110
	
i1l2032:	
;wallclock.c: 110: sec_flag = 1;
	clrf	(_sec_flag)
	incf	(_sec_flag),f
	line	111
	
i1l2034:	
;wallclock.c: 111: msecs = 0;
	clrf	(_msecs)
	clrf	(_msecs+1)
	goto	i1l2036
	line	112
	
i1l197:	
	line	113
	
i1l2036:	
;wallclock.c: 112: }
;wallclock.c: 113: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	114
	
i1l2038:	
;wallclock.c: 114: TMR0 = 17;
	movlw	(011h)
	movwf	(1)	;volatile
	goto	i1l200
	line	115
	
i1l2040:	
;wallclock.c: 115: return;
	goto	i1l200
	line	116
	
i1l196:	
	line	118
;wallclock.c: 116: }
;wallclock.c: 118: if (RCIE && RCIF)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1125/8)^080h,(1125)&7	;volatile
	goto	u199_21
	goto	u199_20
u199_21:
	goto	i1l200
u199_20:
	
i1l2042:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7	;volatile
	goto	u200_21
	goto	u200_20
u200_21:
	goto	i1l200
u200_20:
	line	120
	
i1l2044:	
;wallclock.c: 119: {
;wallclock.c: 120: ch = (char)RCREG;
	movf	(26),w	;volatile
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_ch)
	line	121
	
i1l2046:	
;wallclock.c: 121: if(set_alarm == 0)
	movf	(_set_alarm),f
	skipz
	goto	u201_21
	goto	u201_20
u201_21:
	goto	i1l2082
u201_20:
	line	123
	
i1l2048:	
;wallclock.c: 122: {
;wallclock.c: 123: if((ch-48) >= 0x00 && (ch-48) <= 0x09)
	movf	(_ch),w
	addlw	low(-48)
	movwf	(??_ISR+0)+0
	movlw	high(-48)
	skipnc
	movlw	(high(-48)+1)&0ffh
	movwf	((??_ISR+0)+0)+1
	btfsc	1+(??_ISR+0)+0,7
	goto	u202_21
	goto	u202_20
u202_21:
	goto	i1l2082
u202_20:
	
i1l2050:	
	movf	(_ch),w
	addlw	low(-48)
	movwf	(??_ISR+0)+0
	movlw	high(-48)
	skipnc
	movlw	(high(-48)+1)&0ffh
	movwf	((??_ISR+0)+0)+1
	movf	1+(??_ISR+0)+0,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u203_25
	movlw	low(0Ah)
	subwf	0+(??_ISR+0)+0,w
u203_25:

	skipnc
	goto	u203_21
	goto	u203_20
u203_21:
	goto	i1l2082
u203_20:
	line	125
	
i1l2052:	
;wallclock.c: 124: {
;wallclock.c: 125: if(index < 6)
	movlw	(06h)
	subwf	(_index),w
	skipnc
	goto	u204_21
	goto	u204_20
u204_21:
	goto	i1l2064
u204_20:
	line	127
	
i1l2054:	
;wallclock.c: 126: {
;wallclock.c: 127: time_display_array[index] = ch - 48;
	movf	(_ch),w
	addlw	0D0h
	movwf	(??_ISR+0)+0
	movf	(_index),w
	addlw	_time_display_array&0ffh
	movwf	fsr0
	movf	(??_ISR+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	129
	
i1l2056:	
;wallclock.c: 129: if(index == 5)
	movf	(_index),w
	xorlw	05h
	skipz
	goto	u205_21
	goto	u205_20
u205_21:
	goto	i1l2064
u205_20:
	line	131
	
i1l2058:	
;wallclock.c: 130: {
;wallclock.c: 131: secs = time_display_array[1] * 10 + time_display_array[0];
	movlw	(0Ah)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_time_display_array)+01h,w
	fcall	___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_time_display_array),w
	movwf	(??_ISR+1)+0
	movf	(??_ISR+1)+0,w
	movwf	(_secs)
	line	132
;wallclock.c: 132: mins = time_display_array[3] * 10 + time_display_array[2];
	movlw	(0Ah)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	0+(_time_display_array)+03h,w
	fcall	___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(_time_display_array)+02h,w
	movwf	(??_ISR+1)+0
	movf	(??_ISR+1)+0,w
	movwf	(_mins)
	line	133
;wallclock.c: 133: hrs = time_display_array[5] * 10 + time_display_array[4];
	movlw	(0Ah)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	0+(_time_display_array)+05h,w
	fcall	___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(_time_display_array)+04h,w
	movwf	(??_ISR+1)+0
	movf	(??_ISR+1)+0,w
	movwf	(_hrs)
	line	134
	
i1l2060:	
;wallclock.c: 134: min_flag = 1;
	clrf	(_min_flag)
	incf	(_min_flag),f
	line	135
	
i1l2062:	
;wallclock.c: 135: adjustment = 0;
	clrf	(_adjustment)
	goto	i1l2064
	line	136
	
i1l205:	
	goto	i1l2064
	line	137
	
i1l204:	
	line	139
	
i1l2064:	
;wallclock.c: 136: }
;wallclock.c: 137: }
;wallclock.c: 139: if(index >= 6)
	movlw	(06h)
	subwf	(_index),w
	skipc
	goto	u206_21
	goto	u206_20
u206_21:
	goto	i1l2078
u206_20:
	line	141
	
i1l2066:	
;wallclock.c: 140: {
;wallclock.c: 141: date_display_array[index-6] = ch - 48;
	movf	(_ch),w
	addlw	0D0h
	movwf	(??_ISR+0)+0
	movf	(_index),w
	addlw	0FAh
	addlw	_date_display_array&0ffh
	movwf	fsr0
	movf	(??_ISR+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	143
	
i1l2068:	
;wallclock.c: 143: if(index == 11)
	movf	(_index),w
	xorlw	0Bh
	skipz
	goto	u207_21
	goto	u207_20
u207_21:
	goto	i1l2078
u207_20:
	line	145
	
i1l2070:	
;wallclock.c: 144: {
;wallclock.c: 145: year = date_display_array[1] * 10 + date_display_array[0];
	movlw	(0Ah)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_date_display_array)+01h,w
	fcall	___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_date_display_array),w
	movwf	(??_ISR+1)+0
	movf	(??_ISR+1)+0,w
	movwf	(_year)
	line	146
;wallclock.c: 146: month = date_display_array[3] * 10 + date_display_array[2];
	movlw	(0Ah)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	0+(_date_display_array)+03h,w
	fcall	___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(_date_display_array)+02h,w
	movwf	(??_ISR+1)+0
	movf	(??_ISR+1)+0,w
	movwf	(_month)
	line	147
;wallclock.c: 147: day = date_display_array[5] * 10 + date_display_array[4];
	movlw	(0Ah)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	0+(_date_display_array)+05h,w
	fcall	___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(_date_display_array)+04h,w
	movwf	(??_ISR+1)+0
	movf	(??_ISR+1)+0,w
	movwf	(_day)
	line	148
	
i1l2072:	
;wallclock.c: 148: date_flag = 1;
	clrf	(_date_flag)
	incf	(_date_flag),f
	line	149
	
i1l2074:	
;wallclock.c: 149: index = 0;
	clrf	(_index)
	goto	i1l200
	line	150
	
i1l2076:	
;wallclock.c: 150: return;
	goto	i1l200
	line	151
	
i1l207:	
	goto	i1l2078
	line	152
	
i1l206:	
	line	154
	
i1l2078:	
;wallclock.c: 151: }
;wallclock.c: 152: }
;wallclock.c: 154: index++;
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	addwf	(_index),f
	goto	i1l200
	line	155
	
i1l2080:	
;wallclock.c: 155: return;
	goto	i1l200
	line	156
	
i1l203:	
	goto	i1l2082
	line	157
	
i1l202:	
	line	158
	
i1l2082:	
;wallclock.c: 156: }
;wallclock.c: 157: }
;wallclock.c: 158: if(set_alarm == 1)
	movf	(_set_alarm),w
	xorlw	01h
	skipz
	goto	u208_21
	goto	u208_20
u208_21:
	goto	i1l2106
u208_20:
	line	160
	
i1l2084:	
;wallclock.c: 159: {
;wallclock.c: 160: if((ch-48) >= 0x00 && (ch-48) <= 0x09)
	movf	(_ch),w
	addlw	low(-48)
	movwf	(??_ISR+0)+0
	movlw	high(-48)
	skipnc
	movlw	(high(-48)+1)&0ffh
	movwf	((??_ISR+0)+0)+1
	btfsc	1+(??_ISR+0)+0,7
	goto	u209_21
	goto	u209_20
u209_21:
	goto	i1l2106
u209_20:
	
i1l2086:	
	movf	(_ch),w
	addlw	low(-48)
	movwf	(??_ISR+0)+0
	movlw	high(-48)
	skipnc
	movlw	(high(-48)+1)&0ffh
	movwf	((??_ISR+0)+0)+1
	movf	1+(??_ISR+0)+0,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u210_25
	movlw	low(0Ah)
	subwf	0+(??_ISR+0)+0,w
u210_25:

	skipnc
	goto	u210_21
	goto	u210_20
u210_21:
	goto	i1l2106
u210_20:
	line	162
	
i1l2088:	
;wallclock.c: 161: {
;wallclock.c: 162: alarm_array[index] = ch - 48;
	movf	(_ch),w
	addlw	0D0h
	movwf	(??_ISR+0)+0
	movf	(_index),w
	addlw	_alarm_array&0ffh
	movwf	fsr0
	movf	(??_ISR+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	163
	
i1l2090:	
;wallclock.c: 163: if(index == 3)
	movf	(_index),w
	xorlw	03h
	skipz
	goto	u211_21
	goto	u211_20
u211_21:
	goto	i1l2102
u211_20:
	line	165
	
i1l2092:	
;wallclock.c: 164: {
;wallclock.c: 165: alarm_mins = alarm_array[1] * 10 + alarm_array[0];
	movlw	(0Ah)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_alarm_array)+01h,w
	fcall	___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_alarm_array),w
	movwf	(??_ISR+1)+0
	movf	(??_ISR+1)+0,w
	movwf	(_alarm_mins)
	line	166
;wallclock.c: 166: alarm_hrs = alarm_array[3] * 10 + alarm_array[2];
	movlw	(0Ah)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	0+(_alarm_array)+03h,w
	fcall	___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(_alarm_array)+02h,w
	movwf	(??_ISR+1)+0
	movf	(??_ISR+1)+0,w
	movwf	(_alarm_hrs)
	line	168
	
i1l2094:	
;wallclock.c: 168: alarm_flag = 1;
	clrf	(_alarm_flag)
	incf	(_alarm_flag),f
	line	169
	
i1l2096:	
;wallclock.c: 169: set_alarm = 0;
	clrf	(_set_alarm)
	line	170
	
i1l2098:	
;wallclock.c: 170: index = 0;
	clrf	(_index)
	goto	i1l200
	line	171
	
i1l2100:	
;wallclock.c: 171: return;
	goto	i1l200
	line	172
	
i1l210:	
	line	173
	
i1l2102:	
;wallclock.c: 172: }
;wallclock.c: 173: index++;
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	addwf	(_index),f
	goto	i1l200
	line	174
	
i1l2104:	
;wallclock.c: 174: return;
	goto	i1l200
	line	175
	
i1l209:	
	goto	i1l2106
	line	176
	
i1l208:	
	line	177
	
i1l2106:	
;wallclock.c: 175: }
;wallclock.c: 176: }
;wallclock.c: 177: if(ch == 'T')
	movf	(_ch),w
	xorlw	054h
	skipz
	goto	u212_21
	goto	u212_20
u212_21:
	goto	i1l2110
u212_20:
	line	179
	
i1l2108:	
;wallclock.c: 178: {
;wallclock.c: 179: Twenty_Four_Hrs = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_Twenty_Four_Hrs)
	incf	(_Twenty_Four_Hrs),f
	line	180
;wallclock.c: 180: min_flag = 1;
	clrf	(_min_flag)
	incf	(_min_flag),f
	line	181
;wallclock.c: 181: return;
	goto	i1l200
	line	182
	
i1l211:	
	line	183
	
i1l2110:	
;wallclock.c: 182: }
;wallclock.c: 183: if(ch == 'F')
	movf	(_ch),w
	xorlw	046h
	skipz
	goto	u213_21
	goto	u213_20
u213_21:
	goto	i1l2118
u213_20:
	line	185
	
i1l2112:	
;wallclock.c: 184: {
;wallclock.c: 185: Twenty_Four_Hrs = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_Twenty_Four_Hrs)
	line	186
	
i1l2114:	
;wallclock.c: 186: min_flag = 1;
	clrf	(_min_flag)
	incf	(_min_flag),f
	goto	i1l200
	line	187
	
i1l2116:	
;wallclock.c: 187: return;
	goto	i1l200
	line	188
	
i1l212:	
	line	189
	
i1l2118:	
;wallclock.c: 188: }
;wallclock.c: 189: if(ch == 'S')
	movf	(_ch),w
	xorlw	053h
	skipz
	goto	u214_21
	goto	u214_20
u214_21:
	goto	i1l2122
u214_20:
	line	191
	
i1l2120:	
;wallclock.c: 190: {
;wallclock.c: 191: set_alarm = 1;
	clrf	(_set_alarm)
	incf	(_set_alarm),f
	line	192
;wallclock.c: 192: return;
	goto	i1l200
	line	193
	
i1l213:	
	line	194
	
i1l2122:	
;wallclock.c: 193: }
;wallclock.c: 194: if(ch == 'R')
	movf	(_ch),w
	xorlw	052h
	skipz
	goto	u215_21
	goto	u215_20
u215_21:
	goto	i1l2126
u215_20:
	line	196
	
i1l2124:	
;wallclock.c: 195: {
;wallclock.c: 196: alarm_auto_repeat = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_alarm_auto_repeat)
	incf	(_alarm_auto_repeat),f
	line	197
;wallclock.c: 197: return;
	goto	i1l200
	line	198
	
i1l214:	
	line	199
	
i1l2126:	
;wallclock.c: 198: }
;wallclock.c: 199: if(ch == 'N')
	movf	(_ch),w
	xorlw	04Eh
	skipz
	goto	u216_21
	goto	u216_20
u216_21:
	goto	i1l200
u216_20:
	line	201
	
i1l2128:	
;wallclock.c: 200: {
;wallclock.c: 201: alarm_auto_repeat = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_alarm_auto_repeat)
	goto	i1l200
	line	202
	
i1l2130:	
;wallclock.c: 202: return;
	goto	i1l200
	line	203
	
i1l215:	
	line	204
;wallclock.c: 203: }
;wallclock.c: 204: return;
	goto	i1l200
	line	205
	
i1l201:	
	line	206
	
i1l200:	
	movf	(??_ISR+5),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	global	___bmul

;; *************** function ___bmul *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\Umul8.c"
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
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\Umul8.c"
	line	4
global __ptext23
__ptext23:	;psect for function ___bmul
psect	text23
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\Umul8.c"
	line	4
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
;incstack = 0
	opt	stack 1
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	6
	
i1l1928:	
	clrf	(___bmul@product)
	goto	i1l1930
	line	42
	
i1l481:	
	line	43
	
i1l1930:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u186_21
	goto	u186_20
u186_21:
	goto	i1l1934
u186_20:
	line	44
	
i1l1932:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	goto	i1l1934
	
i1l482:	
	line	45
	
i1l1934:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	46
	
i1l1936:	
	clrc
	rrf	(___bmul@multiplier),f

	line	47
	
i1l1938:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u187_21
	goto	u187_20
u187_21:
	goto	i1l1930
u187_20:
	goto	i1l1940
	
i1l483:	
	line	50
	
i1l1940:	
	movf	(___bmul@product),w
	goto	i1l484
	
i1l1942:	
	line	51
	
i1l484:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
	signat	___bmul,8313
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

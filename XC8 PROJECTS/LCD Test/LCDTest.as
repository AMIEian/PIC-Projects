opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 59893"

opt pagewidth 120

	opt lm

	processor	16F877A
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
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
	FNCALL	_main,_LCDByte
	FNCALL	_main,_LCDInit
	FNCALL	_main,_LCDWriteString
	FNCALL	_LCDWriteString,_LCDByte
	FNCALL	_LCDInit,_LCDBusyLoop
	FNCALL	_LCDInit,_LCDByte
	FNCALL	_LCDByte,_LCDBusyLoop
	FNROOT	_main
	global	___cgram
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"E:\Study Material\XC8 PROJECTS\LCD Test\custom_char.h"
	line	15

;initializer for ___cgram
	retlw	0
	retlw	01h
	retlw	03h
	retlw	016h
	retlw	01Ch
	retlw	08h
	retlw	0
	retlw	0
	retlw	0
	retlw	01Bh
	retlw	0Eh
	retlw	04h
	retlw	0Eh
	retlw	01Bh
	retlw	0
	retlw	0
	retlw	04h
	retlw	04h
	retlw	04h
	retlw	04h
	retlw	01Fh
	retlw	0Eh
	retlw	04h
	retlw	0
	retlw	0Ah
	retlw	015h
	retlw	011h
	retlw	0Ah
	retlw	04h
	retlw	0
	retlw	0
	retlw	0
	retlw	0Ah
	retlw	01Fh
	retlw	01Fh
	retlw	0Eh
	retlw	04h
	retlw	0
	retlw	0
	retlw	0
	retlw	0Ch
	retlw	012h
	retlw	012h
	retlw	0Ch
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	04h
	retlw	0Eh
	retlw	01Fh
	retlw	0Eh
	retlw	04h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	global	LCDWriteInt@F1164
	global	_PORTD
_PORTD	set	0x8
	global	_RD4
_RD4	set	0x44
	global	_RD5
_RD5	set	0x45
	global	_RD6
_RD6	set	0x46
	global	_TRISD
_TRISD	set	0x88
	global	_TRISDbits
_TRISDbits	set	0x88
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
	global __stringdata
__stringdata:
	
STR_1:	
	retlw	72	;'H'
	retlw	101	;'e'
	retlw	108	;'l'
	retlw	108	;'l'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	87	;'W'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	108	;'l'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	48	;'0'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	49	;'1'
	retlw	0
psect	strings
	global __end_of__stringdata
__end_of__stringdata:
; #config settings
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$OFF
__CFG_PWRTE$OFF equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
global __CFG_BOREN$ON
__CFG_BOREN$ON equ 0x0
global __CFG_LVP$ON
__CFG_LVP$ON equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_WRT$OFF
__CFG_WRT$OFF equ 0x0
global __CFG_FOSC$HS
__CFG_FOSC$HS equ 0x0
	file	"LCDTest.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
LCDWriteInt@F1164:
       ds      5

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"E:\Study Material\XC8 PROJECTS\LCD Test\custom_char.h"
	line	15
___cgram:
       ds      64

	file	"LCDTest.as"
	line	#
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	line	#
global btemp
psect inittext,class=CODE,delta=2
global init_fetch0,btemp
;	Called with low address in FSR and high address in W
init_fetch0:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram0
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram0:
	fcall init_fetch0
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram0
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
global init_ram0, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+64)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_LCDInit:	; 0 bytes @ 0x0
?_LCDWriteString:	; 0 bytes @ 0x0
?_LCDBusyLoop:	; 0 bytes @ 0x0
??_LCDBusyLoop:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	ds	2
	global	LCDBusyLoop@busy
LCDBusyLoop@busy:	; 1 bytes @ 0x2
	ds	1
	global	LCDBusyLoop@temp
LCDBusyLoop@temp:	; 1 bytes @ 0x3
	ds	1
	global	LCDBusyLoop@status
LCDBusyLoop@status:	; 1 bytes @ 0x4
	ds	1
?_LCDByte:	; 0 bytes @ 0x5
	global	LCDByte@isdata
LCDByte@isdata:	; 1 bytes @ 0x5
	ds	1
??_LCDByte:	; 0 bytes @ 0x6
	ds	2
	global	LCDByte@hn
LCDByte@hn:	; 1 bytes @ 0x8
	ds	1
	global	LCDByte@ln
LCDByte@ln:	; 1 bytes @ 0x9
	ds	1
	global	LCDByte@c
LCDByte@c:	; 1 bytes @ 0xA
	ds	1
	global	LCDByte@temp
LCDByte@temp:	; 1 bytes @ 0xB
	ds	1
??_LCDInit:	; 0 bytes @ 0xC
??_LCDWriteString:	; 0 bytes @ 0xC
	ds	2
??_main:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	LCDInit@style
LCDInit@style:	; 1 bytes @ 0x0
	global	LCDWriteString@cc
LCDWriteString@cc:	; 1 bytes @ 0x0
	ds	1
	global	LCDInit@__i
LCDInit@__i:	; 1 bytes @ 0x1
	global	LCDWriteString@msg
LCDWriteString@msg:	; 1 bytes @ 0x1
	ds	1
;!
;!Data Sizes:
;!    Strings     18
;!    Constant    0
;!    Data        64
;!    BSS         5
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80      2      71
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    LCDWriteString@msg	PTR const unsigned char  size(1) Largest target is 18
;!		 -> STR_1(CODE[18]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_LCDInit
;!    _LCDWriteString->_LCDByte
;!    _LCDInit->_LCDByte
;!    _LCDByte->_LCDBusyLoop
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_LCDInit
;!    _main->_LCDWriteString
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0    3146
;!                            _LCDByte
;!                            _LCDInit
;!                     _LCDWriteString
;! ---------------------------------------------------------------------------------
;! (1) _LCDWriteString                                       3     3      0    1117
;!                                             12 COMMON     1     1      0
;!                                              0 BANK0      2     2      0
;!                            _LCDByte
;! ---------------------------------------------------------------------------------
;! (1) _LCDInit                                              4     4      0    1118
;!                                             12 COMMON     2     2      0
;!                                              0 BANK0      2     2      0
;!                        _LCDBusyLoop
;!                            _LCDByte
;! ---------------------------------------------------------------------------------
;! (2) _LCDByte                                              7     6      1     911
;!                                              5 COMMON     7     6      1
;!                        _LCDBusyLoop
;! ---------------------------------------------------------------------------------
;! (3) _LCDBusyLoop                                          5     5      0     117
;!                                              0 COMMON     5     5      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _LCDByte
;!     _LCDBusyLoop
;!   _LCDInit
;!     _LCDBusyLoop
;!     _LCDByte
;!       _LCDBusyLoop
;!   _LCDWriteString
;!     _LCDByte
;!       _LCDBusyLoop
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60      0       0       9        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0       0      11        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50      2      47       5       88.8%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      E       E       1      100.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      55      12        0.0%
;!ABS                  0      0      55       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 44 in file "E:\Study Material\XC8 PROJECTS\LCD Test\LCDTest.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LCDByte
;;		_LCDInit
;;		_LCDWriteString
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"E:\Study Material\XC8 PROJECTS\LCD Test\LCDTest.c"
	line	44
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"E:\Study Material\XC8 PROJECTS\LCD Test\LCDTest.c"
	line	44
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	47
	
l896:	
;LCDTest.c: 47: LCDInit(0B00000000);
	movlw	(0)
	fcall	_LCDInit
	line	50
	
l898:	
;LCDTest.c: 50: (LCDByte(0b00000001,0));
	clrf	(LCDByte@isdata)
	movlw	(01h)
	fcall	_LCDByte
	line	53
	
l900:	
;LCDTest.c: 53: LCDWriteString("Hello World %0 %1");
	movlw	((STR_1)-__stringbase)&0ffh
	fcall	_LCDWriteString
	line	55
;LCDTest.c: 55: while(1)
	
l9:	
	line	58
;LCDTest.c: 56: {
	
l10:	
	line	55
	goto	l9
	
l11:	
	line	60
	
l12:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_LCDWriteString

;; *************** function _LCDWriteString *****************
;; Defined at:
;;		line 253 in file "E:\Study Material\XC8 PROJECTS\LCD Test\lcd_hd44780_pic16.c"
;; Parameters:    Size  Location     Type
;;  msg             1    wreg     PTR const unsigned char 
;;		 -> STR_1(18), 
;; Auto vars:     Size  Location     Type
;;  msg             1    1[BANK0 ] PTR const unsigned char 
;;		 -> STR_1(18), 
;;  cc              1    0[BANK0 ] char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       2       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_LCDByte
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\LCD Test\lcd_hd44780_pic16.c"
	line	253
global __ptext1
__ptext1:	;psect for function _LCDWriteString
psect	text1
	file	"E:\Study Material\XC8 PROJECTS\LCD Test\lcd_hd44780_pic16.c"
	line	253
	global	__size_of_LCDWriteString
	__size_of_LCDWriteString	equ	__end_of_LCDWriteString-_LCDWriteString
	
_LCDWriteString:	
;incstack = 0
	opt	stack 5
; Regs used in _LCDWriteString: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;LCDWriteString@msg stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCDWriteString@msg)
	line	283
	
l872:	
;lcd_hd44780_pic16.c: 283: while(*msg!='\0')
	goto	l894
	
l49:	
	line	286
	
l874:	
;lcd_hd44780_pic16.c: 284: {
;lcd_hd44780_pic16.c: 286: if(*msg=='%')
	movf	(LCDWriteString@msg),w
	movwf	fsr0
	fcall	stringdir
	xorlw	025h
	skipz
	goto	u241
	goto	u240
u241:
	goto	l890
u240:
	line	288
	
l876:	
;lcd_hd44780_pic16.c: 287: {
;lcd_hd44780_pic16.c: 288: msg++;
	movlw	(01h)
	movwf	(??_LCDWriteString+0)+0
	movf	(??_LCDWriteString+0)+0,w
	addwf	(LCDWriteString@msg),f
	line	289
	
l878:	
;lcd_hd44780_pic16.c: 289: int8_t cc=*msg-'0';
	movf	(LCDWriteString@msg),w
	movwf	fsr0
	fcall	stringdir
	addlw	-48
	movwf	(??_LCDWriteString+0)+0
	movf	(??_LCDWriteString+0)+0,w
	movwf	(LCDWriteString@cc)
	line	291
	
l880:	
;lcd_hd44780_pic16.c: 291: if(cc>=0 && cc<=7)
	btfsc	(LCDWriteString@cc),7
	goto	u251
	goto	u250
u251:
	goto	l886
u250:
	
l882:	
	movf	(LCDWriteString@cc),w
	xorlw	80h
	addlw	-((08h)^80h)
	skipnc
	goto	u261
	goto	u260
u261:
	goto	l886
u260:
	line	293
	
l884:	
;lcd_hd44780_pic16.c: 292: {
;lcd_hd44780_pic16.c: 293: (LCDByte(cc,1));
	clrf	(LCDByte@isdata)
	incf	(LCDByte@isdata),f
	movf	(LCDWriteString@cc),w
	fcall	_LCDByte
	line	294
;lcd_hd44780_pic16.c: 294: }
	goto	l892
	line	295
	
l51:	
	line	297
	
l886:	
;lcd_hd44780_pic16.c: 295: else
;lcd_hd44780_pic16.c: 296: {
;lcd_hd44780_pic16.c: 297: (LCDByte('%',1));
	clrf	(LCDByte@isdata)
	incf	(LCDByte@isdata),f
	movlw	(025h)
	fcall	_LCDByte
	line	298
	
l888:	
;lcd_hd44780_pic16.c: 298: (LCDByte(*msg,1));
	clrf	(LCDByte@isdata)
	incf	(LCDByte@isdata),f
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCDWriteString@msg),w
	movwf	fsr0
	fcall	stringdir
	fcall	_LCDByte
	goto	l892
	line	299
	
l52:	
	line	300
;lcd_hd44780_pic16.c: 299: }
;lcd_hd44780_pic16.c: 300: }
	goto	l892
	line	301
	
l50:	
	line	303
	
l890:	
;lcd_hd44780_pic16.c: 301: else
;lcd_hd44780_pic16.c: 302: {
;lcd_hd44780_pic16.c: 303: (LCDByte(*msg,1));
	clrf	(LCDByte@isdata)
	incf	(LCDByte@isdata),f
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCDWriteString@msg),w
	movwf	fsr0
	fcall	stringdir
	fcall	_LCDByte
	goto	l892
	line	304
	
l53:	
	line	305
	
l892:	
;lcd_hd44780_pic16.c: 304: }
;lcd_hd44780_pic16.c: 305: msg++;
	movlw	(01h)
	movwf	(??_LCDWriteString+0)+0
	movf	(??_LCDWriteString+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(LCDWriteString@msg),f
	goto	l894
	line	306
	
l48:	
	line	283
	
l894:	
	movf	(LCDWriteString@msg),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u271
	goto	u270
u271:
	goto	l874
u270:
	goto	l55
	
l54:	
	line	307
	
l55:	
	return
	opt stack 0
GLOBAL	__end_of_LCDWriteString
	__end_of_LCDWriteString:
	signat	_LCDWriteString,4216
	global	_LCDInit

;; *************** function _LCDInit *****************
;; Defined at:
;;		line 195 in file "E:\Study Material\XC8 PROJECTS\LCD Test\lcd_hd44780_pic16.c"
;; Parameters:    Size  Location     Type
;;  style           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  style           1    0[BANK0 ] unsigned char 
;;  __i             1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       2       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_LCDBusyLoop
;;		_LCDByte
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	195
global __ptext2
__ptext2:	;psect for function _LCDInit
psect	text2
	file	"E:\Study Material\XC8 PROJECTS\LCD Test\lcd_hd44780_pic16.c"
	line	195
	global	__size_of_LCDInit
	__size_of_LCDInit	equ	__end_of_LCDInit-_LCDInit
	
_LCDInit:	
;incstack = 0
	opt	stack 5
; Regs used in _LCDInit: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;LCDInit@style stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCDInit@style)
	line	211
	
l822:	
;lcd_hd44780_pic16.c: 211: _delay((unsigned long)((30)*(20000000/4000.0)));
	opt asmopt_off
movlw	195
movwf	((??_LCDInit+0)+0+1),f
	movlw	205
movwf	((??_LCDInit+0)+0),f
u547:
	decfsz	((??_LCDInit+0)+0),f
	goto	u547
	decfsz	((??_LCDInit+0)+0+1),f
	goto	u547
opt asmopt_on

	line	214
	
l824:	
;lcd_hd44780_pic16.c: 214: TRISD&=(~(0x0F<<0));
	movlw	(0F0h)
	movwf	(??_LCDInit+0)+0
	movf	(??_LCDInit+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(136)^080h,f	;volatile
	line	216
	
l826:	
;lcd_hd44780_pic16.c: 216: TRISDbits.TRISD6=0;
	bcf	(136)^080h,6	;volatile
	line	217
	
l828:	
;lcd_hd44780_pic16.c: 217: TRISDbits.TRISD4=0;
	bcf	(136)^080h,4	;volatile
	line	218
	
l830:	
;lcd_hd44780_pic16.c: 218: TRISDbits.TRISD5=0;
	bcf	(136)^080h,5	;volatile
	line	220
	
l832:	
;lcd_hd44780_pic16.c: 220: PORTD&=(~(0x0F<<0));
	movlw	(0F0h)
	movwf	(??_LCDInit+0)+0
	movf	(??_LCDInit+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(8),f	;volatile
	line	222
	
l834:	
;lcd_hd44780_pic16.c: 222: (RD6=0);
	bcf	(70/8),(70)&7	;volatile
	line	223
	
l836:	
;lcd_hd44780_pic16.c: 223: (RD5=0);
	bcf	(69/8),(69)&7	;volatile
	line	224
	
l838:	
;lcd_hd44780_pic16.c: 224: (RD4=0);
	bcf	(68/8),(68)&7	;volatile
	line	227
	
l840:	
;lcd_hd44780_pic16.c: 227: _delay((unsigned long)((0.5)*(20000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	line	229
	
l842:	
;lcd_hd44780_pic16.c: 229: (RD6=1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7	;volatile
	line	230
	
l844:	
;lcd_hd44780_pic16.c: 230: PORTD|=((0b00000010)<<0);
	bsf	(8)+(1/8),(1)&7	;volatile
	line	231
	
l846:	
;lcd_hd44780_pic16.c: 231: _delay((unsigned long)((1)*(20000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop
	opt asmopt_on

	line	232
	
l848:	
;lcd_hd44780_pic16.c: 232: (RD6=0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7	;volatile
	line	233
	
l850:	
;lcd_hd44780_pic16.c: 233: _delay((unsigned long)((1)*(20000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop
	opt asmopt_on

	line	236
	
l852:	
;lcd_hd44780_pic16.c: 236: LCDBusyLoop();
	fcall	_LCDBusyLoop
	line	241
	
l854:	
;lcd_hd44780_pic16.c: 241: (LCDByte(0b00101000,0));
	clrf	(LCDByte@isdata)
	movlw	(028h)
	fcall	_LCDByte
	line	242
	
l856:	
;lcd_hd44780_pic16.c: 242: (LCDByte(0b00001100|style,0));
	clrf	(LCDByte@isdata)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCDInit@style),w
	iorlw	0Ch
	fcall	_LCDByte
	line	245
	
l858:	
;lcd_hd44780_pic16.c: 245: (LCDByte(0b01000000,0));
	clrf	(LCDByte@isdata)
	movlw	(040h)
	fcall	_LCDByte
	line	248
	
l860:	
;lcd_hd44780_pic16.c: 247: uint8_t __i;
;lcd_hd44780_pic16.c: 248: for(__i=0;__i<sizeof(__cgram);__i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDInit@__i)
	
l862:	
	movlw	(040h)
	subwf	(LCDInit@__i),w
	skipc
	goto	u221
	goto	u220
u221:
	goto	l866
u220:
	goto	l45
	
l864:	
	goto	l45
	line	249
	
l43:	
	
l866:	
;lcd_hd44780_pic16.c: 249: (LCDByte(__cgram[__i],1));
	clrf	(LCDByte@isdata)
	incf	(LCDByte@isdata),f
	movf	(LCDInit@__i),w
	addlw	___cgram&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_LCDByte
	line	248
	
l868:	
	movlw	(01h)
	movwf	(??_LCDInit+0)+0
	movf	(??_LCDInit+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(LCDInit@__i),f
	
l870:	
	movlw	(040h)
	subwf	(LCDInit@__i),w
	skipc
	goto	u231
	goto	u230
u231:
	goto	l866
u230:
	goto	l45
	
l44:	
	line	252
	
l45:	
	return
	opt stack 0
GLOBAL	__end_of_LCDInit
	__end_of_LCDInit:
	signat	_LCDInit,4216
	global	_LCDByte

;; *************** function _LCDByte *****************
;; Defined at:
;;		line 82 in file "E:\Study Material\XC8 PROJECTS\LCD Test\lcd_hd44780_pic16.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;;  isdata          1    5[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   10[COMMON] unsigned char 
;;  temp            1   11[COMMON] unsigned char 
;;  ln              1    9[COMMON] unsigned char 
;;  hn              1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_LCDBusyLoop
;; This function is called by:
;;		_main
;;		_LCDInit
;;		_LCDWriteString
;;		_LCDWriteInt
;;		_LCDGotoXY
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	82
global __ptext3
__ptext3:	;psect for function _LCDByte
psect	text3
	file	"E:\Study Material\XC8 PROJECTS\LCD Test\lcd_hd44780_pic16.c"
	line	82
	global	__size_of_LCDByte
	__size_of_LCDByte	equ	__end_of_LCDByte-_LCDByte
	
_LCDByte:	
;incstack = 0
	opt	stack 5
; Regs used in _LCDByte: [wreg+status,2+status,0+pclath+cstack]
;LCDByte@c stored from wreg
	movwf	(LCDByte@c)
	line	94
	
l792:	
;lcd_hd44780_pic16.c: 91: uint8_t hn,ln;
;lcd_hd44780_pic16.c: 92: uint8_t temp;
;lcd_hd44780_pic16.c: 94: hn=c>>4;
	movf	(LCDByte@c),w
	movwf	(??_LCDByte+0)+0
	movlw	04h
u205:
	clrc
	rrf	(??_LCDByte+0)+0,f
	addlw	-1
	skipz
	goto	u205
	movf	0+(??_LCDByte+0)+0,w
	movwf	(??_LCDByte+1)+0
	movf	(??_LCDByte+1)+0,w
	movwf	(LCDByte@hn)
	line	95
	
l794:	
;lcd_hd44780_pic16.c: 95: ln=(c & 0x0F);
	movf	(LCDByte@c),w
	andlw	0Fh
	movwf	(??_LCDByte+0)+0
	movf	(??_LCDByte+0)+0,w
	movwf	(LCDByte@ln)
	line	97
	
l796:	
;lcd_hd44780_pic16.c: 97: if(isdata==0)
	movf	(LCDByte@isdata),f
	skipz
	goto	u211
	goto	u210
u211:
	goto	l33
u210:
	line	98
	
l798:	
;lcd_hd44780_pic16.c: 98: (RD4=0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7	;volatile
	goto	l34
	line	99
	
l33:	
	line	100
;lcd_hd44780_pic16.c: 99: else
;lcd_hd44780_pic16.c: 100: (RD4=1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7	;volatile
	
l34:	
	line	102
;lcd_hd44780_pic16.c: 102: _delay((unsigned long)((0.5)*(20000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	line	104
;lcd_hd44780_pic16.c: 104: (RD6=1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7	;volatile
	line	108
	
l800:	
;lcd_hd44780_pic16.c: 108: temp=(PORTD & (~(0X0F<<0)))|((hn<<0));
	movf	(8),w	;volatile
	andlw	0F0h
	iorwf	(LCDByte@hn),w
	movwf	(??_LCDByte+0)+0
	movf	(??_LCDByte+0)+0,w
	movwf	(LCDByte@temp)
	line	109
	
l802:	
;lcd_hd44780_pic16.c: 109: PORTD=temp;
	movf	(LCDByte@temp),w
	movwf	(8)	;volatile
	line	111
	
l804:	
;lcd_hd44780_pic16.c: 111: _delay((unsigned long)((1)*(20000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop
	opt asmopt_on

	line	115
	
l806:	
;lcd_hd44780_pic16.c: 115: (RD6=0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7	;volatile
	line	117
	
l808:	
;lcd_hd44780_pic16.c: 117: _delay((unsigned long)((1)*(20000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop
	opt asmopt_on

	line	120
	
l810:	
;lcd_hd44780_pic16.c: 120: (RD6=1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7	;volatile
	line	122
	
l812:	
;lcd_hd44780_pic16.c: 122: temp=(PORTD & (~(0X0F<<0)))|((ln<<0));
	movf	(8),w	;volatile
	andlw	0F0h
	iorwf	(LCDByte@ln),w
	movwf	(??_LCDByte+0)+0
	movf	(??_LCDByte+0)+0,w
	movwf	(LCDByte@temp)
	line	124
;lcd_hd44780_pic16.c: 124: PORTD=temp;
	movf	(LCDByte@temp),w
	movwf	(8)	;volatile
	line	126
	
l814:	
;lcd_hd44780_pic16.c: 126: _delay((unsigned long)((1)*(20000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop
	opt asmopt_on

	line	130
	
l816:	
;lcd_hd44780_pic16.c: 130: (RD6=0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7	;volatile
	line	132
	
l818:	
;lcd_hd44780_pic16.c: 132: _delay((unsigned long)((1)*(20000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop
	opt asmopt_on

	line	134
	
l820:	
;lcd_hd44780_pic16.c: 134: LCDBusyLoop();
	fcall	_LCDBusyLoop
	line	135
	
l35:	
	return
	opt stack 0
GLOBAL	__end_of_LCDByte
	__end_of_LCDByte:
	signat	_LCDByte,8312
	global	_LCDBusyLoop

;; *************** function _LCDBusyLoop *****************
;; Defined at:
;;		line 137 in file "E:\Study Material\XC8 PROJECTS\LCD Test\lcd_hd44780_pic16.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  status          1    4[COMMON] unsigned char 
;;  temp            1    3[COMMON] unsigned char 
;;  busy            1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCDByte
;;		_LCDInit
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	137
global __ptext4
__ptext4:	;psect for function _LCDBusyLoop
psect	text4
	file	"E:\Study Material\XC8 PROJECTS\LCD Test\lcd_hd44780_pic16.c"
	line	137
	global	__size_of_LCDBusyLoop
	__size_of_LCDBusyLoop	equ	__end_of_LCDBusyLoop-_LCDBusyLoop
	
_LCDBusyLoop:	
;incstack = 0
	opt	stack 5
; Regs used in _LCDBusyLoop: [wreg+status,2+status,0]
	line	141
	
l746:	
;lcd_hd44780_pic16.c: 141: uint8_t busy,status=0x00,temp;
	clrf	(LCDBusyLoop@status)
	line	144
	
l748:	
;lcd_hd44780_pic16.c: 144: TRISD|=(0x0f<<0);
	movlw	(0Fh)
	movwf	(??_LCDBusyLoop+0)+0
	movf	(??_LCDBusyLoop+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(136)^080h,f	;volatile
	line	147
	
l750:	
;lcd_hd44780_pic16.c: 147: (RD5=1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7	;volatile
	line	148
	
l752:	
;lcd_hd44780_pic16.c: 148: (RD4=0);
	bcf	(68/8),(68)&7	;volatile
	line	152
	
l754:	
;lcd_hd44780_pic16.c: 152: _delay((unsigned long)((0.5)*(20000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	goto	l756
	line	155
;lcd_hd44780_pic16.c: 155: do
	
l38:	
	line	158
	
l756:	
;lcd_hd44780_pic16.c: 156: {
;lcd_hd44780_pic16.c: 158: (RD6=1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7	;volatile
	line	161
	
l758:	
;lcd_hd44780_pic16.c: 161: _delay((unsigned long)((0.5)*(20000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	line	163
	
l760:	
;lcd_hd44780_pic16.c: 163: status=(PORTD>>0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w	;volatile
	movwf	(??_LCDBusyLoop+0)+0
	movf	(??_LCDBusyLoop+0)+0,w
	movwf	(LCDBusyLoop@status)
	line	164
	
l762:	
;lcd_hd44780_pic16.c: 164: status=status<<4;
	movf	(LCDBusyLoop@status),w
	movwf	(??_LCDBusyLoop+0)+0
	movlw	(04h)-1
u185:
	clrc
	rlf	(??_LCDBusyLoop+0)+0,f
	addlw	-1
	skipz
	goto	u185
	clrc
	rlf	(??_LCDBusyLoop+0)+0,w
	movwf	(??_LCDBusyLoop+1)+0
	movf	(??_LCDBusyLoop+1)+0,w
	movwf	(LCDBusyLoop@status)
	line	166
	
l764:	
;lcd_hd44780_pic16.c: 166: _delay((unsigned long)((0.5)*(20000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	line	169
	
l766:	
;lcd_hd44780_pic16.c: 169: (RD6=0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7	;volatile
	line	170
	
l768:	
;lcd_hd44780_pic16.c: 170: _delay((unsigned long)((1)*(20000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop
	opt asmopt_on

	line	172
	
l770:	
;lcd_hd44780_pic16.c: 172: (RD6=1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7	;volatile
	line	173
	
l772:	
;lcd_hd44780_pic16.c: 173: _delay((unsigned long)((0.5)*(20000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	line	175
	
l774:	
;lcd_hd44780_pic16.c: 175: temp=(PORTD>>0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w	;volatile
	movwf	(??_LCDBusyLoop+0)+0
	movf	(??_LCDBusyLoop+0)+0,w
	movwf	(LCDBusyLoop@temp)
	line	176
	
l776:	
;lcd_hd44780_pic16.c: 176: temp&=0x0F;
	movlw	(0Fh)
	movwf	(??_LCDBusyLoop+0)+0
	movf	(??_LCDBusyLoop+0)+0,w
	andwf	(LCDBusyLoop@temp),f
	line	178
	
l778:	
;lcd_hd44780_pic16.c: 178: status=status|temp;
	movf	(LCDBusyLoop@status),w
	iorwf	(LCDBusyLoop@temp),w
	movwf	(??_LCDBusyLoop+0)+0
	movf	(??_LCDBusyLoop+0)+0,w
	movwf	(LCDBusyLoop@status)
	line	180
	
l780:	
;lcd_hd44780_pic16.c: 180: busy=status & 0b10000000;
	movf	(LCDBusyLoop@status),w
	andlw	080h
	movwf	(??_LCDBusyLoop+0)+0
	movf	(??_LCDBusyLoop+0)+0,w
	movwf	(LCDBusyLoop@busy)
	line	182
	
l782:	
;lcd_hd44780_pic16.c: 182: _delay((unsigned long)((0.5)*(20000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	line	184
	
l784:	
;lcd_hd44780_pic16.c: 184: (RD6=0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7	;volatile
	line	185
	
l786:	
;lcd_hd44780_pic16.c: 185: _delay((unsigned long)((1)*(20000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop
	opt asmopt_on

	line	186
	
l788:	
;lcd_hd44780_pic16.c: 186: }while(busy);
	movf	(LCDBusyLoop@busy),f
	skipz
	goto	u191
	goto	u190
u191:
	goto	l756
u190:
	
l39:	
	line	188
;lcd_hd44780_pic16.c: 188: (RD5=0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7	;volatile
	line	191
	
l790:	
;lcd_hd44780_pic16.c: 191: TRISD&=(~(0x0F<<0));
	movlw	(0F0h)
	movwf	(??_LCDBusyLoop+0)+0
	movf	(??_LCDBusyLoop+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(136)^080h,f	;volatile
	line	193
	
l40:	
	return
	opt stack 0
GLOBAL	__end_of_LCDBusyLoop
	__end_of_LCDBusyLoop:
	signat	_LCDBusyLoop,88
global	___latbits
___latbits	equ	2
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

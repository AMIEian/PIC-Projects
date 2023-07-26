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
	FNCALL	_main,_GetPulseWidth
	FNCALL	_main,_HCSR04Init
	FNCALL	_main,_HCSR04Trigger
	FNCALL	_main,_LCDByte
	FNCALL	_main,_LCDGotoXY
	FNCALL	_main,_LCDInit
	FNCALL	_main,_LCDWriteInt
	FNCALL	_main,_LCDWriteString
	FNCALL	_main,___awtoft
	FNCALL	_main,___ftmul
	FNCALL	_main,___fttol
	FNCALL	___awtoft,___ftpack
	FNCALL	_LCDWriteString,_LCDByte
	FNCALL	_LCDWriteInt,_LCDByte
	FNCALL	_LCDWriteInt,___awdiv
	FNCALL	_LCDWriteInt,___awmod
	FNCALL	_LCDInit,_LCDBusyLoop
	FNCALL	_LCDInit,_LCDByte
	FNCALL	_LCDGotoXY,_LCDByte
	FNCALL	_LCDByte,_LCDBusyLoop
	FNCALL	_GetPulseWidth,___ftmul
	FNCALL	_GetPulseWidth,___fttol
	FNCALL	_GetPulseWidth,___lltoft
	FNCALL	___lltoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNROOT	_main
	global	___cgram
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"E:\Study Material\XC8 PROJECTS\Ultrasonic Distance Meter\custom_char.h"
	line	15

;initializer for ___cgram
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
	global	LCDWriteInt@F784
	global	_TMR1
_TMR1	set	0xE
	global	_PORTA
_PORTA	set	0x5
	global	_PORTC
_PORTC	set	0x7
	global	_PORTCbits
_PORTCbits	set	0x7
	global	_RC5
_RC5	set	0x3D
	global	_RC6
_RC6	set	0x3E
	global	_RC7
_RC7	set	0x3F
	global	_T1CKPS0
_T1CKPS0	set	0x84
	global	_TMR1ON
_TMR1ON	set	0x80
	global	_TRISA
_TRISA	set	0x85
	global	_TRISC
_TRISC	set	0x87
	global	_TRISCbits
_TRISCbits	set	0x87
	global	_PCFG1
_PCFG1	set	0x4F9
	global	_PCFG2
_PCFG2	set	0x4FA
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
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	78	;'N'
	retlw	73	;'I'
	retlw	84	;'T'
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_2:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	83	;'S'
	retlw	65	;'A'
	retlw	78	;'N'
	retlw	71	;'G'
	retlw	65	;'A'
	retlw	76	;'L'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_3:	
	retlw	68	;'D'
	retlw	73	;'I'
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	65	;'A'
	retlw	78	;'N'
	retlw	67	;'C'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	77	;'M'
	retlw	69	;'E'
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	0
psect	strings
	
STR_5:	
	retlw	67	;'C'
	retlw	108	;'l'
	retlw	101	;'e'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	33	;'!'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_6:	
	retlw	68	;'D'
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	116	;'t'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	99	;'c'
	retlw	101	;'e'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_4:	
	retlw	69	;'E'
	retlw	114	;'r'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	33	;'!'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_7:	
	retlw	32	;' '
	retlw	99	;'c'
	retlw	109	;'m'
	retlw	0
psect	strings
	global __end_of__stringdata
__end_of__stringdata:
; #config settings
	file	"U_Dis_Mtr.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
LCDWriteInt@F784:
       ds      5

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"E:\Study Material\XC8 PROJECTS\Ultrasonic Distance Meter\custom_char.h"
	line	15
___cgram:
       ds      16

	file	"U_Dis_Mtr.as"
	line	#
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
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
	fcall	__pidataBANK0+5		;fetch initializer
	movwf	__pdataBANK0+5&07fh		
	fcall	__pidataBANK0+6		;fetch initializer
	movwf	__pdataBANK0+6&07fh		
	fcall	__pidataBANK0+7		;fetch initializer
	movwf	__pdataBANK0+7&07fh		
	fcall	__pidataBANK0+8		;fetch initializer
	movwf	__pdataBANK0+8&07fh		
	fcall	__pidataBANK0+9		;fetch initializer
	movwf	__pdataBANK0+9&07fh		
	fcall	__pidataBANK0+10		;fetch initializer
	movwf	__pdataBANK0+10&07fh		
	fcall	__pidataBANK0+11		;fetch initializer
	movwf	__pdataBANK0+11&07fh		
	fcall	__pidataBANK0+12		;fetch initializer
	movwf	__pdataBANK0+12&07fh		
	fcall	__pidataBANK0+13		;fetch initializer
	movwf	__pdataBANK0+13&07fh		
	fcall	__pidataBANK0+14		;fetch initializer
	movwf	__pdataBANK0+14&07fh		
	fcall	__pidataBANK0+15		;fetch initializer
	movwf	__pdataBANK0+15&07fh		
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_LCDBusyLoop:	; 0 bytes @ 0x0
??_LCDBusyLoop:	; 0 bytes @ 0x0
?_LCDInit:	; 0 bytes @ 0x0
?_LCDWriteString:	; 0 bytes @ 0x0
?_HCSR04Init:	; 0 bytes @ 0x0
??_HCSR04Init:	; 0 bytes @ 0x0
?_HCSR04Trigger:	; 0 bytes @ 0x0
??_HCSR04Trigger:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	2
	global	LCDBusyLoop@busy
LCDBusyLoop@busy:	; 1 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	LCDBusyLoop@temp
LCDBusyLoop@temp:	; 1 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	ds	1
??___awdiv:	; 0 bytes @ 0x4
??___awmod:	; 0 bytes @ 0x4
	global	LCDBusyLoop@status
LCDBusyLoop@status:	; 1 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	ds	1
??___ftpack:	; 0 bytes @ 0x5
?_LCDByte:	; 0 bytes @ 0x5
	global	LCDByte@isdata
LCDByte@isdata:	; 1 bytes @ 0x5
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
??_LCDByte:	; 0 bytes @ 0x6
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	1
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x8
	global	?___lltoft
?___lltoft:	; 3 bytes @ 0x8
	global	LCDByte@hn
LCDByte@hn:	; 1 bytes @ 0x8
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x8
	global	___lltoft@c
___lltoft@c:	; 4 bytes @ 0x8
	ds	1
	global	LCDByte@ln
LCDByte@ln:	; 1 bytes @ 0x9
	ds	1
	global	LCDByte@c
LCDByte@c:	; 1 bytes @ 0xA
	ds	1
??___awtoft:	; 0 bytes @ 0xB
	global	LCDByte@temp
LCDByte@temp:	; 1 bytes @ 0xB
	ds	1
??_LCDInit:	; 0 bytes @ 0xC
??_LCDWriteString:	; 0 bytes @ 0xC
??_LCDWriteInt:	; 0 bytes @ 0xC
?_LCDGotoXY:	; 0 bytes @ 0xC
??___lltoft:	; 0 bytes @ 0xC
	global	LCDGotoXY@y
LCDGotoXY@y:	; 1 bytes @ 0xC
	ds	1
??_LCDGotoXY:	; 0 bytes @ 0xD
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xD
	global	___lltoft@exp
___lltoft@exp:	; 1 bytes @ 0xD
	ds	1
??_GetPulseWidth:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?_LCDWriteInt:	; 0 bytes @ 0x0
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x0
	global	LCDInit@style
LCDInit@style:	; 1 bytes @ 0x0
	global	LCDWriteString@cc
LCDWriteString@cc:	; 1 bytes @ 0x0
	global	LCDGotoXY@x
LCDGotoXY@x:	; 1 bytes @ 0x0
	global	LCDWriteInt@val
LCDWriteInt@val:	; 2 bytes @ 0x0
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x0
	ds	1
	global	LCDInit@__i
LCDInit@__i:	; 1 bytes @ 0x1
	global	LCDWriteString@msg
LCDWriteString@msg:	; 1 bytes @ 0x1
	ds	1
	global	LCDWriteInt@field_length
LCDWriteInt@field_length:	; 1 bytes @ 0x2
	ds	1
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x3
	global	LCDWriteInt@str
LCDWriteInt@str:	; 5 bytes @ 0x3
	ds	3
??___ftmul:	; 0 bytes @ 0x6
	ds	2
	global	LCDWriteInt@j
LCDWriteInt@j:	; 2 bytes @ 0x8
	ds	2
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0xA
	global	LCDWriteInt@i
LCDWriteInt@i:	; 2 bytes @ 0xA
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0xB
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0xE
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0xF
	ds	1
	global	?___fttol
?___fttol:	; 4 bytes @ 0x10
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x10
	ds	4
??___fttol:	; 0 bytes @ 0x14
	ds	4
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x18
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x19
	ds	4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x1D
	ds	1
	global	?_GetPulseWidth
?_GetPulseWidth:	; 2 bytes @ 0x1E
	ds	2
	global	GetPulseWidth@result
GetPulseWidth@result:	; 4 bytes @ 0x20
	ds	4
	global	GetPulseWidth@i
GetPulseWidth@i:	; 4 bytes @ 0x24
	ds	4
??_main:	; 0 bytes @ 0x28
	ds	3
	global	main@d
main@d:	; 2 bytes @ 0x2B
	ds	2
	global	main@r
main@r:	; 2 bytes @ 0x2D
	ds	2
;!
;!Data Sizes:
;!    Strings     84
;!    Constant    0
;!    Data        16
;!    BSS         5
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     47      68
;!    BANK1            32      0       0

;!
;!Pointer List with Targets:
;!
;!    LCDWriteString@msg	PTR const unsigned char  size(1) Largest target is 18
;!		 -> STR_7(CODE[4]), STR_6(CODE[10]), STR_5(CODE[10]), STR_4(CODE[9]), 
;!		 -> STR_3(CODE[15]), STR_2(CODE[18]), STR_1(CODE[18]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_LCDGotoXY
;!    _main->_LCDInit
;!    _main->_LCDWriteInt
;!    _main->___awtoft
;!    ___awtoft->___ftpack
;!    _LCDWriteString->_LCDByte
;!    _LCDWriteInt->_LCDByte
;!    _LCDInit->_LCDByte
;!    _LCDGotoXY->_LCDByte
;!    _LCDByte->_LCDBusyLoop
;!    _GetPulseWidth->___lltoft
;!    ___lltoft->___ftpack
;!    ___fttol->___awtoft
;!    ___fttol->___lltoft
;!    ___ftmul->___awtoft
;!    ___ftmul->___lltoft
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_GetPulseWidth
;!    _GetPulseWidth->___fttol
;!    ___fttol->___ftmul
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
;! (0) _main                                                 7     7      0   16603
;!                                             40 BANK0      7     7      0
;!                      _GetPulseWidth
;!                         _HCSR04Init
;!                      _HCSR04Trigger
;!                            _LCDByte
;!                          _LCDGotoXY
;!                            _LCDInit
;!                        _LCDWriteInt
;!                     _LCDWriteString
;!                           ___awtoft
;!                            ___ftmul
;!                            ___fttol
;! ---------------------------------------------------------------------------------
;! (1) ___awtoft                                             6     3      3    1790
;!                                              8 COMMON     6     3      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (1) _LCDWriteString                                       3     3      0    1438
;!                                             12 COMMON     1     1      0
;!                                              0 BANK0      2     2      0
;!                            _LCDByte
;! ---------------------------------------------------------------------------------
;! (1) _LCDWriteInt                                         14    11      3    2394
;!                                             12 COMMON     2     2      0
;!                                              0 BANK0     12     9      3
;!                            _LCDByte
;!                            ___awdiv
;!                            ___awmod
;! ---------------------------------------------------------------------------------
;! (2) ___awmod                                              7     3      4     402
;!                                              0 COMMON     7     3      4
;! ---------------------------------------------------------------------------------
;! (2) ___awdiv                                              9     5      4     406
;!                                              0 COMMON     9     5      4
;! ---------------------------------------------------------------------------------
;! (1) _LCDInit                                              4     4      0    1277
;!                                             12 COMMON     2     2      0
;!                                              0 BANK0      2     2      0
;!                        _LCDBusyLoop
;!                            _LCDByte
;! ---------------------------------------------------------------------------------
;! (1) _LCDGotoXY                                            3     2      1    1511
;!                                             12 COMMON     2     1      1
;!                                              0 BANK0      1     1      0
;!                            _LCDByte
;! ---------------------------------------------------------------------------------
;! (2) _LCDByte                                              7     6      1    1070
;!                                              5 COMMON     7     6      1
;!                        _LCDBusyLoop
;! ---------------------------------------------------------------------------------
;! (3) _LCDBusyLoop                                          5     5      0     117
;!                                              0 COMMON     5     5      0
;! ---------------------------------------------------------------------------------
;! (1) _HCSR04Trigger                                        1     1      0       0
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _HCSR04Init                                           1     1      0       0
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _GetPulseWidth                                       10     8      2    4491
;!                                             30 BANK0     10     8      2
;!                            ___ftmul
;!                            ___fttol
;!                           ___lltoft
;! ---------------------------------------------------------------------------------
;! (2) ___lltoft                                             6     2      4    1768
;!                                              8 COMMON     6     2      4
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (1) ___fttol                                             14    10      4     358
;!                                             16 BANK0     14    10      4
;!                           ___awtoft (ARG)
;!                            ___ftmul (ARG)
;!                           ___lltoft (ARG)
;! ---------------------------------------------------------------------------------
;! (1) ___ftmul                                             16    10      6    2184
;!                                              0 BANK0     16    10      6
;!                           ___awtoft (ARG)
;!                           ___ftpack
;!                           ___lltoft (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftpack                                             8     3      5    1646
;!                                              0 COMMON     8     3      5
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _GetPulseWidth
;!     ___ftmul
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftpack (ARG)
;!       ___lltoft (ARG)
;!         ___ftpack
;!     ___fttol
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftmul (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         ___lltoft (ARG)
;!           ___ftpack
;!       ___lltoft (ARG)
;!         ___ftpack
;!     ___lltoft
;!       ___ftpack
;!   _HCSR04Init
;!   _HCSR04Trigger
;!   _LCDByte
;!     _LCDBusyLoop
;!   _LCDGotoXY
;!     _LCDByte
;!       _LCDBusyLoop
;!   _LCDInit
;!     _LCDBusyLoop
;!     _LCDByte
;!       _LCDBusyLoop
;!   _LCDWriteInt
;!     _LCDByte
;!       _LCDBusyLoop
;!     ___awdiv
;!     ___awmod
;!   _LCDWriteString
;!     _LCDByte
;!       _LCDBusyLoop
;!   ___awtoft
;!     ___ftpack
;!   ___ftmul
;!     ___awtoft (ARG)
;!       ___ftpack
;!     ___ftpack (ARG)
;!     ___lltoft (ARG)
;!       ___ftpack
;!   ___fttol
;!     ___awtoft (ARG)
;!       ___ftpack
;!     ___ftmul (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftpack (ARG)
;!       ___lltoft (ARG)
;!         ___ftpack
;!     ___lltoft (ARG)
;!       ___ftpack
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
;!BANK0               50     2F      44       5       85.0%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      E       E       1      100.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      52       8        0.0%
;!ABS                  0      0      52       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA              40      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 143 in file "E:\Study Material\XC8 PROJECTS\Ultrasonic Distance Meter\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  d               2   43[BANK0 ] int 
;;  r               2   45[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       4       0
;;      Temps:          0       3       0
;;      Totals:         0       7       0
;;Total ram usage:        7 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_GetPulseWidth
;;		_HCSR04Init
;;		_HCSR04Trigger
;;		_LCDByte
;;		_LCDGotoXY
;;		_LCDInit
;;		_LCDWriteInt
;;		_LCDWriteString
;;		___awtoft
;;		___ftmul
;;		___fttol
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"E:\Study Material\XC8 PROJECTS\Ultrasonic Distance Meter\main.c"
	line	143
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"E:\Study Material\XC8 PROJECTS\Ultrasonic Distance Meter\main.c"
	line	143
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	150
	
l1675:	
;main.c: 145: int16_t r;
;main.c: 150: PCFG2=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1274/8)^080h,(1274)&7	;volatile
	line	151
;main.c: 151: PCFG1=1;
	bsf	(1273/8)^080h,(1273)&7	;volatile
	line	154
	
l1677:	
;main.c: 154: LCDInit(0B00000000);
	movlw	(0)
	fcall	_LCDInit
	line	156
	
l1679:	
;main.c: 156: TRISCbits.TRISC2=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(135)^080h,2	;volatile
	line	157
	
l1681:	
;main.c: 157: PORTCbits.RC2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7),2	;volatile
	line	160
	
l1683:	
;main.c: 160: (LCDByte(0b00000001,0));
	clrf	(LCDByte@isdata)
	movlw	(01h)
	fcall	_LCDByte
	line	163
	
l1685:	
;main.c: 163: HCSR04Init();
	fcall	_HCSR04Init
	line	166
;main.c: 166: { LCDGotoXY(0,0); LCDWriteString("     NITIN       ");};
	clrf	(LCDGotoXY@y)
	movlw	(0)
	fcall	_LCDGotoXY
	movlw	((STR_1)-__stringbase)&0ffh
	fcall	_LCDWriteString
	line	167
;main.c: 167: { LCDGotoXY(0,1); LCDWriteString("    SANGALE      ");};
	clrf	(LCDGotoXY@y)
	incf	(LCDGotoXY@y),f
	movlw	(0)
	fcall	_LCDGotoXY
	movlw	((STR_2)-__stringbase)&0ffh
	fcall	_LCDWriteString
	line	169
	
l1687:	
;main.c: 169: _delay((unsigned long)((2000)*(10000000/4000.0)));
	opt asmopt_off
movlw  26
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	94
movwf	((??_main+0)+0+1),f
	movlw	134
movwf	((??_main+0)+0),f
u1777:
	decfsz	((??_main+0)+0),f
	goto	u1777
	decfsz	((??_main+0)+0+1),f
	goto	u1777
	decfsz	((??_main+0)+0+2),f
	goto	u1777
	nop
opt asmopt_on

	goto	l1689
	line	171
;main.c: 171: while(1)
	
l129:	
	line	174
	
l1689:	
;main.c: 172: {
;main.c: 174: HCSR04Trigger();
	fcall	_HCSR04Trigger
	line	177
	
l1691:	
;main.c: 177: r=GetPulseWidth();
	fcall	_GetPulseWidth
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_GetPulseWidth)),w
	clrf	(main@r+1)
	addwf	(main@r+1)
	movf	(0+(?_GetPulseWidth)),w
	clrf	(main@r)
	addwf	(main@r)

	line	179
	
l1693:	
;main.c: 179: (LCDByte(0b00000001,0));
	clrf	(LCDByte@isdata)
	movlw	(01h)
	fcall	_LCDByte
	line	180
	
l1695:	
;main.c: 180: { LCDGotoXY(0,0); LCDWriteString("DISTANCE METER");};
	clrf	(LCDGotoXY@y)
	movlw	(0)
	fcall	_LCDGotoXY
	
l1697:	
	movlw	((STR_3)-__stringbase)&0ffh
	fcall	_LCDWriteString
	line	183
	
l1699:	
;main.c: 183: if(r==-1)
	movlw	high(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(main@r+1),w
	skipz
	goto	u1755
	movlw	low(-1)
	xorwf	(main@r),w
u1755:

	skipz
	goto	u1751
	goto	u1750
u1751:
	goto	l1703
u1750:
	line	185
	
l1701:	
;main.c: 184: {
;main.c: 185: { LCDGotoXY(0,1); LCDWriteString("Error ! ");};
	clrf	(LCDGotoXY@y)
	incf	(LCDGotoXY@y),f
	movlw	(0)
	fcall	_LCDGotoXY
	movlw	((STR_4)-__stringbase)&0ffh
	fcall	_LCDWriteString
	line	186
;main.c: 186: }
	goto	l1719
	line	187
	
l130:	
	
l1703:	
;main.c: 187: else if(r==-2)
	movlw	high(-2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(main@r+1),w
	skipz
	goto	u1765
	movlw	low(-2)
	xorwf	(main@r),w
u1765:

	skipz
	goto	u1761
	goto	u1760
u1761:
	goto	l1707
u1760:
	line	189
	
l1705:	
;main.c: 188: {
;main.c: 189: { LCDGotoXY(0,1); LCDWriteString("Clear !  ");};
	clrf	(LCDGotoXY@y)
	incf	(LCDGotoXY@y),f
	movlw	(0)
	fcall	_LCDGotoXY
	movlw	((STR_5)-__stringbase)&0ffh
	fcall	_LCDWriteString
	line	190
;main.c: 190: }
	goto	l1719
	line	191
	
l132:	
	line	194
	
l1707:	
;main.c: 191: else
;main.c: 192: {
;main.c: 193: int d;
;main.c: 194: d=(r*0.01718);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@r+1),w
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(main@r),w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	movf	(1+(?___awtoft)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___awtoft)),w
	movwf	(___ftmul@f2+2)
	movlw	0xbd
	movwf	(___ftmul@f1)
	movlw	0x8c
	movwf	(___ftmul@f1+1)
	movlw	0x3c
	movwf	(___ftmul@f1+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	clrf	(main@d+1)
	addwf	(main@d+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(main@d)
	addwf	(main@d)

	line	196
	
l1709:	
;main.c: 196: { LCDGotoXY(0,1); LCDWriteString("Distance:");};
	clrf	(LCDGotoXY@y)
	incf	(LCDGotoXY@y),f
	movlw	(0)
	fcall	_LCDGotoXY
	
l1711:	
	movlw	((STR_6)-__stringbase)&0ffh
	fcall	_LCDWriteString
	line	197
	
l1713:	
;main.c: 197: { LCDGotoXY(9,1); LCDWriteInt(d,3);};
	clrf	(LCDGotoXY@y)
	incf	(LCDGotoXY@y),f
	movlw	(09h)
	fcall	_LCDGotoXY
	
l1715:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@d+1),w
	clrf	(LCDWriteInt@val+1)
	addwf	(LCDWriteInt@val+1)
	movf	(main@d),w
	clrf	(LCDWriteInt@val)
	addwf	(LCDWriteInt@val)

	movlw	(03h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(LCDWriteInt@field_length)
	fcall	_LCDWriteInt
	line	198
	
l1717:	
;main.c: 198: LCDWriteString(" cm");
	movlw	((STR_7)-__stringbase)&0ffh
	fcall	_LCDWriteString
	goto	l1719
	line	200
	
l133:	
	goto	l1719
	
l131:	
	line	201
	
l1719:	
;main.c: 200: }
;main.c: 201: _delay((unsigned long)((250)*(10000000/4000.0)));
	opt asmopt_off
movlw  4
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	44
movwf	((??_main+0)+0+1),f
	movlw	173
movwf	((??_main+0)+0),f
u1787:
	decfsz	((??_main+0)+0),f
	goto	u1787
	decfsz	((??_main+0)+0+1),f
	goto	u1787
	decfsz	((??_main+0)+0+2),f
	goto	u1787
	nop2
opt asmopt_on

	goto	l1689
	line	202
	
l134:	
	line	171
	goto	l1689
	
l135:	
	line	203
	
l136:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	___awtoft

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 32 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   13[COMMON] unsigned char 
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
;;      Temps:          2       0       0
;;      Totals:         6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
	line	32
global __ptext1
__ptext1:	;psect for function ___awtoft
psect	text1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
	line	32
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
;incstack = 0
	opt	stack 6
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l1663:	
	clrf	(___awtoft@sign)
	line	37
	
l1665:	
	btfss	(___awtoft@c+1),7
	goto	u1741
	goto	u1740
u1741:
	goto	l1671
u1740:
	line	38
	
l1667:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
l1669:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	goto	l1671
	line	40
	
l370:	
	line	41
	
l1671:	
	movf	(___awtoft@c),w
	movwf	(___ftpack@arg)
	movf	(___awtoft@c+1),w
	movwf	(___ftpack@arg+1)
	clrf	(___ftpack@arg+2)
	movlw	(08Eh)
	movwf	(??___awtoft+0)+0
	movf	(??___awtoft+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___awtoft@sign),w
	movwf	(??___awtoft+1)+0
	movf	(??___awtoft+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	goto	l371
	
l1673:	
	line	42
	
l371:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
	signat	___awtoft,4219
	global	_LCDWriteString

;; *************** function _LCDWriteString *****************
;; Defined at:
;;		line 253 in file "E:\Study Material\XC8 PROJECTS\Ultrasonic Distance Meter\lcd_hd44780_pic16.c"
;; Parameters:    Size  Location     Type
;;  msg             1    wreg     PTR const unsigned char 
;;		 -> STR_7(4), STR_6(10), STR_5(10), STR_4(9), 
;;		 -> STR_3(15), STR_2(18), STR_1(18), 
;; Auto vars:     Size  Location     Type
;;  msg             1    1[BANK0 ] PTR const unsigned char 
;;		 -> STR_7(4), STR_6(10), STR_5(10), STR_4(9), 
;;		 -> STR_3(15), STR_2(18), STR_1(18), 
;;  cc              1    0[BANK0 ] char 
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
;;      Locals:         0       2       0
;;      Temps:          1       0       0
;;      Totals:         1       2       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_LCDByte
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\Ultrasonic Distance Meter\lcd_hd44780_pic16.c"
	line	253
global __ptext2
__ptext2:	;psect for function _LCDWriteString
psect	text2
	file	"E:\Study Material\XC8 PROJECTS\Ultrasonic Distance Meter\lcd_hd44780_pic16.c"
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
	
l1509:	
;lcd_hd44780_pic16.c: 283: while(*msg!='\0')
	goto	l1531
	
l37:	
	line	286
	
l1511:	
;lcd_hd44780_pic16.c: 284: {
;lcd_hd44780_pic16.c: 286: if(*msg=='%')
	movf	(LCDWriteString@msg),w
	movwf	fsr0
	fcall	stringdir
	xorlw	025h
	skipz
	goto	u1511
	goto	u1510
u1511:
	goto	l1527
u1510:
	line	288
	
l1513:	
;lcd_hd44780_pic16.c: 287: {
;lcd_hd44780_pic16.c: 288: msg++;
	movlw	(01h)
	movwf	(??_LCDWriteString+0)+0
	movf	(??_LCDWriteString+0)+0,w
	addwf	(LCDWriteString@msg),f
	line	289
	
l1515:	
;lcd_hd44780_pic16.c: 289: int8_t cc=*msg-'0';
	movf	(LCDWriteString@msg),w
	movwf	fsr0
	fcall	stringdir
	addlw	-48
	movwf	(??_LCDWriteString+0)+0
	movf	(??_LCDWriteString+0)+0,w
	movwf	(LCDWriteString@cc)
	line	291
	
l1517:	
;lcd_hd44780_pic16.c: 291: if(cc>=0 && cc<=7)
	btfsc	(LCDWriteString@cc),7
	goto	u1521
	goto	u1520
u1521:
	goto	l1523
u1520:
	
l1519:	
	movf	(LCDWriteString@cc),w
	xorlw	80h
	addlw	-((08h)^80h)
	skipnc
	goto	u1531
	goto	u1530
u1531:
	goto	l1523
u1530:
	line	293
	
l1521:	
;lcd_hd44780_pic16.c: 292: {
;lcd_hd44780_pic16.c: 293: (LCDByte(cc,1));
	clrf	(LCDByte@isdata)
	incf	(LCDByte@isdata),f
	movf	(LCDWriteString@cc),w
	fcall	_LCDByte
	line	294
;lcd_hd44780_pic16.c: 294: }
	goto	l1529
	line	295
	
l39:	
	line	297
	
l1523:	
;lcd_hd44780_pic16.c: 295: else
;lcd_hd44780_pic16.c: 296: {
;lcd_hd44780_pic16.c: 297: (LCDByte('%',1));
	clrf	(LCDByte@isdata)
	incf	(LCDByte@isdata),f
	movlw	(025h)
	fcall	_LCDByte
	line	298
	
l1525:	
;lcd_hd44780_pic16.c: 298: (LCDByte(*msg,1));
	clrf	(LCDByte@isdata)
	incf	(LCDByte@isdata),f
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCDWriteString@msg),w
	movwf	fsr0
	fcall	stringdir
	fcall	_LCDByte
	goto	l1529
	line	299
	
l40:	
	line	300
;lcd_hd44780_pic16.c: 299: }
;lcd_hd44780_pic16.c: 300: }
	goto	l1529
	line	301
	
l38:	
	line	303
	
l1527:	
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
	goto	l1529
	line	304
	
l41:	
	line	305
	
l1529:	
;lcd_hd44780_pic16.c: 304: }
;lcd_hd44780_pic16.c: 305: msg++;
	movlw	(01h)
	movwf	(??_LCDWriteString+0)+0
	movf	(??_LCDWriteString+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(LCDWriteString@msg),f
	goto	l1531
	line	306
	
l36:	
	line	283
	
l1531:	
	movf	(LCDWriteString@msg),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u1541
	goto	u1540
u1541:
	goto	l1511
u1540:
	goto	l43
	
l42:	
	line	307
	
l43:	
	return
	opt stack 0
GLOBAL	__end_of_LCDWriteString
	__end_of_LCDWriteString:
	signat	_LCDWriteString,4216
	global	_LCDWriteInt

;; *************** function _LCDWriteInt *****************
;; Defined at:
;;		line 309 in file "E:\Study Material\XC8 PROJECTS\Ultrasonic Distance Meter\lcd_hd44780_pic16.c"
;; Parameters:    Size  Location     Type
;;  val             2    0[BANK0 ] int 
;;  field_length    1    2[BANK0 ] char 
;; Auto vars:     Size  Location     Type
;;  str             5    3[BANK0 ] unsigned char [5]
;;  i               2   10[BANK0 ] int 
;;  j               2    8[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       3       0
;;      Locals:         0       9       0
;;      Temps:          2       0       0
;;      Totals:         2      12       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_LCDByte
;;		___awdiv
;;		___awmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	309
global __ptext3
__ptext3:	;psect for function _LCDWriteInt
psect	text3
	file	"E:\Study Material\XC8 PROJECTS\Ultrasonic Distance Meter\lcd_hd44780_pic16.c"
	line	309
	global	__size_of_LCDWriteInt
	__size_of_LCDWriteInt	equ	__end_of_LCDWriteInt-_LCDWriteInt
	
_LCDWriteInt:	
;incstack = 0
	opt	stack 5
; Regs used in _LCDWriteInt: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	322
	
l1533:	
;lcd_hd44780_pic16.c: 322: char str[5]={0,0,0,0,0};
	movlw	(LCDWriteInt@str)&0ffh
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCDWriteInt@F784),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movf	(LCDWriteInt@F784)+1,w
	movwf	indf
	incf	fsr0,f
	movf	(LCDWriteInt@F784)+2,w
	movwf	indf
	incf	fsr0,f
	movf	(LCDWriteInt@F784)+3,w
	movwf	indf
	incf	fsr0,f
	movf	(LCDWriteInt@F784)+4,w
	movwf	indf
	line	323
	
l1535:	
;lcd_hd44780_pic16.c: 323: int i=4,j=0;
	movlw	low(04h)
	movwf	(LCDWriteInt@i)
	movlw	high(04h)
	movwf	((LCDWriteInt@i))+1
	
l1537:	
	clrf	(LCDWriteInt@j)
	clrf	(LCDWriteInt@j+1)
	line	326
	
l1539:	
;lcd_hd44780_pic16.c: 326: if(val<0)
	btfss	(LCDWriteInt@val+1),7
	goto	u1551
	goto	u1550
u1551:
	goto	l1545
u1550:
	line	328
	
l1541:	
;lcd_hd44780_pic16.c: 327: {
;lcd_hd44780_pic16.c: 328: (LCDByte('-',1));
	clrf	(LCDByte@isdata)
	incf	(LCDByte@isdata),f
	movlw	(02Dh)
	fcall	_LCDByte
	line	329
	
l1543:	
;lcd_hd44780_pic16.c: 329: val=val*-1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	comf	(LCDWriteInt@val),f
	comf	(LCDWriteInt@val+1),f
	incf	(LCDWriteInt@val),f
	skipnz
	incf	(LCDWriteInt@val+1),f
	line	330
;lcd_hd44780_pic16.c: 330: }
	goto	l1547
	line	331
	
l48:	
	line	333
	
l1545:	
;lcd_hd44780_pic16.c: 331: else
;lcd_hd44780_pic16.c: 332: {
;lcd_hd44780_pic16.c: 333: (LCDByte(' ',1));
	clrf	(LCDByte@isdata)
	incf	(LCDByte@isdata),f
	movlw	(020h)
	fcall	_LCDByte
	goto	l1547
	line	334
	
l49:	
	line	336
	
l1547:	
;lcd_hd44780_pic16.c: 334: }
;lcd_hd44780_pic16.c: 336: if(val==0 && field_length<1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((LCDWriteInt@val+1)),w
	iorwf	((LCDWriteInt@val)),w
	skipz
	goto	u1561
	goto	u1560
u1561:
	goto	l1561
u1560:
	
l1549:	
	movf	(LCDWriteInt@field_length),w
	xorlw	80h
	addlw	-((01h)^80h)
	skipnc
	goto	u1571
	goto	u1570
u1571:
	goto	l1561
u1570:
	line	338
	
l1551:	
;lcd_hd44780_pic16.c: 337: {
;lcd_hd44780_pic16.c: 338: (LCDByte('0',1));
	clrf	(LCDByte@isdata)
	incf	(LCDByte@isdata),f
	movlw	(030h)
	fcall	_LCDByte
	goto	l51
	line	339
	
l1553:	
;lcd_hd44780_pic16.c: 339: return;
	goto	l51
	line	340
	
l50:	
	line	342
;lcd_hd44780_pic16.c: 340: }
;lcd_hd44780_pic16.c: 342: while(val)
	goto	l1561
	
l53:	
	line	344
	
l1555:	
;lcd_hd44780_pic16.c: 343: {
;lcd_hd44780_pic16.c: 344: str[i]=val%10;
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCDWriteInt@val+1),w
	clrf	(___awmod@dividend+1)
	addwf	(___awmod@dividend+1)
	movf	(LCDWriteInt@val),w
	clrf	(___awmod@dividend)
	addwf	(___awmod@dividend)

	fcall	___awmod
	movf	(0+(?___awmod)),w
	movwf	(??_LCDWriteInt+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCDWriteInt@i),w
	addlw	LCDWriteInt@str&0ffh
	movwf	fsr0
	movf	(??_LCDWriteInt+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	345
	
l1557:	
;lcd_hd44780_pic16.c: 345: val=val/10;
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(LCDWriteInt@val+1),w
	clrf	(___awdiv@dividend+1)
	addwf	(___awdiv@dividend+1)
	movf	(LCDWriteInt@val),w
	clrf	(___awdiv@dividend)
	addwf	(___awdiv@dividend)

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDWriteInt@val+1)
	addwf	(LCDWriteInt@val+1)
	movf	(0+(?___awdiv)),w
	clrf	(LCDWriteInt@val)
	addwf	(LCDWriteInt@val)

	line	346
	
l1559:	
;lcd_hd44780_pic16.c: 346: i--;
	movlw	low(-1)
	addwf	(LCDWriteInt@i),f
	skipnc
	incf	(LCDWriteInt@i+1),f
	movlw	high(-1)
	addwf	(LCDWriteInt@i+1),f
	goto	l1561
	line	347
	
l52:	
	line	342
	
l1561:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((LCDWriteInt@val+1)),w
	iorwf	((LCDWriteInt@val)),w
	skipz
	goto	u1581
	goto	u1580
u1581:
	goto	l1555
u1580:
	goto	l1563
	
l54:	
	line	348
	
l1563:	
;lcd_hd44780_pic16.c: 347: }
;lcd_hd44780_pic16.c: 348: if(field_length==-1)
	movf	(LCDWriteInt@field_length),w
	xorlw	-1
	skipz
	goto	u1591
	goto	u1590
u1591:
	goto	l1571
u1590:
	goto	l1569
	line	349
	
l1565:	
;lcd_hd44780_pic16.c: 349: while(str[j]==0) j++;
	goto	l1569
	
l57:	
	
l1567:	
	movlw	low(01h)
	addwf	(LCDWriteInt@j),f
	skipnc
	incf	(LCDWriteInt@j+1),f
	movlw	high(01h)
	addwf	(LCDWriteInt@j+1),f
	goto	l1569
	
l56:	
	
l1569:	
	movf	(LCDWriteInt@j),w
	addlw	LCDWriteInt@str&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u1601
	goto	u1600
u1601:
	goto	l1567
u1600:
	goto	l59
	
l58:	
	goto	l59
	line	350
	
l55:	
	line	351
	
l1571:	
;lcd_hd44780_pic16.c: 350: else
;lcd_hd44780_pic16.c: 351: j=5-field_length;
	movf	(LCDWriteInt@field_length),w
	movwf	(??_LCDWriteInt+0)+0
	clrf	(??_LCDWriteInt+0)+0+1
	btfsc	(??_LCDWriteInt+0)+0,7
	decf	(??_LCDWriteInt+0)+0+1,f
	comf	(??_LCDWriteInt+0)+0,f
	comf	(??_LCDWriteInt+0)+1,f
	incf	(??_LCDWriteInt+0)+0,f
	skipnz
	incf	(??_LCDWriteInt+0)+1,f
	movf	0+(??_LCDWriteInt+0)+0,w
	addlw	low(05h)
	movwf	(LCDWriteInt@j)
	movf	1+(??_LCDWriteInt+0)+0,w
	skipnc
	addlw	1
	addlw	high(05h)
	movwf	1+(LCDWriteInt@j)
	
l59:	
	line	354
;lcd_hd44780_pic16.c: 354: for(i=j;i<5;i++)
	movf	(LCDWriteInt@j+1),w
	clrf	(LCDWriteInt@i+1)
	addwf	(LCDWriteInt@i+1)
	movf	(LCDWriteInt@j),w
	clrf	(LCDWriteInt@i)
	addwf	(LCDWriteInt@i)

	
l1573:	
	movf	(LCDWriteInt@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1615
	movlw	low(05h)
	subwf	(LCDWriteInt@i),w
u1615:

	skipc
	goto	u1611
	goto	u1610
u1611:
	goto	l1577
u1610:
	goto	l51
	
l1575:	
	goto	l51
	line	355
	
l60:	
	line	356
	
l1577:	
;lcd_hd44780_pic16.c: 355: {
;lcd_hd44780_pic16.c: 356: (LCDByte(48+str[i],1));
	clrf	(LCDByte@isdata)
	incf	(LCDByte@isdata),f
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCDWriteInt@i),w
	addlw	LCDWriteInt@str&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	addlw	030h
	fcall	_LCDByte
	line	354
	
l1579:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(LCDWriteInt@i),f
	skipnc
	incf	(LCDWriteInt@i+1),f
	movlw	high(01h)
	addwf	(LCDWriteInt@i+1),f
	
l1581:	
	movf	(LCDWriteInt@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1625
	movlw	low(05h)
	subwf	(LCDWriteInt@i),w
u1625:

	skipc
	goto	u1621
	goto	u1620
u1621:
	goto	l1577
u1620:
	goto	l51
	
l61:	
	line	358
	
l51:	
	return
	opt stack 0
GLOBAL	__end_of_LCDWriteInt
	__end_of_LCDWriteInt:
	signat	_LCDWriteInt,8312
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         4       0       0
;;      Locals:         2       0       0
;;      Temps:          1       0       0
;;      Totals:         7       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCDWriteInt
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
global __ptext4
__ptext4:	;psect for function ___awmod
psect	text4
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
;incstack = 0
	opt	stack 6
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	13
	
l1317:	
	clrf	(___awmod@sign)
	line	14
	
l1319:	
	btfss	(___awmod@dividend+1),7
	goto	u1141
	goto	u1140
u1141:
	goto	l1325
u1140:
	line	15
	
l1321:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	16
	
l1323:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	goto	l1325
	line	17
	
l355:	
	line	18
	
l1325:	
	btfss	(___awmod@divisor+1),7
	goto	u1151
	goto	u1150
u1151:
	goto	l1329
u1150:
	line	19
	
l1327:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l1329
	
l356:	
	line	20
	
l1329:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u1161
	goto	u1160
u1161:
	goto	l1347
u1160:
	line	21
	
l1331:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	22
	goto	l1337
	
l359:	
	line	23
	
l1333:	
	movlw	01h
	
u1175:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u1175
	line	24
	
l1335:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l1337
	line	25
	
l358:	
	line	22
	
l1337:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u1181
	goto	u1180
u1181:
	goto	l1333
u1180:
	goto	l1339
	
l360:	
	goto	l1339
	line	26
	
l361:	
	line	27
	
l1339:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u1195
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u1195:
	skipc
	goto	u1191
	goto	u1190
u1191:
	goto	l1343
u1190:
	line	28
	
l1341:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l1343
	
l362:	
	line	29
	
l1343:	
	movlw	01h
	
u1205:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u1205
	line	30
	
l1345:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u1211
	goto	u1210
u1211:
	goto	l1339
u1210:
	goto	l1347
	
l363:	
	goto	l1347
	line	31
	
l357:	
	line	32
	
l1347:	
	movf	(___awmod@sign),w
	skipz
	goto	u1220
	goto	l1351
u1220:
	line	33
	
l1349:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l1351
	
l364:	
	line	34
	
l1351:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l365
	
l1353:	
	line	35
	
l365:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] int 
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         4       0       0
;;      Locals:         4       0       0
;;      Temps:          1       0       0
;;      Totals:         9       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCDWriteInt
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
global __ptext5
__ptext5:	;psect for function ___awdiv
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l1273:	
	clrf	(___awdiv@sign)
	line	15
	
l1275:	
	btfss	(___awdiv@divisor+1),7
	goto	u1041
	goto	u1040
u1041:
	goto	l1281
u1040:
	line	16
	
l1277:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l1279:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	goto	l1281
	line	18
	
l342:	
	line	19
	
l1281:	
	btfss	(___awdiv@dividend+1),7
	goto	u1051
	goto	u1050
u1051:
	goto	l1287
u1050:
	line	20
	
l1283:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l1285:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l1287
	line	22
	
l343:	
	line	23
	
l1287:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l1289:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u1061
	goto	u1060
u1061:
	goto	l1309
u1060:
	line	25
	
l1291:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l1297
	
l346:	
	line	27
	
l1293:	
	movlw	01h
	
u1075:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u1075
	line	28
	
l1295:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l1297
	line	29
	
l345:	
	line	26
	
l1297:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u1081
	goto	u1080
u1081:
	goto	l1293
u1080:
	goto	l1299
	
l347:	
	goto	l1299
	line	30
	
l348:	
	line	31
	
l1299:	
	movlw	01h
	
u1095:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u1095
	line	32
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u1105
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u1105:
	skipc
	goto	u1101
	goto	u1100
u1101:
	goto	l1305
u1100:
	line	33
	
l1301:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
l1303:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l1305
	line	35
	
l349:	
	line	36
	
l1305:	
	movlw	01h
	
u1115:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u1115
	line	37
	
l1307:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u1121
	goto	u1120
u1121:
	goto	l1299
u1120:
	goto	l1309
	
l350:	
	goto	l1309
	line	38
	
l344:	
	line	39
	
l1309:	
	movf	(___awdiv@sign),w
	skipz
	goto	u1130
	goto	l1313
u1130:
	line	40
	
l1311:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l1313
	
l351:	
	line	41
	
l1313:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l352
	
l1315:	
	line	42
	
l352:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_LCDInit

;; *************** function _LCDInit *****************
;; Defined at:
;;		line 195 in file "E:\Study Material\XC8 PROJECTS\Ultrasonic Distance Meter\lcd_hd44780_pic16.c"
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
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       2       0
;;      Temps:          2       0       0
;;      Totals:         2       2       0
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
psect	text6,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\Ultrasonic Distance Meter\lcd_hd44780_pic16.c"
	line	195
global __ptext6
__ptext6:	;psect for function _LCDInit
psect	text6
	file	"E:\Study Material\XC8 PROJECTS\Ultrasonic Distance Meter\lcd_hd44780_pic16.c"
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
	
l1459:	
;lcd_hd44780_pic16.c: 211: _delay((unsigned long)((30)*(10000000/4000.0)));
	opt asmopt_off
movlw	98
movwf	((??_LCDInit+0)+0+1),f
	movlw	101
movwf	((??_LCDInit+0)+0),f
u1797:
	decfsz	((??_LCDInit+0)+0),f
	goto	u1797
	decfsz	((??_LCDInit+0)+0+1),f
	goto	u1797
	nop2
opt asmopt_on

	line	214
	
l1461:	
;lcd_hd44780_pic16.c: 214: TRISC&=(~(0x0F<<0));
	movlw	(0F0h)
	movwf	(??_LCDInit+0)+0
	movf	(??_LCDInit+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(135)^080h,f	;volatile
	line	216
	
l1463:	
;lcd_hd44780_pic16.c: 216: TRISCbits.TRISC5=0;
	bcf	(135)^080h,5	;volatile
	line	217
	
l1465:	
;lcd_hd44780_pic16.c: 217: TRISCbits.TRISC7=0;
	bcf	(135)^080h,7	;volatile
	line	218
	
l1467:	
;lcd_hd44780_pic16.c: 218: TRISCbits.TRISC6=0;
	bcf	(135)^080h,6	;volatile
	line	220
	
l1469:	
;lcd_hd44780_pic16.c: 220: PORTC&=(~(0x0F<<0));
	movlw	(0F0h)
	movwf	(??_LCDInit+0)+0
	movf	(??_LCDInit+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(7),f	;volatile
	line	222
	
l1471:	
;lcd_hd44780_pic16.c: 222: (RC5=0);
	bcf	(61/8),(61)&7	;volatile
	line	223
	
l1473:	
;lcd_hd44780_pic16.c: 223: (RC6=0);
	bcf	(62/8),(62)&7	;volatile
	line	224
	
l1475:	
;lcd_hd44780_pic16.c: 224: (RC7=0);
	bcf	(63/8),(63)&7	;volatile
	line	227
	
l1477:	
;lcd_hd44780_pic16.c: 227: _delay((unsigned long)((0.5)*(10000000/4000000.0)));
		opt asmopt_off
	nop
	opt asmopt_on

	line	229
	
l1479:	
;lcd_hd44780_pic16.c: 229: (RC5=1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7	;volatile
	line	230
	
l1481:	
;lcd_hd44780_pic16.c: 230: PORTC|=((0b00000010)<<0);
	bsf	(7)+(1/8),(1)&7	;volatile
	line	231
	
l1483:	
;lcd_hd44780_pic16.c: 231: _delay((unsigned long)((1)*(10000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	line	232
	
l1485:	
;lcd_hd44780_pic16.c: 232: (RC5=0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7	;volatile
	line	233
	
l1487:	
;lcd_hd44780_pic16.c: 233: _delay((unsigned long)((1)*(10000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	line	236
	
l1489:	
;lcd_hd44780_pic16.c: 236: LCDBusyLoop();
	fcall	_LCDBusyLoop
	line	241
	
l1491:	
;lcd_hd44780_pic16.c: 241: (LCDByte(0b00101000,0));
	clrf	(LCDByte@isdata)
	movlw	(028h)
	fcall	_LCDByte
	line	242
	
l1493:	
;lcd_hd44780_pic16.c: 242: (LCDByte(0b00001100|style,0));
	clrf	(LCDByte@isdata)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCDInit@style),w
	iorlw	0Ch
	fcall	_LCDByte
	line	245
	
l1495:	
;lcd_hd44780_pic16.c: 245: (LCDByte(0b01000000,0));
	clrf	(LCDByte@isdata)
	movlw	(040h)
	fcall	_LCDByte
	line	248
	
l1497:	
;lcd_hd44780_pic16.c: 247: uint8_t __i;
;lcd_hd44780_pic16.c: 248: for(__i=0;__i<sizeof(__cgram);__i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDInit@__i)
	
l1499:	
	movlw	(010h)
	subwf	(LCDInit@__i),w
	skipc
	goto	u1491
	goto	u1490
u1491:
	goto	l1503
u1490:
	goto	l33
	
l1501:	
	goto	l33
	line	249
	
l31:	
	
l1503:	
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
	
l1505:	
	movlw	(01h)
	movwf	(??_LCDInit+0)+0
	movf	(??_LCDInit+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(LCDInit@__i),f
	
l1507:	
	movlw	(010h)
	subwf	(LCDInit@__i),w
	skipc
	goto	u1501
	goto	u1500
u1501:
	goto	l1503
u1500:
	goto	l33
	
l32:	
	line	252
	
l33:	
	return
	opt stack 0
GLOBAL	__end_of_LCDInit
	__end_of_LCDInit:
	signat	_LCDInit,4216
	global	_LCDGotoXY

;; *************** function _LCDGotoXY *****************
;; Defined at:
;;		line 364 in file "E:\Study Material\XC8 PROJECTS\Ultrasonic Distance Meter\lcd_hd44780_pic16.c"
;; Parameters:    Size  Location     Type
;;  x               1    wreg     unsigned char 
;;  y               1   12[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  x               1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_LCDByte
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	line	364
global __ptext7
__ptext7:	;psect for function _LCDGotoXY
psect	text7
	file	"E:\Study Material\XC8 PROJECTS\Ultrasonic Distance Meter\lcd_hd44780_pic16.c"
	line	364
	global	__size_of_LCDGotoXY
	__size_of_LCDGotoXY	equ	__end_of_LCDGotoXY-_LCDGotoXY
	
_LCDGotoXY:	
;incstack = 0
	opt	stack 5
; Regs used in _LCDGotoXY: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;LCDGotoXY@x stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCDGotoXY@x)
	line	366
	
l1583:	
;lcd_hd44780_pic16.c: 366: if(x>=20) return;
	movlw	(014h)
	subwf	(LCDGotoXY@x),w
	skipc
	goto	u1631
	goto	u1630
u1631:
	goto	l1593
u1630:
	goto	l65
	
l1585:	
	goto	l65
	
l64:	
	line	370
;lcd_hd44780_pic16.c: 370: switch(y)
	goto	l1593
	line	372
;lcd_hd44780_pic16.c: 371: {
;lcd_hd44780_pic16.c: 372: case 0:
	
l67:	
	line	373
;lcd_hd44780_pic16.c: 373: break;
	goto	l68
	line	374
;lcd_hd44780_pic16.c: 374: case 1:
	
l69:	
	line	375
;lcd_hd44780_pic16.c: 375: x|=0b01000000;
	bsf	(LCDGotoXY@x)+(6/8),(6)&7
	line	376
;lcd_hd44780_pic16.c: 376: break;
	goto	l68
	line	377
;lcd_hd44780_pic16.c: 377: case 2:
	
l70:	
	line	378
	
l1587:	
;lcd_hd44780_pic16.c: 378: x+=0x14;
	movlw	(014h)
	movwf	(??_LCDGotoXY+0)+0
	movf	(??_LCDGotoXY+0)+0,w
	addwf	(LCDGotoXY@x),f
	line	379
;lcd_hd44780_pic16.c: 379: break;
	goto	l68
	line	380
;lcd_hd44780_pic16.c: 380: case 3:
	
l71:	
	line	381
	
l1589:	
;lcd_hd44780_pic16.c: 381: x+=0x54;
	movlw	(054h)
	movwf	(??_LCDGotoXY+0)+0
	movf	(??_LCDGotoXY+0)+0,w
	addwf	(LCDGotoXY@x),f
	line	382
;lcd_hd44780_pic16.c: 382: break;
	goto	l68
	line	383
	
l1591:	
;lcd_hd44780_pic16.c: 383: }
	goto	l68
	line	370
	
l66:	
	
l1593:	
	movf	(LCDGotoXY@y),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 3
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           10     6 (fixed)
; simple_byte           13     7 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is direct_byte

	movwf fsr
	movlw	4
	subwf	fsr,w
skipnc
goto l68
movlw high(S1741)
movwf pclath
	movlw low(S1741)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
S1741:
	ljmp	l68
	ljmp	l69
	ljmp	l1587
	ljmp	l1589
psect	text7

	line	383
	
l68:	
	line	405
;lcd_hd44780_pic16.c: 405: x|=0b10000000;
	bsf	(LCDGotoXY@x)+(7/8),(7)&7
	line	406
	
l1595:	
;lcd_hd44780_pic16.c: 406: (LCDByte(x,0));
	clrf	(LCDByte@isdata)
	movf	(LCDGotoXY@x),w
	fcall	_LCDByte
	line	407
	
l65:	
	return
	opt stack 0
GLOBAL	__end_of_LCDGotoXY
	__end_of_LCDGotoXY:
	signat	_LCDGotoXY,8312
	global	_LCDByte

;; *************** function _LCDByte *****************
;; Defined at:
;;		line 82 in file "E:\Study Material\XC8 PROJECTS\Ultrasonic Distance Meter\lcd_hd44780_pic16.c"
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
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         1       0       0
;;      Locals:         4       0       0
;;      Temps:          2       0       0
;;      Totals:         7       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_LCDBusyLoop
;; This function is called by:
;;		_LCDInit
;;		_LCDWriteString
;;		_LCDWriteInt
;;		_LCDGotoXY
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	line	82
global __ptext8
__ptext8:	;psect for function _LCDByte
psect	text8
	file	"E:\Study Material\XC8 PROJECTS\Ultrasonic Distance Meter\lcd_hd44780_pic16.c"
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
	
l1243:	
;lcd_hd44780_pic16.c: 91: uint8_t hn,ln;
;lcd_hd44780_pic16.c: 92: uint8_t temp;
;lcd_hd44780_pic16.c: 94: hn=c>>4;
	movf	(LCDByte@c),w
	movwf	(??_LCDByte+0)+0
	movlw	04h
u1025:
	clrc
	rrf	(??_LCDByte+0)+0,f
	addlw	-1
	skipz
	goto	u1025
	movf	0+(??_LCDByte+0)+0,w
	movwf	(??_LCDByte+1)+0
	movf	(??_LCDByte+1)+0,w
	movwf	(LCDByte@hn)
	line	95
	
l1245:	
;lcd_hd44780_pic16.c: 95: ln=(c & 0x0F);
	movf	(LCDByte@c),w
	andlw	0Fh
	movwf	(??_LCDByte+0)+0
	movf	(??_LCDByte+0)+0,w
	movwf	(LCDByte@ln)
	line	97
	
l1247:	
;lcd_hd44780_pic16.c: 97: if(isdata==0)
	movf	(LCDByte@isdata),f
	skipz
	goto	u1031
	goto	u1030
u1031:
	goto	l21
u1030:
	line	98
	
l1249:	
;lcd_hd44780_pic16.c: 98: (RC7=0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(63/8),(63)&7	;volatile
	goto	l22
	line	99
	
l21:	
	line	100
;lcd_hd44780_pic16.c: 99: else
;lcd_hd44780_pic16.c: 100: (RC7=1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(63/8),(63)&7	;volatile
	
l22:	
	line	102
;lcd_hd44780_pic16.c: 102: _delay((unsigned long)((0.5)*(10000000/4000000.0)));
		opt asmopt_off
	nop
	opt asmopt_on

	line	104
;lcd_hd44780_pic16.c: 104: (RC5=1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7	;volatile
	line	108
	
l1251:	
;lcd_hd44780_pic16.c: 108: temp=(PORTC & (~(0X0F<<0)))|((hn<<0));
	movf	(7),w	;volatile
	andlw	0F0h
	iorwf	(LCDByte@hn),w
	movwf	(??_LCDByte+0)+0
	movf	(??_LCDByte+0)+0,w
	movwf	(LCDByte@temp)
	line	109
	
l1253:	
;lcd_hd44780_pic16.c: 109: PORTC=temp;
	movf	(LCDByte@temp),w
	movwf	(7)	;volatile
	line	111
	
l1255:	
;lcd_hd44780_pic16.c: 111: _delay((unsigned long)((1)*(10000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	line	115
	
l1257:	
;lcd_hd44780_pic16.c: 115: (RC5=0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7	;volatile
	line	117
	
l1259:	
;lcd_hd44780_pic16.c: 117: _delay((unsigned long)((1)*(10000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	line	120
	
l1261:	
;lcd_hd44780_pic16.c: 120: (RC5=1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7	;volatile
	line	122
	
l1263:	
;lcd_hd44780_pic16.c: 122: temp=(PORTC & (~(0X0F<<0)))|((ln<<0));
	movf	(7),w	;volatile
	andlw	0F0h
	iorwf	(LCDByte@ln),w
	movwf	(??_LCDByte+0)+0
	movf	(??_LCDByte+0)+0,w
	movwf	(LCDByte@temp)
	line	124
;lcd_hd44780_pic16.c: 124: PORTC=temp;
	movf	(LCDByte@temp),w
	movwf	(7)	;volatile
	line	126
	
l1265:	
;lcd_hd44780_pic16.c: 126: _delay((unsigned long)((1)*(10000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	line	130
	
l1267:	
;lcd_hd44780_pic16.c: 130: (RC5=0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7	;volatile
	line	132
	
l1269:	
;lcd_hd44780_pic16.c: 132: _delay((unsigned long)((1)*(10000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	line	134
	
l1271:	
;lcd_hd44780_pic16.c: 134: LCDBusyLoop();
	fcall	_LCDBusyLoop
	line	135
	
l23:	
	return
	opt stack 0
GLOBAL	__end_of_LCDByte
	__end_of_LCDByte:
	signat	_LCDByte,8312
	global	_LCDBusyLoop

;; *************** function _LCDBusyLoop *****************
;; Defined at:
;;		line 137 in file "E:\Study Material\XC8 PROJECTS\Ultrasonic Distance Meter\lcd_hd44780_pic16.c"
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
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         3       0       0
;;      Temps:          2       0       0
;;      Totals:         5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCDByte
;;		_LCDInit
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	line	137
global __ptext9
__ptext9:	;psect for function _LCDBusyLoop
psect	text9
	file	"E:\Study Material\XC8 PROJECTS\Ultrasonic Distance Meter\lcd_hd44780_pic16.c"
	line	137
	global	__size_of_LCDBusyLoop
	__size_of_LCDBusyLoop	equ	__end_of_LCDBusyLoop-_LCDBusyLoop
	
_LCDBusyLoop:	
;incstack = 0
	opt	stack 5
; Regs used in _LCDBusyLoop: [wreg+status,2+status,0]
	line	141
	
l1167:	
;lcd_hd44780_pic16.c: 141: uint8_t busy,status=0x00,temp;
	clrf	(LCDBusyLoop@status)
	line	144
	
l1169:	
;lcd_hd44780_pic16.c: 144: TRISC|=(0x0f<<0);
	movlw	(0Fh)
	movwf	(??_LCDBusyLoop+0)+0
	movf	(??_LCDBusyLoop+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(135)^080h,f	;volatile
	line	147
	
l1171:	
;lcd_hd44780_pic16.c: 147: (RC6=1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(62/8),(62)&7	;volatile
	line	148
	
l1173:	
;lcd_hd44780_pic16.c: 148: (RC7=0);
	bcf	(63/8),(63)&7	;volatile
	line	152
	
l1175:	
;lcd_hd44780_pic16.c: 152: _delay((unsigned long)((0.5)*(10000000/4000000.0)));
		opt asmopt_off
	nop
	opt asmopt_on

	goto	l1177
	line	155
;lcd_hd44780_pic16.c: 155: do
	
l26:	
	line	158
	
l1177:	
;lcd_hd44780_pic16.c: 156: {
;lcd_hd44780_pic16.c: 158: (RC5=1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7	;volatile
	line	161
	
l1179:	
;lcd_hd44780_pic16.c: 161: _delay((unsigned long)((0.5)*(10000000/4000000.0)));
		opt asmopt_off
	nop
	opt asmopt_on

	line	163
	
l1181:	
;lcd_hd44780_pic16.c: 163: status=(PORTC>>0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(7),w	;volatile
	movwf	(??_LCDBusyLoop+0)+0
	movf	(??_LCDBusyLoop+0)+0,w
	movwf	(LCDBusyLoop@status)
	line	164
	
l1183:	
;lcd_hd44780_pic16.c: 164: status=status<<4;
	movf	(LCDBusyLoop@status),w
	movwf	(??_LCDBusyLoop+0)+0
	movlw	(04h)-1
u895:
	clrc
	rlf	(??_LCDBusyLoop+0)+0,f
	addlw	-1
	skipz
	goto	u895
	clrc
	rlf	(??_LCDBusyLoop+0)+0,w
	movwf	(??_LCDBusyLoop+1)+0
	movf	(??_LCDBusyLoop+1)+0,w
	movwf	(LCDBusyLoop@status)
	line	166
	
l1185:	
;lcd_hd44780_pic16.c: 166: _delay((unsigned long)((0.5)*(10000000/4000000.0)));
		opt asmopt_off
	nop
	opt asmopt_on

	line	169
	
l1187:	
;lcd_hd44780_pic16.c: 169: (RC5=0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7	;volatile
	line	170
	
l1189:	
;lcd_hd44780_pic16.c: 170: _delay((unsigned long)((1)*(10000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	line	172
	
l1191:	
;lcd_hd44780_pic16.c: 172: (RC5=1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7	;volatile
	line	173
	
l1193:	
;lcd_hd44780_pic16.c: 173: _delay((unsigned long)((0.5)*(10000000/4000000.0)));
		opt asmopt_off
	nop
	opt asmopt_on

	line	175
	
l1195:	
;lcd_hd44780_pic16.c: 175: temp=(PORTC>>0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(7),w	;volatile
	movwf	(??_LCDBusyLoop+0)+0
	movf	(??_LCDBusyLoop+0)+0,w
	movwf	(LCDBusyLoop@temp)
	line	176
	
l1197:	
;lcd_hd44780_pic16.c: 176: temp&=0x0F;
	movlw	(0Fh)
	movwf	(??_LCDBusyLoop+0)+0
	movf	(??_LCDBusyLoop+0)+0,w
	andwf	(LCDBusyLoop@temp),f
	line	178
	
l1199:	
;lcd_hd44780_pic16.c: 178: status=status|temp;
	movf	(LCDBusyLoop@status),w
	iorwf	(LCDBusyLoop@temp),w
	movwf	(??_LCDBusyLoop+0)+0
	movf	(??_LCDBusyLoop+0)+0,w
	movwf	(LCDBusyLoop@status)
	line	180
	
l1201:	
;lcd_hd44780_pic16.c: 180: busy=status & 0b10000000;
	movf	(LCDBusyLoop@status),w
	andlw	080h
	movwf	(??_LCDBusyLoop+0)+0
	movf	(??_LCDBusyLoop+0)+0,w
	movwf	(LCDBusyLoop@busy)
	line	182
	
l1203:	
;lcd_hd44780_pic16.c: 182: _delay((unsigned long)((0.5)*(10000000/4000000.0)));
		opt asmopt_off
	nop
	opt asmopt_on

	line	184
	
l1205:	
;lcd_hd44780_pic16.c: 184: (RC5=0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7	;volatile
	line	185
	
l1207:	
;lcd_hd44780_pic16.c: 185: _delay((unsigned long)((1)*(10000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	line	186
	
l1209:	
;lcd_hd44780_pic16.c: 186: }while(busy);
	movf	(LCDBusyLoop@busy),f
	skipz
	goto	u901
	goto	u900
u901:
	goto	l1177
u900:
	
l27:	
	line	188
;lcd_hd44780_pic16.c: 188: (RC6=0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(62/8),(62)&7	;volatile
	line	191
	
l1211:	
;lcd_hd44780_pic16.c: 191: TRISC&=(~(0x0F<<0));
	movlw	(0F0h)
	movwf	(??_LCDBusyLoop+0)+0
	movf	(??_LCDBusyLoop+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(135)^080h,f	;volatile
	line	193
	
l28:	
	return
	opt stack 0
GLOBAL	__end_of_LCDBusyLoop
	__end_of_LCDBusyLoop:
	signat	_LCDBusyLoop,88
	global	_HCSR04Trigger

;; *************** function _HCSR04Trigger *****************
;; Defined at:
;;		line 82 in file "E:\Study Material\XC8 PROJECTS\Ultrasonic Distance Meter\main.c"
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
;;      Temps:          1       0       0
;;      Totals:         1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\Ultrasonic Distance Meter\main.c"
	line	82
global __ptext10
__ptext10:	;psect for function _HCSR04Trigger
psect	text10
	file	"E:\Study Material\XC8 PROJECTS\Ultrasonic Distance Meter\main.c"
	line	82
	global	__size_of_HCSR04Trigger
	__size_of_HCSR04Trigger	equ	__end_of_HCSR04Trigger-_HCSR04Trigger
	
_HCSR04Trigger:	
;incstack = 0
	opt	stack 7
; Regs used in _HCSR04Trigger: [wreg+status,2+status,0]
	line	85
	
l1603:	
;main.c: 85: PORTA|=(1<<0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(5)+(0/8),(0)&7	;volatile
	line	87
	
l1605:	
;main.c: 87: _delay((unsigned long)((15)*(10000000/4000000.0)));
	opt asmopt_off
movlw	12
movwf	(??_HCSR04Trigger+0)+0,f
u1807:
decfsz	(??_HCSR04Trigger+0)+0,f
	goto	u1807
opt asmopt_on

	line	89
	
l1607:	
;main.c: 89: PORTA&=~(1<<0);
	movlw	(0FEh)
	movwf	(??_HCSR04Trigger+0)+0
	movf	(??_HCSR04Trigger+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(5),f	;volatile
	line	90
	
l107:	
	return
	opt stack 0
GLOBAL	__end_of_HCSR04Trigger
	__end_of_HCSR04Trigger:
	signat	_HCSR04Trigger,88
	global	_HCSR04Init

;; *************** function _HCSR04Init *****************
;; Defined at:
;;		line 77 in file "E:\Study Material\XC8 PROJECTS\Ultrasonic Distance Meter\main.c"
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
;;      Temps:          1       0       0
;;      Totals:         1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	line	77
global __ptext11
__ptext11:	;psect for function _HCSR04Init
psect	text11
	file	"E:\Study Material\XC8 PROJECTS\Ultrasonic Distance Meter\main.c"
	line	77
	global	__size_of_HCSR04Init
	__size_of_HCSR04Init	equ	__end_of_HCSR04Init-_HCSR04Init
	
_HCSR04Init:	
;incstack = 0
	opt	stack 7
; Regs used in _HCSR04Init: [wreg+status,2+status,0]
	line	79
	
l1601:	
;main.c: 79: TRISA&=~(1<<0);
	movlw	(0FEh)
	movwf	(??_HCSR04Init+0)+0
	movf	(??_HCSR04Init+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(133)^080h,f	;volatile
	line	80
	
l104:	
	return
	opt stack 0
GLOBAL	__end_of_HCSR04Init
	__end_of_HCSR04Init:
	signat	_HCSR04Init,88
	global	_GetPulseWidth

;; *************** function _GetPulseWidth *****************
;; Defined at:
;;		line 94 in file "E:\Study Material\XC8 PROJECTS\Ultrasonic Distance Meter\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               4   36[BANK0 ] unsigned long 
;;  result          4   32[BANK0 ] unsigned long 
;; Return value:  Size  Location     Type
;;                  2   30[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       2       0
;;      Locals:         0       8       0
;;      Temps:          0       0       0
;;      Totals:         0      10       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftmul
;;		___fttol
;;		___lltoft
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	line	94
global __ptext12
__ptext12:	;psect for function _GetPulseWidth
psect	text12
	file	"E:\Study Material\XC8 PROJECTS\Ultrasonic Distance Meter\main.c"
	line	94
	global	__size_of_GetPulseWidth
	__size_of_GetPulseWidth	equ	__end_of_GetPulseWidth-_GetPulseWidth
	
_GetPulseWidth:	
;incstack = 0
	opt	stack 5
; Regs used in _GetPulseWidth: [wreg+status,2+status,0+pclath+cstack]
	line	99
	
l1609:	
;main.c: 96: uint32_t i,result;
;main.c: 99: for(i=0;i<600000;i++)
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(GetPulseWidth@i+3)
	movlw	0
	movwf	(GetPulseWidth@i+2)
	movlw	0
	movwf	(GetPulseWidth@i+1)
	movlw	0
	movwf	(GetPulseWidth@i)

	movlw	0
	subwf	(GetPulseWidth@i+3),w
	skipz
	goto	u1645
	movlw	09h
	subwf	(GetPulseWidth@i+2),w
	skipz
	goto	u1645
	movlw	027h
	subwf	(GetPulseWidth@i+1),w
	skipz
	goto	u1645
	movlw	0C0h
	subwf	(GetPulseWidth@i),w
u1645:
	skipc
	goto	u1641
	goto	u1640
u1641:
	goto	l110
u1640:
	goto	l1619
	
l1611:	
	goto	l1619
	line	100
	
l110:	
	line	101
;main.c: 100: {
;main.c: 101: if(!(PORTA & (1<<1)))
	btfsc	(5),(1)&7	;volatile
	goto	u1651
	goto	u1650
u1651:
	goto	l1619
u1650:
	goto	l1617
	line	102
	
l1613:	
;main.c: 102: continue;
	goto	l1617
	
l1615:	
	goto	l1617
	line	103
	
l112:	
	line	104
;main.c: 103: else
;main.c: 104: break;
	goto	l1619
	
l114:	
	goto	l1617
	line	99
	
l113:	
	
l1617:	
	movlw	01h
	addwf	(GetPulseWidth@i),f
	movlw	0
	skipnc
movlw 1
	addwf	(GetPulseWidth@i+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(GetPulseWidth@i+2),f
	movlw	0
	skipnc
movlw 1
	addwf	(GetPulseWidth@i+3),f
	movlw	0
	subwf	(GetPulseWidth@i+3),w
	skipz
	goto	u1665
	movlw	09h
	subwf	(GetPulseWidth@i+2),w
	skipz
	goto	u1665
	movlw	027h
	subwf	(GetPulseWidth@i+1),w
	skipz
	goto	u1665
	movlw	0C0h
	subwf	(GetPulseWidth@i),w
u1665:
	skipc
	goto	u1661
	goto	u1660
u1661:
	goto	l110
u1660:
	goto	l1619
	
l111:	
	line	107
	
l1619:	
;main.c: 105: }
;main.c: 107: if(i==600000)
	movlw	0
	xorwf	(GetPulseWidth@i+3),w
	skipz
	goto	u1675
	movlw	09h
	xorwf	(GetPulseWidth@i+2),w
	skipz
	goto	u1675
	movlw	027h
	xorwf	(GetPulseWidth@i+1),w
	skipz
	goto	u1675
	movlw	0C0h
	xorwf	(GetPulseWidth@i),w
u1675:
	skipz
	goto	u1671
	goto	u1670
u1671:
	goto	l115
u1670:
	line	108
	
l1621:	
;main.c: 108: return -1;
	movlw	low(-1)
	movwf	(?_GetPulseWidth)
	movlw	high(-1)
	movwf	((?_GetPulseWidth))+1
	goto	l116
	
l1623:	
	goto	l116
	
l115:	
	line	113
;main.c: 113: T1CKPS0=1;
	bsf	(132/8),(132)&7	;volatile
	line	114
	
l1625:	
;main.c: 114: TMR1=0x00;
	clrf	(14)	;volatile
	clrf	(14+1)	;volatile
	line	115
	
l1627:	
;main.c: 115: TMR1ON=1;
	bsf	(128/8),(128)&7	;volatile
	line	118
	
l1629:	
;main.c: 118: for(i=0;i<600000;i++)
	movlw	0
	movwf	(GetPulseWidth@i+3)
	movlw	0
	movwf	(GetPulseWidth@i+2)
	movlw	0
	movwf	(GetPulseWidth@i+1)
	movlw	0
	movwf	(GetPulseWidth@i)

	
l1631:	
	movlw	0
	subwf	(GetPulseWidth@i+3),w
	skipz
	goto	u1685
	movlw	09h
	subwf	(GetPulseWidth@i+2),w
	skipz
	goto	u1685
	movlw	027h
	subwf	(GetPulseWidth@i+1),w
	skipz
	goto	u1685
	movlw	0C0h
	subwf	(GetPulseWidth@i),w
u1685:
	skipc
	goto	u1681
	goto	u1680
u1681:
	goto	l117
u1680:
	goto	l1643
	
l1633:	
	goto	l1643
	line	119
	
l117:	
	line	120
;main.c: 119: {
;main.c: 120: if(PORTA & (1<<1))
	btfss	(5),(1)&7	;volatile
	goto	u1691
	goto	u1690
u1691:
	goto	l1643
u1690:
	line	122
	
l1635:	
;main.c: 121: {
;main.c: 122: if(TMR1 > 60000) break; else continue;
	movlw	high(0EA61h)
	subwf	(14+1),w	;volatile
	movlw	low(0EA61h)
	skipnz
	subwf	(14),w	;volatile
	skipc
	goto	u1701
	goto	u1700
u1701:
	goto	l1641
u1700:
	goto	l1643
	
l1637:	
	goto	l1643
	
l1639:	
	goto	l1641
	
l120:	
	goto	l1641
	
l121:	
	line	123
;main.c: 123: }
	goto	l1641
	line	124
	
l119:	
	line	125
;main.c: 124: else
;main.c: 125: break;
	goto	l1643
	
l123:	
	goto	l1641
	line	118
	
l122:	
	
l1641:	
	movlw	01h
	addwf	(GetPulseWidth@i),f
	movlw	0
	skipnc
movlw 1
	addwf	(GetPulseWidth@i+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(GetPulseWidth@i+2),f
	movlw	0
	skipnc
movlw 1
	addwf	(GetPulseWidth@i+3),f
	movlw	0
	subwf	(GetPulseWidth@i+3),w
	skipz
	goto	u1715
	movlw	09h
	subwf	(GetPulseWidth@i+2),w
	skipz
	goto	u1715
	movlw	027h
	subwf	(GetPulseWidth@i+1),w
	skipz
	goto	u1715
	movlw	0C0h
	subwf	(GetPulseWidth@i),w
u1715:
	skipc
	goto	u1711
	goto	u1710
u1711:
	goto	l117
u1710:
	goto	l1643
	
l118:	
	line	128
	
l1643:	
;main.c: 126: }
;main.c: 128: if(i==600000)
	movlw	0
	xorwf	(GetPulseWidth@i+3),w
	skipz
	goto	u1725
	movlw	09h
	xorwf	(GetPulseWidth@i+2),w
	skipz
	goto	u1725
	movlw	027h
	xorwf	(GetPulseWidth@i+1),w
	skipz
	goto	u1725
	movlw	0C0h
	xorwf	(GetPulseWidth@i),w
u1725:
	skipz
	goto	u1721
	goto	u1720
u1721:
	goto	l1649
u1720:
	line	129
	
l1645:	
;main.c: 129: return -2;
	movlw	low(-2)
	movwf	(?_GetPulseWidth)
	movlw	high(-2)
	movwf	((?_GetPulseWidth))+1
	goto	l116
	
l1647:	
	goto	l116
	
l124:	
	line	132
	
l1649:	
;main.c: 132: result=TMR1;
	movf	(14),w	;volatile
	movwf	(GetPulseWidth@result)
	movf	(14+1),w	;volatile
	movwf	((GetPulseWidth@result))+1
	clrf	2+((GetPulseWidth@result))
	clrf	3+((GetPulseWidth@result))
	line	135
	
l1651:	
;main.c: 135: TMR1ON=0;
	bcf	(128/8),(128)&7	;volatile
	line	137
;main.c: 137: if(result > 60000)
	movlw	0
	subwf	(GetPulseWidth@result+3),w
	skipz
	goto	u1735
	movlw	0
	subwf	(GetPulseWidth@result+2),w
	skipz
	goto	u1735
	movlw	0EAh
	subwf	(GetPulseWidth@result+1),w
	skipz
	goto	u1735
	movlw	061h
	subwf	(GetPulseWidth@result),w
u1735:
	skipc
	goto	u1731
	goto	u1730
u1731:
	goto	l1659
u1730:
	line	138
	
l1653:	
;main.c: 138: return -2;
	movlw	low(-2)
	movwf	(?_GetPulseWidth)
	movlw	high(-2)
	movwf	((?_GetPulseWidth))+1
	goto	l116
	
l1655:	
	goto	l116
	
l1657:	
	goto	l116
	line	139
	
l125:	
	line	140
	
l1659:	
;main.c: 139: else
;main.c: 140: return (result * 0.8);
	movf	(GetPulseWidth@result+3),w
	movwf	(___lltoft@c+3)
	movf	(GetPulseWidth@result+2),w
	movwf	(___lltoft@c+2)
	movf	(GetPulseWidth@result+1),w
	movwf	(___lltoft@c+1)
	movf	(GetPulseWidth@result),w
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	movf	(1+(?___lltoft)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___lltoft)),w
	movwf	(___ftmul@f2+2)
	movlw	0xcd
	movwf	(___ftmul@f1)
	movlw	0x4c
	movwf	(___ftmul@f1+1)
	movlw	0x3f
	movwf	(___ftmul@f1+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	clrf	(?_GetPulseWidth+1)
	addwf	(?_GetPulseWidth+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(?_GetPulseWidth)
	addwf	(?_GetPulseWidth)

	goto	l116
	
l1661:	
	goto	l116
	
l126:	
	line	141
	
l116:	
	return
	opt stack 0
GLOBAL	__end_of_GetPulseWidth
	__end_of_GetPulseWidth:
	signat	_GetPulseWidth,90
	global	___lltoft

;; *************** function ___lltoft *****************
;; Defined at:
;;		line 35 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lltoft.c"
;; Parameters:    Size  Location     Type
;;  c               4    8[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  exp             1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         4       0       0
;;      Locals:         1       0       0
;;      Temps:          1       0       0
;;      Totals:         6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_GetPulseWidth
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lltoft.c"
	line	35
global __ptext13
__ptext13:	;psect for function ___lltoft
psect	text13
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lltoft.c"
	line	35
	global	__size_of___lltoft
	__size_of___lltoft	equ	__end_of___lltoft-___lltoft
	
___lltoft:	
;incstack = 0
	opt	stack 5
; Regs used in ___lltoft: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l1449:	
	movlw	(08Eh)
	movwf	(??___lltoft+0)+0
	movf	(??___lltoft+0)+0,w
	movwf	(___lltoft@exp)
	line	41
	goto	l1453
	
l519:	
	line	42
	
l1451:	
	movlw	01h
u1475:
	clrc
	rrf	(___lltoft@c+3),f
	rrf	(___lltoft@c+2),f
	rrf	(___lltoft@c+1),f
	rrf	(___lltoft@c),f
	addlw	-1
	skipz
	goto	u1475

	line	43
	movlw	(01h)
	movwf	(??___lltoft+0)+0
	movf	(??___lltoft+0)+0,w
	addwf	(___lltoft@exp),f
	goto	l1453
	line	44
	
l518:	
	line	41
	
l1453:	
	movlw	high highword(-16777216)
	andwf	(___lltoft@c+3),w
	btfss	status,2
	goto	u1481
	goto	u1480
u1481:
	goto	l1451
u1480:
	goto	l1455
	
l520:	
	line	45
	
l1455:	
	movf	(___lltoft@c),w
	movwf	(___ftpack@arg)
	movf	(___lltoft@c+1),w
	movwf	(___ftpack@arg+1)
	movf	(___lltoft@c+2),w
	movwf	(___ftpack@arg+2)
	movf	(___lltoft@exp),w
	movwf	(??___lltoft+0)+0
	movf	(??___lltoft+0)+0,w
	movwf	(___ftpack@exp)
	clrf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___lltoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lltoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lltoft+2)
	goto	l521
	
l1457:	
	line	46
	
l521:	
	return
	opt stack 0
GLOBAL	__end_of___lltoft
	__end_of___lltoft:
	signat	___lltoft,4219
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   16[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   25[BANK0 ] unsigned long 
;;  exp1            1   29[BANK0 ] unsigned char 
;;  sign1           1   24[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   16[BANK0 ] long 
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
;;		_GetPulseWidth
;;		_main
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
global __ptext14
__ptext14:	;psect for function ___fttol
psect	text14
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;incstack = 0
	opt	stack 7
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l1405:	
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
	goto	u1371
	goto	u1370
u1371:
	goto	l1411
u1370:
	line	50
	
l1407:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l462
	
l1409:	
	goto	l462
	
l461:	
	line	51
	
l1411:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u1385:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u1380:
	addlw	-1
	skipz
	goto	u1385
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l1413:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l1415:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l1417:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l1419:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l1421:	
	btfss	(___fttol@exp1),7
	goto	u1391
	goto	u1390
u1391:
	goto	l1431
u1390:
	line	57
	
l1423:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u1401
	goto	u1400
u1401:
	goto	l1429
u1400:
	line	58
	
l1425:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l462
	
l1427:	
	goto	l462
	
l464:	
	goto	l1429
	line	59
	
l465:	
	line	60
	
l1429:	
	movlw	01h
u1415:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u1415

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u1421
	goto	u1420
u1421:
	goto	l1429
u1420:
	goto	l1441
	
l466:	
	line	62
	goto	l1441
	
l463:	
	line	63
	
l1431:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u1431
	goto	u1430
u1431:
	goto	l1439
u1430:
	line	64
	
l1433:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l462
	
l1435:	
	goto	l462
	
l468:	
	line	65
	goto	l1439
	
l470:	
	line	66
	
l1437:	
	movlw	01h
	movwf	(??___fttol+0)+0
u1445:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u1445
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l1439
	line	68
	
l469:	
	line	65
	
l1439:	
	movf	(___fttol@exp1),f
	skipz
	goto	u1451
	goto	u1450
u1451:
	goto	l1437
u1450:
	goto	l1441
	
l471:	
	goto	l1441
	line	69
	
l467:	
	line	70
	
l1441:	
	movf	(___fttol@sign1),w
	skipz
	goto	u1460
	goto	l1445
u1460:
	line	71
	
l1443:	
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
	goto	l1445
	
l472:	
	line	72
	
l1445:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l462
	
l1447:	
	line	73
	
l462:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[BANK0 ] float 
;;  f2              3    3[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   11[BANK0 ] unsigned um
;;  sign            1   15[BANK0 ] unsigned char 
;;  cntr            1   14[BANK0 ] unsigned char 
;;  exp             1   10[BANK0 ] unsigned char 
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
;;		_GetPulseWidth
;;		_main
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
global __ptext15
__ptext15:	;psect for function ___ftmul
psect	text15
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
;incstack = 0
	opt	stack 6
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	67
	
l1355:	
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
	goto	u1231
	goto	u1230
u1231:
	goto	l1361
u1230:
	line	68
	
l1357:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l442
	
l1359:	
	goto	l442
	
l441:	
	line	69
	
l1361:	
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
	goto	u1241
	goto	u1240
u1241:
	goto	l1367
u1240:
	line	70
	
l1363:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l442
	
l1365:	
	goto	l442
	
l443:	
	line	71
	
l1367:	
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
u1255:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u1250:
	addlw	-1
	skipz
	goto	u1255
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
u1265:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u1260:
	addlw	-1
	skipz
	goto	u1265
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
	
l1369:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	77
	
l1371:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	78
	
l1373:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	79
	
l1375:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	134
	
l1377:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l1379
	line	135
	
l444:	
	line	136
	
l1379:	
	btfss	(___ftmul@f1),(0)&7
	goto	u1271
	goto	u1270
u1271:
	goto	l1383
u1270:
	line	137
	
l1381:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u1281
	addwf	(___ftmul@f3_as_product+1),f
u1281:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u1282
	addwf	(___ftmul@f3_as_product+2),f
u1282:

	goto	l1383
	
l445:	
	line	138
	
l1383:	
	movlw	01h
u1295:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u1295

	line	139
	
l1385:	
	movlw	01h
u1305:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u1305
	line	140
	
l1387:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u1311
	goto	u1310
u1311:
	goto	l1379
u1310:
	goto	l1389
	
l446:	
	line	143
	
l1389:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l1391
	line	144
	
l447:	
	line	145
	
l1391:	
	btfss	(___ftmul@f1),(0)&7
	goto	u1321
	goto	u1320
u1321:
	goto	l1395
u1320:
	line	146
	
l1393:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u1331
	addwf	(___ftmul@f3_as_product+1),f
u1331:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u1332
	addwf	(___ftmul@f3_as_product+2),f
u1332:

	goto	l1395
	
l448:	
	line	147
	
l1395:	
	movlw	01h
u1345:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u1345

	line	148
	
l1397:	
	movlw	01h
u1355:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u1355

	line	149
	
l1399:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u1361
	goto	u1360
u1361:
	goto	l1391
u1360:
	goto	l1401
	
l449:	
	line	156
	
l1401:	
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
	goto	l442
	
l1403:	
	line	157
	
l442:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
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
;;		___awtoft
;;		___ftmul
;;		___lltoft
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
	opt	stack 6
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l1213:	
	movf	(___ftpack@exp),w
	skipz
	goto	u910
	goto	l1217
u910:
	
l1215:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u921
	goto	u920
u921:
	goto	l1223
u920:
	goto	l1217
	
l376:	
	line	65
	
l1217:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l377
	
l1219:	
	goto	l377
	
l374:	
	line	66
	goto	l1223
	
l379:	
	line	67
	
l1221:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u935:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u935

	goto	l1223
	line	69
	
l378:	
	line	66
	
l1223:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u941
	goto	u940
u941:
	goto	l1221
u940:
	goto	l381
	
l380:	
	line	70
	goto	l381
	
l382:	
	line	71
	
l1225:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l1227:	
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
	
l1229:	
	movlw	01h
u955:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u955

	line	74
	
l381:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u961
	goto	u960
u961:
	goto	l1225
u960:
	goto	l1233
	
l383:	
	line	75
	goto	l1233
	
l385:	
	line	76
	
l1231:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u975:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u975
	goto	l1233
	line	78
	
l384:	
	line	75
	
l1233:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u981
	goto	u980
u981:
	goto	l1231
u980:
	
l386:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u991
	goto	u990
u991:
	goto	l387
u990:
	line	80
	
l1235:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l387:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l1237:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u1005:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u1000:
	addlw	-1
	skipz
	goto	u1005
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l1239:	
	movf	(___ftpack@sign),w
	skipz
	goto	u1010
	goto	l388
u1010:
	line	84
	
l1241:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l388:	
	line	85
	line	86
	
l377:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
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

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
	FNCALL	_main,_LCDByte
	FNCALL	_main,_LCDGotoXY
	FNCALL	_main,_LCDInit
	FNCALL	_main,_LCDWriteInt
	FNCALL	_main,_LCDWriteString
	FNCALL	_main,_My_Delay
	FNCALL	_LCDWriteString,_LCDByte
	FNCALL	_LCDWriteInt,_LCDByte
	FNCALL	_LCDWriteInt,___awdiv
	FNCALL	_LCDWriteInt,___awmod
	FNCALL	_LCDInit,_LCDBusyLoop
	FNCALL	_LCDInit,_LCDByte
	FNCALL	_LCDGotoXY,_LCDByte
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
	global	LCDWriteInt@F784
	global	_PORTC
_PORTC	set	0x7
	global	_T1CON
_T1CON	set	0x10
	global	_RC4
_RC4	set	0x3C
	global	_RC5
_RC5	set	0x3D
	global	_RC6
_RC6	set	0x3E
	global	_RC7
_RC7	set	0x3F
	global	_TMR1IF
_TMR1IF	set	0x60
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_TRISCbits
_TRISCbits	set	0x87
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
	retlw	78	;'N'
	retlw	73	;'I'
	retlw	84	;'T'
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	32	;' '
	retlw	78	;'N'
	retlw	46	;'.'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	65	;'A'
	retlw	78	;'N'
	retlw	71	;'G'
	retlw	65	;'A'
	retlw	76	;'L'
	retlw	69	;'E'
	retlw	0
psect	strings
	
STR_2:	
	retlw	58	;':'
	retlw	0
psect	strings
STR_4	equ	STR_1+0
STR_3	equ	STR_2+0
STR_5	equ	STR_2+0
STR_6	equ	STR_2+0
	global __end_of__stringdata
__end_of__stringdata:
; #config settings
	file	"LCD870.as"
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
	file	"E:\Study Material\XC8 PROJECTS\LCD Test\custom_char.h"
	line	15
___cgram:
       ds      16

	file	"LCD870.as"
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
?_My_Delay:	; 0 bytes @ 0x0
??_My_Delay:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	1
	global	My_Delay@sec
My_Delay@sec:	; 1 bytes @ 0x1
	ds	1
	global	LCDBusyLoop@busy
LCDBusyLoop@busy:	; 1 bytes @ 0x2
	global	My_Delay@Count
My_Delay@Count:	; 1 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	LCDBusyLoop@temp
LCDBusyLoop@temp:	; 1 bytes @ 0x3
	ds	1
??___awdiv:	; 0 bytes @ 0x4
??___awmod:	; 0 bytes @ 0x4
	global	LCDBusyLoop@status
LCDBusyLoop@status:	; 1 bytes @ 0x4
	ds	1
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
??_LCDWriteInt:	; 0 bytes @ 0xC
?_LCDGotoXY:	; 0 bytes @ 0xC
	global	LCDGotoXY@y
LCDGotoXY@y:	; 1 bytes @ 0xC
	ds	1
??_LCDGotoXY:	; 0 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?_LCDWriteInt:	; 0 bytes @ 0x0
	global	LCDInit@style
LCDInit@style:	; 1 bytes @ 0x0
	global	LCDWriteString@cc
LCDWriteString@cc:	; 1 bytes @ 0x0
	global	LCDGotoXY@x
LCDGotoXY@x:	; 1 bytes @ 0x0
	global	LCDWriteInt@val
LCDWriteInt@val:	; 2 bytes @ 0x0
	ds	1
	global	LCDInit@__i
LCDInit@__i:	; 1 bytes @ 0x1
	global	LCDWriteString@msg
LCDWriteString@msg:	; 1 bytes @ 0x1
	ds	1
	global	LCDWriteInt@field_length
LCDWriteInt@field_length:	; 1 bytes @ 0x2
	ds	1
	global	LCDWriteInt@str
LCDWriteInt@str:	; 5 bytes @ 0x3
	ds	5
	global	LCDWriteInt@j
LCDWriteInt@j:	; 2 bytes @ 0x8
	ds	2
	global	LCDWriteInt@i
LCDWriteInt@i:	; 2 bytes @ 0xA
	ds	2
??_main:	; 0 bytes @ 0xC
	ds	1
	global	main@count
main@count:	; 2 bytes @ 0xD
	ds	2
	global	main@secs
main@secs:	; 2 bytes @ 0xF
	ds	2
	global	main@mins
main@mins:	; 2 bytes @ 0x11
	ds	2
	global	main@hrs
main@hrs:	; 2 bytes @ 0x13
	ds	2
;!
;!Data Sizes:
;!    Strings     19
;!    Constant    0
;!    Data        16
;!    BSS         5
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     21      42
;!    BANK1            32      0       0

;!
;!Pointer List with Targets:
;!
;!    LCDWriteString@msg	PTR const unsigned char  size(1) Largest target is 17
;!		 -> STR_6(CODE[2]), STR_5(CODE[2]), STR_4(CODE[17]), STR_3(CODE[2]), 
;!		 -> STR_2(CODE[2]), STR_1(CODE[17]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_LCDGotoXY
;!    _main->_LCDInit
;!    _main->_LCDWriteInt
;!    _LCDWriteString->_LCDByte
;!    _LCDWriteInt->_LCDByte
;!    _LCDInit->_LCDByte
;!    _LCDGotoXY->_LCDByte
;!    _LCDByte->_LCDBusyLoop
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_LCDWriteInt
;!
;!Critical Paths under _main in BANK1
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 9     9      0    8078
;!                                             12 BANK0      9     9      0
;!                            _LCDByte
;!                          _LCDGotoXY
;!                            _LCDInit
;!                        _LCDWriteInt
;!                     _LCDWriteString
;!                           _My_Delay
;! ---------------------------------------------------------------------------------
;! (1) _My_Delay                                             3     3      0      47
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _LCDWriteString                                       3     3      0    1305
;!                                             12 COMMON     1     1      0
;!                                              0 BANK0      2     2      0
;!                            _LCDByte
;! ---------------------------------------------------------------------------------
;! (1) _LCDWriteInt                                         14    11      3    2774
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
;! (1) _LCDInit                                              4     4      0    1171
;!                                             12 COMMON     2     2      0
;!                                              0 BANK0      2     2      0
;!                        _LCDBusyLoop
;!                            _LCDByte
;! ---------------------------------------------------------------------------------
;! (1) _LCDGotoXY                                            3     2      1    1564
;!                                             12 COMMON     2     1      1
;!                                              0 BANK0      1     1      0
;!                            _LCDByte
;! ---------------------------------------------------------------------------------
;! (2) _LCDByte                                              7     6      1     964
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
;!   _My_Delay
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
;!BANK0               50     15      2A       5       52.5%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      E       E       1      100.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      38       8        0.0%
;!ABS                  0      0      38       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA              40      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 60 in file "E:\Study Material\XC8 PROJECTS\LCD Test\LCDTest.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  hrs             2   19[BANK0 ] int 
;;  mins            2   17[BANK0 ] int 
;;  secs            2   15[BANK0 ] int 
;;  count           2   13[BANK0 ] int 
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
;;      Locals:         0       8       0
;;      Temps:          0       1       0
;;      Totals:         0       9       0
;;Total ram usage:        9 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LCDByte
;;		_LCDGotoXY
;;		_LCDInit
;;		_LCDWriteInt
;;		_LCDWriteString
;;		_My_Delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"E:\Study Material\XC8 PROJECTS\LCD Test\LCDTest.c"
	line	60
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"E:\Study Material\XC8 PROJECTS\LCD Test\LCDTest.c"
	line	60
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	62
	
l1289:	
;LCDTest.c: 62: int count, secs = 0, mins = 0, hrs = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@secs)
	clrf	(main@secs+1)
	clrf	(main@mins)
	clrf	(main@mins+1)
	
l1291:	
	movlw	low(01h)
	movwf	(main@hrs)
	movlw	high(01h)
	movwf	((main@hrs))+1
	line	63
	
l1293:	
;LCDTest.c: 63: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	64
	
l1295:	
;LCDTest.c: 64: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	66
	
l1297:	
;LCDTest.c: 66: for(count = 0; count <= 4; count++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	clrf	(main@count+1)
	
l1299:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05h))^80h
	subwf	btemp+1,w
	skipz
	goto	u845
	movlw	low(05h)
	subwf	(main@count),w
u845:

	skipc
	goto	u841
	goto	u840
u841:
	goto	l104
u840:
	goto	l1311
	
l1301:	
	goto	l1311
	line	67
	
l104:	
	line	68
;LCDTest.c: 67: {
;LCDTest.c: 68: RC4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(60/8),(60)&7	;volatile
	line	69
	
l1303:	
;LCDTest.c: 69: My_Delay(1);
	movlw	(01h)
	fcall	_My_Delay
	line	70
	
l1305:	
;LCDTest.c: 70: RC4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7	;volatile
	line	71
;LCDTest.c: 71: My_Delay(1);
	movlw	(01h)
	fcall	_My_Delay
	line	66
	
l1307:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	
l1309:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05h))^80h
	subwf	btemp+1,w
	skipz
	goto	u855
	movlw	low(05h)
	subwf	(main@count),w
u855:

	skipc
	goto	u851
	goto	u850
u851:
	goto	l104
u850:
	goto	l1311
	
l105:	
	line	75
	
l1311:	
;LCDTest.c: 72: }
;LCDTest.c: 75: LCDInit(0B00000000);
	movlw	(0)
	fcall	_LCDInit
	line	78
	
l1313:	
;LCDTest.c: 78: (LCDByte(0b00000001,0));
	clrf	(LCDByte@isdata)
	movlw	(01h)
	fcall	_LCDByte
	line	81
	
l1315:	
;LCDTest.c: 81: LCDWriteString("NITIN N. SANGALE");
	movlw	((STR_1)-__stringbase)&0ffh
	fcall	_LCDWriteString
	line	82
	
l1317:	
;LCDTest.c: 82: LCDGotoXY(4,1);
	clrf	(LCDGotoXY@y)
	incf	(LCDGotoXY@y),f
	movlw	(04h)
	fcall	_LCDGotoXY
	line	83
	
l1319:	
;LCDTest.c: 83: LCDWriteInt(hrs,2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@hrs+1),w
	clrf	(LCDWriteInt@val+1)
	addwf	(LCDWriteInt@val+1)
	movf	(main@hrs),w
	clrf	(LCDWriteInt@val)
	addwf	(LCDWriteInt@val)

	movlw	(02h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(LCDWriteInt@field_length)
	fcall	_LCDWriteInt
	line	84
	
l1321:	
;LCDTest.c: 84: LCDGotoXY(6,1);
	clrf	(LCDGotoXY@y)
	incf	(LCDGotoXY@y),f
	movlw	(06h)
	fcall	_LCDGotoXY
	line	85
	
l1323:	
;LCDTest.c: 85: LCDWriteString(":");
	movlw	((STR_2)-__stringbase)&0ffh
	fcall	_LCDWriteString
	line	86
	
l1325:	
;LCDTest.c: 86: LCDGotoXY(7,1);
	clrf	(LCDGotoXY@y)
	incf	(LCDGotoXY@y),f
	movlw	(07h)
	fcall	_LCDGotoXY
	line	87
	
l1327:	
;LCDTest.c: 87: LCDWriteInt(mins,2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@mins+1),w
	clrf	(LCDWriteInt@val+1)
	addwf	(LCDWriteInt@val+1)
	movf	(main@mins),w
	clrf	(LCDWriteInt@val)
	addwf	(LCDWriteInt@val)

	movlw	(02h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(LCDWriteInt@field_length)
	fcall	_LCDWriteInt
	line	88
	
l1329:	
;LCDTest.c: 88: LCDGotoXY(9,1);
	clrf	(LCDGotoXY@y)
	incf	(LCDGotoXY@y),f
	movlw	(09h)
	fcall	_LCDGotoXY
	line	89
	
l1331:	
;LCDTest.c: 89: LCDWriteString(":");
	movlw	((STR_3)-__stringbase)&0ffh
	fcall	_LCDWriteString
	line	90
	
l1333:	
;LCDTest.c: 90: LCDGotoXY(10,1);
	clrf	(LCDGotoXY@y)
	incf	(LCDGotoXY@y),f
	movlw	(0Ah)
	fcall	_LCDGotoXY
	line	91
	
l1335:	
;LCDTest.c: 91: LCDWriteInt(secs,2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@secs+1),w
	clrf	(LCDWriteInt@val+1)
	addwf	(LCDWriteInt@val+1)
	movf	(main@secs),w
	clrf	(LCDWriteInt@val)
	addwf	(LCDWriteInt@val)

	movlw	(02h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(LCDWriteInt@field_length)
	fcall	_LCDWriteInt
	goto	l1337
	line	93
;LCDTest.c: 93: while(1)
	
l106:	
	line	95
	
l1337:	
;LCDTest.c: 94: {
;LCDTest.c: 95: My_Delay(1);
	movlw	(01h)
	fcall	_My_Delay
	line	96
	
l1339:	
;LCDTest.c: 96: secs++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@secs),f
	skipnc
	incf	(main@secs+1),f
	movlw	high(01h)
	addwf	(main@secs+1),f
	line	97
	
l1341:	
;LCDTest.c: 97: if(secs == 60)
	movlw	03Ch
	xorwf	(main@secs),w
	iorwf	(main@secs+1),w
	skipz
	goto	u861
	goto	u860
u861:
	goto	l1357
u860:
	line	99
	
l1343:	
;LCDTest.c: 98: {
;LCDTest.c: 99: secs = 0;
	clrf	(main@secs)
	clrf	(main@secs+1)
	line	100
	
l1345:	
;LCDTest.c: 100: mins++;
	movlw	low(01h)
	addwf	(main@mins),f
	skipnc
	incf	(main@mins+1),f
	movlw	high(01h)
	addwf	(main@mins+1),f
	line	101
	
l1347:	
;LCDTest.c: 101: if(mins == 60)
	movlw	03Ch
	xorwf	(main@mins),w
	iorwf	(main@mins+1),w
	skipz
	goto	u871
	goto	u870
u871:
	goto	l1357
u870:
	line	103
	
l1349:	
;LCDTest.c: 102: {
;LCDTest.c: 103: mins = 0;
	clrf	(main@mins)
	clrf	(main@mins+1)
	line	104
	
l1351:	
;LCDTest.c: 104: hrs++;
	movlw	low(01h)
	addwf	(main@hrs),f
	skipnc
	incf	(main@hrs+1),f
	movlw	high(01h)
	addwf	(main@hrs+1),f
	line	105
	
l1353:	
;LCDTest.c: 105: if(hrs == 13)
	movlw	0Dh
	xorwf	(main@hrs),w
	iorwf	(main@hrs+1),w
	skipz
	goto	u881
	goto	u880
u881:
	goto	l1357
u880:
	line	106
	
l1355:	
;LCDTest.c: 106: hrs = 1;
	movlw	low(01h)
	movwf	(main@hrs)
	movlw	high(01h)
	movwf	((main@hrs))+1
	goto	l1357
	
l109:	
	goto	l1357
	line	107
	
l108:	
	goto	l1357
	line	108
	
l107:	
	line	110
	
l1357:	
;LCDTest.c: 107: }
;LCDTest.c: 108: }
;LCDTest.c: 110: (LCDByte(0b00000001,0));
	clrf	(LCDByte@isdata)
	movlw	(01h)
	fcall	_LCDByte
	line	113
	
l1359:	
;LCDTest.c: 113: LCDWriteString("NITIN N. SANGALE");
	movlw	((STR_4)-__stringbase)&0ffh
	fcall	_LCDWriteString
	line	114
	
l1361:	
;LCDTest.c: 114: LCDGotoXY(4,1);
	clrf	(LCDGotoXY@y)
	incf	(LCDGotoXY@y),f
	movlw	(04h)
	fcall	_LCDGotoXY
	line	115
	
l1363:	
;LCDTest.c: 115: LCDWriteInt(hrs,2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@hrs+1),w
	clrf	(LCDWriteInt@val+1)
	addwf	(LCDWriteInt@val+1)
	movf	(main@hrs),w
	clrf	(LCDWriteInt@val)
	addwf	(LCDWriteInt@val)

	movlw	(02h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(LCDWriteInt@field_length)
	fcall	_LCDWriteInt
	line	116
	
l1365:	
;LCDTest.c: 116: LCDGotoXY(6,1);
	clrf	(LCDGotoXY@y)
	incf	(LCDGotoXY@y),f
	movlw	(06h)
	fcall	_LCDGotoXY
	line	117
	
l1367:	
;LCDTest.c: 117: LCDWriteString(":");
	movlw	((STR_5)-__stringbase)&0ffh
	fcall	_LCDWriteString
	line	118
	
l1369:	
;LCDTest.c: 118: LCDGotoXY(7,1);
	clrf	(LCDGotoXY@y)
	incf	(LCDGotoXY@y),f
	movlw	(07h)
	fcall	_LCDGotoXY
	line	119
	
l1371:	
;LCDTest.c: 119: LCDWriteInt(mins,2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@mins+1),w
	clrf	(LCDWriteInt@val+1)
	addwf	(LCDWriteInt@val+1)
	movf	(main@mins),w
	clrf	(LCDWriteInt@val)
	addwf	(LCDWriteInt@val)

	movlw	(02h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(LCDWriteInt@field_length)
	fcall	_LCDWriteInt
	line	120
	
l1373:	
;LCDTest.c: 120: LCDGotoXY(9,1);
	clrf	(LCDGotoXY@y)
	incf	(LCDGotoXY@y),f
	movlw	(09h)
	fcall	_LCDGotoXY
	line	121
	
l1375:	
;LCDTest.c: 121: LCDWriteString(":");
	movlw	((STR_6)-__stringbase)&0ffh
	fcall	_LCDWriteString
	line	122
	
l1377:	
;LCDTest.c: 122: LCDGotoXY(10,1);
	clrf	(LCDGotoXY@y)
	incf	(LCDGotoXY@y),f
	movlw	(0Ah)
	fcall	_LCDGotoXY
	line	123
	
l1379:	
;LCDTest.c: 123: LCDWriteInt(secs,2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@secs+1),w
	clrf	(LCDWriteInt@val+1)
	addwf	(LCDWriteInt@val+1)
	movf	(main@secs),w
	clrf	(LCDWriteInt@val)
	addwf	(LCDWriteInt@val)

	movlw	(02h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(LCDWriteInt@field_length)
	fcall	_LCDWriteInt
	goto	l1337
	line	124
	
l110:	
	line	93
	goto	l1337
	
l111:	
	line	125
	
l112:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_My_Delay

;; *************** function _My_Delay *****************
;; Defined at:
;;		line 33 in file "E:\Study Material\XC8 PROJECTS\LCD Test\LCDTest.c"
;; Parameters:    Size  Location     Type
;;  sec             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sec             1    1[COMMON] unsigned char 
;;  Count           1    2[COMMON] unsigned char 
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
;;      Locals:         2       0       0
;;      Temps:          1       0       0
;;      Totals:         3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	33
global __ptext1
__ptext1:	;psect for function _My_Delay
psect	text1
	file	"E:\Study Material\XC8 PROJECTS\LCD Test\LCDTest.c"
	line	33
	global	__size_of_My_Delay
	__size_of_My_Delay	equ	__end_of_My_Delay-_My_Delay
	
_My_Delay:	
;incstack = 0
	opt	stack 7
; Regs used in _My_Delay: [wreg+status,2+status,0]
;My_Delay@sec stored from wreg
	movwf	(My_Delay@sec)
	line	35
	
l1275:	
;LCDTest.c: 35: while(sec > 0)
	goto	l1287
	
l93:	
	line	37
	
l1277:	
;LCDTest.c: 36: {
;LCDTest.c: 37: char Count = 0;
	clrf	(My_Delay@Count)
	line	38
	
l1279:	
;LCDTest.c: 38: T1CON = 0b00000001;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(16)	;volatile
	line	39
;LCDTest.c: 39: while(Count != 38)
	goto	l1283
	
l95:	
	line	41
;LCDTest.c: 40: {
;LCDTest.c: 41: while (!TMR1IF);
	goto	l96
	
l97:	
	
l96:	
	btfss	(96/8),(96)&7	;volatile
	goto	u811
	goto	u810
u811:
	goto	l96
u810:
	
l98:	
	line	42
;LCDTest.c: 42: TMR1IF = 0;
	bcf	(96/8),(96)&7	;volatile
	line	43
	
l1281:	
;LCDTest.c: 43: Count ++;
	movlw	(01h)
	movwf	(??_My_Delay+0)+0
	movf	(??_My_Delay+0)+0,w
	addwf	(My_Delay@Count),f
	goto	l1283
	line	44
	
l94:	
	line	39
	
l1283:	
	movf	(My_Delay@Count),w
	xorlw	026h
	skipz
	goto	u821
	goto	u820
u821:
	goto	l96
u820:
	goto	l1285
	
l99:	
	line	45
	
l1285:	
;LCDTest.c: 44: }
;LCDTest.c: 45: sec--;
	movlw	low(01h)
	subwf	(My_Delay@sec),f
	goto	l1287
	line	46
	
l92:	
	line	35
	
l1287:	
	movf	(My_Delay@sec),f
	skipz
	goto	u831
	goto	u830
u831:
	goto	l1277
u830:
	goto	l101
	
l100:	
	line	47
	
l101:	
	return
	opt stack 0
GLOBAL	__end_of_My_Delay
	__end_of_My_Delay:
	signat	_My_Delay,4216
	global	_LCDWriteString

;; *************** function _LCDWriteString *****************
;; Defined at:
;;		line 253 in file "E:\Study Material\XC8 PROJECTS\LCD Test\lcd_hd44780_pic16.c"
;; Parameters:    Size  Location     Type
;;  msg             1    wreg     PTR const unsigned char 
;;		 -> STR_6(2), STR_5(2), STR_4(17), STR_3(2), 
;;		 -> STR_2(2), STR_1(17), 
;; Auto vars:     Size  Location     Type
;;  msg             1    1[BANK0 ] PTR const unsigned char 
;;		 -> STR_6(2), STR_5(2), STR_4(17), STR_3(2), 
;;		 -> STR_2(2), STR_1(17), 
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
	file	"E:\Study Material\XC8 PROJECTS\LCD Test\lcd_hd44780_pic16.c"
	line	253
global __ptext2
__ptext2:	;psect for function _LCDWriteString
psect	text2
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
	
l1193:	
;lcd_hd44780_pic16.c: 283: while(*msg!='\0')
	goto	l1215
	
l37:	
	line	286
	
l1195:	
;lcd_hd44780_pic16.c: 284: {
;lcd_hd44780_pic16.c: 286: if(*msg=='%')
	movf	(LCDWriteString@msg),w
	movwf	fsr0
	fcall	stringdir
	xorlw	025h
	skipz
	goto	u701
	goto	u700
u701:
	goto	l1211
u700:
	line	288
	
l1197:	
;lcd_hd44780_pic16.c: 287: {
;lcd_hd44780_pic16.c: 288: msg++;
	movlw	(01h)
	movwf	(??_LCDWriteString+0)+0
	movf	(??_LCDWriteString+0)+0,w
	addwf	(LCDWriteString@msg),f
	line	289
	
l1199:	
;lcd_hd44780_pic16.c: 289: int8_t cc=*msg-'0';
	movf	(LCDWriteString@msg),w
	movwf	fsr0
	fcall	stringdir
	addlw	-48
	movwf	(??_LCDWriteString+0)+0
	movf	(??_LCDWriteString+0)+0,w
	movwf	(LCDWriteString@cc)
	line	291
	
l1201:	
;lcd_hd44780_pic16.c: 291: if(cc>=0 && cc<=7)
	btfsc	(LCDWriteString@cc),7
	goto	u711
	goto	u710
u711:
	goto	l1207
u710:
	
l1203:	
	movf	(LCDWriteString@cc),w
	xorlw	80h
	addlw	-((08h)^80h)
	skipnc
	goto	u721
	goto	u720
u721:
	goto	l1207
u720:
	line	293
	
l1205:	
;lcd_hd44780_pic16.c: 292: {
;lcd_hd44780_pic16.c: 293: (LCDByte(cc,1));
	clrf	(LCDByte@isdata)
	incf	(LCDByte@isdata),f
	movf	(LCDWriteString@cc),w
	fcall	_LCDByte
	line	294
;lcd_hd44780_pic16.c: 294: }
	goto	l1213
	line	295
	
l39:	
	line	297
	
l1207:	
;lcd_hd44780_pic16.c: 295: else
;lcd_hd44780_pic16.c: 296: {
;lcd_hd44780_pic16.c: 297: (LCDByte('%',1));
	clrf	(LCDByte@isdata)
	incf	(LCDByte@isdata),f
	movlw	(025h)
	fcall	_LCDByte
	line	298
	
l1209:	
;lcd_hd44780_pic16.c: 298: (LCDByte(*msg,1));
	clrf	(LCDByte@isdata)
	incf	(LCDByte@isdata),f
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCDWriteString@msg),w
	movwf	fsr0
	fcall	stringdir
	fcall	_LCDByte
	goto	l1213
	line	299
	
l40:	
	line	300
;lcd_hd44780_pic16.c: 299: }
;lcd_hd44780_pic16.c: 300: }
	goto	l1213
	line	301
	
l38:	
	line	303
	
l1211:	
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
	goto	l1213
	line	304
	
l41:	
	line	305
	
l1213:	
;lcd_hd44780_pic16.c: 304: }
;lcd_hd44780_pic16.c: 305: msg++;
	movlw	(01h)
	movwf	(??_LCDWriteString+0)+0
	movf	(??_LCDWriteString+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(LCDWriteString@msg),f
	goto	l1215
	line	306
	
l36:	
	line	283
	
l1215:	
	movf	(LCDWriteString@msg),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u731
	goto	u730
u731:
	goto	l1195
u730:
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
;;		line 309 in file "E:\Study Material\XC8 PROJECTS\LCD Test\lcd_hd44780_pic16.c"
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
	file	"E:\Study Material\XC8 PROJECTS\LCD Test\lcd_hd44780_pic16.c"
	line	309
	global	__size_of_LCDWriteInt
	__size_of_LCDWriteInt	equ	__end_of_LCDWriteInt-_LCDWriteInt
	
_LCDWriteInt:	
;incstack = 0
	opt	stack 5
; Regs used in _LCDWriteInt: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	322
	
l1217:	
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
	
l1219:	
;lcd_hd44780_pic16.c: 323: int i=4,j=0;
	movlw	low(04h)
	movwf	(LCDWriteInt@i)
	movlw	high(04h)
	movwf	((LCDWriteInt@i))+1
	
l1221:	
	clrf	(LCDWriteInt@j)
	clrf	(LCDWriteInt@j+1)
	line	326
	
l1223:	
;lcd_hd44780_pic16.c: 326: if(val<0)
	btfss	(LCDWriteInt@val+1),7
	goto	u741
	goto	u740
u741:
	goto	l1235
u740:
	line	328
	
l1225:	
;lcd_hd44780_pic16.c: 327: {
;lcd_hd44780_pic16.c: 328: (LCDByte('-',1));
	clrf	(LCDByte@isdata)
	incf	(LCDByte@isdata),f
	movlw	(02Dh)
	fcall	_LCDByte
	line	329
	
l1227:	
;lcd_hd44780_pic16.c: 329: val=val*-1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	comf	(LCDWriteInt@val),f
	comf	(LCDWriteInt@val+1),f
	incf	(LCDWriteInt@val),f
	skipnz
	incf	(LCDWriteInt@val+1),f
	goto	l1235
	line	330
	
l48:	
	line	332
;lcd_hd44780_pic16.c: 330: }
;lcd_hd44780_pic16.c: 332: while(val)
	goto	l1235
	
l50:	
	line	334
	
l1229:	
;lcd_hd44780_pic16.c: 333: {
;lcd_hd44780_pic16.c: 334: str[i]=val%10;
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
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
	line	335
	
l1231:	
;lcd_hd44780_pic16.c: 335: val=val/10;
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

	line	336
	
l1233:	
;lcd_hd44780_pic16.c: 336: i--;
	movlw	low(-1)
	addwf	(LCDWriteInt@i),f
	skipnc
	incf	(LCDWriteInt@i+1),f
	movlw	high(-1)
	addwf	(LCDWriteInt@i+1),f
	goto	l1235
	line	337
	
l49:	
	line	332
	
l1235:	
	movf	((LCDWriteInt@val+1)),w
	iorwf	((LCDWriteInt@val)),w
	skipz
	goto	u751
	goto	u750
u751:
	goto	l1229
u750:
	goto	l1237
	
l51:	
	line	338
	
l1237:	
;lcd_hd44780_pic16.c: 337: }
;lcd_hd44780_pic16.c: 338: if(field_length==-1)
	movf	(LCDWriteInt@field_length),w
	xorlw	-1
	skipz
	goto	u761
	goto	u760
u761:
	goto	l1245
u760:
	goto	l1243
	line	339
	
l1239:	
;lcd_hd44780_pic16.c: 339: while(str[j]==0) j++;
	goto	l1243
	
l54:	
	
l1241:	
	movlw	low(01h)
	addwf	(LCDWriteInt@j),f
	skipnc
	incf	(LCDWriteInt@j+1),f
	movlw	high(01h)
	addwf	(LCDWriteInt@j+1),f
	goto	l1243
	
l53:	
	
l1243:	
	movf	(LCDWriteInt@j),w
	addlw	LCDWriteInt@str&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u771
	goto	u770
u771:
	goto	l1241
u770:
	goto	l56
	
l55:	
	goto	l56
	line	340
	
l52:	
	line	341
	
l1245:	
;lcd_hd44780_pic16.c: 340: else
;lcd_hd44780_pic16.c: 341: j=5-field_length;
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
	
l56:	
	line	344
;lcd_hd44780_pic16.c: 344: for(i=j;i<5;i++)
	movf	(LCDWriteInt@j+1),w
	clrf	(LCDWriteInt@i+1)
	addwf	(LCDWriteInt@i+1)
	movf	(LCDWriteInt@j),w
	clrf	(LCDWriteInt@i)
	addwf	(LCDWriteInt@i)

	
l1247:	
	movf	(LCDWriteInt@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05h))^80h
	subwf	btemp+1,w
	skipz
	goto	u785
	movlw	low(05h)
	subwf	(LCDWriteInt@i),w
u785:

	skipc
	goto	u781
	goto	u780
u781:
	goto	l1251
u780:
	goto	l59
	
l1249:	
	goto	l59
	line	345
	
l57:	
	line	346
	
l1251:	
;lcd_hd44780_pic16.c: 345: {
;lcd_hd44780_pic16.c: 346: (LCDByte(48+str[i],1));
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
	line	344
	
l1253:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(LCDWriteInt@i),f
	skipnc
	incf	(LCDWriteInt@i+1),f
	movlw	high(01h)
	addwf	(LCDWriteInt@i+1),f
	
l1255:	
	movf	(LCDWriteInt@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05h))^80h
	subwf	btemp+1,w
	skipz
	goto	u795
	movlw	low(05h)
	subwf	(LCDWriteInt@i),w
u795:

	skipc
	goto	u791
	goto	u790
u791:
	goto	l1251
u790:
	goto	l59
	
l58:	
	line	348
	
l59:	
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
	
l1105:	
	clrf	(___awmod@sign)
	line	14
	
l1107:	
	btfss	(___awmod@dividend+1),7
	goto	u591
	goto	u590
u591:
	goto	l1113
u590:
	line	15
	
l1109:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	16
	
l1111:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	goto	l1113
	line	17
	
l331:	
	line	18
	
l1113:	
	btfss	(___awmod@divisor+1),7
	goto	u601
	goto	u600
u601:
	goto	l1117
u600:
	line	19
	
l1115:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l1117
	
l332:	
	line	20
	
l1117:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u611
	goto	u610
u611:
	goto	l1135
u610:
	line	21
	
l1119:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	22
	goto	l1125
	
l335:	
	line	23
	
l1121:	
	movlw	01h
	
u625:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u625
	line	24
	
l1123:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l1125
	line	25
	
l334:	
	line	22
	
l1125:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u631
	goto	u630
u631:
	goto	l1121
u630:
	goto	l1127
	
l336:	
	goto	l1127
	line	26
	
l337:	
	line	27
	
l1127:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u645
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u645:
	skipc
	goto	u641
	goto	u640
u641:
	goto	l1131
u640:
	line	28
	
l1129:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l1131
	
l338:	
	line	29
	
l1131:	
	movlw	01h
	
u655:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u655
	line	30
	
l1133:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u661
	goto	u660
u661:
	goto	l1127
u660:
	goto	l1135
	
l339:	
	goto	l1135
	line	31
	
l333:	
	line	32
	
l1135:	
	movf	(___awmod@sign),w
	skipz
	goto	u670
	goto	l1139
u670:
	line	33
	
l1137:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l1139
	
l340:	
	line	34
	
l1139:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l341
	
l1141:	
	line	35
	
l341:	
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
	
l1061:	
	clrf	(___awdiv@sign)
	line	15
	
l1063:	
	btfss	(___awdiv@divisor+1),7
	goto	u491
	goto	u490
u491:
	goto	l1069
u490:
	line	16
	
l1065:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l1067:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	goto	l1069
	line	18
	
l318:	
	line	19
	
l1069:	
	btfss	(___awdiv@dividend+1),7
	goto	u501
	goto	u500
u501:
	goto	l1075
u500:
	line	20
	
l1071:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l1073:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l1075
	line	22
	
l319:	
	line	23
	
l1075:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l1077:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u511
	goto	u510
u511:
	goto	l1097
u510:
	line	25
	
l1079:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l1085
	
l322:	
	line	27
	
l1081:	
	movlw	01h
	
u525:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u525
	line	28
	
l1083:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l1085
	line	29
	
l321:	
	line	26
	
l1085:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u531
	goto	u530
u531:
	goto	l1081
u530:
	goto	l1087
	
l323:	
	goto	l1087
	line	30
	
l324:	
	line	31
	
l1087:	
	movlw	01h
	
u545:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u545
	line	32
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u555
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u555:
	skipc
	goto	u551
	goto	u550
u551:
	goto	l1093
u550:
	line	33
	
l1089:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
l1091:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l1093
	line	35
	
l325:	
	line	36
	
l1093:	
	movlw	01h
	
u565:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u565
	line	37
	
l1095:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u571
	goto	u570
u571:
	goto	l1087
u570:
	goto	l1097
	
l326:	
	goto	l1097
	line	38
	
l320:	
	line	39
	
l1097:	
	movf	(___awdiv@sign),w
	skipz
	goto	u580
	goto	l1101
u580:
	line	40
	
l1099:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l1101
	
l327:	
	line	41
	
l1101:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l328
	
l1103:	
	line	42
	
l328:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
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
	file	"E:\Study Material\XC8 PROJECTS\LCD Test\lcd_hd44780_pic16.c"
	line	195
global __ptext6
__ptext6:	;psect for function _LCDInit
psect	text6
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
	
l1143:	
;lcd_hd44780_pic16.c: 211: _delay((unsigned long)((30)*(4000000/4000.0)));
	opt asmopt_off
movlw	39
movwf	((??_LCDInit+0)+0+1),f
	movlw	245
movwf	((??_LCDInit+0)+0),f
u897:
	decfsz	((??_LCDInit+0)+0),f
	goto	u897
	decfsz	((??_LCDInit+0)+0+1),f
	goto	u897
opt asmopt_on

	line	214
	
l1145:	
;lcd_hd44780_pic16.c: 214: TRISC&=(~(0x0F<<0));
	movlw	(0F0h)
	movwf	(??_LCDInit+0)+0
	movf	(??_LCDInit+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(135)^080h,f	;volatile
	line	216
	
l1147:	
;lcd_hd44780_pic16.c: 216: TRISCbits.TRISC5=0;
	bcf	(135)^080h,5	;volatile
	line	217
	
l1149:	
;lcd_hd44780_pic16.c: 217: TRISCbits.TRISC7=0;
	bcf	(135)^080h,7	;volatile
	line	218
	
l1151:	
;lcd_hd44780_pic16.c: 218: TRISCbits.TRISC6=0;
	bcf	(135)^080h,6	;volatile
	line	220
	
l1153:	
;lcd_hd44780_pic16.c: 220: PORTC&=(~(0x0F<<0));
	movlw	(0F0h)
	movwf	(??_LCDInit+0)+0
	movf	(??_LCDInit+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(7),f	;volatile
	line	222
	
l1155:	
;lcd_hd44780_pic16.c: 222: (RC5=0);
	bcf	(61/8),(61)&7	;volatile
	line	223
	
l1157:	
;lcd_hd44780_pic16.c: 223: (RC6=0);
	bcf	(62/8),(62)&7	;volatile
	line	224
	
l1159:	
;lcd_hd44780_pic16.c: 224: (RC7=0);
	bcf	(63/8),(63)&7	;volatile
	line	227
	
l1161:	
;lcd_hd44780_pic16.c: 227: _delay((unsigned long)((0.5)*(4000000/4000000.0)));
	
	line	229
	
l1163:	
;lcd_hd44780_pic16.c: 229: (RC5=1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7	;volatile
	line	230
	
l1165:	
;lcd_hd44780_pic16.c: 230: PORTC|=((0b00000010)<<0);
	bsf	(7)+(1/8),(1)&7	;volatile
	line	231
	
l1167:	
;lcd_hd44780_pic16.c: 231: _delay((unsigned long)((1)*(4000000/4000000.0)));
		opt asmopt_off
	nop
	opt asmopt_on

	line	232
	
l1169:	
;lcd_hd44780_pic16.c: 232: (RC5=0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7	;volatile
	line	233
	
l1171:	
;lcd_hd44780_pic16.c: 233: _delay((unsigned long)((1)*(4000000/4000000.0)));
		opt asmopt_off
	nop
	opt asmopt_on

	line	236
	
l1173:	
;lcd_hd44780_pic16.c: 236: LCDBusyLoop();
	fcall	_LCDBusyLoop
	line	241
	
l1175:	
;lcd_hd44780_pic16.c: 241: (LCDByte(0b00101000,0));
	clrf	(LCDByte@isdata)
	movlw	(028h)
	fcall	_LCDByte
	line	242
	
l1177:	
;lcd_hd44780_pic16.c: 242: (LCDByte(0b00001100|style,0));
	clrf	(LCDByte@isdata)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCDInit@style),w
	iorlw	0Ch
	fcall	_LCDByte
	line	245
	
l1179:	
;lcd_hd44780_pic16.c: 245: (LCDByte(0b01000000,0));
	clrf	(LCDByte@isdata)
	movlw	(040h)
	fcall	_LCDByte
	line	248
	
l1181:	
;lcd_hd44780_pic16.c: 247: uint8_t __i;
;lcd_hd44780_pic16.c: 248: for(__i=0;__i<sizeof(__cgram);__i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDInit@__i)
	
l1183:	
	movlw	(010h)
	subwf	(LCDInit@__i),w
	skipc
	goto	u681
	goto	u680
u681:
	goto	l1187
u680:
	goto	l33
	
l1185:	
	goto	l33
	line	249
	
l31:	
	
l1187:	
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
	
l1189:	
	movlw	(01h)
	movwf	(??_LCDInit+0)+0
	movf	(??_LCDInit+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(LCDInit@__i),f
	
l1191:	
	movlw	(010h)
	subwf	(LCDInit@__i),w
	skipc
	goto	u691
	goto	u690
u691:
	goto	l1187
u690:
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
;;		line 354 in file "E:\Study Material\XC8 PROJECTS\LCD Test\lcd_hd44780_pic16.c"
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
	line	354
global __ptext7
__ptext7:	;psect for function _LCDGotoXY
psect	text7
	file	"E:\Study Material\XC8 PROJECTS\LCD Test\lcd_hd44780_pic16.c"
	line	354
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
	line	356
	
l1257:	
;lcd_hd44780_pic16.c: 356: if(x>=20) return;
	movlw	(014h)
	subwf	(LCDGotoXY@x),w
	skipc
	goto	u801
	goto	u800
u801:
	goto	l1267
u800:
	goto	l63
	
l1259:	
	goto	l63
	
l62:	
	line	360
;lcd_hd44780_pic16.c: 360: switch(y)
	goto	l1267
	line	362
;lcd_hd44780_pic16.c: 361: {
;lcd_hd44780_pic16.c: 362: case 0:
	
l65:	
	line	363
;lcd_hd44780_pic16.c: 363: break;
	goto	l66
	line	364
;lcd_hd44780_pic16.c: 364: case 1:
	
l67:	
	line	365
;lcd_hd44780_pic16.c: 365: x|=0b01000000;
	bsf	(LCDGotoXY@x)+(6/8),(6)&7
	line	366
;lcd_hd44780_pic16.c: 366: break;
	goto	l66
	line	367
;lcd_hd44780_pic16.c: 367: case 2:
	
l68:	
	line	368
	
l1261:	
;lcd_hd44780_pic16.c: 368: x+=0x14;
	movlw	(014h)
	movwf	(??_LCDGotoXY+0)+0
	movf	(??_LCDGotoXY+0)+0,w
	addwf	(LCDGotoXY@x),f
	line	369
;lcd_hd44780_pic16.c: 369: break;
	goto	l66
	line	370
;lcd_hd44780_pic16.c: 370: case 3:
	
l69:	
	line	371
	
l1263:	
;lcd_hd44780_pic16.c: 371: x+=0x54;
	movlw	(054h)
	movwf	(??_LCDGotoXY+0)+0
	movf	(??_LCDGotoXY+0)+0,w
	addwf	(LCDGotoXY@x),f
	line	372
;lcd_hd44780_pic16.c: 372: break;
	goto	l66
	line	373
	
l1265:	
;lcd_hd44780_pic16.c: 373: }
	goto	l66
	line	360
	
l64:	
	
l1267:	
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
goto l66
movlw high(S1401)
movwf pclath
	movlw low(S1401)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
S1401:
	ljmp	l66
	ljmp	l67
	ljmp	l1261
	ljmp	l1263
psect	text7

	line	373
	
l66:	
	line	395
;lcd_hd44780_pic16.c: 395: x|=0b10000000;
	bsf	(LCDGotoXY@x)+(7/8),(7)&7
	line	396
	
l1269:	
;lcd_hd44780_pic16.c: 396: (LCDByte(x,0));
	clrf	(LCDByte@isdata)
	movf	(LCDGotoXY@x),w
	fcall	_LCDByte
	line	397
	
l63:	
	return
	opt stack 0
GLOBAL	__end_of_LCDGotoXY
	__end_of_LCDGotoXY:
	signat	_LCDGotoXY,8312
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
	
l1031:	
;lcd_hd44780_pic16.c: 91: uint8_t hn,ln;
;lcd_hd44780_pic16.c: 92: uint8_t temp;
;lcd_hd44780_pic16.c: 94: hn=c>>4;
	movf	(LCDByte@c),w
	movwf	(??_LCDByte+0)+0
	movlw	04h
u475:
	clrc
	rrf	(??_LCDByte+0)+0,f
	addlw	-1
	skipz
	goto	u475
	movf	0+(??_LCDByte+0)+0,w
	movwf	(??_LCDByte+1)+0
	movf	(??_LCDByte+1)+0,w
	movwf	(LCDByte@hn)
	line	95
	
l1033:	
;lcd_hd44780_pic16.c: 95: ln=(c & 0x0F);
	movf	(LCDByte@c),w
	andlw	0Fh
	movwf	(??_LCDByte+0)+0
	movf	(??_LCDByte+0)+0,w
	movwf	(LCDByte@ln)
	line	97
	
l1035:	
;lcd_hd44780_pic16.c: 97: if(isdata==0)
	movf	(LCDByte@isdata),f
	skipz
	goto	u481
	goto	u480
u481:
	goto	l21
u480:
	line	98
	
l1037:	
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
;lcd_hd44780_pic16.c: 102: _delay((unsigned long)((0.5)*(4000000/4000000.0)));
	
	line	104
;lcd_hd44780_pic16.c: 104: (RC5=1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7	;volatile
	line	108
	
l1039:	
;lcd_hd44780_pic16.c: 108: temp=(PORTC & (~(0X0F<<0)))|((hn<<0));
	movf	(7),w	;volatile
	andlw	0F0h
	iorwf	(LCDByte@hn),w
	movwf	(??_LCDByte+0)+0
	movf	(??_LCDByte+0)+0,w
	movwf	(LCDByte@temp)
	line	109
	
l1041:	
;lcd_hd44780_pic16.c: 109: PORTC=temp;
	movf	(LCDByte@temp),w
	movwf	(7)	;volatile
	line	111
	
l1043:	
;lcd_hd44780_pic16.c: 111: _delay((unsigned long)((1)*(4000000/4000000.0)));
		opt asmopt_off
	nop
	opt asmopt_on

	line	115
	
l1045:	
;lcd_hd44780_pic16.c: 115: (RC5=0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7	;volatile
	line	117
	
l1047:	
;lcd_hd44780_pic16.c: 117: _delay((unsigned long)((1)*(4000000/4000000.0)));
		opt asmopt_off
	nop
	opt asmopt_on

	line	120
	
l1049:	
;lcd_hd44780_pic16.c: 120: (RC5=1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7	;volatile
	line	122
	
l1051:	
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
	
l1053:	
;lcd_hd44780_pic16.c: 126: _delay((unsigned long)((1)*(4000000/4000000.0)));
		opt asmopt_off
	nop
	opt asmopt_on

	line	130
	
l1055:	
;lcd_hd44780_pic16.c: 130: (RC5=0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7	;volatile
	line	132
	
l1057:	
;lcd_hd44780_pic16.c: 132: _delay((unsigned long)((1)*(4000000/4000000.0)));
		opt asmopt_off
	nop
	opt asmopt_on

	line	134
	
l1059:	
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
	file	"E:\Study Material\XC8 PROJECTS\LCD Test\lcd_hd44780_pic16.c"
	line	137
	global	__size_of_LCDBusyLoop
	__size_of_LCDBusyLoop	equ	__end_of_LCDBusyLoop-_LCDBusyLoop
	
_LCDBusyLoop:	
;incstack = 0
	opt	stack 5
; Regs used in _LCDBusyLoop: [wreg+status,2+status,0]
	line	141
	
l985:	
;lcd_hd44780_pic16.c: 141: uint8_t busy,status=0x00,temp;
	clrf	(LCDBusyLoop@status)
	line	144
	
l987:	
;lcd_hd44780_pic16.c: 144: TRISC|=(0x0f<<0);
	movlw	(0Fh)
	movwf	(??_LCDBusyLoop+0)+0
	movf	(??_LCDBusyLoop+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(135)^080h,f	;volatile
	line	147
	
l989:	
;lcd_hd44780_pic16.c: 147: (RC6=1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(62/8),(62)&7	;volatile
	line	148
	
l991:	
;lcd_hd44780_pic16.c: 148: (RC7=0);
	bcf	(63/8),(63)&7	;volatile
	line	152
	
l993:	
;lcd_hd44780_pic16.c: 152: _delay((unsigned long)((0.5)*(4000000/4000000.0)));
	
	goto	l995
	line	155
;lcd_hd44780_pic16.c: 155: do
	
l26:	
	line	158
	
l995:	
;lcd_hd44780_pic16.c: 156: {
;lcd_hd44780_pic16.c: 158: (RC5=1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7	;volatile
	line	161
	
l997:	
;lcd_hd44780_pic16.c: 161: _delay((unsigned long)((0.5)*(4000000/4000000.0)));
	
	line	163
	
l999:	
;lcd_hd44780_pic16.c: 163: status=(PORTC>>0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(7),w	;volatile
	movwf	(??_LCDBusyLoop+0)+0
	movf	(??_LCDBusyLoop+0)+0,w
	movwf	(LCDBusyLoop@status)
	line	164
	
l1001:	
;lcd_hd44780_pic16.c: 164: status=status<<4;
	movf	(LCDBusyLoop@status),w
	movwf	(??_LCDBusyLoop+0)+0
	movlw	(04h)-1
u455:
	clrc
	rlf	(??_LCDBusyLoop+0)+0,f
	addlw	-1
	skipz
	goto	u455
	clrc
	rlf	(??_LCDBusyLoop+0)+0,w
	movwf	(??_LCDBusyLoop+1)+0
	movf	(??_LCDBusyLoop+1)+0,w
	movwf	(LCDBusyLoop@status)
	line	166
	
l1003:	
;lcd_hd44780_pic16.c: 166: _delay((unsigned long)((0.5)*(4000000/4000000.0)));
	
	line	169
	
l1005:	
;lcd_hd44780_pic16.c: 169: (RC5=0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7	;volatile
	line	170
	
l1007:	
;lcd_hd44780_pic16.c: 170: _delay((unsigned long)((1)*(4000000/4000000.0)));
		opt asmopt_off
	nop
	opt asmopt_on

	line	172
	
l1009:	
;lcd_hd44780_pic16.c: 172: (RC5=1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7	;volatile
	line	173
	
l1011:	
;lcd_hd44780_pic16.c: 173: _delay((unsigned long)((0.5)*(4000000/4000000.0)));
	
	line	175
	
l1013:	
;lcd_hd44780_pic16.c: 175: temp=(PORTC>>0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(7),w	;volatile
	movwf	(??_LCDBusyLoop+0)+0
	movf	(??_LCDBusyLoop+0)+0,w
	movwf	(LCDBusyLoop@temp)
	line	176
	
l1015:	
;lcd_hd44780_pic16.c: 176: temp&=0x0F;
	movlw	(0Fh)
	movwf	(??_LCDBusyLoop+0)+0
	movf	(??_LCDBusyLoop+0)+0,w
	andwf	(LCDBusyLoop@temp),f
	line	178
	
l1017:	
;lcd_hd44780_pic16.c: 178: status=status|temp;
	movf	(LCDBusyLoop@status),w
	iorwf	(LCDBusyLoop@temp),w
	movwf	(??_LCDBusyLoop+0)+0
	movf	(??_LCDBusyLoop+0)+0,w
	movwf	(LCDBusyLoop@status)
	line	180
	
l1019:	
;lcd_hd44780_pic16.c: 180: busy=status & 0b10000000;
	movf	(LCDBusyLoop@status),w
	andlw	080h
	movwf	(??_LCDBusyLoop+0)+0
	movf	(??_LCDBusyLoop+0)+0,w
	movwf	(LCDBusyLoop@busy)
	line	182
	
l1021:	
;lcd_hd44780_pic16.c: 182: _delay((unsigned long)((0.5)*(4000000/4000000.0)));
	
	line	184
	
l1023:	
;lcd_hd44780_pic16.c: 184: (RC5=0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7	;volatile
	line	185
	
l1025:	
;lcd_hd44780_pic16.c: 185: _delay((unsigned long)((1)*(4000000/4000000.0)));
		opt asmopt_off
	nop
	opt asmopt_on

	line	186
	
l1027:	
;lcd_hd44780_pic16.c: 186: }while(busy);
	movf	(LCDBusyLoop@busy),f
	skipz
	goto	u461
	goto	u460
u461:
	goto	l995
u460:
	
l27:	
	line	188
;lcd_hd44780_pic16.c: 188: (RC6=0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(62/8),(62)&7	;volatile
	line	191
	
l1029:	
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

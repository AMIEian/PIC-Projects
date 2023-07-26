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
	FNCALL	_main,_LCDWriteString
	FNCALL	_main,_display_lower_tank
	FNCALL	_main,_display_upper_tank
	FNCALL	_display_upper_tank,_LCDGotoXY
	FNCALL	_display_upper_tank,_LCDWriteString
	FNCALL	_display_lower_tank,_LCDGotoXY
	FNCALL	_display_lower_tank,_LCDWriteString
	FNCALL	_LCDWriteString,_LCDByte
	FNCALL	_LCDGotoXY,_LCDByte
	FNCALL	_LCDInit,_LCDBusyLoop
	FNCALL	_LCDInit,_LCDByte
	FNCALL	_LCDByte,_LCDBusyLoop
	FNROOT	_main
	FNCALL	intlevel1,_Tx_Received
	global	intlevel1
	FNROOT	intlevel1
	global	___cgram
	global	_txr_not_received
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"E:\Study Material\XC8 PROJECTS\New WLC 1PH\custom_char.h"
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
	file	"E:\Study Material\XC8 PROJECTS\New WLC 1PH\WLC.C"
	line	33

;initializer for _txr_not_received
	retlw	0Eh
	global	LCDWriteInt@F784
	global	_ll
	global	_lu
	global	_ul
	global	_uu
	global	_count
	global	_level_check
	global	_lp_flag
	global	_motor_flag
	global	_INTCON
_INTCON	set	0xB
	global	_PORTA
_PORTA	set	0x5
	global	_PORTB
_PORTB	set	0x6
	global	_PORTC
_PORTC	set	0x7
	global	_INTF
_INTF	set	0x59
	global	_RA0
_RA0	set	0x28
	global	_RA1
_RA1	set	0x29
	global	_RA2
_RA2	set	0x2A
	global	_RA3
_RA3	set	0x2B
	global	_RB4
_RB4	set	0x34
	global	_RC4
_RC4	set	0x3C
	global	_RC5
_RC5	set	0x3D
	global	_RC6
_RC6	set	0x3E
	global	_RC7
_RC7	set	0x3F
	global	_ADCON1
_ADCON1	set	0x9F
	global	_OPTION_REG
_OPTION_REG	set	0x81
	global	_TRISA
_TRISA	set	0x85
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
	retlw	42	;'*'
	retlw	42	;'*'
	retlw	85	;'U'
	retlw	80	;'P'
	retlw	80	;'P'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	65	;'A'
	retlw	78	;'N'
	retlw	75	;'K'
	retlw	42	;'*'
	retlw	42	;'*'
	retlw	0
psect	strings
	
STR_2:	
	retlw	42	;'*'
	retlw	42	;'*'
	retlw	76	;'L'
	retlw	79	;'O'
	retlw	87	;'W'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	65	;'A'
	retlw	78	;'N'
	retlw	75	;'K'
	retlw	42	;'*'
	retlw	42	;'*'
	retlw	0
psect	strings
	
STR_6:	
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	77	;'M'
	retlw	77	;'M'
	retlw	85	;'U'
	retlw	78	;'N'
	retlw	73	;'I'
	retlw	67	;'C'
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	73	;'I'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	0
psect	strings
	
STR_3:	
	retlw	42	;'*'
	retlw	42	;'*'
	retlw	77	;'M'
	retlw	79	;'O'
	retlw	84	;'T'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	42	;'*'
	retlw	42	;'*'
	retlw	0
psect	strings
	
STR_9:	
	retlw	76	;'L'
	retlw	101	;'e'
	retlw	118	;'v'
	retlw	46	;'.'
	retlw	49	;'1'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_11:	
	retlw	76	;'L'
	retlw	101	;'e'
	retlw	118	;'v'
	retlw	46	;'.'
	retlw	50	;'2'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_10:	
	retlw	76	;'L'
	retlw	101	;'e'
	retlw	118	;'v'
	retlw	46	;'.'
	retlw	49	;'1'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	49	;'1'
	retlw	0
psect	strings
	
STR_12:	
	retlw	76	;'L'
	retlw	101	;'e'
	retlw	118	;'v'
	retlw	46	;'.'
	retlw	50	;'2'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	49	;'1'
	retlw	0
psect	strings
	
STR_5:	
	retlw	79	;'O'
	retlw	70	;'F'
	retlw	70	;'F'
	retlw	0
psect	strings
STR_4	equ	STR_6+11
STR_7	equ	STR_6+11
STR_8	equ	STR_5+0
STR_16	equ	STR_12+0
STR_14	equ	STR_10+0
STR_15	equ	STR_11+0
STR_13	equ	STR_9+0
	global __end_of__stringdata
__end_of__stringdata:
; #config settings
	file	"OnePH.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
LCDWriteInt@F784:
       ds      5

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_ll:
       ds      2

_lu:
       ds      2

_ul:
       ds      2

_uu:
       ds      2

_count:
       ds      1

_level_check:
       ds      1

_lp_flag:
       ds      1

_motor_flag:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"E:\Study Material\XC8 PROJECTS\New WLC 1PH\custom_char.h"
	line	15
___cgram:
       ds      16

psect	dataBANK0
	file	"E:\Study Material\XC8 PROJECTS\New WLC 1PH\WLC.C"
	line	33
_txr_not_received:
       ds      1

	file	"OnePH.as"
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
	movlw	low((__pbssCOMMON)+05h)
	fcall	clear_ram0
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+0Ch)
	fcall	clear_ram0
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
	fcall	__pidataBANK0+16		;fetch initializer
	movwf	__pdataBANK0+16&07fh		
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
?_display_upper_tank:	; 0 bytes @ 0x0
?_display_lower_tank:	; 0 bytes @ 0x0
?_LCDInit:	; 0 bytes @ 0x0
?_LCDWriteString:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_Tx_Received:	; 0 bytes @ 0x0
??_Tx_Received:	; 0 bytes @ 0x0
	ds	5
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_LCDBusyLoop:	; 0 bytes @ 0x0
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
?_LCDGotoXY:	; 0 bytes @ 0xC
	global	LCDGotoXY@y
LCDGotoXY@y:	; 1 bytes @ 0xC
	ds	1
??_LCDGotoXY:	; 0 bytes @ 0xD
	global	LCDWriteString@cc
LCDWriteString@cc:	; 1 bytes @ 0xD
	ds	1
	global	LCDInit@style
LCDInit@style:	; 1 bytes @ 0xE
	global	LCDWriteString@msg
LCDWriteString@msg:	; 1 bytes @ 0xE
	global	LCDGotoXY@x
LCDGotoXY@x:	; 1 bytes @ 0xE
	ds	1
??_display_upper_tank:	; 0 bytes @ 0xF
??_display_lower_tank:	; 0 bytes @ 0xF
	global	LCDInit@__i
LCDInit@__i:	; 1 bytes @ 0xF
	ds	1
??_main:	; 0 bytes @ 0x10
	ds	3
;!
;!Data Sizes:
;!    Strings     94
;!    Constant    0
;!    Data        17
;!    BSS         17
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      5      10
;!    BANK0            80     19      48
;!    BANK1            32      0       0

;!
;!Pointer List with Targets:
;!
;!    LCDWriteString@msg	PTR const unsigned char  size(1) Largest target is 15
;!		 -> STR_16(CODE[9]), STR_15(CODE[9]), STR_14(CODE[9]), STR_13(CODE[9]), 
;!		 -> STR_12(CODE[9]), STR_11(CODE[9]), STR_10(CODE[9]), STR_9(CODE[9]), 
;!		 -> STR_8(CODE[4]), STR_7(CODE[3]), STR_6(CODE[14]), STR_5(CODE[4]), 
;!		 -> STR_4(CODE[3]), STR_3(CODE[10]), STR_2(CODE[15]), STR_1(CODE[15]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _Tx_Received in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_LCDInit
;!    _display_upper_tank->_LCDGotoXY
;!    _display_upper_tank->_LCDWriteString
;!    _display_lower_tank->_LCDGotoXY
;!    _display_lower_tank->_LCDWriteString
;!    _LCDWriteString->_LCDByte
;!    _LCDGotoXY->_LCDByte
;!    _LCDInit->_LCDByte
;!    _LCDByte->_LCDBusyLoop
;!
;!Critical Paths under _Tx_Received in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _Tx_Received in BANK1
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
;! (0) _main                                                 3     3      0   16342
;!                                             16 BANK0      3     3      0
;!                            _LCDByte
;!                          _LCDGotoXY
;!                            _LCDInit
;!                     _LCDWriteString
;!                 _display_lower_tank
;!                 _display_upper_tank
;! ---------------------------------------------------------------------------------
;! (1) _display_upper_tank                                   0     0      0    4382
;!                          _LCDGotoXY
;!                     _LCDWriteString
;! ---------------------------------------------------------------------------------
;! (1) _display_lower_tank                                   0     0      0    4382
;!                          _LCDGotoXY
;!                     _LCDWriteString
;! ---------------------------------------------------------------------------------
;! (2) _LCDWriteString                                       3     3      0    2182
;!                                             12 BANK0      3     3      0
;!                            _LCDByte
;! ---------------------------------------------------------------------------------
;! (2) _LCDGotoXY                                            3     2      1    2200
;!                                             12 BANK0      3     2      1
;!                            _LCDByte
;! ---------------------------------------------------------------------------------
;! (1) _LCDInit                                              4     4      0    1751
;!                                             12 BANK0      4     4      0
;!                        _LCDBusyLoop
;!                            _LCDByte
;! ---------------------------------------------------------------------------------
;! (3) _LCDByte                                              7     6      1    1445
;!                                              5 BANK0      7     6      1
;!                        _LCDBusyLoop
;! ---------------------------------------------------------------------------------
;! (4) _LCDBusyLoop                                          5     5      0     176
;!                                              0 BANK0      5     5      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _Tx_Received                                          5     5      0       0
;!                                              0 COMMON     5     5      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
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
;!   _LCDWriteString
;!     _LCDByte
;!       _LCDBusyLoop
;!   _display_lower_tank
;!     _LCDGotoXY
;!       _LCDByte
;!         _LCDBusyLoop
;!     _LCDWriteString
;!       _LCDByte
;!         _LCDBusyLoop
;!   _display_upper_tank
;!     _LCDGotoXY
;!       _LCDByte
;!         _LCDBusyLoop
;!     _LCDWriteString
;!       _LCDByte
;!         _LCDBusyLoop
;!
;! _Tx_Received (ROOT)
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
;!BANK0               50     13      30       5       60.0%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      5       A       1       71.4%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      3A       8        0.0%
;!ABS                  0      0      3A       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA              40      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 39 in file "E:\Study Material\XC8 PROJECTS\New WLC 1PH\WLC.C"
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
;;      Temps:          0       3       0
;;      Totals:         0       3       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_LCDByte
;;		_LCDGotoXY
;;		_LCDInit
;;		_LCDWriteString
;;		_display_lower_tank
;;		_display_upper_tank
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"E:\Study Material\XC8 PROJECTS\New WLC 1PH\WLC.C"
	line	39
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"E:\Study Material\XC8 PROJECTS\New WLC 1PH\WLC.C"
	line	39
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	41
	
l1764:	
;WLC.C: 41: ADCON1 = 0x06;
	movlw	(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	42
	
l1766:	
;WLC.C: 42: TRISA = 0x00;
	clrf	(133)^080h	;volatile
	line	43
	
l1768:	
;WLC.C: 43: TRISB = 0x01;
	movlw	(01h)
	movwf	(134)^080h	;volatile
	line	44
;WLC.C: 44: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	46
	
l1770:	
;WLC.C: 46: OPTION_REG = 0xC0;
	movlw	(0C0h)
	movwf	(129)^080h	;volatile
	line	47
	
l1772:	
;WLC.C: 47: INTCON = 0x90;
	movlw	(090h)
	movwf	(11)	;volatile
	line	49
;WLC.C: 49: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	50
;WLC.C: 50: PORTA = 0x00;
	clrf	(5)	;volatile
	line	51
;WLC.C: 51: PORTC = 0x00;
	clrf	(7)	;volatile
	line	53
;WLC.C: 53: for(count = 0; count <= 4; count++)
	clrf	(_count)
	
l1774:	
	movlw	(05h)
	subwf	(_count),w
	skipc
	goto	u1121
	goto	u1120
u1121:
	goto	l136
u1120:
	goto	l1786
	
l1776:	
	goto	l1786
	line	54
	
l136:	
	line	55
;WLC.C: 54: {
;WLC.C: 55: RC4 = 1;
	bsf	(60/8),(60)&7	;volatile
	line	56
	
l1778:	
;WLC.C: 56: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u1287:
	decfsz	((??_main+0)+0),f
	goto	u1287
	decfsz	((??_main+0)+0+1),f
	goto	u1287
	decfsz	((??_main+0)+0+2),f
	goto	u1287
	nop2
opt asmopt_on

	line	57
	
l1780:	
;WLC.C: 57: RC4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7	;volatile
	line	58
;WLC.C: 58: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u1297:
	decfsz	((??_main+0)+0),f
	goto	u1297
	decfsz	((??_main+0)+0+1),f
	goto	u1297
	decfsz	((??_main+0)+0+2),f
	goto	u1297
	nop2
opt asmopt_on

	line	53
	
l1782:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_count),f
	
l1784:	
	movlw	(05h)
	subwf	(_count),w
	skipc
	goto	u1131
	goto	u1130
u1131:
	goto	l136
u1130:
	goto	l1786
	
l137:	
	line	60
	
l1786:	
;WLC.C: 59: }
;WLC.C: 60: count = 0;
	clrf	(_count)
	line	63
	
l1788:	
;WLC.C: 63: LCDInit(0B00000000);
	movlw	(0)
	fcall	_LCDInit
	line	66
	
l1790:	
;WLC.C: 66: (LCDByte(0b00000001,0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDByte@isdata)
	movlw	(01h)
	fcall	_LCDByte
	goto	l1792
	line	68
;WLC.C: 68: while(1)
	
l138:	
	line	70
	
l1792:	
;WLC.C: 69: {
;WLC.C: 70: txr_not_received ++;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_txr_not_received),f
	line	72
	
l1794:	
;WLC.C: 72: if(txr_not_received > 13)
	movlw	(0Eh)
	subwf	(_txr_not_received),w
	skipc
	goto	u1141
	goto	u1140
u1141:
	goto	l139
u1140:
	line	73
	
l1796:	
;WLC.C: 73: txr_not_received = 14;
	movlw	(0Eh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_txr_not_received)
	
l139:	
	line	75
;WLC.C: 75: if( motor_flag == 1 )
	movf	(_motor_flag),w
	xorlw	01h
	skipz
	goto	u1151
	goto	u1150
u1151:
	goto	l1806
u1150:
	line	77
	
l1798:	
;WLC.C: 76: {
;WLC.C: 77: if( uu == 0 && ll == 1 )
	movf	((_uu+1)),w
	iorwf	((_uu)),w
	skipz
	goto	u1161
	goto	u1160
u1161:
	goto	l1804
u1160:
	
l1800:	
	movlw	01h
	xorwf	(_ll),w
	iorwf	(_ll+1),w
	skipz
	goto	u1171
	goto	u1170
u1171:
	goto	l1804
u1170:
	line	79
	
l1802:	
;WLC.C: 78: {
;WLC.C: 79: level_check = 1;
	clrf	(_level_check)
	incf	(_level_check),f
	line	80
;WLC.C: 80: }
	goto	l1818
	line	81
	
l141:	
	line	83
	
l1804:	
;WLC.C: 81: else
;WLC.C: 82: {
;WLC.C: 83: level_check = 0;
	clrf	(_level_check)
	goto	l1818
	line	84
	
l142:	
	line	85
;WLC.C: 84: }
;WLC.C: 85: }
	goto	l1818
	line	87
	
l140:	
	line	89
	
l1806:	
;WLC.C: 87: else
;WLC.C: 88: {
;WLC.C: 89: if( (uu == 0 && ul == 0) && (lu == 1 && ll == 1) )
	movf	((_uu+1)),w
	iorwf	((_uu)),w
	skipz
	goto	u1181
	goto	u1180
u1181:
	goto	l1816
u1180:
	
l1808:	
	movf	((_ul+1)),w
	iorwf	((_ul)),w
	skipz
	goto	u1191
	goto	u1190
u1191:
	goto	l1816
u1190:
	
l1810:	
	movlw	01h
	xorwf	(_lu),w
	iorwf	(_lu+1),w
	skipz
	goto	u1201
	goto	u1200
u1201:
	goto	l1816
u1200:
	
l1812:	
	movlw	01h
	xorwf	(_ll),w
	iorwf	(_ll+1),w
	skipz
	goto	u1211
	goto	u1210
u1211:
	goto	l1816
u1210:
	line	91
	
l1814:	
;WLC.C: 90: {
;WLC.C: 91: level_check = 1;
	clrf	(_level_check)
	incf	(_level_check),f
	line	92
;WLC.C: 92: }
	goto	l1818
	line	93
	
l144:	
	line	95
	
l1816:	
;WLC.C: 93: else
;WLC.C: 94: {
;WLC.C: 95: level_check = 0;
	clrf	(_level_check)
	goto	l1818
	line	96
	
l145:	
	goto	l1818
	line	97
	
l143:	
	line	99
	
l1818:	
;WLC.C: 96: }
;WLC.C: 97: }
;WLC.C: 99: if( level_check == 1 && txr_not_received <= 13 )
	movf	(_level_check),w
	xorlw	01h
	skipz
	goto	u1221
	goto	u1220
u1221:
	goto	l1826
u1220:
	
l1820:	
	movlw	(0Eh)
	subwf	(_txr_not_received),w
	skipnc
	goto	u1231
	goto	u1230
u1231:
	goto	l1826
u1230:
	line	102
	
l1822:	
;WLC.C: 100: {
;WLC.C: 102: if( lp_flag == 0 )
	movf	(_lp_flag),f
	skipz
	goto	u1241
	goto	u1240
u1241:
	goto	l1834
u1240:
	line	104
	
l1824:	
;WLC.C: 103: {
;WLC.C: 104: RB4 = 1;
	bsf	(52/8),(52)&7	;volatile
	line	105
;WLC.C: 105: lp_flag = 1;
	clrf	(_lp_flag)
	incf	(_lp_flag),f
	line	106
;WLC.C: 106: motor_flag = 1;
	clrf	(_motor_flag)
	incf	(_motor_flag),f
	line	107
;WLC.C: 107: RC4 = 1;
	bsf	(60/8),(60)&7	;volatile
	goto	l1834
	line	108
	
l147:	
	line	109
;WLC.C: 108: }
;WLC.C: 109: }
	goto	l1834
	line	111
	
l146:	
	line	114
	
l1826:	
;WLC.C: 111: else
;WLC.C: 112: {
;WLC.C: 114: if( lp_flag == 1 )
	movf	(_lp_flag),w
	xorlw	01h
	skipz
	goto	u1251
	goto	u1250
u1251:
	goto	l1834
u1250:
	line	116
	
l1828:	
;WLC.C: 115: {
;WLC.C: 116: RB4 = 0;
	bcf	(52/8),(52)&7	;volatile
	line	117
	
l1830:	
;WLC.C: 117: lp_flag = 0;
	clrf	(_lp_flag)
	line	118
;WLC.C: 118: motor_flag = 0;
	clrf	(_motor_flag)
	line	119
	
l1832:	
;WLC.C: 119: RC4 = 0;
	bcf	(60/8),(60)&7	;volatile
	goto	l1834
	line	120
	
l149:	
	goto	l1834
	line	121
	
l148:	
	line	150
	
l1834:	
;WLC.C: 120: }
;WLC.C: 121: }
;WLC.C: 150: (LCDByte(0b00000001,0));
	clrf	(LCDByte@isdata)
	movlw	(01h)
	fcall	_LCDByte
	line	151
	
l1836:	
;WLC.C: 151: _delay(1000000);
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u1307:
	decfsz	((??_main+0)+0),f
	goto	u1307
	decfsz	((??_main+0)+0+1),f
	goto	u1307
	decfsz	((??_main+0)+0+2),f
	goto	u1307
	nop2
opt asmopt_on

	line	153
	
l1838:	
;WLC.C: 153: LCDGotoXY(1,0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDGotoXY@y)
	movlw	(01h)
	fcall	_LCDGotoXY
	line	154
	
l1840:	
;WLC.C: 154: LCDWriteString("**UPPER TANK**");
	movlw	((STR_1)-__stringbase)&0ffh
	fcall	_LCDWriteString
	line	155
	
l1842:	
;WLC.C: 155: display_upper_tank();
	fcall	_display_upper_tank
	line	156
	
l1844:	
;WLC.C: 156: _delay(5000000);
	opt asmopt_off
movlw  26
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	94
movwf	((??_main+0)+0+1),f
	movlw	134
movwf	((??_main+0)+0),f
u1317:
	decfsz	((??_main+0)+0),f
	goto	u1317
	decfsz	((??_main+0)+0+1),f
	goto	u1317
	decfsz	((??_main+0)+0+2),f
	goto	u1317
	nop
opt asmopt_on

	line	158
	
l1846:	
;WLC.C: 158: (LCDByte(0b00000001,0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDByte@isdata)
	movlw	(01h)
	fcall	_LCDByte
	line	159
	
l1848:	
;WLC.C: 159: _delay(1000000);
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u1327:
	decfsz	((??_main+0)+0),f
	goto	u1327
	decfsz	((??_main+0)+0+1),f
	goto	u1327
	decfsz	((??_main+0)+0+2),f
	goto	u1327
	nop2
opt asmopt_on

	line	161
	
l1850:	
;WLC.C: 161: LCDGotoXY(1,0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDGotoXY@y)
	movlw	(01h)
	fcall	_LCDGotoXY
	line	162
	
l1852:	
;WLC.C: 162: LCDWriteString("**LOWER TANK**");
	movlw	((STR_2)-__stringbase)&0ffh
	fcall	_LCDWriteString
	line	163
	
l1854:	
;WLC.C: 163: display_lower_tank();
	fcall	_display_lower_tank
	line	164
	
l1856:	
;WLC.C: 164: _delay(5000000);
	opt asmopt_off
movlw  26
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	94
movwf	((??_main+0)+0+1),f
	movlw	134
movwf	((??_main+0)+0),f
u1337:
	decfsz	((??_main+0)+0),f
	goto	u1337
	decfsz	((??_main+0)+0+1),f
	goto	u1337
	decfsz	((??_main+0)+0+2),f
	goto	u1337
	nop
opt asmopt_on

	line	166
	
l1858:	
;WLC.C: 166: (LCDByte(0b00000001,0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDByte@isdata)
	movlw	(01h)
	fcall	_LCDByte
	line	167
	
l1860:	
;WLC.C: 167: _delay(1000000);
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u1347:
	decfsz	((??_main+0)+0),f
	goto	u1347
	decfsz	((??_main+0)+0+1),f
	goto	u1347
	decfsz	((??_main+0)+0+2),f
	goto	u1347
	nop2
opt asmopt_on

	line	169
	
l1862:	
;WLC.C: 169: LCDGotoXY(3,0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDGotoXY@y)
	movlw	(03h)
	fcall	_LCDGotoXY
	line	170
	
l1864:	
;WLC.C: 170: LCDWriteString("**MOTOR**");
	movlw	((STR_3)-__stringbase)&0ffh
	fcall	_LCDWriteString
	line	171
	
l1866:	
;WLC.C: 171: LCDGotoXY(6,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDGotoXY@y)
	incf	(LCDGotoXY@y),f
	movlw	(06h)
	fcall	_LCDGotoXY
	line	172
	
l1868:	
;WLC.C: 172: if(motor_flag == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_motor_flag),w
	xorlw	01h
	skipz
	goto	u1261
	goto	u1260
u1261:
	goto	l1872
u1260:
	line	173
	
l1870:	
;WLC.C: 173: LCDWriteString("ON");
	movlw	((STR_4)-__stringbase)&0ffh
	fcall	_LCDWriteString
	goto	l1874
	line	174
	
l150:	
	line	175
	
l1872:	
;WLC.C: 174: else
;WLC.C: 175: LCDWriteString("OFF");
	movlw	((STR_5)-__stringbase)&0ffh
	fcall	_LCDWriteString
	goto	l1874
	
l151:	
	line	176
	
l1874:	
;WLC.C: 176: _delay(5000000);
	opt asmopt_off
movlw  26
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	94
movwf	((??_main+0)+0+1),f
	movlw	134
movwf	((??_main+0)+0),f
u1357:
	decfsz	((??_main+0)+0),f
	goto	u1357
	decfsz	((??_main+0)+0+1),f
	goto	u1357
	decfsz	((??_main+0)+0+2),f
	goto	u1357
	nop
opt asmopt_on

	line	178
	
l1876:	
;WLC.C: 178: (LCDByte(0b00000001,0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDByte@isdata)
	movlw	(01h)
	fcall	_LCDByte
	line	179
	
l1878:	
;WLC.C: 179: _delay(1000000);
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u1367:
	decfsz	((??_main+0)+0),f
	goto	u1367
	decfsz	((??_main+0)+0+1),f
	goto	u1367
	decfsz	((??_main+0)+0+2),f
	goto	u1367
	nop2
opt asmopt_on

	line	181
	
l1880:	
;WLC.C: 181: LCDGotoXY(2,0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDGotoXY@y)
	movlw	(02h)
	fcall	_LCDGotoXY
	line	182
	
l1882:	
;WLC.C: 182: LCDWriteString("COMMUNICATION");
	movlw	((STR_6)-__stringbase)&0ffh
	fcall	_LCDWriteString
	line	183
	
l1884:	
;WLC.C: 183: LCDGotoXY(6,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDGotoXY@y)
	incf	(LCDGotoXY@y),f
	movlw	(06h)
	fcall	_LCDGotoXY
	line	184
	
l1886:	
;WLC.C: 184: if(txr_not_received <= 13)
	movlw	(0Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_txr_not_received),w
	skipnc
	goto	u1271
	goto	u1270
u1271:
	goto	l1890
u1270:
	line	185
	
l1888:	
;WLC.C: 185: LCDWriteString("ON");
	movlw	((STR_7)-__stringbase)&0ffh
	fcall	_LCDWriteString
	goto	l1892
	line	186
	
l152:	
	line	187
	
l1890:	
;WLC.C: 186: else
;WLC.C: 187: LCDWriteString("OFF");
	movlw	((STR_8)-__stringbase)&0ffh
	fcall	_LCDWriteString
	goto	l1892
	
l153:	
	line	188
	
l1892:	
;WLC.C: 188: _delay(5000000);
	opt asmopt_off
movlw  26
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	94
movwf	((??_main+0)+0+1),f
	movlw	134
movwf	((??_main+0)+0),f
u1377:
	decfsz	((??_main+0)+0),f
	goto	u1377
	decfsz	((??_main+0)+0+1),f
	goto	u1377
	decfsz	((??_main+0)+0+2),f
	goto	u1377
	nop
opt asmopt_on

	goto	l1792
	line	189
	
l154:	
	line	68
	goto	l1792
	
l155:	
	line	190
	
l156:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_display_upper_tank

;; *************** function _display_upper_tank *****************
;; Defined at:
;;		line 289 in file "E:\Study Material\XC8 PROJECTS\New WLC 1PH\WLC.C"
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
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_LCDGotoXY
;;		_LCDWriteString
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	289
global __ptext1
__ptext1:	;psect for function _display_upper_tank
psect	text1
	file	"E:\Study Material\XC8 PROJECTS\New WLC 1PH\WLC.C"
	line	289
	global	__size_of_display_upper_tank
	__size_of_display_upper_tank	equ	__end_of_display_upper_tank-_display_upper_tank
	
_display_upper_tank:	
;incstack = 0
	opt	stack 3
; Regs used in _display_upper_tank: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	291
	
l1698:	
;WLC.C: 291: LCDGotoXY(0,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDGotoXY@y)
	incf	(LCDGotoXY@y),f
	movlw	(0)
	fcall	_LCDGotoXY
	line	292
	
l1700:	
;WLC.C: 292: if(uu == 1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_uu),w
	iorwf	(_uu+1),w
	skipz
	goto	u1021
	goto	u1020
u1021:
	goto	l1704
u1020:
	line	293
	
l1702:	
;WLC.C: 293: LCDWriteString("Lev.1 %0");
	movlw	((STR_9)-__stringbase)&0ffh
	fcall	_LCDWriteString
	goto	l175
	line	294
	
l174:	
	line	295
	
l1704:	
;WLC.C: 294: else
;WLC.C: 295: LCDWriteString("Lev.1 %1");
	movlw	((STR_10)-__stringbase)&0ffh
	fcall	_LCDWriteString
	
l175:	
	line	296
;WLC.C: 296: LCDGotoXY(9,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDGotoXY@y)
	incf	(LCDGotoXY@y),f
	movlw	(09h)
	fcall	_LCDGotoXY
	line	297
	
l1706:	
;WLC.C: 297: if(ul == 1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_ul),w
	iorwf	(_ul+1),w
	skipz
	goto	u1031
	goto	u1030
u1031:
	goto	l1710
u1030:
	line	298
	
l1708:	
;WLC.C: 298: LCDWriteString("Lev.2 %0");
	movlw	((STR_11)-__stringbase)&0ffh
	fcall	_LCDWriteString
	goto	l178
	line	299
	
l176:	
	line	300
	
l1710:	
;WLC.C: 299: else
;WLC.C: 300: LCDWriteString("Lev.2 %1");
	movlw	((STR_12)-__stringbase)&0ffh
	fcall	_LCDWriteString
	goto	l178
	
l177:	
	line	301
	
l178:	
	return
	opt stack 0
GLOBAL	__end_of_display_upper_tank
	__end_of_display_upper_tank:
	signat	_display_upper_tank,88
	global	_display_lower_tank

;; *************** function _display_lower_tank *****************
;; Defined at:
;;		line 303 in file "E:\Study Material\XC8 PROJECTS\New WLC 1PH\WLC.C"
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
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_LCDGotoXY
;;		_LCDWriteString
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	303
global __ptext2
__ptext2:	;psect for function _display_lower_tank
psect	text2
	file	"E:\Study Material\XC8 PROJECTS\New WLC 1PH\WLC.C"
	line	303
	global	__size_of_display_lower_tank
	__size_of_display_lower_tank	equ	__end_of_display_lower_tank-_display_lower_tank
	
_display_lower_tank:	
;incstack = 0
	opt	stack 3
; Regs used in _display_lower_tank: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	305
	
l1712:	
;WLC.C: 305: LCDGotoXY(0,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDGotoXY@y)
	incf	(LCDGotoXY@y),f
	movlw	(0)
	fcall	_LCDGotoXY
	line	306
	
l1714:	
;WLC.C: 306: if(lu == 1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_lu),w
	iorwf	(_lu+1),w
	skipz
	goto	u1041
	goto	u1040
u1041:
	goto	l1718
u1040:
	line	307
	
l1716:	
;WLC.C: 307: LCDWriteString("Lev.1 %0");
	movlw	((STR_13)-__stringbase)&0ffh
	fcall	_LCDWriteString
	goto	l182
	line	308
	
l181:	
	line	309
	
l1718:	
;WLC.C: 308: else
;WLC.C: 309: LCDWriteString("Lev.1 %1");
	movlw	((STR_14)-__stringbase)&0ffh
	fcall	_LCDWriteString
	
l182:	
	line	310
;WLC.C: 310: LCDGotoXY(9,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDGotoXY@y)
	incf	(LCDGotoXY@y),f
	movlw	(09h)
	fcall	_LCDGotoXY
	line	311
	
l1720:	
;WLC.C: 311: if(ll == 1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_ll),w
	iorwf	(_ll+1),w
	skipz
	goto	u1051
	goto	u1050
u1051:
	goto	l1724
u1050:
	line	312
	
l1722:	
;WLC.C: 312: LCDWriteString("Lev.2 %0");
	movlw	((STR_15)-__stringbase)&0ffh
	fcall	_LCDWriteString
	goto	l185
	line	313
	
l183:	
	line	314
	
l1724:	
;WLC.C: 313: else
;WLC.C: 314: LCDWriteString("Lev.2 %1");
	movlw	((STR_16)-__stringbase)&0ffh
	fcall	_LCDWriteString
	goto	l185
	
l184:	
	line	315
	
l185:	
	return
	opt stack 0
GLOBAL	__end_of_display_lower_tank
	__end_of_display_lower_tank:
	signat	_display_lower_tank,88
	global	_LCDWriteString

;; *************** function _LCDWriteString *****************
;; Defined at:
;;		line 252 in file "E:\Study Material\XC8 PROJECTS\New WLC 1PH\lcd_hd44780_pic16.c"
;; Parameters:    Size  Location     Type
;;  msg             1    wreg     PTR const unsigned char 
;;		 -> STR_16(9), STR_15(9), STR_14(9), STR_13(9), 
;;		 -> STR_12(9), STR_11(9), STR_10(9), STR_9(9), 
;;		 -> STR_8(4), STR_7(3), STR_6(14), STR_5(4), 
;;		 -> STR_4(3), STR_3(10), STR_2(15), STR_1(15), 
;; Auto vars:     Size  Location     Type
;;  msg             1   14[BANK0 ] PTR const unsigned char 
;;		 -> STR_16(9), STR_15(9), STR_14(9), STR_13(9), 
;;		 -> STR_12(9), STR_11(9), STR_10(9), STR_9(9), 
;;		 -> STR_8(4), STR_7(3), STR_6(14), STR_5(4), 
;;		 -> STR_4(3), STR_3(10), STR_2(15), STR_1(15), 
;;  cc              1   13[BANK0 ] char 
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
;;      Temps:          0       1       0
;;      Totals:         0       3       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LCDByte
;; This function is called by:
;;		_main
;;		_display_upper_tank
;;		_display_lower_tank
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\New WLC 1PH\lcd_hd44780_pic16.c"
	line	252
global __ptext3
__ptext3:	;psect for function _LCDWriteString
psect	text3
	file	"E:\Study Material\XC8 PROJECTS\New WLC 1PH\lcd_hd44780_pic16.c"
	line	252
	global	__size_of_LCDWriteString
	__size_of_LCDWriteString	equ	__end_of_LCDWriteString-_LCDWriteString
	
_LCDWriteString:	
;incstack = 0
	opt	stack 3
; Regs used in _LCDWriteString: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;LCDWriteString@msg stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCDWriteString@msg)
	line	282
	
l1606:	
;lcd_hd44780_pic16.c: 282: while(*msg!='\0')
	goto	l1628
	
l37:	
	line	285
	
l1608:	
;lcd_hd44780_pic16.c: 283: {
;lcd_hd44780_pic16.c: 285: if(*msg=='%')
	movf	(LCDWriteString@msg),w
	movwf	fsr0
	fcall	stringdir
	xorlw	025h
	skipz
	goto	u951
	goto	u950
u951:
	goto	l1624
u950:
	line	287
	
l1610:	
;lcd_hd44780_pic16.c: 286: {
;lcd_hd44780_pic16.c: 287: msg++;
	movlw	(01h)
	movwf	(??_LCDWriteString+0)+0
	movf	(??_LCDWriteString+0)+0,w
	addwf	(LCDWriteString@msg),f
	line	288
	
l1612:	
;lcd_hd44780_pic16.c: 288: int8_t cc=*msg-'0';
	movf	(LCDWriteString@msg),w
	movwf	fsr0
	fcall	stringdir
	addlw	-48
	movwf	(??_LCDWriteString+0)+0
	movf	(??_LCDWriteString+0)+0,w
	movwf	(LCDWriteString@cc)
	line	290
	
l1614:	
;lcd_hd44780_pic16.c: 290: if(cc>=0 && cc<=7)
	btfsc	(LCDWriteString@cc),7
	goto	u961
	goto	u960
u961:
	goto	l1620
u960:
	
l1616:	
	movf	(LCDWriteString@cc),w
	xorlw	80h
	addlw	-((08h)^80h)
	skipnc
	goto	u971
	goto	u970
u971:
	goto	l1620
u970:
	line	292
	
l1618:	
;lcd_hd44780_pic16.c: 291: {
;lcd_hd44780_pic16.c: 292: (LCDByte(cc,1));
	clrf	(LCDByte@isdata)
	incf	(LCDByte@isdata),f
	movf	(LCDWriteString@cc),w
	fcall	_LCDByte
	line	293
;lcd_hd44780_pic16.c: 293: }
	goto	l1626
	line	294
	
l39:	
	line	296
	
l1620:	
;lcd_hd44780_pic16.c: 294: else
;lcd_hd44780_pic16.c: 295: {
;lcd_hd44780_pic16.c: 296: (LCDByte('%',1));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDByte@isdata)
	incf	(LCDByte@isdata),f
	movlw	(025h)
	fcall	_LCDByte
	line	297
	
l1622:	
;lcd_hd44780_pic16.c: 297: (LCDByte(*msg,1));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDByte@isdata)
	incf	(LCDByte@isdata),f
	movf	(LCDWriteString@msg),w
	movwf	fsr0
	fcall	stringdir
	fcall	_LCDByte
	goto	l1626
	line	298
	
l40:	
	line	299
;lcd_hd44780_pic16.c: 298: }
;lcd_hd44780_pic16.c: 299: }
	goto	l1626
	line	300
	
l38:	
	line	302
	
l1624:	
;lcd_hd44780_pic16.c: 300: else
;lcd_hd44780_pic16.c: 301: {
;lcd_hd44780_pic16.c: 302: (LCDByte(*msg,1));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDByte@isdata)
	incf	(LCDByte@isdata),f
	movf	(LCDWriteString@msg),w
	movwf	fsr0
	fcall	stringdir
	fcall	_LCDByte
	goto	l1626
	line	303
	
l41:	
	line	304
	
l1626:	
;lcd_hd44780_pic16.c: 303: }
;lcd_hd44780_pic16.c: 304: msg++;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCDWriteString+0)+0
	movf	(??_LCDWriteString+0)+0,w
	addwf	(LCDWriteString@msg),f
	goto	l1628
	line	305
	
l36:	
	line	282
	
l1628:	
	movf	(LCDWriteString@msg),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u981
	goto	u980
u981:
	goto	l1608
u980:
	goto	l43
	
l42:	
	line	306
	
l43:	
	return
	opt stack 0
GLOBAL	__end_of_LCDWriteString
	__end_of_LCDWriteString:
	signat	_LCDWriteString,4216
	global	_LCDGotoXY

;; *************** function _LCDGotoXY *****************
;; Defined at:
;;		line 353 in file "E:\Study Material\XC8 PROJECTS\New WLC 1PH\lcd_hd44780_pic16.c"
;; Parameters:    Size  Location     Type
;;  x               1    wreg     unsigned char 
;;  y               1   12[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  x               1   14[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       1       0
;;      Locals:         0       1       0
;;      Temps:          0       1       0
;;      Totals:         0       3       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LCDByte
;; This function is called by:
;;		_main
;;		_display_upper_tank
;;		_display_lower_tank
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	353
global __ptext4
__ptext4:	;psect for function _LCDGotoXY
psect	text4
	file	"E:\Study Material\XC8 PROJECTS\New WLC 1PH\lcd_hd44780_pic16.c"
	line	353
	global	__size_of_LCDGotoXY
	__size_of_LCDGotoXY	equ	__end_of_LCDGotoXY-_LCDGotoXY
	
_LCDGotoXY:	
;incstack = 0
	opt	stack 3
; Regs used in _LCDGotoXY: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;LCDGotoXY@x stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCDGotoXY@x)
	line	355
	
l1630:	
;lcd_hd44780_pic16.c: 355: if(x>=20) return;
	movlw	(014h)
	subwf	(LCDGotoXY@x),w
	skipc
	goto	u991
	goto	u990
u991:
	goto	l1640
u990:
	goto	l63
	
l1632:	
	goto	l63
	
l62:	
	line	359
;lcd_hd44780_pic16.c: 359: switch(y)
	goto	l1640
	line	361
;lcd_hd44780_pic16.c: 360: {
;lcd_hd44780_pic16.c: 361: case 0:
	
l65:	
	line	362
;lcd_hd44780_pic16.c: 362: break;
	goto	l66
	line	363
;lcd_hd44780_pic16.c: 363: case 1:
	
l67:	
	line	364
;lcd_hd44780_pic16.c: 364: x|=0b01000000;
	bsf	(LCDGotoXY@x)+(6/8),(6)&7
	line	365
;lcd_hd44780_pic16.c: 365: break;
	goto	l66
	line	366
;lcd_hd44780_pic16.c: 366: case 2:
	
l68:	
	line	367
	
l1634:	
;lcd_hd44780_pic16.c: 367: x+=0x14;
	movlw	(014h)
	movwf	(??_LCDGotoXY+0)+0
	movf	(??_LCDGotoXY+0)+0,w
	addwf	(LCDGotoXY@x),f
	line	368
;lcd_hd44780_pic16.c: 368: break;
	goto	l66
	line	369
;lcd_hd44780_pic16.c: 369: case 3:
	
l69:	
	line	370
	
l1636:	
;lcd_hd44780_pic16.c: 370: x+=0x54;
	movlw	(054h)
	movwf	(??_LCDGotoXY+0)+0
	movf	(??_LCDGotoXY+0)+0,w
	addwf	(LCDGotoXY@x),f
	line	371
;lcd_hd44780_pic16.c: 371: break;
	goto	l66
	line	372
	
l1638:	
;lcd_hd44780_pic16.c: 372: }
	goto	l66
	line	359
	
l64:	
	
l1640:	
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
movlw high(S1914)
movwf pclath
	movlw low(S1914)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
S1914:
	ljmp	l66
	ljmp	l67
	ljmp	l1634
	ljmp	l1636
psect	text4

	line	372
	
l66:	
	line	394
;lcd_hd44780_pic16.c: 394: x|=0b10000000;
	bsf	(LCDGotoXY@x)+(7/8),(7)&7
	line	395
	
l1642:	
;lcd_hd44780_pic16.c: 395: (LCDByte(x,0));
	clrf	(LCDByte@isdata)
	movf	(LCDGotoXY@x),w
	fcall	_LCDByte
	line	396
	
l63:	
	return
	opt stack 0
GLOBAL	__end_of_LCDGotoXY
	__end_of_LCDGotoXY:
	signat	_LCDGotoXY,8312
	global	_LCDInit

;; *************** function _LCDInit *****************
;; Defined at:
;;		line 194 in file "E:\Study Material\XC8 PROJECTS\New WLC 1PH\lcd_hd44780_pic16.c"
;; Parameters:    Size  Location     Type
;;  style           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  style           1   14[BANK0 ] unsigned char 
;;  __i             1   15[BANK0 ] unsigned char 
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
;;      Temps:          0       2       0
;;      Totals:         0       4       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LCDBusyLoop
;;		_LCDByte
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	194
global __ptext5
__ptext5:	;psect for function _LCDInit
psect	text5
	file	"E:\Study Material\XC8 PROJECTS\New WLC 1PH\lcd_hd44780_pic16.c"
	line	194
	global	__size_of_LCDInit
	__size_of_LCDInit	equ	__end_of_LCDInit-_LCDInit
	
_LCDInit:	
;incstack = 0
	opt	stack 4
; Regs used in _LCDInit: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;LCDInit@style stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCDInit@style)
	line	210
	
l1648:	
;lcd_hd44780_pic16.c: 210: _delay((unsigned long)((30)*(4000000/4000.0)));
	opt asmopt_off
movlw	39
movwf	((??_LCDInit+0)+0+1),f
	movlw	245
movwf	((??_LCDInit+0)+0),f
u1387:
	decfsz	((??_LCDInit+0)+0),f
	goto	u1387
	decfsz	((??_LCDInit+0)+0+1),f
	goto	u1387
opt asmopt_on

	line	213
	
l1650:	
;lcd_hd44780_pic16.c: 213: TRISC&=(~(0x0F<<0));
	movlw	(0F0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCDInit+0)+0
	movf	(??_LCDInit+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(135)^080h,f	;volatile
	line	215
	
l1652:	
;lcd_hd44780_pic16.c: 215: TRISCbits.TRISC5=0;
	bcf	(135)^080h,5	;volatile
	line	216
	
l1654:	
;lcd_hd44780_pic16.c: 216: TRISCbits.TRISC7=0;
	bcf	(135)^080h,7	;volatile
	line	217
	
l1656:	
;lcd_hd44780_pic16.c: 217: TRISCbits.TRISC6=0;
	bcf	(135)^080h,6	;volatile
	line	219
	
l1658:	
;lcd_hd44780_pic16.c: 219: PORTC&=(~(0x0F<<0));
	movlw	(0F0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCDInit+0)+0
	movf	(??_LCDInit+0)+0,w
	andwf	(7),f	;volatile
	line	221
	
l1660:	
;lcd_hd44780_pic16.c: 221: (RC5=0);
	bcf	(61/8),(61)&7	;volatile
	line	222
	
l1662:	
;lcd_hd44780_pic16.c: 222: (RC6=0);
	bcf	(62/8),(62)&7	;volatile
	line	223
	
l1664:	
;lcd_hd44780_pic16.c: 223: (RC7=0);
	bcf	(63/8),(63)&7	;volatile
	line	226
	
l1666:	
;lcd_hd44780_pic16.c: 226: _delay((unsigned long)((0.5)*(4000000/4000000.0)));
	
	line	228
	
l1668:	
;lcd_hd44780_pic16.c: 228: (RC5=1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7	;volatile
	line	229
	
l1670:	
;lcd_hd44780_pic16.c: 229: PORTC|=((0b00000010)<<0);
	bsf	(7)+(1/8),(1)&7	;volatile
	line	230
	
l1672:	
;lcd_hd44780_pic16.c: 230: _delay((unsigned long)((1)*(4000000/4000000.0)));
		opt asmopt_off
	nop
	opt asmopt_on

	line	231
	
l1674:	
;lcd_hd44780_pic16.c: 231: (RC5=0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7	;volatile
	line	232
	
l1676:	
;lcd_hd44780_pic16.c: 232: _delay((unsigned long)((1)*(4000000/4000000.0)));
		opt asmopt_off
	nop
	opt asmopt_on

	line	235
	
l1678:	
;lcd_hd44780_pic16.c: 235: LCDBusyLoop();
	fcall	_LCDBusyLoop
	line	240
	
l1680:	
;lcd_hd44780_pic16.c: 240: (LCDByte(0b00101000,0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDByte@isdata)
	movlw	(028h)
	fcall	_LCDByte
	line	241
	
l1682:	
;lcd_hd44780_pic16.c: 241: (LCDByte(0b00001100|style,0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDByte@isdata)
	movf	(LCDInit@style),w
	iorlw	0Ch
	fcall	_LCDByte
	line	244
	
l1684:	
;lcd_hd44780_pic16.c: 244: (LCDByte(0b01000000,0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDByte@isdata)
	movlw	(040h)
	fcall	_LCDByte
	line	247
	
l1686:	
;lcd_hd44780_pic16.c: 246: uint8_t __i;
;lcd_hd44780_pic16.c: 247: for(__i=0;__i<sizeof(__cgram);__i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDInit@__i)
	
l1688:	
	movlw	(010h)
	subwf	(LCDInit@__i),w
	skipc
	goto	u1001
	goto	u1000
u1001:
	goto	l1692
u1000:
	goto	l33
	
l1690:	
	goto	l33
	line	248
	
l31:	
	
l1692:	
;lcd_hd44780_pic16.c: 248: (LCDByte(__cgram[__i],1));
	clrf	(LCDByte@isdata)
	incf	(LCDByte@isdata),f
	movf	(LCDInit@__i),w
	addlw	___cgram&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_LCDByte
	line	247
	
l1694:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCDInit+0)+0
	movf	(??_LCDInit+0)+0,w
	addwf	(LCDInit@__i),f
	
l1696:	
	movlw	(010h)
	subwf	(LCDInit@__i),w
	skipc
	goto	u1011
	goto	u1010
u1011:
	goto	l1692
u1010:
	goto	l33
	
l32:	
	line	251
	
l33:	
	return
	opt stack 0
GLOBAL	__end_of_LCDInit
	__end_of_LCDInit:
	signat	_LCDInit,4216
	global	_LCDByte

;; *************** function _LCDByte *****************
;; Defined at:
;;		line 81 in file "E:\Study Material\XC8 PROJECTS\New WLC 1PH\lcd_hd44780_pic16.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;;  isdata          1    5[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   10[BANK0 ] unsigned char 
;;  temp            1   11[BANK0 ] unsigned char 
;;  ln              1    9[BANK0 ] unsigned char 
;;  hn              1    8[BANK0 ] unsigned char 
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
;;      Locals:         0       4       0
;;      Temps:          0       2       0
;;      Totals:         0       7       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_LCDBusyLoop
;; This function is called by:
;;		_LCDInit
;;		_LCDWriteString
;;		_LCDGotoXY
;;		_main
;;		_LCDWriteInt
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	line	81
global __ptext6
__ptext6:	;psect for function _LCDByte
psect	text6
	file	"E:\Study Material\XC8 PROJECTS\New WLC 1PH\lcd_hd44780_pic16.c"
	line	81
	global	__size_of_LCDByte
	__size_of_LCDByte	equ	__end_of_LCDByte-_LCDByte
	
_LCDByte:	
;incstack = 0
	opt	stack 3
; Regs used in _LCDByte: [wreg+status,2+status,0+pclath+cstack]
;LCDByte@c stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCDByte@c)
	line	93
	
l1576:	
;lcd_hd44780_pic16.c: 90: uint8_t hn,ln;
;lcd_hd44780_pic16.c: 91: uint8_t temp;
;lcd_hd44780_pic16.c: 93: hn=c>>4;
	movf	(LCDByte@c),w
	movwf	(??_LCDByte+0)+0
	movlw	04h
u935:
	clrc
	rrf	(??_LCDByte+0)+0,f
	addlw	-1
	skipz
	goto	u935
	movf	0+(??_LCDByte+0)+0,w
	movwf	(??_LCDByte+1)+0
	movf	(??_LCDByte+1)+0,w
	movwf	(LCDByte@hn)
	line	94
	
l1578:	
;lcd_hd44780_pic16.c: 94: ln=(c & 0x0F);
	movf	(LCDByte@c),w
	andlw	0Fh
	movwf	(??_LCDByte+0)+0
	movf	(??_LCDByte+0)+0,w
	movwf	(LCDByte@ln)
	line	96
	
l1580:	
;lcd_hd44780_pic16.c: 96: if(isdata==0)
	movf	(LCDByte@isdata),f
	skipz
	goto	u941
	goto	u940
u941:
	goto	l21
u940:
	line	97
	
l1582:	
;lcd_hd44780_pic16.c: 97: (RC7=0);
	bcf	(63/8),(63)&7	;volatile
	goto	l22
	line	98
	
l21:	
	line	99
;lcd_hd44780_pic16.c: 98: else
;lcd_hd44780_pic16.c: 99: (RC7=1);
	bsf	(63/8),(63)&7	;volatile
	
l22:	
	line	101
;lcd_hd44780_pic16.c: 101: _delay((unsigned long)((0.5)*(4000000/4000000.0)));
	
	line	103
;lcd_hd44780_pic16.c: 103: (RC5=1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7	;volatile
	line	107
	
l1584:	
;lcd_hd44780_pic16.c: 107: temp=(PORTC & (~(0X0F<<0)))|((hn<<0));
	movf	(7),w	;volatile
	andlw	0F0h
	iorwf	(LCDByte@hn),w
	movwf	(??_LCDByte+0)+0
	movf	(??_LCDByte+0)+0,w
	movwf	(LCDByte@temp)
	line	108
	
l1586:	
;lcd_hd44780_pic16.c: 108: PORTC=temp;
	movf	(LCDByte@temp),w
	movwf	(7)	;volatile
	line	110
	
l1588:	
;lcd_hd44780_pic16.c: 110: _delay((unsigned long)((1)*(4000000/4000000.0)));
		opt asmopt_off
	nop
	opt asmopt_on

	line	114
	
l1590:	
;lcd_hd44780_pic16.c: 114: (RC5=0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7	;volatile
	line	116
	
l1592:	
;lcd_hd44780_pic16.c: 116: _delay((unsigned long)((1)*(4000000/4000000.0)));
		opt asmopt_off
	nop
	opt asmopt_on

	line	119
	
l1594:	
;lcd_hd44780_pic16.c: 119: (RC5=1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7	;volatile
	line	121
	
l1596:	
;lcd_hd44780_pic16.c: 121: temp=(PORTC & (~(0X0F<<0)))|((ln<<0));
	movf	(7),w	;volatile
	andlw	0F0h
	iorwf	(LCDByte@ln),w
	movwf	(??_LCDByte+0)+0
	movf	(??_LCDByte+0)+0,w
	movwf	(LCDByte@temp)
	line	123
;lcd_hd44780_pic16.c: 123: PORTC=temp;
	movf	(LCDByte@temp),w
	movwf	(7)	;volatile
	line	125
	
l1598:	
;lcd_hd44780_pic16.c: 125: _delay((unsigned long)((1)*(4000000/4000000.0)));
		opt asmopt_off
	nop
	opt asmopt_on

	line	129
	
l1600:	
;lcd_hd44780_pic16.c: 129: (RC5=0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7	;volatile
	line	131
	
l1602:	
;lcd_hd44780_pic16.c: 131: _delay((unsigned long)((1)*(4000000/4000000.0)));
		opt asmopt_off
	nop
	opt asmopt_on

	line	133
	
l1604:	
;lcd_hd44780_pic16.c: 133: LCDBusyLoop();
	fcall	_LCDBusyLoop
	line	134
	
l23:	
	return
	opt stack 0
GLOBAL	__end_of_LCDByte
	__end_of_LCDByte:
	signat	_LCDByte,8312
	global	_LCDBusyLoop

;; *************** function _LCDBusyLoop *****************
;; Defined at:
;;		line 136 in file "E:\Study Material\XC8 PROJECTS\New WLC 1PH\lcd_hd44780_pic16.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  status          1    4[BANK0 ] unsigned char 
;;  temp            1    3[BANK0 ] unsigned char 
;;  busy            1    2[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCDByte
;;		_LCDInit
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	line	136
global __ptext7
__ptext7:	;psect for function _LCDBusyLoop
psect	text7
	file	"E:\Study Material\XC8 PROJECTS\New WLC 1PH\lcd_hd44780_pic16.c"
	line	136
	global	__size_of_LCDBusyLoop
	__size_of_LCDBusyLoop	equ	__end_of_LCDBusyLoop-_LCDBusyLoop
	
_LCDBusyLoop:	
;incstack = 0
	opt	stack 3
; Regs used in _LCDBusyLoop: [wreg+status,2+status,0]
	line	140
	
l1530:	
;lcd_hd44780_pic16.c: 140: uint8_t busy,status=0x00,temp;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDBusyLoop@status)
	line	143
	
l1532:	
;lcd_hd44780_pic16.c: 143: TRISC|=(0x0f<<0);
	movlw	(0Fh)
	movwf	(??_LCDBusyLoop+0)+0
	movf	(??_LCDBusyLoop+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(135)^080h,f	;volatile
	line	146
	
l1534:	
;lcd_hd44780_pic16.c: 146: (RC6=1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(62/8),(62)&7	;volatile
	line	147
	
l1536:	
;lcd_hd44780_pic16.c: 147: (RC7=0);
	bcf	(63/8),(63)&7	;volatile
	line	151
	
l1538:	
;lcd_hd44780_pic16.c: 151: _delay((unsigned long)((0.5)*(4000000/4000000.0)));
	
	goto	l1540
	line	154
;lcd_hd44780_pic16.c: 154: do
	
l26:	
	line	157
	
l1540:	
;lcd_hd44780_pic16.c: 155: {
;lcd_hd44780_pic16.c: 157: (RC5=1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7	;volatile
	line	160
	
l1542:	
;lcd_hd44780_pic16.c: 160: _delay((unsigned long)((0.5)*(4000000/4000000.0)));
	
	line	162
	
l1544:	
;lcd_hd44780_pic16.c: 162: status=(PORTC>>0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(7),w	;volatile
	movwf	(??_LCDBusyLoop+0)+0
	movf	(??_LCDBusyLoop+0)+0,w
	movwf	(LCDBusyLoop@status)
	line	163
	
l1546:	
;lcd_hd44780_pic16.c: 163: status=status<<4;
	movf	(LCDBusyLoop@status),w
	movwf	(??_LCDBusyLoop+0)+0
	movlw	(04h)-1
u915:
	clrc
	rlf	(??_LCDBusyLoop+0)+0,f
	addlw	-1
	skipz
	goto	u915
	clrc
	rlf	(??_LCDBusyLoop+0)+0,w
	movwf	(??_LCDBusyLoop+1)+0
	movf	(??_LCDBusyLoop+1)+0,w
	movwf	(LCDBusyLoop@status)
	line	165
	
l1548:	
;lcd_hd44780_pic16.c: 165: _delay((unsigned long)((0.5)*(4000000/4000000.0)));
	
	line	168
	
l1550:	
;lcd_hd44780_pic16.c: 168: (RC5=0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7	;volatile
	line	169
	
l1552:	
;lcd_hd44780_pic16.c: 169: _delay((unsigned long)((1)*(4000000/4000000.0)));
		opt asmopt_off
	nop
	opt asmopt_on

	line	171
	
l1554:	
;lcd_hd44780_pic16.c: 171: (RC5=1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7	;volatile
	line	172
	
l1556:	
;lcd_hd44780_pic16.c: 172: _delay((unsigned long)((0.5)*(4000000/4000000.0)));
	
	line	174
	
l1558:	
;lcd_hd44780_pic16.c: 174: temp=(PORTC>>0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(7),w	;volatile
	movwf	(??_LCDBusyLoop+0)+0
	movf	(??_LCDBusyLoop+0)+0,w
	movwf	(LCDBusyLoop@temp)
	line	175
	
l1560:	
;lcd_hd44780_pic16.c: 175: temp&=0x0F;
	movlw	(0Fh)
	movwf	(??_LCDBusyLoop+0)+0
	movf	(??_LCDBusyLoop+0)+0,w
	andwf	(LCDBusyLoop@temp),f
	line	177
	
l1562:	
;lcd_hd44780_pic16.c: 177: status=status|temp;
	movf	(LCDBusyLoop@status),w
	iorwf	(LCDBusyLoop@temp),w
	movwf	(??_LCDBusyLoop+0)+0
	movf	(??_LCDBusyLoop+0)+0,w
	movwf	(LCDBusyLoop@status)
	line	179
	
l1564:	
;lcd_hd44780_pic16.c: 179: busy=status & 0b10000000;
	movf	(LCDBusyLoop@status),w
	andlw	080h
	movwf	(??_LCDBusyLoop+0)+0
	movf	(??_LCDBusyLoop+0)+0,w
	movwf	(LCDBusyLoop@busy)
	line	181
	
l1566:	
;lcd_hd44780_pic16.c: 181: _delay((unsigned long)((0.5)*(4000000/4000000.0)));
	
	line	183
	
l1568:	
;lcd_hd44780_pic16.c: 183: (RC5=0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7	;volatile
	line	184
	
l1570:	
;lcd_hd44780_pic16.c: 184: _delay((unsigned long)((1)*(4000000/4000000.0)));
		opt asmopt_off
	nop
	opt asmopt_on

	line	185
	
l1572:	
;lcd_hd44780_pic16.c: 185: }while(busy);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCDBusyLoop@busy),f
	skipz
	goto	u921
	goto	u920
u921:
	goto	l1540
u920:
	
l27:	
	line	187
;lcd_hd44780_pic16.c: 187: (RC6=0);
	bcf	(62/8),(62)&7	;volatile
	line	190
	
l1574:	
;lcd_hd44780_pic16.c: 190: TRISC&=(~(0x0F<<0));
	movlw	(0F0h)
	movwf	(??_LCDBusyLoop+0)+0
	movf	(??_LCDBusyLoop+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(135)^080h,f	;volatile
	line	192
	
l28:	
	return
	opt stack 0
GLOBAL	__end_of_LCDBusyLoop
	__end_of_LCDBusyLoop:
	signat	_LCDBusyLoop,88
	global	_Tx_Received

;; *************** function _Tx_Received *****************
;; Defined at:
;;		line 193 in file "E:\Study Material\XC8 PROJECTS\New WLC 1PH\WLC.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          5       0       0
;;      Totals:         5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\New WLC 1PH\WLC.C"
	line	193
global __ptext8
__ptext8:	;psect for function _Tx_Received
psect	text8
	file	"E:\Study Material\XC8 PROJECTS\New WLC 1PH\WLC.C"
	line	193
	global	__size_of_Tx_Received
	__size_of_Tx_Received	equ	__end_of_Tx_Received-_Tx_Received
	
_Tx_Received:	
;incstack = 0
	opt	stack 3
; Regs used in _Tx_Received: [wreg+status,2]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_Tx_Received+1)
	movf	fsr0,w
	movwf	(??_Tx_Received+2)
	movf	pclath,w
	movwf	(??_Tx_Received+3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_Tx_Received+4)
	ljmp	_Tx_Received
psect	text8
	line	195
	
i1l1450:	
;WLC.C: 195: txr_not_received = 0;
	clrf	(_txr_not_received)
	line	198
;WLC.C: 198: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	199
;WLC.C: 199: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	201
	
i1l1452:	
;WLC.C: 201: TRISA = 0x04;
	movlw	(04h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	204
	
i1l1454:	
;WLC.C: 204: if( RA2 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(42/8),(42)&7	;volatile
	goto	u83_21
	goto	u83_20
u83_21:
	goto	i1l1462
u83_20:
	line	206
	
i1l1456:	
;WLC.C: 205: {
;WLC.C: 206: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_Tx_Received+0)+0,f
u139_27:
	nop
decfsz	(??_Tx_Received+0)+0,f
	goto	u139_27
	nop2	;nop
	nop
opt asmopt_on

	line	207
	
i1l1458:	
;WLC.C: 207: if( RA2 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(42/8),(42)&7	;volatile
	goto	u84_21
	goto	u84_20
u84_21:
	goto	i1l161
u84_20:
	line	209
	
i1l1460:	
;WLC.C: 208: {
;WLC.C: 209: ul = 1;
	movlw	low(01h)
	movwf	(_ul)
	movlw	high(01h)
	movwf	((_ul))+1
	goto	i1l161
	line	210
	
i1l160:	
	line	211
;WLC.C: 210: }
;WLC.C: 211: }
	goto	i1l161
	line	212
	
i1l159:	
	line	214
	
i1l1462:	
;WLC.C: 212: else
;WLC.C: 213: {
;WLC.C: 214: ul = 0;
	clrf	(_ul)
	clrf	(_ul+1)
	line	215
	
i1l161:	
	line	218
;WLC.C: 215: }
;WLC.C: 218: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	219
;WLC.C: 219: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	221
	
i1l1464:	
;WLC.C: 221: TRISA = 0x08;
	movlw	(08h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	224
	
i1l1466:	
;WLC.C: 224: if( RA3 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(43/8),(43)&7	;volatile
	goto	u85_21
	goto	u85_20
u85_21:
	goto	i1l1474
u85_20:
	line	226
	
i1l1468:	
;WLC.C: 225: {
;WLC.C: 226: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_Tx_Received+0)+0,f
u140_27:
	nop
decfsz	(??_Tx_Received+0)+0,f
	goto	u140_27
	nop2	;nop
	nop
opt asmopt_on

	line	227
	
i1l1470:	
;WLC.C: 227: if( RA3 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(43/8),(43)&7	;volatile
	goto	u86_21
	goto	u86_20
u86_21:
	goto	i1l164
u86_20:
	line	229
	
i1l1472:	
;WLC.C: 228: {
;WLC.C: 229: uu = 1;
	movlw	low(01h)
	movwf	(_uu)
	movlw	high(01h)
	movwf	((_uu))+1
	line	230
;WLC.C: 230: ul = 1;
	movlw	low(01h)
	movwf	(_ul)
	movlw	high(01h)
	movwf	((_ul))+1
	goto	i1l164
	line	231
	
i1l163:	
	line	232
;WLC.C: 231: }
;WLC.C: 232: }
	goto	i1l164
	line	234
	
i1l162:	
	line	236
	
i1l1474:	
;WLC.C: 234: else
;WLC.C: 235: {
;WLC.C: 236: uu = 0;
	clrf	(_uu)
	clrf	(_uu+1)
	line	237
	
i1l164:	
	line	240
;WLC.C: 237: }
;WLC.C: 240: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	241
;WLC.C: 241: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	243
	
i1l1476:	
;WLC.C: 243: TRISA = 0x01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	244
	
i1l1478:	
;WLC.C: 244: RA1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(41/8),(41)&7	;volatile
	line	245
	
i1l1480:	
;WLC.C: 245: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_Tx_Received+0)+0,f
u141_27:
	nop
decfsz	(??_Tx_Received+0)+0,f
	goto	u141_27
	nop2	;nop
	nop
opt asmopt_on

	line	247
	
i1l1482:	
;WLC.C: 247: if( RA0 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(40/8),(40)&7	;volatile
	goto	u87_21
	goto	u87_20
u87_21:
	goto	i1l1490
u87_20:
	line	249
	
i1l1484:	
;WLC.C: 248: {
;WLC.C: 249: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_Tx_Received+0)+0,f
u142_27:
	nop
decfsz	(??_Tx_Received+0)+0,f
	goto	u142_27
	nop2	;nop
	nop
opt asmopt_on

	line	250
	
i1l1486:	
;WLC.C: 250: if( RA0 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(40/8),(40)&7	;volatile
	goto	u88_21
	goto	u88_20
u88_21:
	goto	i1l167
u88_20:
	line	252
	
i1l1488:	
;WLC.C: 251: {
;WLC.C: 252: ll = 1;
	movlw	low(01h)
	movwf	(_ll)
	movlw	high(01h)
	movwf	((_ll))+1
	goto	i1l167
	line	253
	
i1l166:	
	line	254
;WLC.C: 253: }
;WLC.C: 254: }
	goto	i1l167
	line	255
	
i1l165:	
	line	257
	
i1l1490:	
;WLC.C: 255: else
;WLC.C: 256: {
;WLC.C: 257: ll = 0;
	clrf	(_ll)
	clrf	(_ll+1)
	line	258
	
i1l167:	
	line	261
;WLC.C: 258: }
;WLC.C: 261: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	262
;WLC.C: 262: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	264
	
i1l1492:	
;WLC.C: 264: TRISA = 0x02;
	movlw	(02h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	265
	
i1l1494:	
;WLC.C: 265: RA0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(40/8),(40)&7	;volatile
	line	266
	
i1l1496:	
;WLC.C: 266: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_Tx_Received+0)+0,f
u143_27:
	nop
decfsz	(??_Tx_Received+0)+0,f
	goto	u143_27
	nop2	;nop
	nop
opt asmopt_on

	line	268
	
i1l1498:	
;WLC.C: 268: if( RA1 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(41/8),(41)&7	;volatile
	goto	u89_21
	goto	u89_20
u89_21:
	goto	i1l1506
u89_20:
	line	270
	
i1l1500:	
;WLC.C: 269: {
;WLC.C: 270: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_Tx_Received+0)+0,f
u144_27:
	nop
decfsz	(??_Tx_Received+0)+0,f
	goto	u144_27
	nop2	;nop
	nop
opt asmopt_on

	line	271
	
i1l1502:	
;WLC.C: 271: if( RA1 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(41/8),(41)&7	;volatile
	goto	u90_21
	goto	u90_20
u90_21:
	goto	i1l170
u90_20:
	line	273
	
i1l1504:	
;WLC.C: 272: {
;WLC.C: 273: lu = 1;
	movlw	low(01h)
	movwf	(_lu)
	movlw	high(01h)
	movwf	((_lu))+1
	goto	i1l170
	line	274
	
i1l169:	
	line	275
;WLC.C: 274: }
;WLC.C: 275: }
	goto	i1l170
	line	276
	
i1l168:	
	line	278
	
i1l1506:	
;WLC.C: 276: else
;WLC.C: 277: {
;WLC.C: 278: lu = 0;
	clrf	(_lu)
	clrf	(_lu+1)
	line	279
	
i1l170:	
	line	282
;WLC.C: 279: }
;WLC.C: 282: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	283
;WLC.C: 283: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	286
	
i1l1508:	
;WLC.C: 286: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	287
	
i1l171:	
	movf	(??_Tx_Received+4),w
	movwf	btemp+1
	movf	(??_Tx_Received+3),w
	movwf	pclath
	movf	(??_Tx_Received+2),w
	movwf	fsr0
	swapf	(??_Tx_Received+1)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_Tx_Received
	__end_of_Tx_Received:
	signat	_Tx_Received,88
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

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
	FNCALL	_main,_LCDInit
	FNCALL	_main,_ReadADC
	FNCALL	_main,___bmul
	FNCALL	_main,_first_screen
	FNCALL	_main,_motor_start
	FNCALL	_main,_motor_stop
	FNCALL	_main,_update_display
	FNCALL	_update_display,_LCDByte
	FNCALL	_update_display,_LCDGotoXY
	FNCALL	_update_display,_LCDWriteString
	FNCALL	_update_display,_display_lower_tank
	FNCALL	_update_display,_display_upper_tank
	FNCALL	_update_display,_phase_display
	FNCALL	_phase_display,_LCDGotoXY
	FNCALL	_phase_display,_LCDWriteInt
	FNCALL	_phase_display,_LCDWriteString
	FNCALL	_LCDWriteInt,_LCDByte
	FNCALL	_LCDWriteInt,___awdiv
	FNCALL	_LCDWriteInt,___awmod
	FNCALL	_display_upper_tank,_LCDWriteString
	FNCALL	_display_lower_tank,_LCDWriteString
	FNCALL	_first_screen,_LCDByte
	FNCALL	_first_screen,_LCDGotoXY
	FNCALL	_first_screen,_LCDWriteString
	FNCALL	_LCDWriteString,_LCDByte
	FNCALL	_LCDGotoXY,_LCDByte
	FNCALL	_ReadADC,___lwdiv
	FNCALL	_LCDInit,_LCDBusyLoop
	FNCALL	_LCDInit,_LCDByte
	FNCALL	_LCDByte,_LCDBusyLoop
	FNROOT	_main
	FNCALL	intlevel1,_Tx_Received
	global	intlevel1
	FNROOT	intlevel1
	global	___cgram
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"E:\Study Material\XC8 PROJECTS\New WLC3PH\custom_char.h"
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
	global	_DRY_RUN_NEEDED
	global	_Dry_Run_Timer
	global	LCDWriteInt@F784
	global	_Elapsed_Time
	global	_Off_Timer
	global	_TIMER_NEEDED
	global	_count
	global	_level_check
	global	_ll
	global	_lp_flag
	global	_lu
	global	_motor_flag
	global	_power_check
	global	_timer
	global	_txr_not_received
	global	_ul
	global	_uu
	global	_On_Timer
	global	_ADCON0
_ADCON0	set	0x1F
	global	_ADCON0bits
_ADCON0bits	set	0x1F
	global	_ADRESH
_ADRESH	set	0x1E
	global	_INTCON
_INTCON	set	0xB
	global	_PORTA
_PORTA	set	0x5
	global	_PORTB
_PORTB	set	0x6
	global	_PORTC
_PORTC	set	0x7
	global	_ADON
_ADON	set	0xF8
	global	_GO
_GO	set	0xFA
	global	_INTF
_INTF	set	0x59
	global	_RA1
_RA1	set	0x29
	global	_RA2
_RA2	set	0x2A
	global	_RA3
_RA3	set	0x2B
	global	_RA5
_RA5	set	0x2D
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
	global	_ADRESL
_ADRESL	set	0x9E
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
	
STR_27:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	69	;'E'
	retlw	65	;'A'
	retlw	71	;'G'
	retlw	76	;'L'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_31:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	87	;'W'
	retlw	73	;'I'
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	76	;'L'
	retlw	69	;'E'
	retlw	83	;'S'
	retlw	83	;'S'
	retlw	32	;' '
	retlw	87	;'W'
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_28:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	84	;'T'
	retlw	82	;'R'
	retlw	79	;'O'
	retlw	76	;'L'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	89	;'Y'
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	77	;'M'
	retlw	83	;'S'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_32:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	76	;'L'
	retlw	69	;'E'
	retlw	86	;'V'
	retlw	69	;'E'
	retlw	76	;'L'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	84	;'T'
	retlw	82	;'R'
	retlw	79	;'O'
	retlw	76	;'L'
	retlw	76	;'L'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_26:	
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	0
psect	strings
	
STR_9:	
	retlw	77	;'M'
	retlw	79	;'O'
	retlw	84	;'T'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	70	;'F'
	retlw	70	;'F'
	retlw	32	;' '
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_11:	
	retlw	77	;'M'
	retlw	79	;'O'
	retlw	84	;'T'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	32	;' '
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_18:	
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
	retlw	45	;'-'
	retlw	0
psect	strings
	
STR_19:	
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
	retlw	45	;'-'
	retlw	0
psect	strings
	
STR_17:	
	retlw	84	;'T'
	retlw	73	;'I'
	retlw	77	;'M'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	70	;'F'
	retlw	70	;'F'
	retlw	0
psect	strings
	
STR_15:	
	retlw	79	;'O'
	retlw	70	;'F'
	retlw	70	;'F'
	retlw	32	;' '
	retlw	61	;'='
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_23:	
	retlw	32	;' '
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	77	;'M'
	retlw	46	;'.'
	retlw	45	;'-'
	retlw	0
psect	strings
	
STR_20:	
	retlw	77	;'M'
	retlw	79	;'O'
	retlw	84	;'T'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	45	;'-'
	retlw	0
psect	strings
	
STR_3:	
	retlw	32	;' '
	retlw	76	;'L'
	retlw	50	;'2'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_4:	
	retlw	32	;' '
	retlw	76	;'L'
	retlw	50	;'2'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	49	;'1'
	retlw	0
psect	strings
	
STR_13:	
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	32	;' '
	retlw	61	;'='
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_1:	
	retlw	76	;'L'
	retlw	49	;'1'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_2:	
	retlw	76	;'L'
	retlw	49	;'1'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	49	;'1'
	retlw	0
psect	strings
	
STR_10:	
	retlw	32	;' '
	retlw	77	;'M'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	0
psect	strings
	
STR_14:	
	retlw	32	;' '
	retlw	77	;'M'
	retlw	47	;'/'
	retlw	0
psect	strings
	
STR_16:	
	retlw	32	;' '
	retlw	77	;'M'
	retlw	0
psect	strings
	
STR_21:	
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	0
psect	strings
STR_12	equ	STR_10+0
STR_24	equ	STR_21+0
STR_22	equ	STR_17+6
STR_25	equ	STR_17+6
STR_8	equ	STR_4+0
STR_6	equ	STR_2+0
STR_7	equ	STR_3+0
STR_5	equ	STR_1+0
STR_29	equ	STR_26+0
STR_30	equ	STR_26+0
STR_33	equ	STR_26+0
	global __end_of__stringdata
__end_of__stringdata:
; #config settings
	file	"WLC3PH.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_DRY_RUN_NEEDED:
       ds      1

_Dry_Run_Timer:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
LCDWriteInt@F784:
       ds      5

_Elapsed_Time:
       ds      1

_Off_Timer:
       ds      1

_TIMER_NEEDED:
       ds      1

_count:
       ds      1

_level_check:
       ds      1

_ll:
       ds      1

_lp_flag:
       ds      1

_lu:
       ds      1

_motor_flag:
       ds      1

_power_check:
       ds      1

_timer:
       ds      1

_txr_not_received:
       ds      1

_ul:
       ds      1

_uu:
       ds      1

_On_Timer:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"E:\Study Material\XC8 PROJECTS\New WLC3PH\custom_char.h"
	line	15
___cgram:
       ds      16

	file	"WLC3PH.as"
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
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+014h)
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
?_first_screen:	; 0 bytes @ 0x0
?_update_display:	; 0 bytes @ 0x0
?_motor_start:	; 0 bytes @ 0x0
?_motor_stop:	; 0 bytes @ 0x0
?_LCDInit:	; 0 bytes @ 0x0
?_LCDWriteString:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_Tx_Received:	; 0 bytes @ 0x0
??_Tx_Received:	; 0 bytes @ 0x0
?_display_upper_tank:	; 0 bytes @ 0x0
?_display_lower_tank:	; 0 bytes @ 0x0
?_phase_display:	; 0 bytes @ 0x0
?_ReadADC:	; 1 bytes @ 0x0
	ds	5
??_LCDBusyLoop:	; 0 bytes @ 0x5
??___awdiv:	; 0 bytes @ 0x5
??___awmod:	; 0 bytes @ 0x5
??___lwdiv:	; 0 bytes @ 0x5
?___bmul:	; 1 bytes @ 0x5
	global	motor_start@i
motor_start@i:	; 1 bytes @ 0x5
	global	motor_stop@i
motor_stop@i:	; 1 bytes @ 0x5
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x5
	ds	1
??_ReadADC:	; 0 bytes @ 0x6
??___bmul:	; 0 bytes @ 0x6
	ds	1
??_display_upper_tank:	; 0 bytes @ 0x7
??_display_lower_tank:	; 0 bytes @ 0x7
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_motor_start:	; 0 bytes @ 0x0
??_motor_stop:	; 0 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	LCDBusyLoop@busy
LCDBusyLoop@busy:	; 1 bytes @ 0x0
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	ds	1
	global	LCDBusyLoop@temp
LCDBusyLoop@temp:	; 1 bytes @ 0x1
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x1
	ds	1
	global	LCDBusyLoop@status
LCDBusyLoop@status:	; 1 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	1
?_LCDByte:	; 0 bytes @ 0x3
	global	LCDByte@isdata
LCDByte@isdata:	; 1 bytes @ 0x3
	ds	1
??_LCDByte:	; 0 bytes @ 0x4
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x4
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x4
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x4
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x5
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	1
	global	LCDByte@hn
LCDByte@hn:	; 1 bytes @ 0x6
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x6
	ds	1
	global	LCDByte@ln
LCDByte@ln:	; 1 bytes @ 0x7
	global	ReadADC@value
ReadADC@value:	; 1 bytes @ 0x7
	ds	1
	global	LCDByte@c
LCDByte@c:	; 1 bytes @ 0x8
	global	ReadADC@result
ReadADC@result:	; 2 bytes @ 0x8
	ds	1
	global	LCDByte@temp
LCDByte@temp:	; 1 bytes @ 0x9
	ds	1
??_LCDInit:	; 0 bytes @ 0xA
??_LCDWriteString:	; 0 bytes @ 0xA
?_LCDWriteInt:	; 0 bytes @ 0xA
?_LCDGotoXY:	; 0 bytes @ 0xA
	global	LCDGotoXY@y
LCDGotoXY@y:	; 1 bytes @ 0xA
	global	LCDWriteInt@val
LCDWriteInt@val:	; 2 bytes @ 0xA
	ds	1
??_LCDGotoXY:	; 0 bytes @ 0xB
	global	LCDWriteString@cc
LCDWriteString@cc:	; 1 bytes @ 0xB
	ds	1
	global	LCDInit@style
LCDInit@style:	; 1 bytes @ 0xC
	global	LCDWriteString@msg
LCDWriteString@msg:	; 1 bytes @ 0xC
	global	LCDWriteInt@field_length
LCDWriteInt@field_length:	; 1 bytes @ 0xC
	global	LCDGotoXY@x
LCDGotoXY@x:	; 1 bytes @ 0xC
	ds	1
??_first_screen:	; 0 bytes @ 0xD
??_LCDWriteInt:	; 0 bytes @ 0xD
	global	LCDInit@__i
LCDInit@__i:	; 1 bytes @ 0xD
	ds	2
	global	LCDWriteInt@str
LCDWriteInt@str:	; 5 bytes @ 0xF
	ds	5
	global	LCDWriteInt@j
LCDWriteInt@j:	; 2 bytes @ 0x14
	ds	2
	global	LCDWriteInt@i
LCDWriteInt@i:	; 2 bytes @ 0x16
	ds	2
??_phase_display:	; 0 bytes @ 0x18
	ds	3
??_update_display:	; 0 bytes @ 0x1B
	ds	1
??_main:	; 0 bytes @ 0x1C
	ds	3
;!
;!Data Sizes:
;!    Strings     234
;!    Constant    0
;!    Data        16
;!    BSS         22
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7       9
;!    BANK0            80     31      67
;!    BANK1            32      0       0

;!
;!Pointer List with Targets:
;!
;!    LCDWriteString@msg	PTR const unsigned char  size(1) Largest target is 21
;!		 -> STR_33(CODE[21]), STR_32(CODE[21]), STR_31(CODE[21]), STR_30(CODE[21]), 
;!		 -> STR_29(CODE[21]), STR_28(CODE[21]), STR_27(CODE[21]), STR_26(CODE[21]), 
;!		 -> STR_25(CODE[4]), STR_24(CODE[3]), STR_23(CODE[7]), STR_22(CODE[4]), 
;!		 -> STR_21(CODE[3]), STR_20(CODE[7]), STR_19(CODE[12]), STR_18(CODE[12]), 
;!		 -> STR_17(CODE[10]), STR_16(CODE[3]), STR_15(CODE[7]), STR_14(CODE[4]), 
;!		 -> STR_13(CODE[6]), STR_12(CODE[5]), STR_11(CODE[13]), STR_10(CODE[5]), 
;!		 -> STR_9(CODE[14]), STR_8(CODE[7]), STR_7(CODE[7]), STR_6(CODE[6]), 
;!		 -> STR_5(CODE[6]), STR_4(CODE[7]), STR_3(CODE[7]), STR_2(CODE[6]), 
;!		 -> STR_1(CODE[6]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_ReadADC
;!    _main->___bmul
;!    _ReadADC->___lwdiv
;!    _LCDInit->_LCDBusyLoop
;!    _LCDByte->_LCDBusyLoop
;!
;!Critical Paths under _Tx_Received in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_update_display
;!    _update_display->_phase_display
;!    _phase_display->_LCDWriteInt
;!    _LCDWriteInt->_LCDByte
;!    _display_upper_tank->_LCDWriteString
;!    _display_lower_tank->_LCDWriteString
;!    _first_screen->_LCDGotoXY
;!    _first_screen->_LCDWriteString
;!    _LCDWriteString->_LCDByte
;!    _LCDGotoXY->_LCDByte
;!    _ReadADC->___lwdiv
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
;! (0) _main                                                 3     3      0   30130
;!                                             28 BANK0      3     3      0
;!                            _LCDByte
;!                            _LCDInit
;!                            _ReadADC
;!                             ___bmul
;!                       _first_screen
;!                        _motor_start
;!                         _motor_stop
;!                     _update_display
;! ---------------------------------------------------------------------------------
;! (1) _update_display                                       1     1      0   20042
;!                                             27 BANK0      1     1      0
;!                            _LCDByte
;!                          _LCDGotoXY
;!                     _LCDWriteString
;!                 _display_lower_tank
;!                 _display_upper_tank
;!                      _phase_display
;! ---------------------------------------------------------------------------------
;! (2) _phase_display                                        3     3      0    8486
;!                                             24 BANK0      3     3      0
;!                          _LCDGotoXY
;!                        _LCDWriteInt
;!                     _LCDWriteString
;! ---------------------------------------------------------------------------------
;! (3) _LCDWriteInt                                         14    11      3    3582
;!                                             10 BANK0     14    11      3
;!                            _LCDByte
;!                            ___awdiv
;!                            ___awmod
;! ---------------------------------------------------------------------------------
;! (4) ___awmod                                              7     3      4     563
;!                                              5 COMMON     1     1      0
;!                                              0 BANK0      6     2      4
;! ---------------------------------------------------------------------------------
;! (4) ___awdiv                                              9     5      4     575
;!                                              5 COMMON     1     1      0
;!                                              0 BANK0      8     4      4
;! ---------------------------------------------------------------------------------
;! (2) _display_upper_tank                                   0     0      0    2633
;!                     _LCDWriteString
;! ---------------------------------------------------------------------------------
;! (2) _display_lower_tank                                   0     0      0    2633
;!                     _LCDWriteString
;! ---------------------------------------------------------------------------------
;! (1) _motor_stop                                           4     4      0      68
;!                                              5 COMMON     1     1      0
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _motor_start                                          4     4      0      68
;!                                              5 COMMON     1     1      0
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _first_screen                                         3     3      0    6290
;!                                             13 BANK0      3     3      0
;!                            _LCDByte
;!                          _LCDGotoXY
;!                     _LCDWriteString
;! ---------------------------------------------------------------------------------
;! (3) _LCDWriteString                                       3     3      0    2633
;!                                             10 BANK0      3     3      0
;!                            _LCDByte
;! ---------------------------------------------------------------------------------
;! (3) _LCDGotoXY                                            3     2      1    2271
;!                                             10 BANK0      3     2      1
;!                            _LCDByte
;! ---------------------------------------------------------------------------------
;! (1) ___bmul                                               4     3      1     201
;!                                              5 COMMON     2     1      1
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _ReadADC                                              4     4      0     442
;!                                              6 COMMON     1     1      0
;!                                              7 BANK0      3     3      0
;!                            ___lwdiv
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              8     4      4     371
;!                                              5 COMMON     1     1      0
;!                                              0 BANK0      7     3      4
;! ---------------------------------------------------------------------------------
;! (1) _LCDInit                                              4     4      0    1633
;!                                             10 BANK0      4     4      0
;!                        _LCDBusyLoop
;!                            _LCDByte
;! ---------------------------------------------------------------------------------
;! (4) _LCDByte                                              7     6      1    1386
;!                                              3 BANK0      7     6      1
;!                        _LCDBusyLoop
;! ---------------------------------------------------------------------------------
;! (5) _LCDBusyLoop                                          5     5      0     117
;!                                              5 COMMON     2     2      0
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (6) _Tx_Received                                          5     5      0       0
;!                                              0 COMMON     5     5      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
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
;!   _ReadADC
;!     ___lwdiv
;!   ___bmul
;!   _first_screen
;!     _LCDByte
;!       _LCDBusyLoop
;!     _LCDGotoXY
;!       _LCDByte
;!         _LCDBusyLoop
;!     _LCDWriteString
;!       _LCDByte
;!         _LCDBusyLoop
;!   _motor_start
;!   _motor_stop
;!   _update_display
;!     _LCDByte
;!       _LCDBusyLoop
;!     _LCDGotoXY
;!       _LCDByte
;!         _LCDBusyLoop
;!     _LCDWriteString
;!       _LCDByte
;!         _LCDBusyLoop
;!     _display_lower_tank
;!       _LCDWriteString
;!         _LCDByte
;!           _LCDBusyLoop
;!     _display_upper_tank
;!       _LCDWriteString
;!         _LCDByte
;!           _LCDBusyLoop
;!     _phase_display
;!       _LCDGotoXY
;!         _LCDByte
;!           _LCDBusyLoop
;!       _LCDWriteInt
;!         _LCDByte
;!           _LCDBusyLoop
;!         ___awdiv
;!         ___awmod
;!       _LCDWriteString
;!         _LCDByte
;!           _LCDBusyLoop
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
;!BANK0               50     1F      43       5       83.8%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      7       9       1       64.3%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      4C       8        0.0%
;!ABS                  0      0      4C       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA              40      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 51 in file "E:\Study Material\XC8 PROJECTS\New WLC3PH\TimerWLC.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0
;;      Temps:          0       3       0
;;      Totals:         0       3       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_LCDByte
;;		_LCDInit
;;		_ReadADC
;;		___bmul
;;		_first_screen
;;		_motor_start
;;		_motor_stop
;;		_update_display
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"E:\Study Material\XC8 PROJECTS\New WLC3PH\TimerWLC.c"
	line	51
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"E:\Study Material\XC8 PROJECTS\New WLC3PH\TimerWLC.c"
	line	51
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	53
	
l2775:	
;TimerWLC.c: 53: ADCON0 = 0x80;
	movlw	(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	54
;TimerWLC.c: 54: ADCON1 = 0x8E;
	movlw	(08Eh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	56
;TimerWLC.c: 56: TRISA = 0x01;
	movlw	(01h)
	movwf	(133)^080h	;volatile
	line	57
;TimerWLC.c: 57: TRISB = 0xE1;
	movlw	(0E1h)
	movwf	(134)^080h	;volatile
	line	58
	
l2777:	
;TimerWLC.c: 58: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	60
	
l2779:	
;TimerWLC.c: 60: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	61
	
l2781:	
;TimerWLC.c: 61: PORTA = 0x00;
	clrf	(5)	;volatile
	line	62
	
l2783:	
;TimerWLC.c: 62: PORTC = 0x00;
	clrf	(7)	;volatile
	line	65
	
l2785:	
;TimerWLC.c: 65: LCDInit(0B00000000);
	movlw	(0)
	fcall	_LCDInit
	line	68
	
l2787:	
;TimerWLC.c: 68: (LCDByte(0b00000001,0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDByte@isdata)
	movlw	(01h)
	fcall	_LCDByte
	line	70
	
l2789:	
;TimerWLC.c: 70: first_screen();
	fcall	_first_screen
	line	73
	
l2791:	
;TimerWLC.c: 73: On_Timer = ReadADC();
	fcall	_ReadADC
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_On_Timer)
	line	74
;TimerWLC.c: 74: if(On_Timer != 0)
	movf	(_On_Timer),w
	skipz
	goto	u2660
	goto	l2799
u2660:
	line	76
	
l2793:	
;TimerWLC.c: 75: {
;TimerWLC.c: 76: TIMER_NEEDED = 1;
	clrf	(_TIMER_NEEDED)
	incf	(_TIMER_NEEDED),f
	line	77
	
l2795:	
;TimerWLC.c: 77: On_Timer = On_Timer * 10;
	movlw	(0Ah)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(_On_Timer),w
	fcall	___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(_On_Timer)
	line	79
	
l2797:	
;TimerWLC.c: 79: Off_Timer = 180;
	movlw	(0B4h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_Off_Timer)
	goto	l2799
	line	80
	
l180:	
	line	82
	
l2799:	
;TimerWLC.c: 80: }
;TimerWLC.c: 82: OPTION_REG = 0xC0;
	movlw	(0C0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	83
	
l2801:	
;TimerWLC.c: 83: INTCON = 0x90;
	movlw	(090h)
	movwf	(11)	;volatile
	goto	l2803
	line	85
;TimerWLC.c: 85: while(1)
	
l181:	
	line	87
	
l2803:	
;TimerWLC.c: 86: {
;TimerWLC.c: 87: txr_not_received ++;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_txr_not_received),f
	line	89
	
l2805:	
;TimerWLC.c: 89: if(txr_not_received > 20)
	movlw	(015h)
	subwf	(_txr_not_received),w
	skipc
	goto	u2671
	goto	u2670
u2671:
	goto	l182
u2670:
	line	90
	
l2807:	
;TimerWLC.c: 90: txr_not_received = 20;
	movlw	(014h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_txr_not_received)
	
l182:	
	line	93
;TimerWLC.c: 93: if( motor_flag == 1 )
	movf	(_motor_flag),w
	xorlw	01h
	skipz
	goto	u2681
	goto	u2680
u2681:
	goto	l2817
u2680:
	line	95
	
l2809:	
;TimerWLC.c: 94: {
;TimerWLC.c: 95: if( uu == 0 && ll == 1 )
	movf	(_uu),f
	skipz
	goto	u2691
	goto	u2690
u2691:
	goto	l2815
u2690:
	
l2811:	
	movf	(_ll),w
	xorlw	01h
	skipz
	goto	u2701
	goto	u2700
u2701:
	goto	l2815
u2700:
	line	97
	
l2813:	
;TimerWLC.c: 96: {
;TimerWLC.c: 97: level_check = 1;
	clrf	(_level_check)
	incf	(_level_check),f
	line	98
;TimerWLC.c: 98: }
	goto	l2829
	line	99
	
l184:	
	line	101
	
l2815:	
;TimerWLC.c: 99: else
;TimerWLC.c: 100: {
;TimerWLC.c: 101: level_check = 0;
	clrf	(_level_check)
	goto	l2829
	line	102
	
l185:	
	line	103
;TimerWLC.c: 102: }
;TimerWLC.c: 103: }
	goto	l2829
	line	105
	
l183:	
	line	107
	
l2817:	
;TimerWLC.c: 105: else
;TimerWLC.c: 106: {
;TimerWLC.c: 107: if( (uu == 0 && ul == 0) && (lu == 1 && ll == 1) )
	movf	(_uu),f
	skipz
	goto	u2711
	goto	u2710
u2711:
	goto	l2827
u2710:
	
l2819:	
	movf	(_ul),f
	skipz
	goto	u2721
	goto	u2720
u2721:
	goto	l2827
u2720:
	
l2821:	
	movf	(_lu),w
	xorlw	01h
	skipz
	goto	u2731
	goto	u2730
u2731:
	goto	l2827
u2730:
	
l2823:	
	movf	(_ll),w
	xorlw	01h
	skipz
	goto	u2741
	goto	u2740
u2741:
	goto	l2827
u2740:
	line	109
	
l2825:	
;TimerWLC.c: 108: {
;TimerWLC.c: 109: level_check = 1;
	clrf	(_level_check)
	incf	(_level_check),f
	line	110
;TimerWLC.c: 110: }
	goto	l2829
	line	111
	
l187:	
	line	113
	
l2827:	
;TimerWLC.c: 111: else
;TimerWLC.c: 112: {
;TimerWLC.c: 113: level_check = 0;
	clrf	(_level_check)
	goto	l2829
	line	114
	
l188:	
	goto	l2829
	line	115
	
l186:	
	line	118
	
l2829:	
;TimerWLC.c: 114: }
;TimerWLC.c: 115: }
;TimerWLC.c: 118: if( RB7 == 1 && RB6 == 1 && RB5 == 1 )
	btfss	(55/8),(55)&7	;volatile
	goto	u2751
	goto	u2750
u2751:
	goto	l2839
u2750:
	
l2831:	
	btfss	(54/8),(54)&7	;volatile
	goto	u2761
	goto	u2760
u2761:
	goto	l2839
u2760:
	
l2833:	
	btfss	(53/8),(53)&7	;volatile
	goto	u2771
	goto	u2770
u2771:
	goto	l2839
u2770:
	line	121
	
l2835:	
;TimerWLC.c: 119: {
;TimerWLC.c: 121: power_check = 1;
	clrf	(_power_check)
	incf	(_power_check),f
	line	122
	
l2837:	
;TimerWLC.c: 122: update_display();
	fcall	_update_display
	line	123
;TimerWLC.c: 123: }
	goto	l2843
	line	124
	
l189:	
	line	127
	
l2839:	
;TimerWLC.c: 124: else
;TimerWLC.c: 125: {
;TimerWLC.c: 127: power_check = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_power_check)
	line	128
	
l2841:	
;TimerWLC.c: 128: update_display();
	fcall	_update_display
	goto	l2843
	line	129
	
l190:	
	line	131
	
l2843:	
;TimerWLC.c: 129: }
;TimerWLC.c: 131: if( level_check == 1 && power_check == 1 && txr_not_received <= 20 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_level_check),w
	xorlw	01h
	skipz
	goto	u2781
	goto	u2780
u2781:
	goto	l2863
u2780:
	
l2845:	
	movf	(_power_check),w
	xorlw	01h
	skipz
	goto	u2791
	goto	u2790
u2791:
	goto	l2863
u2790:
	
l2847:	
	movlw	(015h)
	subwf	(_txr_not_received),w
	skipnc
	goto	u2801
	goto	u2800
u2801:
	goto	l2863
u2800:
	line	134
	
l2849:	
;TimerWLC.c: 132: {
;TimerWLC.c: 134: if( lp_flag == 0 )
	movf	(_lp_flag),f
	skipz
	goto	u2811
	goto	u2810
u2811:
	goto	l2873
u2810:
	line	136
	
l2851:	
;TimerWLC.c: 135: {
;TimerWLC.c: 136: motor_start();
	fcall	_motor_start
	line	137
	
l2853:	
;TimerWLC.c: 137: lp_flag = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_lp_flag)
	incf	(_lp_flag),f
	line	138
	
l2855:	
;TimerWLC.c: 138: motor_flag = 1;
	clrf	(_motor_flag)
	incf	(_motor_flag),f
	line	139
	
l2857:	
;TimerWLC.c: 139: if(TIMER_NEEDED == 1)
	movf	(_TIMER_NEEDED),w
	xorlw	01h
	skipz
	goto	u2821
	goto	u2820
u2821:
	goto	l2861
u2820:
	line	141
	
l2859:	
;TimerWLC.c: 140: {
;TimerWLC.c: 141: timer = 0;
	clrf	(_timer)
	line	142
;TimerWLC.c: 142: count = 0;
	clrf	(_count)
	goto	l2861
	line	143
	
l193:	
	line	144
	
l2861:	
;TimerWLC.c: 143: }
;TimerWLC.c: 144: update_display();
	fcall	_update_display
	goto	l2873
	line	145
	
l192:	
	line	146
;TimerWLC.c: 145: }
;TimerWLC.c: 146: }
	goto	l2873
	line	148
	
l191:	
	line	151
	
l2863:	
;TimerWLC.c: 148: else
;TimerWLC.c: 149: {
;TimerWLC.c: 151: if( lp_flag == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lp_flag),w
	xorlw	01h
	skipz
	goto	u2831
	goto	u2830
u2831:
	goto	l2873
u2830:
	line	153
	
l2865:	
;TimerWLC.c: 152: {
;TimerWLC.c: 153: motor_stop();
	fcall	_motor_stop
	line	154
	
l2867:	
;TimerWLC.c: 154: lp_flag = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_lp_flag)
	line	155
	
l2869:	
;TimerWLC.c: 155: motor_flag = 0;
	clrf	(_motor_flag)
	line	156
	
l2871:	
;TimerWLC.c: 156: update_display();
	fcall	_update_display
	goto	l2873
	line	157
	
l195:	
	goto	l2873
	line	158
	
l194:	
	line	161
	
l2873:	
;TimerWLC.c: 157: }
;TimerWLC.c: 158: }
;TimerWLC.c: 161: if(TIMER_NEEDED == 1 && motor_flag == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_TIMER_NEEDED),w
	xorlw	01h
	skipz
	goto	u2841
	goto	u2840
u2841:
	goto	l2913
u2840:
	
l2875:	
	movf	(_motor_flag),w
	xorlw	01h
	skipz
	goto	u2851
	goto	u2850
u2851:
	goto	l2913
u2850:
	line	163
	
l2877:	
;TimerWLC.c: 162: {
;TimerWLC.c: 163: if(timer >= On_Timer)
	movf	(_On_Timer),w
	subwf	(_timer),w
	skipc
	goto	u2861
	goto	u2860
u2861:
	goto	l2905
u2860:
	line	166
	
l2879:	
;TimerWLC.c: 164: {
;TimerWLC.c: 166: motor_stop();
	fcall	_motor_stop
	line	167
	
l2881:	
;TimerWLC.c: 167: lp_flag = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_lp_flag)
	line	169
	
l2883:	
;TimerWLC.c: 169: update_display();
	fcall	_update_display
	line	170
	
l2885:	
;TimerWLC.c: 170: timer = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_timer)
	line	171
;TimerWLC.c: 171: while(timer <= Off_Timer)
	goto	l2903
	
l199:	
	line	173
	
l2887:	
;TimerWLC.c: 172: {
;TimerWLC.c: 173: for(count = 0; count < 6; count++)
	clrf	(_count)
	
l2889:	
	movlw	(06h)
	subwf	(_count),w
	skipc
	goto	u2871
	goto	u2870
u2871:
	goto	l2893
u2870:
	goto	l2901
	
l2891:	
	goto	l2901
	line	174
	
l200:	
	line	175
	
l2893:	
;TimerWLC.c: 174: {
;TimerWLC.c: 175: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u2917:
	decfsz	((??_main+0)+0),f
	goto	u2917
	decfsz	((??_main+0)+0+1),f
	goto	u2917
	decfsz	((??_main+0)+0+2),f
	goto	u2917
	nop2
opt asmopt_on

	line	176
	
l2895:	
;TimerWLC.c: 176: update_display();
	fcall	_update_display
	line	173
	
l2897:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_count),f
	
l2899:	
	movlw	(06h)
	subwf	(_count),w
	skipc
	goto	u2881
	goto	u2880
u2881:
	goto	l2893
u2880:
	goto	l2901
	
l201:	
	line	179
	
l2901:	
;TimerWLC.c: 177: }
;TimerWLC.c: 179: timer++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_timer),f
	goto	l2903
	line	180
	
l198:	
	line	171
	
l2903:	
	movf	(_timer),w
	subwf	(_Off_Timer),w
	skipnc
	goto	u2891
	goto	u2890
u2891:
	goto	l2887
u2890:
	goto	l2913
	
l202:	
	line	181
;TimerWLC.c: 180: }
;TimerWLC.c: 181: }
	goto	l2913
	line	182
	
l197:	
	line	184
	
l2905:	
;TimerWLC.c: 182: else
;TimerWLC.c: 183: {
;TimerWLC.c: 184: count++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_count),f
	line	185
	
l2907:	
;TimerWLC.c: 185: if(count >= 6)
	movlw	(06h)
	subwf	(_count),w
	skipc
	goto	u2901
	goto	u2900
u2901:
	goto	l2913
u2900:
	line	187
	
l2909:	
;TimerWLC.c: 186: {
;TimerWLC.c: 187: timer++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_timer),f
	line	188
	
l2911:	
;TimerWLC.c: 188: count = 0;
	clrf	(_count)
	goto	l2913
	line	189
	
l204:	
	goto	l2913
	line	190
	
l203:	
	goto	l2913
	line	191
	
l196:	
	line	214
	
l2913:	
;TimerWLC.c: 189: }
;TimerWLC.c: 190: }
;TimerWLC.c: 191: }
;TimerWLC.c: 214: update_display();
	fcall	_update_display
	line	215
	
l2915:	
;TimerWLC.c: 215: _delay(1000000);
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u2927:
	decfsz	((??_main+0)+0),f
	goto	u2927
	decfsz	((??_main+0)+0+1),f
	goto	u2927
	decfsz	((??_main+0)+0+2),f
	goto	u2927
	nop2
opt asmopt_on

	goto	l2803
	line	216
	
l205:	
	line	85
	goto	l2803
	
l206:	
	line	217
	
l207:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_update_display

;; *************** function _update_display *****************
;; Defined at:
;;		line 401 in file "E:\Study Material\XC8 PROJECTS\New WLC3PH\TimerWLC.c"
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
;;      Temps:          0       1       0
;;      Totals:         0       1       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_LCDByte
;;		_LCDGotoXY
;;		_LCDWriteString
;;		_display_lower_tank
;;		_display_upper_tank
;;		_phase_display
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	401
global __ptext1
__ptext1:	;psect for function _update_display
psect	text1
	file	"E:\Study Material\XC8 PROJECTS\New WLC3PH\TimerWLC.c"
	line	401
	global	__size_of_update_display
	__size_of_update_display	equ	__end_of_update_display-_update_display
	
_update_display:	
;incstack = 0
	opt	stack 2
; Regs used in _update_display: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	404
	
l2699:	
;TimerWLC.c: 404: (LCDByte(0b00000001,0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDByte@isdata)
	movlw	(01h)
	fcall	_LCDByte
	line	406
	
l2701:	
;TimerWLC.c: 406: LCDGotoXY(0,0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDGotoXY@y)
	movlw	(0)
	fcall	_LCDGotoXY
	line	407
	
l2703:	
;TimerWLC.c: 407: LCDWriteString("UPPER TANK-");
	movlw	((STR_18)-__stringbase)&0ffh
	fcall	_LCDWriteString
	line	408
	
l2705:	
;TimerWLC.c: 408: display_upper_tank();
	fcall	_display_upper_tank
	line	411
	
l2707:	
;TimerWLC.c: 411: LCDGotoXY(0,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDGotoXY@y)
	incf	(LCDGotoXY@y),f
	movlw	(0)
	fcall	_LCDGotoXY
	line	412
	
l2709:	
;TimerWLC.c: 412: LCDWriteString("LOWER TANK-");
	movlw	((STR_19)-__stringbase)&0ffh
	fcall	_LCDWriteString
	line	413
	
l2711:	
;TimerWLC.c: 413: display_lower_tank();
	fcall	_display_lower_tank
	line	418
	
l2713:	
;TimerWLC.c: 418: phase_display();
	fcall	_phase_display
	line	421
	
l2715:	
;TimerWLC.c: 421: LCDGotoXY(0,3);
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_update_display+0)+0
	movf	(??_update_display+0)+0,w
	movwf	(LCDGotoXY@y)
	movlw	(0)
	fcall	_LCDGotoXY
	line	422
	
l2717:	
;TimerWLC.c: 422: LCDWriteString("MOTOR-");
	movlw	((STR_20)-__stringbase)&0ffh
	fcall	_LCDWriteString
	line	423
	
l2719:	
;TimerWLC.c: 423: if(lp_flag == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lp_flag),w
	xorlw	01h
	skipz
	goto	u2581
	goto	u2580
u2581:
	goto	l2723
u2580:
	line	424
	
l2721:	
;TimerWLC.c: 424: LCDWriteString("ON");
	movlw	((STR_21)-__stringbase)&0ffh
	fcall	_LCDWriteString
	goto	l256
	line	425
	
l255:	
	line	426
	
l2723:	
;TimerWLC.c: 425: else
;TimerWLC.c: 426: LCDWriteString("OFF");
	movlw	((STR_22)-__stringbase)&0ffh
	fcall	_LCDWriteString
	
l256:	
	line	428
;TimerWLC.c: 428: LCDWriteString(" COM.-");
	movlw	((STR_23)-__stringbase)&0ffh
	fcall	_LCDWriteString
	line	429
	
l2725:	
;TimerWLC.c: 429: if(txr_not_received <= 20)
	movlw	(015h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_txr_not_received),w
	skipnc
	goto	u2591
	goto	u2590
u2591:
	goto	l2729
u2590:
	line	430
	
l2727:	
;TimerWLC.c: 430: LCDWriteString("ON");
	movlw	((STR_24)-__stringbase)&0ffh
	fcall	_LCDWriteString
	goto	l259
	line	431
	
l257:	
	line	432
	
l2729:	
;TimerWLC.c: 431: else
;TimerWLC.c: 432: LCDWriteString("OFF");
	movlw	((STR_25)-__stringbase)&0ffh
	fcall	_LCDWriteString
	goto	l259
	
l258:	
	line	433
	
l259:	
	return
	opt stack 0
GLOBAL	__end_of_update_display
	__end_of_update_display:
	signat	_update_display,88
	global	_phase_display

;; *************** function _phase_display *****************
;; Defined at:
;;		line 368 in file "E:\Study Material\XC8 PROJECTS\New WLC3PH\TimerWLC.c"
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
;;      Temps:          0       3       0
;;      Totals:         0       3       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_LCDGotoXY
;;		_LCDWriteInt
;;		_LCDWriteString
;; This function is called by:
;;		_update_display
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	368
global __ptext2
__ptext2:	;psect for function _phase_display
psect	text2
	file	"E:\Study Material\XC8 PROJECTS\New WLC3PH\TimerWLC.c"
	line	368
	global	__size_of_phase_display
	__size_of_phase_display	equ	__end_of_phase_display-_phase_display
	
_phase_display:	
;incstack = 0
	opt	stack 2
; Regs used in _phase_display: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	370
	
l2489:	
;TimerWLC.c: 370: LCDGotoXY(0,2);
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_phase_display+0)+0
	movf	(??_phase_display+0)+0,w
	movwf	(LCDGotoXY@y)
	movlw	(0)
	fcall	_LCDGotoXY
	line	371
	
l2491:	
;TimerWLC.c: 371: if(lp_flag == 1 && motor_flag == 1 && TIMER_NEEDED == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lp_flag),w
	xorlw	01h
	skipz
	goto	u2371
	goto	u2370
u2371:
	goto	l2507
u2370:
	
l2493:	
	movf	(_motor_flag),w
	xorlw	01h
	skipz
	goto	u2381
	goto	u2380
u2381:
	goto	l2507
u2380:
	
l2495:	
	movf	(_TIMER_NEEDED),w
	xorlw	01h
	skipz
	goto	u2391
	goto	u2390
u2391:
	goto	l2507
u2390:
	line	373
	
l2497:	
;TimerWLC.c: 372: {
;TimerWLC.c: 373: LCDWriteString("MOTOR OFF IN ");
	movlw	((STR_9)-__stringbase)&0ffh
	fcall	_LCDWriteString
	line	374
	
l2499:	
;TimerWLC.c: 374: Elapsed_Time = On_Timer - timer;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decf	(_timer),w
	xorlw	0ffh
	addwf	(_On_Timer),w
	movwf	(??_phase_display+0)+0
	movf	(??_phase_display+0)+0,w
	movwf	(_Elapsed_Time)
	line	375
	
l2501:	
;TimerWLC.c: 375: LCDWriteInt(Elapsed_Time,2);
	movf	(_Elapsed_Time),w
	movwf	(??_phase_display+0)+0
	clrf	(??_phase_display+0)+0+1
	movf	0+(??_phase_display+0)+0,w
	movwf	(LCDWriteInt@val)
	movf	1+(??_phase_display+0)+0,w
	movwf	(LCDWriteInt@val+1)
	movlw	(02h)
	movwf	(??_phase_display+2)+0
	movf	(??_phase_display+2)+0,w
	movwf	(LCDWriteInt@field_length)
	fcall	_LCDWriteInt
	line	376
	
l2503:	
;TimerWLC.c: 376: LCDWriteString(" Min");
	movlw	((STR_10)-__stringbase)&0ffh
	fcall	_LCDWriteString
	goto	l250
	line	377
	
l2505:	
;TimerWLC.c: 377: return;
	goto	l250
	line	378
	
l249:	
	line	379
	
l2507:	
;TimerWLC.c: 378: }
;TimerWLC.c: 379: if(lp_flag == 0 && motor_flag == 1 && TIMER_NEEDED == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lp_flag),f
	skipz
	goto	u2401
	goto	u2400
u2401:
	goto	l2523
u2400:
	
l2509:	
	movf	(_motor_flag),w
	xorlw	01h
	skipz
	goto	u2411
	goto	u2410
u2411:
	goto	l2523
u2410:
	
l2511:	
	movf	(_TIMER_NEEDED),w
	xorlw	01h
	skipz
	goto	u2421
	goto	u2420
u2421:
	goto	l2523
u2420:
	line	381
	
l2513:	
;TimerWLC.c: 380: {
;TimerWLC.c: 381: LCDWriteString("MOTOR ON IN ");
	movlw	((STR_11)-__stringbase)&0ffh
	fcall	_LCDWriteString
	line	382
	
l2515:	
;TimerWLC.c: 382: Elapsed_Time = Off_Timer - timer;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decf	(_timer),w
	xorlw	0ffh
	addwf	(_Off_Timer),w
	movwf	(??_phase_display+0)+0
	movf	(??_phase_display+0)+0,w
	movwf	(_Elapsed_Time)
	line	383
	
l2517:	
;TimerWLC.c: 383: LCDWriteInt(Elapsed_Time,2);
	movf	(_Elapsed_Time),w
	movwf	(??_phase_display+0)+0
	clrf	(??_phase_display+0)+0+1
	movf	0+(??_phase_display+0)+0,w
	movwf	(LCDWriteInt@val)
	movf	1+(??_phase_display+0)+0,w
	movwf	(LCDWriteInt@val+1)
	movlw	(02h)
	movwf	(??_phase_display+2)+0
	movf	(??_phase_display+2)+0,w
	movwf	(LCDWriteInt@field_length)
	fcall	_LCDWriteInt
	line	384
	
l2519:	
;TimerWLC.c: 384: LCDWriteString(" Min");
	movlw	((STR_12)-__stringbase)&0ffh
	fcall	_LCDWriteString
	goto	l250
	line	385
	
l2521:	
;TimerWLC.c: 385: return;
	goto	l250
	line	386
	
l251:	
	line	387
	
l2523:	
;TimerWLC.c: 386: }
;TimerWLC.c: 387: if(lp_flag == 0 && motor_flag == 0 && TIMER_NEEDED == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lp_flag),f
	skipz
	goto	u2431
	goto	u2430
u2431:
	goto	l2541
u2430:
	
l2525:	
	movf	(_motor_flag),f
	skipz
	goto	u2441
	goto	u2440
u2441:
	goto	l2541
u2440:
	
l2527:	
	movf	(_TIMER_NEEDED),w
	xorlw	01h
	skipz
	goto	u2451
	goto	u2450
u2451:
	goto	l2541
u2450:
	line	389
	
l2529:	
;TimerWLC.c: 388: {
;TimerWLC.c: 389: LCDWriteString("ON = ");
	movlw	((STR_13)-__stringbase)&0ffh
	fcall	_LCDWriteString
	line	390
	
l2531:	
;TimerWLC.c: 390: LCDWriteInt(On_Timer,2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_On_Timer),w
	movwf	(??_phase_display+0)+0
	clrf	(??_phase_display+0)+0+1
	movf	0+(??_phase_display+0)+0,w
	movwf	(LCDWriteInt@val)
	movf	1+(??_phase_display+0)+0,w
	movwf	(LCDWriteInt@val+1)
	movlw	(02h)
	movwf	(??_phase_display+2)+0
	movf	(??_phase_display+2)+0,w
	movwf	(LCDWriteInt@field_length)
	fcall	_LCDWriteInt
	line	391
	
l2533:	
;TimerWLC.c: 391: LCDWriteString(" M/");
	movlw	((STR_14)-__stringbase)&0ffh
	fcall	_LCDWriteString
	line	392
	
l2535:	
;TimerWLC.c: 392: LCDWriteString("OFF = ");
	movlw	((STR_15)-__stringbase)&0ffh
	fcall	_LCDWriteString
	line	393
	
l2537:	
;TimerWLC.c: 393: LCDWriteInt(Off_Timer,2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Off_Timer),w
	movwf	(??_phase_display+0)+0
	clrf	(??_phase_display+0)+0+1
	movf	0+(??_phase_display+0)+0,w
	movwf	(LCDWriteInt@val)
	movf	1+(??_phase_display+0)+0,w
	movwf	(LCDWriteInt@val+1)
	movlw	(02h)
	movwf	(??_phase_display+2)+0
	movf	(??_phase_display+2)+0,w
	movwf	(LCDWriteInt@field_length)
	fcall	_LCDWriteInt
	line	394
;TimerWLC.c: 394: LCDWriteString(" M");
	movlw	((STR_16)-__stringbase)&0ffh
	fcall	_LCDWriteString
	goto	l250
	line	395
	
l2539:	
;TimerWLC.c: 395: return;
	goto	l250
	line	396
	
l252:	
	line	397
	
l2541:	
;TimerWLC.c: 396: }
;TimerWLC.c: 397: LCDWriteString("TIMER OFF");
	movlw	((STR_17)-__stringbase)&0ffh
	fcall	_LCDWriteString
	goto	l250
	line	398
	
l2543:	
	line	399
;TimerWLC.c: 398: return;
	
l250:	
	return
	opt stack 0
GLOBAL	__end_of_phase_display
	__end_of_phase_display:
	signat	_phase_display,88
	global	_LCDWriteInt

;; *************** function _LCDWriteInt *****************
;; Defined at:
;;		line 308 in file "E:\Study Material\XC8 PROJECTS\New WLC3PH\lcd_hd44780_pic16.c"
;; Parameters:    Size  Location     Type
;;  val             2   10[BANK0 ] int 
;;  field_length    1   12[BANK0 ] char 
;; Auto vars:     Size  Location     Type
;;  str             5   15[BANK0 ] unsigned char [5]
;;  i               2   22[BANK0 ] int 
;;  j               2   20[BANK0 ] int 
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
;;      Temps:          0       2       0
;;      Totals:         0      14       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LCDByte
;;		___awdiv
;;		___awmod
;; This function is called by:
;;		_phase_display
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\New WLC3PH\lcd_hd44780_pic16.c"
	line	308
global __ptext3
__ptext3:	;psect for function _LCDWriteInt
psect	text3
	file	"E:\Study Material\XC8 PROJECTS\New WLC3PH\lcd_hd44780_pic16.c"
	line	308
	global	__size_of_LCDWriteInt
	__size_of_LCDWriteInt	equ	__end_of_LCDWriteInt-_LCDWriteInt
	
_LCDWriteInt:	
;incstack = 0
	opt	stack 2
; Regs used in _LCDWriteInt: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	321
	
l2407:	
;lcd_hd44780_pic16.c: 321: char str[5]={0,0,0,0,0};
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
	line	322
	
l2409:	
;lcd_hd44780_pic16.c: 322: int i=4,j=0;
	movlw	low(04h)
	movwf	(LCDWriteInt@i)
	movlw	high(04h)
	movwf	((LCDWriteInt@i))+1
	
l2411:	
	clrf	(LCDWriteInt@j)
	clrf	(LCDWriteInt@j+1)
	line	325
	
l2413:	
;lcd_hd44780_pic16.c: 325: if(val<0)
	btfss	(LCDWriteInt@val+1),7
	goto	u2261
	goto	u2260
u2261:
	goto	l2425
u2260:
	line	327
	
l2415:	
;lcd_hd44780_pic16.c: 326: {
;lcd_hd44780_pic16.c: 327: (LCDByte('-',1));
	clrf	(LCDByte@isdata)
	incf	(LCDByte@isdata),f
	movlw	(02Dh)
	fcall	_LCDByte
	line	328
	
l2417:	
;lcd_hd44780_pic16.c: 328: val=val*-1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	comf	(LCDWriteInt@val),f
	comf	(LCDWriteInt@val+1),f
	incf	(LCDWriteInt@val),f
	skipnz
	incf	(LCDWriteInt@val+1),f
	goto	l2425
	line	329
	
l48:	
	line	331
;lcd_hd44780_pic16.c: 329: }
;lcd_hd44780_pic16.c: 331: while(val)
	goto	l2425
	
l50:	
	line	333
	
l2419:	
;lcd_hd44780_pic16.c: 332: {
;lcd_hd44780_pic16.c: 333: str[i]=val%10;
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	movwf	(??_LCDWriteInt+0)+0
	movf	(LCDWriteInt@i),w
	addlw	LCDWriteInt@str&0ffh
	movwf	fsr0
	movf	(??_LCDWriteInt+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	334
	
l2421:	
;lcd_hd44780_pic16.c: 334: val=val/10;
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awdiv)),w
	clrf	(LCDWriteInt@val+1)
	addwf	(LCDWriteInt@val+1)
	movf	(0+(?___awdiv)),w
	clrf	(LCDWriteInt@val)
	addwf	(LCDWriteInt@val)

	line	335
	
l2423:	
;lcd_hd44780_pic16.c: 335: i--;
	movlw	low(-1)
	addwf	(LCDWriteInt@i),f
	skipnc
	incf	(LCDWriteInt@i+1),f
	movlw	high(-1)
	addwf	(LCDWriteInt@i+1),f
	goto	l2425
	line	336
	
l49:	
	line	331
	
l2425:	
	movf	((LCDWriteInt@val+1)),w
	iorwf	((LCDWriteInt@val)),w
	skipz
	goto	u2271
	goto	u2270
u2271:
	goto	l2419
u2270:
	goto	l2427
	
l51:	
	line	337
	
l2427:	
;lcd_hd44780_pic16.c: 336: }
;lcd_hd44780_pic16.c: 337: if(field_length==-1)
	movf	(LCDWriteInt@field_length),w
	xorlw	-1
	skipz
	goto	u2281
	goto	u2280
u2281:
	goto	l2435
u2280:
	goto	l2433
	line	338
	
l2429:	
;lcd_hd44780_pic16.c: 338: while(str[j]==0) j++;
	goto	l2433
	
l54:	
	
l2431:	
	movlw	low(01h)
	addwf	(LCDWriteInt@j),f
	skipnc
	incf	(LCDWriteInt@j+1),f
	movlw	high(01h)
	addwf	(LCDWriteInt@j+1),f
	goto	l2433
	
l53:	
	
l2433:	
	movf	(LCDWriteInt@j),w
	addlw	LCDWriteInt@str&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u2291
	goto	u2290
u2291:
	goto	l2431
u2290:
	goto	l56
	
l55:	
	goto	l56
	line	339
	
l52:	
	line	340
	
l2435:	
;lcd_hd44780_pic16.c: 339: else
;lcd_hd44780_pic16.c: 340: j=5-field_length;
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
	line	343
;lcd_hd44780_pic16.c: 343: for(i=j;i<5;i++)
	movf	(LCDWriteInt@j+1),w
	clrf	(LCDWriteInt@i+1)
	addwf	(LCDWriteInt@i+1)
	movf	(LCDWriteInt@j),w
	clrf	(LCDWriteInt@i)
	addwf	(LCDWriteInt@i)

	
l2437:	
	movf	(LCDWriteInt@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2305
	movlw	low(05h)
	subwf	(LCDWriteInt@i),w
u2305:

	skipc
	goto	u2301
	goto	u2300
u2301:
	goto	l2441
u2300:
	goto	l59
	
l2439:	
	goto	l59
	line	344
	
l57:	
	line	345
	
l2441:	
;lcd_hd44780_pic16.c: 344: {
;lcd_hd44780_pic16.c: 345: (LCDByte(48+str[i],1));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDByte@isdata)
	incf	(LCDByte@isdata),f
	movf	(LCDWriteInt@i),w
	addlw	LCDWriteInt@str&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	addlw	030h
	fcall	_LCDByte
	line	343
	
l2443:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(LCDWriteInt@i),f
	skipnc
	incf	(LCDWriteInt@i+1),f
	movlw	high(01h)
	addwf	(LCDWriteInt@i+1),f
	
l2445:	
	movf	(LCDWriteInt@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2315
	movlw	low(05h)
	subwf	(LCDWriteInt@i),w
u2315:

	skipc
	goto	u2311
	goto	u2310
u2311:
	goto	l2441
u2310:
	goto	l59
	
l58:	
	line	347
	
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
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    5[BANK0 ] unsigned char 
;;  counter         1    4[BANK0 ] unsigned char 
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
;;      Temps:          1       0       0
;;      Totals:         1       6       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
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
	opt	stack 3
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	13
	
l2345:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awmod@sign)
	line	14
	
l2347:	
	btfss	(___awmod@dividend+1),7
	goto	u2131
	goto	u2130
u2131:
	goto	l2353
u2130:
	line	15
	
l2349:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	16
	
l2351:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	goto	l2353
	line	17
	
l489:	
	line	18
	
l2353:	
	btfss	(___awmod@divisor+1),7
	goto	u2141
	goto	u2140
u2141:
	goto	l2357
u2140:
	line	19
	
l2355:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l2357
	
l490:	
	line	20
	
l2357:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2151
	goto	u2150
u2151:
	goto	l2375
u2150:
	line	21
	
l2359:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	22
	goto	l2365
	
l493:	
	line	23
	
l2361:	
	movlw	01h
	
u2165:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2165
	line	24
	
l2363:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l2365
	line	25
	
l492:	
	line	22
	
l2365:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2171
	goto	u2170
u2171:
	goto	l2361
u2170:
	goto	l2367
	
l494:	
	goto	l2367
	line	26
	
l495:	
	line	27
	
l2367:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2185
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2185:
	skipc
	goto	u2181
	goto	u2180
u2181:
	goto	l2371
u2180:
	line	28
	
l2369:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l2371
	
l496:	
	line	29
	
l2371:	
	movlw	01h
	
u2195:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2195
	line	30
	
l2373:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2201
	goto	u2200
u2201:
	goto	l2367
u2200:
	goto	l2375
	
l497:	
	goto	l2375
	line	31
	
l491:	
	line	32
	
l2375:	
	movf	(___awmod@sign),w
	skipz
	goto	u2210
	goto	l2379
u2210:
	line	33
	
l2377:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l2379
	
l498:	
	line	34
	
l2379:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l499
	
l2381:	
	line	35
	
l499:	
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
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[BANK0 ] int 
;;  sign            1    5[BANK0 ] unsigned char 
;;  counter         1    4[BANK0 ] unsigned char 
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
;;      Temps:          1       0       0
;;      Totals:         1       8       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
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
	opt	stack 3
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l2301:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@sign)
	line	15
	
l2303:	
	btfss	(___awdiv@divisor+1),7
	goto	u2031
	goto	u2030
u2031:
	goto	l2309
u2030:
	line	16
	
l2305:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l2307:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	goto	l2309
	line	18
	
l476:	
	line	19
	
l2309:	
	btfss	(___awdiv@dividend+1),7
	goto	u2041
	goto	u2040
u2041:
	goto	l2315
u2040:
	line	20
	
l2311:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l2313:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l2315
	line	22
	
l477:	
	line	23
	
l2315:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l2317:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2051
	goto	u2050
u2051:
	goto	l2337
u2050:
	line	25
	
l2319:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l2325
	
l480:	
	line	27
	
l2321:	
	movlw	01h
	
u2065:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2065
	line	28
	
l2323:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l2325
	line	29
	
l479:	
	line	26
	
l2325:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2071
	goto	u2070
u2071:
	goto	l2321
u2070:
	goto	l2327
	
l481:	
	goto	l2327
	line	30
	
l482:	
	line	31
	
l2327:	
	movlw	01h
	
u2085:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2085
	line	32
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2095
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2095:
	skipc
	goto	u2091
	goto	u2090
u2091:
	goto	l2333
u2090:
	line	33
	
l2329:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
l2331:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l2333
	line	35
	
l483:	
	line	36
	
l2333:	
	movlw	01h
	
u2105:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2105
	line	37
	
l2335:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2111
	goto	u2110
u2111:
	goto	l2327
u2110:
	goto	l2337
	
l484:	
	goto	l2337
	line	38
	
l478:	
	line	39
	
l2337:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2120
	goto	l2341
u2120:
	line	40
	
l2339:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l2341
	
l485:	
	line	41
	
l2341:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l486
	
l2343:	
	line	42
	
l486:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_display_upper_tank

;; *************** function _display_upper_tank *****************
;; Defined at:
;;		line 340 in file "E:\Study Material\XC8 PROJECTS\New WLC3PH\TimerWLC.c"
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
;;		_LCDWriteString
;; This function is called by:
;;		_update_display
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\New WLC3PH\TimerWLC.c"
	line	340
global __ptext6
__ptext6:	;psect for function _display_upper_tank
psect	text6
	file	"E:\Study Material\XC8 PROJECTS\New WLC3PH\TimerWLC.c"
	line	340
	global	__size_of_display_upper_tank
	__size_of_display_upper_tank	equ	__end_of_display_upper_tank-_display_upper_tank
	
_display_upper_tank:	
;incstack = 0
	opt	stack 2
; Regs used in _display_upper_tank: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	343
	
l2465:	
;TimerWLC.c: 343: if(uu == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_uu),w
	xorlw	01h
	skipz
	goto	u2331
	goto	u2330
u2331:
	goto	l2469
u2330:
	line	344
	
l2467:	
;TimerWLC.c: 344: LCDWriteString("L1 %0");
	movlw	((STR_1)-__stringbase)&0ffh
	fcall	_LCDWriteString
	goto	l2471
	line	345
	
l235:	
	line	346
	
l2469:	
;TimerWLC.c: 345: else
;TimerWLC.c: 346: LCDWriteString("L1 %1");
	movlw	((STR_2)-__stringbase)&0ffh
	fcall	_LCDWriteString
	goto	l2471
	
l236:	
	line	348
	
l2471:	
;TimerWLC.c: 348: if(ul == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ul),w
	xorlw	01h
	skipz
	goto	u2341
	goto	u2340
u2341:
	goto	l2475
u2340:
	line	349
	
l2473:	
;TimerWLC.c: 349: LCDWriteString(" L2 %0");
	movlw	((STR_3)-__stringbase)&0ffh
	fcall	_LCDWriteString
	goto	l239
	line	350
	
l237:	
	line	351
	
l2475:	
;TimerWLC.c: 350: else
;TimerWLC.c: 351: LCDWriteString(" L2 %1");
	movlw	((STR_4)-__stringbase)&0ffh
	fcall	_LCDWriteString
	goto	l239
	
l238:	
	line	352
	
l239:	
	return
	opt stack 0
GLOBAL	__end_of_display_upper_tank
	__end_of_display_upper_tank:
	signat	_display_upper_tank,88
	global	_display_lower_tank

;; *************** function _display_lower_tank *****************
;; Defined at:
;;		line 354 in file "E:\Study Material\XC8 PROJECTS\New WLC3PH\TimerWLC.c"
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
;;		_LCDWriteString
;; This function is called by:
;;		_update_display
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	line	354
global __ptext7
__ptext7:	;psect for function _display_lower_tank
psect	text7
	file	"E:\Study Material\XC8 PROJECTS\New WLC3PH\TimerWLC.c"
	line	354
	global	__size_of_display_lower_tank
	__size_of_display_lower_tank	equ	__end_of_display_lower_tank-_display_lower_tank
	
_display_lower_tank:	
;incstack = 0
	opt	stack 2
; Regs used in _display_lower_tank: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	357
	
l2477:	
;TimerWLC.c: 357: if(lu == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_lu),w
	xorlw	01h
	skipz
	goto	u2351
	goto	u2350
u2351:
	goto	l2481
u2350:
	line	358
	
l2479:	
;TimerWLC.c: 358: LCDWriteString("L1 %0");
	movlw	((STR_5)-__stringbase)&0ffh
	fcall	_LCDWriteString
	goto	l2483
	line	359
	
l242:	
	line	360
	
l2481:	
;TimerWLC.c: 359: else
;TimerWLC.c: 360: LCDWriteString("L1 %1");
	movlw	((STR_6)-__stringbase)&0ffh
	fcall	_LCDWriteString
	goto	l2483
	
l243:	
	line	362
	
l2483:	
;TimerWLC.c: 362: if(ll == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ll),w
	xorlw	01h
	skipz
	goto	u2361
	goto	u2360
u2361:
	goto	l2487
u2360:
	line	363
	
l2485:	
;TimerWLC.c: 363: LCDWriteString(" L2 %0");
	movlw	((STR_7)-__stringbase)&0ffh
	fcall	_LCDWriteString
	goto	l246
	line	364
	
l244:	
	line	365
	
l2487:	
;TimerWLC.c: 364: else
;TimerWLC.c: 365: LCDWriteString(" L2 %1");
	movlw	((STR_8)-__stringbase)&0ffh
	fcall	_LCDWriteString
	goto	l246
	
l245:	
	line	366
	
l246:	
	return
	opt stack 0
GLOBAL	__end_of_display_lower_tank
	__end_of_display_lower_tank:
	signat	_display_lower_tank,88
	global	_motor_stop

;; *************** function _motor_stop *****************
;; Defined at:
;;		line 328 in file "E:\Study Material\XC8 PROJECTS\New WLC3PH\TimerWLC.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    5[COMMON] unsigned char 
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
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	line	328
global __ptext8
__ptext8:	;psect for function _motor_stop
psect	text8
	file	"E:\Study Material\XC8 PROJECTS\New WLC3PH\TimerWLC.c"
	line	328
	global	__size_of_motor_stop
	__size_of_motor_stop	equ	__end_of_motor_stop-_motor_stop
	
_motor_stop:	
;incstack = 0
	opt	stack 6
; Regs used in _motor_stop: [wreg+status,2+status,0]
	line	331
	
l2745:	
;TimerWLC.c: 330: char i;
;TimerWLC.c: 331: RB4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7	;volatile
	line	333
	
l2747:	
;TimerWLC.c: 333: for( i = 0; i <= 7; i++ )
	clrf	(motor_stop@i)
	
l2749:	
	movlw	(08h)
	subwf	(motor_stop@i),w
	skipc
	goto	u2621
	goto	u2620
u2621:
	goto	l2753
u2620:
	goto	l231
	
l2751:	
	goto	l231
	line	334
	
l230:	
	line	335
	
l2753:	
;TimerWLC.c: 334: {
;TimerWLC.c: 335: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_motor_stop+0)+0+2),f
movlw	19
movwf	((??_motor_stop+0)+0+1),f
	movlw	177
movwf	((??_motor_stop+0)+0),f
u2937:
	decfsz	((??_motor_stop+0)+0),f
	goto	u2937
	decfsz	((??_motor_stop+0)+0+1),f
	goto	u2937
	decfsz	((??_motor_stop+0)+0+2),f
	goto	u2937
	nop2
opt asmopt_on

	line	333
	
l2755:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_motor_stop+0)+0
	movf	(??_motor_stop+0)+0,w
	addwf	(motor_stop@i),f
	
l2757:	
	movlw	(08h)
	subwf	(motor_stop@i),w
	skipc
	goto	u2631
	goto	u2630
u2631:
	goto	l2753
u2630:
	
l231:	
	line	337
;TimerWLC.c: 336: }
;TimerWLC.c: 337: RB4 = 0;
	bcf	(52/8),(52)&7	;volatile
	line	338
	
l232:	
	return
	opt stack 0
GLOBAL	__end_of_motor_stop
	__end_of_motor_stop:
	signat	_motor_stop,88
	global	_motor_start

;; *************** function _motor_start *****************
;; Defined at:
;;		line 316 in file "E:\Study Material\XC8 PROJECTS\New WLC3PH\TimerWLC.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    5[COMMON] unsigned char 
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
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	line	316
global __ptext9
__ptext9:	;psect for function _motor_start
psect	text9
	file	"E:\Study Material\XC8 PROJECTS\New WLC3PH\TimerWLC.c"
	line	316
	global	__size_of_motor_start
	__size_of_motor_start	equ	__end_of_motor_start-_motor_start
	
_motor_start:	
;incstack = 0
	opt	stack 6
; Regs used in _motor_start: [wreg+status,2+status,0]
	line	319
	
l2731:	
;TimerWLC.c: 318: char i;
;TimerWLC.c: 319: RB3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(51/8),(51)&7	;volatile
	line	321
	
l2733:	
;TimerWLC.c: 321: for( i = 0; i <= 7; i++ )
	clrf	(motor_start@i)
	
l2735:	
	movlw	(08h)
	subwf	(motor_start@i),w
	skipc
	goto	u2601
	goto	u2600
u2601:
	goto	l2739
u2600:
	goto	l226
	
l2737:	
	goto	l226
	line	322
	
l225:	
	line	323
	
l2739:	
;TimerWLC.c: 322: {
;TimerWLC.c: 323: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_motor_start+0)+0+2),f
movlw	19
movwf	((??_motor_start+0)+0+1),f
	movlw	177
movwf	((??_motor_start+0)+0),f
u2947:
	decfsz	((??_motor_start+0)+0),f
	goto	u2947
	decfsz	((??_motor_start+0)+0+1),f
	goto	u2947
	decfsz	((??_motor_start+0)+0+2),f
	goto	u2947
	nop2
opt asmopt_on

	line	321
	
l2741:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_motor_start+0)+0
	movf	(??_motor_start+0)+0,w
	addwf	(motor_start@i),f
	
l2743:	
	movlw	(08h)
	subwf	(motor_start@i),w
	skipc
	goto	u2611
	goto	u2610
u2611:
	goto	l2739
u2610:
	
l226:	
	line	325
;TimerWLC.c: 324: }
;TimerWLC.c: 325: RB3 = 0;
	bcf	(51/8),(51)&7	;volatile
	line	326
	
l227:	
	return
	opt stack 0
GLOBAL	__end_of_motor_start
	__end_of_motor_start:
	signat	_motor_start,88
	global	_first_screen

;; *************** function _first_screen *****************
;; Defined at:
;;		line 435 in file "E:\Study Material\XC8 PROJECTS\New WLC3PH\TimerWLC.c"
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
;;      Temps:          0       3       0
;;      Totals:         0       3       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_LCDByte
;;		_LCDGotoXY
;;		_LCDWriteString
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	line	435
global __ptext10
__ptext10:	;psect for function _first_screen
psect	text10
	file	"E:\Study Material\XC8 PROJECTS\New WLC3PH\TimerWLC.c"
	line	435
	global	__size_of_first_screen
	__size_of_first_screen	equ	__end_of_first_screen-_first_screen
	
_first_screen:	
;incstack = 0
	opt	stack 3
; Regs used in _first_screen: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	438
	
l2621:	
;TimerWLC.c: 438: (LCDByte(0b00000001,0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDByte@isdata)
	movlw	(01h)
	fcall	_LCDByte
	line	439
	
l2623:	
;TimerWLC.c: 439: LCDGotoXY(0,0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDGotoXY@y)
	movlw	(0)
	fcall	_LCDGotoXY
	line	440
	
l2625:	
;TimerWLC.c: 440: LCDWriteString("--------------------");
	movlw	((STR_26)-__stringbase)&0ffh
	fcall	_LCDWriteString
	line	442
	
l2627:	
;TimerWLC.c: 442: LCDGotoXY(0,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDGotoXY@y)
	incf	(LCDGotoXY@y),f
	movlw	(0)
	fcall	_LCDGotoXY
	line	443
	
l2629:	
;TimerWLC.c: 443: LCDWriteString("       EAGLE        ");
	movlw	((STR_27)-__stringbase)&0ffh
	fcall	_LCDWriteString
	line	445
	
l2631:	
;TimerWLC.c: 445: LCDGotoXY(0,2);
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_first_screen+0)+0
	movf	(??_first_screen+0)+0,w
	movwf	(LCDGotoXY@y)
	movlw	(0)
	fcall	_LCDGotoXY
	line	446
	
l2633:	
;TimerWLC.c: 446: LCDWriteString("  CONTROL SYSTEMS   ");
	movlw	((STR_28)-__stringbase)&0ffh
	fcall	_LCDWriteString
	line	449
	
l2635:	
;TimerWLC.c: 449: LCDGotoXY(0,3);
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_first_screen+0)+0
	movf	(??_first_screen+0)+0,w
	movwf	(LCDGotoXY@y)
	movlw	(0)
	fcall	_LCDGotoXY
	line	450
	
l2637:	
;TimerWLC.c: 450: LCDWriteString("--------------------");
	movlw	((STR_29)-__stringbase)&0ffh
	fcall	_LCDWriteString
	line	452
	
l2639:	
;TimerWLC.c: 452: for(count = 0; count <= 4; count++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_count)
	
l2641:	
	movlw	(05h)
	subwf	(_count),w
	skipc
	goto	u2551
	goto	u2550
u2551:
	goto	l262
u2550:
	goto	l2653
	
l2643:	
	goto	l2653
	line	453
	
l262:	
	line	454
;TimerWLC.c: 453: {
;TimerWLC.c: 454: RC4 = 1;
	bsf	(60/8),(60)&7	;volatile
	line	455
	
l2645:	
;TimerWLC.c: 455: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_first_screen+0)+0+2),f
movlw	19
movwf	((??_first_screen+0)+0+1),f
	movlw	177
movwf	((??_first_screen+0)+0),f
u2957:
	decfsz	((??_first_screen+0)+0),f
	goto	u2957
	decfsz	((??_first_screen+0)+0+1),f
	goto	u2957
	decfsz	((??_first_screen+0)+0+2),f
	goto	u2957
	nop2
opt asmopt_on

	line	456
	
l2647:	
;TimerWLC.c: 456: RC4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7	;volatile
	line	457
;TimerWLC.c: 457: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_first_screen+0)+0+2),f
movlw	19
movwf	((??_first_screen+0)+0+1),f
	movlw	177
movwf	((??_first_screen+0)+0),f
u2967:
	decfsz	((??_first_screen+0)+0),f
	goto	u2967
	decfsz	((??_first_screen+0)+0+1),f
	goto	u2967
	decfsz	((??_first_screen+0)+0+2),f
	goto	u2967
	nop2
opt asmopt_on

	line	452
	
l2649:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_first_screen+0)+0
	movf	(??_first_screen+0)+0,w
	addwf	(_count),f
	
l2651:	
	movlw	(05h)
	subwf	(_count),w
	skipc
	goto	u2561
	goto	u2560
u2561:
	goto	l262
u2560:
	goto	l2653
	
l263:	
	line	459
	
l2653:	
;TimerWLC.c: 458: }
;TimerWLC.c: 459: count = 0;
	clrf	(_count)
	line	461
	
l2655:	
;TimerWLC.c: 461: (LCDByte(0b00000001,0));
	clrf	(LCDByte@isdata)
	movlw	(01h)
	fcall	_LCDByte
	line	463
	
l2657:	
;TimerWLC.c: 463: _delay(1000000);
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_first_screen+0)+0+2),f
movlw	19
movwf	((??_first_screen+0)+0+1),f
	movlw	177
movwf	((??_first_screen+0)+0),f
u2977:
	decfsz	((??_first_screen+0)+0),f
	goto	u2977
	decfsz	((??_first_screen+0)+0+1),f
	goto	u2977
	decfsz	((??_first_screen+0)+0+2),f
	goto	u2977
	nop2
opt asmopt_on

	line	465
	
l2659:	
;TimerWLC.c: 465: LCDGotoXY(0,0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDGotoXY@y)
	movlw	(0)
	fcall	_LCDGotoXY
	line	466
	
l2661:	
;TimerWLC.c: 466: LCDWriteString("--------------------");
	movlw	((STR_30)-__stringbase)&0ffh
	fcall	_LCDWriteString
	line	468
	
l2663:	
;TimerWLC.c: 468: LCDGotoXY(0,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDGotoXY@y)
	incf	(LCDGotoXY@y),f
	movlw	(0)
	fcall	_LCDGotoXY
	line	469
	
l2665:	
;TimerWLC.c: 469: LCDWriteString("   WIRELESS WATER   ");
	movlw	((STR_31)-__stringbase)&0ffh
	fcall	_LCDWriteString
	line	471
	
l2667:	
;TimerWLC.c: 471: LCDGotoXY(0,2);
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_first_screen+0)+0
	movf	(??_first_screen+0)+0,w
	movwf	(LCDGotoXY@y)
	movlw	(0)
	fcall	_LCDGotoXY
	line	472
	
l2669:	
;TimerWLC.c: 472: LCDWriteString("  LEVEL CONTROLLER  ");
	movlw	((STR_32)-__stringbase)&0ffh
	fcall	_LCDWriteString
	line	475
	
l2671:	
;TimerWLC.c: 475: LCDGotoXY(0,3);
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_first_screen+0)+0
	movf	(??_first_screen+0)+0,w
	movwf	(LCDGotoXY@y)
	movlw	(0)
	fcall	_LCDGotoXY
	line	476
	
l2673:	
;TimerWLC.c: 476: LCDWriteString("--------------------");
	movlw	((STR_33)-__stringbase)&0ffh
	fcall	_LCDWriteString
	line	478
	
l2675:	
;TimerWLC.c: 478: _delay(8000000);
	opt asmopt_off
movlw  41
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_first_screen+0)+0+2),f
movlw	150
movwf	((??_first_screen+0)+0+1),f
	movlw	166
movwf	((??_first_screen+0)+0),f
u2987:
	decfsz	((??_first_screen+0)+0),f
	goto	u2987
	decfsz	((??_first_screen+0)+0+1),f
	goto	u2987
	decfsz	((??_first_screen+0)+0+2),f
	goto	u2987
opt asmopt_on

	line	480
	
l2677:	
;TimerWLC.c: 480: (LCDByte(0b00000001,0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDByte@isdata)
	movlw	(01h)
	fcall	_LCDByte
	line	482
	
l2679:	
;TimerWLC.c: 482: _delay(1000000);
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_first_screen+0)+0+2),f
movlw	19
movwf	((??_first_screen+0)+0+1),f
	movlw	177
movwf	((??_first_screen+0)+0),f
u2997:
	decfsz	((??_first_screen+0)+0),f
	goto	u2997
	decfsz	((??_first_screen+0)+0+1),f
	goto	u2997
	decfsz	((??_first_screen+0)+0+2),f
	goto	u2997
	nop2
opt asmopt_on

	line	483
	
l264:	
	return
	opt stack 0
GLOBAL	__end_of_first_screen
	__end_of_first_screen:
	signat	_first_screen,88
	global	_LCDWriteString

;; *************** function _LCDWriteString *****************
;; Defined at:
;;		line 252 in file "E:\Study Material\XC8 PROJECTS\New WLC3PH\lcd_hd44780_pic16.c"
;; Parameters:    Size  Location     Type
;;  msg             1    wreg     PTR const unsigned char 
;;		 -> STR_33(21), STR_32(21), STR_31(21), STR_30(21), 
;;		 -> STR_29(21), STR_28(21), STR_27(21), STR_26(21), 
;;		 -> STR_25(4), STR_24(3), STR_23(7), STR_22(4), 
;;		 -> STR_21(3), STR_20(7), STR_19(12), STR_18(12), 
;;		 -> STR_17(10), STR_16(3), STR_15(7), STR_14(4), 
;;		 -> STR_13(6), STR_12(5), STR_11(13), STR_10(5), 
;;		 -> STR_9(14), STR_8(7), STR_7(7), STR_6(6), 
;;		 -> STR_5(6), STR_4(7), STR_3(7), STR_2(6), 
;;		 -> STR_1(6), 
;; Auto vars:     Size  Location     Type
;;  msg             1   12[BANK0 ] PTR const unsigned char 
;;		 -> STR_33(21), STR_32(21), STR_31(21), STR_30(21), 
;;		 -> STR_29(21), STR_28(21), STR_27(21), STR_26(21), 
;;		 -> STR_25(4), STR_24(3), STR_23(7), STR_22(4), 
;;		 -> STR_21(3), STR_20(7), STR_19(12), STR_18(12), 
;;		 -> STR_17(10), STR_16(3), STR_15(7), STR_14(4), 
;;		 -> STR_13(6), STR_12(5), STR_11(13), STR_10(5), 
;;		 -> STR_9(14), STR_8(7), STR_7(7), STR_6(6), 
;;		 -> STR_5(6), STR_4(7), STR_3(7), STR_2(6), 
;;		 -> STR_1(6), 
;;  cc              1   11[BANK0 ] char 
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
;;		_display_upper_tank
;;		_display_lower_tank
;;		_phase_display
;;		_update_display
;;		_first_screen
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\New WLC3PH\lcd_hd44780_pic16.c"
	line	252
global __ptext11
__ptext11:	;psect for function _LCDWriteString
psect	text11
	file	"E:\Study Material\XC8 PROJECTS\New WLC3PH\lcd_hd44780_pic16.c"
	line	252
	global	__size_of_LCDWriteString
	__size_of_LCDWriteString	equ	__end_of_LCDWriteString-_LCDWriteString
	
_LCDWriteString:	
;incstack = 0
	opt	stack 2
; Regs used in _LCDWriteString: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;LCDWriteString@msg stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCDWriteString@msg)
	line	282
	
l2383:	
;lcd_hd44780_pic16.c: 282: while(*msg!='\0')
	goto	l2405
	
l37:	
	line	285
	
l2385:	
;lcd_hd44780_pic16.c: 283: {
;lcd_hd44780_pic16.c: 285: if(*msg=='%')
	movf	(LCDWriteString@msg),w
	movwf	fsr0
	fcall	stringdir
	xorlw	025h
	skipz
	goto	u2221
	goto	u2220
u2221:
	goto	l2401
u2220:
	line	287
	
l2387:	
;lcd_hd44780_pic16.c: 286: {
;lcd_hd44780_pic16.c: 287: msg++;
	movlw	(01h)
	movwf	(??_LCDWriteString+0)+0
	movf	(??_LCDWriteString+0)+0,w
	addwf	(LCDWriteString@msg),f
	line	288
	
l2389:	
;lcd_hd44780_pic16.c: 288: int8_t cc=*msg-'0';
	movf	(LCDWriteString@msg),w
	movwf	fsr0
	fcall	stringdir
	addlw	-48
	movwf	(??_LCDWriteString+0)+0
	movf	(??_LCDWriteString+0)+0,w
	movwf	(LCDWriteString@cc)
	line	290
	
l2391:	
;lcd_hd44780_pic16.c: 290: if(cc>=0 && cc<=7)
	btfsc	(LCDWriteString@cc),7
	goto	u2231
	goto	u2230
u2231:
	goto	l2397
u2230:
	
l2393:	
	movf	(LCDWriteString@cc),w
	xorlw	80h
	addlw	-((08h)^80h)
	skipnc
	goto	u2241
	goto	u2240
u2241:
	goto	l2397
u2240:
	line	292
	
l2395:	
;lcd_hd44780_pic16.c: 291: {
;lcd_hd44780_pic16.c: 292: (LCDByte(cc,1));
	clrf	(LCDByte@isdata)
	incf	(LCDByte@isdata),f
	movf	(LCDWriteString@cc),w
	fcall	_LCDByte
	line	293
;lcd_hd44780_pic16.c: 293: }
	goto	l2403
	line	294
	
l39:	
	line	296
	
l2397:	
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
	
l2399:	
;lcd_hd44780_pic16.c: 297: (LCDByte(*msg,1));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDByte@isdata)
	incf	(LCDByte@isdata),f
	movf	(LCDWriteString@msg),w
	movwf	fsr0
	fcall	stringdir
	fcall	_LCDByte
	goto	l2403
	line	298
	
l40:	
	line	299
;lcd_hd44780_pic16.c: 298: }
;lcd_hd44780_pic16.c: 299: }
	goto	l2403
	line	300
	
l38:	
	line	302
	
l2401:	
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
	goto	l2403
	line	303
	
l41:	
	line	304
	
l2403:	
;lcd_hd44780_pic16.c: 303: }
;lcd_hd44780_pic16.c: 304: msg++;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCDWriteString+0)+0
	movf	(??_LCDWriteString+0)+0,w
	addwf	(LCDWriteString@msg),f
	goto	l2405
	line	305
	
l36:	
	line	282
	
l2405:	
	movf	(LCDWriteString@msg),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2251
	goto	u2250
u2251:
	goto	l2385
u2250:
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
;;		line 353 in file "E:\Study Material\XC8 PROJECTS\New WLC3PH\lcd_hd44780_pic16.c"
;; Parameters:    Size  Location     Type
;;  x               1    wreg     unsigned char 
;;  y               1   10[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  x               1   12[BANK0 ] unsigned char 
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
;;		_phase_display
;;		_update_display
;;		_first_screen
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	line	353
global __ptext12
__ptext12:	;psect for function _LCDGotoXY
psect	text12
	file	"E:\Study Material\XC8 PROJECTS\New WLC3PH\lcd_hd44780_pic16.c"
	line	353
	global	__size_of_LCDGotoXY
	__size_of_LCDGotoXY	equ	__end_of_LCDGotoXY-_LCDGotoXY
	
_LCDGotoXY:	
;incstack = 0
	opt	stack 2
; Regs used in _LCDGotoXY: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;LCDGotoXY@x stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCDGotoXY@x)
	line	355
	
l2447:	
;lcd_hd44780_pic16.c: 355: if(x>=20) return;
	movlw	(014h)
	subwf	(LCDGotoXY@x),w
	skipc
	goto	u2321
	goto	u2320
u2321:
	goto	l2457
u2320:
	goto	l63
	
l2449:	
	goto	l63
	
l62:	
	line	359
;lcd_hd44780_pic16.c: 359: switch(y)
	goto	l2457
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
	
l2451:	
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
	
l2453:	
;lcd_hd44780_pic16.c: 370: x+=0x54;
	movlw	(054h)
	movwf	(??_LCDGotoXY+0)+0
	movf	(??_LCDGotoXY+0)+0,w
	addwf	(LCDGotoXY@x),f
	line	371
;lcd_hd44780_pic16.c: 371: break;
	goto	l66
	line	372
	
l2455:	
;lcd_hd44780_pic16.c: 372: }
	goto	l66
	line	359
	
l64:	
	
l2457:	
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
movlw high(S2937)
movwf pclath
	movlw low(S2937)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
S2937:
	ljmp	l66
	ljmp	l67
	ljmp	l2451
	ljmp	l2453
psect	text12

	line	372
	
l66:	
	line	394
;lcd_hd44780_pic16.c: 394: x|=0b10000000;
	bsf	(LCDGotoXY@x)+(7/8),(7)&7
	line	395
	
l2459:	
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
	global	___bmul

;; *************** function ___bmul *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul8.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    5[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    1[BANK0 ] unsigned char 
;;  product         1    0[BANK0 ] unsigned char 
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
;;      Locals:         0       2       0
;;      Temps:          1       0       0
;;      Totals:         2       2       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul8.c"
	line	4
global __ptext13
__ptext13:	;psect for function ___bmul
psect	text13
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul8.c"
	line	4
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
;incstack = 0
	opt	stack 6
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___bmul@multiplier)
	line	6
	
l2759:	
	clrf	(___bmul@product)
	goto	l2761
	line	42
	
l371:	
	line	43
	
l2761:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u2641
	goto	u2640
u2641:
	goto	l2765
u2640:
	line	44
	
l2763:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	goto	l2765
	
l372:	
	line	45
	
l2765:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	46
	
l2767:	
	clrc
	rrf	(___bmul@multiplier),f

	line	47
	
l2769:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u2651
	goto	u2650
u2651:
	goto	l2761
u2650:
	goto	l2771
	
l373:	
	line	50
	
l2771:	
	movf	(___bmul@product),w
	goto	l374
	
l2773:	
	line	51
	
l374:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
	signat	___bmul,8313
	global	_ReadADC

;; *************** function _ReadADC *****************
;; Defined at:
;;		line 485 in file "E:\Study Material\XC8 PROJECTS\New WLC3PH\TimerWLC.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  result          2    8[BANK0 ] unsigned int 
;;  value           1    7[BANK0 ] unsigned char 
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
;;      Locals:         0       3       0
;;      Temps:          1       0       0
;;      Totals:         1       3       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lwdiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\New WLC3PH\TimerWLC.c"
	line	485
global __ptext14
__ptext14:	;psect for function _ReadADC
psect	text14
	file	"E:\Study Material\XC8 PROJECTS\New WLC3PH\TimerWLC.c"
	line	485
	global	__size_of_ReadADC
	__size_of_ReadADC	equ	__end_of_ReadADC-_ReadADC
	
_ReadADC:	
;incstack = 0
	opt	stack 5
; Regs used in _ReadADC: [wreg+status,2+status,0+pclath+cstack]
	line	487
	
l2681:	
;TimerWLC.c: 487: unsigned int result = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(ReadADC@result)
	clrf	(ReadADC@result+1)
	line	490
	
l2683:	
;TimerWLC.c: 488: char value;
;TimerWLC.c: 490: ADON=1;
	bsf	(248/8),(248)&7	;volatile
	line	492
	
l2685:	
;TimerWLC.c: 492: _delay((unsigned long)((100)*(4000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_ReadADC+0)+0,f
u3007:
decfsz	(??_ReadADC+0)+0,f
	goto	u3007
opt asmopt_on

	line	494
	
l2687:	
;TimerWLC.c: 494: GO=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7	;volatile
	line	495
;TimerWLC.c: 495: while(GO)
	goto	l267
	
l268:	
	line	498
;TimerWLC.c: 496: {
	
l267:	
	line	495
	btfsc	(250/8),(250)&7	;volatile
	goto	u2571
	goto	u2570
u2571:
	goto	l267
u2570:
	goto	l2689
	
l269:	
	line	499
	
l2689:	
;TimerWLC.c: 498: }
;TimerWLC.c: 499: result = ((ADRESH<<8)|ADRESL);
	movf	(30),w	;volatile
	clrf	(ReadADC@result+1)
	addwf	(ReadADC@result+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(ReadADC@result)
	addwf	(ReadADC@result)

	line	500
	
l2691:	
;TimerWLC.c: 500: ADCON0bits.ADON=0;
	bcf	(31),0	;volatile
	line	501
	
l2693:	
;TimerWLC.c: 501: value = result/146;
	movlw	low(092h)
	movwf	(___lwdiv@divisor)
	movlw	high(092h)
	movwf	((___lwdiv@divisor))+1
	movf	(ReadADC@result+1),w
	clrf	(___lwdiv@dividend+1)
	addwf	(___lwdiv@dividend+1)
	movf	(ReadADC@result),w
	clrf	(___lwdiv@dividend)
	addwf	(___lwdiv@dividend)

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	movwf	(??_ReadADC+0)+0
	movf	(??_ReadADC+0)+0,w
	movwf	(ReadADC@value)
	line	502
	
l2695:	
;TimerWLC.c: 502: return value;
	movf	(ReadADC@value),w
	goto	l270
	
l2697:	
	line	503
	
l270:	
	return
	opt stack 0
GLOBAL	__end_of_ReadADC
	__end_of_ReadADC:
	signat	_ReadADC,89
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] unsigned int 
;;  dividend        2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[BANK0 ] unsigned int 
;;  counter         1    4[BANK0 ] unsigned char 
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
;;      Locals:         0       3       0
;;      Temps:          1       0       0
;;      Totals:         1       7       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ReadADC
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
global __ptext15
__ptext15:	;psect for function ___lwdiv
psect	text15
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 5
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l2545:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l2547:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2461
	goto	u2460
u2461:
	goto	l2567
u2460:
	line	16
	
l2549:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l2555
	
l685:	
	line	18
	
l2551:	
	movlw	01h
	
u2475:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2475
	line	19
	
l2553:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l2555
	line	20
	
l684:	
	line	17
	
l2555:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2481
	goto	u2480
u2481:
	goto	l2551
u2480:
	goto	l2557
	
l686:	
	goto	l2557
	line	21
	
l687:	
	line	22
	
l2557:	
	movlw	01h
	
u2495:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2495
	line	23
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2505
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2505:
	skipc
	goto	u2501
	goto	u2500
u2501:
	goto	l2563
u2500:
	line	24
	
l2559:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l2561:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l2563
	line	26
	
l688:	
	line	27
	
l2563:	
	movlw	01h
	
u2515:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u2515
	line	28
	
l2565:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2521
	goto	u2520
u2521:
	goto	l2557
u2520:
	goto	l2567
	
l689:	
	goto	l2567
	line	29
	
l683:	
	line	30
	
l2567:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l690
	
l2569:	
	line	31
	
l690:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_LCDInit

;; *************** function _LCDInit *****************
;; Defined at:
;;		line 194 in file "E:\Study Material\XC8 PROJECTS\New WLC3PH\lcd_hd44780_pic16.c"
;; Parameters:    Size  Location     Type
;;  style           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  style           1   12[BANK0 ] unsigned char 
;;  __i             1   13[BANK0 ] unsigned char 
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
psect	text16,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\New WLC3PH\lcd_hd44780_pic16.c"
	line	194
global __ptext16
__ptext16:	;psect for function _LCDInit
psect	text16
	file	"E:\Study Material\XC8 PROJECTS\New WLC3PH\lcd_hd44780_pic16.c"
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
	
l2571:	
;lcd_hd44780_pic16.c: 210: _delay((unsigned long)((30)*(4000000/4000.0)));
	opt asmopt_off
movlw	39
movwf	((??_LCDInit+0)+0+1),f
	movlw	245
movwf	((??_LCDInit+0)+0),f
u3017:
	decfsz	((??_LCDInit+0)+0),f
	goto	u3017
	decfsz	((??_LCDInit+0)+0+1),f
	goto	u3017
opt asmopt_on

	line	213
	
l2573:	
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
	
l2575:	
;lcd_hd44780_pic16.c: 215: TRISCbits.TRISC5=0;
	bcf	(135)^080h,5	;volatile
	line	216
	
l2577:	
;lcd_hd44780_pic16.c: 216: TRISCbits.TRISC7=0;
	bcf	(135)^080h,7	;volatile
	line	217
	
l2579:	
;lcd_hd44780_pic16.c: 217: TRISCbits.TRISC6=0;
	bcf	(135)^080h,6	;volatile
	line	219
	
l2581:	
;lcd_hd44780_pic16.c: 219: PORTC&=(~(0x0F<<0));
	movlw	(0F0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCDInit+0)+0
	movf	(??_LCDInit+0)+0,w
	andwf	(7),f	;volatile
	line	221
	
l2583:	
;lcd_hd44780_pic16.c: 221: (RC5=0);
	bcf	(61/8),(61)&7	;volatile
	line	222
	
l2585:	
;lcd_hd44780_pic16.c: 222: (RC6=0);
	bcf	(62/8),(62)&7	;volatile
	line	223
	
l2587:	
;lcd_hd44780_pic16.c: 223: (RC7=0);
	bcf	(63/8),(63)&7	;volatile
	line	226
	
l2589:	
;lcd_hd44780_pic16.c: 226: _delay((unsigned long)((0.5)*(4000000/4000000.0)));
	
	line	228
	
l2591:	
;lcd_hd44780_pic16.c: 228: (RC5=1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7	;volatile
	line	229
	
l2593:	
;lcd_hd44780_pic16.c: 229: PORTC|=((0b00000010)<<0);
	bsf	(7)+(1/8),(1)&7	;volatile
	line	230
	
l2595:	
;lcd_hd44780_pic16.c: 230: _delay((unsigned long)((1)*(4000000/4000000.0)));
		opt asmopt_off
	nop
	opt asmopt_on

	line	231
	
l2597:	
;lcd_hd44780_pic16.c: 231: (RC5=0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7	;volatile
	line	232
	
l2599:	
;lcd_hd44780_pic16.c: 232: _delay((unsigned long)((1)*(4000000/4000000.0)));
		opt asmopt_off
	nop
	opt asmopt_on

	line	235
	
l2601:	
;lcd_hd44780_pic16.c: 235: LCDBusyLoop();
	fcall	_LCDBusyLoop
	line	240
	
l2603:	
;lcd_hd44780_pic16.c: 240: (LCDByte(0b00101000,0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDByte@isdata)
	movlw	(028h)
	fcall	_LCDByte
	line	241
	
l2605:	
;lcd_hd44780_pic16.c: 241: (LCDByte(0b00001100|style,0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDByte@isdata)
	movf	(LCDInit@style),w
	iorlw	0Ch
	fcall	_LCDByte
	line	244
	
l2607:	
;lcd_hd44780_pic16.c: 244: (LCDByte(0b01000000,0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDByte@isdata)
	movlw	(040h)
	fcall	_LCDByte
	line	247
	
l2609:	
;lcd_hd44780_pic16.c: 246: uint8_t __i;
;lcd_hd44780_pic16.c: 247: for(__i=0;__i<sizeof(__cgram);__i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDInit@__i)
	
l2611:	
	movlw	(010h)
	subwf	(LCDInit@__i),w
	skipc
	goto	u2531
	goto	u2530
u2531:
	goto	l2615
u2530:
	goto	l33
	
l2613:	
	goto	l33
	line	248
	
l31:	
	
l2615:	
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
	
l2617:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCDInit+0)+0
	movf	(??_LCDInit+0)+0,w
	addwf	(LCDInit@__i),f
	
l2619:	
	movlw	(010h)
	subwf	(LCDInit@__i),w
	skipc
	goto	u2541
	goto	u2540
u2541:
	goto	l2615
u2540:
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
;;		line 81 in file "E:\Study Material\XC8 PROJECTS\New WLC3PH\lcd_hd44780_pic16.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;;  isdata          1    3[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    8[BANK0 ] unsigned char 
;;  temp            1    9[BANK0 ] unsigned char 
;;  ln              1    7[BANK0 ] unsigned char 
;;  hn              1    6[BANK0 ] unsigned char 
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
;;		_LCDWriteInt
;;		_LCDGotoXY
;;		_main
;;		_update_display
;;		_first_screen
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	line	81
global __ptext17
__ptext17:	;psect for function _LCDByte
psect	text17
	file	"E:\Study Material\XC8 PROJECTS\New WLC3PH\lcd_hd44780_pic16.c"
	line	81
	global	__size_of_LCDByte
	__size_of_LCDByte	equ	__end_of_LCDByte-_LCDByte
	
_LCDByte:	
;incstack = 0
	opt	stack 2
; Regs used in _LCDByte: [wreg+status,2+status,0+pclath+cstack]
;LCDByte@c stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCDByte@c)
	line	93
	
l2271:	
;lcd_hd44780_pic16.c: 90: uint8_t hn,ln;
;lcd_hd44780_pic16.c: 91: uint8_t temp;
;lcd_hd44780_pic16.c: 93: hn=c>>4;
	movf	(LCDByte@c),w
	movwf	(??_LCDByte+0)+0
	movlw	04h
u2015:
	clrc
	rrf	(??_LCDByte+0)+0,f
	addlw	-1
	skipz
	goto	u2015
	movf	0+(??_LCDByte+0)+0,w
	movwf	(??_LCDByte+1)+0
	movf	(??_LCDByte+1)+0,w
	movwf	(LCDByte@hn)
	line	94
	
l2273:	
;lcd_hd44780_pic16.c: 94: ln=(c & 0x0F);
	movf	(LCDByte@c),w
	andlw	0Fh
	movwf	(??_LCDByte+0)+0
	movf	(??_LCDByte+0)+0,w
	movwf	(LCDByte@ln)
	line	96
	
l2275:	
;lcd_hd44780_pic16.c: 96: if(isdata==0)
	movf	(LCDByte@isdata),f
	skipz
	goto	u2021
	goto	u2020
u2021:
	goto	l21
u2020:
	line	97
	
l2277:	
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
	
l2279:	
;lcd_hd44780_pic16.c: 107: temp=(PORTC & (~(0X0F<<0)))|((hn<<0));
	movf	(7),w	;volatile
	andlw	0F0h
	iorwf	(LCDByte@hn),w
	movwf	(??_LCDByte+0)+0
	movf	(??_LCDByte+0)+0,w
	movwf	(LCDByte@temp)
	line	108
	
l2281:	
;lcd_hd44780_pic16.c: 108: PORTC=temp;
	movf	(LCDByte@temp),w
	movwf	(7)	;volatile
	line	110
	
l2283:	
;lcd_hd44780_pic16.c: 110: _delay((unsigned long)((1)*(4000000/4000000.0)));
		opt asmopt_off
	nop
	opt asmopt_on

	line	114
	
l2285:	
;lcd_hd44780_pic16.c: 114: (RC5=0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7	;volatile
	line	116
	
l2287:	
;lcd_hd44780_pic16.c: 116: _delay((unsigned long)((1)*(4000000/4000000.0)));
		opt asmopt_off
	nop
	opt asmopt_on

	line	119
	
l2289:	
;lcd_hd44780_pic16.c: 119: (RC5=1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7	;volatile
	line	121
	
l2291:	
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
	
l2293:	
;lcd_hd44780_pic16.c: 125: _delay((unsigned long)((1)*(4000000/4000000.0)));
		opt asmopt_off
	nop
	opt asmopt_on

	line	129
	
l2295:	
;lcd_hd44780_pic16.c: 129: (RC5=0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7	;volatile
	line	131
	
l2297:	
;lcd_hd44780_pic16.c: 131: _delay((unsigned long)((1)*(4000000/4000000.0)));
		opt asmopt_off
	nop
	opt asmopt_on

	line	133
	
l2299:	
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
;;		line 136 in file "E:\Study Material\XC8 PROJECTS\New WLC3PH\lcd_hd44780_pic16.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  status          1    2[BANK0 ] unsigned char 
;;  temp            1    1[BANK0 ] unsigned char 
;;  busy            1    0[BANK0 ] unsigned char 
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
;;      Temps:          2       0       0
;;      Totals:         2       3       0
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
psect	text18,local,class=CODE,delta=2,merge=1
	line	136
global __ptext18
__ptext18:	;psect for function _LCDBusyLoop
psect	text18
	file	"E:\Study Material\XC8 PROJECTS\New WLC3PH\lcd_hd44780_pic16.c"
	line	136
	global	__size_of_LCDBusyLoop
	__size_of_LCDBusyLoop	equ	__end_of_LCDBusyLoop-_LCDBusyLoop
	
_LCDBusyLoop:	
;incstack = 0
	opt	stack 2
; Regs used in _LCDBusyLoop: [wreg+status,2+status,0]
	line	140
	
l1499:	
;lcd_hd44780_pic16.c: 140: uint8_t busy,status=0x00,temp;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDBusyLoop@status)
	line	143
	
l1501:	
;lcd_hd44780_pic16.c: 143: TRISC|=(0x0f<<0);
	movlw	(0Fh)
	movwf	(??_LCDBusyLoop+0)+0
	movf	(??_LCDBusyLoop+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(135)^080h,f	;volatile
	line	146
	
l1503:	
;lcd_hd44780_pic16.c: 146: (RC6=1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(62/8),(62)&7	;volatile
	line	147
	
l1505:	
;lcd_hd44780_pic16.c: 147: (RC7=0);
	bcf	(63/8),(63)&7	;volatile
	line	151
	
l1507:	
;lcd_hd44780_pic16.c: 151: _delay((unsigned long)((0.5)*(4000000/4000000.0)));
	
	goto	l1509
	line	154
;lcd_hd44780_pic16.c: 154: do
	
l26:	
	line	157
	
l1509:	
;lcd_hd44780_pic16.c: 155: {
;lcd_hd44780_pic16.c: 157: (RC5=1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7	;volatile
	line	160
	
l1511:	
;lcd_hd44780_pic16.c: 160: _delay((unsigned long)((0.5)*(4000000/4000000.0)));
	
	line	162
	
l1513:	
;lcd_hd44780_pic16.c: 162: status=(PORTC>>0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(7),w	;volatile
	movwf	(??_LCDBusyLoop+0)+0
	movf	(??_LCDBusyLoop+0)+0,w
	movwf	(LCDBusyLoop@status)
	line	163
	
l1515:	
;lcd_hd44780_pic16.c: 163: status=status<<4;
	movf	(LCDBusyLoop@status),w
	movwf	(??_LCDBusyLoop+0)+0
	movlw	(04h)-1
u1015:
	clrc
	rlf	(??_LCDBusyLoop+0)+0,f
	addlw	-1
	skipz
	goto	u1015
	clrc
	rlf	(??_LCDBusyLoop+0)+0,w
	movwf	(??_LCDBusyLoop+1)+0
	movf	(??_LCDBusyLoop+1)+0,w
	movwf	(LCDBusyLoop@status)
	line	165
	
l1517:	
;lcd_hd44780_pic16.c: 165: _delay((unsigned long)((0.5)*(4000000/4000000.0)));
	
	line	168
	
l1519:	
;lcd_hd44780_pic16.c: 168: (RC5=0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7	;volatile
	line	169
	
l1521:	
;lcd_hd44780_pic16.c: 169: _delay((unsigned long)((1)*(4000000/4000000.0)));
		opt asmopt_off
	nop
	opt asmopt_on

	line	171
	
l1523:	
;lcd_hd44780_pic16.c: 171: (RC5=1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7	;volatile
	line	172
	
l1525:	
;lcd_hd44780_pic16.c: 172: _delay((unsigned long)((0.5)*(4000000/4000000.0)));
	
	line	174
	
l1527:	
;lcd_hd44780_pic16.c: 174: temp=(PORTC>>0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(7),w	;volatile
	movwf	(??_LCDBusyLoop+0)+0
	movf	(??_LCDBusyLoop+0)+0,w
	movwf	(LCDBusyLoop@temp)
	line	175
	
l1529:	
;lcd_hd44780_pic16.c: 175: temp&=0x0F;
	movlw	(0Fh)
	movwf	(??_LCDBusyLoop+0)+0
	movf	(??_LCDBusyLoop+0)+0,w
	andwf	(LCDBusyLoop@temp),f
	line	177
	
l1531:	
;lcd_hd44780_pic16.c: 177: status=status|temp;
	movf	(LCDBusyLoop@status),w
	iorwf	(LCDBusyLoop@temp),w
	movwf	(??_LCDBusyLoop+0)+0
	movf	(??_LCDBusyLoop+0)+0,w
	movwf	(LCDBusyLoop@status)
	line	179
	
l1533:	
;lcd_hd44780_pic16.c: 179: busy=status & 0b10000000;
	movf	(LCDBusyLoop@status),w
	andlw	080h
	movwf	(??_LCDBusyLoop+0)+0
	movf	(??_LCDBusyLoop+0)+0,w
	movwf	(LCDBusyLoop@busy)
	line	181
	
l1535:	
;lcd_hd44780_pic16.c: 181: _delay((unsigned long)((0.5)*(4000000/4000000.0)));
	
	line	183
	
l1537:	
;lcd_hd44780_pic16.c: 183: (RC5=0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7	;volatile
	line	184
	
l1539:	
;lcd_hd44780_pic16.c: 184: _delay((unsigned long)((1)*(4000000/4000000.0)));
		opt asmopt_off
	nop
	opt asmopt_on

	line	185
	
l1541:	
;lcd_hd44780_pic16.c: 185: }while(busy);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCDBusyLoop@busy),f
	skipz
	goto	u1021
	goto	u1020
u1021:
	goto	l1509
u1020:
	
l27:	
	line	187
;lcd_hd44780_pic16.c: 187: (RC6=0);
	bcf	(62/8),(62)&7	;volatile
	line	190
	
l1543:	
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
;;		line 220 in file "E:\Study Material\XC8 PROJECTS\New WLC3PH\TimerWLC.c"
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
psect	text19,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\New WLC3PH\TimerWLC.c"
	line	220
global __ptext19
__ptext19:	;psect for function _Tx_Received
psect	text19
	file	"E:\Study Material\XC8 PROJECTS\New WLC3PH\TimerWLC.c"
	line	220
	global	__size_of_Tx_Received
	__size_of_Tx_Received	equ	__end_of_Tx_Received-_Tx_Received
	
_Tx_Received:	
;incstack = 0
	opt	stack 2
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
psect	text19
	line	222
	
i1l2191:	
;TimerWLC.c: 222: txr_not_received = 0;
	clrf	(_txr_not_received)
	line	225
;TimerWLC.c: 225: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	226
;TimerWLC.c: 226: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	228
	
i1l2193:	
;TimerWLC.c: 228: TRISA = 0x08;
	movlw	(08h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	231
	
i1l2195:	
;TimerWLC.c: 231: if( RA3 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(43/8),(43)&7	;volatile
	goto	u193_21
	goto	u193_20
u193_21:
	goto	i1l2203
u193_20:
	line	233
	
i1l2197:	
;TimerWLC.c: 232: {
;TimerWLC.c: 233: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_Tx_Received+0)+0,f
u302_27:
	nop
decfsz	(??_Tx_Received+0)+0,f
	goto	u302_27
	nop2	;nop
	nop
opt asmopt_on

	line	234
	
i1l2199:	
;TimerWLC.c: 234: if( RA3 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(43/8),(43)&7	;volatile
	goto	u194_21
	goto	u194_20
u194_21:
	goto	i1l212
u194_20:
	line	236
	
i1l2201:	
;TimerWLC.c: 235: {
;TimerWLC.c: 236: ul = 1;
	clrf	(_ul)
	incf	(_ul),f
	goto	i1l212
	line	237
	
i1l211:	
	line	238
;TimerWLC.c: 237: }
;TimerWLC.c: 238: }
	goto	i1l212
	line	239
	
i1l210:	
	line	241
	
i1l2203:	
;TimerWLC.c: 239: else
;TimerWLC.c: 240: {
;TimerWLC.c: 241: ul = 0;
	clrf	(_ul)
	line	242
	
i1l212:	
	line	245
;TimerWLC.c: 242: }
;TimerWLC.c: 245: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	246
;TimerWLC.c: 246: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	248
	
i1l2205:	
;TimerWLC.c: 248: TRISA = 0x20;
	movlw	(020h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	251
	
i1l2207:	
;TimerWLC.c: 251: if( RA5 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(45/8),(45)&7	;volatile
	goto	u195_21
	goto	u195_20
u195_21:
	goto	i1l2215
u195_20:
	line	253
	
i1l2209:	
;TimerWLC.c: 252: {
;TimerWLC.c: 253: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_Tx_Received+0)+0,f
u303_27:
	nop
decfsz	(??_Tx_Received+0)+0,f
	goto	u303_27
	nop2	;nop
	nop
opt asmopt_on

	line	254
	
i1l2211:	
;TimerWLC.c: 254: if( RA5 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(45/8),(45)&7	;volatile
	goto	u196_21
	goto	u196_20
u196_21:
	goto	i1l215
u196_20:
	line	256
	
i1l2213:	
;TimerWLC.c: 255: {
;TimerWLC.c: 256: uu = 1;
	clrf	(_uu)
	incf	(_uu),f
	line	257
;TimerWLC.c: 257: ul = 1;
	clrf	(_ul)
	incf	(_ul),f
	goto	i1l215
	line	258
	
i1l214:	
	line	259
;TimerWLC.c: 258: }
;TimerWLC.c: 259: }
	goto	i1l215
	line	261
	
i1l213:	
	line	263
	
i1l2215:	
;TimerWLC.c: 261: else
;TimerWLC.c: 262: {
;TimerWLC.c: 263: uu = 0;
	clrf	(_uu)
	line	264
	
i1l215:	
	line	267
;TimerWLC.c: 264: }
;TimerWLC.c: 267: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	268
;TimerWLC.c: 268: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	270
	
i1l2217:	
;TimerWLC.c: 270: TRISA = 0x02;
	movlw	(02h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	271
	
i1l2219:	
;TimerWLC.c: 271: RA2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(42/8),(42)&7	;volatile
	line	272
	
i1l2221:	
;TimerWLC.c: 272: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_Tx_Received+0)+0,f
u304_27:
	nop
decfsz	(??_Tx_Received+0)+0,f
	goto	u304_27
	nop2	;nop
	nop
opt asmopt_on

	line	274
	
i1l2223:	
;TimerWLC.c: 274: if( RA1 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(41/8),(41)&7	;volatile
	goto	u197_21
	goto	u197_20
u197_21:
	goto	i1l2231
u197_20:
	line	276
	
i1l2225:	
;TimerWLC.c: 275: {
;TimerWLC.c: 276: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_Tx_Received+0)+0,f
u305_27:
	nop
decfsz	(??_Tx_Received+0)+0,f
	goto	u305_27
	nop2	;nop
	nop
opt asmopt_on

	line	277
	
i1l2227:	
;TimerWLC.c: 277: if( RA1 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(41/8),(41)&7	;volatile
	goto	u198_21
	goto	u198_20
u198_21:
	goto	i1l218
u198_20:
	line	279
	
i1l2229:	
;TimerWLC.c: 278: {
;TimerWLC.c: 279: ll = 1;
	clrf	(_ll)
	incf	(_ll),f
	goto	i1l218
	line	280
	
i1l217:	
	line	281
;TimerWLC.c: 280: }
;TimerWLC.c: 281: }
	goto	i1l218
	line	282
	
i1l216:	
	line	284
	
i1l2231:	
;TimerWLC.c: 282: else
;TimerWLC.c: 283: {
;TimerWLC.c: 284: ll = 0;
	clrf	(_ll)
	line	285
	
i1l218:	
	line	288
;TimerWLC.c: 285: }
;TimerWLC.c: 288: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	289
;TimerWLC.c: 289: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	291
	
i1l2233:	
;TimerWLC.c: 291: TRISA = 0x04;
	movlw	(04h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	292
	
i1l2235:	
;TimerWLC.c: 292: RA1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(41/8),(41)&7	;volatile
	line	293
	
i1l2237:	
;TimerWLC.c: 293: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_Tx_Received+0)+0,f
u306_27:
	nop
decfsz	(??_Tx_Received+0)+0,f
	goto	u306_27
	nop2	;nop
	nop
opt asmopt_on

	line	295
	
i1l2239:	
;TimerWLC.c: 295: if( RA2 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(42/8),(42)&7	;volatile
	goto	u199_21
	goto	u199_20
u199_21:
	goto	i1l2247
u199_20:
	line	297
	
i1l2241:	
;TimerWLC.c: 296: {
;TimerWLC.c: 297: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_Tx_Received+0)+0,f
u307_27:
	nop
decfsz	(??_Tx_Received+0)+0,f
	goto	u307_27
	nop2	;nop
	nop
opt asmopt_on

	line	298
	
i1l2243:	
;TimerWLC.c: 298: if( RA2 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(42/8),(42)&7	;volatile
	goto	u200_21
	goto	u200_20
u200_21:
	goto	i1l221
u200_20:
	line	300
	
i1l2245:	
;TimerWLC.c: 299: {
;TimerWLC.c: 300: lu = 1;
	clrf	(_lu)
	incf	(_lu),f
	goto	i1l221
	line	301
	
i1l220:	
	line	302
;TimerWLC.c: 301: }
;TimerWLC.c: 302: }
	goto	i1l221
	line	303
	
i1l219:	
	line	305
	
i1l2247:	
;TimerWLC.c: 303: else
;TimerWLC.c: 304: {
;TimerWLC.c: 305: lu = 0;
	clrf	(_lu)
	line	306
	
i1l221:	
	line	309
;TimerWLC.c: 306: }
;TimerWLC.c: 309: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	310
;TimerWLC.c: 310: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	313
	
i1l2249:	
;TimerWLC.c: 313: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	314
	
i1l222:	
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

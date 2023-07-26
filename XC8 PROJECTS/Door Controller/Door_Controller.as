opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 58300"

opt pagewidth 120

	opt lm

	processor	16F876A
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
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
PCLATH equ 0Ah ;# 
# 350 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
INTCON equ 0Bh ;# 
# 427 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
PIR1 equ 0Ch ;# 
# 482 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
PIR2 equ 0Dh ;# 
# 521 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
TMR1 equ 0Eh ;# 
# 527 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
TMR1L equ 0Eh ;# 
# 533 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
TMR1H equ 0Fh ;# 
# 539 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
T1CON equ 010h ;# 
# 613 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
TMR2 equ 011h ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
T2CON equ 012h ;# 
# 689 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
SSPBUF equ 013h ;# 
# 695 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
SSPCON equ 014h ;# 
# 764 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
CCPR1 equ 015h ;# 
# 770 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
CCPR1L equ 015h ;# 
# 776 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
CCPR1H equ 016h ;# 
# 782 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
CCP1CON equ 017h ;# 
# 839 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
RCSTA equ 018h ;# 
# 933 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
TXREG equ 019h ;# 
# 939 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
RCREG equ 01Ah ;# 
# 945 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
CCPR2 equ 01Bh ;# 
# 951 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
CCPR2L equ 01Bh ;# 
# 957 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
CCPR2H equ 01Ch ;# 
# 963 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
CCP2CON equ 01Dh ;# 
# 1020 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
ADRESH equ 01Eh ;# 
# 1026 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
ADCON0 equ 01Fh ;# 
# 1121 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
OPTION_REG equ 081h ;# 
# 1190 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
TRISA equ 085h ;# 
# 1239 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
TRISB equ 086h ;# 
# 1300 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
TRISC equ 087h ;# 
# 1361 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
PIE1 equ 08Ch ;# 
# 1416 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
PIE2 equ 08Dh ;# 
# 1455 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
PCON equ 08Eh ;# 
# 1488 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
SSPCON2 equ 091h ;# 
# 1549 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
PR2 equ 092h ;# 
# 1555 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
SSPADD equ 093h ;# 
# 1561 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
SSPSTAT equ 094h ;# 
# 1729 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
TXSTA equ 098h ;# 
# 1809 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
SPBRG equ 099h ;# 
# 1815 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
CMCON equ 09Ch ;# 
# 1884 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
CVRCON equ 09Dh ;# 
# 1948 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
ADRESL equ 09Eh ;# 
# 1954 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
ADCON1 equ 09Fh ;# 
# 2012 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
EEDATA equ 010Ch ;# 
# 2018 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
EEADR equ 010Dh ;# 
# 2024 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
EEDATH equ 010Eh ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
EEADRH equ 010Fh ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
EECON1 equ 018Ch ;# 
# 2080 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f876a.h"
EECON2 equ 018Dh ;# 
	FNCALL	_main,___ftadd
	FNCALL	_main,___ftmul
	FNCALL	_main,___lbtoft
	FNCALL	_main,_check_over_current
	FNCALL	_main,_eeprom_read
	FNCALL	_main,_over_current_config
	FNCALL	_over_current_config,_ReadADC
	FNCALL	_over_current_config,___ftadd
	FNCALL	_over_current_config,___ftmul
	FNCALL	_over_current_config,___fttol
	FNCALL	_over_current_config,___lwdiv
	FNCALL	_over_current_config,___lwtoft
	FNCALL	_over_current_config,_eeprom_write
	FNCALL	_over_current_config,_modf
	FNCALL	_modf,___attoft
	FNCALL	_modf,___ftadd
	FNCALL	_modf,___ftneg
	FNCALL	_modf,___fttol
	FNCALL	___ftadd,___ftpack
	FNCALL	___attoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	_check_over_current,_ReadADC
	FNCALL	_check_over_current,___ftge
	FNCALL	_check_over_current,___lwtoft
	FNCALL	___lwtoft,___ftpack
	FNCALL	___lbtoft,___ftpack
	FNROOT	_main
	FNCALL	intlevel1,_Tx_Received
	global	intlevel1
	FNROOT	intlevel1
	global	_door_State
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"E:\Study Material\XC8 PROJECTS\Door Controller\door1ph.c"
	line	47

;initializer for _door_State
	retlw	04h
	global	_normal_current
	global	_ADCON0
_ADCON0	set	0x1F
	global	_ADCON0bits
_ADCON0bits	set	0x1F
	global	_ADRESH
_ADRESH	set	0x1E
	global	_INTCON
_INTCON	set	0xB
	global	_ADON
_ADON	set	0xF8
	global	_CARRY
_CARRY	set	0x18
	global	_GIE
_GIE	set	0x5F
	global	_GO
_GO	set	0xFA
	global	_RA1
_RA1	set	0x29
	global	_RA2
_RA2	set	0x2A
	global	_RA3
_RA3	set	0x2B
	global	_RB1
_RB1	set	0x31
	global	_RB2
_RB2	set	0x32
	global	_RB3
_RB3	set	0x33
	global	_RB4
_RB4	set	0x34
	global	_RC0
_RC0	set	0x38
	global	_RC1
_RC1	set	0x39
	global	_RC2
_RC2	set	0x3A
	global	_RC4
_RC4	set	0x3C
	global	_RC5
_RC5	set	0x3D
	global	_RC6
_RC6	set	0x3E
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
	file	"Door_Controller.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_normal_current:
       ds      3

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"E:\Study Material\XC8 PROJECTS\Door Controller\door1ph.c"
	line	47
_door_State:
       ds      1

	file	"Door_Controller.as"
	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	line	#
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	main@Auto_Close
main@Auto_Close:	; 1 bytes @ 0x0
	ds	1
	global	main@integer
main@integer:	; 1 bytes @ 0x1
	ds	1
	global	main@fraction
main@fraction:	; 1 bytes @ 0x2
	ds	1
	global	main@seconds
main@seconds:	; 2 bytes @ 0x3
	ds	2
	global	main@count
main@count:	; 1 bytes @ 0x5
	ds	1
	global	main@Over_Current_Timer
main@Over_Current_Timer:	; 2 bytes @ 0x6
	ds	2
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_over_current_config:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_Tx_Received:	; 0 bytes @ 0x0
??_Tx_Received:	; 0 bytes @ 0x0
?_eeprom_read:	; 1 bytes @ 0x0
?_check_over_current:	; 1 bytes @ 0x0
	ds	5
??_eeprom_read:	; 0 bytes @ 0x5
??_ReadADC:	; 0 bytes @ 0x5
?_eeprom_write:	; 0 bytes @ 0x5
??___ftneg:	; 0 bytes @ 0x5
??___lwdiv:	; 0 bytes @ 0x5
	global	eeprom_write@value
eeprom_write@value:	; 1 bytes @ 0x5
	global	___attoft@sign
___attoft@sign:	; 1 bytes @ 0x5
	global	___lbtoft@c
___lbtoft@c:	; 1 bytes @ 0x5
	ds	1
??_modf:	; 0 bytes @ 0x6
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_eeprom_write:	; 0 bytes @ 0x0
?___ftge:	; 1 bit 
	global	?_ReadADC
?_ReadADC:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x0
	global	?___fttol
?___fttol:	; 4 bytes @ 0x0
	global	eeprom_read@addr
eeprom_read@addr:	; 1 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x0
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x0
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x0
	ds	1
	global	eeprom_write@addr
eeprom_write@addr:	; 1 bytes @ 0x1
	ds	1
	global	ReadADC@result
ReadADC@result:	; 2 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	1
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x3
	ds	1
??___fttol:	; 0 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x4
	ds	1
??___ftpack:	; 0 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	1
??___ftge:	; 0 bytes @ 0x6
	ds	2
	global	?___lbtoft
?___lbtoft:	; 3 bytes @ 0x8
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x8
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x8
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x8
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x9
	ds	2
??___lbtoft:	; 0 bytes @ 0xB
??___lwtoft:	; 0 bytes @ 0xB
	ds	1
??_check_over_current:	; 0 bytes @ 0xC
	ds	1
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0xD
	ds	1
	global	?___attoft
?___attoft:	; 3 bytes @ 0xE
	global	check_over_current@avg_reading
check_over_current@avg_reading:	; 3 bytes @ 0xE
	global	___attoft@c
___attoft@c:	; 3 bytes @ 0xE
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0xF
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0xF
	ds	2
??___attoft:	; 0 bytes @ 0x11
	global	check_over_current@res
check_over_current@res:	; 2 bytes @ 0x11
	ds	1
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x12
	ds	1
	global	check_over_current@sum
check_over_current@sum:	; 2 bytes @ 0x13
	ds	2
??___ftmul:	; 0 bytes @ 0x15
	global	check_over_current@readings
check_over_current@readings:	; 1 bytes @ 0x15
	ds	4
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x19
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x1A
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x1D
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x1E
	ds	1
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x1F
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x1F
	ds	3
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x22
	ds	3
??___ftadd:	; 0 bytes @ 0x25
	ds	4
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x29
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x2A
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x2B
	ds	1
	global	?_modf
?_modf:	; 3 bytes @ 0x2C
	global	modf@value
modf@value:	; 3 bytes @ 0x2C
	ds	3
	global	modf@iptr
modf@iptr:	; 1 bytes @ 0x2F
	ds	1
??_over_current_config:	; 0 bytes @ 0x30
	ds	3
	global	over_current_config@over_current_reading
over_current_config@over_current_reading:	; 3 bytes @ 0x33
	ds	3
	global	over_current_config@decimals
over_current_config@decimals:	; 1 bytes @ 0x36
	ds	1
	global	over_current_config@points
over_current_config@points:	; 1 bytes @ 0x37
	ds	1
	global	over_current_config@res
over_current_config@res:	; 2 bytes @ 0x38
	ds	2
	global	over_current_config@readings
over_current_config@readings:	; 1 bytes @ 0x3A
	ds	1
	global	over_current_config@avg_reading
over_current_config@avg_reading:	; 3 bytes @ 0x3B
	ds	3
	global	over_current_config@fractional
over_current_config@fractional:	; 3 bytes @ 0x3E
	ds	3
	global	over_current_config@integral
over_current_config@integral:	; 3 bytes @ 0x41
	ds	3
	global	over_current_config@sum
over_current_config@sum:	; 2 bytes @ 0x44
	ds	2
??_main:	; 0 bytes @ 0x46
	ds	3
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        1
;!    BSS         3
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      6       9
;!    BANK0            80     73      74
;!    BANK1            80      8       8
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    modf@iptr	PTR  size(1) Largest target is 3
;!		 -> over_current_config@integral(BANK0[3]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->___lbtoft
;!    _main->_eeprom_read
;!    _over_current_config->_ReadADC
;!    _over_current_config->___lwdiv
;!    _over_current_config->_eeprom_write
;!    _modf->___attoft
;!    ___ftadd->___lbtoft
;!    ___ftmul->___lbtoft
;!    _check_over_current->_ReadADC
;!    ___lwtoft->___lwdiv
;!
;!Critical Paths under _Tx_Received in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_over_current_config
;!    _over_current_config->_modf
;!    _modf->___ftadd
;!    ___ftadd->___ftmul
;!    ___attoft->___fttol
;!    ___ftmul->___lbtoft
;!    _check_over_current->___ftge
;!    _check_over_current->___lwtoft
;!    ___lwtoft->___ftpack
;!    ___lbtoft->___ftpack
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
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _Tx_Received in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _Tx_Received in BANK2
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
;! (0) _main                                                11    11      0   29949
;!                                             70 BANK0      3     3      0
;!                                              0 BANK1      8     8      0
;!                            ___ftadd
;!                            ___ftmul
;!                           ___lbtoft
;!                 _check_over_current
;!                        _eeprom_read
;!                _over_current_config
;! ---------------------------------------------------------------------------------
;! (1) _over_current_config                                 22    22      0   17711
;!                                             48 BANK0     22    22      0
;!                            _ReadADC
;!                            ___ftadd
;!                            ___ftmul
;!                            ___fttol
;!                            ___lwdiv
;!                           ___lwtoft
;!                       _eeprom_write
;!                               _modf
;! ---------------------------------------------------------------------------------
;! (2) _modf                                                 4     0      4    7047
;!                                             44 BANK0      4     0      4
;!                           ___attoft
;!                            ___ftadd
;!                            ___ftneg
;!                            ___fttol
;! ---------------------------------------------------------------------------------
;! (3) ___fttol                                             14    10      4     566
;!                                              0 BANK0     14    10      4
;! ---------------------------------------------------------------------------------
;! (3) ___ftneg                                              3     0      3     130
;!                                              0 BANK0      3     0      3
;! ---------------------------------------------------------------------------------
;! (3) ___ftadd                                             13     7      6    3802
;!                                             31 BANK0     13     7      6
;!                            ___ftmul (ARG)
;!                            ___ftneg (ARG)
;!                           ___ftpack
;!                           ___lbtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___attoft                                             6     3      3    2295
;!                                              5 COMMON     1     1      0
;!                                             14 BANK0      5     2      3
;!                           ___ftpack
;!                            ___fttol (ARG)
;! ---------------------------------------------------------------------------------
;! (2) _eeprom_write                                         3     2      1     192
;!                                              5 COMMON     1     0      1
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              8     4      4     371
;!                                              5 COMMON     1     1      0
;!                                              0 BANK0      7     3      4
;! ---------------------------------------------------------------------------------
;! (2) ___ftmul                                             16    10      6    2975
;!                                             15 BANK0     16    10      6
;!                           ___ftpack
;!                           ___lbtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (1) _eeprom_read                                          2     2      0      31
;!                                              5 COMMON     1     1      0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _check_over_current                                  10    10      0    2848
;!                                             12 BANK0     10    10      0
;!                            _ReadADC
;!                             ___ftge
;!                           ___lwtoft
;! ---------------------------------------------------------------------------------
;! (2) ___lwtoft                                             4     1      3    2258
;!                                              8 BANK0      4     1      3
;!                           ___ftpack
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftge                                              12     6      6     328
;!                                              0 BANK0     12     6      6
;! ---------------------------------------------------------------------------------
;! (2) _ReadADC                                              5     3      2      37
;!                                              5 COMMON     1     1      0
;!                                              0 BANK0      4     2      2
;! ---------------------------------------------------------------------------------
;! (1) ___lbtoft                                             8     5      3    2128
;!                                              5 COMMON     1     1      0
;!                                              8 BANK0      7     4      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (4) ___ftpack                                             8     3      5    2097
;!                                              0 BANK0      8     3      5
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
;!   ___ftadd
;!     ___ftmul (ARG)
;!       ___ftpack
;!       ___lbtoft (ARG)
;!         ___ftpack
;!     ___ftneg (ARG)
;!     ___ftpack (ARG)
;!     ___lbtoft (ARG)
;!       ___ftpack
;!   ___ftmul
;!     ___ftpack
;!     ___lbtoft (ARG)
;!       ___ftpack
;!   ___lbtoft
;!     ___ftpack
;!   _check_over_current
;!     _ReadADC
;!     ___ftge
;!     ___lwtoft
;!       ___ftpack
;!       ___lwdiv (ARG)
;!   _eeprom_read
;!   _over_current_config
;!     _ReadADC
;!     ___ftadd
;!       ___ftmul (ARG)
;!         ___ftpack
;!         ___lbtoft (ARG)
;!           ___ftpack
;!       ___ftneg (ARG)
;!       ___ftpack (ARG)
;!       ___lbtoft (ARG)
;!         ___ftpack
;!     ___ftmul
;!       ___ftpack
;!       ___lbtoft (ARG)
;!         ___ftpack
;!     ___fttol
;!     ___lwdiv
;!     ___lwtoft
;!       ___ftpack
;!       ___lwdiv (ARG)
;!     _eeprom_write
;!     _modf
;!       ___attoft
;!         ___ftpack
;!         ___fttol (ARG)
;!       ___ftadd
;!         ___ftmul (ARG)
;!           ___ftpack
;!           ___lbtoft (ARG)
;!             ___ftpack
;!         ___ftneg (ARG)
;!         ___ftpack (ARG)
;!         ___lbtoft (ARG)
;!           ___ftpack
;!       ___ftneg
;!       ___fttol
;!
;! _Tx_Received (ROOT)
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
;!BANK1               50      8       8       7       10.0%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     49      4A       5       92.5%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      6       9       1       64.3%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      5B      12        0.0%
;!ABS                  0      0      5B       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 49 in file "E:\Study Material\XC8 PROJECTS\Door Controller\door1ph.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Over_Current    2    6[BANK1 ] int 
;;  seconds         2    3[BANK1 ] int 
;;  count           1    5[BANK1 ] unsigned char 
;;  fraction        1    2[BANK1 ] unsigned char 
;;  integer         1    1[BANK1 ] unsigned char 
;;  Auto_Close      1    0[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       8       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       3       8       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftadd
;;		___ftmul
;;		___lbtoft
;;		_check_over_current
;;		_eeprom_read
;;		_over_current_config
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"E:\Study Material\XC8 PROJECTS\Door Controller\door1ph.c"
	line	49
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"E:\Study Material\XC8 PROJECTS\Door Controller\door1ph.c"
	line	49
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	51
	
l2277:	
;door1ph.c: 51: ADCON0 = 0x80;
	movlw	(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	52
;door1ph.c: 52: ADCON1 = 0x8E;
	movlw	(08Eh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	54
;door1ph.c: 54: TRISA = 0xFF;
	movlw	(0FFh)
	movwf	(133)^080h	;volatile
	line	55
;door1ph.c: 55: TRISB = 0xE1;
	movlw	(0E1h)
	movwf	(134)^080h	;volatile
	line	56
;door1ph.c: 56: TRISC = 0x2F;
	movlw	(02Fh)
	movwf	(135)^080h	;volatile
	line	60
	
l2279:	
;door1ph.c: 59: int seconds;
;door1ph.c: 60: int Over_Current_Timer = 0;
	clrf	(main@Over_Current_Timer)^080h
	clrf	(main@Over_Current_Timer+1)^080h
	line	61
	
l2281:	
;door1ph.c: 61: char Auto_Close = 1;
	clrf	(main@Auto_Close)^080h
	incf	(main@Auto_Close)^080h,f
	line	62
	
l2283:	
;door1ph.c: 62: char count = 0;
	clrf	(main@count)^080h
	line	63
	
l2285:	
;door1ph.c: 63: unsigned char integer = 0, fraction = 0;
	clrf	(main@integer)^080h
	
l2287:	
	clrf	(main@fraction)^080h
	line	64
	
l2289:	
;door1ph.c: 64: RB3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7	;volatile
	line	65
	
l2291:	
;door1ph.c: 65: RB1 = 0;
	bcf	(49/8),(49)&7	;volatile
	line	66
	
l2293:	
;door1ph.c: 66: RB4 = 0;
	bcf	(52/8),(52)&7	;volatile
	line	67
	
l2295:	
;door1ph.c: 67: RB2 = 0;
	bcf	(50/8),(50)&7	;volatile
	line	68
	
l2297:	
;door1ph.c: 68: RC6 = 0;
	bcf	(62/8),(62)&7	;volatile
	line	70
	
l2299:	
;door1ph.c: 70: for(count = 0; count < 5; count++)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@count)^080h
	
l2301:	
	movlw	(05h)
	subwf	(main@count)^080h,w
	skipc
	goto	u3351
	goto	u3350
u3351:
	goto	l71
u3350:
	goto	l72
	
l2303:	
	goto	l72
	line	71
	
l71:	
	line	72
;door1ph.c: 71: {
;door1ph.c: 72: RC4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(60/8),(60)&7	;volatile
	line	73
	
l2305:	
;door1ph.c: 73: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u3637:
	decfsz	((??_main+0)+0),f
	goto	u3637
	decfsz	((??_main+0)+0+1),f
	goto	u3637
	decfsz	((??_main+0)+0+2),f
	goto	u3637
	nop2
opt asmopt_on

	line	74
	
l2307:	
;door1ph.c: 74: RC4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7	;volatile
	line	75
;door1ph.c: 75: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u3647:
	decfsz	((??_main+0)+0),f
	goto	u3647
	decfsz	((??_main+0)+0+1),f
	goto	u3647
	decfsz	((??_main+0)+0+2),f
	goto	u3647
	nop2
opt asmopt_on

	line	70
	
l2309:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(main@count)^080h,f
	
l2311:	
	movlw	(05h)
	subwf	(main@count)^080h,w
	skipc
	goto	u3361
	goto	u3360
u3361:
	goto	l71
u3360:
	
l72:	
	line	80
;door1ph.c: 76: }
;door1ph.c: 80: if(RC1 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(57/8),(57)&7	;volatile
	goto	u3371
	goto	u3370
u3371:
	goto	l2317
u3370:
	line	82
	
l2313:	
;door1ph.c: 81: {
;door1ph.c: 82: door_State = Closed;
	clrf	(_door_State)
	incf	(_door_State),f
	line	83
;door1ph.c: 83: if(RC5 == 1)
	btfss	(61/8),(61)&7	;volatile
	goto	u3381
	goto	u3380
u3381:
	goto	l2317
u3380:
	line	84
	
l2315:	
;door1ph.c: 84: over_current_config();
	fcall	_over_current_config
	goto	l2317
	
l74:	
	goto	l2317
	line	85
	
l73:	
	line	86
	
l2317:	
;door1ph.c: 85: }
;door1ph.c: 86: if(RC0 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(56/8),(56)&7	;volatile
	goto	u3391
	goto	u3390
u3391:
	goto	l2321
u3390:
	line	88
	
l2319:	
;door1ph.c: 87: {
;door1ph.c: 88: door_State = Opened;
	clrf	(_door_State)
	goto	l2321
	line	89
	
l75:	
	line	90
	
l2321:	
;door1ph.c: 89: }
;door1ph.c: 90: if(RC0 == 0 && RC1 == 0)
	btfsc	(56/8),(56)&7	;volatile
	goto	u3401
	goto	u3400
u3401:
	goto	l2327
u3400:
	
l2323:	
	btfsc	(57/8),(57)&7	;volatile
	goto	u3411
	goto	u3410
u3411:
	goto	l2327
u3410:
	line	92
	
l2325:	
;door1ph.c: 91: {
;door1ph.c: 92: door_State = Opening;
	movlw	(02h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_door_State)
	goto	l2327
	line	93
	
l76:	
	line	96
	
l2327:	
;door1ph.c: 93: }
;door1ph.c: 96: integer = eeprom_read(0x00);
	movlw	(0)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@integer)^080h
	line	97
	
l2329:	
;door1ph.c: 97: _delay(50);
	opt asmopt_off
movlw	16
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_main+0)+0,f
u3657:
decfsz	(??_main+0)+0,f
	goto	u3657
	nop
opt asmopt_on

	line	98
;door1ph.c: 98: fraction = eeprom_read(0x01);
	movlw	(01h)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@fraction)^080h
	line	99
	
l2331:	
;door1ph.c: 99: _delay(50);
	opt asmopt_off
movlw	16
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_main+0)+0,f
u3667:
decfsz	(??_main+0)+0,f
	goto	u3667
	nop
opt asmopt_on

	line	100
	
l2333:	
;door1ph.c: 100: normal_current = integer + (fraction * 0.01);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@fraction)^080h,w
	fcall	___lbtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lbtoft)),w
	movwf	(___ftmul@f2)
	movf	(1+(?___lbtoft)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___lbtoft)),w
	movwf	(___ftmul@f2+2)
	movlw	0xd7
	movwf	(___ftmul@f1)
	movlw	0x23
	movwf	(___ftmul@f1+1)
	movlw	0x3c
	movwf	(___ftmul@f1+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___ftadd@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@integer)^080h,w
	fcall	___lbtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lbtoft)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___lbtoft)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___lbtoft)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(_normal_current)
	movf	(1+(?___ftadd)),w
	movwf	(_normal_current+1)
	movf	(2+(?___ftadd)),w
	movwf	(_normal_current+2)
	line	102
;door1ph.c: 102: OPTION_REG = 0xC0;
	movlw	(0C0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	103
;door1ph.c: 103: INTCON = 0x90;
	movlw	(090h)
	movwf	(11)	;volatile
	line	105
;door1ph.c: 105: while(1)
	
l77:	
	line	107
;door1ph.c: 106: {
;door1ph.c: 107: if(door_State == Opening)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_door_State),w
	xorlw	02h
	skipz
	goto	u3421
	goto	u3420
u3421:
	goto	l2373
u3420:
	line	110
	
l2335:	
;door1ph.c: 108: {
;door1ph.c: 110: RB3 = 1;
	bsf	(51/8),(51)&7	;volatile
	line	111
;door1ph.c: 111: RB1 = 1;
	bsf	(49/8),(49)&7	;volatile
	line	112
	
l2337:	
;door1ph.c: 112: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u3677:
	decfsz	((??_main+0)+0),f
	goto	u3677
	decfsz	((??_main+0)+0+1),f
	goto	u3677
	decfsz	((??_main+0)+0+2),f
	goto	u3677
	nop2
opt asmopt_on

	line	113
	
l2339:	
;door1ph.c: 113: Over_Current_Timer = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@Over_Current_Timer)^080h
	clrf	(main@Over_Current_Timer+1)^080h
	line	114
;door1ph.c: 114: while(RC0 == 0 && door_State == Opening && Over_Current_Timer < 3000)
	goto	l2349
	
l80:	
	line	118
	
l2341:	
;door1ph.c: 115: {
;door1ph.c: 118: if(check_over_current() == 1)
	fcall	_check_over_current
	xorlw	01h
	skipz
	goto	u3431
	goto	u3430
u3431:
	goto	l2347
u3430:
	line	120
	
l2343:	
;door1ph.c: 119: {
;door1ph.c: 120: _delay(1000);
	opt asmopt_off
movlw	249
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_main+0)+0,f
u3687:
	nop
decfsz	(??_main+0)+0,f
	goto	u3687
	nop2	;nop
	nop
opt asmopt_on

	line	121
	
l2345:	
;door1ph.c: 121: Over_Current_Timer = Over_Current_Timer + 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@Over_Current_Timer)^080h,w
	addlw	low(01h)
	movwf	(main@Over_Current_Timer)^080h
	movf	(main@Over_Current_Timer+1)^080h,w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(main@Over_Current_Timer)^080h
	line	122
;door1ph.c: 122: }
	goto	l2349
	line	123
	
l81:	
	line	125
	
l2347:	
;door1ph.c: 123: else
;door1ph.c: 124: {
;door1ph.c: 125: Over_Current_Timer = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@Over_Current_Timer)^080h
	clrf	(main@Over_Current_Timer+1)^080h
	goto	l2349
	line	126
	
l82:	
	goto	l2349
	line	127
	
l79:	
	line	114
	
l2349:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(56/8),(56)&7	;volatile
	goto	u3441
	goto	u3440
u3441:
	goto	l85
u3440:
	
l2351:	
	movf	(_door_State),w
	xorlw	02h
	skipz
	goto	u3451
	goto	u3450
u3451:
	goto	l85
u3450:
	
l2353:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@Over_Current_Timer+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0BB8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3465
	movlw	low(0BB8h)
	subwf	(main@Over_Current_Timer)^080h,w
u3465:

	skipc
	goto	u3461
	goto	u3460
u3461:
	goto	l2341
u3460:
	goto	l85
	
l84:	
	
l85:	
	line	130
;door1ph.c: 126: }
;door1ph.c: 127: }
;door1ph.c: 130: RB3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7	;volatile
	line	131
;door1ph.c: 131: RB1 = 0;
	bcf	(49/8),(49)&7	;volatile
	line	132
	
l2355:	
;door1ph.c: 132: _delay(1500000);
	opt asmopt_off
movlw  8
movwf	((??_main+0)+0+2),f
movlw	157
movwf	((??_main+0)+0+1),f
	movlw	11
movwf	((??_main+0)+0),f
u3697:
	decfsz	((??_main+0)+0),f
	goto	u3697
	decfsz	((??_main+0)+0+1),f
	goto	u3697
	decfsz	((??_main+0)+0+2),f
	goto	u3697
	nop2
opt asmopt_on

	line	135
	
l2357:	
;door1ph.c: 135: if(RC0 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(56/8),(56)&7	;volatile
	goto	u3471
	goto	u3470
u3471:
	goto	l2361
u3470:
	line	138
	
l2359:	
;door1ph.c: 136: {
;door1ph.c: 138: door_State = Opened;
	clrf	(_door_State)
	goto	l2361
	line	139
	
l86:	
	line	140
	
l2361:	
;door1ph.c: 139: }
;door1ph.c: 140: if(Over_Current_Timer >= 3000)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@Over_Current_Timer+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0BB8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3485
	movlw	low(0BB8h)
	subwf	(main@Over_Current_Timer)^080h,w
u3485:

	skipc
	goto	u3481
	goto	u3480
u3481:
	goto	l2373
u3480:
	line	143
	
l2363:	
;door1ph.c: 141: {
;door1ph.c: 143: INTCON = 0x00;
	clrf	(11)	;volatile
	goto	l2365
	line	144
;door1ph.c: 144: while(1)
	
l88:	
	line	147
	
l2365:	
;door1ph.c: 145: {
;door1ph.c: 147: RC6 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(62/8),(62)&7	;volatile
	line	148
	
l2367:	
;door1ph.c: 148: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u3707:
	decfsz	((??_main+0)+0),f
	goto	u3707
	decfsz	((??_main+0)+0+1),f
	goto	u3707
	decfsz	((??_main+0)+0+2),f
	goto	u3707
	nop2
opt asmopt_on

	line	149
	
l2369:	
;door1ph.c: 149: RC6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(62/8),(62)&7	;volatile
	line	150
	
l2371:	
;door1ph.c: 150: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u3717:
	decfsz	((??_main+0)+0),f
	goto	u3717
	decfsz	((??_main+0)+0+1),f
	goto	u3717
	decfsz	((??_main+0)+0+2),f
	goto	u3717
	nop2
opt asmopt_on

	goto	l2365
	line	151
	
l89:	
	line	144
	goto	l2365
	
l90:	
	goto	l2373
	line	152
	
l87:	
	goto	l2373
	line	154
	
l78:	
	line	156
	
l2373:	
;door1ph.c: 151: }
;door1ph.c: 152: }
;door1ph.c: 154: }
;door1ph.c: 156: if(door_State == Closing)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_door_State),w
	xorlw	03h
	skipz
	goto	u3491
	goto	u3490
u3491:
	goto	l2421
u3490:
	line	159
	
l2375:	
;door1ph.c: 157: {
;door1ph.c: 159: RB4 = 1;
	bsf	(52/8),(52)&7	;volatile
	line	160
;door1ph.c: 160: RB2 = 1;
	bsf	(50/8),(50)&7	;volatile
	line	161
	
l2377:	
;door1ph.c: 161: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u3727:
	decfsz	((??_main+0)+0),f
	goto	u3727
	decfsz	((??_main+0)+0+1),f
	goto	u3727
	decfsz	((??_main+0)+0+2),f
	goto	u3727
	nop2
opt asmopt_on

	line	162
	
l2379:	
;door1ph.c: 162: Over_Current_Timer = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@Over_Current_Timer)^080h
	clrf	(main@Over_Current_Timer+1)^080h
	line	163
;door1ph.c: 163: while((RC1 == 0 && RC2 == 0) && (door_State == Closing && Over_Current_Timer < 3000))
	goto	l2389
	
l93:	
	line	167
	
l2381:	
;door1ph.c: 164: {
;door1ph.c: 167: if(check_over_current() == 1)
	fcall	_check_over_current
	xorlw	01h
	skipz
	goto	u3501
	goto	u3500
u3501:
	goto	l2387
u3500:
	line	169
	
l2383:	
;door1ph.c: 168: {
;door1ph.c: 169: _delay(1000);
	opt asmopt_off
movlw	249
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_main+0)+0,f
u3737:
	nop
decfsz	(??_main+0)+0,f
	goto	u3737
	nop2	;nop
	nop
opt asmopt_on

	line	170
	
l2385:	
;door1ph.c: 170: Over_Current_Timer = Over_Current_Timer + 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@Over_Current_Timer)^080h,w
	addlw	low(01h)
	movwf	(main@Over_Current_Timer)^080h
	movf	(main@Over_Current_Timer+1)^080h,w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(main@Over_Current_Timer)^080h
	line	171
;door1ph.c: 171: }
	goto	l2389
	line	172
	
l94:	
	line	174
	
l2387:	
;door1ph.c: 172: else
;door1ph.c: 173: {
;door1ph.c: 174: Over_Current_Timer = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@Over_Current_Timer)^080h
	clrf	(main@Over_Current_Timer+1)^080h
	goto	l2389
	line	175
	
l95:	
	goto	l2389
	line	176
	
l92:	
	line	163
	
l2389:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(57/8),(57)&7	;volatile
	goto	u3511
	goto	u3510
u3511:
	goto	l100
u3510:
	
l2391:	
	btfsc	(58/8),(58)&7	;volatile
	goto	u3521
	goto	u3520
u3521:
	goto	l100
u3520:
	
l2393:	
	movf	(_door_State),w
	xorlw	03h
	skipz
	goto	u3531
	goto	u3530
u3531:
	goto	l100
u3530:
	
l2395:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@Over_Current_Timer+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0BB8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3545
	movlw	low(0BB8h)
	subwf	(main@Over_Current_Timer)^080h,w
u3545:

	skipc
	goto	u3541
	goto	u3540
u3541:
	goto	l2381
u3540:
	goto	l100
	
l99:	
	goto	l100
	
l97:	
	
l100:	
	line	179
;door1ph.c: 175: }
;door1ph.c: 176: }
;door1ph.c: 179: RB4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7	;volatile
	line	180
;door1ph.c: 180: RB2 = 0;
	bcf	(50/8),(50)&7	;volatile
	line	181
	
l2397:	
;door1ph.c: 181: _delay(1500000);
	opt asmopt_off
movlw  8
movwf	((??_main+0)+0+2),f
movlw	157
movwf	((??_main+0)+0+1),f
	movlw	11
movwf	((??_main+0)+0),f
u3747:
	decfsz	((??_main+0)+0),f
	goto	u3747
	decfsz	((??_main+0)+0+1),f
	goto	u3747
	decfsz	((??_main+0)+0+2),f
	goto	u3747
	nop2
opt asmopt_on

	line	184
	
l2399:	
;door1ph.c: 184: if(RC2 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(58/8),(58)&7	;volatile
	goto	u3551
	goto	u3550
u3551:
	goto	l2403
u3550:
	line	187
	
l2401:	
;door1ph.c: 185: {
;door1ph.c: 187: door_State = Opening;
	movlw	(02h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_door_State)
	goto	l2403
	line	188
	
l101:	
	line	189
	
l2403:	
;door1ph.c: 188: }
;door1ph.c: 189: if(RC1 == 1)
	btfss	(57/8),(57)&7	;volatile
	goto	u3561
	goto	u3560
u3561:
	goto	l2407
u3560:
	line	192
	
l2405:	
;door1ph.c: 190: {
;door1ph.c: 192: door_State = Closed;
	clrf	(_door_State)
	incf	(_door_State),f
	goto	l2407
	line	193
	
l102:	
	line	194
	
l2407:	
;door1ph.c: 193: }
;door1ph.c: 194: if(Over_Current_Timer >= 3000)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@Over_Current_Timer+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0BB8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3575
	movlw	low(0BB8h)
	subwf	(main@Over_Current_Timer)^080h,w
u3575:

	skipc
	goto	u3571
	goto	u3570
u3571:
	goto	l2421
u3570:
	line	197
	
l2409:	
;door1ph.c: 195: {
;door1ph.c: 197: INTCON = 0x00;
	clrf	(11)	;volatile
	line	198
	
l2411:	
;door1ph.c: 198: RC6 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(62/8),(62)&7	;volatile
	goto	l2413
	line	199
;door1ph.c: 199: while(1)
	
l104:	
	line	202
	
l2413:	
;door1ph.c: 200: {
;door1ph.c: 202: RC6 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(62/8),(62)&7	;volatile
	line	203
	
l2415:	
;door1ph.c: 203: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u3757:
	decfsz	((??_main+0)+0),f
	goto	u3757
	decfsz	((??_main+0)+0+1),f
	goto	u3757
	decfsz	((??_main+0)+0+2),f
	goto	u3757
	nop2
opt asmopt_on

	line	204
	
l2417:	
;door1ph.c: 204: RC6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(62/8),(62)&7	;volatile
	line	205
	
l2419:	
;door1ph.c: 205: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u3767:
	decfsz	((??_main+0)+0),f
	goto	u3767
	decfsz	((??_main+0)+0+1),f
	goto	u3767
	decfsz	((??_main+0)+0+2),f
	goto	u3767
	nop2
opt asmopt_on

	goto	l2413
	line	206
	
l105:	
	line	199
	goto	l2413
	
l106:	
	goto	l2421
	line	207
	
l103:	
	goto	l2421
	line	208
	
l91:	
	line	210
	
l2421:	
;door1ph.c: 206: }
;door1ph.c: 207: }
;door1ph.c: 208: }
;door1ph.c: 210: if(door_State == Opened && Auto_Close == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_door_State),f
	skipz
	goto	u3581
	goto	u3580
u3581:
	goto	l77
u3580:
	
l2423:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@Auto_Close)^080h,w
	xorlw	01h
	skipz
	goto	u3591
	goto	u3590
u3591:
	goto	l77
u3590:
	line	213
	
l2425:	
;door1ph.c: 211: {
;door1ph.c: 213: seconds = 0;
	clrf	(main@seconds)^080h
	clrf	(main@seconds+1)^080h
	line	214
;door1ph.c: 214: while(door_State == Opened && seconds < 30)
	goto	l2429
	
l109:	
	line	216
	
l2427:	
;door1ph.c: 215: {
;door1ph.c: 216: _delay(1000000);
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u3777:
	decfsz	((??_main+0)+0),f
	goto	u3777
	decfsz	((??_main+0)+0+1),f
	goto	u3777
	decfsz	((??_main+0)+0+2),f
	goto	u3777
	nop2
opt asmopt_on

	line	217
;door1ph.c: 217: seconds++;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(main@seconds)^080h,f
	skipnc
	incf	(main@seconds+1)^080h,f
	movlw	high(01h)
	addwf	(main@seconds+1)^080h,f
	goto	l2429
	line	218
	
l108:	
	line	214
	
l2429:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_door_State),f
	skipz
	goto	u3601
	goto	u3600
u3601:
	goto	l2433
u3600:
	
l2431:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@seconds+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01Eh))^80h
	subwf	btemp+1,w
	skipz
	goto	u3615
	movlw	low(01Eh)
	subwf	(main@seconds)^080h,w
u3615:

	skipc
	goto	u3611
	goto	u3610
u3611:
	goto	l2427
u3610:
	goto	l2433
	
l111:	
	goto	l2433
	
l112:	
	line	220
	
l2433:	
;door1ph.c: 218: }
;door1ph.c: 220: if(seconds >= 30)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@seconds+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01Eh))^80h
	subwf	btemp+1,w
	skipz
	goto	u3625
	movlw	low(01Eh)
	subwf	(main@seconds)^080h,w
u3625:

	skipc
	goto	u3621
	goto	u3620
u3621:
	goto	l77
u3620:
	line	223
	
l2435:	
;door1ph.c: 221: {
;door1ph.c: 223: door_State = Closing;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_door_State)
	goto	l77
	line	224
	
l113:	
	goto	l77
	line	225
	
l107:	
	goto	l77
	line	226
	
l114:	
	line	105
	goto	l77
	
l115:	
	line	227
	
l116:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_over_current_config

;; *************** function _over_current_config *****************
;; Defined at:
;;		line 254 in file "E:\Study Material\XC8 PROJECTS\Door Controller\door1ph.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  integral        3   65[BANK0 ] unsigned char 
;;  fractional      3   62[BANK0 ] unsigned char 
;;  avg_reading     3   59[BANK0 ] float 
;;  over_current    3   51[BANK0 ] float 
;;  sum             2   68[BANK0 ] unsigned int 
;;  res             2   56[BANK0 ] unsigned int 
;;  readings        1   58[BANK0 ] unsigned char 
;;  points          1   55[BANK0 ] unsigned char 
;;  decimals        1   54[BANK0 ] unsigned char 
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
;;      Locals:         0      19       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      22       0       0       0
;;Total ram usage:       22 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_ReadADC
;;		___ftadd
;;		___ftmul
;;		___fttol
;;		___lwdiv
;;		___lwtoft
;;		_eeprom_write
;;		_modf
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	254
global __ptext1
__ptext1:	;psect for function _over_current_config
psect	text1
	file	"E:\Study Material\XC8 PROJECTS\Door Controller\door1ph.c"
	line	254
	global	__size_of_over_current_config
	__size_of_over_current_config	equ	__end_of_over_current_config-_over_current_config
	
_over_current_config:	
;incstack = 0
	opt	stack 3
; Regs used in _over_current_config: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	256
	
l2171:	
;door1ph.c: 256: float over_current_reading = 0;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(over_current_config@over_current_reading)
	movlw	0x0
	movwf	(over_current_config@over_current_reading+1)
	movlw	0x0
	movwf	(over_current_config@over_current_reading+2)
	line	257
;door1ph.c: 257: float avg_reading = 0;
	movlw	0x0
	movwf	(over_current_config@avg_reading)
	movlw	0x0
	movwf	(over_current_config@avg_reading+1)
	movlw	0x0
	movwf	(over_current_config@avg_reading+2)
	line	258
	
l2173:	
;door1ph.c: 258: unsigned int sum = 0;
	clrf	(over_current_config@sum)
	clrf	(over_current_config@sum+1)
	line	259
	
l2175:	
;door1ph.c: 259: unsigned int res = 0;
	clrf	(over_current_config@res)
	clrf	(over_current_config@res+1)
	line	260
	
l2177:	
;door1ph.c: 260: unsigned char readings = 0;
	clrf	(over_current_config@readings)
	line	267
	
l2179:	
;door1ph.c: 261: unsigned char decimals, points;
;door1ph.c: 262: double integral;
;door1ph.c: 263: double fractional;
;door1ph.c: 267: RB3 = 1;
	bsf	(51/8),(51)&7	;volatile
	line	268
	
l2181:	
;door1ph.c: 268: RB1 = 1;
	bsf	(49/8),(49)&7	;volatile
	line	269
	
l2183:	
;door1ph.c: 269: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_over_current_config+0)+0+2),f
movlw	19
movwf	((??_over_current_config+0)+0+1),f
	movlw	177
movwf	((??_over_current_config+0)+0),f
u3787:
	decfsz	((??_over_current_config+0)+0),f
	goto	u3787
	decfsz	((??_over_current_config+0)+0+1),f
	goto	u3787
	decfsz	((??_over_current_config+0)+0+2),f
	goto	u3787
	nop2
opt asmopt_on

	line	270
;door1ph.c: 270: sum = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(over_current_config@sum)
	clrf	(over_current_config@sum+1)
	line	271
;door1ph.c: 271: readings = 0;
	clrf	(over_current_config@readings)
	line	273
;door1ph.c: 273: while(RC0 == 0)
	goto	l2195
	
l126:	
	line	275
	
l2185:	
;door1ph.c: 274: {
;door1ph.c: 275: readings++;
	movlw	(01h)
	movwf	(??_over_current_config+0)+0
	movf	(??_over_current_config+0)+0,w
	addwf	(over_current_config@readings),f
	line	276
	
l2187:	
;door1ph.c: 276: res = 0;
	clrf	(over_current_config@res)
	clrf	(over_current_config@res+1)
	line	277
	
l2189:	
;door1ph.c: 277: res = ReadADC();
	fcall	_ReadADC
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_ReadADC)),w
	clrf	(over_current_config@res+1)
	addwf	(over_current_config@res+1)
	movf	(0+(?_ReadADC)),w
	clrf	(over_current_config@res)
	addwf	(over_current_config@res)

	line	278
	
l2191:	
;door1ph.c: 278: sum = sum + res;
	movf	(over_current_config@res),w
	addwf	(over_current_config@sum),w
	movwf	(over_current_config@sum)
	movf	(over_current_config@res+1),w
	skipnc
	incf	(over_current_config@res+1),w
	addwf	(over_current_config@sum+1),w
	movwf	1+(over_current_config@sum)
	line	279
	
l2193:	
;door1ph.c: 279: _delay(250000);
	opt asmopt_off
movlw  2
movwf	((??_over_current_config+0)+0+2),f
movlw	69
movwf	((??_over_current_config+0)+0+1),f
	movlw	169
movwf	((??_over_current_config+0)+0),f
u3797:
	decfsz	((??_over_current_config+0)+0),f
	goto	u3797
	decfsz	((??_over_current_config+0)+0+1),f
	goto	u3797
	decfsz	((??_over_current_config+0)+0+2),f
	goto	u3797
	nop2
opt asmopt_on

	goto	l2195
	line	280
	
l125:	
	line	273
	
l2195:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(56/8),(56)&7	;volatile
	goto	u3281
	goto	u3280
u3281:
	goto	l2185
u3280:
	
l127:	
	line	282
;door1ph.c: 280: }
;door1ph.c: 282: RB3 = 0;
	bcf	(51/8),(51)&7	;volatile
	line	283
;door1ph.c: 283: RB1 = 0;
	bcf	(49/8),(49)&7	;volatile
	line	284
	
l2197:	
;door1ph.c: 284: _delay(2000000);
	opt asmopt_off
movlw  11
movwf	((??_over_current_config+0)+0+2),f
movlw	38
movwf	((??_over_current_config+0)+0+1),f
	movlw	102
movwf	((??_over_current_config+0)+0),f
u3807:
	decfsz	((??_over_current_config+0)+0),f
	goto	u3807
	decfsz	((??_over_current_config+0)+0+1),f
	goto	u3807
	decfsz	((??_over_current_config+0)+0+2),f
	goto	u3807
	nop2
opt asmopt_on

	line	287
	
l2199:	
;door1ph.c: 287: avg_reading = sum/readings;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(over_current_config@readings),w
	movwf	(??_over_current_config+0)+0
	clrf	(??_over_current_config+0)+0+1
	movf	0+(??_over_current_config+0)+0,w
	movwf	(___lwdiv@divisor)
	movf	1+(??_over_current_config+0)+0,w
	movwf	(___lwdiv@divisor+1)
	movf	(over_current_config@sum+1),w
	clrf	(___lwdiv@dividend+1)
	addwf	(___lwdiv@dividend+1)
	movf	(over_current_config@sum),w
	clrf	(___lwdiv@dividend)
	addwf	(___lwdiv@dividend)

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwdiv)),w
	clrf	(___lwtoft@c+1)
	addwf	(___lwtoft@c+1)
	movf	(0+(?___lwdiv)),w
	clrf	(___lwtoft@c)
	addwf	(___lwtoft@c)

	fcall	___lwtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwtoft)),w
	movwf	(over_current_config@avg_reading)
	movf	(1+(?___lwtoft)),w
	movwf	(over_current_config@avg_reading+1)
	movf	(2+(?___lwtoft)),w
	movwf	(over_current_config@avg_reading+2)
	line	289
	
l2201:	
;door1ph.c: 289: over_current_reading = avg_reading + (avg_reading*0.7);
	movf	(over_current_config@avg_reading),w
	movwf	(___ftadd@f1)
	movf	(over_current_config@avg_reading+1),w
	movwf	(___ftadd@f1+1)
	movf	(over_current_config@avg_reading+2),w
	movwf	(___ftadd@f1+2)
	movlw	0x33
	movwf	(___ftmul@f1)
	movlw	0x33
	movwf	(___ftmul@f1+1)
	movlw	0x3f
	movwf	(___ftmul@f1+2)
	movf	(over_current_config@avg_reading),w
	movwf	(___ftmul@f2)
	movf	(over_current_config@avg_reading+1),w
	movwf	(___ftmul@f2+1)
	movf	(over_current_config@avg_reading+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(over_current_config@over_current_reading)
	movf	(1+(?___ftadd)),w
	movwf	(over_current_config@over_current_reading+1)
	movf	(2+(?___ftadd)),w
	movwf	(over_current_config@over_current_reading+2)
	line	292
	
l2203:	
;door1ph.c: 292: fractional = modf(over_current_reading, &integral);
	movf	(over_current_config@over_current_reading),w
	movwf	(modf@value)
	movf	(over_current_config@over_current_reading+1),w
	movwf	(modf@value+1)
	movf	(over_current_config@over_current_reading+2),w
	movwf	(modf@value+2)
	movlw	(over_current_config@integral)&0ffh
	movwf	(??_over_current_config+0)+0
	movf	(??_over_current_config+0)+0,w
	movwf	(modf@iptr)
	fcall	_modf
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_modf)),w
	movwf	(over_current_config@fractional)
	movf	(1+(?_modf)),w
	movwf	(over_current_config@fractional+1)
	movf	(2+(?_modf)),w
	movwf	(over_current_config@fractional+2)
	line	293
	
l2205:	
;door1ph.c: 293: fractional = fractional * 100;
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0xc8
	movwf	(___ftmul@f1+1)
	movlw	0x42
	movwf	(___ftmul@f1+2)
	movf	(over_current_config@fractional),w
	movwf	(___ftmul@f2)
	movf	(over_current_config@fractional+1),w
	movwf	(___ftmul@f2+1)
	movf	(over_current_config@fractional+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(over_current_config@fractional)
	movf	(1+(?___ftmul)),w
	movwf	(over_current_config@fractional+1)
	movf	(2+(?___ftmul)),w
	movwf	(over_current_config@fractional+2)
	line	294
	
l2207:	
;door1ph.c: 294: decimals = integral;
	movf	(over_current_config@integral),w
	movwf	(___fttol@f1)
	movf	(over_current_config@integral+1),w
	movwf	(___fttol@f1+1)
	movf	(over_current_config@integral+2),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___fttol)))),w
	movwf	(??_over_current_config+0)+0
	movf	(??_over_current_config+0)+0,w
	movwf	(over_current_config@decimals)
	line	295
	
l2209:	
;door1ph.c: 295: points = fractional;
	movf	(over_current_config@fractional),w
	movwf	(___fttol@f1)
	movf	(over_current_config@fractional+1),w
	movwf	(___fttol@f1+1)
	movf	(over_current_config@fractional+2),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___fttol)))),w
	movwf	(??_over_current_config+0)+0
	movf	(??_over_current_config+0)+0,w
	movwf	(over_current_config@points)
	line	298
	
l2211:	
;door1ph.c: 298: eeprom_write(0x00,decimals);
	movf	(over_current_config@decimals),w
	movwf	(??_over_current_config+0)+0
	movf	(??_over_current_config+0)+0,w
	movwf	(eeprom_write@value)
	movlw	(0)
	fcall	_eeprom_write
	line	299
	
l2213:	
;door1ph.c: 299: _delay(50);
	opt asmopt_off
movlw	16
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_over_current_config+0)+0,f
u3817:
decfsz	(??_over_current_config+0)+0,f
	goto	u3817
	nop
opt asmopt_on

	line	300
	
l2215:	
;door1ph.c: 300: eeprom_write(0x01,points);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(over_current_config@points),w
	movwf	(??_over_current_config+0)+0
	movf	(??_over_current_config+0)+0,w
	movwf	(eeprom_write@value)
	movlw	(01h)
	fcall	_eeprom_write
	line	301
	
l2217:	
;door1ph.c: 301: _delay(50);
	opt asmopt_off
movlw	16
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_over_current_config+0)+0,f
u3827:
decfsz	(??_over_current_config+0)+0,f
	goto	u3827
	nop
opt asmopt_on

	line	305
	
l2219:	
;door1ph.c: 305: RB4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7	;volatile
	line	306
	
l2221:	
;door1ph.c: 306: RB2 = 1;
	bsf	(50/8),(50)&7	;volatile
	line	307
	
l2223:	
;door1ph.c: 307: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_over_current_config+0)+0+2),f
movlw	19
movwf	((??_over_current_config+0)+0+1),f
	movlw	177
movwf	((??_over_current_config+0)+0),f
u3837:
	decfsz	((??_over_current_config+0)+0),f
	goto	u3837
	decfsz	((??_over_current_config+0)+0+1),f
	goto	u3837
	decfsz	((??_over_current_config+0)+0+2),f
	goto	u3837
	nop2
opt asmopt_on

	line	309
;door1ph.c: 309: while(RC1 == 0)
	goto	l128
	
l129:	
	line	312
;door1ph.c: 310: {
	
l128:	
	line	309
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(57/8),(57)&7	;volatile
	goto	u3291
	goto	u3290
u3291:
	goto	l128
u3290:
	
l130:	
	line	314
;door1ph.c: 312: }
;door1ph.c: 314: RB4 = 0;
	bcf	(52/8),(52)&7	;volatile
	line	315
;door1ph.c: 315: RB2 = 0;
	bcf	(50/8),(50)&7	;volatile
	line	316
	
l2225:	
;door1ph.c: 316: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_over_current_config+0)+0+2),f
movlw	19
movwf	((??_over_current_config+0)+0+1),f
	movlw	177
movwf	((??_over_current_config+0)+0),f
u3847:
	decfsz	((??_over_current_config+0)+0),f
	goto	u3847
	decfsz	((??_over_current_config+0)+0+1),f
	goto	u3847
	decfsz	((??_over_current_config+0)+0+2),f
	goto	u3847
	nop2
opt asmopt_on

	goto	l131
	line	317
	
l2227:	
	line	318
;door1ph.c: 317: return;
	
l131:	
	return
	opt stack 0
GLOBAL	__end_of_over_current_config
	__end_of_over_current_config:
	signat	_over_current_config,88
	global	_modf

;; *************** function _modf *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\modf.c"
;; Parameters:    Size  Location     Type
;;  value           3   44[BANK0 ] unsigned char 
;;  iptr            1   47[BANK0 ] PTR 
;;		 -> over_current_config@integral(3), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   44[BANK0 ] PTR 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___attoft
;;		___ftadd
;;		___ftneg
;;		___fttol
;; This function is called by:
;;		_over_current_config
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\modf.c"
	line	8
global __ptext2
__ptext2:	;psect for function _modf
psect	text2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\modf.c"
	line	8
	global	__size_of_modf
	__size_of_modf	equ	__end_of_modf-_modf
	
_modf:	
;incstack = 0
	opt	stack 3
; Regs used in _modf: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	26
	
l2047:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(modf@value),w
	movwf	(___fttol@f1)
	movf	(modf@value+1),w
	movwf	(___fttol@f1+1)
	movf	(modf@value+2),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___fttol)),w
	movwf	(___attoft@c+2)
	movf	(1+(?___fttol)),w
	movwf	(___attoft@c+1)
	movf	(0+(?___fttol)),w
	movwf	(___attoft@c)

	fcall	___attoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(modf@iptr),w
	movwf	fsr0
	movf	(0+(?___attoft)),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movf	(1+(?___attoft)),w
	movwf	indf
	incf	fsr0,f
	movf	(2+(?___attoft)),w
	movwf	indf
	line	27
	movf	(modf@value),w
	movwf	(___ftadd@f1)
	movf	(modf@value+1),w
	movwf	(___ftadd@f1+1)
	movf	(modf@value+2),w
	movwf	(___ftadd@f1+2)
	movf	(modf@iptr),w
	movwf	fsr0
	movf	indf,w
	movwf	(___ftneg@f1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___ftneg@f1+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftneg)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(?_modf)
	movf	(1+(?___ftadd)),w
	movwf	(?_modf+1)
	movf	(2+(?___ftadd)),w
	movwf	(?_modf+2)
	goto	l623
	
l2049:	
	line	32
	
l623:	
	return
	opt stack 0
GLOBAL	__end_of_modf
	__end_of_modf:
	signat	_modf,8315
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4    9[BANK0 ] unsigned long 
;;  exp1            1   13[BANK0 ] unsigned char 
;;  sign1           1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      14       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_over_current_config
;;		_modf
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\fttol.c"
	line	44
global __ptext3
__ptext3:	;psect for function ___fttol
psect	text3
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;incstack = 0
	opt	stack 4
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l1989:	
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
	goto	u2881
	goto	u2880
u2881:
	goto	l1995
u2880:
	line	50
	
l1991:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l511
	
l1993:	
	goto	l511
	
l510:	
	line	51
	
l1995:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u2895:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u2890:
	addlw	-1
	skipz
	goto	u2895
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l1997:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l1999:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l2001:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l2003:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l2005:	
	btfss	(___fttol@exp1),7
	goto	u2901
	goto	u2900
u2901:
	goto	l2015
u2900:
	line	57
	
l2007:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u2911
	goto	u2910
u2911:
	goto	l2013
u2910:
	line	58
	
l2009:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l511
	
l2011:	
	goto	l511
	
l513:	
	goto	l2013
	line	59
	
l514:	
	line	60
	
l2013:	
	movlw	01h
u2925:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u2925

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u2931
	goto	u2930
u2931:
	goto	l2013
u2930:
	goto	l2025
	
l515:	
	line	62
	goto	l2025
	
l512:	
	line	63
	
l2015:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u2941
	goto	u2940
u2941:
	goto	l2023
u2940:
	line	64
	
l2017:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l511
	
l2019:	
	goto	l511
	
l517:	
	line	65
	goto	l2023
	
l519:	
	line	66
	
l2021:	
	movlw	01h
	movwf	(??___fttol+0)+0
u2955:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u2955
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l2023
	line	68
	
l518:	
	line	65
	
l2023:	
	movf	(___fttol@exp1),f
	skipz
	goto	u2961
	goto	u2960
u2961:
	goto	l2021
u2960:
	goto	l2025
	
l520:	
	goto	l2025
	line	69
	
l516:	
	line	70
	
l2025:	
	movf	(___fttol@sign1),w
	skipz
	goto	u2970
	goto	l2029
u2970:
	line	71
	
l2027:	
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
	goto	l2029
	
l521:	
	line	72
	
l2029:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l511
	
l2031:	
	line	73
	
l511:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___ftneg

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_modf
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\ftneg.c"
	line	15
global __ptext4
__ptext4:	;psect for function ___ftneg
psect	text4
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\ftneg.c"
	line	15
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftneg: [wreg]
	line	17
	
l1981:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u2871
	goto	u2870
u2871:
	goto	l1985
u2870:
	line	18
	
l1983:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	goto	l1985
	
l501:	
	line	19
	
l1985:	
	goto	l502
	
l1987:	
	line	20
	
l502:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
	signat	___ftneg,4219
	global	___ftadd

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 86 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   31[BANK0 ] float 
;;  f2              3   34[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   43[BANK0 ] unsigned char 
;;  exp2            1   42[BANK0 ] unsigned char 
;;  sign            1   41[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   31[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;;		_over_current_config
;;		_modf
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\ftadd.c"
	line	86
global __ptext5
__ptext5:	;psect for function ___ftadd
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
;incstack = 0
	opt	stack 3
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l1909:	
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
	
l1911:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u2630
	goto	l1917
u2630:
	
l1913:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u2641
	goto	u2640
u2641:
	goto	l1921
u2640:
	
l1915:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2651
	goto	u2650
u2651:
	goto	l1921
u2650:
	goto	l1917
	
l444:	
	line	93
	
l1917:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l445
	
l1919:	
	goto	l445
	
l442:	
	line	94
	
l1921:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u2660
	goto	l448
u2660:
	
l1923:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2671
	goto	u2670
u2671:
	goto	l1927
u2670:
	
l1925:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2681
	goto	u2680
u2681:
	goto	l1927
u2680:
	
l448:	
	line	95
	goto	l445
	
l446:	
	line	96
	
l1927:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l1929:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u2691
	goto	u2690
u2691:
	goto	l449
u2690:
	line	98
	
l1931:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l449:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2701
	goto	u2700
u2701:
	goto	l450
u2700:
	line	100
	
l1933:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l450:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l1935:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l1937:	
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
	goto	u2711
	goto	u2710
u2711:
	goto	l1949
u2710:
	goto	l1939
	line	109
	
l452:	
	line	110
	
l1939:	
	movlw	01h
u2725:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u2725
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l1941:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2731
	goto	u2730
u2731:
	goto	l1947
u2730:
	
l1943:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u2741
	goto	u2740
u2741:
	goto	l1939
u2740:
	goto	l1947
	
l454:	
	goto	l1947
	
l455:	
	line	113
	goto	l1947
	
l457:	
	line	114
	
l1945:	
	movlw	01h
u2755:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u2755

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l1947
	line	116
	
l456:	
	line	113
	
l1947:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2761
	goto	u2760
u2761:
	goto	l1945
u2760:
	goto	l459
	
l458:	
	line	117
	goto	l459
	
l451:	
	
l1949:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2771
	goto	u2770
u2771:
	goto	l459
u2770:
	goto	l1951
	line	120
	
l461:	
	line	121
	
l1951:	
	movlw	01h
u2785:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u2785
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l1953:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2791
	goto	u2790
u2791:
	goto	l1959
u2790:
	
l1955:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u2801
	goto	u2800
u2801:
	goto	l1951
u2800:
	goto	l1959
	
l463:	
	goto	l1959
	
l464:	
	line	124
	goto	l1959
	
l466:	
	line	125
	
l1957:	
	movlw	01h
u2815:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u2815

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l1959
	line	127
	
l465:	
	line	124
	
l1959:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2821
	goto	u2820
u2821:
	goto	l1957
u2820:
	goto	l459
	
l467:	
	goto	l459
	line	128
	
l460:	
	line	129
	
l459:	
	btfss	(___ftadd@sign),(7)&7
	goto	u2831
	goto	u2830
u2831:
	goto	l1963
u2830:
	line	131
	
l1961:	
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
	goto	l1963
	line	133
	
l468:	
	line	134
	
l1963:	
	btfss	(___ftadd@sign),(6)&7
	goto	u2841
	goto	u2840
u2841:
	goto	l1967
u2840:
	line	136
	
l1965:	
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
	goto	l1967
	line	138
	
l469:	
	line	139
	
l1967:	
	clrf	(___ftadd@sign)
	line	140
	
l1969:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u2851
	addwf	(___ftadd@f2+1),f
u2851:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u2852
	addwf	(___ftadd@f2+2),f
u2852:

	line	141
	
l1971:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2861
	goto	u2860
u2861:
	goto	l1977
u2860:
	line	142
	
l1973:	
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
	
l1975:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	goto	l1977
	line	145
	
l470:	
	line	146
	
l1977:	
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	goto	l445
	
l1979:	
	line	148
	
l445:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	___attoft

;; *************** function ___attoft *****************
;; Defined at:
;;		line 37 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\attoft.c"
;; Parameters:    Size  Location     Type
;;  c               3   14[BANK0 ] m
;; Auto vars:     Size  Location     Type
;;  sign            1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   14[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         1       5       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_modf
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\attoft.c"
	line	37
global __ptext6
__ptext6:	;psect for function ___attoft
psect	text6
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\attoft.c"
	line	37
	global	__size_of___attoft
	__size_of___attoft	equ	__end_of___attoft-___attoft
	
___attoft:	
;incstack = 0
	opt	stack 3
; Regs used in ___attoft: [wreg+status,2+status,0+pclath+cstack]
	line	41
	
l1899:	
	clrf	(___attoft@sign)
	line	42
	
l1901:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___attoft@c+2),7
	goto	u2621
	goto	u2620
u2621:
	goto	l1905
u2620:
	line	43
	
l1903:	
	comf	(___attoft@c),f
	comf	(___attoft@c+1),f
	comf	(___attoft@c+2),f
	incf	(___attoft@c),f
	skipnz
	incf	(___attoft@c+1),f
	skipnz
	incf	(___attoft@c+2),f
	line	44
	clrf	(___attoft@sign)
	incf	(___attoft@sign),f
	goto	l1905
	line	45
	
l387:	
	line	46
	
l1905:	
	movf	(___attoft@c),w
	movwf	(___ftpack@arg)
	movf	(___attoft@c+1),w
	movwf	(___ftpack@arg+1)
	movf	(___attoft@c+2),w
	movwf	(___ftpack@arg+2)
	movlw	(08Eh)
	movwf	(??___attoft+0)+0
	movf	(??___attoft+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___attoft@sign),w
	movwf	(??___attoft+1)+0
	movf	(??___attoft+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___attoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___attoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___attoft+2)
	goto	l388
	
l1907:	
	line	47
	
l388:	
	return
	opt stack 0
GLOBAL	__end_of___attoft
	__end_of___attoft:
	signat	___attoft,4219
	global	_eeprom_write

;; *************** function _eeprom_write *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic\eewrite.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;;  value           1    5[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr            1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         1       2       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_over_current_config
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic\eewrite.c"
	line	6
global __ptext7
__ptext7:	;psect for function _eeprom_write
psect	text7
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
	
l178:	
	goto	l179
	
l180:	
	
l179:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	btfsc	(3169/8)^0180h,(3169)&7	;volsfr
	goto	u2991
	goto	u2990
u2991:
	goto	l179
u2990:
	goto	l2051
	
l181:	
	
l2051:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(eeprom_write@addr),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	movf	(eeprom_write@value),w
	movwf	(268)^0100h	;volatile
	
l2053:	
	movlw	(03Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_eeprom_write+0)+0
	movf	(??_eeprom_write+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	andwf	(396)^0180h,f	;volsfr
	
l2055:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(24/8),(24)&7	;volatile
	
l2057:	
	btfss	(95/8),(95)&7	;volatile
	goto	u3001
	goto	u3000
u3001:
	goto	l182
u3000:
	
l2059:	
	bsf	(24/8),(24)&7	;volatile
	
l182:	
	bcf	(95/8),(95)&7	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3170/8)^0180h,(3170)&7	;volsfr
	
l2061:	
	movlw	(055h)
	movwf	(397)^0180h	;volsfr
	movlw	(0AAh)
	movwf	(397)^0180h	;volsfr
	
l2063:	
	bsf	(3169/8)^0180h,(3169)&7	;volsfr
	
l2065:	
	bcf	(3170/8)^0180h,(3170)&7	;volsfr
	
l2067:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(24/8),(24)&7	;volatile
	goto	u3011
	goto	u3010
u3011:
	goto	l185
u3010:
	
l2069:	
	bsf	(95/8),(95)&7	;volatile
	goto	l185
	
l183:	
	goto	l185
	
l184:	
	line	9
	
l185:	
	return
	opt stack 0
GLOBAL	__end_of_eeprom_write
	__end_of_eeprom_write:
	signat	_eeprom_write,8312
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\lwdiv.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       7       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_over_current_config
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\lwdiv.c"
	line	6
global __ptext8
__ptext8:	;psect for function ___lwdiv
psect	text8
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 5
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l2141:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l2143:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u3211
	goto	u3210
u3211:
	goto	l2163
u3210:
	line	16
	
l2145:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l2151
	
l600:	
	line	18
	
l2147:	
	movlw	01h
	
u3225:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3225
	line	19
	
l2149:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l2151
	line	20
	
l599:	
	line	17
	
l2151:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u3231
	goto	u3230
u3231:
	goto	l2147
u3230:
	goto	l2153
	
l601:	
	goto	l2153
	line	21
	
l602:	
	line	22
	
l2153:	
	movlw	01h
	
u3245:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3245
	line	23
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u3255
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u3255:
	skipc
	goto	u3251
	goto	u3250
u3251:
	goto	l2159
u3250:
	line	24
	
l2155:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l2157:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l2159
	line	26
	
l603:	
	line	27
	
l2159:	
	movlw	01h
	
u3265:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u3265
	line	28
	
l2161:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u3271
	goto	u3270
u3271:
	goto	l2153
u3270:
	goto	l2163
	
l604:	
	goto	l2163
	line	29
	
l598:	
	line	30
	
l2163:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l605
	
l2165:	
	line	31
	
l605:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   15[BANK0 ] float 
;;  f2              3   18[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   26[BANK0 ] unsigned um
;;  sign            1   30[BANK0 ] unsigned char 
;;  cntr            1   29[BANK0 ] unsigned char 
;;  exp             1   25[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   15[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;;		_over_current_config
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\ftmul.c"
	line	62
global __ptext9
__ptext9:	;psect for function ___ftmul
psect	text9
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	67
	
l2091:	
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
	goto	u3071
	goto	u3070
u3071:
	goto	l2097
u3070:
	line	68
	
l2093:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l491
	
l2095:	
	goto	l491
	
l490:	
	line	69
	
l2097:	
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
	goto	u3081
	goto	u3080
u3081:
	goto	l2103
u3080:
	line	70
	
l2099:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l491
	
l2101:	
	goto	l491
	
l492:	
	line	71
	
l2103:	
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
u3095:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u3090:
	addlw	-1
	skipz
	goto	u3095
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
u3105:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u3100:
	addlw	-1
	skipz
	goto	u3105
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
	
l2105:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	77
	
l2107:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	78
	
l2109:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	79
	
l2111:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	134
	
l2113:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l2115
	line	135
	
l493:	
	line	136
	
l2115:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3111
	goto	u3110
u3111:
	goto	l2119
u3110:
	line	137
	
l2117:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3121
	addwf	(___ftmul@f3_as_product+1),f
u3121:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3122
	addwf	(___ftmul@f3_as_product+2),f
u3122:

	goto	l2119
	
l494:	
	line	138
	
l2119:	
	movlw	01h
u3135:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3135

	line	139
	
l2121:	
	movlw	01h
u3145:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u3145
	line	140
	
l2123:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3151
	goto	u3150
u3151:
	goto	l2115
u3150:
	goto	l2125
	
l495:	
	line	143
	
l2125:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l2127
	line	144
	
l496:	
	line	145
	
l2127:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3161
	goto	u3160
u3161:
	goto	l2131
u3160:
	line	146
	
l2129:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3171
	addwf	(___ftmul@f3_as_product+1),f
u3171:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3172
	addwf	(___ftmul@f3_as_product+2),f
u3172:

	goto	l2131
	
l497:	
	line	147
	
l2131:	
	movlw	01h
u3185:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3185

	line	148
	
l2133:	
	movlw	01h
u3195:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u3195

	line	149
	
l2135:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3201
	goto	u3200
u3201:
	goto	l2127
u3200:
	goto	l2137
	
l498:	
	line	156
	
l2137:	
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	goto	l491
	
l2139:	
	line	157
	
l491:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	_eeprom_read

;; *************** function _eeprom_read *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic\eeread.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr            1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       1       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic\eeread.c"
	line	6
global __ptext10
__ptext10:	;psect for function _eeprom_read
psect	text10
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic\eeread.c"
	line	6
	global	__size_of_eeprom_read
	__size_of_eeprom_read	equ	__end_of_eeprom_read-_eeprom_read
	
_eeprom_read:	
;incstack = 0
	opt	stack 6
; Regs used in _eeprom_read: [wreg+status,2+status,0]
;eeprom_read@addr stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(eeprom_read@addr)
	line	8
	
l157:	
	line	9
# 9 "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic\eeread.c"
clrwdt ;# 
psect	text10
	line	10
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	btfsc	(3169/8)^0180h,(3169)&7	;volsfr
	goto	u3301
	goto	u3300
u3301:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	goto	l157
u3300:
	goto	l2229
	
l158:	
	line	11
	
l2229:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	goto	l159
	
l2231:	
	line	12
	
l159:	
	return
	opt stack 0
GLOBAL	__end_of_eeprom_read
	__end_of_eeprom_read:
	signat	_eeprom_read,4217
	global	_check_over_current

;; *************** function _check_over_current *****************
;; Defined at:
;;		line 320 in file "E:\Study Material\XC8 PROJECTS\Door Controller\door1ph.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  avg_reading     3   14[BANK0 ] float 
;;  sum             2   19[BANK0 ] unsigned int 
;;  res             2   17[BANK0 ] unsigned int 
;;  readings        1   21[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       8       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_ReadADC
;;		___ftge
;;		___lwtoft
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\Door Controller\door1ph.c"
	line	320
global __ptext11
__ptext11:	;psect for function _check_over_current
psect	text11
	file	"E:\Study Material\XC8 PROJECTS\Door Controller\door1ph.c"
	line	320
	global	__size_of_check_over_current
	__size_of_check_over_current	equ	__end_of_check_over_current-_check_over_current
	
_check_over_current:	
;incstack = 0
	opt	stack 4
; Regs used in _check_over_current: [wreg+status,2+status,0+pclath+cstack]
	line	322
	
l2233:	
;door1ph.c: 322: float avg_reading = 0;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(check_over_current@avg_reading)
	movlw	0x0
	movwf	(check_over_current@avg_reading+1)
	movlw	0x0
	movwf	(check_over_current@avg_reading+2)
	line	323
	
l2235:	
;door1ph.c: 323: unsigned int sum = 0;
	clrf	(check_over_current@sum)
	clrf	(check_over_current@sum+1)
	line	324
	
l2237:	
;door1ph.c: 324: unsigned int res = 0;
	clrf	(check_over_current@res)
	clrf	(check_over_current@res+1)
	line	325
	
l2239:	
;door1ph.c: 325: unsigned char readings = 0;
	clrf	(check_over_current@readings)
	line	327
	
l2241:	
;door1ph.c: 327: sum = 0;
	clrf	(check_over_current@sum)
	clrf	(check_over_current@sum+1)
	line	328
	
l2243:	
;door1ph.c: 328: readings = 0;
	clrf	(check_over_current@readings)
	line	329
	
l2245:	
;door1ph.c: 329: avg_reading = 0;
	movlw	0x0
	movwf	(check_over_current@avg_reading)
	movlw	0x0
	movwf	(check_over_current@avg_reading+1)
	movlw	0x0
	movwf	(check_over_current@avg_reading+2)
	line	330
;door1ph.c: 330: for(readings = 0; readings < 16; readings++)
	clrf	(check_over_current@readings)
	
l2247:	
	movlw	(010h)
	subwf	(check_over_current@readings),w
	skipc
	goto	u3311
	goto	u3310
u3311:
	goto	l2251
u3310:
	goto	l2261
	
l2249:	
	goto	l2261
	line	331
	
l134:	
	line	332
	
l2251:	
;door1ph.c: 331: {
;door1ph.c: 332: res = 0;
	clrf	(check_over_current@res)
	clrf	(check_over_current@res+1)
	line	333
	
l2253:	
;door1ph.c: 333: res = ReadADC();
	fcall	_ReadADC
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_ReadADC)),w
	clrf	(check_over_current@res+1)
	addwf	(check_over_current@res+1)
	movf	(0+(?_ReadADC)),w
	clrf	(check_over_current@res)
	addwf	(check_over_current@res)

	line	334
	
l2255:	
;door1ph.c: 334: sum = sum + res;
	movf	(check_over_current@res),w
	addwf	(check_over_current@sum),w
	movwf	(check_over_current@sum)
	movf	(check_over_current@res+1),w
	skipnc
	incf	(check_over_current@res+1),w
	addwf	(check_over_current@sum+1),w
	movwf	1+(check_over_current@sum)
	line	330
	
l2257:	
	movlw	(01h)
	movwf	(??_check_over_current+0)+0
	movf	(??_check_over_current+0)+0,w
	addwf	(check_over_current@readings),f
	
l2259:	
	movlw	(010h)
	subwf	(check_over_current@readings),w
	skipc
	goto	u3321
	goto	u3320
u3321:
	goto	l2251
u3320:
	goto	l2261
	
l135:	
	line	336
	
l2261:	
;door1ph.c: 335: }
;door1ph.c: 336: avg_reading = sum/16;
	movf	(check_over_current@sum+1),w
	movwf	(??_check_over_current+0)+0+1
	movf	(check_over_current@sum),w
	movwf	(??_check_over_current+0)+0
	movlw	04h
u3335:
	clrc
	rrf	(??_check_over_current+0)+1,f
	rrf	(??_check_over_current+0)+0,f
	addlw	-1
	skipz
	goto	u3335
	movf	0+(??_check_over_current+0)+0,w
	movwf	(___lwtoft@c)
	movf	1+(??_check_over_current+0)+0,w
	movwf	(___lwtoft@c+1)
	fcall	___lwtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwtoft)),w
	movwf	(check_over_current@avg_reading)
	movf	(1+(?___lwtoft)),w
	movwf	(check_over_current@avg_reading+1)
	movf	(2+(?___lwtoft)),w
	movwf	(check_over_current@avg_reading+2)
	line	337
;door1ph.c: 337: if(avg_reading > normal_current)
	movf	(_normal_current),w
	movwf	(___ftge@ff1)
	movf	(_normal_current+1),w
	movwf	(___ftge@ff1+1)
	movf	(_normal_current+2),w
	movwf	(___ftge@ff1+2)
	movf	(check_over_current@avg_reading),w
	movwf	(___ftge@ff2)
	movf	(check_over_current@avg_reading+1),w
	movwf	(___ftge@ff2+1)
	movf	(check_over_current@avg_reading+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u3341
	goto	u3340
u3341:
	goto	l2269
u3340:
	line	338
	
l2263:	
;door1ph.c: 338: return 1;
	movlw	(01h)
	goto	l137
	
l2265:	
	goto	l137
	
l2267:	
	goto	l137
	line	339
	
l136:	
	line	340
	
l2269:	
;door1ph.c: 339: else
;door1ph.c: 340: return 0;
	movlw	(0)
	goto	l137
	
l2271:	
	goto	l137
	
l138:	
	line	341
	
l137:	
	return
	opt stack 0
GLOBAL	__end_of_check_over_current
	__end_of_check_over_current:
	signat	_check_over_current,89
	global	___lwtoft

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 28 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    8[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_over_current_config
;;		_check_over_current
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\lwtoft.c"
	line	28
global __ptext12
__ptext12:	;psect for function ___lwtoft
psect	text12
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\lwtoft.c"
	line	28
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:	
;incstack = 0
	opt	stack 4
; Regs used in ___lwtoft: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l2167:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___lwtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lwtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lwtoft+2)
	goto	l620
	
l2169:	
	line	31
	
l620:	
	return
	opt stack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
	signat	___lwtoft,4219
	global	___ftge

;; *************** function ___ftge *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    0[BANK0 ] float 
;;  ff2             3    3[BANK0 ] float 
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         0      12       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_check_over_current
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\ftge.c"
	line	4
global __ptext13
__ptext13:	;psect for function ___ftge
psect	text13
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\ftge.c"
	line	4
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
;incstack = 0
	opt	stack 5
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l2071:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___ftge@ff1+2),(23)&7
	goto	u3021
	goto	u3020
u3021:
	goto	l2075
u3020:
	line	7
	
l2073:	
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
	goto	u3031
	goto	u3032
u3031:
	addwf	(??___ftge+0)+1,f
	
u3032:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u3033
	goto	u3034
u3033:
	addwf	(??___ftge+0)+2,f
	
u3034:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff1)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+2)
	goto	l2075
	
l483:	
	line	8
	
l2075:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u3041
	goto	u3040
u3041:
	goto	l2079
u3040:
	line	9
	
l2077:	
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
	goto	u3051
	goto	u3052
u3051:
	addwf	(??___ftge+0)+1,f
	
u3052:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u3053
	goto	u3054
u3053:
	addwf	(??___ftge+0)+2,f
	
u3054:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff2)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+2)
	goto	l2079
	
l484:	
	line	10
	
l2079:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l2081:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l2083:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u3065
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u3065
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u3065:
	skipnc
	goto	u3061
	goto	u3060
u3061:
	goto	l2087
u3060:
	
l2085:	
	clrc
	
	goto	l485
	
l1865:	
	
l2087:	
	setc
	
	goto	l485
	
l1867:	
	goto	l485
	
l2089:	
	line	13
	
l485:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
	global	_ReadADC

;; *************** function _ReadADC *****************
;; Defined at:
;;		line 343 in file "E:\Study Material\XC8 PROJECTS\Door Controller\door1ph.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  result          2    2[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       4       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_over_current_config
;;		_check_over_current
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\Door Controller\door1ph.c"
	line	343
global __ptext14
__ptext14:	;psect for function _ReadADC
psect	text14
	file	"E:\Study Material\XC8 PROJECTS\Door Controller\door1ph.c"
	line	343
	global	__size_of_ReadADC
	__size_of_ReadADC	equ	__end_of_ReadADC-_ReadADC
	
_ReadADC:	
;incstack = 0
	opt	stack 5
; Regs used in _ReadADC: [wreg+status,2+status,0]
	line	345
	
l2033:	
;door1ph.c: 345: unsigned int result = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(ReadADC@result)
	clrf	(ReadADC@result+1)
	line	347
	
l2035:	
;door1ph.c: 347: ADON=1;
	bsf	(248/8),(248)&7	;volatile
	line	349
	
l2037:	
;door1ph.c: 349: _delay((unsigned long)((100)*(4000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_ReadADC+0)+0,f
u3857:
decfsz	(??_ReadADC+0)+0,f
	goto	u3857
opt asmopt_on

	line	351
	
l2039:	
;door1ph.c: 351: GO=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7	;volatile
	line	352
;door1ph.c: 352: while(GO)
	goto	l141
	
l142:	
	line	355
;door1ph.c: 353: {
	
l141:	
	line	352
	btfsc	(250/8),(250)&7	;volatile
	goto	u2981
	goto	u2980
u2981:
	goto	l141
u2980:
	goto	l2041
	
l143:	
	line	356
	
l2041:	
;door1ph.c: 355: }
;door1ph.c: 356: result = ((ADRESH<<8)|ADRESL);
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

	line	357
	
l2043:	
;door1ph.c: 357: ADCON0bits.ADON=0;
	bcf	(31),0	;volatile
	line	358
;door1ph.c: 358: return result;
	movf	(ReadADC@result+1),w
	clrf	(?_ReadADC+1)
	addwf	(?_ReadADC+1)
	movf	(ReadADC@result),w
	clrf	(?_ReadADC)
	addwf	(?_ReadADC)

	goto	l144
	
l2045:	
	line	359
	
l144:	
	return
	opt stack 0
GLOBAL	__end_of_ReadADC
	__end_of_ReadADC:
	signat	_ReadADC,90
	global	___lbtoft

;; *************** function ___lbtoft *****************
;; Defined at:
;;		line 27 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\lbtoft.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         1       7       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\lbtoft.c"
	line	27
global __ptext15
__ptext15:	;psect for function ___lbtoft
psect	text15
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\lbtoft.c"
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
	
l2273:	
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___lbtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lbtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lbtoft+2)
	goto	l542
	
l2275:	
	line	30
	
l542:	
	return
	opt stack 0
GLOBAL	__end_of___lbtoft
	__end_of___lbtoft:
	signat	___lbtoft,4219
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[BANK0 ] unsigned um
;;  exp             1    3[BANK0 ] unsigned char 
;;  sign            1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___attoft
;;		___ftadd
;;		___ftmul
;;		___lbtoft
;;		___lwtoft
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\float.c"
	line	62
global __ptext16
__ptext16:	;psect for function ___ftpack
psect	text16
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;incstack = 0
	opt	stack 3
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l1869:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftpack@exp),w
	skipz
	goto	u2510
	goto	l1873
u2510:
	
l1871:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u2521
	goto	u2520
u2521:
	goto	l1879
u2520:
	goto	l1873
	
l425:	
	line	65
	
l1873:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l426
	
l1875:	
	goto	l426
	
l423:	
	line	66
	goto	l1879
	
l428:	
	line	67
	
l1877:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u2535:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2535

	goto	l1879
	line	69
	
l427:	
	line	66
	
l1879:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2541
	goto	u2540
u2541:
	goto	l1877
u2540:
	goto	l430
	
l429:	
	line	70
	goto	l430
	
l431:	
	line	71
	
l1881:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l1883:	
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
	
l1885:	
	movlw	01h
u2555:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2555

	line	74
	
l430:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2561
	goto	u2560
u2561:
	goto	l1881
u2560:
	goto	l1889
	
l432:	
	line	75
	goto	l1889
	
l434:	
	line	76
	
l1887:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u2575:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u2575
	goto	l1889
	line	78
	
l433:	
	line	75
	
l1889:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u2581
	goto	u2580
u2581:
	goto	l1887
u2580:
	
l435:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2591
	goto	u2590
u2591:
	goto	l436
u2590:
	line	80
	
l1891:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l436:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l1893:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u2605:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u2600:
	addlw	-1
	skipz
	goto	u2605
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l1895:	
	movf	(___ftpack@sign),w
	skipz
	goto	u2610
	goto	l437
u2610:
	line	84
	
l1897:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l437:	
	line	85
	line	86
	
l426:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_Tx_Received

;; *************** function _Tx_Received *****************
;; Defined at:
;;		line 229 in file "E:\Study Material\XC8 PROJECTS\Door Controller\door1ph.c"
;; Parameters:    Size  Location     Type
;;		None
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          5       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\Door Controller\door1ph.c"
	line	229
global __ptext17
__ptext17:	;psect for function _Tx_Received
psect	text17
	file	"E:\Study Material\XC8 PROJECTS\Door Controller\door1ph.c"
	line	229
	global	__size_of_Tx_Received
	__size_of_Tx_Received	equ	__end_of_Tx_Received-_Tx_Received
	
_Tx_Received:	
;incstack = 0
	opt	stack 3
; Regs used in _Tx_Received: [wreg]
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
psect	text17
	line	231
	
i1l1831:	
;door1ph.c: 231: if(RA1 == 0 && RA2 == 1 && RA3 == 0 && door_State != Opening && RC1 == 0)
	btfsc	(41/8),(41)&7	;volatile
	goto	u238_21
	goto	u238_20
u238_21:
	goto	i1l119
u238_20:
	
i1l1833:	
	btfss	(42/8),(42)&7	;volatile
	goto	u239_21
	goto	u239_20
u239_21:
	goto	i1l119
u239_20:
	
i1l1835:	
	btfsc	(43/8),(43)&7	;volatile
	goto	u240_21
	goto	u240_20
u240_21:
	goto	i1l119
u240_20:
	
i1l1837:	
	movf	(_door_State),w
	xorlw	02h
	skipnz
	goto	u241_21
	goto	u241_20
u241_21:
	goto	i1l119
u241_20:
	
i1l1839:	
	btfsc	(57/8),(57)&7	;volatile
	goto	u242_21
	goto	u242_20
u242_21:
	goto	i1l119
u242_20:
	line	233
	
i1l1841:	
;door1ph.c: 232: {
;door1ph.c: 233: door_State = Closing;
	movlw	(03h)
	movwf	(??_Tx_Received+0)+0
	movf	(??_Tx_Received+0)+0,w
	movwf	(_door_State)
	line	235
;door1ph.c: 235: INTCON = 0x90;
	movlw	(090h)
	movwf	(11)	;volatile
	goto	i1l120
	line	236
	
i1l1843:	
;door1ph.c: 236: return;
	goto	i1l120
	line	237
	
i1l119:	
	line	238
;door1ph.c: 237: }
;door1ph.c: 238: if(RA1 == 1 && RA2 == 0 && RA3 == 0 && door_State != Closing && RC0 == 0)
	btfss	(41/8),(41)&7	;volatile
	goto	u243_21
	goto	u243_20
u243_21:
	goto	i1l121
u243_20:
	
i1l1845:	
	btfsc	(42/8),(42)&7	;volatile
	goto	u244_21
	goto	u244_20
u244_21:
	goto	i1l121
u244_20:
	
i1l1847:	
	btfsc	(43/8),(43)&7	;volatile
	goto	u245_21
	goto	u245_20
u245_21:
	goto	i1l121
u245_20:
	
i1l1849:	
	movf	(_door_State),w
	xorlw	03h
	skipnz
	goto	u246_21
	goto	u246_20
u246_21:
	goto	i1l121
u246_20:
	
i1l1851:	
	btfsc	(56/8),(56)&7	;volatile
	goto	u247_21
	goto	u247_20
u247_21:
	goto	i1l121
u247_20:
	line	240
	
i1l1853:	
;door1ph.c: 239: {
;door1ph.c: 240: door_State = Opening;
	movlw	(02h)
	movwf	(??_Tx_Received+0)+0
	movf	(??_Tx_Received+0)+0,w
	movwf	(_door_State)
	line	242
;door1ph.c: 242: INTCON = 0x90;
	movlw	(090h)
	movwf	(11)	;volatile
	goto	i1l120
	line	243
	
i1l1855:	
;door1ph.c: 243: return;
	goto	i1l120
	line	244
	
i1l121:	
	line	245
;door1ph.c: 244: }
;door1ph.c: 245: if(RA1 == 0 && RA2 == 0 && RA3 == 1)
	btfsc	(41/8),(41)&7	;volatile
	goto	u248_21
	goto	u248_20
u248_21:
	goto	i1l120
u248_20:
	
i1l1857:	
	btfsc	(42/8),(42)&7	;volatile
	goto	u249_21
	goto	u249_20
u249_21:
	goto	i1l120
u249_20:
	
i1l1859:	
	btfss	(43/8),(43)&7	;volatile
	goto	u250_21
	goto	u250_20
u250_21:
	goto	i1l120
u250_20:
	line	247
	
i1l1861:	
;door1ph.c: 246: {
;door1ph.c: 247: door_State = Stoped;
	movlw	(04h)
	movwf	(??_Tx_Received+0)+0
	movf	(??_Tx_Received+0)+0,w
	movwf	(_door_State)
	line	249
;door1ph.c: 249: INTCON = 0x90;
	movlw	(090h)
	movwf	(11)	;volatile
	goto	i1l120
	line	250
	
i1l1863:	
;door1ph.c: 250: return;
	goto	i1l120
	line	251
	
i1l122:	
	line	252
	
i1l120:	
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

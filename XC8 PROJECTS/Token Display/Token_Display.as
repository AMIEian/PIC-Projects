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
	FNCALL	_main,_Send_Data
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_digits
	global	_display
	global	_address
psect	idataCOMMON,class=CODE,space=0,delta=2,noexec
global __pidataCOMMON
__pidataCOMMON:
	file	"E:\Study Material\XC8 PROJECTS\Token Display\Big_Token.C"
	line	10

;initializer for _digits
	retlw	01h
	retlw	02h
	retlw	03h
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	line	7

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
	line	15

;initializer for _address
	retlw	01h
	global	_data_timer
	global	_data_received
	global	_count
	global	_digit_received
	global	_index
	global	_INTCON
_INTCON	set	0xB
	global	_PORTA
_PORTA	set	0x5
	global	_PORTC
_PORTC	set	0x7
	global	_TMR0
_TMR0	set	0x1
	global	_INTE
_INTE	set	0x5C
	global	_INTF
_INTF	set	0x59
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
	global	_T0IE
_T0IE	set	0x5D
	global	_T0IF
_T0IF	set	0x5A
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
; #config settings
	file	"Token_Display.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_data_timer:
       ds      2

_data_received:
       ds      1

psect	dataCOMMON,class=COMMON,space=1,noexec
global __pdataCOMMON
__pdataCOMMON:
	file	"E:\Study Material\XC8 PROJECTS\Token Display\Big_Token.C"
	line	10
_digits:
       ds      3

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_count:
       ds      1

_digit_received:
       ds      1

_index:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"E:\Study Material\XC8 PROJECTS\Token Display\Big_Token.C"
	line	7
_display:
       ds      10

psect	dataBANK0
	file	"E:\Study Material\XC8 PROJECTS\Token Display\Big_Token.C"
	line	15
_address:
       ds      1

	file	"Token_Display.as"
	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
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
; Initialize objects allocated to COMMON
	global __pidataCOMMON
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
	fcall	__pidataCOMMON+1		;fetch initializer
	movwf	__pdataCOMMON+1&07fh		
	fcall	__pidataCOMMON+2		;fetch initializer
	movwf	__pdataCOMMON+2&07fh		
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_Send_Data:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
??_ISR:	; 0 bytes @ 0x0
	ds	5
	global	ISR@digit
ISR@digit:	; 1 bytes @ 0x5
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_Send_Data:	; 0 bytes @ 0x0
	ds	2
	global	Send_Data@number
Send_Data@number:	; 2 bytes @ 0x2
	ds	2
	global	Send_Data@Flag
Send_Data@Flag:	; 2 bytes @ 0x4
	ds	2
	global	Send_Data@Mask
Send_Data@Mask:	; 2 bytes @ 0x6
	ds	2
	global	Send_Data@bits
Send_Data@bits:	; 2 bytes @ 0x8
	ds	2
	global	Send_Data@byte
Send_Data@byte:	; 2 bytes @ 0xA
	ds	2
??_main:	; 0 bytes @ 0xC
	ds	3
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        14
;!    BSS         6
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      6      12
;!    BANK0            80     15      29
;!    BANK1            32      0       0

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
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_Send_Data
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
;! (0) _main                                                 3     3      0     334
;!                                             12 BANK0      3     3      0
;!                          _Send_Data
;! ---------------------------------------------------------------------------------
;! (1) _Send_Data                                           12    12      0     334
;!                                              0 BANK0     12    12      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (2) _ISR                                                  6     6      0     158
;!                                              0 COMMON     6     6      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Send_Data
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
;!BANK0               50      F      1D       5       36.3%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      6       C       1       85.7%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      29       8        0.0%
;!ABS                  0      0      29       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA              40      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 17 in file "E:\Study Material\XC8 PROJECTS\Token Display\Big_Token.C"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Send_Data
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"E:\Study Material\XC8 PROJECTS\Token Display\Big_Token.C"
	line	17
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"E:\Study Material\XC8 PROJECTS\Token Display\Big_Token.C"
	line	17
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	19
	
l986:	
;Big_Token.C: 19: TRISA = 0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	20
;Big_Token.C: 20: TRISB = 0x0F;
	movlw	(0Fh)
	movwf	(134)^080h	;volatile
	line	21
;Big_Token.C: 21: TRISC = 0xE0;
	movlw	(0E0h)
	movwf	(135)^080h	;volatile
	line	22
;Big_Token.C: 22: ADCON1 = 0x06;
	movlw	(06h)
	movwf	(159)^080h	;volatile
	line	24
	
l988:	
;Big_Token.C: 24: RB4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7	;volatile
	line	25
	
l990:	
;Big_Token.C: 25: RB5 = 0;
	bcf	(53/8),(53)&7	;volatile
	line	26
	
l992:	
;Big_Token.C: 26: RB6 = 0;
	bcf	(54/8),(54)&7	;volatile
	line	27
	
l994:	
;Big_Token.C: 27: RB7 = 0;
	bcf	(55/8),(55)&7	;volatile
	line	29
	
l996:	
;Big_Token.C: 29: PORTC = 0;
	clrf	(7)	;volatile
	line	30
	
l998:	
;Big_Token.C: 30: RC4 = 0;
	bcf	(60/8),(60)&7	;volatile
	line	32
	
l1000:	
;Big_Token.C: 32: for(count = 0; count <= 4; count++)
	clrf	(_count)
	movlw	(05h)
	subwf	(_count),w
	skipc
	goto	u581
	goto	u580
u581:
	goto	l81
u580:
	goto	l1012
	
l1002:	
	goto	l1012
	line	33
	
l81:	
	line	34
;Big_Token.C: 33: {
;Big_Token.C: 34: RB4 = 1;
	bsf	(52/8),(52)&7	;volatile
	line	35
	
l1004:	
;Big_Token.C: 35: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u617:
	decfsz	((??_main+0)+0),f
	goto	u617
	decfsz	((??_main+0)+0+1),f
	goto	u617
	decfsz	((??_main+0)+0+2),f
	goto	u617
	nop2
opt asmopt_on

	line	36
	
l1006:	
;Big_Token.C: 36: RB4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7	;volatile
	line	37
;Big_Token.C: 37: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u627:
	decfsz	((??_main+0)+0),f
	goto	u627
	decfsz	((??_main+0)+0+1),f
	goto	u627
	decfsz	((??_main+0)+0+2),f
	goto	u627
	nop2
opt asmopt_on

	line	32
	
l1008:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_count),f
	
l1010:	
	movlw	(05h)
	subwf	(_count),w
	skipc
	goto	u591
	goto	u590
u591:
	goto	l81
u590:
	goto	l1012
	
l82:	
	line	39
	
l1012:	
;Big_Token.C: 38: }
;Big_Token.C: 39: count = 0;
	clrf	(_count)
	line	42
	
l1014:	
;Big_Token.C: 42: OPTION_REG = 0xC3;
	movlw	(0C3h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	43
	
l1016:	
;Big_Token.C: 43: INTCON = 0xB0;
	movlw	(0B0h)
	movwf	(11)	;volatile
	goto	l1018
	line	45
;Big_Token.C: 45: while(1)
	
l83:	
	line	47
	
l1018:	
;Big_Token.C: 46: {
;Big_Token.C: 47: if(digit_received == 1)
	bcf	status, 5	;RP0=0, select bank0
	movf	(_digit_received),w
	xorlw	01h
	skipz
	goto	u601
	goto	u600
u601:
	goto	l1018
u600:
	line	49
	
l1020:	
;Big_Token.C: 48: {
;Big_Token.C: 49: Send_Data();
	fcall	_Send_Data
	line	50
	
l1022:	
;Big_Token.C: 50: digit_received = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_digit_received)
	goto	l1018
	line	51
	
l84:	
	goto	l1018
	line	85
	
l85:	
	line	45
	goto	l1018
	
l86:	
	line	86
	
l87:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_Send_Data

;; *************** function _Send_Data *****************
;; Defined at:
;;		line 199 in file "E:\Study Material\XC8 PROJECTS\Token Display\Big_Token.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  byte            2   10[BANK0 ] unsigned short 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	199
global __ptext1
__ptext1:	;psect for function _Send_Data
psect	text1
	file	"E:\Study Material\XC8 PROJECTS\Token Display\Big_Token.C"
	line	199
	global	__size_of_Send_Data
	__size_of_Send_Data	equ	__end_of_Send_Data-_Send_Data
	
_Send_Data:	
;incstack = 0
	opt	stack 6
; Regs used in _Send_Data: [wreg-fsr0h+status,2+status,0]
	line	204
	
l954:	
;Big_Token.C: 201: unsigned short Mask, byte, bits, Flag, number;
;Big_Token.C: 204: RB5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7	;volatile
	line	205
;Big_Token.C: 205: RB6 = 0;
	bcf	(54/8),(54)&7	;volatile
	line	206
;Big_Token.C: 206: RB7 = 0;
	bcf	(55/8),(55)&7	;volatile
	line	209
	
l956:	
;Big_Token.C: 209: for(byte = 0; byte < 3; byte++)
	clrf	(Send_Data@byte)
	clrf	(Send_Data@byte+1)
	
l958:	
	movlw	high(03h)
	subwf	(Send_Data@byte+1),w
	movlw	low(03h)
	skipnz
	subwf	(Send_Data@byte),w
	skipc
	goto	u521
	goto	u520
u521:
	goto	l962
u520:
	goto	l110
	
l960:	
	goto	l110
	line	210
	
l109:	
	line	211
	
l962:	
;Big_Token.C: 210: {
;Big_Token.C: 211: number = digits[byte];
	movf	(Send_Data@byte),w
	addlw	_digits&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_Send_Data+0)+0
	clrf	(??_Send_Data+0)+0+1
	movf	0+(??_Send_Data+0)+0,w
	movwf	(Send_Data@number)
	movf	1+(??_Send_Data+0)+0,w
	movwf	(Send_Data@number+1)
	line	213
	
l964:	
;Big_Token.C: 213: Mask = 0x01;
	movlw	low(01h)
	movwf	(Send_Data@Mask)
	movlw	high(01h)
	movwf	((Send_Data@Mask))+1
	line	214
	
l966:	
;Big_Token.C: 214: for (bits=0; bits<8; bits++)
	clrf	(Send_Data@bits)
	clrf	(Send_Data@bits+1)
	
l968:	
	movlw	high(08h)
	subwf	(Send_Data@bits+1),w
	movlw	low(08h)
	skipnz
	subwf	(Send_Data@bits),w
	skipc
	goto	u531
	goto	u530
u531:
	goto	l972
u530:
	goto	l984
	
l970:	
	goto	l984
	line	215
	
l111:	
	line	216
	
l972:	
;Big_Token.C: 215: {
;Big_Token.C: 216: Flag = display[number] & Mask;
	movf	(Send_Data@number),w
	addlw	_display&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	andwf	(Send_Data@Mask),w
	movwf	(??_Send_Data+0)+0
	clrf	(??_Send_Data+0)+0+1
	movf	0+(??_Send_Data+0)+0,w
	movwf	(Send_Data@Flag)
	movf	1+(??_Send_Data+0)+0,w
	movwf	(Send_Data@Flag+1)
	line	217
	
l974:	
;Big_Token.C: 217: if(Flag == 0)
	movf	((Send_Data@Flag+1)),w
	iorwf	((Send_Data@Flag)),w
	skipz
	goto	u541
	goto	u540
u541:
	goto	l978
u540:
	line	219
	
l976:	
;Big_Token.C: 218: {
;Big_Token.C: 219: RB5 = 0;
	bcf	(53/8),(53)&7	;volatile
	line	220
;Big_Token.C: 220: _delay(1);
		opt asmopt_off
	nop
	opt asmopt_on

	line	221
;Big_Token.C: 221: RB6 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(54/8),(54)&7	;volatile
	line	222
;Big_Token.C: 222: _delay(1);
		opt asmopt_off
	nop
	opt asmopt_on

	line	223
;Big_Token.C: 223: RB6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(54/8),(54)&7	;volatile
	goto	l978
	line	224
	
l113:	
	line	225
	
l978:	
;Big_Token.C: 224: }
;Big_Token.C: 225: if(Flag > 0)
	movf	(Send_Data@Flag+1),w
	iorwf	(Send_Data@Flag),w
	skipnz
	goto	u551
	goto	u550
u551:
	goto	l982
u550:
	line	227
	
l980:	
;Big_Token.C: 226: {
;Big_Token.C: 227: RB5 = 1;
	bsf	(53/8),(53)&7	;volatile
	line	228
;Big_Token.C: 228: _delay(1);
		opt asmopt_off
	nop
	opt asmopt_on

	line	229
;Big_Token.C: 229: RB6 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(54/8),(54)&7	;volatile
	line	230
;Big_Token.C: 230: _delay(1);
		opt asmopt_off
	nop
	opt asmopt_on

	line	231
;Big_Token.C: 231: RB6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(54/8),(54)&7	;volatile
	goto	l982
	line	232
	
l114:	
	line	233
	
l982:	
;Big_Token.C: 232: }
;Big_Token.C: 233: Mask = Mask << 1;
	clrc
	rlf	(Send_Data@Mask),w
	movwf	(Send_Data@Mask)
	rlf	(Send_Data@Mask+1),w
	movwf	1+(Send_Data@Mask)
	line	214
	movlw	low(01h)
	addwf	(Send_Data@bits),f
	skipnc
	incf	(Send_Data@bits+1),f
	movlw	high(01h)
	addwf	(Send_Data@bits+1),f
	movlw	high(08h)
	subwf	(Send_Data@bits+1),w
	movlw	low(08h)
	skipnz
	subwf	(Send_Data@bits),w
	skipc
	goto	u561
	goto	u560
u561:
	goto	l972
u560:
	goto	l984
	
l112:	
	line	209
	
l984:	
	movlw	low(01h)
	addwf	(Send_Data@byte),f
	skipnc
	incf	(Send_Data@byte+1),f
	movlw	high(01h)
	addwf	(Send_Data@byte+1),f
	movlw	high(03h)
	subwf	(Send_Data@byte+1),w
	movlw	low(03h)
	skipnz
	subwf	(Send_Data@byte),w
	skipc
	goto	u571
	goto	u570
u571:
	goto	l962
u570:
	
l110:	
	line	238
;Big_Token.C: 234: }
;Big_Token.C: 235: }
;Big_Token.C: 238: RB7 = 1;
	bsf	(55/8),(55)&7	;volatile
	line	239
;Big_Token.C: 239: _delay(1);
		opt asmopt_off
	nop
	opt asmopt_on

	line	240
;Big_Token.C: 240: RB7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	241
	
l115:	
	return
	opt stack 0
GLOBAL	__end_of_Send_Data
	__end_of_Send_Data:
	signat	_Send_Data,88
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 88 in file "E:\Study Material\XC8 PROJECTS\Token Display\Big_Token.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  digit           1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         1       0       0
;;      Temps:          5       0       0
;;      Totals:         6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	88
global __ptext2
__ptext2:	;psect for function _ISR
psect	text2
	file	"E:\Study Material\XC8 PROJECTS\Token Display\Big_Token.C"
	line	88
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 6
; Regs used in _ISR: [wreg-fsr0h+status,2+status,0+btemp+1]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+1)
	movf	fsr0,w
	movwf	(??_ISR+2)
	movf	pclath,w
	movwf	(??_ISR+3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+4)
	ljmp	_ISR
psect	text2
	line	91
	
i1l848:	
;Big_Token.C: 91: if(INTE && INTF)
	btfss	(92/8),(92)&7	;volatile
	goto	u37_21
	goto	u37_20
u37_21:
	goto	i1l90
u37_20:
	
i1l850:	
	btfss	(89/8),(89)&7	;volatile
	goto	u38_21
	goto	u38_20
u38_21:
	goto	i1l90
u38_20:
	line	93
	
i1l852:	
;Big_Token.C: 92: {
;Big_Token.C: 93: char digit = 0x00;
	clrf	(ISR@digit)
	line	94
	
i1l854:	
;Big_Token.C: 94: digit = PORTA;
	movf	(5),w	;volatile
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(ISR@digit)
	line	95
;Big_Token.C: 95: digit = digit & 0x0F;
	movf	(ISR@digit),w
	andlw	0Fh
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(ISR@digit)
	line	96
	
i1l856:	
;Big_Token.C: 96: digit_received = 1;
	clrf	(_digit_received)
	incf	(_digit_received),f
	line	98
	
i1l858:	
;Big_Token.C: 98: if(digit == 0x0B)
	movf	(ISR@digit),w
	xorlw	0Bh
	skipz
	goto	u39_21
	goto	u39_20
u39_21:
	goto	i1l880
u39_20:
	line	101
	
i1l860:	
;Big_Token.C: 99: {
;Big_Token.C: 101: digits[0] = digits[0] + 1;
	movf	(_digits),w
	addlw	01h
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_digits)
	line	102
	
i1l862:	
;Big_Token.C: 102: if(digits[0] > 9)
	movlw	(0Ah)
	subwf	(_digits),w
	skipc
	goto	u40_21
	goto	u40_20
u40_21:
	goto	i1l95
u40_20:
	line	104
	
i1l864:	
;Big_Token.C: 103: {
;Big_Token.C: 104: digits[0] = 0;
	clrf	(_digits)
	line	105
	
i1l866:	
;Big_Token.C: 105: digits[1] = digits[1] + 1;
	movf	0+(_digits)+01h,w
	addlw	01h
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	0+(_digits)+01h
	line	106
	
i1l868:	
;Big_Token.C: 106: if(digits[1] > 9)
	movlw	(0Ah)
	subwf	0+(_digits)+01h,w
	skipc
	goto	u41_21
	goto	u41_20
u41_21:
	goto	i1l95
u41_20:
	line	108
	
i1l870:	
;Big_Token.C: 107: {
;Big_Token.C: 108: digits[1] = 0;
	clrf	0+(_digits)+01h
	line	109
	
i1l872:	
;Big_Token.C: 109: digits[2] = digits[2] + 1;
	movf	0+(_digits)+02h,w
	addlw	01h
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	0+(_digits)+02h
	line	110
	
i1l874:	
;Big_Token.C: 110: if(digits[2] > 9)
	movlw	(0Ah)
	subwf	0+(_digits)+02h,w
	skipc
	goto	u42_21
	goto	u42_20
u42_21:
	goto	i1l95
u42_20:
	line	112
	
i1l876:	
;Big_Token.C: 111: {
;Big_Token.C: 112: digits[2] = 9;
	movlw	(09h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	0+(_digits)+02h
	line	113
;Big_Token.C: 113: digits[1] = 9;
	movlw	(09h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	0+(_digits)+01h
	line	114
;Big_Token.C: 114: digits[0] = 9;
	movlw	(09h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_digits)
	goto	i1l95
	line	115
	
i1l94:	
	goto	i1l95
	line	116
	
i1l93:	
	goto	i1l95
	line	117
	
i1l92:	
	goto	i1l95
	line	118
	
i1l878:	
;Big_Token.C: 115: }
;Big_Token.C: 116: }
;Big_Token.C: 117: }
;Big_Token.C: 118: return;
	goto	i1l95
	line	119
	
i1l91:	
	line	121
	
i1l880:	
;Big_Token.C: 119: }
;Big_Token.C: 121: if(digit == 0x0C)
	movf	(ISR@digit),w
	xorlw	0Ch
	skipz
	goto	u43_21
	goto	u43_20
u43_21:
	goto	i1l896
u43_20:
	line	124
	
i1l882:	
;Big_Token.C: 122: {
;Big_Token.C: 124: digits[0] = digits[0] - 1;
	movf	(_digits),w
	addlw	0FFh
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_digits)
	line	125
;Big_Token.C: 125: if(digits[0] < 0)
	goto	i1l95
	line	127
	
i1l884:	
;Big_Token.C: 126: {
;Big_Token.C: 127: digits[0] = 9;
	movlw	(09h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_digits)
	line	128
	
i1l886:	
;Big_Token.C: 128: digits[1] = digits[1] - 1;
	movf	0+(_digits)+01h,w
	addlw	0FFh
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	0+(_digits)+01h
	line	129
;Big_Token.C: 129: if(digits[1] < 0)
	goto	i1l95
	line	131
	
i1l888:	
;Big_Token.C: 130: {
;Big_Token.C: 131: digits[1] = 9;
	movlw	(09h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	0+(_digits)+01h
	line	132
	
i1l890:	
;Big_Token.C: 132: digits[2] = digits[2] - 1;
	movf	0+(_digits)+02h,w
	addlw	0FFh
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	0+(_digits)+02h
	line	133
;Big_Token.C: 133: if(digits[2] < 0)
	goto	i1l95
	line	135
	
i1l892:	
;Big_Token.C: 134: {
;Big_Token.C: 135: digits[2] = 0;
	clrf	0+(_digits)+02h
	line	136
;Big_Token.C: 136: digits[1] = 0;
	clrf	0+(_digits)+01h
	line	137
;Big_Token.C: 137: digits[0] = 0;
	clrf	(_digits)
	goto	i1l95
	line	138
	
i1l99:	
	goto	i1l95
	line	139
	
i1l98:	
	goto	i1l95
	line	140
	
i1l97:	
	goto	i1l95
	line	141
	
i1l894:	
;Big_Token.C: 138: }
;Big_Token.C: 139: }
;Big_Token.C: 140: }
;Big_Token.C: 141: return;
	goto	i1l95
	line	142
	
i1l96:	
	line	145
	
i1l896:	
;Big_Token.C: 142: }
;Big_Token.C: 145: if(digit == 0x0A)
	movf	(ISR@digit),w
	xorlw	0Ah
	skipz
	goto	u44_21
	goto	u44_20
u44_21:
	goto	i1l900
u44_20:
	line	146
	
i1l898:	
;Big_Token.C: 146: digit = 0x00;
	clrf	(ISR@digit)
	goto	i1l900
	
i1l100:	
	line	147
	
i1l900:	
;Big_Token.C: 147: if(count == 0)
	movf	(_count),f
	skipz
	goto	u45_21
	goto	u45_20
u45_21:
	goto	i1l912
u45_20:
	line	149
	
i1l902:	
;Big_Token.C: 148: {
;Big_Token.C: 149: digits[count] = digit;
	movf	(ISR@digit),w
	movwf	(??_ISR+0)+0
	movf	(_count),w
	addlw	_digits&0ffh
	movwf	fsr0
	movf	(??_ISR+0)+0,w
	movwf	indf
	line	150
;Big_Token.C: 150: digits[count+1] = 0x00;
	movf	(_count),w
	addlw	01h
	addlw	_digits&0ffh
	movwf	fsr0
	clrf	indf
	line	151
;Big_Token.C: 151: digits[count+2] = 0x00;
	movf	(_count),w
	addlw	02h
	addlw	_digits&0ffh
	movwf	fsr0
	clrf	indf
	line	152
	
i1l904:	
;Big_Token.C: 152: data_timer = 1;
	movlw	low(01h)
	movwf	(_data_timer)
	movlw	high(01h)
	movwf	((_data_timer))+1
	line	153
	
i1l906:	
;Big_Token.C: 153: count ++;
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	addwf	(_count),f
	line	154
	
i1l908:	
;Big_Token.C: 154: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	goto	i1l95
	line	155
	
i1l910:	
;Big_Token.C: 155: return;
	goto	i1l95
	line	156
	
i1l101:	
	line	157
	
i1l912:	
;Big_Token.C: 156: }
;Big_Token.C: 157: if(count == 1)
	movf	(_count),w
	xorlw	01h
	skipz
	goto	u46_21
	goto	u46_20
u46_21:
	goto	i1l924
u46_20:
	line	159
	
i1l914:	
;Big_Token.C: 158: {
;Big_Token.C: 159: digits[count] = digits[count-1];
	movf	(_count),w
	addlw	0FFh
	addlw	_digits&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_ISR+0)+0
	movf	(_count),w
	addlw	_digits&0ffh
	movwf	fsr0
	movf	(??_ISR+0)+0,w
	movwf	indf
	line	160
;Big_Token.C: 160: digits[count-1] = digit;
	movf	(ISR@digit),w
	movwf	(??_ISR+0)+0
	movf	(_count),w
	addlw	0FFh
	addlw	_digits&0ffh
	movwf	fsr0
	movf	(??_ISR+0)+0,w
	movwf	indf
	line	161
	
i1l916:	
;Big_Token.C: 161: data_timer = 1;
	movlw	low(01h)
	movwf	(_data_timer)
	movlw	high(01h)
	movwf	((_data_timer))+1
	line	162
	
i1l918:	
;Big_Token.C: 162: count ++;
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	addwf	(_count),f
	line	163
	
i1l920:	
;Big_Token.C: 163: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	goto	i1l95
	line	164
	
i1l922:	
;Big_Token.C: 164: return;
	goto	i1l95
	line	165
	
i1l102:	
	line	166
	
i1l924:	
;Big_Token.C: 165: }
;Big_Token.C: 166: if(count == 2)
	movf	(_count),w
	xorlw	02h
	skipz
	goto	u47_21
	goto	u47_20
u47_21:
	goto	i1l90
u47_20:
	line	168
	
i1l926:	
;Big_Token.C: 167: {
;Big_Token.C: 168: digits[count] = digits[count-1];
	movf	(_count),w
	addlw	0FFh
	addlw	_digits&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_ISR+0)+0
	movf	(_count),w
	addlw	_digits&0ffh
	movwf	fsr0
	movf	(??_ISR+0)+0,w
	movwf	indf
	line	169
;Big_Token.C: 169: digits[count-1] = digits[count-2];
	movf	(_count),w
	addlw	0FEh
	addlw	_digits&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_ISR+0)+0
	movf	(_count),w
	addlw	0FFh
	addlw	_digits&0ffh
	movwf	fsr0
	movf	(??_ISR+0)+0,w
	movwf	indf
	line	170
;Big_Token.C: 170: digits[count-2] = digit;
	movf	(ISR@digit),w
	movwf	(??_ISR+0)+0
	movf	(_count),w
	addlw	0FEh
	addlw	_digits&0ffh
	movwf	fsr0
	movf	(??_ISR+0)+0,w
	movwf	indf
	line	171
	
i1l928:	
;Big_Token.C: 171: data_timer = 0;
	clrf	(_data_timer)
	clrf	(_data_timer+1)
	line	172
	
i1l930:	
;Big_Token.C: 172: count = 0;
	clrf	(_count)
	line	173
	
i1l932:	
;Big_Token.C: 173: data_received = 1;
	clrf	(_data_received)
	incf	(_data_received),f
	line	174
	
i1l934:	
;Big_Token.C: 174: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	goto	i1l95
	line	175
	
i1l936:	
;Big_Token.C: 175: return;
	goto	i1l95
	line	176
	
i1l103:	
	line	177
	
i1l90:	
	line	180
;Big_Token.C: 176: }
;Big_Token.C: 177: }
;Big_Token.C: 180: if(T0IE && T0IF)
	btfss	(93/8),(93)&7	;volatile
	goto	u48_21
	goto	u48_20
u48_21:
	goto	i1l95
u48_20:
	
i1l938:	
	btfss	(90/8),(90)&7	;volatile
	goto	u49_21
	goto	u49_20
u49_21:
	goto	i1l95
u49_20:
	line	182
	
i1l940:	
;Big_Token.C: 181: {
;Big_Token.C: 182: if(data_timer >= 1)
	movf	(_data_timer+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u50_25
	movlw	low(01h)
	subwf	(_data_timer),w
u50_25:

	skipc
	goto	u50_21
	goto	u50_20
u50_21:
	goto	i1l105
u50_20:
	line	184
	
i1l942:	
;Big_Token.C: 183: {
;Big_Token.C: 184: data_timer = data_timer + 1;
	movf	(_data_timer),w
	addlw	low(01h)
	movwf	(_data_timer)
	movf	(_data_timer+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(_data_timer)
	line	185
	
i1l944:	
;Big_Token.C: 185: if(data_timer >= 750)
	movf	(_data_timer+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02EEh))^80h
	subwf	btemp+1,w
	skipz
	goto	u51_25
	movlw	low(02EEh)
	subwf	(_data_timer),w
u51_25:

	skipc
	goto	u51_21
	goto	u51_20
u51_21:
	goto	i1l105
u51_20:
	line	188
	
i1l946:	
;Big_Token.C: 186: {
;Big_Token.C: 188: data_timer = 0;
	clrf	(_data_timer)
	clrf	(_data_timer+1)
	line	189
;Big_Token.C: 189: count = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_count)
	line	190
	
i1l948:	
;Big_Token.C: 190: data_received = 1;
	clrf	(_data_received)
	incf	(_data_received),f
	goto	i1l105
	line	191
	
i1l106:	
	line	192
	
i1l105:	
	line	193
;Big_Token.C: 191: }
;Big_Token.C: 192: }
;Big_Token.C: 193: TMR0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(1)	;volatile
	line	194
	
i1l950:	
;Big_Token.C: 194: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	goto	i1l95
	line	195
	
i1l952:	
;Big_Token.C: 195: return;
	goto	i1l95
	line	196
	
i1l104:	
	line	197
	
i1l95:	
	movf	(??_ISR+4),w
	movwf	btemp+1
	movf	(??_ISR+3),w
	movwf	pclath
	movf	(??_ISR+2),w
	movwf	fsr0
	swapf	(??_ISR+1)^0FFFFFF80h,w
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

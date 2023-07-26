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
	FNCALL	_main,_MAX7219_DisplayChar
	FNCALL	_main,_MAX7219_Init
	FNCALL	_MAX7219_Init,_MAX7219_Clear
	FNCALL	_MAX7219_Init,_MAX7219_DisplayTestStop
	FNCALL	_MAX7219_Init,_MAX7219_SetBrightness
	FNCALL	_MAX7219_Init,_MAX7219_ShutdownStop
	FNCALL	_MAX7219_Init,_MAX7219_Write
	FNCALL	_MAX7219_ShutdownStop,_MAX7219_Write
	FNCALL	_MAX7219_SetBrightness,_MAX7219_Write
	FNCALL	_MAX7219_DisplayTestStop,_MAX7219_Write
	FNCALL	_MAX7219_Clear,_MAX7219_Write
	FNCALL	_MAX7219_DisplayChar,_MAX7219_LookupCode
	FNCALL	_MAX7219_DisplayChar,_MAX7219_Write
	FNCALL	_MAX7219_Write,_MAX7219_SendByte
	FNROOT	_main
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
	file	"E:\Study Material\XC8 PROJECTS\MAX7219 Test\MAX7219.C"
	line	270
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
	retlw	02Dh
	retlw	01h
	retlw	0
	retlw	0
	global __end_of_MAX7219_Font
__end_of_MAX7219_Font:
	global	_MAX7219_Font
	global	_RC0
_RC0	set	0x38
	global	_RC1
_RC1	set	0x39
	global	_RC2
_RC2	set	0x3A
	global	_TRISC
_TRISC	set	0x87
; #config settings
	file	"Max7219_Test.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_MAX7219_ShutdownStop:	; 0 bytes @ 0x0
?_MAX7219_DisplayTestStop:	; 0 bytes @ 0x0
?_MAX7219_Clear:	; 0 bytes @ 0x0
?_MAX7219_SetBrightness:	; 0 bytes @ 0x0
??_MAX7219_LookupCode:	; 0 bytes @ 0x0
?_MAX7219_SendByte:	; 0 bytes @ 0x0
??_MAX7219_SendByte:	; 0 bytes @ 0x0
?_MAX7219_Init:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_MAX7219_LookupCode:	; 1 bytes @ 0x0
	ds	1
	global	MAX7219_LookupCode@character
MAX7219_LookupCode@character:	; 1 bytes @ 0x1
	ds	1
	global	MAX7219_LookupCode@i
MAX7219_LookupCode@i:	; 1 bytes @ 0x2
	global	MAX7219_SendByte@dataout
MAX7219_SendByte@dataout:	; 1 bytes @ 0x2
	ds	1
	global	MAX7219_SendByte@mask
MAX7219_SendByte@mask:	; 1 bytes @ 0x3
	ds	1
	global	MAX7219_SendByte@i
MAX7219_SendByte@i:	; 1 bytes @ 0x4
	ds	1
?_MAX7219_Write:	; 0 bytes @ 0x5
	global	MAX7219_Write@dataout
MAX7219_Write@dataout:	; 1 bytes @ 0x5
	ds	1
??_MAX7219_Write:	; 0 bytes @ 0x6
	global	MAX7219_Write@reg_number
MAX7219_Write@reg_number:	; 1 bytes @ 0x6
	ds	1
??_MAX7219_ShutdownStop:	; 0 bytes @ 0x7
??_MAX7219_DisplayTestStop:	; 0 bytes @ 0x7
??_MAX7219_Clear:	; 0 bytes @ 0x7
??_MAX7219_SetBrightness:	; 0 bytes @ 0x7
?_MAX7219_DisplayChar:	; 0 bytes @ 0x7
	global	MAX7219_DisplayChar@character
MAX7219_DisplayChar@character:	; 1 bytes @ 0x7
	ds	1
	global	MAX7219_SetBrightness@brightness
MAX7219_SetBrightness@brightness:	; 1 bytes @ 0x8
	global	MAX7219_Clear@i
MAX7219_Clear@i:	; 1 bytes @ 0x8
	global	MAX7219_DisplayChar@dot
MAX7219_DisplayChar@dot:	; 1 bytes @ 0x8
	ds	1
??_MAX7219_Init:	; 0 bytes @ 0x9
??_MAX7219_DisplayChar:	; 0 bytes @ 0x9
	ds	1
	global	MAX7219_DisplayChar@digit
MAX7219_DisplayChar@digit:	; 1 bytes @ 0xA
	ds	1
	global	MAX7219_DisplayChar@ch
MAX7219_DisplayChar@ch:	; 1 bytes @ 0xB
	ds	1
??_main:	; 0 bytes @ 0xC
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    38
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     13      13
;!    BANK0            80      0       0
;!    BANK1            32      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_MAX7219_DisplayChar
;!    _MAX7219_Init->_MAX7219_Clear
;!    _MAX7219_Init->_MAX7219_SetBrightness
;!    _MAX7219_ShutdownStop->_MAX7219_Write
;!    _MAX7219_SetBrightness->_MAX7219_Write
;!    _MAX7219_DisplayTestStop->_MAX7219_Write
;!    _MAX7219_Clear->_MAX7219_Write
;!    _MAX7219_DisplayChar->_MAX7219_Write
;!    _MAX7219_Write->_MAX7219_SendByte
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
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
;! (0) _main                                                 1     1      0    3835
;!                                             12 COMMON     1     1      0
;!                _MAX7219_DisplayChar
;!                       _MAX7219_Init
;! ---------------------------------------------------------------------------------
;! (1) _MAX7219_Init                                         1     1      0    2520
;!                                              9 COMMON     1     1      0
;!                      _MAX7219_Clear
;!            _MAX7219_DisplayTestStop
;!              _MAX7219_SetBrightness
;!               _MAX7219_ShutdownStop
;!                      _MAX7219_Write
;! ---------------------------------------------------------------------------------
;! (2) _MAX7219_ShutdownStop                                 0     0      0     492
;!                      _MAX7219_Write
;! ---------------------------------------------------------------------------------
;! (2) _MAX7219_SetBrightness                                2     2      0     507
;!                                              7 COMMON     2     2      0
;!                      _MAX7219_Write
;! ---------------------------------------------------------------------------------
;! (2) _MAX7219_DisplayTestStop                              0     0      0     492
;!                      _MAX7219_Write
;! ---------------------------------------------------------------------------------
;! (2) _MAX7219_Clear                                        2     2      0     537
;!                                              7 COMMON     2     2      0
;!                      _MAX7219_Write
;! ---------------------------------------------------------------------------------
;! (1) _MAX7219_DisplayChar                                  5     3      2    1315
;!                                              7 COMMON     5     3      2
;!                 _MAX7219_LookupCode
;!                      _MAX7219_Write
;! ---------------------------------------------------------------------------------
;! (2) _MAX7219_Write                                        2     1      1     492
;!                                              5 COMMON     2     1      1
;!                   _MAX7219_SendByte
;! ---------------------------------------------------------------------------------
;! (3) _MAX7219_SendByte                                     5     5      0      75
;!                                              0 COMMON     5     5      0
;! ---------------------------------------------------------------------------------
;! (3) _MAX7219_LookupCode                                   3     3      0      60
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _MAX7219_DisplayChar
;!     _MAX7219_LookupCode
;!     _MAX7219_Write
;!       _MAX7219_SendByte
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
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA              40      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      D       D       1       92.9%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0       0       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            20      0       0       6        0.0%
;!BANK1               20      0       0       7        0.0%
;!DATA                 0      0       0       8        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 4 in file "E:\Study Material\XC8 PROJECTS\MAX7219 Test\Test.c"
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
;;      Temps:          1       0       0
;;      Totals:         1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_MAX7219_DisplayChar
;;		_MAX7219_Init
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"E:\Study Material\XC8 PROJECTS\MAX7219 Test\Test.c"
	line	4
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"E:\Study Material\XC8 PROJECTS\MAX7219 Test\Test.c"
	line	4
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	6
	
l611:	
;Test.c: 6: TRISC = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	8
	
l613:	
;Test.c: 8: MAX7219_Init ();
	fcall	_MAX7219_Init
	line	9
	
l615:	
;Test.c: 9: MAX7219_DisplayChar (1, '5', 0);
	movlw	(035h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(MAX7219_DisplayChar@character)
	clrf	(MAX7219_DisplayChar@dot)
	movlw	(01h)
	fcall	_MAX7219_DisplayChar
	line	10
	
l617:	
;Test.c: 10: MAX7219_DisplayChar (2, '1', 0);
	movlw	(031h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(MAX7219_DisplayChar@character)
	clrf	(MAX7219_DisplayChar@dot)
	movlw	(02h)
	fcall	_MAX7219_DisplayChar
	line	11
	
l619:	
;Test.c: 11: MAX7219_DisplayChar (3, '-', 0);
	movlw	(02Dh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(MAX7219_DisplayChar@character)
	clrf	(MAX7219_DisplayChar@dot)
	movlw	(03h)
	fcall	_MAX7219_DisplayChar
	line	12
	
l621:	
;Test.c: 12: MAX7219_DisplayChar (4, '0', 0);
	movlw	(030h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(MAX7219_DisplayChar@character)
	clrf	(MAX7219_DisplayChar@dot)
	movlw	(04h)
	fcall	_MAX7219_DisplayChar
	line	13
	
l623:	
;Test.c: 13: MAX7219_DisplayChar (5, '1', 0);
	movlw	(031h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(MAX7219_DisplayChar@character)
	clrf	(MAX7219_DisplayChar@dot)
	movlw	(05h)
	fcall	_MAX7219_DisplayChar
	line	14
	
l625:	
;Test.c: 14: MAX7219_DisplayChar (6, '-', 0);
	movlw	(02Dh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(MAX7219_DisplayChar@character)
	clrf	(MAX7219_DisplayChar@dot)
	movlw	(06h)
	fcall	_MAX7219_DisplayChar
	line	15
	
l627:	
;Test.c: 15: MAX7219_DisplayChar (7, '7', 0);
	movlw	(037h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(MAX7219_DisplayChar@character)
	clrf	(MAX7219_DisplayChar@dot)
	movlw	(07h)
	fcall	_MAX7219_DisplayChar
	line	16
	
l629:	
;Test.c: 16: MAX7219_DisplayChar (8, '2', 0);
	movlw	(032h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(MAX7219_DisplayChar@character)
	clrf	(MAX7219_DisplayChar@dot)
	movlw	(08h)
	fcall	_MAX7219_DisplayChar
	line	17
;Test.c: 17: while(1)
	
l75:	
	line	20
;Test.c: 18: {
	
l76:	
	line	17
	goto	l75
	
l77:	
	line	21
	
l78:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_MAX7219_Init

;; *************** function _MAX7219_Init *****************
;; Defined at:
;;		line 120 in file "E:\Study Material\XC8 PROJECTS\MAX7219 Test\MAX7219.C"
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
;;      Temps:          1       0       0
;;      Totals:         1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
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
psect	text1,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\MAX7219 Test\MAX7219.C"
	line	120
global __ptext1
__ptext1:	;psect for function _MAX7219_Init
psect	text1
	file	"E:\Study Material\XC8 PROJECTS\MAX7219 Test\MAX7219.C"
	line	120
	global	__size_of_MAX7219_Init
	__size_of_MAX7219_Init	equ	__end_of_MAX7219_Init-_MAX7219_Init
	
_MAX7219_Init:	
;incstack = 0
	opt	stack 4
; Regs used in _MAX7219_Init: [wreg+status,2+status,0+pclath+cstack]
	line	122
	
l595:	
;MAX7219.C: 122: (RC0 = 0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7	;volatile
	line	123
;MAX7219.C: 123: (RC2 = 0);
	bcf	(58/8),(58)&7	;volatile
	line	124
;MAX7219.C: 124: (RC1 = 0);
	bcf	(57/8),(57)&7	;volatile
	line	126
	
l597:	
;MAX7219.C: 126: MAX7219_Write(0x0b, 7);
	movlw	(07h)
	movwf	(??_MAX7219_Init+0)+0
	movf	(??_MAX7219_Init+0)+0,w
	movwf	(MAX7219_Write@dataout)
	movlw	(0Bh)
	fcall	_MAX7219_Write
	line	127
;MAX7219.C: 127: MAX7219_Write(0x09, 0x00);
	clrf	(MAX7219_Write@dataout)
	movlw	(09h)
	fcall	_MAX7219_Write
	line	128
;MAX7219.C: 128: MAX7219_ShutdownStop();
	fcall	_MAX7219_ShutdownStop
	line	129
;MAX7219.C: 129: MAX7219_DisplayTestStop();
	fcall	_MAX7219_DisplayTestStop
	line	130
;MAX7219.C: 130: MAX7219_Clear();
	fcall	_MAX7219_Clear
	line	131
;MAX7219.C: 131: MAX7219_SetBrightness(0x0f);
	movlw	(0Fh)
	fcall	_MAX7219_SetBrightness
	line	132
	
l23:	
	return
	opt stack 0
GLOBAL	__end_of_MAX7219_Init
	__end_of_MAX7219_Init:
	signat	_MAX7219_Init,88
	global	_MAX7219_ShutdownStop

;; *************** function _MAX7219_ShutdownStop *****************
;; Defined at:
;;		line 159 in file "E:\Study Material\XC8 PROJECTS\MAX7219 Test\MAX7219.C"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_MAX7219_Write
;; This function is called by:
;;		_MAX7219_Init
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	159
global __ptext2
__ptext2:	;psect for function _MAX7219_ShutdownStop
psect	text2
	file	"E:\Study Material\XC8 PROJECTS\MAX7219 Test\MAX7219.C"
	line	159
	global	__size_of_MAX7219_ShutdownStop
	__size_of_MAX7219_ShutdownStop	equ	__end_of_MAX7219_ShutdownStop-_MAX7219_ShutdownStop
	
_MAX7219_ShutdownStop:	
;incstack = 0
	opt	stack 4
; Regs used in _MAX7219_ShutdownStop: [wreg+status,2+status,0+pclath+cstack]
	line	161
	
l559:	
;MAX7219.C: 161: MAX7219_Write(0x0c, 1);
	clrf	(MAX7219_Write@dataout)
	incf	(MAX7219_Write@dataout),f
	movlw	(0Ch)
	fcall	_MAX7219_Write
	line	162
	
l29:	
	return
	opt stack 0
GLOBAL	__end_of_MAX7219_ShutdownStop
	__end_of_MAX7219_ShutdownStop:
	signat	_MAX7219_ShutdownStop,88
	global	_MAX7219_SetBrightness

;; *************** function _MAX7219_SetBrightness *****************
;; Defined at:
;;		line 204 in file "E:\Study Material\XC8 PROJECTS\MAX7219 Test\MAX7219.C"
;; Parameters:    Size  Location     Type
;;  brightness      1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  brightness      1    8[COMMON] unsigned char 
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
;;      Locals:         1       0       0
;;      Temps:          1       0       0
;;      Totals:         2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_MAX7219_Write
;; This function is called by:
;;		_MAX7219_Init
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	204
global __ptext3
__ptext3:	;psect for function _MAX7219_SetBrightness
psect	text3
	file	"E:\Study Material\XC8 PROJECTS\MAX7219 Test\MAX7219.C"
	line	204
	global	__size_of_MAX7219_SetBrightness
	__size_of_MAX7219_SetBrightness	equ	__end_of_MAX7219_SetBrightness-_MAX7219_SetBrightness
	
_MAX7219_SetBrightness:	
;incstack = 0
	opt	stack 4
; Regs used in _MAX7219_SetBrightness: [wreg+status,2+status,0+pclath+cstack]
;MAX7219_SetBrightness@brightness stored from wreg
	movwf	(MAX7219_SetBrightness@brightness)
	line	206
	
l575:	
;MAX7219.C: 206: brightness &= 0x0f;
	movlw	(0Fh)
	movwf	(??_MAX7219_SetBrightness+0)+0
	movf	(??_MAX7219_SetBrightness+0)+0,w
	andwf	(MAX7219_SetBrightness@brightness),f
	line	207
	
l577:	
;MAX7219.C: 207: MAX7219_Write(0x0a, brightness);
	movf	(MAX7219_SetBrightness@brightness),w
	movwf	(??_MAX7219_SetBrightness+0)+0
	movf	(??_MAX7219_SetBrightness+0)+0,w
	movwf	(MAX7219_Write@dataout)
	movlw	(0Ah)
	fcall	_MAX7219_Write
	line	208
	
l38:	
	return
	opt stack 0
GLOBAL	__end_of_MAX7219_SetBrightness
	__end_of_MAX7219_SetBrightness:
	signat	_MAX7219_SetBrightness,4216
	global	_MAX7219_DisplayTestStop

;; *************** function _MAX7219_DisplayTestStop *****************
;; Defined at:
;;		line 189 in file "E:\Study Material\XC8 PROJECTS\MAX7219 Test\MAX7219.C"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_MAX7219_Write
;; This function is called by:
;;		_MAX7219_Init
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	189
global __ptext4
__ptext4:	;psect for function _MAX7219_DisplayTestStop
psect	text4
	file	"E:\Study Material\XC8 PROJECTS\MAX7219 Test\MAX7219.C"
	line	189
	global	__size_of_MAX7219_DisplayTestStop
	__size_of_MAX7219_DisplayTestStop	equ	__end_of_MAX7219_DisplayTestStop-_MAX7219_DisplayTestStop
	
_MAX7219_DisplayTestStop:	
;incstack = 0
	opt	stack 4
; Regs used in _MAX7219_DisplayTestStop: [wreg+status,2+status,0+pclath+cstack]
	line	191
	
l561:	
;MAX7219.C: 191: MAX7219_Write(0x0f, 0);
	clrf	(MAX7219_Write@dataout)
	movlw	(0Fh)
	fcall	_MAX7219_Write
	line	192
	
l35:	
	return
	opt stack 0
GLOBAL	__end_of_MAX7219_DisplayTestStop
	__end_of_MAX7219_DisplayTestStop:
	signat	_MAX7219_DisplayTestStop,88
	global	_MAX7219_Clear

;; *************** function _MAX7219_Clear *****************
;; Defined at:
;;		line 220 in file "E:\Study Material\XC8 PROJECTS\MAX7219 Test\MAX7219.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    8[COMMON] unsigned char 
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
;;      Locals:         1       0       0
;;      Temps:          1       0       0
;;      Totals:         2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_MAX7219_Write
;; This function is called by:
;;		_MAX7219_Init
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	220
global __ptext5
__ptext5:	;psect for function _MAX7219_Clear
psect	text5
	file	"E:\Study Material\XC8 PROJECTS\MAX7219 Test\MAX7219.C"
	line	220
	global	__size_of_MAX7219_Clear
	__size_of_MAX7219_Clear	equ	__end_of_MAX7219_Clear-_MAX7219_Clear
	
_MAX7219_Clear:	
;incstack = 0
	opt	stack 4
; Regs used in _MAX7219_Clear: [wreg+status,2+status,0+pclath+cstack]
	line	223
	
l563:	
;MAX7219.C: 222: char i;
;MAX7219.C: 223: for (i=0; i < 8; i++)
	clrf	(MAX7219_Clear@i)
	
l565:	
	movlw	(08h)
	subwf	(MAX7219_Clear@i),w
	skipc
	goto	u51
	goto	u50
u51:
	goto	l569
u50:
	goto	l43
	
l567:	
	goto	l43
	line	224
	
l41:	
	
l569:	
;MAX7219.C: 224: MAX7219_Write(i, 0x00);
	clrf	(MAX7219_Write@dataout)
	movf	(MAX7219_Clear@i),w
	fcall	_MAX7219_Write
	line	223
	
l571:	
	movlw	(01h)
	movwf	(??_MAX7219_Clear+0)+0
	movf	(??_MAX7219_Clear+0)+0,w
	addwf	(MAX7219_Clear@i),f
	
l573:	
	movlw	(08h)
	subwf	(MAX7219_Clear@i),w
	skipc
	goto	u61
	goto	u60
u61:
	goto	l569
u60:
	goto	l43
	
l42:	
	line	225
	
l43:	
	return
	opt stack 0
GLOBAL	__end_of_MAX7219_Clear
	__end_of_MAX7219_Clear:
	signat	_MAX7219_Clear,88
	global	_MAX7219_DisplayChar

;; *************** function _MAX7219_DisplayChar *****************
;; Defined at:
;;		line 238 in file "E:\Study Material\XC8 PROJECTS\MAX7219 Test\MAX7219.C"
;; Parameters:    Size  Location     Type
;;  digit           1    wreg     unsigned char 
;;  character       1    7[COMMON] unsigned char 
;;  dot             1    8[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  digit           1   10[COMMON] unsigned char 
;;  ch              1   11[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         2       0       0
;;      Locals:         2       0       0
;;      Temps:          1       0       0
;;      Totals:         5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_MAX7219_LookupCode
;;		_MAX7219_Write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	line	238
global __ptext6
__ptext6:	;psect for function _MAX7219_DisplayChar
psect	text6
	file	"E:\Study Material\XC8 PROJECTS\MAX7219 Test\MAX7219.C"
	line	238
	global	__size_of_MAX7219_DisplayChar
	__size_of_MAX7219_DisplayChar	equ	__end_of_MAX7219_DisplayChar-_MAX7219_DisplayChar
	
_MAX7219_DisplayChar:	
;incstack = 0
	opt	stack 5
; Regs used in _MAX7219_DisplayChar: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;MAX7219_DisplayChar@digit stored from wreg
	movwf	(MAX7219_DisplayChar@digit)
	line	241
	
l599:	
;MAX7219.C: 240: char ch;
;MAX7219.C: 241: ch = MAX7219_LookupCode(character);
	movf	(MAX7219_DisplayChar@character),w
	fcall	_MAX7219_LookupCode
	movwf	(??_MAX7219_DisplayChar+0)+0
	movf	(??_MAX7219_DisplayChar+0)+0,w
	movwf	(MAX7219_DisplayChar@ch)
	line	242
	
l601:	
;MAX7219.C: 242: if(dot == 1)
	movf	(MAX7219_DisplayChar@dot),w
	xorlw	01h
	skipz
	goto	u91
	goto	u90
u91:
	goto	l605
u90:
	line	243
	
l603:	
;MAX7219.C: 243: ch = ch | 0x80;
	movf	(MAX7219_DisplayChar@ch),w
	iorlw	080h
	movwf	(??_MAX7219_DisplayChar+0)+0
	movf	(??_MAX7219_DisplayChar+0)+0,w
	movwf	(MAX7219_DisplayChar@ch)
	goto	l605
	
l46:	
	line	244
	
l605:	
;MAX7219.C: 244: MAX7219_Write(digit, ch);
	movf	(MAX7219_DisplayChar@ch),w
	movwf	(??_MAX7219_DisplayChar+0)+0
	movf	(??_MAX7219_DisplayChar+0)+0,w
	movwf	(MAX7219_Write@dataout)
	movf	(MAX7219_DisplayChar@digit),w
	fcall	_MAX7219_Write
	line	245
	
l47:	
	return
	opt stack 0
GLOBAL	__end_of_MAX7219_DisplayChar
	__end_of_MAX7219_DisplayChar:
	signat	_MAX7219_DisplayChar,12408
	global	_MAX7219_Write

;; *************** function _MAX7219_Write *****************
;; Defined at:
;;		line 321 in file "E:\Study Material\XC8 PROJECTS\MAX7219 Test\MAX7219.C"
;; Parameters:    Size  Location     Type
;;  reg_number      1    wreg     unsigned char 
;;  dataout         1    5[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  reg_number      1    6[COMMON] unsigned char 
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
;;      Locals:         1       0       0
;;      Temps:          0       0       0
;;      Totals:         2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
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
psect	text7,local,class=CODE,delta=2,merge=1
	line	321
global __ptext7
__ptext7:	;psect for function _MAX7219_Write
psect	text7
	file	"E:\Study Material\XC8 PROJECTS\MAX7219 Test\MAX7219.C"
	line	321
	global	__size_of_MAX7219_Write
	__size_of_MAX7219_Write	equ	__end_of_MAX7219_Write-_MAX7219_Write
	
_MAX7219_Write:	
;incstack = 0
	opt	stack 5
; Regs used in _MAX7219_Write: [wreg+status,2+status,0+pclath+cstack]
;MAX7219_Write@reg_number stored from wreg
	movwf	(MAX7219_Write@reg_number)
	line	323
	
l551:	
;MAX7219.C: 323: (RC1 = 1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7	;volatile
	line	324
	
l553:	
;MAX7219.C: 324: MAX7219_SendByte(reg_number);
	movf	(MAX7219_Write@reg_number),w
	fcall	_MAX7219_SendByte
	line	325
;MAX7219.C: 325: MAX7219_SendByte(dataout);
	movf	(MAX7219_Write@dataout),w
	fcall	_MAX7219_SendByte
	line	326
	
l555:	
;MAX7219.C: 326: (RC1 = 0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7	;volatile
	line	327
	
l557:	
;MAX7219.C: 327: (RC1 = 1);
	bsf	(57/8),(57)&7	;volatile
	line	328
	
l59:	
	return
	opt stack 0
GLOBAL	__end_of_MAX7219_Write
	__end_of_MAX7219_Write:
	signat	_MAX7219_Write,8312
	global	_MAX7219_SendByte

;; *************** function _MAX7219_SendByte *****************
;; Defined at:
;;		line 340 in file "E:\Study Material\XC8 PROJECTS\MAX7219 Test\MAX7219.C"
;; Parameters:    Size  Location     Type
;;  dataout         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dataout         1    2[COMMON] unsigned char 
;;  mask            1    3[COMMON] unsigned char 
;;  i               1    4[COMMON] unsigned char 
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
;;		_MAX7219_Write
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	line	340
global __ptext8
__ptext8:	;psect for function _MAX7219_SendByte
psect	text8
	file	"E:\Study Material\XC8 PROJECTS\MAX7219 Test\MAX7219.C"
	line	340
	global	__size_of_MAX7219_SendByte
	__size_of_MAX7219_SendByte	equ	__end_of_MAX7219_SendByte-_MAX7219_SendByte
	
_MAX7219_SendByte:	
;incstack = 0
	opt	stack 5
; Regs used in _MAX7219_SendByte: [wreg+status,2+status,0]
;MAX7219_SendByte@dataout stored from wreg
	movwf	(MAX7219_SendByte@dataout)
	line	343
	
l535:	
;MAX7219.C: 342: char i;
;MAX7219.C: 343: for (i=8; i>0; i--) {
	movlw	(08h)
	movwf	(??_MAX7219_SendByte+0)+0
	movf	(??_MAX7219_SendByte+0)+0,w
	movwf	(MAX7219_SendByte@i)
	
l537:	
	movf	(MAX7219_SendByte@i),f
	skipz
	goto	u11
	goto	u10
u11:
	goto	l541
u10:
	goto	l66
	
l539:	
	goto	l66
	
l62:	
	line	344
	
l541:	
;MAX7219.C: 344: unsigned char mask = 1 << (i - 1);
	movlw	(01h)
	movwf	(??_MAX7219_SendByte+0)+0
	movf	(MAX7219_SendByte@i),w
	addlw	-1
	addlw	1
	goto	u24
u25:
	clrc
	rlf	(??_MAX7219_SendByte+0)+0,f
u24:
	addlw	-1
	skipz
	goto	u25
	movf	0+(??_MAX7219_SendByte+0)+0,w
	movwf	(??_MAX7219_SendByte+1)+0
	movf	(??_MAX7219_SendByte+1)+0,w
	movwf	(MAX7219_SendByte@mask)
	line	345
	
l543:	
;MAX7219.C: 345: (RC2 = 0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7	;volatile
	line	346
;MAX7219.C: 346: if (dataout & mask)
	movf	(MAX7219_SendByte@dataout),w
	andwf	(MAX7219_SendByte@mask),w
	btfsc	status,2
	goto	u31
	goto	u30
u31:
	goto	l64
u30:
	line	347
	
l545:	
;MAX7219.C: 347: (RC0 = 1);
	bsf	(56/8),(56)&7	;volatile
	goto	l65
	line	348
	
l64:	
	line	349
;MAX7219.C: 348: else
;MAX7219.C: 349: (RC0 = 0);
	bcf	(56/8),(56)&7	;volatile
	
l65:	
	line	350
;MAX7219.C: 350: (RC2 = 1);
	bsf	(58/8),(58)&7	;volatile
	line	343
	
l547:	
	movlw	low(01h)
	subwf	(MAX7219_SendByte@i),f
	
l549:	
	movf	(MAX7219_SendByte@i),f
	skipz
	goto	u41
	goto	u40
u41:
	goto	l541
u40:
	goto	l66
	
l63:	
	line	352
	
l66:	
	return
	opt stack 0
GLOBAL	__end_of_MAX7219_SendByte
	__end_of_MAX7219_SendByte:
	signat	_MAX7219_SendByte,4216
	global	_MAX7219_LookupCode

;; *************** function _MAX7219_LookupCode *****************
;; Defined at:
;;		line 301 in file "E:\Study Material\XC8 PROJECTS\MAX7219 Test\MAX7219.C"
;; Parameters:    Size  Location     Type
;;  character       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  character       1    1[COMMON] unsigned char 
;;  i               1    2[COMMON] unsigned char 
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
;;      Locals:         2       0       0
;;      Temps:          1       0       0
;;      Totals:         3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_MAX7219_DisplayChar
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	line	301
global __ptext9
__ptext9:	;psect for function _MAX7219_LookupCode
psect	text9
	file	"E:\Study Material\XC8 PROJECTS\MAX7219 Test\MAX7219.C"
	line	301
	global	__size_of_MAX7219_LookupCode
	__size_of_MAX7219_LookupCode	equ	__end_of_MAX7219_LookupCode-_MAX7219_LookupCode
	
_MAX7219_LookupCode:	
;incstack = 0
	opt	stack 5
; Regs used in _MAX7219_LookupCode: [wreg-fsr0h+status,2+status,0+pclath]
;MAX7219_LookupCode@character stored from wreg
	movwf	(MAX7219_LookupCode@character)
	line	304
	
l579:	
;MAX7219.C: 303: char i;
;MAX7219.C: 304: for (i = 0; MAX7219_Font[i].ascii; i++)
	clrf	(MAX7219_LookupCode@i)
	goto	l589
	line	305
	
l53:	
	
l581:	
;MAX7219.C: 305: if (character == MAX7219_Font[i].ascii)
	movf	(MAX7219_LookupCode@i),w
	movwf	(??_MAX7219_LookupCode+0)+0
	addwf	(??_MAX7219_LookupCode+0)+0,w
	addlw	low((_MAX7219_Font)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	xorwf	(MAX7219_LookupCode@character),w
	skipz
	goto	u71
	goto	u70
u71:
	goto	l587
u70:
	line	306
	
l583:	
;MAX7219.C: 306: return MAX7219_Font[i].segs;
	setc
	rlf	(MAX7219_LookupCode@i),w
	addlw	low((_MAX7219_Font)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	goto	l55
	
l585:	
	goto	l55
	
l54:	
	line	304
	
l587:	
	movlw	(01h)
	movwf	(??_MAX7219_LookupCode+0)+0
	movf	(??_MAX7219_LookupCode+0)+0,w
	addwf	(MAX7219_LookupCode@i),f
	goto	l589
	
l52:	
	
l589:	
	movf	(MAX7219_LookupCode@i),w
	movwf	(??_MAX7219_LookupCode+0)+0
	addwf	(??_MAX7219_LookupCode+0)+0,w
	addlw	low((_MAX7219_Font)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u81
	goto	u80
u81:
	goto	l581
u80:
	goto	l591
	
l56:	
	line	307
	
l591:	
;MAX7219.C: 307: return 0;
	movlw	(0)
	goto	l55
	
l593:	
	line	308
	
l55:	
	return
	opt stack 0
GLOBAL	__end_of_MAX7219_LookupCode
	__end_of_MAX7219_LookupCode:
	signat	_MAX7219_LookupCode,4217
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

opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 49521"

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
# 46 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
INDF equ 00h ;# 
# 52 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TMR0 equ 01h ;# 
# 58 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PCL equ 02h ;# 
# 64 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
STATUS equ 03h ;# 
# 151 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
FSR equ 04h ;# 
# 157 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PORTA equ 05h ;# 
# 206 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PORTB equ 06h ;# 
# 267 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PORTC equ 07h ;# 
# 328 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PCLATH equ 0Ah ;# 
# 347 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
INTCON equ 0Bh ;# 
# 424 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PIR1 equ 0Ch ;# 
# 474 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PIR2 equ 0Dh ;# 
# 494 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TMR1 equ 0Eh ;# 
# 500 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TMR1L equ 0Eh ;# 
# 506 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TMR1H equ 0Fh ;# 
# 512 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
T1CON equ 010h ;# 
# 588 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TMR2 equ 011h ;# 
# 594 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
T2CON equ 012h ;# 
# 664 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
CCPR1 equ 015h ;# 
# 670 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
CCPR1L equ 015h ;# 
# 676 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
CCPR1H equ 016h ;# 
# 682 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
CCP1CON equ 017h ;# 
# 739 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
RCSTA equ 018h ;# 
# 833 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TXREG equ 019h ;# 
# 839 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
RCREG equ 01Ah ;# 
# 845 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
ADRESH equ 01Eh ;# 
# 851 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
ADCON0 equ 01Fh ;# 
# 946 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
OPTION_REG equ 081h ;# 
# 1015 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TRISA equ 085h ;# 
# 1064 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TRISB equ 086h ;# 
# 1125 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TRISC equ 087h ;# 
# 1186 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PIE1 equ 08Ch ;# 
# 1236 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PIE2 equ 08Dh ;# 
# 1256 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PCON equ 08Eh ;# 
# 1289 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
PR2 equ 092h ;# 
# 1295 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
TXSTA equ 098h ;# 
# 1375 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
SPBRG equ 099h ;# 
# 1381 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
ADRESL equ 09Eh ;# 
# 1387 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
ADCON1 equ 09Fh ;# 
# 1439 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
EEDATA equ 010Ch ;# 
# 1445 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
EEADR equ 010Dh ;# 
# 1451 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
EEDATH equ 010Eh ;# 
# 1457 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
EEADRH equ 010Fh ;# 
# 1463 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
EECON1 equ 018Ch ;# 
# 1507 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f870.h"
EECON2 equ 018Dh ;# 
	FNCALL	_main,_USARTInit
	FNCALL	_main,_ATCommand
	FNCALL	_main,_phase_check
	FNCALL	_main,_start
	FNCALL	_main,_stop
	FNCALL	_main,_USARTWritestring
	FNCALL	_ATCommand,_USARTWriteChar
	FNCALL	_USARTWritestring,_USARTWriteChar
	FNROOT	_main
	FNCALL	_ISR,_USARTHandleRxInt
	FNCALL	_USARTHandleRxInt,_strcmp
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_PLUSE_FLAG
	global	_index
	global	_CALL_FLAG
	global	_CLIP_FLAG
	global	_CUT_FLAG
	global	_LP_FLAG
	global	_MOTOR_FLAG
	global	_NUMBER_FLAG
	global	_RING_COUNT
	global	_WRONG_NUMBER
	global	_buffer
	global	_PIR1bits
_PIR1bits	set	0xC
	global	_RCREG
_RCREG	set	0x1A
	global	_RCSTAbits
_RCSTAbits	set	0x18
	global	_TXREG
_TXREG	set	0x19
	global	_GIE
_GIE	set	0x5F
	global	_PEIE
_PEIE	set	0x5E
	global	_RA5
_RA5	set	0x2D
	global	_RB7
_RB7	set	0x37
	global	_RC0
_RC0	set	0x38
	global	_RC1
_RC1	set	0x39
	global	_RC2
_RC2	set	0x3A
	global	_RC3
_RC3	set	0x3B
	global	_RC4
_RC4	set	0x3C
	global	_RCIF
_RCIF	set	0x65
	global	_ADCON1
_ADCON1	set	0x9F
	global	_SPBRG
_SPBRG	set	0x99
	global	_TRISA
_TRISA	set	0x85
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_TXSTAbits
_TXSTAbits	set	0x98
	global	_RCIE
_RCIE	set	0x465
	global	_EEADR
_EEADR	set	0x10D
	global	_EEDATA
_EEDATA	set	0x10C
	global	_EECON1bits
_EECON1bits	set	0x18C
	global	_EECON2
_EECON2	set	0x18D
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	global __stringdata
__stringdata:
	
STR_1:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	43	;'+'
	retlw	67	;'C'
	retlw	76	;'L'
	retlw	73	;'I'
	retlw	80	;'P'
	retlw	61	;'='
	retlw	49	;'1'
	retlw	0
psect	strings
	
STR_9:	
	retlw	43	;'+'
	retlw	67	;'C'
	retlw	76	;'L'
	retlw	73	;'I'
	retlw	80	;'P'
	retlw	0
psect	strings
	
STR_3:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	68	;'D'
	retlw	0
psect	strings
	
STR_2:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	72	;'H'
	retlw	0
psect	strings
STR_4	equ	STR_2+0
STR_5	equ	STR_2+0
STR_7	equ	STR_2+0
STR_8	equ	STR_2+0
STR_6	equ	STR_3+0
	global __end_of__stringdata
__end_of__stringdata:
; #config settings
	file	"NewMob.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_PLUSE_FLAG:
       ds      1

_index:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_CALL_FLAG:
       ds      1

_CLIP_FLAG:
       ds      1

_CUT_FLAG:
       ds      1

_LP_FLAG:
       ds      1

_MOTOR_FLAG:
       ds      1

_NUMBER_FLAG:
       ds      1

_RING_COUNT:
       ds      1

_WRONG_NUMBER:
       ds      1

_buffer:
       ds      15

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+017h)
	fcall	clear_ram
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
?_start:	; 0 bytes @ 0x0
?_stop:	; 0 bytes @ 0x0
?_USARTWritestring:	; 0 bytes @ 0x0
?_USARTHandleRxInt:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
?_USARTWriteChar:	; 0 bytes @ 0x0
?_phase_check:	; 1 bytes @ 0x0
	global	?_strcmp
?_strcmp:	; 2 bytes @ 0x0
	global	strcmp@s2
strcmp@s2:	; 1 bytes @ 0x0
	ds	2
??_strcmp:	; 0 bytes @ 0x2
	ds	2
	global	strcmp@r
strcmp@r:	; 1 bytes @ 0x4
	ds	1
	global	strcmp@s1
strcmp@s1:	; 1 bytes @ 0x5
	ds	1
??_USARTHandleRxInt:	; 0 bytes @ 0x6
	ds	1
	global	USARTHandleRxInt@data
USARTHandleRxInt@data:	; 1 bytes @ 0x7
	ds	1
??_ISR:	; 0 bytes @ 0x8
	ds	4
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_USARTInit
?_USARTInit:	; 0 bytes @ 0x0
??_phase_check:	; 0 bytes @ 0x0
??_start:	; 0 bytes @ 0x0
??_stop:	; 0 bytes @ 0x0
??_USARTWriteChar:	; 0 bytes @ 0x0
	global	USARTWriteChar@ch
USARTWriteChar@ch:	; 1 bytes @ 0x0
	global	USARTInit@baud_rate
USARTInit@baud_rate:	; 2 bytes @ 0x0
	ds	1
	global	?_ATCommand
?_ATCommand:	; 0 bytes @ 0x1
??_USARTWritestring:	; 0 bytes @ 0x1
	global	ATCommand@str
ATCommand@str:	; 2 bytes @ 0x1
	ds	1
??_USARTInit:	; 0 bytes @ 0x2
	global	USARTWritestring@str
USARTWritestring@str:	; 1 bytes @ 0x2
	ds	1
??_ATCommand:	; 0 bytes @ 0x3
??_main:	; 0 bytes @ 0x3
	ds	3
	global	main@seconds
main@seconds:	; 1 bytes @ 0x6
	ds	1
	global	main@temp
main@temp:	; 1 bytes @ 0x7
	ds	1
	global	main@i
main@i:	; 1 bytes @ 0x8
	ds	1
	global	main@count
main@count:	; 1 bytes @ 0x9
	ds	1
;!
;!Data Sizes:
;!    Strings     24
;!    Constant    0
;!    Data        0
;!    BSS         25
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     12      14
;!    BANK0            80     10      33
;!    BANK1            32      0       0

;!
;!Pointer List with Targets:
;!
;!    ?_strcmp	int  size(1) Largest target is 0
;!
;!    strcmp@s2	PTR const unsigned char  size(1) Largest target is 6
;!		 -> STR_9(CODE[6]), 
;!
;!    strcmp@s1	PTR const unsigned char  size(1) Largest target is 15
;!		 -> buffer(BANK0[15]), 
;!
;!    USARTWritestring@str	PTR const unsigned char  size(1) Largest target is 4
;!		 -> STR_6(CODE[4]), STR_3(CODE[4]), 
;!
;!    ATCommand@str	PTR const unsigned char  size(2) Largest target is 15
;!		 -> STR_8(CODE[4]), STR_7(CODE[4]), STR_5(CODE[4]), STR_4(CODE[4]), 
;!		 -> buffer(BANK0[15]), STR_2(CODE[4]), STR_1(CODE[10]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _ISR in COMMON
;!
;!    _ISR->_USARTHandleRxInt
;!    _USARTHandleRxInt->_strcmp
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_ATCommand
;!    _main->_start
;!    _main->_stop
;!    _main->_USARTWritestring
;!    _ATCommand->_USARTWriteChar
;!    _USARTWritestring->_USARTWriteChar
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
;! (0) _main                                                 7     7      0     322
;!                                              3 BANK0      7     7      0
;!                          _USARTInit
;!                          _ATCommand
;!                        _phase_check
;!                              _start
;!                               _stop
;!                   _USARTWritestring
;! ---------------------------------------------------------------------------------
;! (1) _USARTInit                                            2     0      2      22
;!                                              0 BANK0      2     0      2
;! ---------------------------------------------------------------------------------
;! (1) _ATCommand                                            2     0      2      67
;!                                              1 BANK0      2     0      2
;!                     _USARTWriteChar
;! ---------------------------------------------------------------------------------
;! (1) _phase_check                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _start                                                3     3      0       0
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _stop                                                 3     3      0       0
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _USARTWritestring                                     2     2      0      67
;!                                              1 BANK0      2     2      0
;!                     _USARTWriteChar
;! ---------------------------------------------------------------------------------
;! (2) _USARTWriteChar                                       1     1      0      22
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (3) _ISR                                                  4     4      0     334
;!                                              8 COMMON     4     4      0
;!                   _USARTHandleRxInt
;! ---------------------------------------------------------------------------------
;! (4) _USARTHandleRxInt                                     2     2      0     334
;!                                              6 COMMON     2     2      0
;!                             _strcmp
;! ---------------------------------------------------------------------------------
;! (6) _strcmp                                               6     4      2      91
;!                                              0 COMMON     6     4      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _USARTInit
;!   _ATCommand
;!     _USARTWriteChar
;!   _phase_check
;!   _start
;!   _stop
;!   _USARTWritestring
;!     _USARTWriteChar
;!
;! _ISR (ROOT)
;!   _USARTHandleRxInt
;!     _strcmp
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA              40      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      C       E       1      100.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       A       2        0.0%
;!ABS                  0      0      2F       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      A      21       5       41.3%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            20      0       0       6        0.0%
;!BANK1               20      0       0       7        0.0%
;!DATA                 0      0      39       8        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 38 in file "C:\XC8 PROJECTS\New Mobile\NewMobile.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    8[BANK0 ] unsigned char 
;;  temp            1    7[BANK0 ] unsigned char 
;;  seconds         1    6[BANK0 ] unsigned char 
;;  count           1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
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
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_USARTInit
;;		_ATCommand
;;		_phase_check
;;		_start
;;		_stop
;;		_USARTWritestring
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\XC8 PROJECTS\New Mobile\NewMobile.c"
	line	38
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 2
; Regs used in _main: [allreg]
	line	39
	
l1175:	
;NewMobile.c: 39: TRISA = 0xFE;
	movlw	(0FEh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	40
	
l1177:	
;NewMobile.c: 40: TRISB = 0x00;
	clrf	(134)^080h	;volatile
	line	41
	
l1179:	
;NewMobile.c: 41: TRISC = 0x87;
	movlw	(087h)
	movwf	(135)^080h	;volatile
	line	42
	
l1181:	
;NewMobile.c: 42: ADCON1 = 0x06;
	movlw	(06h)
	movwf	(159)^080h	;volatile
	line	43
	
l1183:	
;NewMobile.c: 43: char count = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	line	46
	
l1185:	
;NewMobile.c: 46: EEADR = 0x01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	line	47
	
l1187:	
;NewMobile.c: 47: EECON1bits.EEPGD = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(396)^0180h,7	;volatile
	line	48
	
l1189:	
;NewMobile.c: 48: EECON1bits.RD = 1;
	bsf	(396)^0180h,0	;volatile
	line	49
;NewMobile.c: 49: while(EECON1bits.RD == 1)
	goto	l93
	
l94:	
	line	52
;NewMobile.c: 50: {
	
l93:	
	line	49
	btfsc	(396)^0180h,0	;volatile
	goto	u611
	goto	u610
u611:
	goto	l93
u610:
	goto	l1191
	
l95:	
	line	53
	
l1191:	
;NewMobile.c: 52: }
;NewMobile.c: 53: MOTOR_FLAG = EEDATA;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(268)^0100h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_MOTOR_FLAG)
	line	55
;NewMobile.c: 55: if(MOTOR_FLAG != 1 || MOTOR_FLAG != 0)
	movf	(_MOTOR_FLAG),w
	xorlw	01h
	skipz
	goto	u621
	goto	u620
u621:
	goto	l98
u620:
	
l1193:	
	movf	(_MOTOR_FLAG),w
	skipz
	goto	u630
	goto	l96
u630:
	
l98:	
	line	56
;NewMobile.c: 56: MOTOR_FLAG = 0;
	clrf	(_MOTOR_FLAG)
	
l96:	
	line	59
;NewMobile.c: 59: for(count = 0; count <= 10; count++)
	clrf	(main@count)
	
l1195:	
	movlw	(0Bh)
	subwf	(main@count),w
	skipc
	goto	u641
	goto	u640
u641:
	goto	l99
u640:
	goto	l1207
	
l1197:	
	goto	l1207
	line	60
	
l99:	
	line	61
;NewMobile.c: 60: {
;NewMobile.c: 61: RB7 = 1;
	bsf	(55/8),(55)&7	;volatile
	line	62
	
l1199:	
;NewMobile.c: 62: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u1217:
	decfsz	((??_main+0)+0),f
	goto	u1217
	decfsz	((??_main+0)+0+1),f
	goto	u1217
	decfsz	((??_main+0)+0+2),f
	goto	u1217
	nop2
opt asmopt_on

	line	63
	
l1201:	
;NewMobile.c: 63: RB7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	64
;NewMobile.c: 64: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u1227:
	decfsz	((??_main+0)+0),f
	goto	u1227
	decfsz	((??_main+0)+0+1),f
	goto	u1227
	decfsz	((??_main+0)+0+2),f
	goto	u1227
	nop2
opt asmopt_on

	line	59
	
l1203:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@count),f
	
l1205:	
	movlw	(0Bh)
	subwf	(main@count),w
	skipc
	goto	u651
	goto	u650
u651:
	goto	l99
u650:
	goto	l1207
	
l100:	
	line	68
	
l1207:	
;NewMobile.c: 65: }
;NewMobile.c: 68: USARTInit(9600);
	movlw	low(02580h)
	movwf	(?_USARTInit)
	movlw	high(02580h)
	movwf	((?_USARTInit))+1
	fcall	_USARTInit
	line	70
	
l1209:	
;NewMobile.c: 70: (GIE = 0);
	bcf	(95/8),(95)&7	;volatile
	line	71
	
l1211:	
;NewMobile.c: 71: ATCommand("AT+CLIP=1");
	movlw	low((STR_1-__stringbase))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_ATCommand)
	movlw	80h
	movwf	(?_ATCommand+1)
	fcall	_ATCommand
	line	72
	
l1213:	
;NewMobile.c: 72: _delay(10000000);
	opt asmopt_off
movlw  51
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	188
movwf	((??_main+0)+0+1),f
	movlw	16
movwf	((??_main+0)+0),f
u1237:
	decfsz	((??_main+0)+0),f
	goto	u1237
	decfsz	((??_main+0)+0+1),f
	goto	u1237
	decfsz	((??_main+0)+0+2),f
	goto	u1237
opt asmopt_on

	line	73
	
l1215:	
;NewMobile.c: 73: (GIE = 1);
	bsf	(95/8),(95)&7	;volatile
	goto	l1217
	line	75
;NewMobile.c: 75: while(1)
	
l101:	
	line	78
	
l1217:	
;NewMobile.c: 76: {
;NewMobile.c: 78: if(MOTOR_FLAG == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_MOTOR_FLAG),w
	xorlw	01h
	skipz
	goto	u661
	goto	u660
u661:
	goto	l1311
u660:
	line	81
	
l1219:	
;NewMobile.c: 79: {
;NewMobile.c: 81: (GIE = 0);
	bcf	(95/8),(95)&7	;volatile
	line	82
	
l1221:	
;NewMobile.c: 82: if( phase_check() == 1 )
	fcall	_phase_check
	xorlw	01h
	skipz
	goto	u671
	goto	u670
u671:
	goto	l1239
u670:
	line	85
	
l1223:	
;NewMobile.c: 83: {
;NewMobile.c: 85: if( LP_FLAG == 0 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LP_FLAG),f
	skipz
	goto	u681
	goto	u680
u681:
	goto	l1263
u680:
	line	87
	
l1225:	
;NewMobile.c: 86: {
;NewMobile.c: 87: start();
	fcall	_start
	line	88
	
l1227:	
;NewMobile.c: 88: LP_FLAG = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_LP_FLAG)
	incf	(_LP_FLAG),f
	line	90
	
l1229:	
;NewMobile.c: 90: if(CUT_FLAG == 1)
	movf	(_CUT_FLAG),w
	xorlw	01h
	skipz
	goto	u691
	goto	u690
u691:
	goto	l1263
u690:
	line	92
	
l1231:	
;NewMobile.c: 91: {
;NewMobile.c: 92: ATCommand("ATH");
	movlw	low((STR_2-__stringbase))
	movwf	(?_ATCommand)
	movlw	80h
	movwf	(?_ATCommand+1)
	fcall	_ATCommand
	line	93
	
l1233:	
;NewMobile.c: 93: _delay(1000000);
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u1247:
	decfsz	((??_main+0)+0),f
	goto	u1247
	decfsz	((??_main+0)+0+1),f
	goto	u1247
	decfsz	((??_main+0)+0+2),f
	goto	u1247
	nop2
opt asmopt_on

	line	94
	
l1235:	
;NewMobile.c: 94: CUT_FLAG = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_CUT_FLAG)
	line	95
	
l1237:	
;NewMobile.c: 95: count = 0;
	clrf	(main@count)
	goto	l1263
	line	96
	
l105:	
	goto	l1263
	line	97
	
l104:	
	line	98
;NewMobile.c: 96: }
;NewMobile.c: 97: }
;NewMobile.c: 98: }
	goto	l1263
	line	100
	
l103:	
	line	103
	
l1239:	
;NewMobile.c: 100: else
;NewMobile.c: 101: {
;NewMobile.c: 103: if( LP_FLAG == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LP_FLAG),w
	xorlw	01h
	skipz
	goto	u701
	goto	u700
u701:
	goto	l1263
u700:
	line	105
	
l1241:	
;NewMobile.c: 104: {
;NewMobile.c: 105: stop();
	fcall	_stop
	line	106
	
l1243:	
;NewMobile.c: 106: LP_FLAG = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_LP_FLAG)
	line	108
	
l1245:	
;NewMobile.c: 108: if(CUT_FLAG == 1)
	movf	(_CUT_FLAG),w
	xorlw	01h
	skipz
	goto	u711
	goto	u710
u711:
	goto	l1259
u710:
	line	112
	
l1247:	
;NewMobile.c: 109: {
;NewMobile.c: 111: char i;
;NewMobile.c: 112: for(i = 0; i<=59; i++)
	clrf	(main@i)
	
l1249:	
	movlw	(03Ch)
	subwf	(main@i),w
	skipc
	goto	u721
	goto	u720
u721:
	goto	l1253
u720:
	goto	l110
	
l1251:	
	goto	l110
	line	113
	
l109:	
	line	114
	
l1253:	
;NewMobile.c: 113: {
;NewMobile.c: 114: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u1257:
	decfsz	((??_main+0)+0),f
	goto	u1257
	decfsz	((??_main+0)+0+1),f
	goto	u1257
	decfsz	((??_main+0)+0+2),f
	goto	u1257
	nop2
opt asmopt_on

	line	112
	
l1255:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	
l1257:	
	movlw	(03Ch)
	subwf	(main@i),w
	skipc
	goto	u731
	goto	u730
u731:
	goto	l1253
u730:
	
l110:	
	line	116
;NewMobile.c: 115: }
;NewMobile.c: 116: CUT_FLAG = 0;
	clrf	(_CUT_FLAG)
	line	117
;NewMobile.c: 117: CALL_FLAG = 0;
	clrf	(_CALL_FLAG)
	line	118
;NewMobile.c: 118: MOTOR_FLAG = 0;
	clrf	(_MOTOR_FLAG)
	goto	l1259
	line	119
	
l108:	
	line	121
	
l1259:	
;NewMobile.c: 119: }
;NewMobile.c: 121: if(CALL_FLAG == 1)
	movf	(_CALL_FLAG),w
	xorlw	01h
	skipz
	goto	u741
	goto	u740
u741:
	goto	l1263
u740:
	line	123
	
l1261:	
;NewMobile.c: 122: {
;NewMobile.c: 123: CALL_FLAG = 0;
	clrf	(_CALL_FLAG)
	line	124
;NewMobile.c: 124: MOTOR_FLAG = 0;
	clrf	(_MOTOR_FLAG)
	goto	l1263
	line	125
	
l111:	
	goto	l1263
	line	126
	
l107:	
	goto	l1263
	line	127
	
l106:	
	line	129
	
l1263:	
;NewMobile.c: 125: }
;NewMobile.c: 126: }
;NewMobile.c: 127: }
;NewMobile.c: 129: if(CALL_FLAG == 0)
	movf	(_CALL_FLAG),f
	skipz
	goto	u751
	goto	u750
u751:
	goto	l1267
u750:
	line	131
	
l1265:	
;NewMobile.c: 130: {
;NewMobile.c: 131: (GIE = 1);
	bsf	(95/8),(95)&7	;volatile
	goto	l1267
	line	132
	
l112:	
	line	134
	
l1267:	
;NewMobile.c: 132: }
;NewMobile.c: 134: if(count == 4)
	movf	(main@count),w
	xorlw	04h
	skipz
	goto	u761
	goto	u760
u761:
	goto	l1299
u760:
	line	137
	
l1269:	
;NewMobile.c: 135: {
;NewMobile.c: 137: if(RA5 == 1)
	btfss	(45/8),(45)&7	;volatile
	goto	u771
	goto	u770
u771:
	goto	l1287
u770:
	line	140
	
l1271:	
;NewMobile.c: 138: {
;NewMobile.c: 140: if(CALL_FLAG == 1)
	movf	(_CALL_FLAG),w
	xorlw	01h
	skipz
	goto	u781
	goto	u780
u781:
	goto	l119
u780:
	line	142
	
l1273:	
;NewMobile.c: 141: {
;NewMobile.c: 142: USARTWritestring("ATD");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_USARTWritestring
	line	143
;NewMobile.c: 143: ATCommand(buffer);
	movlw	(_buffer&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_ATCommand)
	movlw	(0x0/2)
	movwf	(?_ATCommand+1)
	fcall	_ATCommand
	line	144
	
l1275:	
;NewMobile.c: 144: _delay(30000000);
	opt asmopt_off
movlw  153
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	50
movwf	((??_main+0)+0+1),f
	movlw	56
movwf	((??_main+0)+0),f
u1267:
	decfsz	((??_main+0)+0),f
	goto	u1267
	decfsz	((??_main+0)+0+1),f
	goto	u1267
	decfsz	((??_main+0)+0+2),f
	goto	u1267
	nop2
opt asmopt_on

	line	145
	
l1277:	
;NewMobile.c: 145: ATCommand("ATH");
	movlw	low((STR_4-__stringbase))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_ATCommand)
	movlw	80h
	movwf	(?_ATCommand+1)
	fcall	_ATCommand
	line	146
;NewMobile.c: 146: _delay(1000000);
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u1277:
	decfsz	((??_main+0)+0),f
	goto	u1277
	decfsz	((??_main+0)+0+1),f
	goto	u1277
	decfsz	((??_main+0)+0+2),f
	goto	u1277
	nop2
opt asmopt_on

	line	147
	
l1279:	
;NewMobile.c: 147: CALL_FLAG = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_CALL_FLAG)
	line	150
;NewMobile.c: 150: EEADR = 0x01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	line	151
;NewMobile.c: 151: EEDATA = 0x01;
	movlw	(01h)
	movwf	(268)^0100h	;volatile
	line	152
	
l1281:	
;NewMobile.c: 152: EECON1bits.EEPGD = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(396)^0180h,7	;volatile
	line	153
	
l1283:	
;NewMobile.c: 153: EECON1bits.WREN = 1;
	bsf	(396)^0180h,2	;volatile
	line	154
;NewMobile.c: 154: EECON2 = 0x55;
	movlw	(055h)
	movwf	(397)^0180h	;volatile
	line	155
;NewMobile.c: 155: EECON2 = 0xAA;
	movlw	(0AAh)
	movwf	(397)^0180h	;volatile
	line	156
	
l1285:	
;NewMobile.c: 156: EECON1bits.WR = 1;
	bsf	(396)^0180h,1	;volatile
	line	157
;NewMobile.c: 157: while(EECON1bits.WR == 1)
	goto	l116
	
l117:	
	line	160
;NewMobile.c: 158: {
	
l116:	
	line	157
	btfsc	(396)^0180h,1	;volatile
	goto	u791
	goto	u790
u791:
	goto	l116
u790:
	
l118:	
	line	161
;NewMobile.c: 160: }
;NewMobile.c: 161: EECON1bits.WREN = 0;
	bcf	(396)^0180h,2	;volatile
	line	163
;NewMobile.c: 163: (GIE = 1);
	bsf	(95/8),(95)&7	;volatile
	goto	l119
	line	164
	
l115:	
	line	165
;NewMobile.c: 164: }
;NewMobile.c: 165: }
	goto	l119
	line	166
	
l114:	
	line	169
	
l1287:	
;NewMobile.c: 166: else
;NewMobile.c: 167: {
;NewMobile.c: 169: if(LP_FLAG == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LP_FLAG),w
	xorlw	01h
	skipz
	goto	u801
	goto	u800
u801:
	goto	l119
u800:
	line	172
	
l1289:	
;NewMobile.c: 170: {
;NewMobile.c: 172: stop();
	fcall	_stop
	line	173
	
l1291:	
;NewMobile.c: 173: MOTOR_FLAG = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_MOTOR_FLAG)
	line	174
	
l1293:	
;NewMobile.c: 174: LP_FLAG = 0;
	clrf	(_LP_FLAG)
	line	175
	
l1295:	
;NewMobile.c: 175: if(CALL_FLAG == 1)
	movf	(_CALL_FLAG),w
	xorlw	01h
	skipz
	goto	u811
	goto	u810
u811:
	goto	l119
u810:
	line	177
	
l1297:	
;NewMobile.c: 176: {
;NewMobile.c: 177: CALL_FLAG = 0;
	clrf	(_CALL_FLAG)
	line	178
;NewMobile.c: 178: (GIE = 1);
	bsf	(95/8),(95)&7	;volatile
	goto	l119
	line	179
	
l121:	
	goto	l119
	line	180
	
l120:	
	line	181
	
l119:	
	line	182
;NewMobile.c: 179: }
;NewMobile.c: 180: }
;NewMobile.c: 181: }
;NewMobile.c: 182: count = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	line	183
;NewMobile.c: 183: }
	goto	l1301
	line	184
	
l113:	
	line	186
	
l1299:	
;NewMobile.c: 184: else
;NewMobile.c: 185: {
;NewMobile.c: 186: count++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@count),f
	goto	l1301
	line	187
	
l122:	
	line	189
	
l1301:	
;NewMobile.c: 187: }
;NewMobile.c: 189: char seconds = 0;
	clrf	(main@seconds)
	line	190
;NewMobile.c: 190: while(seconds < 14 && MOTOR_FLAG == 1)
	goto	l1307
	
l124:	
	line	192
	
l1303:	
;NewMobile.c: 191: {
;NewMobile.c: 192: _delay(1000000);
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

	line	193
	
l1305:	
;NewMobile.c: 193: seconds++;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@seconds),f
	goto	l1307
	line	194
	
l123:	
	line	190
	
l1307:	
	movlw	(0Eh)
	subwf	(main@seconds),w
	skipnc
	goto	u821
	goto	u820
u821:
	goto	l1311
u820:
	
l1309:	
	movf	(_MOTOR_FLAG),w
	xorlw	01h
	skipnz
	goto	u831
	goto	u830
u831:
	goto	l1303
u830:
	goto	l1311
	
l126:	
	goto	l1311
	
l127:	
	goto	l1311
	line	195
	
l102:	
	line	197
	
l1311:	
;NewMobile.c: 194: }
;NewMobile.c: 195: }
;NewMobile.c: 197: if(MOTOR_FLAG == 0)
	movf	(_MOTOR_FLAG),f
	skipz
	goto	u841
	goto	u840
u841:
	goto	l1353
u840:
	line	199
	
l1313:	
;NewMobile.c: 198: {
;NewMobile.c: 199: if(CUT_FLAG == 1)
	movf	(_CUT_FLAG),w
	xorlw	01h
	skipz
	goto	u851
	goto	u850
u851:
	goto	l1353
u850:
	line	202
	
l1315:	
;NewMobile.c: 200: {
;NewMobile.c: 202: (GIE = 0);
	bcf	(95/8),(95)&7	;volatile
	line	204
	
l1317:	
;NewMobile.c: 204: stop();
	fcall	_stop
	line	205
	
l1319:	
;NewMobile.c: 205: LP_FLAG = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_LP_FLAG)
	line	206
	
l1321:	
;NewMobile.c: 206: ATCommand("ATH");
	movlw	low((STR_5-__stringbase))
	movwf	(?_ATCommand)
	movlw	80h
	movwf	(?_ATCommand+1)
	fcall	_ATCommand
	line	207
	
l1323:	
;NewMobile.c: 207: _delay(1000000);
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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

	line	208
	
l1325:	
;NewMobile.c: 208: CUT_FLAG = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_CUT_FLAG)
	line	210
	
l1327:	
;NewMobile.c: 210: USARTWritestring("ATD");
	movlw	((STR_6-__stringbase))&0ffh
	fcall	_USARTWritestring
	line	211
	
l1329:	
;NewMobile.c: 211: ATCommand(buffer);
	movlw	(_buffer&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_ATCommand)
	movlw	(0x0/2)
	movwf	(?_ATCommand+1)
	fcall	_ATCommand
	line	212
	
l1331:	
;NewMobile.c: 212: _delay(30000000);
	opt asmopt_off
movlw  153
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	50
movwf	((??_main+0)+0+1),f
	movlw	56
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

	line	213
	
l1333:	
;NewMobile.c: 213: ATCommand("ATH");
	movlw	low((STR_7-__stringbase))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_ATCommand)
	movlw	80h
	movwf	(?_ATCommand+1)
	fcall	_ATCommand
	line	214
	
l1335:	
;NewMobile.c: 214: _delay(1000000);
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u1317:
	decfsz	((??_main+0)+0),f
	goto	u1317
	decfsz	((??_main+0)+0+1),f
	goto	u1317
	decfsz	((??_main+0)+0+2),f
	goto	u1317
	nop2
opt asmopt_on

	line	215
	
l1337:	
;NewMobile.c: 215: CALL_FLAG = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_CALL_FLAG)
	line	218
	
l1339:	
;NewMobile.c: 218: EEADR = 0x01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	line	219
	
l1341:	
;NewMobile.c: 219: EEDATA = 0x00;
	clrf	(268)^0100h	;volatile
	line	220
	
l1343:	
;NewMobile.c: 220: EECON1bits.EEPGD = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(396)^0180h,7	;volatile
	line	221
	
l1345:	
;NewMobile.c: 221: EECON1bits.WREN = 1;
	bsf	(396)^0180h,2	;volatile
	line	222
	
l1347:	
;NewMobile.c: 222: EECON2 = 0x55;
	movlw	(055h)
	movwf	(397)^0180h	;volatile
	line	223
	
l1349:	
;NewMobile.c: 223: EECON2 = 0xAA;
	movlw	(0AAh)
	movwf	(397)^0180h	;volatile
	line	224
	
l1351:	
;NewMobile.c: 224: EECON1bits.WR = 1;
	bsf	(396)^0180h,1	;volatile
	line	225
;NewMobile.c: 225: while(EECON1bits.WR == 1)
	goto	l130
	
l131:	
	line	228
;NewMobile.c: 226: {
	
l130:	
	line	225
	btfsc	(396)^0180h,1	;volatile
	goto	u861
	goto	u860
u861:
	goto	l130
u860:
	
l132:	
	line	229
;NewMobile.c: 228: }
;NewMobile.c: 229: EECON1bits.WREN = 0;
	bcf	(396)^0180h,2	;volatile
	line	231
;NewMobile.c: 231: (GIE = 1);
	bsf	(95/8),(95)&7	;volatile
	goto	l1353
	line	232
	
l129:	
	goto	l1353
	line	233
	
l128:	
	line	235
	
l1353:	
;NewMobile.c: 232: }
;NewMobile.c: 233: }
;NewMobile.c: 235: if(WRONG_NUMBER == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_WRONG_NUMBER),w
	xorlw	01h
	skipz
	goto	u871
	goto	u870
u871:
	goto	l1365
u870:
	line	238
	
l1355:	
;NewMobile.c: 236: {
;NewMobile.c: 238: (GIE = 0);
	bcf	(95/8),(95)&7	;volatile
	line	239
	
l1357:	
;NewMobile.c: 239: ATCommand("ATH");
	movlw	low((STR_8-__stringbase))
	movwf	(?_ATCommand)
	movlw	80h
	movwf	(?_ATCommand+1)
	fcall	_ATCommand
	line	240
	
l1359:	
;NewMobile.c: 240: _delay(1000000);
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

	line	241
	
l1361:	
;NewMobile.c: 241: WRONG_NUMBER = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_WRONG_NUMBER)
	line	242
	
l1363:	
;NewMobile.c: 242: (GIE = 1);
	bsf	(95/8),(95)&7	;volatile
	goto	l1365
	line	243
	
l133:	
	line	245
	
l1365:	
;NewMobile.c: 243: }
;NewMobile.c: 245: if(RING_COUNT != 0)
	movf	(_RING_COUNT),w
	skipz
	goto	u880
	goto	l1217
u880:
	line	247
	
l1367:	
;NewMobile.c: 246: {
;NewMobile.c: 247: char temp = 0;
	clrf	(main@temp)
	line	248
	
l1369:	
;NewMobile.c: 248: temp = RING_COUNT;
	movf	(_RING_COUNT),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@temp)
	line	249
;NewMobile.c: 249: _delay(6000000);
	opt asmopt_off
movlw  31
movwf	((??_main+0)+0+2),f
movlw	113
movwf	((??_main+0)+0+1),f
	movlw	59
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

	line	250
;NewMobile.c: 250: if(RING_COUNT == temp)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_RING_COUNT),w
	xorwf	(main@temp),w
	skipz
	goto	u891
	goto	u890
u891:
	goto	l1217
u890:
	line	251
	
l1371:	
;NewMobile.c: 251: RING_COUNT = 0;
	clrf	(_RING_COUNT)
	goto	l1217
	
l135:	
	goto	l1217
	line	252
	
l134:	
	goto	l1217
	line	253
	
l136:	
	line	75
	goto	l1217
	
l137:	
	line	255
	
l138:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_USARTInit

;; *************** function _USARTInit *****************
;; Defined at:
;;		line 467 in file "C:\XC8 PROJECTS\New Mobile\NewMobile.c"
;; Parameters:    Size  Location     Type
;;  baud_rate       2    0[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text253,local,class=CODE,delta=2,merge=1
global __ptext253
__ptext253:	;psect for function _USARTInit
psect	text253
	file	"C:\XC8 PROJECTS\New Mobile\NewMobile.c"
	line	467
	global	__size_of_USARTInit
	__size_of_USARTInit	equ	__end_of_USARTInit-_USARTInit
	
_USARTInit:	
	opt	stack 3
; Regs used in _USARTInit: [wreg-fsr0h+status,2+status,0]
	line	469
	
l1373:	
;NewMobile.c: 469: switch(baud_rate)
	goto	l1385
	line	471
;NewMobile.c: 470: {
;NewMobile.c: 471: case 9600:
	
l194:	
	line	472
	
l1375:	
;NewMobile.c: 472: SPBRG=25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	473
;NewMobile.c: 473: break;
	goto	l195
	line	474
;NewMobile.c: 474: case 19200:
	
l196:	
	line	475
	
l1377:	
;NewMobile.c: 475: SPBRG=12;
	movlw	(0Ch)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	476
;NewMobile.c: 476: break;
	goto	l195
	line	477
;NewMobile.c: 477: case 28800:
	
l197:	
	line	478
	
l1379:	
;NewMobile.c: 478: SPBRG=8;
	movlw	(08h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	479
;NewMobile.c: 479: break;
	goto	l195
	line	480
;NewMobile.c: 480: case 33600:
	
l198:	
	line	481
	
l1381:	
;NewMobile.c: 481: SPBRG=6;
	movlw	(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	482
;NewMobile.c: 482: break;
	goto	l195
	line	483
	
l1383:	
;NewMobile.c: 483: }
	goto	l195
	line	469
	
l193:	
	
l1385:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 4 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 37 to 131
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte          104     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf (USARTInit@baud_rate+1),w
	opt asmopt_off
	xorlw	37^0	; case 37
	skipnz
	goto	l1681
	xorlw	75^37	; case 75
	skipnz
	goto	l1683
	xorlw	112^75	; case 112
	skipnz
	goto	l1685
	xorlw	131^112	; case 131
	skipnz
	goto	l1687
	goto	l195
	opt asmopt_on
	
l1681:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 128 to 128
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           10     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf (USARTInit@baud_rate),w
	opt asmopt_off
	xorlw	128^0	; case 128
	skipnz
	goto	l1375
	goto	l195
	opt asmopt_on
	
l1683:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte            7     6 (fixed)
; jumptable            260     6 (fixed)
; rangetable             5     6 (fixed)
; spacedrange            8     9 (fixed)
; locatedrange           1     3 (fixed)
;	Chosen strategy is simple_byte

	movf (USARTInit@baud_rate),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l1377
	goto	l195
	opt asmopt_on
	
l1685:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 128 to 128
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           10     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf (USARTInit@baud_rate),w
	opt asmopt_off
	xorlw	128^0	; case 128
	skipnz
	goto	l1379
	goto	l195
	opt asmopt_on
	
l1687:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 64 to 64
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           10     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf (USARTInit@baud_rate),w
	opt asmopt_off
	xorlw	64^0	; case 64
	skipnz
	goto	l1381
	goto	l195
	opt asmopt_on

	line	483
	
l195:	
	line	485
;NewMobile.c: 485: TXSTAbits.TX9=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(152)^080h,6	;volatile
	line	486
;NewMobile.c: 486: TXSTAbits.TXEN=1;
	bsf	(152)^080h,5	;volatile
	line	487
;NewMobile.c: 487: TXSTAbits.SYNC=0;
	bcf	(152)^080h,4	;volatile
	line	488
;NewMobile.c: 488: TXSTAbits.BRGH=1;
	bsf	(152)^080h,2	;volatile
	line	491
;NewMobile.c: 491: RCSTAbits.SPEN=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(24),7	;volatile
	line	492
;NewMobile.c: 492: RCSTAbits.RX9=0;
	bcf	(24),6	;volatile
	line	493
;NewMobile.c: 493: RCSTAbits.CREN=1;
	bsf	(24),4	;volatile
	line	494
;NewMobile.c: 494: RCSTAbits.ADDEN=0;
	bcf	(24),3	;volatile
	line	497
;NewMobile.c: 497: RCIE=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1125/8)^080h,(1125)&7	;volatile
	line	498
;NewMobile.c: 498: PEIE=1;
	bsf	(94/8),(94)&7	;volatile
	line	501
;NewMobile.c: 501: (GIE = 1);
	bsf	(95/8),(95)&7	;volatile
	line	502
	
l199:	
	return
	opt stack 0
GLOBAL	__end_of_USARTInit
	__end_of_USARTInit:
	signat	_USARTInit,4216
	global	_ATCommand

;; *************** function _ATCommand *****************
;; Defined at:
;;		line 447 in file "C:\XC8 PROJECTS\New Mobile\NewMobile.c"
;; Parameters:    Size  Location     Type
;;  str             2    1[BANK0 ] PTR const unsigned char 
;;		 -> STR_8(4), STR_7(4), STR_5(4), STR_4(4), 
;;		 -> buffer(15), STR_2(4), STR_1(10), 
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
;;      Params:         0       2       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_USARTWriteChar
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text254,local,class=CODE,delta=2,merge=1
global __ptext254
__ptext254:	;psect for function _ATCommand
psect	text254
	file	"C:\XC8 PROJECTS\New Mobile\NewMobile.c"
	line	447
	global	__size_of_ATCommand
	__size_of_ATCommand	equ	__end_of_ATCommand-_ATCommand
	
_ATCommand:	
	opt	stack 2
; Regs used in _ATCommand: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	448
	
l1403:	
;NewMobile.c: 448: while(*str!='\0')
	goto	l1409
	
l182:	
	line	450
	
l1405:	
;NewMobile.c: 449: {
;NewMobile.c: 450: USARTWriteChar(*str);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ATCommand@str+1),w
	movwf	btemp+1
	movf	(ATCommand@str),w
	movwf	fsr0
	fcall	stringtab
	fcall	_USARTWriteChar
	line	451
	
l1407:	
;NewMobile.c: 451: str++;
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(ATCommand@str),f
	skipnc
	incf	(ATCommand@str+1),f
	goto	l1409
	line	452
	
l181:	
	line	448
	
l1409:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ATCommand@str+1),w
	movwf	btemp+1
	movf	(ATCommand@str),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u901
	goto	u900
u901:
	goto	l1405
u900:
	goto	l1411
	
l183:	
	line	453
	
l1411:	
;NewMobile.c: 452: }
;NewMobile.c: 453: USARTWriteChar(0x0D);
	movlw	(0Dh)
	fcall	_USARTWriteChar
	line	454
	
l184:	
	return
	opt stack 0
GLOBAL	__end_of_ATCommand
	__end_of_ATCommand:
	signat	_ATCommand,4216
	global	_phase_check

;; *************** function _phase_check *****************
;; Defined at:
;;		line 530 in file "C:\XC8 PROJECTS\New Mobile\NewMobile.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
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
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text255,local,class=CODE,delta=2,merge=1
global __ptext255
__ptext255:	;psect for function _phase_check
psect	text255
	file	"C:\XC8 PROJECTS\New Mobile\NewMobile.c"
	line	530
	global	__size_of_phase_check
	__size_of_phase_check	equ	__end_of_phase_check-_phase_check
	
_phase_check:	
	opt	stack 3
; Regs used in _phase_check: [wreg]
	line	532
	
l1413:	
;NewMobile.c: 532: if( RC0 == 1 && RC1 == 1 && RC2 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(56/8),(56)&7	;volatile
	goto	u911
	goto	u910
u911:
	goto	l1425
u910:
	
l1415:	
	btfss	(57/8),(57)&7	;volatile
	goto	u921
	goto	u920
u921:
	goto	l1425
u920:
	
l1417:	
	btfss	(58/8),(58)&7	;volatile
	goto	u931
	goto	u930
u931:
	goto	l1425
u930:
	line	535
	
l1419:	
;NewMobile.c: 533: {
;NewMobile.c: 535: return 1;
	movlw	(01h)
	goto	l209
	
l1421:	
	goto	l209
	line	536
	
l1423:	
;NewMobile.c: 536: }
	goto	l209
	line	537
	
l208:	
	line	540
	
l1425:	
;NewMobile.c: 537: else
;NewMobile.c: 538: {
;NewMobile.c: 540: return 0;
	movlw	(0)
	goto	l209
	
l1427:	
	goto	l209
	line	541
	
l210:	
	line	542
	
l209:	
	return
	opt stack 0
GLOBAL	__end_of_phase_check
	__end_of_phase_check:
	signat	_phase_check,89
	global	_start

;; *************** function _start *****************
;; Defined at:
;;		line 506 in file "C:\XC8 PROJECTS\New Mobile\NewMobile.c"
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
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       3       0
;;      Totals:         0       3       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text256,local,class=CODE,delta=2,merge=1
global __ptext256
__ptext256:	;psect for function _start
psect	text256
	file	"C:\XC8 PROJECTS\New Mobile\NewMobile.c"
	line	506
	global	__size_of_start
	__size_of_start	equ	__end_of_start-_start
	
_start:	
	opt	stack 3
; Regs used in _start: [wreg]
	line	508
	
l1429:	
;NewMobile.c: 508: _delay(1000000);
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_start+0)+0+2),f
movlw	19
movwf	((??_start+0)+0+1),f
	movlw	177
movwf	((??_start+0)+0),f
u1347:
	decfsz	((??_start+0)+0),f
	goto	u1347
	decfsz	((??_start+0)+0+1),f
	goto	u1347
	decfsz	((??_start+0)+0+2),f
	goto	u1347
	nop2
opt asmopt_on

	line	509
	
l1431:	
;NewMobile.c: 509: RC3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7	;volatile
	line	510
;NewMobile.c: 510: _delay(8000000);
	opt asmopt_off
movlw  41
movwf	((??_start+0)+0+2),f
movlw	150
movwf	((??_start+0)+0+1),f
	movlw	166
movwf	((??_start+0)+0),f
u1357:
	decfsz	((??_start+0)+0),f
	goto	u1357
	decfsz	((??_start+0)+0+1),f
	goto	u1357
	decfsz	((??_start+0)+0+2),f
	goto	u1357
opt asmopt_on

	line	511
	
l1433:	
;NewMobile.c: 511: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7	;volatile
	line	512
	
l1435:	
;NewMobile.c: 512: RB7 = 1;
	bsf	(55/8),(55)&7	;volatile
	goto	l202
	line	513
	
l1437:	
	line	514
;NewMobile.c: 513: return;
	
l202:	
	return
	opt stack 0
GLOBAL	__end_of_start
	__end_of_start:
	signat	_start,88
	global	_stop

;; *************** function _stop *****************
;; Defined at:
;;		line 518 in file "C:\XC8 PROJECTS\New Mobile\NewMobile.c"
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
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       3       0
;;      Totals:         0       3       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text257,local,class=CODE,delta=2,merge=1
global __ptext257
__ptext257:	;psect for function _stop
psect	text257
	file	"C:\XC8 PROJECTS\New Mobile\NewMobile.c"
	line	518
	global	__size_of_stop
	__size_of_stop	equ	__end_of_stop-_stop
	
_stop:	
	opt	stack 3
; Regs used in _stop: [wreg]
	line	520
	
l1439:	
;NewMobile.c: 520: _delay(1000000);
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_stop+0)+0+2),f
movlw	19
movwf	((??_stop+0)+0+1),f
	movlw	177
movwf	((??_stop+0)+0),f
u1367:
	decfsz	((??_stop+0)+0),f
	goto	u1367
	decfsz	((??_stop+0)+0+1),f
	goto	u1367
	decfsz	((??_stop+0)+0+2),f
	goto	u1367
	nop2
opt asmopt_on

	line	521
	
l1441:	
;NewMobile.c: 521: RC4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(60/8),(60)&7	;volatile
	line	522
;NewMobile.c: 522: _delay(8000000);
	opt asmopt_off
movlw  41
movwf	((??_stop+0)+0+2),f
movlw	150
movwf	((??_stop+0)+0+1),f
	movlw	166
movwf	((??_stop+0)+0),f
u1377:
	decfsz	((??_stop+0)+0),f
	goto	u1377
	decfsz	((??_stop+0)+0+1),f
	goto	u1377
	decfsz	((??_stop+0)+0+2),f
	goto	u1377
opt asmopt_on

	line	523
	
l1443:	
;NewMobile.c: 523: RC4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7	;volatile
	line	524
	
l1445:	
;NewMobile.c: 524: RB7 = 0;
	bcf	(55/8),(55)&7	;volatile
	goto	l205
	line	525
	
l1447:	
	line	526
;NewMobile.c: 525: return;
	
l205:	
	return
	opt stack 0
GLOBAL	__end_of_stop
	__end_of_stop:
	signat	_stop,88
	global	_USARTWritestring

;; *************** function _USARTWritestring *****************
;; Defined at:
;;		line 458 in file "C:\XC8 PROJECTS\New Mobile\NewMobile.c"
;; Parameters:    Size  Location     Type
;;  str             1    wreg     PTR const unsigned char 
;;		 -> STR_6(4), STR_3(4), 
;; Auto vars:     Size  Location     Type
;;  str             1    2[BANK0 ] PTR const unsigned char 
;;		 -> STR_6(4), STR_3(4), 
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
;;		_USARTWriteChar
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text258,local,class=CODE,delta=2,merge=1
global __ptext258
__ptext258:	;psect for function _USARTWritestring
psect	text258
	file	"C:\XC8 PROJECTS\New Mobile\NewMobile.c"
	line	458
	global	__size_of_USARTWritestring
	__size_of_USARTWritestring	equ	__end_of_USARTWritestring-_USARTWritestring
	
_USARTWritestring:	
	opt	stack 2
; Regs used in _USARTWritestring: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;USARTWritestring@str stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(USARTWritestring@str)
	line	459
	
l1449:	
;NewMobile.c: 459: while(*str!='\0')
	goto	l1455
	
l188:	
	line	461
	
l1451:	
;NewMobile.c: 460: {
;NewMobile.c: 461: USARTWriteChar(*str);
	movf	(USARTWritestring@str),w
	movwf	fsr0
	fcall	stringdir
	fcall	_USARTWriteChar
	line	462
	
l1453:	
;NewMobile.c: 462: str++;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_USARTWritestring+0)+0
	movf	(??_USARTWritestring+0)+0,w
	addwf	(USARTWritestring@str),f
	goto	l1455
	line	463
	
l187:	
	line	459
	
l1455:	
	movf	(USARTWritestring@str),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u941
	goto	u940
u941:
	goto	l1451
u940:
	goto	l190
	
l189:	
	line	464
	
l190:	
	return
	opt stack 0
GLOBAL	__end_of_USARTWritestring
	__end_of_USARTWritestring:
	signat	_USARTWritestring,4216
	global	_USARTWriteChar

;; *************** function _USARTWriteChar *****************
;; Defined at:
;;		line 440 in file "C:\XC8 PROJECTS\New Mobile\NewMobile.c"
;; Parameters:    Size  Location     Type
;;  ch              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch              1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       1       0
;;      Temps:          0       0       0
;;      Totals:         0       1       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ATCommand
;;		_USARTWritestring
;; This function uses a non-reentrant model
;;
psect	text259,local,class=CODE,delta=2,merge=1
global __ptext259
__ptext259:	;psect for function _USARTWriteChar
psect	text259
	file	"C:\XC8 PROJECTS\New Mobile\NewMobile.c"
	line	440
	global	__size_of_USARTWriteChar
	__size_of_USARTWriteChar	equ	__end_of_USARTWriteChar-_USARTWriteChar
	
_USARTWriteChar:	
	opt	stack 2
; Regs used in _USARTWriteChar: [wreg]
;USARTWriteChar@ch stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(USARTWriteChar@ch)
	line	441
	
l1471:	
;NewMobile.c: 441: while(!PIR1bits.TXIF);
	goto	l175
	
l176:	
	
l175:	
	btfss	(12),4	;volatile
	goto	u971
	goto	u970
u971:
	goto	l175
u970:
	goto	l1473
	
l177:	
	line	442
	
l1473:	
;NewMobile.c: 442: TXREG=ch;
	movf	(USARTWriteChar@ch),w
	movwf	(25)	;volatile
	line	443
	
l178:	
	return
	opt stack 0
GLOBAL	__end_of_USARTWriteChar
	__end_of_USARTWriteChar:
	signat	_USARTWriteChar,4216
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 258 in file "C:\XC8 PROJECTS\New Mobile\NewMobile.c"
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
;;      Temps:          4       0       0
;;      Totals:         4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_USARTHandleRxInt
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text260,local,class=CODE,delta=2,merge=1
global __ptext260
__ptext260:	;psect for function _ISR
psect	text260
	file	"C:\XC8 PROJECTS\New Mobile\NewMobile.c"
	line	258
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 2
; Regs used in _ISR: [wreg-fsr0h+status,2+status,0+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+0)
	movf	fsr0,w
	movwf	(??_ISR+1)
	movf	pclath,w
	movwf	(??_ISR+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+3)
	ljmp	_ISR
psect	text260
	line	259
	
i1l1593:	
;NewMobile.c: 259: if (RCIE && RCIF) {
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1125/8)^080h,(1125)&7	;volatile
	goto	u119_21
	goto	u119_20
u119_21:
	goto	i1l142
u119_20:
	
i1l1595:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7	;volatile
	goto	u120_21
	goto	u120_20
u120_21:
	goto	i1l142
u120_20:
	line	260
	
i1l1597:	
;NewMobile.c: 260: USARTHandleRxInt();
	fcall	_USARTHandleRxInt
	goto	i1l142
	line	261
	
i1l1599:	
;NewMobile.c: 261: return;
	goto	i1l142
	line	262
	
i1l141:	
	line	263
	
i1l142:	
	movf	(??_ISR+3),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(??_ISR+2),w
	movwf	pclath
	movf	(??_ISR+1),w
	movwf	fsr0
	swapf	(??_ISR+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,88
	global	_USARTHandleRxInt

;; *************** function _USARTHandleRxInt *****************
;; Defined at:
;;		line 266 in file "C:\XC8 PROJECTS\New Mobile\NewMobile.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data            1    7[COMMON] unsigned char 
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
;;      Locals:         1       0       0
;;      Temps:          1       0       0
;;      Totals:         2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_strcmp
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text261,local,class=CODE,delta=2,merge=1
global __ptext261
__ptext261:	;psect for function _USARTHandleRxInt
psect	text261
	file	"C:\XC8 PROJECTS\New Mobile\NewMobile.c"
	line	266
	global	__size_of_USARTHandleRxInt
	__size_of_USARTHandleRxInt	equ	__end_of_USARTHandleRxInt-_USARTHandleRxInt
	
_USARTHandleRxInt:	
	opt	stack 2
; Regs used in _USARTHandleRxInt: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	267
	
i1l1475:	
;NewMobile.c: 267: char data = RCREG;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(26),w	;volatile
	movwf	(??_USARTHandleRxInt+0)+0
	movf	(??_USARTHandleRxInt+0)+0,w
	movwf	(USARTHandleRxInt@data)
	line	268
	
i1l1477:	
;NewMobile.c: 268: RB7 = 1;
	bsf	(55/8),(55)&7	;volatile
	line	270
	
i1l1479:	
;NewMobile.c: 270: if(CLIP_FLAG == 0)
	movf	(_CLIP_FLAG),f
	skipz
	goto	u98_21
	goto	u98_20
u98_21:
	goto	i1l1519
u98_20:
	line	273
	
i1l1481:	
;NewMobile.c: 271: {
;NewMobile.c: 273: if(PLUSE_FLAG == 0)
	movf	(_PLUSE_FLAG),f
	skipz
	goto	u99_21
	goto	u99_20
u99_21:
	goto	i1l1497
u99_20:
	line	275
	
i1l1483:	
;NewMobile.c: 274: {
;NewMobile.c: 275: if(data == '+')
	movf	(USARTHandleRxInt@data),w
	xorlw	02Bh
	skipz
	goto	u100_21
	goto	u100_20
u100_21:
	goto	i1l148
u100_20:
	line	277
	
i1l1485:	
;NewMobile.c: 276: {
;NewMobile.c: 277: PLUSE_FLAG = 1;
	clrf	(_PLUSE_FLAG)
	incf	(_PLUSE_FLAG),f
	line	278
	
i1l1487:	
;NewMobile.c: 278: buffer[index] = data;
	movf	(USARTHandleRxInt@data),w
	movwf	(??_USARTHandleRxInt+0)+0
	movf	(_index),w
	addlw	_buffer&0ffh
	movwf	fsr0
	movf	(??_USARTHandleRxInt+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	279
	
i1l1489:	
;NewMobile.c: 279: index++;
	movlw	(01h)
	movwf	(??_USARTHandleRxInt+0)+0
	movf	(??_USARTHandleRxInt+0)+0,w
	addwf	(_index),f
	line	280
	
i1l1491:	
;NewMobile.c: 280: RC3 = 1;
	bsf	(59/8),(59)&7	;volatile
	goto	i1l148
	line	281
	
i1l1493:	
;NewMobile.c: 281: return;
	goto	i1l148
	line	282
	
i1l1495:	
;NewMobile.c: 282: }
	goto	i1l1497
	line	283
	
i1l147:	
	line	285
;NewMobile.c: 283: else
;NewMobile.c: 284: {
;NewMobile.c: 285: return;
	goto	i1l148
	line	286
	
i1l149:	
	goto	i1l1497
	line	287
	
i1l146:	
	line	290
	
i1l1497:	
;NewMobile.c: 286: }
;NewMobile.c: 287: }
;NewMobile.c: 290: if(PLUSE_FLAG == 1)
	movf	(_PLUSE_FLAG),w
	xorlw	01h
	skipz
	goto	u101_21
	goto	u101_20
u101_21:
	goto	i1l1519
u101_20:
	line	293
	
i1l1499:	
;NewMobile.c: 291: {
;NewMobile.c: 293: if(index == 4)
	movf	(_index),w
	xorlw	04h
	skipz
	goto	u102_21
	goto	u102_20
u102_21:
	goto	i1l1513
u102_20:
	line	296
	
i1l1501:	
;NewMobile.c: 294: {
;NewMobile.c: 296: buffer[index] = data;
	movf	(USARTHandleRxInt@data),w
	movwf	(??_USARTHandleRxInt+0)+0
	movf	(_index),w
	addlw	_buffer&0ffh
	movwf	fsr0
	movf	(??_USARTHandleRxInt+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	297
	
i1l1503:	
;NewMobile.c: 297: index++;
	movlw	(01h)
	movwf	(??_USARTHandleRxInt+0)+0
	movf	(??_USARTHandleRxInt+0)+0,w
	addwf	(_index),f
	line	298
	
i1l1505:	
;NewMobile.c: 298: buffer[index] = '\0';
	movf	(_index),w
	addlw	_buffer&0ffh
	movwf	fsr0
	clrf	indf
	line	300
	
i1l1507:	
;NewMobile.c: 300: if(strcmp(buffer,"+CLIP") == 0)
	movlw	((STR_9-__stringbase))&0ffh
	movwf	(??_USARTHandleRxInt+0)+0
	movf	(??_USARTHandleRxInt+0)+0,w
	movwf	(?_strcmp)
	movlw	(_buffer)&0ffh
	fcall	_strcmp
	movf	((1+(?_strcmp))),w
	iorwf	((0+(?_strcmp))),w
	skipz
	goto	u103_21
	goto	u103_20
u103_21:
	goto	i1l152
u103_20:
	line	303
	
i1l1509:	
;NewMobile.c: 301: {
;NewMobile.c: 303: CLIP_FLAG = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_CLIP_FLAG)
	incf	(_CLIP_FLAG),f
	line	304
;NewMobile.c: 304: RC4 = 1;
	bsf	(60/8),(60)&7	;volatile
	line	306
;NewMobile.c: 306: PLUSE_FLAG = 0;
	clrf	(_PLUSE_FLAG)
	line	307
;NewMobile.c: 307: index = 0;
	clrf	(_index)
	line	308
;NewMobile.c: 308: return;
	goto	i1l148
	line	309
	
i1l1511:	
;NewMobile.c: 309: }
	goto	i1l1519
	line	310
	
i1l152:	
	line	313
;NewMobile.c: 310: else
;NewMobile.c: 311: {
;NewMobile.c: 313: PLUSE_FLAG = 0;
	clrf	(_PLUSE_FLAG)
	line	314
;NewMobile.c: 314: index = 0;
	clrf	(_index)
	line	315
;NewMobile.c: 315: return;
	goto	i1l148
	line	316
	
i1l153:	
	line	317
;NewMobile.c: 316: }
;NewMobile.c: 317: }
	goto	i1l1519
	line	318
	
i1l151:	
	line	321
	
i1l1513:	
;NewMobile.c: 318: else
;NewMobile.c: 319: {
;NewMobile.c: 321: buffer[index] = data;
	movf	(USARTHandleRxInt@data),w
	movwf	(??_USARTHandleRxInt+0)+0
	movf	(_index),w
	addlw	_buffer&0ffh
	movwf	fsr0
	movf	(??_USARTHandleRxInt+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	322
	
i1l1515:	
;NewMobile.c: 322: index++;
	movlw	(01h)
	movwf	(??_USARTHandleRxInt+0)+0
	movf	(??_USARTHandleRxInt+0)+0,w
	addwf	(_index),f
	goto	i1l148
	line	323
	
i1l1517:	
;NewMobile.c: 323: return;
	goto	i1l148
	line	324
	
i1l154:	
	goto	i1l1519
	line	325
	
i1l150:	
	goto	i1l1519
	line	326
	
i1l145:	
	line	328
	
i1l1519:	
;NewMobile.c: 324: }
;NewMobile.c: 325: }
;NewMobile.c: 326: }
;NewMobile.c: 328: if(CLIP_FLAG == 1 && NUMBER_FLAG == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_CLIP_FLAG),w
	xorlw	01h
	skipz
	goto	u104_21
	goto	u104_20
u104_21:
	goto	i1l1559
u104_20:
	
i1l1521:	
	movf	(_NUMBER_FLAG),f
	skipz
	goto	u105_21
	goto	u105_20
u105_21:
	goto	i1l1559
u105_20:
	line	333
	
i1l1523:	
;NewMobile.c: 329: {
;NewMobile.c: 333: if(PLUSE_FLAG == 0)
	movf	(_PLUSE_FLAG),f
	skipz
	goto	u106_21
	goto	u106_20
u106_21:
	goto	i1l1537
u106_20:
	line	335
	
i1l1525:	
;NewMobile.c: 334: {
;NewMobile.c: 335: if(data == '+' || data == '0')
	movf	(USARTHandleRxInt@data),w
	xorlw	02Bh
	skipnz
	goto	u107_21
	goto	u107_20
u107_21:
	goto	i1l159
u107_20:
	
i1l1527:	
	movf	(USARTHandleRxInt@data),w
	xorlw	030h
	skipz
	goto	u108_21
	goto	u108_20
u108_21:
	goto	i1l148
u108_20:
	
i1l159:	
	line	337
;NewMobile.c: 336: {
;NewMobile.c: 337: PLUSE_FLAG = 1;
	clrf	(_PLUSE_FLAG)
	incf	(_PLUSE_FLAG),f
	line	338
	
i1l1529:	
;NewMobile.c: 338: buffer[index] = data;
	movf	(USARTHandleRxInt@data),w
	movwf	(??_USARTHandleRxInt+0)+0
	movf	(_index),w
	addlw	_buffer&0ffh
	movwf	fsr0
	movf	(??_USARTHandleRxInt+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	339
	
i1l1531:	
;NewMobile.c: 339: index++;
	movlw	(01h)
	movwf	(??_USARTHandleRxInt+0)+0
	movf	(??_USARTHandleRxInt+0)+0,w
	addwf	(_index),f
	goto	i1l148
	line	340
	
i1l1533:	
;NewMobile.c: 340: return;
	goto	i1l148
	line	341
	
i1l1535:	
;NewMobile.c: 341: }
	goto	i1l1537
	line	342
	
i1l157:	
	line	344
;NewMobile.c: 342: else
;NewMobile.c: 343: {
;NewMobile.c: 344: return;
	goto	i1l148
	line	345
	
i1l160:	
	goto	i1l1537
	line	346
	
i1l156:	
	line	347
	
i1l1537:	
;NewMobile.c: 345: }
;NewMobile.c: 346: }
;NewMobile.c: 347: if(PLUSE_FLAG == 1)
	movf	(_PLUSE_FLAG),w
	xorlw	01h
	skipz
	goto	u109_21
	goto	u109_20
u109_21:
	goto	i1l1559
u109_20:
	line	351
	
i1l1539:	
;NewMobile.c: 348: {
;NewMobile.c: 351: if(data == '"')
	movf	(USARTHandleRxInt@data),w
	xorlw	022h
	skipz
	goto	u110_21
	goto	u110_20
u110_21:
	goto	i1l1553
u110_20:
	line	353
	
i1l1541:	
;NewMobile.c: 352: {
;NewMobile.c: 353: buffer[index] = '\0';
	movf	(_index),w
	addlw	_buffer&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	355
	
i1l1543:	
;NewMobile.c: 355: PLUSE_FLAG = 0;
	clrf	(_PLUSE_FLAG)
	line	356
	
i1l1545:	
;NewMobile.c: 356: index = 0;
	clrf	(_index)
	line	358
	
i1l1547:	
;NewMobile.c: 358: NUMBER_FLAG = 1;
	clrf	(_NUMBER_FLAG)
	incf	(_NUMBER_FLAG),f
	goto	i1l148
	line	359
	
i1l1549:	
;NewMobile.c: 359: return;
	goto	i1l148
	line	360
	
i1l1551:	
;NewMobile.c: 360: }
	goto	i1l1559
	line	361
	
i1l162:	
	line	364
	
i1l1553:	
;NewMobile.c: 361: else
;NewMobile.c: 362: {
;NewMobile.c: 364: buffer[index] = data;
	movf	(USARTHandleRxInt@data),w
	movwf	(??_USARTHandleRxInt+0)+0
	movf	(_index),w
	addlw	_buffer&0ffh
	movwf	fsr0
	movf	(??_USARTHandleRxInt+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	365
	
i1l1555:	
;NewMobile.c: 365: index++;
	movlw	(01h)
	movwf	(??_USARTHandleRxInt+0)+0
	movf	(??_USARTHandleRxInt+0)+0,w
	addwf	(_index),f
	goto	i1l148
	line	366
	
i1l1557:	
;NewMobile.c: 366: return;
	goto	i1l148
	line	367
	
i1l163:	
	goto	i1l1559
	line	368
	
i1l161:	
	goto	i1l1559
	line	369
	
i1l155:	
	line	372
	
i1l1559:	
;NewMobile.c: 367: }
;NewMobile.c: 368: }
;NewMobile.c: 369: }
;NewMobile.c: 372: if(CLIP_FLAG == 1 && NUMBER_FLAG == 1)
	movf	(_CLIP_FLAG),w
	xorlw	01h
	skipz
	goto	u111_21
	goto	u111_20
u111_21:
	goto	i1l148
u111_20:
	
i1l1561:	
	movf	(_NUMBER_FLAG),w
	xorlw	01h
	skipz
	goto	u112_21
	goto	u112_20
u112_21:
	goto	i1l148
u112_20:
	line	377
	
i1l1563:	
;NewMobile.c: 373: {
;NewMobile.c: 377: if(data == 'A')
	movf	(USARTHandleRxInt@data),w
	xorlw	041h
	skipz
	goto	u113_21
	goto	u113_20
u113_21:
	goto	i1l1589
u113_20:
	line	380
	
i1l1565:	
;NewMobile.c: 378: {
;NewMobile.c: 380: if(MOTOR_FLAG == 0)
	movf	(_MOTOR_FLAG),f
	skipz
	goto	u114_21
	goto	u114_20
u114_21:
	goto	i1l1577
u114_20:
	line	382
	
i1l1567:	
;NewMobile.c: 381: {
;NewMobile.c: 382: if(RING_COUNT < 3)
	movlw	(03h)
	subwf	(_RING_COUNT),w
	skipnc
	goto	u115_21
	goto	u115_20
u115_21:
	goto	i1l167
u115_20:
	line	384
	
i1l1569:	
;NewMobile.c: 383: {
;NewMobile.c: 384: CUT_FLAG = 1;
	clrf	(_CUT_FLAG)
	incf	(_CUT_FLAG),f
	line	385
;NewMobile.c: 385: CALL_FLAG = 1;
	clrf	(_CALL_FLAG)
	incf	(_CALL_FLAG),f
	line	386
;NewMobile.c: 386: MOTOR_FLAG = 1;
	clrf	(_MOTOR_FLAG)
	incf	(_MOTOR_FLAG),f
	line	387
;NewMobile.c: 387: CLIP_FLAG = 0;
	clrf	(_CLIP_FLAG)
	line	388
;NewMobile.c: 388: NUMBER_FLAG = 0;
	clrf	(_NUMBER_FLAG)
	line	389
;NewMobile.c: 389: RING_COUNT = 0;
	clrf	(_RING_COUNT)
	line	390
;NewMobile.c: 390: return;
	goto	i1l148
	line	391
	
i1l1571:	
;NewMobile.c: 391: }
	goto	i1l1577
	line	392
	
i1l167:	
	line	395
;NewMobile.c: 392: else
;NewMobile.c: 393: {
;NewMobile.c: 395: CLIP_FLAG = 0;
	clrf	(_CLIP_FLAG)
	line	396
;NewMobile.c: 396: NUMBER_FLAG = 0;
	clrf	(_NUMBER_FLAG)
	line	397
	
i1l1573:	
;NewMobile.c: 397: RING_COUNT++;
	movlw	(01h)
	movwf	(??_USARTHandleRxInt+0)+0
	movf	(??_USARTHandleRxInt+0)+0,w
	addwf	(_RING_COUNT),f
	goto	i1l148
	line	398
	
i1l1575:	
;NewMobile.c: 398: return;
	goto	i1l148
	line	399
	
i1l168:	
	goto	i1l1577
	line	400
	
i1l166:	
	line	402
	
i1l1577:	
;NewMobile.c: 399: }
;NewMobile.c: 400: }
;NewMobile.c: 402: if(MOTOR_FLAG == 1)
	movf	(_MOTOR_FLAG),w
	xorlw	01h
	skipz
	goto	u116_21
	goto	u116_20
u116_21:
	goto	i1l1589
u116_20:
	line	404
	
i1l1579:	
;NewMobile.c: 403: {
;NewMobile.c: 404: if(RING_COUNT < 6)
	movlw	(06h)
	subwf	(_RING_COUNT),w
	skipnc
	goto	u117_21
	goto	u117_20
u117_21:
	goto	i1l170
u117_20:
	line	406
	
i1l1581:	
;NewMobile.c: 405: {
;NewMobile.c: 406: CUT_FLAG = 1;
	clrf	(_CUT_FLAG)
	incf	(_CUT_FLAG),f
	line	407
;NewMobile.c: 407: CALL_FLAG = 1;
	clrf	(_CALL_FLAG)
	incf	(_CALL_FLAG),f
	line	408
;NewMobile.c: 408: MOTOR_FLAG = 0;
	clrf	(_MOTOR_FLAG)
	line	409
;NewMobile.c: 409: CLIP_FLAG = 0;
	clrf	(_CLIP_FLAG)
	line	410
;NewMobile.c: 410: NUMBER_FLAG = 0;
	clrf	(_NUMBER_FLAG)
	line	411
;NewMobile.c: 411: RING_COUNT = 0;
	clrf	(_RING_COUNT)
	line	412
;NewMobile.c: 412: return;
	goto	i1l148
	line	413
	
i1l1583:	
;NewMobile.c: 413: }
	goto	i1l1589
	line	414
	
i1l170:	
	line	417
;NewMobile.c: 414: else
;NewMobile.c: 415: {
;NewMobile.c: 417: CLIP_FLAG = 0;
	clrf	(_CLIP_FLAG)
	line	418
;NewMobile.c: 418: NUMBER_FLAG = 0;
	clrf	(_NUMBER_FLAG)
	line	419
	
i1l1585:	
;NewMobile.c: 419: RING_COUNT++;
	movlw	(01h)
	movwf	(??_USARTHandleRxInt+0)+0
	movf	(??_USARTHandleRxInt+0)+0,w
	addwf	(_RING_COUNT),f
	goto	i1l148
	line	420
	
i1l1587:	
;NewMobile.c: 420: return;
	goto	i1l148
	line	421
	
i1l171:	
	goto	i1l1589
	line	422
	
i1l169:	
	goto	i1l1589
	line	423
	
i1l165:	
	line	424
	
i1l1589:	
;NewMobile.c: 421: }
;NewMobile.c: 422: }
;NewMobile.c: 423: }
;NewMobile.c: 424: if(data == 0x0A)
	movf	(USARTHandleRxInt@data),w
	xorlw	0Ah
	skipz
	goto	u118_21
	goto	u118_20
u118_21:
	goto	i1l148
u118_20:
	line	428
	
i1l1591:	
;NewMobile.c: 425: {
;NewMobile.c: 428: WRONG_NUMBER = 1;
	clrf	(_WRONG_NUMBER)
	incf	(_WRONG_NUMBER),f
	line	429
;NewMobile.c: 429: CLIP_FLAG = 0;
	clrf	(_CLIP_FLAG)
	line	430
;NewMobile.c: 430: NUMBER_FLAG = 0;
	clrf	(_NUMBER_FLAG)
	line	431
;NewMobile.c: 431: return;
	goto	i1l148
	line	432
	
i1l172:	
	line	434
;NewMobile.c: 432: }
;NewMobile.c: 434: return;
	goto	i1l148
	line	435
	
i1l164:	
	line	436
	
i1l148:	
	return
	opt stack 0
GLOBAL	__end_of_USARTHandleRxInt
	__end_of_USARTHandleRxInt:
	signat	_USARTHandleRxInt,88
	global	_strcmp

;; *************** function _strcmp *****************
;; Defined at:
;;		line 34 in file "C:\Program Files (x86)\Microchip\xc8\v1.12\sources\strcmp.c"
;; Parameters:    Size  Location     Type
;;  s1              1    wreg     PTR const unsigned char 
;;		 -> buffer(15), 
;;  s2              1    0[COMMON] PTR const unsigned char 
;;		 -> STR_9(6), 
;; Auto vars:     Size  Location     Type
;;  s1              1    5[COMMON] PTR const unsigned char 
;;		 -> buffer(15), 
;;  r               1    4[COMMON] char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         2       0       0
;;      Locals:         2       0       0
;;      Temps:          2       0       0
;;      Totals:         6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USARTHandleRxInt
;; This function uses a non-reentrant model
;;
psect	text262,local,class=CODE,delta=2,merge=1
global __ptext262
__ptext262:	;psect for function _strcmp
psect	text262
	file	"C:\Program Files (x86)\Microchip\xc8\v1.12\sources\strcmp.c"
	line	34
	global	__size_of_strcmp
	__size_of_strcmp	equ	__end_of_strcmp-_strcmp
	
_strcmp:	
	opt	stack 2
; Regs used in _strcmp: [wreg-fsr0h+status,2+status,0+pclath]
;strcmp@s1 stored from wreg
	movwf	(strcmp@s1)
	line	37
	
i1l1457:	
	goto	i1l1463
	
i1l294:	
	line	38
	
i1l1459:	
	movlw	(01h)
	movwf	(??_strcmp+0)+0
	movf	(??_strcmp+0)+0,w
	addwf	(strcmp@s1),f
	line	39
	
i1l1461:	
	movlw	(01h)
	movwf	(??_strcmp+0)+0
	movf	(??_strcmp+0)+0,w
	addwf	(strcmp@s2),f
	goto	i1l1463
	line	40
	
i1l293:	
	line	37
	
i1l1463:	
	movf	(strcmp@s1),w
	movwf	fsr
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_strcmp+0)+0
	movf	(strcmp@s2),w
	movwf	fsr0
	fcall	stringdir
	xorlw	0ffh
	addlw	1
	addwf	(??_strcmp+0)+0,w
	movwf	(??_strcmp+1)+0
	movf	(??_strcmp+1)+0,w
	movwf	(strcmp@r)
	movf	((strcmp@r)),f
	skipz
	goto	u95_21
	goto	u95_20
u95_21:
	goto	i1l1467
u95_20:
	
i1l1465:	
	movf	(strcmp@s1),w
	movwf	fsr0
	movf	indf,f
	skipz
	goto	u96_21
	goto	u96_20
u96_21:
	goto	i1l1459
u96_20:
	goto	i1l1467
	
i1l296:	
	goto	i1l1467
	
i1l297:	
	line	41
	
i1l1467:	
	movf	(strcmp@r),w
	movwf	(?_strcmp)
	clrf	(?_strcmp+1)
	btfsc	(?_strcmp),7
	decf	(?_strcmp+1),f
	goto	i1l298
	
i1l1469:	
	line	42
	
i1l298:	
	return
	opt stack 0
GLOBAL	__end_of_strcmp
	__end_of_strcmp:
	signat	_strcmp,8314
psect	text263,local,class=CODE,delta=2,merge=1
global __ptext263
__ptext263:	;psect for function _strcmp
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end

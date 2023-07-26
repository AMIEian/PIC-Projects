opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 59893"

opt pagewidth 120

	opt lm

	processor	16F628A
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
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PORTA equ 05h ;# 
# 221 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PORTB equ 06h ;# 
# 282 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PCLATH equ 0Ah ;# 
# 301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
INTCON equ 0Bh ;# 
# 378 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PIR1 equ 0Ch ;# 
# 434 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TMR1 equ 0Eh ;# 
# 440 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TMR1L equ 0Eh ;# 
# 446 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TMR1H equ 0Fh ;# 
# 452 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
T1CON equ 010h ;# 
# 510 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TMR2 equ 011h ;# 
# 516 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
T2CON equ 012h ;# 
# 586 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
CCPR1 equ 015h ;# 
# 592 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
CCPR1L equ 015h ;# 
# 598 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
CCPR1H equ 016h ;# 
# 604 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
CCP1CON equ 017h ;# 
# 661 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
RCSTA equ 018h ;# 
# 731 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TXREG equ 019h ;# 
# 737 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
RCREG equ 01Ah ;# 
# 743 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
CMCON equ 01Fh ;# 
# 812 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
OPTION_REG equ 081h ;# 
# 881 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TRISA equ 085h ;# 
# 942 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TRISB equ 086h ;# 
# 1003 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PIE1 equ 08Ch ;# 
# 1059 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PCON equ 08Eh ;# 
# 1107 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PR2 equ 092h ;# 
# 1113 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TXSTA equ 098h ;# 
# 1169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
SPBRG equ 099h ;# 
# 1175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
EEDATA equ 09Ah ;# 
# 1181 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
EEADR equ 09Bh ;# 
# 1187 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
EECON1 equ 09Ch ;# 
# 1224 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
EECON2 equ 09Dh ;# 
# 1230 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
VRCON equ 09Fh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PORTA equ 05h ;# 
# 221 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PORTB equ 06h ;# 
# 282 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PCLATH equ 0Ah ;# 
# 301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
INTCON equ 0Bh ;# 
# 378 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PIR1 equ 0Ch ;# 
# 434 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TMR1 equ 0Eh ;# 
# 440 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TMR1L equ 0Eh ;# 
# 446 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TMR1H equ 0Fh ;# 
# 452 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
T1CON equ 010h ;# 
# 510 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TMR2 equ 011h ;# 
# 516 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
T2CON equ 012h ;# 
# 586 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
CCPR1 equ 015h ;# 
# 592 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
CCPR1L equ 015h ;# 
# 598 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
CCPR1H equ 016h ;# 
# 604 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
CCP1CON equ 017h ;# 
# 661 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
RCSTA equ 018h ;# 
# 731 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TXREG equ 019h ;# 
# 737 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
RCREG equ 01Ah ;# 
# 743 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
CMCON equ 01Fh ;# 
# 812 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
OPTION_REG equ 081h ;# 
# 881 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TRISA equ 085h ;# 
# 942 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TRISB equ 086h ;# 
# 1003 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PIE1 equ 08Ch ;# 
# 1059 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PCON equ 08Eh ;# 
# 1107 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PR2 equ 092h ;# 
# 1113 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TXSTA equ 098h ;# 
# 1169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
SPBRG equ 099h ;# 
# 1175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
EEDATA equ 09Ah ;# 
# 1181 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
EEADR equ 09Bh ;# 
# 1187 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
EECON1 equ 09Ch ;# 
# 1224 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
EECON2 equ 09Dh ;# 
# 1230 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
VRCON equ 09Fh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PORTA equ 05h ;# 
# 221 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PORTB equ 06h ;# 
# 282 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PCLATH equ 0Ah ;# 
# 301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
INTCON equ 0Bh ;# 
# 378 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PIR1 equ 0Ch ;# 
# 434 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TMR1 equ 0Eh ;# 
# 440 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TMR1L equ 0Eh ;# 
# 446 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TMR1H equ 0Fh ;# 
# 452 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
T1CON equ 010h ;# 
# 510 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TMR2 equ 011h ;# 
# 516 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
T2CON equ 012h ;# 
# 586 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
CCPR1 equ 015h ;# 
# 592 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
CCPR1L equ 015h ;# 
# 598 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
CCPR1H equ 016h ;# 
# 604 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
CCP1CON equ 017h ;# 
# 661 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
RCSTA equ 018h ;# 
# 731 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TXREG equ 019h ;# 
# 737 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
RCREG equ 01Ah ;# 
# 743 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
CMCON equ 01Fh ;# 
# 812 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
OPTION_REG equ 081h ;# 
# 881 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TRISA equ 085h ;# 
# 942 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TRISB equ 086h ;# 
# 1003 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PIE1 equ 08Ch ;# 
# 1059 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PCON equ 08Eh ;# 
# 1107 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
PR2 equ 092h ;# 
# 1113 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
TXSTA equ 098h ;# 
# 1169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
SPBRG equ 099h ;# 
# 1175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
EEDATA equ 09Ah ;# 
# 1181 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
EEADR equ 09Bh ;# 
# 1187 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
EECON1 equ 09Ch ;# 
# 1224 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
EECON2 equ 09Dh ;# 
# 1230 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
VRCON equ 09Fh ;# 
	FNCALL	_main,_USARTDataAvailable
	FNCALL	_main,_USARTInit
	FNCALL	_main,_USARTReadData
	FNCALL	_main,_USARTWriteChar
	FNROOT	_main
	FNCALL	_ISR,_USARTHandleRxInt
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_UQEnd
	global	_UQFront
	global	_URBuff
	global	USARTWriteInt@F659
	global	_CMCON
_CMCON	set	0x1F
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
	global	_RCIF
_RCIF	set	0x65
	global	_SPBRG
_SPBRG	set	0x99
	global	_TRISB
_TRISB	set	0x86
	global	_TXSTAbits
_TXSTAbits	set	0x98
	global	_RCIE
_RCIE	set	0x465
psect	text0,local,class=CODE,delta=2,merge=1
; #config settings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
	line	1538
global __ptext0
__ptext0:	;psect for function _USARTHandleRxInt
	file	"Serial_628.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_UQEnd:
       ds      1

_UQFront:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_URBuff:
       ds      64

USARTWriteInt@F659:
       ds      5

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
	movlw	low((__pbssBANK0)+045h)
	fcall	clear_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_USARTWriteChar:	; 0 bytes @ 0x0
?_USARTHandleRxInt:	; 0 bytes @ 0x0
??_USARTHandleRxInt:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_USARTReadData:	; 1 bytes @ 0x0
?_USARTDataAvailable:	; 1 bytes @ 0x0
	ds	4
	global	USARTHandleRxInt@data
USARTHandleRxInt@data:	; 1 bytes @ 0x4
	ds	1
??_ISR:	; 0 bytes @ 0x5
	ds	4
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?_USARTInit:	; 0 bytes @ 0x0
??_USARTWriteChar:	; 0 bytes @ 0x0
??_USARTReadData:	; 0 bytes @ 0x0
??_USARTDataAvailable:	; 0 bytes @ 0x0
	global	USARTWriteChar@ch
USARTWriteChar@ch:	; 1 bytes @ 0x0
	global	USARTInit@baud_rate
USARTInit@baud_rate:	; 2 bytes @ 0x0
	ds	1
	global	USARTReadData@data
USARTReadData@data:	; 1 bytes @ 0x1
	ds	1
??_USARTInit:	; 0 bytes @ 0x2
	ds	1
??_main:	; 0 bytes @ 0x3
	ds	3
	global	main@n
main@n:	; 1 bytes @ 0x6
	ds	1
	global	main@count
main@count:	; 1 bytes @ 0x7
	ds	1
	global	main@data
main@data:	; 1 bytes @ 0x8
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         71
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      9      11
;!    BANK0            80      9      78
;!    BANK1            80      0       0
;!    BANK2            48      0       0

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
;!    _ISR->_USARTHandleRxInt
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_USARTInit
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
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK2
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
;! (0) _main                                                 6     6      0     322
;!                                              3 BANK0      6     6      0
;!                 _USARTDataAvailable
;!                          _USARTInit
;!                      _USARTReadData
;!                     _USARTWriteChar
;! ---------------------------------------------------------------------------------
;! (1) _USARTWriteChar                                       1     1      0      22
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _USARTReadData                                        2     2      0      23
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _USARTInit                                            3     1      2      75
;!                                              0 BANK0      3     1      2
;! ---------------------------------------------------------------------------------
;! (1) _USARTDataAvailable                                   1     1      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (2) _ISR                                                  4     4      0      15
;!                                              5 COMMON     4     4      0
;!                   _USARTHandleRxInt
;! ---------------------------------------------------------------------------------
;! (3) _USARTHandleRxInt                                     5     5      0      15
;!                                              0 COMMON     5     5      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _USARTDataAvailable
;!   _USARTInit
;!   _USARTReadData
;!   _USARTWriteChar
;!
;! _ISR (ROOT)
;!   _USARTHandleRxInt
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA              80      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      9       B       1       78.6%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!BANK0               50      9      4E       3       97.5%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!ABS                  0      0      59       4        0.0%
;!BITBANK0            50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK2            30      0       0       8        0.0%
;!BANK2               30      0       0       9        0.0%
;!DATA                 0      0      59      10        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 15 in file "E:\Study Material\XC8 PROJECTS\Bluetooth Foot Switch\Receiver\SerTest.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data            1    8[BANK0 ] unsigned char 
;;  n               1    6[BANK0 ] unsigned char 
;;  count           1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       3       0       0
;;      Temps:          0       3       0       0
;;      Totals:         0       6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_USARTDataAvailable
;;		_USARTInit
;;		_USARTReadData
;;		_USARTWriteChar
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"E:\Study Material\XC8 PROJECTS\Bluetooth Foot Switch\Receiver\SerTest.c"
	line	15
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"E:\Study Material\XC8 PROJECTS\Bluetooth Foot Switch\Receiver\SerTest.c"
	line	15
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	18
	
l1103:	
;SerTest.c: 18: CMCON = 0x07;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	20
;SerTest.c: 20: TRISB = 0x02;
	movlw	(02h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	22
	
l1105:	
;SerTest.c: 21: char count;
;SerTest.c: 22: for(count = 0; count < 5; count++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	
l1107:	
	movlw	(05h)
	subwf	(main@count),w
	skipc
	goto	u541
	goto	u540
u541:
	goto	l157
u540:
	goto	l1119
	
l1109:	
	goto	l1119
	line	23
	
l157:	
	line	24
;SerTest.c: 23: {
;SerTest.c: 24: RB3 = 1;
	bsf	(51/8),(51)&7	;volatile
	line	25
	
l1111:	
;SerTest.c: 25: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u817:
	decfsz	((??_main+0)+0),f
	goto	u817
	decfsz	((??_main+0)+0+1),f
	goto	u817
	decfsz	((??_main+0)+0+2),f
	goto	u817
	nop2
opt asmopt_on

	line	26
	
l1113:	
;SerTest.c: 26: RB3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7	;volatile
	line	27
;SerTest.c: 27: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u827:
	decfsz	((??_main+0)+0),f
	goto	u827
	decfsz	((??_main+0)+0+1),f
	goto	u827
	decfsz	((??_main+0)+0+2),f
	goto	u827
	nop2
opt asmopt_on

	line	22
	
l1115:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@count),f
	
l1117:	
	movlw	(05h)
	subwf	(main@count),w
	skipc
	goto	u551
	goto	u550
u551:
	goto	l157
u550:
	goto	l1119
	
l158:	
	line	31
	
l1119:	
;SerTest.c: 28: }
;SerTest.c: 31: USARTInit(38400);
	movlw	low(09600h)
	movwf	(USARTInit@baud_rate)
	movlw	high(09600h)
	movwf	((USARTInit@baud_rate))+1
	fcall	_USARTInit
	goto	l1121
	line	33
;SerTest.c: 33: while(1)
	
l159:	
	line	36
	
l1121:	
;SerTest.c: 34: {
;SerTest.c: 36: uint8_t n= USARTDataAvailable();
	fcall	_USARTDataAvailable
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@n)
	line	39
	
l1123:	
;SerTest.c: 39: if(n!=0)
	movf	(main@n),w
	skipz
	goto	u560
	goto	l1121
u560:
	line	42
	
l1125:	
;SerTest.c: 40: {
;SerTest.c: 42: char data=USARTReadData();
	fcall	_USARTReadData
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@data)
	line	44
	
l1127:	
;SerTest.c: 44: if(data == 'W')
	movf	(main@data),w
	xorlw	057h
	skipz
	goto	u571
	goto	u570
u571:
	goto	l1131
u570:
	line	45
	
l1129:	
;SerTest.c: 45: RB7 = 1;
	bsf	(55/8),(55)&7	;volatile
	goto	l1131
	
l161:	
	line	47
	
l1131:	
;SerTest.c: 47: if(data == 'X')
	movf	(main@data),w
	xorlw	058h
	skipz
	goto	u581
	goto	u580
u581:
	goto	l1135
u580:
	line	48
	
l1133:	
;SerTest.c: 48: RB6 = 1;
	bsf	(54/8),(54)&7	;volatile
	goto	l1135
	
l162:	
	line	50
	
l1135:	
;SerTest.c: 50: if(data == 'Y')
	movf	(main@data),w
	xorlw	059h
	skipz
	goto	u591
	goto	u590
u591:
	goto	l1139
u590:
	line	51
	
l1137:	
;SerTest.c: 51: RB5 = 1;
	bsf	(53/8),(53)&7	;volatile
	goto	l1139
	
l163:	
	line	53
	
l1139:	
;SerTest.c: 53: if(data == 'Z')
	movf	(main@data),w
	xorlw	05Ah
	skipz
	goto	u601
	goto	u600
u601:
	goto	l1143
u600:
	line	54
	
l1141:	
;SerTest.c: 54: RB4 = 1;
	bsf	(52/8),(52)&7	;volatile
	goto	l1143
	
l164:	
	line	56
	
l1143:	
;SerTest.c: 56: if(data == 'R')
	movf	(main@data),w
	xorlw	052h
	skipz
	goto	u611
	goto	u610
u611:
	goto	l1147
u610:
	line	58
	
l1145:	
;SerTest.c: 57: {
;SerTest.c: 58: RB7 = 0;
	bcf	(55/8),(55)&7	;volatile
	line	59
;SerTest.c: 59: RB6 = 0;
	bcf	(54/8),(54)&7	;volatile
	line	60
;SerTest.c: 60: RB5 = 0;
	bcf	(53/8),(53)&7	;volatile
	line	61
;SerTest.c: 61: RB4 = 0;
	bcf	(52/8),(52)&7	;volatile
	goto	l1147
	line	62
	
l165:	
	line	65
	
l1147:	
;SerTest.c: 62: }
;SerTest.c: 65: USARTWriteChar(data);
	movf	(main@data),w
	fcall	_USARTWriteChar
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	goto	l1121
	line	66
	
l160:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	goto	l1121
	line	68
	
l166:	
	line	33
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	goto	l1121
	
l167:	
	line	69
	
l168:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_USARTWriteChar

;; *************** function _USARTWriteChar *****************
;; Defined at:
;;		line 77 in file "E:\Study Material\XC8 PROJECTS\Bluetooth Foot Switch\Receiver\usart_pic16.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_USARTWriteString
;;		_USARTWriteLine
;;		_USARTWriteInt
;;		_USARTGotoNewLine
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\Bluetooth Foot Switch\Receiver\usart_pic16.c"
	line	77
global __ptext1
__ptext1:	;psect for function _USARTWriteChar
psect	text1
	file	"E:\Study Material\XC8 PROJECTS\Bluetooth Foot Switch\Receiver\usart_pic16.c"
	line	77
	global	__size_of_USARTWriteChar
	__size_of_USARTWriteChar	equ	__end_of_USARTWriteChar-_USARTWriteChar
	
_USARTWriteChar:	
;incstack = 0
	opt	stack 5
; Regs used in _USARTWriteChar: [wreg]
;USARTWriteChar@ch stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(USARTWriteChar@ch)
	line	79
	
l973:	
;usart_pic16.c: 79: while(!PIR1bits.TXIF);
	goto	l36
	
l37:	
	
l36:	
	btfss	(12),4	;volatile
	goto	u361
	goto	u360
u361:
	goto	l36
u360:
	goto	l975
	
l38:	
	line	81
	
l975:	
;usart_pic16.c: 81: TXREG=ch;
	movf	(USARTWriteChar@ch),w
	movwf	(25)	;volatile
	line	82
	
l39:	
	return
	opt stack 0
GLOBAL	__end_of_USARTWriteChar
	__end_of_USARTWriteChar:
	signat	_USARTWriteChar,4216
	global	_USARTReadData

;; *************** function _USARTReadData *****************
;; Defined at:
;;		line 125 in file "E:\Study Material\XC8 PROJECTS\Bluetooth Foot Switch\Receiver\usart_pic16.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data            1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_USARTReadBuffer
;;		_USARTFlushBuffer
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	125
global __ptext2
__ptext2:	;psect for function _USARTReadData
psect	text2
	file	"E:\Study Material\XC8 PROJECTS\Bluetooth Foot Switch\Receiver\usart_pic16.c"
	line	125
	global	__size_of_USARTReadData
	__size_of_USARTReadData	equ	__end_of_USARTReadData-_USARTReadData
	
_USARTReadData:	
;incstack = 0
	opt	stack 5
; Regs used in _USARTReadData: [wreg-fsr0h+status,2+status,0]
	line	130
	
l985:	
;usart_pic16.c: 127: char data;
;usart_pic16.c: 130: if(UQFront==-1)
	movf	(_UQFront),w	;volatile
	xorlw	-1
	skipz
	goto	u381
	goto	u380
u381:
	goto	l991
u380:
	line	131
	
l987:	
;usart_pic16.c: 131: return 0;
	movlw	(0)
	goto	l64
	
l989:	
	goto	l64
	
l63:	
	line	133
	
l991:	
;usart_pic16.c: 133: data=URBuff[UQFront];
	movf	(_UQFront),w
	addlw	_URBuff&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_USARTReadData+0)+0
	movf	(??_USARTReadData+0)+0,w
	movwf	(USARTReadData@data)
	line	135
	
l993:	
;usart_pic16.c: 135: if(UQFront==UQEnd)
	movf	(_UQFront),w	;volatile
	xorwf	(_UQEnd),w	;volatile
	skipz
	goto	u391
	goto	u390
u391:
	goto	l997
u390:
	line	139
	
l995:	
;usart_pic16.c: 136: {
;usart_pic16.c: 139: UQFront=UQEnd=-1;
	movlw	(-1)
	movwf	(_UQEnd)	;volatile
	movwf	(??_USARTReadData+0)+0
	movf	(??_USARTReadData+0)+0,w
	movwf	(_UQFront)	;volatile
	line	140
;usart_pic16.c: 140: }
	goto	l1003
	line	141
	
l65:	
	line	143
	
l997:	
;usart_pic16.c: 141: else
;usart_pic16.c: 142: {
;usart_pic16.c: 143: UQFront++;
	movlw	(01h)
	movwf	(??_USARTReadData+0)+0
	movf	(??_USARTReadData+0)+0,w
	addwf	(_UQFront),f	;volatile
	line	145
	
l999:	
;usart_pic16.c: 145: if(UQFront==64)
	movf	(_UQFront),w	;volatile
	xorlw	040h
	skipz
	goto	u401
	goto	u400
u401:
	goto	l1003
u400:
	line	146
	
l1001:	
;usart_pic16.c: 146: UQFront=0;
	clrf	(_UQFront)	;volatile
	goto	l1003
	
l67:	
	goto	l1003
	line	147
	
l66:	
	line	149
	
l1003:	
;usart_pic16.c: 147: }
;usart_pic16.c: 149: return data;
	movf	(USARTReadData@data),w
	goto	l64
	
l1005:	
	line	150
	
l64:	
	return
	opt stack 0
GLOBAL	__end_of_USARTReadData
	__end_of_USARTReadData:
	signat	_USARTReadData,89
	global	_USARTInit

;; *************** function _USARTInit *****************
;; Defined at:
;;		line 31 in file "E:\Study Material\XC8 PROJECTS\Bluetooth Foot Switch\Receiver\usart_pic16.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       2       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	31
global __ptext3
__ptext3:	;psect for function _USARTInit
psect	text3
	file	"E:\Study Material\XC8 PROJECTS\Bluetooth Foot Switch\Receiver\usart_pic16.c"
	line	31
	global	__size_of_USARTInit
	__size_of_USARTInit	equ	__end_of_USARTInit-_USARTInit
	
_USARTInit:	
;incstack = 0
	opt	stack 5
; Regs used in _USARTInit: [wreg-fsr0h+status,2+status,0]
	line	34
	
l943:	
;usart_pic16.c: 34: UQFront=UQEnd=-1;
	movlw	(-1)
	movwf	(_UQEnd)	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_USARTInit+0)+0
	movf	(??_USARTInit+0)+0,w
	movwf	(_UQFront)	;volatile
	line	38
;usart_pic16.c: 38: switch(baud_rate)
	goto	l955
	line	40
;usart_pic16.c: 39: {
;usart_pic16.c: 40: case 9600:
	
l28:	
	line	41
	
l945:	
;usart_pic16.c: 41: SPBRG=103;
	movlw	(067h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	42
;usart_pic16.c: 42: break;
	goto	l29
	line	43
;usart_pic16.c: 43: case 19200:
	
l30:	
	line	44
	
l947:	
;usart_pic16.c: 44: SPBRG=51;
	movlw	(033h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	45
;usart_pic16.c: 45: break;
	goto	l29
	line	46
;usart_pic16.c: 46: case 38400:
	
l31:	
	line	47
	
l949:	
;usart_pic16.c: 47: SPBRG=25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	48
;usart_pic16.c: 48: break;
	goto	l29
	line	49
;usart_pic16.c: 49: case 57600:
	
l32:	
	line	50
	
l951:	
;usart_pic16.c: 50: SPBRG=16;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	51
;usart_pic16.c: 51: break;
	goto	l29
	line	52
	
l953:	
;usart_pic16.c: 52: }
	goto	l29
	line	38
	
l27:	
	
l955:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 4 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 37 to 225
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte          198     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	bcf	status, 5	;RP0=0, select bank0
	movf (USARTInit@baud_rate+1),w
	opt asmopt_off
	xorlw	37^0	; case 37
	skipnz
	goto	l1311
	xorlw	75^37	; case 75
	skipnz
	goto	l1313
	xorlw	150^75	; case 150
	skipnz
	goto	l1315
	xorlw	225^150	; case 225
	skipnz
	goto	l1317
	goto	l29
	opt asmopt_on
	
l1311:	
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
	goto	l945
	goto	l29
	opt asmopt_on
	
l1313:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte            7     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (USARTInit@baud_rate),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l947
	goto	l29
	opt asmopt_on
	
l1315:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte            7     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (USARTInit@baud_rate),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l949
	goto	l29
	opt asmopt_on
	
l1317:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte            7     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (USARTInit@baud_rate),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l951
	goto	l29
	opt asmopt_on

	line	52
	
l29:	
	line	59
;usart_pic16.c: 59: TXSTAbits.TX9=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(152)^080h,6	;volatile
	line	60
;usart_pic16.c: 60: TXSTAbits.TXEN=1;
	bsf	(152)^080h,5	;volatile
	line	61
;usart_pic16.c: 61: TXSTAbits.SYNC=0;
	bcf	(152)^080h,4	;volatile
	line	62
;usart_pic16.c: 62: TXSTAbits.BRGH=1;
	bsf	(152)^080h,2	;volatile
	line	65
;usart_pic16.c: 65: RCSTAbits.SPEN=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(24),7	;volatile
	line	66
;usart_pic16.c: 66: RCSTAbits.RX9=0;
	bcf	(24),6	;volatile
	line	67
;usart_pic16.c: 67: RCSTAbits.CREN=1;
	bsf	(24),4	;volatile
	line	68
;usart_pic16.c: 68: RCSTAbits.ADDEN=0;
	bcf	(24),3	;volatile
	line	71
;usart_pic16.c: 71: RCIE=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1125/8)^080h,(1125)&7	;volatile
	line	72
;usart_pic16.c: 72: PEIE=1;
	bsf	(94/8),(94)&7	;volatile
	line	74
;usart_pic16.c: 74: (GIE = 1);
	bsf	(95/8),(95)&7	;volatile
	line	75
	
l33:	
	return
	opt stack 0
GLOBAL	__end_of_USARTInit
	__end_of_USARTInit:
	signat	_USARTInit,4216
	global	_USARTDataAvailable

;; *************** function _USARTDataAvailable *****************
;; Defined at:
;;		line 152 in file "E:\Study Material\XC8 PROJECTS\Bluetooth Foot Switch\Receiver\usart_pic16.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_USARTFlushBuffer
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	152
global __ptext4
__ptext4:	;psect for function _USARTDataAvailable
psect	text4
	file	"E:\Study Material\XC8 PROJECTS\Bluetooth Foot Switch\Receiver\usart_pic16.c"
	line	152
	global	__size_of_USARTDataAvailable
	__size_of_USARTDataAvailable	equ	__end_of_USARTDataAvailable-_USARTDataAvailable
	
_USARTDataAvailable:	
;incstack = 0
	opt	stack 5
; Regs used in _USARTDataAvailable: [wreg+status,2+status,0]
	line	154
	
l1007:	
;usart_pic16.c: 154: if(UQFront==-1) return 0;
	movf	(_UQFront),w	;volatile
	xorlw	-1
	skipz
	goto	u411
	goto	u410
u411:
	goto	l1013
u410:
	
l1009:	
	movlw	(0)
	goto	l71
	
l1011:	
	goto	l71
	
l70:	
	line	155
	
l1013:	
;usart_pic16.c: 155: if(UQFront<UQEnd)
	movf	(_UQFront),w	;volatile
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_USARTDataAvailable+0)+0
	movf	(_UQEnd),w	;volatile
	xorlw	80h
	subwf	(??_USARTDataAvailable+0)+0
	skipnc
	goto	u421
	goto	u420
u421:
	goto	l1021
u420:
	line	156
	
l1015:	
;usart_pic16.c: 156: return(UQEnd-UQFront+1);
	decf	(_UQFront),w	;volatile
	xorlw	0ffh
	addwf	(_UQEnd),w	;volatile
	addlw	01h
	goto	l71
	
l1017:	
	goto	l71
	
l1019:	
	goto	l71
	line	157
	
l72:	
	
l1021:	
;usart_pic16.c: 157: else if(UQFront>UQEnd)
	movf	(_UQEnd),w	;volatile
	xorlw	80h
	movwf	(??_USARTDataAvailable+0)+0
	movf	(_UQFront),w	;volatile
	xorlw	80h
	subwf	(??_USARTDataAvailable+0)+0
	skipnc
	goto	u431
	goto	u430
u431:
	goto	l1029
u430:
	line	158
	
l1023:	
;usart_pic16.c: 158: return (64-UQFront+UQEnd+1);
	decf	(_UQFront),w	;volatile
	xorlw	0ffh
	addwf	(_UQEnd),w	;volatile
	addlw	041h
	goto	l71
	
l1025:	
	goto	l71
	
l1027:	
	goto	l71
	line	159
	
l74:	
	line	160
	
l1029:	
;usart_pic16.c: 159: else
;usart_pic16.c: 160: return 1;
	movlw	(01h)
	goto	l71
	
l1031:	
	goto	l71
	
l75:	
	goto	l71
	
l73:	
	line	161
	
l71:	
	return
	opt stack 0
GLOBAL	__end_of_USARTDataAvailable
	__end_of_USARTDataAvailable:
	signat	_USARTDataAvailable,89
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 6 in file "E:\Study Material\XC8 PROJECTS\Bluetooth Foot Switch\Receiver\isr.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          4       0       0       0
;;      Totals:         4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_USARTHandleRxInt
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\Bluetooth Foot Switch\Receiver\isr.c"
	line	6
global __ptext5
__ptext5:	;psect for function _ISR
psect	text5
	file	"E:\Study Material\XC8 PROJECTS\Bluetooth Foot Switch\Receiver\isr.c"
	line	6
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 5
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
psect	text5
	line	8
	
i1l809:	
;isr.c: 8: if (RCIE && RCIF) {
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1125/8)^080h,(1125)&7	;volatile
	goto	u26_21
	goto	u26_20
u26_21:
	goto	i1l124
u26_20:
	
i1l811:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7	;volatile
	goto	u27_21
	goto	u27_20
u27_21:
	goto	i1l124
u27_20:
	line	9
	
i1l813:	
;isr.c: 9: USARTHandleRxInt();
	fcall	_USARTHandleRxInt
	goto	i1l124
	line	10
	
i1l815:	
;isr.c: 10: return;
	goto	i1l124
	line	11
	
i1l123:	
	line	12
	
i1l124:	
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
;;		line 101 in file "E:\Study Material\XC8 PROJECTS\Bluetooth Foot Switch\Receiver\usart_pic16.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data            1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          4       0       0       0
;;      Totals:         5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\Bluetooth Foot Switch\Receiver\usart_pic16.c"
	line	101
global __ptext6
__ptext6:	;psect for function _USARTHandleRxInt
psect	text6
	file	"E:\Study Material\XC8 PROJECTS\Bluetooth Foot Switch\Receiver\usart_pic16.c"
	line	101
	global	__size_of_USARTHandleRxInt
	__size_of_USARTHandleRxInt	equ	__end_of_USARTHandleRxInt-_USARTHandleRxInt
	
_USARTHandleRxInt:	
;incstack = 0
	opt	stack 5
; Regs used in _USARTHandleRxInt: [wreg-fsr0h+status,2+status,0]
	line	104
	
i1l667:	
;usart_pic16.c: 104: char data=RCREG;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(26),w	;volatile
	movwf	(??_USARTHandleRxInt+0)+0
	movf	(??_USARTHandleRxInt+0)+0,w
	movwf	(USARTHandleRxInt@data)
	line	107
;usart_pic16.c: 107: if(((UQEnd==64-1) && UQFront==0) || ((UQEnd+1)==UQFront))
	movf	(_UQEnd),w	;volatile
	xorlw	03Fh
	skipz
	goto	u3_21
	goto	u3_20
u3_21:
	goto	i1l671
u3_20:
	
i1l669:	
	movf	(_UQFront),w	;volatile
	skipz
	goto	u4_20
	goto	i1l673
u4_20:
	goto	i1l671
	
i1l55:	
	
i1l671:	
	movf	(_UQFront),w	;volatile
	movwf	(??_USARTHandleRxInt+0)+0
	clrf	(??_USARTHandleRxInt+0)+0+1
	btfsc	(??_USARTHandleRxInt+0)+0,7
	decf	(??_USARTHandleRxInt+0)+0+1,f
	movlw	01h
	addwf	(_UQEnd),w	;volatile
	movwf	(??_USARTHandleRxInt+2)+0
	clrf	1+(??_USARTHandleRxInt+2)+0
	skipnc
	incf	((??_USARTHandleRxInt+2)+0)+1,f
	btfss	(_UQEnd),7	;volatile
	goto	u5_24
	decf	((??_USARTHandleRxInt+2)+0)+1,f
	u5_24:
	
	movf	1+(??_USARTHandleRxInt+0)+0,w
	xorwf	1+(??_USARTHandleRxInt+2)+0,w
	skipz
	goto	u6_25
	movf	0+(??_USARTHandleRxInt+0)+0,w
	xorwf	0+(??_USARTHandleRxInt+2)+0,w
u6_25:

	skipz
	goto	u6_21
	goto	u6_20
u6_21:
	goto	i1l679
u6_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	goto	i1l673
	
i1l53:	
	line	110
	
i1l673:	
;usart_pic16.c: 108: {
;usart_pic16.c: 110: UQFront++;
	movlw	(01h)
	movwf	(??_USARTHandleRxInt+0)+0
	movf	(??_USARTHandleRxInt+0)+0,w
	addwf	(_UQFront),f	;volatile
	line	111
	
i1l675:	
;usart_pic16.c: 111: if(UQFront==64) UQFront=0;
	movf	(_UQFront),w	;volatile
	xorlw	040h
	skipz
	goto	u7_21
	goto	u7_20
u7_21:
	goto	i1l679
u7_20:
	
i1l677:	
	clrf	(_UQFront)	;volatile
	goto	i1l679
	
i1l56:	
	goto	i1l679
	line	112
	
i1l51:	
	line	114
	
i1l679:	
;usart_pic16.c: 112: }
;usart_pic16.c: 114: if(UQEnd==64-1)
	movf	(_UQEnd),w	;volatile
	xorlw	03Fh
	skipz
	goto	u8_21
	goto	u8_20
u8_21:
	goto	i1l683
u8_20:
	line	115
	
i1l681:	
;usart_pic16.c: 115: UQEnd=0;
	clrf	(_UQEnd)	;volatile
	goto	i1l685
	line	116
	
i1l57:	
	line	117
	
i1l683:	
;usart_pic16.c: 116: else
;usart_pic16.c: 117: UQEnd++;
	movlw	(01h)
	movwf	(??_USARTHandleRxInt+0)+0
	movf	(??_USARTHandleRxInt+0)+0,w
	addwf	(_UQEnd),f	;volatile
	goto	i1l685
	
i1l58:	
	line	119
	
i1l685:	
;usart_pic16.c: 119: URBuff[UQEnd]=data;
	movf	(USARTHandleRxInt@data),w
	movwf	(??_USARTHandleRxInt+0)+0
	movf	(_UQEnd),w
	addlw	_URBuff&0ffh
	movwf	fsr0
	movf	(??_USARTHandleRxInt+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	121
	
i1l687:	
;usart_pic16.c: 121: if(UQFront==-1) UQFront=0;
	movf	(_UQFront),w	;volatile
	xorlw	-1
	skipz
	goto	u9_21
	goto	u9_20
u9_21:
	goto	i1l60
u9_20:
	
i1l689:	
	clrf	(_UQFront)	;volatile
	goto	i1l60
	
i1l59:	
	line	123
	
i1l60:	
	return
	opt stack 0
GLOBAL	__end_of_USARTHandleRxInt
	__end_of_USARTHandleRxInt:
	signat	_USARTHandleRxInt,88
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

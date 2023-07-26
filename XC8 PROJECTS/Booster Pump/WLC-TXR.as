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
	FNROOT	_main
	global	_CMCON
_CMCON	set	0x1F
	global	_RA0
_RA0	set	0x28
	global	_RA1
_RA1	set	0x29
	global	_RB2
_RB2	set	0x32
	global	_RB3
_RB3	set	0x33
	global	_RB4
_RB4	set	0x34
	global	_RB5
_RB5	set	0x35
	global	_RB6
_RB6	set	0x36
	global	_PCON
_PCON	set	0x8E
	global	_TRISA
_TRISA	set	0x85
	global	_TRISB
_TRISB	set	0x86
psect	maintext,global,class=CODE,delta=2,split=1
; #config settings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f628a.h"
	line	1538
global __pmaintext
__pmaintext:	;psect for function _main
	file	"WLC-TXR.as"
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
?_main:	; 0 bytes @ 0x0
??_main:	; 0 bytes @ 0x0
	ds	3
	global	main@UL
main@UL:	; 1 bytes @ 0x3
	ds	1
	global	main@UU
main@UU:	; 1 bytes @ 0x4
	ds	1
	global	main@i
main@i:	; 1 bytes @ 0x5
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      6       6
;!    BANK0            80      0       0
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
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
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
;! (0) _main                                                 6     6      0     150
;!                                              0 COMMON     6     6      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 0
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA              80      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      6       6       1       42.9%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!BANK0               50      0       0       3        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!ABS                  0      0       0       4        0.0%
;!BITBANK0            50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK2            30      0       0       8        0.0%
;!BANK2               30      0       0       9        0.0%
;!DATA                 0      0       0      10        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 24 in file "E:\Study Material\XC8 PROJECTS\WLC-TXR\WLC-TXR.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    5[COMMON] unsigned char 
;;  UU              1    4[COMMON] unsigned char 
;;  UL              1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         3       0       0       0
;;      Temps:          3       0       0       0
;;      Totals:         6       0       0       0
;;Total ram usage:        6 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
psect	maintext
	file	"E:\Study Material\XC8 PROJECTS\WLC-TXR\WLC-TXR.C"
	line	24
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 8
; Regs used in _main: [wreg+status,2+status,0]
	line	26
	
l498:	
;WLC-TXR.C: 26: PCON = 0x0B;
	movlw	(0Bh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(142)^080h	;volatile
	line	27
;WLC-TXR.C: 27: CMCON = 0x07;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	29
	
l500:	
;WLC-TXR.C: 29: char UL = 0, UU = 0, i = 0;
	clrf	(main@UL)
	
l502:	
	clrf	(main@UU)
	
l504:	
	clrf	(main@i)
	line	31
	
l506:	
;WLC-TXR.C: 31: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	32
	
l508:	
;WLC-TXR.C: 32: RB4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7	;volatile
	line	33
	
l510:	
;WLC-TXR.C: 33: RB6 = 0;
	bcf	(54/8),(54)&7	;volatile
	line	34
	
l512:	
;WLC-TXR.C: 34: RB5 = 0;
	bcf	(53/8),(53)&7	;volatile
	line	36
	
l514:	
;WLC-TXR.C: 36: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	37
	
l516:	
;WLC-TXR.C: 37: RA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7	;volatile
	line	38
	
l518:	
;WLC-TXR.C: 38: RA1 = 0;
	bcf	(41/8),(41)&7	;volatile
	line	40
	
l520:	
;WLC-TXR.C: 40: for(i = 0; i <= 5; i++)
	clrf	(main@i)
	movlw	(06h)
	subwf	(main@i),w
	skipc
	goto	u11
	goto	u10
u11:
	goto	l27
u10:
	goto	l534
	
l522:	
	goto	l534
	line	41
	
l27:	
	line	42
;WLC-TXR.C: 41: {
;WLC-TXR.C: 42: RB2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7	;volatile
	line	43
;WLC-TXR.C: 43: RB3 = 1;
	bsf	(51/8),(51)&7	;volatile
	line	44
	
l524:	
;WLC-TXR.C: 44: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u137:
	decfsz	((??_main+0)+0),f
	goto	u137
	decfsz	((??_main+0)+0+1),f
	goto	u137
	decfsz	((??_main+0)+0+2),f
	goto	u137
	nop2
opt asmopt_on

	line	45
	
l526:	
;WLC-TXR.C: 45: RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7	;volatile
	line	46
	
l528:	
;WLC-TXR.C: 46: RB3 = 0;
	bcf	(51/8),(51)&7	;volatile
	line	47
;WLC-TXR.C: 47: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u147:
	decfsz	((??_main+0)+0),f
	goto	u147
	decfsz	((??_main+0)+0+1),f
	goto	u147
	decfsz	((??_main+0)+0+2),f
	goto	u147
	nop2
opt asmopt_on

	line	40
	
l530:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	
l532:	
	movlw	(06h)
	subwf	(main@i),w
	skipc
	goto	u21
	goto	u20
u21:
	goto	l27
u20:
	goto	l534
	
l28:	
	goto	l534
	line	50
;WLC-TXR.C: 48: }
;WLC-TXR.C: 50: while(1)
	
l29:	
	line	53
	
l534:	
;WLC-TXR.C: 51: {
;WLC-TXR.C: 53: TRISA = 0x01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	54
	
l536:	
;WLC-TXR.C: 54: RA1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(41/8),(41)&7	;volatile
	line	55
;WLC-TXR.C: 55: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u157:
	decfsz	((??_main+0)+0),f
	goto	u157
	decfsz	((??_main+0)+0+1),f
	goto	u157
	decfsz	((??_main+0)+0+2),f
	goto	u157
	nop2
opt asmopt_on

	line	56
	
l538:	
;WLC-TXR.C: 56: if(RA0 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(40/8),(40)&7	;volatile
	goto	u31
	goto	u30
u31:
	goto	l542
u30:
	line	58
	
l540:	
;WLC-TXR.C: 57: {
;WLC-TXR.C: 58: UL = 1;
	clrf	(main@UL)
	incf	(main@UL),f
	line	59
;WLC-TXR.C: 59: }
	goto	l31
	line	60
	
l30:	
	line	62
	
l542:	
;WLC-TXR.C: 60: else
;WLC-TXR.C: 61: {
;WLC-TXR.C: 62: UL = 0;
	clrf	(main@UL)
	line	63
	
l31:	
	line	66
;WLC-TXR.C: 63: }
;WLC-TXR.C: 66: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	67
	
l544:	
;WLC-TXR.C: 67: RA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7	;volatile
	line	68
	
l546:	
;WLC-TXR.C: 68: RA1 = 0;
	bcf	(41/8),(41)&7	;volatile
	line	69
	
l548:	
;WLC-TXR.C: 69: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u167:
	decfsz	((??_main+0)+0),f
	goto	u167
	decfsz	((??_main+0)+0+1),f
	goto	u167
	decfsz	((??_main+0)+0+2),f
	goto	u167
	nop2
opt asmopt_on

	line	72
	
l550:	
;WLC-TXR.C: 72: TRISA = 0x02;
	movlw	(02h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	73
	
l552:	
;WLC-TXR.C: 73: RA0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(40/8),(40)&7	;volatile
	line	74
	
l554:	
;WLC-TXR.C: 74: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u177:
	decfsz	((??_main+0)+0),f
	goto	u177
	decfsz	((??_main+0)+0+1),f
	goto	u177
	decfsz	((??_main+0)+0+2),f
	goto	u177
	nop2
opt asmopt_on

	line	75
	
l556:	
;WLC-TXR.C: 75: if(RA1 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(41/8),(41)&7	;volatile
	goto	u41
	goto	u40
u41:
	goto	l560
u40:
	line	77
	
l558:	
;WLC-TXR.C: 76: {
;WLC-TXR.C: 77: UU = 1;
	clrf	(main@UU)
	incf	(main@UU),f
	line	78
;WLC-TXR.C: 78: }
	goto	l33
	line	79
	
l32:	
	line	81
	
l560:	
;WLC-TXR.C: 79: else
;WLC-TXR.C: 80: {
;WLC-TXR.C: 81: UU = 0;
	clrf	(main@UU)
	line	82
	
l33:	
	line	85
;WLC-TXR.C: 82: }
;WLC-TXR.C: 85: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	86
	
l562:	
;WLC-TXR.C: 86: RA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7	;volatile
	line	87
	
l564:	
;WLC-TXR.C: 87: RA1 = 0;
	bcf	(41/8),(41)&7	;volatile
	line	88
	
l566:	
;WLC-TXR.C: 88: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u187:
	decfsz	((??_main+0)+0),f
	goto	u187
	decfsz	((??_main+0)+0+1),f
	goto	u187
	decfsz	((??_main+0)+0+2),f
	goto	u187
	nop2
opt asmopt_on

	line	91
	
l568:	
;WLC-TXR.C: 91: if(UU == 1 && UL == 1)
	movf	(main@UU),w
	xorlw	01h
	skipz
	goto	u51
	goto	u50
u51:
	goto	l582
u50:
	
l570:	
	movf	(main@UL),w
	xorlw	01h
	skipz
	goto	u61
	goto	u60
u61:
	goto	l582
u60:
	line	93
	
l572:	
;WLC-TXR.C: 92: {
;WLC-TXR.C: 93: RB2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7	;volatile
	line	94
;WLC-TXR.C: 94: RB3 = 1;
	bsf	(51/8),(51)&7	;volatile
	line	96
;WLC-TXR.C: 96: RB6 = 1;
	bsf	(54/8),(54)&7	;volatile
	line	97
	
l574:	
;WLC-TXR.C: 97: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u197:
	decfsz	((??_main+0)+0),f
	goto	u197
	decfsz	((??_main+0)+0+1),f
	goto	u197
	decfsz	((??_main+0)+0+2),f
	goto	u197
	nop2
opt asmopt_on

	line	98
	
l576:	
;WLC-TXR.C: 98: RB6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(54/8),(54)&7	;volatile
	line	99
;WLC-TXR.C: 99: _delay(2000000);
	opt asmopt_off
movlw  11
movwf	((??_main+0)+0+2),f
movlw	38
movwf	((??_main+0)+0+1),f
	movlw	102
movwf	((??_main+0)+0),f
u207:
	decfsz	((??_main+0)+0),f
	goto	u207
	decfsz	((??_main+0)+0+1),f
	goto	u207
	decfsz	((??_main+0)+0+2),f
	goto	u207
	nop2
opt asmopt_on

	line	101
	
l578:	
;WLC-TXR.C: 101: RB6 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(54/8),(54)&7	;volatile
	line	102
;WLC-TXR.C: 102: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u217:
	decfsz	((??_main+0)+0),f
	goto	u217
	decfsz	((??_main+0)+0+1),f
	goto	u217
	decfsz	((??_main+0)+0+2),f
	goto	u217
	nop2
opt asmopt_on

	line	103
	
l580:	
;WLC-TXR.C: 103: RB6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(54/8),(54)&7	;volatile
	goto	l582
	line	104
	
l34:	
	line	107
	
l582:	
;WLC-TXR.C: 104: }
;WLC-TXR.C: 107: if(UU == 0 && UL == 0)
	movf	(main@UU),f
	skipz
	goto	u71
	goto	u70
u71:
	goto	l596
u70:
	
l584:	
	movf	(main@UL),f
	skipz
	goto	u81
	goto	u80
u81:
	goto	l596
u80:
	line	109
	
l586:	
;WLC-TXR.C: 108: {
;WLC-TXR.C: 109: RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7	;volatile
	line	110
;WLC-TXR.C: 110: RB3 = 0;
	bcf	(51/8),(51)&7	;volatile
	line	112
;WLC-TXR.C: 112: RB4 = 1;
	bsf	(52/8),(52)&7	;volatile
	line	113
	
l588:	
;WLC-TXR.C: 113: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u227:
	decfsz	((??_main+0)+0),f
	goto	u227
	decfsz	((??_main+0)+0+1),f
	goto	u227
	decfsz	((??_main+0)+0+2),f
	goto	u227
	nop2
opt asmopt_on

	line	114
	
l590:	
;WLC-TXR.C: 114: RB4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7	;volatile
	line	115
;WLC-TXR.C: 115: _delay(2000000);
	opt asmopt_off
movlw  11
movwf	((??_main+0)+0+2),f
movlw	38
movwf	((??_main+0)+0+1),f
	movlw	102
movwf	((??_main+0)+0),f
u237:
	decfsz	((??_main+0)+0),f
	goto	u237
	decfsz	((??_main+0)+0+1),f
	goto	u237
	decfsz	((??_main+0)+0+2),f
	goto	u237
	nop2
opt asmopt_on

	line	117
	
l592:	
;WLC-TXR.C: 117: RB4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7	;volatile
	line	118
;WLC-TXR.C: 118: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u247:
	decfsz	((??_main+0)+0),f
	goto	u247
	decfsz	((??_main+0)+0+1),f
	goto	u247
	decfsz	((??_main+0)+0+2),f
	goto	u247
	nop2
opt asmopt_on

	line	119
	
l594:	
;WLC-TXR.C: 119: RB4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7	;volatile
	goto	l596
	line	120
	
l35:	
	line	123
	
l596:	
;WLC-TXR.C: 120: }
;WLC-TXR.C: 123: if(UU == 0 && UL == 1)
	movf	(main@UU),f
	skipz
	goto	u91
	goto	u90
u91:
	goto	l610
u90:
	
l598:	
	movf	(main@UL),w
	xorlw	01h
	skipz
	goto	u101
	goto	u100
u101:
	goto	l610
u100:
	line	125
	
l600:	
;WLC-TXR.C: 124: {
;WLC-TXR.C: 125: RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7	;volatile
	line	126
;WLC-TXR.C: 126: RB3 = 1;
	bsf	(51/8),(51)&7	;volatile
	line	128
;WLC-TXR.C: 128: RB5 = 1;
	bsf	(53/8),(53)&7	;volatile
	line	129
	
l602:	
;WLC-TXR.C: 129: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u257:
	decfsz	((??_main+0)+0),f
	goto	u257
	decfsz	((??_main+0)+0+1),f
	goto	u257
	decfsz	((??_main+0)+0+2),f
	goto	u257
	nop2
opt asmopt_on

	line	130
	
l604:	
;WLC-TXR.C: 130: RB5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7	;volatile
	line	131
;WLC-TXR.C: 131: _delay(2000000);
	opt asmopt_off
movlw  11
movwf	((??_main+0)+0+2),f
movlw	38
movwf	((??_main+0)+0+1),f
	movlw	102
movwf	((??_main+0)+0),f
u267:
	decfsz	((??_main+0)+0),f
	goto	u267
	decfsz	((??_main+0)+0+1),f
	goto	u267
	decfsz	((??_main+0)+0+2),f
	goto	u267
	nop2
opt asmopt_on

	line	133
	
l606:	
;WLC-TXR.C: 133: RB5 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(53/8),(53)&7	;volatile
	line	134
;WLC-TXR.C: 134: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u277:
	decfsz	((??_main+0)+0),f
	goto	u277
	decfsz	((??_main+0)+0+1),f
	goto	u277
	decfsz	((??_main+0)+0+2),f
	goto	u277
	nop2
opt asmopt_on

	line	135
	
l608:	
;WLC-TXR.C: 135: RB5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7	;volatile
	goto	l610
	line	136
	
l36:	
	line	139
	
l610:	
;WLC-TXR.C: 136: }
;WLC-TXR.C: 139: for(i = 0; i <= 15; i++)
	clrf	(main@i)
	
l612:	
	movlw	(010h)
	subwf	(main@i),w
	skipc
	goto	u111
	goto	u110
u111:
	goto	l616
u110:
	goto	l534
	
l614:	
	goto	l534
	line	140
	
l37:	
	line	141
	
l616:	
;WLC-TXR.C: 140: {
;WLC-TXR.C: 141: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u287:
	decfsz	((??_main+0)+0),f
	goto	u287
	decfsz	((??_main+0)+0+1),f
	goto	u287
	decfsz	((??_main+0)+0+2),f
	goto	u287
	nop2
opt asmopt_on

	line	139
	
l618:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	
l620:	
	movlw	(010h)
	subwf	(main@i),w
	skipc
	goto	u121
	goto	u120
u121:
	goto	l616
u120:
	goto	l534
	
l38:	
	goto	l534
	line	143
	
l39:	
	line	50
	goto	l534
	
l40:	
	line	144
	
l41:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
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

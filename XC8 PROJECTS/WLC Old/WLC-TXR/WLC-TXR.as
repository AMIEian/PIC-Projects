opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 49521"

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
# 46 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f628a.h"
INDF equ 00h ;# 
# 52 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f628a.h"
TMR0 equ 01h ;# 
# 58 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f628a.h"
PCL equ 02h ;# 
# 64 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f628a.h"
STATUS equ 03h ;# 
# 151 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f628a.h"
FSR equ 04h ;# 
# 157 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f628a.h"
PORTA equ 05h ;# 
# 218 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f628a.h"
PORTB equ 06h ;# 
# 279 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f628a.h"
PCLATH equ 0Ah ;# 
# 298 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f628a.h"
INTCON equ 0Bh ;# 
# 375 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f628a.h"
PIR1 equ 0Ch ;# 
# 431 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f628a.h"
TMR1 equ 0Eh ;# 
# 437 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f628a.h"
TMR1L equ 0Eh ;# 
# 443 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f628a.h"
TMR1H equ 0Fh ;# 
# 449 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f628a.h"
T1CON equ 010h ;# 
# 507 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f628a.h"
TMR2 equ 011h ;# 
# 513 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f628a.h"
T2CON equ 012h ;# 
# 583 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f628a.h"
CCPR1 equ 015h ;# 
# 589 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f628a.h"
CCPR1L equ 015h ;# 
# 595 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f628a.h"
CCPR1H equ 016h ;# 
# 601 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f628a.h"
CCP1CON equ 017h ;# 
# 658 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f628a.h"
RCSTA equ 018h ;# 
# 728 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f628a.h"
TXREG equ 019h ;# 
# 734 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f628a.h"
RCREG equ 01Ah ;# 
# 740 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f628a.h"
CMCON equ 01Fh ;# 
# 809 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f628a.h"
OPTION_REG equ 081h ;# 
# 878 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f628a.h"
TRISA equ 085h ;# 
# 939 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f628a.h"
TRISB equ 086h ;# 
# 1000 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f628a.h"
PIE1 equ 08Ch ;# 
# 1056 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f628a.h"
PCON equ 08Eh ;# 
# 1104 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f628a.h"
PR2 equ 092h ;# 
# 1110 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f628a.h"
TXSTA equ 098h ;# 
# 1166 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f628a.h"
SPBRG equ 099h ;# 
# 1172 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f628a.h"
EEDATA equ 09Ah ;# 
# 1178 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f628a.h"
EEADR equ 09Bh ;# 
# 1184 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f628a.h"
EECON1 equ 09Ch ;# 
# 1221 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f628a.h"
EECON2 equ 09Dh ;# 
# 1227 "C:\Program Files (x86)\Microchip\xc8\v1.12\include\pic16f628a.h"
VRCON equ 09Fh ;# 
	FNROOT	_main
	global	_CMCON
_CMCON	set	0x1F
	global	_RA0
_RA0	set	0x28
	global	_RA1
_RA1	set	0x29
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
global __pmaintext
__pmaintext:	;psect for function _main
; #config settings
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
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
?_main:	; 0 bytes @ 0x0
??_main:	; 0 bytes @ 0x0
	ds	3
	global	main@LL
main@LL:	; 1 bytes @ 0x3
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
;! (0) _main                                                 6     6      0      60
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
;;		line 23 in file "C:\XC8 PROJECTS\WLC-TXR\WLC-TXR.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    5[COMMON] unsigned char 
;;  UU              1    4[COMMON] unsigned char 
;;  LL              1    3[COMMON] unsigned char 
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
	file	"C:\XC8 PROJECTS\WLC-TXR\WLC-TXR.C"
	line	23
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2+status,0]
	line	24
	
l489:	
;WLC-TXR.C: 24: PCON = 0x0B;
	movlw	(0Bh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(142)^080h	;volatile
	line	25
;WLC-TXR.C: 25: CMCON = 0x07;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	27
	
l491:	
;WLC-TXR.C: 27: char LL = 0, UU = 0, i = 0;
	clrf	(main@LL)
	
l493:	
	clrf	(main@UU)
	
l495:	
	clrf	(main@i)
	line	29
	
l497:	
;WLC-TXR.C: 29: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	30
	
l499:	
;WLC-TXR.C: 30: RB4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7	;volatile
	line	31
	
l501:	
;WLC-TXR.C: 31: RB6 = 0;
	bcf	(54/8),(54)&7	;volatile
	line	32
	
l503:	
;WLC-TXR.C: 32: RB5 = 0;
	bcf	(53/8),(53)&7	;volatile
	line	34
	
l505:	
;WLC-TXR.C: 34: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	35
	
l507:	
;WLC-TXR.C: 35: RA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7	;volatile
	line	36
	
l509:	
;WLC-TXR.C: 36: RA1 = 0;
	bcf	(41/8),(41)&7	;volatile
	line	38
;WLC-TXR.C: 38: while(1)
	
l23:	
	line	41
;WLC-TXR.C: 39: {
;WLC-TXR.C: 41: TRISA = 0x01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	42
	
l511:	
;WLC-TXR.C: 42: RA1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(41/8),(41)&7	;volatile
	line	43
;WLC-TXR.C: 43: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u97:
	decfsz	((??_main+0)+0),f
	goto	u97
	decfsz	((??_main+0)+0+1),f
	goto	u97
	decfsz	((??_main+0)+0+2),f
	goto	u97
	nop2
opt asmopt_on

	line	44
	
l513:	
;WLC-TXR.C: 44: if(RA0 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(40/8),(40)&7	;volatile
	goto	u11
	goto	u10
u11:
	goto	l24
u10:
	line	46
	
l515:	
;WLC-TXR.C: 45: {
;WLC-TXR.C: 46: LL = 1;
	clrf	(main@LL)
	incf	(main@LL),f
	line	47
;WLC-TXR.C: 47: }
	goto	l517
	line	48
	
l24:	
	line	50
;WLC-TXR.C: 48: else
;WLC-TXR.C: 49: {
;WLC-TXR.C: 50: LL = 0;
	clrf	(main@LL)
	goto	l517
	line	51
	
l25:	
	line	54
	
l517:	
;WLC-TXR.C: 51: }
;WLC-TXR.C: 54: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	55
	
l519:	
;WLC-TXR.C: 55: RA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7	;volatile
	line	56
	
l521:	
;WLC-TXR.C: 56: RA1 = 0;
	bcf	(41/8),(41)&7	;volatile
	line	57
	
l523:	
;WLC-TXR.C: 57: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u107:
	decfsz	((??_main+0)+0),f
	goto	u107
	decfsz	((??_main+0)+0+1),f
	goto	u107
	decfsz	((??_main+0)+0+2),f
	goto	u107
	nop2
opt asmopt_on

	line	60
	
l525:	
;WLC-TXR.C: 60: TRISA = 0x02;
	movlw	(02h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	61
	
l527:	
;WLC-TXR.C: 61: RA0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(40/8),(40)&7	;volatile
	line	62
	
l529:	
;WLC-TXR.C: 62: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u117:
	decfsz	((??_main+0)+0),f
	goto	u117
	decfsz	((??_main+0)+0+1),f
	goto	u117
	decfsz	((??_main+0)+0+2),f
	goto	u117
	nop2
opt asmopt_on

	line	63
	
l531:	
;WLC-TXR.C: 63: if(RA1 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(41/8),(41)&7	;volatile
	goto	u21
	goto	u20
u21:
	goto	l26
u20:
	line	65
	
l533:	
;WLC-TXR.C: 64: {
;WLC-TXR.C: 65: UU = 1;
	clrf	(main@UU)
	incf	(main@UU),f
	line	66
;WLC-TXR.C: 66: }
	goto	l535
	line	67
	
l26:	
	line	69
;WLC-TXR.C: 67: else
;WLC-TXR.C: 68: {
;WLC-TXR.C: 69: UU = 0;
	clrf	(main@UU)
	goto	l535
	line	70
	
l27:	
	line	73
	
l535:	
;WLC-TXR.C: 70: }
;WLC-TXR.C: 73: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	74
	
l537:	
;WLC-TXR.C: 74: RA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7	;volatile
	line	75
	
l539:	
;WLC-TXR.C: 75: RA1 = 0;
	bcf	(41/8),(41)&7	;volatile
	line	76
	
l541:	
;WLC-TXR.C: 76: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u127:
	decfsz	((??_main+0)+0),f
	goto	u127
	decfsz	((??_main+0)+0+1),f
	goto	u127
	decfsz	((??_main+0)+0+2),f
	goto	u127
	nop2
opt asmopt_on

	line	79
	
l543:	
;WLC-TXR.C: 79: RB5 = LL;
	btfsc	(main@LL),0
	goto	u31
	goto	u30
	
u31:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(53/8),(53)&7	;volatile
	goto	u44
u30:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7	;volatile
u44:
	line	80
	
l545:	
;WLC-TXR.C: 80: RB6 = UU;
	btfsc	(main@UU),0
	goto	u51
	goto	u50
	
u51:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(54/8),(54)&7	;volatile
	goto	u64
u50:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(54/8),(54)&7	;volatile
u64:
	line	83
	
l547:	
;WLC-TXR.C: 83: RB4 = 0;
	bcf	(52/8),(52)&7	;volatile
	line	84
	
l549:	
;WLC-TXR.C: 84: _delay(1000000);
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

	line	85
	
l551:	
;WLC-TXR.C: 85: RB4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7	;volatile
	line	86
	
l553:	
;WLC-TXR.C: 86: _delay(1000000);
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

	line	89
	
l555:	
;WLC-TXR.C: 89: RB4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7	;volatile
	line	90
	
l557:	
;WLC-TXR.C: 90: _delay(1000000);
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

	line	91
	
l559:	
;WLC-TXR.C: 91: RB4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7	;volatile
	line	92
	
l561:	
;WLC-TXR.C: 92: _delay(1000000);
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

	line	95
	
l563:	
;WLC-TXR.C: 95: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	96
	
l565:	
;WLC-TXR.C: 96: RA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7	;volatile
	line	97
	
l567:	
;WLC-TXR.C: 97: RA1 = 0;
	bcf	(41/8),(41)&7	;volatile
	line	98
;WLC-TXR.C: 98: _delay(1000000);
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

	line	101
	
l569:	
;WLC-TXR.C: 101: for(i = 0; i <= 15; i++)
	clrf	(main@i)
	movlw	(010h)
	subwf	(main@i),w
	skipc
	goto	u71
	goto	u70
u71:
	goto	l573
u70:
	goto	l23
	
l571:	
	goto	l23
	line	102
	
l28:	
	line	103
	
l573:	
;WLC-TXR.C: 102: {
;WLC-TXR.C: 103: _delay(1000000);
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

	line	101
	
l575:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	
l577:	
	movlw	(010h)
	subwf	(main@i),w
	skipc
	goto	u81
	goto	u80
u81:
	goto	l573
u80:
	goto	l23
	
l29:	
	goto	l23
	line	105
	
l30:	
	line	38
	goto	l23
	
l31:	
	line	106
	
l32:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
psect	maintext
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end

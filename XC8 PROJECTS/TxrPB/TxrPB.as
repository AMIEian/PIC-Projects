opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 12136"

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
	FNROOT	_main
	FNCALL	_myisr,_pbisr
	FNCALL	intlevel1,_myisr
	global	intlevel1
	FNROOT	intlevel1
	global	_x
	global	_y
	global	_INTCON
_INTCON	set	0xB
	global	_RB4
_RB4	set	0x34
	global	_PCON
_PCON	set	0x8E
	global	_TRISB
_TRISB	set	0x86
psect	text36,local,class=CODE,delta=2,merge=1
global __ptext36
__ptext36:
	file	"TxrPB.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_x:
       ds      2

_y:
       ds      1

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_pbisr
?_pbisr:	; 0 bytes @ 0x0
	global	??_pbisr
??_pbisr:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_myisr
?_myisr:	; 0 bytes @ 0x0
	ds	1
	global	??_myisr
??_myisr:	; 0 bytes @ 0x1
	ds	4
	global	??_main
??_main:	; 0 bytes @ 0x5
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         3
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      5       8
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
;!Critical Paths under _myisr in COMMON
;!
;!    _myisr->_pbisr
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _myisr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _myisr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _myisr in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 0
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (1) _myisr                                                4     4      0       0
;!                                              1 COMMON     4     4      0
;!                              _pbisr
;! ---------------------------------------------------------------------------------
;! (2) _pbisr                                                1     1      0       0
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!
;! _myisr (ROOT)
;!   _pbisr
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA              80      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      5       8       1       57.1%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       4       2        0.0%
;!BANK0               50      0       0       3        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!ABS                  0      0       8       4        0.0%
;!BITBANK0            50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK2            30      0       0       8        0.0%
;!BANK2               30      0       0       9        0.0%
;!DATA                 0      0       C      10        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 9 in file "C:\XC8 PROJECTS\TxrPB\TxrPB.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
global __pmaintext
__pmaintext:
psect	maintext
	file	"C:\XC8 PROJECTS\TxrPB\TxrPB.c"
	line	9
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2]
	line	10
	
l495:	
;TxrPB.c: 10: PCON = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(142)^080h	;volatile
	line	11
	
l497:	
;TxrPB.c: 11: TRISB = 0x6F;
	movlw	(06Fh)
	movwf	(134)^080h	;volatile
	line	12
	
l499:	
;TxrPB.c: 12: RB4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7	;volatile
	line	13
	
l501:	
;TxrPB.c: 13: INTCON = 0x88;
	movlw	(088h)
	movwf	(11)	;volatile
	line	15
;TxrPB.c: 15: while(1)
	
l17:	
	line	18
# 18 "C:\XC8 PROJECTS\TxrPB\TxrPB.c"
sleep ;GO TO SLEEP MODE ;# 
psect	maintext
	goto	l17
	line	20
	
l18:	
	line	15
	goto	l17
	
l19:	
	line	21
	
l20:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_myisr

;; *************** function _myisr *****************
;; Defined at:
;;		line 25 in file "C:\XC8 PROJECTS\TxrPB\TxrPB.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          4       0       0       0
;;      Totals:         4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_pbisr
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text37,local,class=CODE,delta=2,merge=1
global __ptext37
__ptext37:
psect	text37
	file	"C:\XC8 PROJECTS\TxrPB\TxrPB.c"
	line	25
	global	__size_of_myisr
	__size_of_myisr	equ	__end_of_myisr-_myisr
	
_myisr:	
	opt	stack 6
; Regs used in _myisr: [wreg+status,2+status,0+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_myisr+0)
	movf	fsr0,w
	movwf	(??_myisr+1)
	movf	pclath,w
	movwf	(??_myisr+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_myisr+3)
	ljmp	_myisr
psect	text37
	line	26
	
i1l545:	
;TxrPB.c: 26: pbisr();
	fcall	_pbisr
	line	27
	
i1l23:	
	movf	(??_myisr+3),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(??_myisr+2),w
	movwf	pclath
	movf	(??_myisr+1),w
	movwf	fsr0
	swapf	(??_myisr+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_myisr
	__end_of_myisr:
	signat	_myisr,88
	global	_pbisr

;; *************** function _pbisr *****************
;; Defined at:
;;		line 30 in file "C:\XC8 PROJECTS\TxrPB\TxrPB.c"
;; Parameters:    Size  Location     Type
;;		None
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_myisr
;; This function uses a non-reentrant model
;;
psect	text38,local,class=CODE,delta=2,merge=1
global __ptext38
__ptext38:
psect	text38
	file	"C:\XC8 PROJECTS\TxrPB\TxrPB.c"
	line	30
	global	__size_of_pbisr
	__size_of_pbisr	equ	__end_of_pbisr-_pbisr
	
_pbisr:	
	opt	stack 6
; Regs used in _pbisr: [wreg+status,2+status,0]
	line	31
	
i1l503:	
;TxrPB.c: 31: RB4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7	;volatile
	line	32
	
i1l505:	
;TxrPB.c: 32: x = 0;
	clrf	(_x)
	clrf	(_x+1)
	line	33
	
i1l507:	
;TxrPB.c: 33: y = 0;
	clrf	(_y)
	line	34
;TxrPB.c: 34: while ( y < 1 )
	goto	i1l515
	
i1l27:	
	line	36
	
i1l509:	
;TxrPB.c: 35: {
;TxrPB.c: 36: x++;
	movlw	low(01h)
	addwf	(_x),f
	skipnc
	incf	(_x+1),f
	movlw	high(01h)
	addwf	(_x+1),f
	line	37
	
i1l511:	
;TxrPB.c: 37: if ( x == 0 )
	movf	((_x+1)),w
	iorwf	((_x)),w
	skipz
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l515
u1_20:
	line	39
	
i1l513:	
;TxrPB.c: 38: {
;TxrPB.c: 39: y++;
	movlw	(01h)
	movwf	(??_pbisr+0)+0
	movf	(??_pbisr+0)+0,w
	addwf	(_y),f
	goto	i1l515
	line	40
	
i1l28:	
	goto	i1l515
	line	41
	
i1l26:	
	line	34
	
i1l515:	
	movf	(_y),w
	skipz
	goto	u2_20
	goto	i1l509
u2_20:
	
i1l29:	
	line	42
;TxrPB.c: 40: }
;TxrPB.c: 41: }
;TxrPB.c: 42: RB4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7	;volatile
	line	44
	
i1l517:	
;TxrPB.c: 44: x = 0;
	clrf	(_x)
	clrf	(_x+1)
	line	45
	
i1l519:	
;TxrPB.c: 45: y = 0;
	clrf	(_y)
	line	46
;TxrPB.c: 46: while ( y < 1 )
	goto	i1l527
	
i1l31:	
	line	48
	
i1l521:	
;TxrPB.c: 47: {
;TxrPB.c: 48: x++;
	movlw	low(01h)
	addwf	(_x),f
	skipnc
	incf	(_x+1),f
	movlw	high(01h)
	addwf	(_x+1),f
	line	49
	
i1l523:	
;TxrPB.c: 49: if ( x == 0 )
	movf	((_x+1)),w
	iorwf	((_x)),w
	skipz
	goto	u3_21
	goto	u3_20
u3_21:
	goto	i1l527
u3_20:
	line	51
	
i1l525:	
;TxrPB.c: 50: {
;TxrPB.c: 51: y++;
	movlw	(01h)
	movwf	(??_pbisr+0)+0
	movf	(??_pbisr+0)+0,w
	addwf	(_y),f
	goto	i1l527
	line	52
	
i1l32:	
	goto	i1l527
	line	53
	
i1l30:	
	line	46
	
i1l527:	
	movf	(_y),w
	skipz
	goto	u4_20
	goto	i1l521
u4_20:
	
i1l33:	
	line	55
;TxrPB.c: 52: }
;TxrPB.c: 53: }
;TxrPB.c: 55: RB4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7	;volatile
	line	56
	
i1l529:	
;TxrPB.c: 56: x = 0;
	clrf	(_x)
	clrf	(_x+1)
	line	57
	
i1l531:	
;TxrPB.c: 57: y = 0;
	clrf	(_y)
	line	58
;TxrPB.c: 58: while ( y < 1 )
	goto	i1l539
	
i1l35:	
	line	60
	
i1l533:	
;TxrPB.c: 59: {
;TxrPB.c: 60: x++;
	movlw	low(01h)
	addwf	(_x),f
	skipnc
	incf	(_x+1),f
	movlw	high(01h)
	addwf	(_x+1),f
	line	61
	
i1l535:	
;TxrPB.c: 61: if ( x == 0 )
	movf	((_x+1)),w
	iorwf	((_x)),w
	skipz
	goto	u5_21
	goto	u5_20
u5_21:
	goto	i1l539
u5_20:
	line	63
	
i1l537:	
;TxrPB.c: 62: {
;TxrPB.c: 63: y++;
	movlw	(01h)
	movwf	(??_pbisr+0)+0
	movf	(??_pbisr+0)+0,w
	addwf	(_y),f
	goto	i1l539
	line	64
	
i1l36:	
	goto	i1l539
	line	65
	
i1l34:	
	line	58
	
i1l539:	
	movf	(_y),w
	skipz
	goto	u6_20
	goto	i1l533
u6_20:
	
i1l37:	
	line	66
;TxrPB.c: 64: }
;TxrPB.c: 65: }
;TxrPB.c: 66: RB4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7	;volatile
	line	68
	
i1l541:	
;TxrPB.c: 68: INTCON = 0x88;
	movlw	(088h)
	movwf	(11)	;volatile
	goto	i1l38
	line	70
	
i1l543:	
	line	71
;TxrPB.c: 70: return;
	
i1l38:	
	return
	opt stack 0
GLOBAL	__end_of_pbisr
	__end_of_pbisr:
	signat	_pbisr,88
psect	text39,local,class=CODE,delta=2,merge=1
global __ptext39
__ptext39:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end

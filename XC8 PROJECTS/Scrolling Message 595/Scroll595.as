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
	FNCALL	_main,_Scan_Column
	FNCALL	_main,_Send_Data
	FNROOT	_main
	global	_column
	global	_PORTA
_PORTA	set	0x5
	global	_PORTB
_PORTB	set	0x6
	global	_PORTC
_PORTC	set	0x7
	global	_RB0
_RB0	set	0x30
	global	_RB1
_RB1	set	0x31
	global	_RB2
_RB2	set	0x32
	global	_RC0
_RC0	set	0x38
	global	_RC1
_RC1	set	0x39
	global	_RC2
_RC2	set	0x3A
	global	_ADCON1
_ADCON1	set	0x9F
	global	_TRISA
_TRISA	set	0x85
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
psect	text0,local,class=CODE,delta=2,merge=1
; #config settings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
	line	1794
global __ptext0
__ptext0:	;psect for function _Scan_Column
	file	"Scroll595.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_column:
       ds      1

	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
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
?_Scan_Column:	; 0 bytes @ 0x0
??_Scan_Column:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	global	Send_Data@number
Send_Data@number:	; 2 bytes @ 0x0
	ds	2
??_Send_Data:	; 0 bytes @ 0x2
	global	Send_Data@Flag
Send_Data@Flag:	; 2 bytes @ 0x2
	ds	2
	global	Send_Data@bits
Send_Data@bits:	; 2 bytes @ 0x4
	ds	2
	global	Send_Data@Mask
Send_Data@Mask:	; 2 bytes @ 0x6
	ds	2
??_main:	; 0 bytes @ 0x8
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         1
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      8       9
;!    BANK0            80      0       0
;!    BANK1            32      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_Send_Data
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
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
;! (0) _main                                                 0     0      0     148
;!                        _Scan_Column
;!                          _Send_Data
;! ---------------------------------------------------------------------------------
;! (1) _Send_Data                                            8     6      2     148
;!                                              0 COMMON     8     6      2
;! ---------------------------------------------------------------------------------
;! (1) _Scan_Column                                          1     1      0       0
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Scan_Column
;!   _Send_Data
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA              40      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      8       9       1       64.3%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0       9       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            20      0       0       6        0.0%
;!BANK1               20      0       0       7        0.0%
;!DATA                 0      0       9       8        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 18 in file "E:\Study Material\XC8 PROJECTS\Scrolling Message 595\test.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Scan_Column
;;		_Send_Data
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"E:\Study Material\XC8 PROJECTS\Scrolling Message 595\test.c"
	line	18
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"E:\Study Material\XC8 PROJECTS\Scrolling Message 595\test.c"
	line	18
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	20
	
l544:	
;test.c: 20: ADCON1 = 0x06;
	movlw	(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	22
	
l546:	
;test.c: 22: TRISA = 0x00;
	clrf	(133)^080h	;volatile
	line	23
	
l548:	
;test.c: 23: TRISB = 0x00;
	clrf	(134)^080h	;volatile
	line	24
	
l550:	
;test.c: 24: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	25
	
l552:	
;test.c: 25: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	26
	
l554:	
;test.c: 26: PORTB = 0x00;
	clrf	(6)	;volatile
	line	27
	
l556:	
;test.c: 27: PORTC = 0x00;
	clrf	(7)	;volatile
	goto	l558
	line	29
;test.c: 29: while(1)
	
l37:	
	line	31
	
l558:	
;test.c: 30: {
;test.c: 31: Send_Data(0xFFFF);
	movlw	low(0FFFFh)
	movwf	(Send_Data@number)
	movlw	high(0FFFFh)
	movwf	((Send_Data@number))+1
	fcall	_Send_Data
	line	32
	
l560:	
;test.c: 32: _delay(1);
		opt asmopt_off
	nop
	opt asmopt_on

	line	33
	
l562:	
;test.c: 33: Scan_Column();
	fcall	_Scan_Column
	line	34
	
l564:	
;test.c: 34: _delay(1);
		opt asmopt_off
	nop
	opt asmopt_on

	goto	l558
	line	35
	
l38:	
	line	29
	goto	l558
	
l39:	
	line	36
	
l40:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_Send_Data

;; *************** function _Send_Data *****************
;; Defined at:
;;		line 70 in file "E:\Study Material\XC8 PROJECTS\Scrolling Message 595\test.c"
;; Parameters:    Size  Location     Type
;;  number          2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  Mask            2    6[COMMON] unsigned int 
;;  bits            2    4[COMMON] unsigned short 
;;  Flag            2    2[COMMON] unsigned short 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         2       0       0
;;      Locals:         6       0       0
;;      Temps:          0       0       0
;;      Totals:         8       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	70
global __ptext1
__ptext1:	;psect for function _Send_Data
psect	text1
	file	"E:\Study Material\XC8 PROJECTS\Scrolling Message 595\test.c"
	line	70
	global	__size_of_Send_Data
	__size_of_Send_Data	equ	__end_of_Send_Data-_Send_Data
	
_Send_Data:	
;incstack = 0
	opt	stack 7
; Regs used in _Send_Data: [wreg+status,2+status,0]
	line	74
	
l510:	
;test.c: 72: unsigned short bits, Flag;
;test.c: 73: unsigned int Mask;
;test.c: 74: PORTC = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	76
	
l512:	
;test.c: 76: Mask = 0x0001;
	movlw	low(01h)
	movwf	(Send_Data@Mask)
	movlw	high(01h)
	movwf	((Send_Data@Mask))+1
	line	77
	
l514:	
;test.c: 77: for (bits=0; bits<16; bits++)
	clrf	(Send_Data@bits)
	clrf	(Send_Data@bits+1)
	movlw	high(010h)
	subwf	(Send_Data@bits+1),w
	movlw	low(010h)
	skipnz
	subwf	(Send_Data@bits),w
	skipc
	goto	u11
	goto	u10
u11:
	goto	l518
u10:
	goto	l50
	
l516:	
	goto	l50
	line	78
	
l49:	
	line	79
	
l518:	
;test.c: 78: {
;test.c: 79: Flag = number & Mask;
	movf	(Send_Data@Mask),w
	andwf	(Send_Data@number),w
	movwf	(Send_Data@Flag)
	movf	(Send_Data@Mask+1),w
	andwf	(Send_Data@number+1),w
	movwf	1+(Send_Data@Flag)
	line	80
	
l520:	
;test.c: 80: if(Flag == 0)
	movf	((Send_Data@Flag+1)),w
	iorwf	((Send_Data@Flag)),w
	skipz
	goto	u21
	goto	u20
u21:
	goto	l524
u20:
	line	82
	
l522:	
;test.c: 81: {
;test.c: 82: RC0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7	;volatile
	line	83
;test.c: 83: _delay(1);
		opt asmopt_off
	nop
	opt asmopt_on

	line	84
;test.c: 84: RC1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7	;volatile
	line	85
;test.c: 85: _delay(1);
		opt asmopt_off
	nop
	opt asmopt_on

	line	86
;test.c: 86: RC1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7	;volatile
	goto	l524
	line	87
	
l51:	
	line	88
	
l524:	
;test.c: 87: }
;test.c: 88: if(Flag > 0)
	movf	(Send_Data@Flag+1),w
	iorwf	(Send_Data@Flag),w
	skipnz
	goto	u31
	goto	u30
u31:
	goto	l528
u30:
	line	90
	
l526:	
;test.c: 89: {
;test.c: 90: RC0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7	;volatile
	line	91
;test.c: 91: _delay(1);
		opt asmopt_off
	nop
	opt asmopt_on

	line	92
;test.c: 92: RC1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7	;volatile
	line	93
;test.c: 93: _delay(1);
		opt asmopt_off
	nop
	opt asmopt_on

	line	94
;test.c: 94: RC1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7	;volatile
	goto	l528
	line	95
	
l52:	
	line	96
	
l528:	
;test.c: 95: }
;test.c: 96: Mask = Mask << 1;
	clrc
	rlf	(Send_Data@Mask),w
	movwf	(Send_Data@Mask)
	rlf	(Send_Data@Mask+1),w
	movwf	1+(Send_Data@Mask)
	line	77
	movlw	low(01h)
	addwf	(Send_Data@bits),f
	skipnc
	incf	(Send_Data@bits+1),f
	movlw	high(01h)
	addwf	(Send_Data@bits+1),f
	movlw	high(010h)
	subwf	(Send_Data@bits+1),w
	movlw	low(010h)
	skipnz
	subwf	(Send_Data@bits),w
	skipc
	goto	u41
	goto	u40
u41:
	goto	l518
u40:
	
l50:	
	line	99
;test.c: 97: }
;test.c: 99: RC2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7	;volatile
	line	100
;test.c: 100: _delay(1);
		opt asmopt_off
	nop
	opt asmopt_on

	line	101
;test.c: 101: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7	;volatile
	line	102
	
l53:	
	return
	opt stack 0
GLOBAL	__end_of_Send_Data
	__end_of_Send_Data:
	signat	_Send_Data,4216
	global	_Scan_Column

;; *************** function _Scan_Column *****************
;; Defined at:
;;		line 38 in file "E:\Study Material\XC8 PROJECTS\Scrolling Message 595\test.c"
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
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          1       0       0
;;      Totals:         1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	38
global __ptext2
__ptext2:	;psect for function _Scan_Column
psect	text2
	file	"E:\Study Material\XC8 PROJECTS\Scrolling Message 595\test.c"
	line	38
	global	__size_of_Scan_Column
	__size_of_Scan_Column	equ	__end_of_Scan_Column-_Scan_Column
	
_Scan_Column:	
;incstack = 0
	opt	stack 7
; Regs used in _Scan_Column: [wreg+status,2+status,0]
	line	40
	
l530:	
;test.c: 40: if(column == 0)
	movf	(_column),f
	skipz
	goto	u51
	goto	u50
u51:
	goto	l534
u50:
	line	42
	
l532:	
;test.c: 41: {
;test.c: 42: RB0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	line	43
;test.c: 43: _delay(1);
		opt asmopt_off
	nop
	opt asmopt_on

	line	44
;test.c: 44: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7	;volatile
	line	45
;test.c: 45: _delay(1);
		opt asmopt_off
	nop
	opt asmopt_on

	line	46
;test.c: 46: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7	;volatile
	line	47
;test.c: 47: _delay(1);
		opt asmopt_off
	nop
	opt asmopt_on

	line	49
;test.c: 49: RB2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7	;volatile
	line	50
;test.c: 50: _delay(1);
		opt asmopt_off
	nop
	opt asmopt_on

	line	51
;test.c: 51: RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7	;volatile
	goto	l534
	line	52
	
l43:	
	line	53
	
l534:	
;test.c: 52: }
;test.c: 53: if(column != 0)
	movf	(_column),w
	skipz
	goto	u60
	goto	l538
u60:
	line	55
	
l536:	
;test.c: 54: {
;test.c: 55: RB0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	line	56
;test.c: 56: _delay(1);
		opt asmopt_off
	nop
	opt asmopt_on

	line	57
;test.c: 57: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7	;volatile
	line	58
;test.c: 58: _delay(1);
		opt asmopt_off
	nop
	opt asmopt_on

	line	59
;test.c: 59: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7	;volatile
	line	60
;test.c: 60: _delay(1);
		opt asmopt_off
	nop
	opt asmopt_on

	line	62
;test.c: 62: RB2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7	;volatile
	line	63
;test.c: 63: _delay(1);
		opt asmopt_off
	nop
	opt asmopt_on

	line	64
;test.c: 64: RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7	;volatile
	goto	l538
	line	65
	
l44:	
	line	66
	
l538:	
;test.c: 65: }
;test.c: 66: column++;
	movlw	(01h)
	movwf	(??_Scan_Column+0)+0
	movf	(??_Scan_Column+0)+0,w
	addwf	(_column),f
	line	67
	
l540:	
;test.c: 67: if(column > 39)
	movlw	(028h)
	subwf	(_column),w
	skipc
	goto	u71
	goto	u70
u71:
	goto	l46
u70:
	line	68
	
l542:	
;test.c: 68: column = 0;
	clrf	(_column)
	goto	l46
	
l45:	
	line	69
	
l46:	
	return
	opt stack 0
GLOBAL	__end_of_Scan_Column
	__end_of_Scan_Column:
	signat	_Scan_Column,88
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

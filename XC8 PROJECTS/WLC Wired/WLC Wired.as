opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 58300"

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
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PCLATH equ 0Ah ;# 
# 350 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
INTCON equ 0Bh ;# 
# 427 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PIR1 equ 0Ch ;# 
# 477 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PIR2 equ 0Dh ;# 
# 497 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TMR1 equ 0Eh ;# 
# 503 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TMR1L equ 0Eh ;# 
# 509 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TMR1H equ 0Fh ;# 
# 515 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
T1CON equ 010h ;# 
# 591 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TMR2 equ 011h ;# 
# 597 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
T2CON equ 012h ;# 
# 667 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
CCPR1 equ 015h ;# 
# 673 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
CCPR1L equ 015h ;# 
# 679 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
CCPR1H equ 016h ;# 
# 685 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
CCP1CON equ 017h ;# 
# 742 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
RCSTA equ 018h ;# 
# 836 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TXREG equ 019h ;# 
# 842 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
RCREG equ 01Ah ;# 
# 848 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
ADRESH equ 01Eh ;# 
# 854 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
ADCON0 equ 01Fh ;# 
# 949 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
OPTION_REG equ 081h ;# 
# 1018 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TRISA equ 085h ;# 
# 1067 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TRISB equ 086h ;# 
# 1128 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TRISC equ 087h ;# 
# 1189 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PIE1 equ 08Ch ;# 
# 1239 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PIE2 equ 08Dh ;# 
# 1259 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PCON equ 08Eh ;# 
# 1292 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
PR2 equ 092h ;# 
# 1298 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
TXSTA equ 098h ;# 
# 1378 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
SPBRG equ 099h ;# 
# 1384 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
ADRESL equ 09Eh ;# 
# 1390 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
ADCON1 equ 09Fh ;# 
# 1442 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
EEDATA equ 010Ch ;# 
# 1448 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
EEADR equ 010Dh ;# 
# 1454 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
EEDATH equ 010Eh ;# 
# 1460 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
EEADRH equ 010Fh ;# 
# 1466 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
EECON1 equ 018Ch ;# 
# 1510 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
EECON2 equ 018Dh ;# 
	FNCALL	_main,_level_check
	FNROOT	_main
	global	_count
	global	_dry_run
	global	_ll
	global	_lp_flag
	global	_lu
	global	_motor_flag
	global	_ul
	global	_uu
	global	_PORTA
_PORTA	set	0x5
	global	_PORTB
_PORTB	set	0x6
	global	_PORTC
_PORTC	set	0x7
	global	_RA1
_RA1	set	0x29
	global	_RA2
_RA2	set	0x2A
	global	_RA3
_RA3	set	0x2B
	global	_RA5
_RA5	set	0x2D
	global	_RB1
_RB1	set	0x31
	global	_RB2
_RB2	set	0x32
	global	_RB3
_RB3	set	0x33
	global	_RB4
_RB4	set	0x34
	global	_RC4
_RC4	set	0x3C
	global	_RC5
_RC5	set	0x3D
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
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic16f870.h"
	line	1794
global __ptext0
__ptext0:	;psect for function _level_check
	file	"WLC Wired.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_count:
       ds      1

_dry_run:
       ds      1

_ll:
       ds      1

_lp_flag:
       ds      1

_lu:
       ds      1

_motor_flag:
       ds      1

_ul:
       ds      1

_uu:
       ds      1

	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
	clrf	((__pbssCOMMON)+5)&07Fh
	clrf	((__pbssCOMMON)+6)&07Fh
	clrf	((__pbssCOMMON)+7)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
??_level_check:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_level_check:	; 1 bytes @ 0x0
	ds	1
??_main:	; 0 bytes @ 0x1
	ds	3
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         8
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      4      12
;!    BANK0            80      0       0
;!    BANK1            32      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_level_check
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
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
;! (0) _main                                                 3     3      0       0
;!                                              1 COMMON     3     3      0
;!                        _level_check
;! ---------------------------------------------------------------------------------
;! (1) _level_check                                          1     1      0       0
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _level_check
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA              40      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      4       C       1       85.7%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0       C       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            20      0       0       6        0.0%
;!BANK1               20      0       0       7        0.0%
;!DATA                 0      0       C       8        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 15 in file "E:\Study Material\XC8 PROJECTS\WLC Wired\WLC Wired.C"
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
;;      Temps:          3       0       0
;;      Totals:         3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_level_check
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"E:\Study Material\XC8 PROJECTS\WLC Wired\WLC Wired.C"
	line	15
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"E:\Study Material\XC8 PROJECTS\WLC Wired\WLC Wired.C"
	line	15
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	17
	
l652:	
;WLC Wired.C: 17: ADCON1 = 0x06;
	movlw	(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	18
	
l654:	
;WLC Wired.C: 18: TRISA = 0x00;
	clrf	(133)^080h	;volatile
	line	19
	
l656:	
;WLC Wired.C: 19: TRISB = 0x01;
	movlw	(01h)
	movwf	(134)^080h	;volatile
	line	20
;WLC Wired.C: 20: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	22
;WLC Wired.C: 22: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	23
;WLC Wired.C: 23: PORTA = 0x00;
	clrf	(5)	;volatile
	line	24
;WLC Wired.C: 24: PORTC = 0x00;
	clrf	(7)	;volatile
	line	27
	
l658:	
;WLC Wired.C: 27: PORTB = 0xFE;
	movlw	(0FEh)
	movwf	(6)	;volatile
	line	28
	
l660:	
;WLC Wired.C: 28: _delay(1000000);
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

	line	29
;WLC Wired.C: 29: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	30
	
l662:	
;WLC Wired.C: 30: _delay(1000000);
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

	line	31
	
l664:	
;WLC Wired.C: 31: PORTB = 0xFE;
	movlw	(0FEh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	32
	
l666:	
;WLC Wired.C: 32: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
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

	line	33
	
l668:	
;WLC Wired.C: 33: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	34
;WLC Wired.C: 34: _delay(1000000);
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

	line	35
;WLC Wired.C: 35: PORTB = 0xFE;
	movlw	(0FEh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	36
;WLC Wired.C: 36: _delay(1000000);
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

	line	37
	
l670:	
;WLC Wired.C: 37: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	38
	
l672:	
;WLC Wired.C: 38: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
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

	line	39
	
l674:	
;WLC Wired.C: 39: PORTB = 0xFE;
	movlw	(0FEh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	40
	
l676:	
;WLC Wired.C: 40: _delay(1000000);
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

	line	41
;WLC Wired.C: 41: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	42
	
l678:	
;WLC Wired.C: 42: _delay(1000000);
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

	line	43
	
l680:	
;WLC Wired.C: 43: PORTB = 0xFE;
	movlw	(0FEh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	44
	
l682:	
;WLC Wired.C: 44: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u297:
	decfsz	((??_main+0)+0),f
	goto	u297
	decfsz	((??_main+0)+0+1),f
	goto	u297
	decfsz	((??_main+0)+0+2),f
	goto	u297
	nop2
opt asmopt_on

	line	45
	
l684:	
;WLC Wired.C: 45: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	46
;WLC Wired.C: 46: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u307:
	decfsz	((??_main+0)+0),f
	goto	u307
	decfsz	((??_main+0)+0+1),f
	goto	u307
	decfsz	((??_main+0)+0+2),f
	goto	u307
	nop2
opt asmopt_on

	goto	l686
	line	48
;WLC Wired.C: 48: while(1)
	
l57:	
	line	50
	
l686:	
;WLC Wired.C: 49: {
;WLC Wired.C: 50: if( level_check() == 1 )
	fcall	_level_check
	xorlw	01h
	skipz
	goto	u161
	goto	u160
u161:
	goto	l692
u160:
	line	53
	
l688:	
;WLC Wired.C: 51: {
;WLC Wired.C: 53: if( lp_flag == 0 )
	movf	(_lp_flag),f
	skipz
	goto	u171
	goto	u170
u171:
	goto	l60
u170:
	line	55
	
l690:	
;WLC Wired.C: 54: {
;WLC Wired.C: 55: RC4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(60/8),(60)&7	;volatile
	line	56
;WLC Wired.C: 56: lp_flag = 1;
	clrf	(_lp_flag)
	incf	(_lp_flag),f
	line	57
;WLC Wired.C: 57: motor_flag = 1;
	clrf	(_motor_flag)
	incf	(_motor_flag),f
	line	58
;WLC Wired.C: 58: RC5 = 1;
	bsf	(61/8),(61)&7	;volatile
	line	59
;WLC Wired.C: 59: dry_run = 1;
	clrf	(_dry_run)
	incf	(_dry_run),f
	goto	l60
	line	60
	
l59:	
	line	61
;WLC Wired.C: 60: }
;WLC Wired.C: 61: }
	goto	l60
	line	63
	
l58:	
	line	66
	
l692:	
;WLC Wired.C: 63: else
;WLC Wired.C: 64: {
;WLC Wired.C: 66: if( lp_flag == 1 )
	movf	(_lp_flag),w
	xorlw	01h
	skipz
	goto	u181
	goto	u180
u181:
	goto	l60
u180:
	line	68
	
l694:	
;WLC Wired.C: 67: {
;WLC Wired.C: 68: RC4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7	;volatile
	line	69
	
l696:	
;WLC Wired.C: 69: lp_flag = 0;
	clrf	(_lp_flag)
	line	70
;WLC Wired.C: 70: motor_flag = 0;
	clrf	(_motor_flag)
	line	71
	
l698:	
;WLC Wired.C: 71: RC5 = 0;
	bcf	(61/8),(61)&7	;volatile
	goto	l60
	line	72
	
l61:	
	line	73
	
l60:	
	line	75
;WLC Wired.C: 72: }
;WLC Wired.C: 73: }
;WLC Wired.C: 75: for( count = 0; count < 15; count++ )
	clrf	(_count)
	
l700:	
	movlw	(0Fh)
	subwf	(_count),w
	skipc
	goto	u191
	goto	u190
u191:
	goto	l704
u190:
	goto	l686
	
l702:	
	goto	l686
	line	76
	
l62:	
	line	77
	
l704:	
;WLC Wired.C: 76: {
;WLC Wired.C: 77: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u317:
	decfsz	((??_main+0)+0),f
	goto	u317
	decfsz	((??_main+0)+0+1),f
	goto	u317
	decfsz	((??_main+0)+0+2),f
	goto	u317
	nop2
opt asmopt_on

	line	75
	
l706:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_count),f
	
l708:	
	movlw	(0Fh)
	subwf	(_count),w
	skipc
	goto	u201
	goto	u200
u201:
	goto	l704
u200:
	goto	l686
	
l63:	
	goto	l686
	line	79
	
l64:	
	line	48
	goto	l686
	
l65:	
	line	80
	
l66:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_level_check

;; *************** function _level_check *****************
;; Defined at:
;;		line 82 in file "E:\Study Material\XC8 PROJECTS\WLC Wired\WLC Wired.C"
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
psect	text1,local,class=CODE,delta=2,merge=1
	line	82
global __ptext1
__ptext1:	;psect for function _level_check
psect	text1
	file	"E:\Study Material\XC8 PROJECTS\WLC Wired\WLC Wired.C"
	line	82
	global	__size_of_level_check
	__size_of_level_check	equ	__end_of_level_check-_level_check
	
_level_check:	
;incstack = 0
	opt	stack 7
; Regs used in _level_check: [wreg+status,2+status,0]
	line	85
	
l544:	
;WLC Wired.C: 85: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	86
;WLC Wired.C: 86: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	88
	
l546:	
;WLC Wired.C: 88: TRISA = 0x04;
	movlw	(04h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	89
	
l548:	
;WLC Wired.C: 89: PORTA = 0xFB;
	movlw	(0FBh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	90
	
l550:	
;WLC Wired.C: 90: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_level_check+0)+0,f
u327:
	nop
decfsz	(??_level_check+0)+0,f
	goto	u327
	nop2	;nop
	nop
opt asmopt_on

	line	93
	
l552:	
;WLC Wired.C: 93: if( RA2 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(42/8),(42)&7	;volatile
	goto	u11
	goto	u10
u11:
	goto	l560
u10:
	line	95
	
l554:	
;WLC Wired.C: 94: {
;WLC Wired.C: 95: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_level_check+0)+0,f
u337:
	nop
decfsz	(??_level_check+0)+0,f
	goto	u337
	nop2	;nop
	nop
opt asmopt_on

	line	96
	
l556:	
;WLC Wired.C: 96: if( RA2 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(42/8),(42)&7	;volatile
	goto	u21
	goto	u20
u21:
	goto	l71
u20:
	line	98
	
l558:	
;WLC Wired.C: 97: {
;WLC Wired.C: 98: ul = 1;
	clrf	(_ul)
	incf	(_ul),f
	line	99
;WLC Wired.C: 99: RB2 = 1;
	bsf	(50/8),(50)&7	;volatile
	goto	l71
	line	100
	
l70:	
	line	101
;WLC Wired.C: 100: }
;WLC Wired.C: 101: }
	goto	l71
	line	102
	
l69:	
	line	104
	
l560:	
;WLC Wired.C: 102: else
;WLC Wired.C: 103: {
;WLC Wired.C: 104: ul = 0;
	clrf	(_ul)
	line	105
	
l562:	
;WLC Wired.C: 105: RB2 = 0;
	bcf	(50/8),(50)&7	;volatile
	line	106
	
l71:	
	line	109
;WLC Wired.C: 106: }
;WLC Wired.C: 109: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	110
;WLC Wired.C: 110: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	112
	
l564:	
;WLC Wired.C: 112: TRISA = 0x02;
	movlw	(02h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	113
	
l566:	
;WLC Wired.C: 113: PORTA = 0xFD;
	movlw	(0FDh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	114
	
l568:	
;WLC Wired.C: 114: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_level_check+0)+0,f
u347:
	nop
decfsz	(??_level_check+0)+0,f
	goto	u347
	nop2	;nop
	nop
opt asmopt_on

	line	116
	
l570:	
;WLC Wired.C: 116: if( RA1 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(41/8),(41)&7	;volatile
	goto	u31
	goto	u30
u31:
	goto	l578
u30:
	line	118
	
l572:	
;WLC Wired.C: 117: {
;WLC Wired.C: 118: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_level_check+0)+0,f
u357:
	nop
decfsz	(??_level_check+0)+0,f
	goto	u357
	nop2	;nop
	nop
opt asmopt_on

	line	119
	
l574:	
;WLC Wired.C: 119: if( RA1 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(41/8),(41)&7	;volatile
	goto	u41
	goto	u40
u41:
	goto	l74
u40:
	line	121
	
l576:	
;WLC Wired.C: 120: {
;WLC Wired.C: 121: uu = 1;
	clrf	(_uu)
	incf	(_uu),f
	line	122
;WLC Wired.C: 122: RB1 = 1;
	bsf	(49/8),(49)&7	;volatile
	goto	l74
	line	123
	
l73:	
	line	124
;WLC Wired.C: 123: }
;WLC Wired.C: 124: }
	goto	l74
	line	125
	
l72:	
	line	127
	
l578:	
;WLC Wired.C: 125: else
;WLC Wired.C: 126: {
;WLC Wired.C: 127: uu = 0;
	clrf	(_uu)
	line	128
	
l580:	
;WLC Wired.C: 128: RB1 = 0;
	bcf	(49/8),(49)&7	;volatile
	line	129
	
l74:	
	line	132
;WLC Wired.C: 129: }
;WLC Wired.C: 132: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	133
;WLC Wired.C: 133: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	135
	
l582:	
;WLC Wired.C: 135: TRISA = 0x20;
	movlw	(020h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	136
	
l584:	
;WLC Wired.C: 136: PORTA = 0xDF;
	movlw	(0DFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	137
	
l586:	
;WLC Wired.C: 137: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_level_check+0)+0,f
u367:
	nop
decfsz	(??_level_check+0)+0,f
	goto	u367
	nop2	;nop
	nop
opt asmopt_on

	line	139
	
l588:	
;WLC Wired.C: 139: if( RA5 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(45/8),(45)&7	;volatile
	goto	u51
	goto	u50
u51:
	goto	l596
u50:
	line	141
	
l590:	
;WLC Wired.C: 140: {
;WLC Wired.C: 141: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_level_check+0)+0,f
u377:
	nop
decfsz	(??_level_check+0)+0,f
	goto	u377
	nop2	;nop
	nop
opt asmopt_on

	line	142
	
l592:	
;WLC Wired.C: 142: if( RA5 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(45/8),(45)&7	;volatile
	goto	u61
	goto	u60
u61:
	goto	l77
u60:
	line	144
	
l594:	
;WLC Wired.C: 143: {
;WLC Wired.C: 144: ll = 1;
	clrf	(_ll)
	incf	(_ll),f
	line	145
;WLC Wired.C: 145: RB4 = 1;
	bsf	(52/8),(52)&7	;volatile
	goto	l77
	line	146
	
l76:	
	line	147
;WLC Wired.C: 146: }
;WLC Wired.C: 147: }
	goto	l77
	line	148
	
l75:	
	line	150
	
l596:	
;WLC Wired.C: 148: else
;WLC Wired.C: 149: {
;WLC Wired.C: 150: ll = 0;
	clrf	(_ll)
	line	151
	
l598:	
;WLC Wired.C: 151: RB4 = 0;
	bcf	(52/8),(52)&7	;volatile
	line	152
	
l77:	
	line	155
;WLC Wired.C: 152: }
;WLC Wired.C: 155: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	156
;WLC Wired.C: 156: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	158
	
l600:	
;WLC Wired.C: 158: TRISA = 0x08;
	movlw	(08h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	159
	
l602:	
;WLC Wired.C: 159: PORTA = 0xF7;
	movlw	(0F7h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	160
	
l604:	
;WLC Wired.C: 160: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_level_check+0)+0,f
u387:
	nop
decfsz	(??_level_check+0)+0,f
	goto	u387
	nop2	;nop
	nop
opt asmopt_on

	line	162
	
l606:	
;WLC Wired.C: 162: if( RA3 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(43/8),(43)&7	;volatile
	goto	u71
	goto	u70
u71:
	goto	l614
u70:
	line	164
	
l608:	
;WLC Wired.C: 163: {
;WLC Wired.C: 164: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_level_check+0)+0,f
u397:
	nop
decfsz	(??_level_check+0)+0,f
	goto	u397
	nop2	;nop
	nop
opt asmopt_on

	line	165
	
l610:	
;WLC Wired.C: 165: if( RA3 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(43/8),(43)&7	;volatile
	goto	u81
	goto	u80
u81:
	goto	l80
u80:
	line	167
	
l612:	
;WLC Wired.C: 166: {
;WLC Wired.C: 167: lu = 1;
	clrf	(_lu)
	incf	(_lu),f
	line	168
;WLC Wired.C: 168: RB3 = 1;
	bsf	(51/8),(51)&7	;volatile
	goto	l80
	line	169
	
l79:	
	line	170
;WLC Wired.C: 169: }
;WLC Wired.C: 170: }
	goto	l80
	line	171
	
l78:	
	line	173
	
l614:	
;WLC Wired.C: 171: else
;WLC Wired.C: 172: {
;WLC Wired.C: 173: lu = 0;
	clrf	(_lu)
	line	174
	
l616:	
;WLC Wired.C: 174: RB3 = 0;
	bcf	(51/8),(51)&7	;volatile
	line	175
	
l80:	
	line	178
;WLC Wired.C: 175: }
;WLC Wired.C: 178: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	179
;WLC Wired.C: 179: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	181
	
l618:	
;WLC Wired.C: 181: if( motor_flag == 1 )
	movf	(_motor_flag),w
	xorlw	01h
	skipz
	goto	u91
	goto	u90
u91:
	goto	l634
u90:
	line	183
	
l620:	
;WLC Wired.C: 182: {
;WLC Wired.C: 183: if( uu == 0 && ll == 1 )
	movf	(_uu),f
	skipz
	goto	u101
	goto	u100
u101:
	goto	l630
u100:
	
l622:	
	movf	(_ll),w
	xorlw	01h
	skipz
	goto	u111
	goto	u110
u111:
	goto	l630
u110:
	line	185
	
l624:	
;WLC Wired.C: 184: {
;WLC Wired.C: 185: return 1;
	movlw	(01h)
	goto	l83
	
l626:	
	goto	l83
	line	186
	
l628:	
;WLC Wired.C: 186: }
	goto	l83
	line	187
	
l82:	
	line	189
	
l630:	
;WLC Wired.C: 187: else
;WLC Wired.C: 188: {
;WLC Wired.C: 189: return 0;
	movlw	(0)
	goto	l83
	
l632:	
	goto	l83
	line	190
	
l84:	
	line	191
;WLC Wired.C: 190: }
;WLC Wired.C: 191: }
	goto	l83
	line	192
	
l81:	
	line	194
	
l634:	
;WLC Wired.C: 192: else
;WLC Wired.C: 193: {
;WLC Wired.C: 194: if( (uu == 0 && ul == 0) && (lu == 1 && ll == 1) )
	movf	(_uu),f
	skipz
	goto	u121
	goto	u120
u121:
	goto	l648
u120:
	
l636:	
	movf	(_ul),f
	skipz
	goto	u131
	goto	u130
u131:
	goto	l648
u130:
	
l638:	
	movf	(_lu),w
	xorlw	01h
	skipz
	goto	u141
	goto	u140
u141:
	goto	l648
u140:
	
l640:	
	movf	(_ll),w
	xorlw	01h
	skipz
	goto	u151
	goto	u150
u151:
	goto	l648
u150:
	line	196
	
l642:	
;WLC Wired.C: 195: {
;WLC Wired.C: 196: return 1;
	movlw	(01h)
	goto	l83
	
l644:	
	goto	l83
	line	197
	
l646:	
;WLC Wired.C: 197: }
	goto	l83
	line	198
	
l86:	
	line	200
	
l648:	
;WLC Wired.C: 198: else
;WLC Wired.C: 199: {
;WLC Wired.C: 200: return 0;
	movlw	(0)
	goto	l83
	
l650:	
	goto	l83
	line	201
	
l87:	
	goto	l83
	line	202
	
l85:	
	line	203
	
l83:	
	return
	opt stack 0
GLOBAL	__end_of_level_check
	__end_of_level_check:
	signat	_level_check,89
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

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
	FNROOT	_main
	FNCALL	intlevel1,_Tx_Received
	global	intlevel1
	FNROOT	intlevel1
	global	_count
	global	_dry_run
	global	_ll
	global	_lp_flag
	global	_txr_not_received
	global	_ul
	global	_uu
	global	_level_check
	global	_lu
	global	_motor_flag
	global	_INTCON
_INTCON	set	0xB
	global	_PORTA
_PORTA	set	0x5
	global	_PORTB
_PORTB	set	0x6
	global	_PORTC
_PORTC	set	0x7
	global	_INTF
_INTF	set	0x59
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
	global	_RB7
_RB7	set	0x37
	global	_RC4
_RC4	set	0x3C
	global	_RC5
_RC5	set	0x3D
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
psect	text48,local,class=CODE,delta=2,merge=1
global __ptext48
__ptext48:	;psect for function _Tx_Received
; #config settings
	file	"WLC870.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1
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

_txr_not_received:
       ds      1

_ul:
       ds      1

_uu:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_level_check:
       ds      1

_lu:
       ds      1

_motor_flag:
       ds      1

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
	clrf	((__pbssCOMMON)+5)&07Fh
	clrf	((__pbssCOMMON)+6)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
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
?_Tx_Received:	; 0 bytes @ 0x0
??_Tx_Received:	; 0 bytes @ 0x0
	ds	7
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
??_main:	; 0 bytes @ 0x0
	ds	3
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         10
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7      14
;!    BANK0            80      3       6
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
;!Critical Paths under _Tx_Received in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
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
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 0
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (1) _Tx_Received                                          7     7      0       0
;!                                              0 COMMON     7     7      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!
;! _Tx_Received (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA              40      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      7       E       1      100.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0      14       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      3       6       5        7.5%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            20      0       0       6        0.0%
;!BANK1               20      0       0       7        0.0%
;!DATA                 0      0      14       8        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 15 in file "C:\XC8 PROJECTS\WLC 1PH WITHOUT TRIP\WLC.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\XC8 PROJECTS\WLC 1PH WITHOUT TRIP\WLC.C"
	line	15
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0]
	line	16
	
l723:	
;WLC.C: 16: ADCON1 = 0x06;
	movlw	(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	17
	
l725:	
;WLC.C: 17: TRISA = 0x00;
	clrf	(133)^080h	;volatile
	line	18
	
l727:	
;WLC.C: 18: TRISB = 0x01;
	movlw	(01h)
	movwf	(134)^080h	;volatile
	line	19
;WLC.C: 19: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	21
	
l729:	
;WLC.C: 21: OPTION_REG = 0xC0;
	movlw	(0C0h)
	movwf	(129)^080h	;volatile
	line	22
	
l731:	
;WLC.C: 22: INTCON = 0x90;
	movlw	(090h)
	movwf	(11)	;volatile
	line	24
;WLC.C: 24: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	25
;WLC.C: 25: PORTA = 0x00;
	clrf	(5)	;volatile
	line	26
;WLC.C: 26: PORTC = 0x00;
	clrf	(7)	;volatile
	line	29
	
l733:	
;WLC.C: 29: PORTB = 0xFE;
	movlw	(0FEh)
	movwf	(6)	;volatile
	line	30
	
l735:	
;WLC.C: 30: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u517:
	decfsz	((??_main+0)+0),f
	goto	u517
	decfsz	((??_main+0)+0+1),f
	goto	u517
	decfsz	((??_main+0)+0+2),f
	goto	u517
	nop2
opt asmopt_on

	line	31
;WLC.C: 31: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	32
	
l737:	
;WLC.C: 32: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u527:
	decfsz	((??_main+0)+0),f
	goto	u527
	decfsz	((??_main+0)+0+1),f
	goto	u527
	decfsz	((??_main+0)+0+2),f
	goto	u527
	nop2
opt asmopt_on

	line	33
	
l739:	
;WLC.C: 33: PORTB = 0xFE;
	movlw	(0FEh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	34
	
l741:	
;WLC.C: 34: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u537:
	decfsz	((??_main+0)+0),f
	goto	u537
	decfsz	((??_main+0)+0+1),f
	goto	u537
	decfsz	((??_main+0)+0+2),f
	goto	u537
	nop2
opt asmopt_on

	line	35
	
l743:	
;WLC.C: 35: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	36
;WLC.C: 36: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u547:
	decfsz	((??_main+0)+0),f
	goto	u547
	decfsz	((??_main+0)+0+1),f
	goto	u547
	decfsz	((??_main+0)+0+2),f
	goto	u547
	nop2
opt asmopt_on

	line	37
;WLC.C: 37: PORTB = 0xFE;
	movlw	(0FEh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	38
;WLC.C: 38: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u557:
	decfsz	((??_main+0)+0),f
	goto	u557
	decfsz	((??_main+0)+0+1),f
	goto	u557
	decfsz	((??_main+0)+0+2),f
	goto	u557
	nop2
opt asmopt_on

	line	39
	
l745:	
;WLC.C: 39: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	40
	
l747:	
;WLC.C: 40: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u567:
	decfsz	((??_main+0)+0),f
	goto	u567
	decfsz	((??_main+0)+0+1),f
	goto	u567
	decfsz	((??_main+0)+0+2),f
	goto	u567
	nop2
opt asmopt_on

	line	41
	
l749:	
;WLC.C: 41: PORTB = 0xFE;
	movlw	(0FEh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	42
	
l751:	
;WLC.C: 42: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u577:
	decfsz	((??_main+0)+0),f
	goto	u577
	decfsz	((??_main+0)+0+1),f
	goto	u577
	decfsz	((??_main+0)+0+2),f
	goto	u577
	nop2
opt asmopt_on

	line	43
;WLC.C: 43: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	44
	
l753:	
;WLC.C: 44: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u587:
	decfsz	((??_main+0)+0),f
	goto	u587
	decfsz	((??_main+0)+0+1),f
	goto	u587
	decfsz	((??_main+0)+0+2),f
	goto	u587
	nop2
opt asmopt_on

	line	45
	
l755:	
;WLC.C: 45: PORTB = 0xFE;
	movlw	(0FEh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	46
	
l757:	
;WLC.C: 46: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u597:
	decfsz	((??_main+0)+0),f
	goto	u597
	decfsz	((??_main+0)+0+1),f
	goto	u597
	decfsz	((??_main+0)+0+2),f
	goto	u597
	nop2
opt asmopt_on

	line	47
	
l759:	
;WLC.C: 47: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	48
;WLC.C: 48: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u607:
	decfsz	((??_main+0)+0),f
	goto	u607
	decfsz	((??_main+0)+0+1),f
	goto	u607
	decfsz	((??_main+0)+0+2),f
	goto	u607
	nop2
opt asmopt_on

	line	50
;WLC.C: 50: while(1)
	
l67:	
	line	52
;WLC.C: 51: {
;WLC.C: 52: if( motor_flag == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_motor_flag),w
	xorlw	01h
	skipz
	goto	u261
	goto	u260
u261:
	goto	l769
u260:
	line	54
	
l761:	
;WLC.C: 53: {
;WLC.C: 54: txr_not_received ++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_txr_not_received),f
	line	56
	
l763:	
;WLC.C: 56: if( uu == 0 && ll == 1 )
	movf	(_uu),f
	skipz
	goto	u271
	goto	u270
u271:
	goto	l69
u270:
	
l765:	
	movf	(_ll),w
	xorlw	01h
	skipz
	goto	u281
	goto	u280
u281:
	goto	l69
u280:
	line	58
	
l767:	
;WLC.C: 57: {
;WLC.C: 58: level_check = 1;
	clrf	(_level_check)
	incf	(_level_check),f
	line	59
;WLC.C: 59: }
	goto	l779
	line	60
	
l69:	
	line	62
;WLC.C: 60: else
;WLC.C: 61: {
;WLC.C: 62: level_check = 0;
	clrf	(_level_check)
	goto	l779
	line	63
	
l70:	
	line	64
;WLC.C: 63: }
;WLC.C: 64: }
	goto	l779
	line	65
	
l68:	
	line	67
	
l769:	
;WLC.C: 65: else
;WLC.C: 66: {
;WLC.C: 67: if( (uu == 0 && ul == 0) && (lu == 1 && ll == 1) )
	movf	(_uu),f
	skipz
	goto	u291
	goto	u290
u291:
	goto	l72
u290:
	
l771:	
	movf	(_ul),f
	skipz
	goto	u301
	goto	u300
u301:
	goto	l72
u300:
	
l773:	
	movf	(_lu),w
	xorlw	01h
	skipz
	goto	u311
	goto	u310
u311:
	goto	l72
u310:
	
l775:	
	movf	(_ll),w
	xorlw	01h
	skipz
	goto	u321
	goto	u320
u321:
	goto	l72
u320:
	line	69
	
l777:	
;WLC.C: 68: {
;WLC.C: 69: level_check = 1;
	clrf	(_level_check)
	incf	(_level_check),f
	line	70
;WLC.C: 70: }
	goto	l779
	line	71
	
l72:	
	line	73
;WLC.C: 71: else
;WLC.C: 72: {
;WLC.C: 73: level_check = 0;
	clrf	(_level_check)
	goto	l779
	line	74
	
l73:	
	goto	l779
	line	75
	
l71:	
	line	77
	
l779:	
;WLC.C: 74: }
;WLC.C: 75: }
;WLC.C: 77: if( level_check == 1 && txr_not_received <= 20 )
	movf	(_level_check),w
	xorlw	01h
	skipz
	goto	u331
	goto	u330
u331:
	goto	l787
u330:
	
l781:	
	movlw	(015h)
	subwf	(_txr_not_received),w
	skipnc
	goto	u341
	goto	u340
u341:
	goto	l787
u340:
	line	80
	
l783:	
;WLC.C: 78: {
;WLC.C: 80: if( lp_flag == 0 )
	movf	(_lp_flag),f
	skipz
	goto	u351
	goto	u350
u351:
	goto	l76
u350:
	line	82
	
l785:	
;WLC.C: 81: {
;WLC.C: 82: RC4 = 1;
	bsf	(60/8),(60)&7	;volatile
	line	83
;WLC.C: 83: lp_flag = 1;
	clrf	(_lp_flag)
	incf	(_lp_flag),f
	line	84
;WLC.C: 84: motor_flag = 1;
	clrf	(_motor_flag)
	incf	(_motor_flag),f
	line	85
;WLC.C: 85: RC5 = 1;
	bsf	(61/8),(61)&7	;volatile
	line	86
;WLC.C: 86: dry_run = 0;
	clrf	(_dry_run)
	goto	l76
	line	87
	
l75:	
	line	88
;WLC.C: 87: }
;WLC.C: 88: }
	goto	l76
	line	90
	
l74:	
	line	93
	
l787:	
;WLC.C: 90: else
;WLC.C: 91: {
;WLC.C: 93: if( lp_flag == 1 )
	movf	(_lp_flag),w
	xorlw	01h
	skipz
	goto	u361
	goto	u360
u361:
	goto	l76
u360:
	line	95
	
l789:	
;WLC.C: 94: {
;WLC.C: 95: RC4 = 0;
	bcf	(60/8),(60)&7	;volatile
	line	96
;WLC.C: 96: lp_flag = 0;
	clrf	(_lp_flag)
	line	97
;WLC.C: 97: motor_flag = 0;
	clrf	(_motor_flag)
	line	98
;WLC.C: 98: RC5 = 0;
	bcf	(61/8),(61)&7	;volatile
	goto	l76
	line	99
	
l77:	
	line	100
	
l76:	
	line	102
;WLC.C: 99: }
;WLC.C: 100: }
;WLC.C: 102: for( count = 0; count < 15; count++ )
	clrf	(_count)
	
l791:	
	movlw	(0Fh)
	subwf	(_count),w
	skipc
	goto	u371
	goto	u370
u371:
	goto	l795
u370:
	goto	l67
	
l793:	
	goto	l67
	line	103
	
l78:	
	line	104
	
l795:	
;WLC.C: 103: {
;WLC.C: 104: _delay(1000000);
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

	line	102
	
l797:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_count),f
	
l799:	
	movlw	(0Fh)
	subwf	(_count),w
	skipc
	goto	u381
	goto	u380
u381:
	goto	l795
u380:
	goto	l67
	
l79:	
	goto	l67
	line	106
	
l80:	
	line	50
	goto	l67
	
l81:	
	line	107
	
l82:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_Tx_Received

;; *************** function _Tx_Received *****************
;; Defined at:
;;		line 111 in file "C:\XC8 PROJECTS\WLC 1PH WITHOUT TRIP\WLC.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          7       0       0
;;      Totals:         7       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text49,local,class=CODE,delta=2,merge=1
global __ptext49
__ptext49:	;psect for function _Tx_Received
psect	text49
	file	"C:\XC8 PROJECTS\WLC 1PH WITHOUT TRIP\WLC.C"
	line	111
	global	__size_of_Tx_Received
	__size_of_Tx_Received	equ	__end_of_Tx_Received-_Tx_Received
	
_Tx_Received:	
	opt	stack 7
; Regs used in _Tx_Received: [wreg+status,2]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_Tx_Received+3)
	movf	fsr0,w
	movwf	(??_Tx_Received+4)
	movf	pclath,w
	movwf	(??_Tx_Received+5)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_Tx_Received+6)
	ljmp	_Tx_Received
psect	text49
	line	112
	
i1l801:	
;WLC.C: 112: txr_not_received = 0;
	clrf	(_txr_not_received)
	line	115
	
i1l803:	
;WLC.C: 115: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	116
;WLC.C: 116: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	118
	
i1l805:	
;WLC.C: 118: TRISA = 0x04;
	movlw	(04h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	123
	
i1l807:	
;WLC.C: 123: if( RA2 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(42/8),(42)&7	;volatile
	goto	u39_21
	goto	u39_20
u39_21:
	goto	i1l85
u39_20:
	line	125
	
i1l809:	
;WLC.C: 124: {
;WLC.C: 125: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_Tx_Received+0)+0,f
u62_27:
	nop
decfsz	(??_Tx_Received+0)+0,f
	goto	u62_27
	nop2	;nop
	nop
opt asmopt_on

	line	126
	
i1l811:	
;WLC.C: 126: if( RA2 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(42/8),(42)&7	;volatile
	goto	u40_21
	goto	u40_20
u40_21:
	goto	i1l827
u40_20:
	line	128
	
i1l813:	
;WLC.C: 127: {
;WLC.C: 128: ul = 1;
	clrf	(_ul)
	incf	(_ul),f
	line	131
	
i1l815:	
;WLC.C: 131: if(dry_run == 1)
	movf	(_dry_run),w
	xorlw	01h
	skipz
	goto	u41_21
	goto	u41_20
u41_21:
	goto	i1l827
u41_20:
	line	133
	
i1l817:	
;WLC.C: 132: {
;WLC.C: 133: dry_run = 0;
	clrf	(_dry_run)
	goto	i1l827
	line	134
	
i1l87:	
	goto	i1l827
	line	135
	
i1l86:	
	line	136
;WLC.C: 134: }
;WLC.C: 135: }
;WLC.C: 136: }
	goto	i1l827
	line	137
	
i1l85:	
	line	139
;WLC.C: 137: else
;WLC.C: 138: {
;WLC.C: 139: ul = 0;
	clrf	(_ul)
	line	142
	
i1l819:	
;WLC.C: 142: if(dry_run == 1)
	movf	(_dry_run),w
	xorlw	01h
	skipz
	goto	u42_21
	goto	u42_20
u42_21:
	goto	i1l827
u42_20:
	line	144
	
i1l821:	
;WLC.C: 143: {
;WLC.C: 144: RC4 = 0;
	bcf	(60/8),(60)&7	;volatile
	line	145
;WLC.C: 145: lp_flag = 0;
	clrf	(_lp_flag)
	line	146
;WLC.C: 146: motor_flag = 0;
	clrf	(_motor_flag)
	line	147
;WLC.C: 147: RC5 = 0;
	bcf	(61/8),(61)&7	;volatile
	line	149
;WLC.C: 149: while(1)
	
i1l90:	
	line	151
;WLC.C: 150: {
;WLC.C: 151: RB7 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7	;volatile
	line	152
	
i1l823:	
;WLC.C: 152: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_Tx_Received+0)+0+2),f
movlw	19
movwf	((??_Tx_Received+0)+0+1),f
	movlw	177
movwf	((??_Tx_Received+0)+0),f
u63_27:
	decfsz	((??_Tx_Received+0)+0),f
	goto	u63_27
	decfsz	((??_Tx_Received+0)+0+1),f
	goto	u63_27
	decfsz	((??_Tx_Received+0)+0+2),f
	goto	u63_27
	nop2
opt asmopt_on

	line	153
	
i1l825:	
;WLC.C: 153: RB7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	154
;WLC.C: 154: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_Tx_Received+0)+0+2),f
movlw	19
movwf	((??_Tx_Received+0)+0+1),f
	movlw	177
movwf	((??_Tx_Received+0)+0),f
u64_27:
	decfsz	((??_Tx_Received+0)+0),f
	goto	u64_27
	decfsz	((??_Tx_Received+0)+0+1),f
	goto	u64_27
	decfsz	((??_Tx_Received+0)+0+2),f
	goto	u64_27
	nop2
opt asmopt_on

	goto	i1l90
	line	155
	
i1l91:	
	line	149
	goto	i1l90
	
i1l92:	
	goto	i1l827
	line	156
	
i1l89:	
	goto	i1l827
	line	157
	
i1l88:	
	line	160
	
i1l827:	
;WLC.C: 155: }
;WLC.C: 156: }
;WLC.C: 157: }
;WLC.C: 160: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	161
;WLC.C: 161: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	163
	
i1l829:	
;WLC.C: 163: TRISA = 0x02;
	movlw	(02h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	167
	
i1l831:	
;WLC.C: 167: if( RA1 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(41/8),(41)&7	;volatile
	goto	u43_21
	goto	u43_20
u43_21:
	goto	i1l93
u43_20:
	line	169
	
i1l833:	
;WLC.C: 168: {
;WLC.C: 169: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_Tx_Received+0)+0,f
u65_27:
	nop
decfsz	(??_Tx_Received+0)+0,f
	goto	u65_27
	nop2	;nop
	nop
opt asmopt_on

	line	170
	
i1l835:	
;WLC.C: 170: if( RA1 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(41/8),(41)&7	;volatile
	goto	u44_21
	goto	u44_20
u44_21:
	goto	i1l839
u44_20:
	line	172
	
i1l837:	
;WLC.C: 171: {
;WLC.C: 172: uu = 1;
	clrf	(_uu)
	incf	(_uu),f
	line	173
;WLC.C: 173: ul = 1;
	clrf	(_ul)
	incf	(_ul),f
	goto	i1l839
	line	176
	
i1l94:	
	line	177
;WLC.C: 176: }
;WLC.C: 177: }
	goto	i1l839
	line	178
	
i1l93:	
	line	180
;WLC.C: 178: else
;WLC.C: 179: {
;WLC.C: 180: uu = 0;
	clrf	(_uu)
	goto	i1l839
	line	182
	
i1l95:	
	line	185
	
i1l839:	
;WLC.C: 182: }
;WLC.C: 185: if(uu == 1)
	movf	(_uu),w
	xorlw	01h
	skipz
	goto	u45_21
	goto	u45_20
u45_21:
	goto	i1l96
u45_20:
	line	187
	
i1l841:	
;WLC.C: 186: {
;WLC.C: 187: RB1 = 1;
	bsf	(49/8),(49)&7	;volatile
	line	188
;WLC.C: 188: }
	goto	i1l843
	line	189
	
i1l96:	
	line	191
;WLC.C: 189: else
;WLC.C: 190: {
;WLC.C: 191: RB1 = 0;
	bcf	(49/8),(49)&7	;volatile
	goto	i1l843
	line	192
	
i1l97:	
	line	194
	
i1l843:	
;WLC.C: 192: }
;WLC.C: 194: if(ul == 1)
	movf	(_ul),w
	xorlw	01h
	skipz
	goto	u46_21
	goto	u46_20
u46_21:
	goto	i1l98
u46_20:
	line	196
	
i1l845:	
;WLC.C: 195: {
;WLC.C: 196: RB2 = 1;
	bsf	(50/8),(50)&7	;volatile
	line	197
;WLC.C: 197: }
	goto	i1l847
	line	198
	
i1l98:	
	line	200
;WLC.C: 198: else
;WLC.C: 199: {
;WLC.C: 200: RB2 = 0;
	bcf	(50/8),(50)&7	;volatile
	goto	i1l847
	line	201
	
i1l99:	
	line	203
	
i1l847:	
;WLC.C: 201: }
;WLC.C: 203: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	204
;WLC.C: 204: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	206
	
i1l849:	
;WLC.C: 206: TRISA = 0x20;
	movlw	(020h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	207
	
i1l851:	
;WLC.C: 207: PORTA = 0x08;
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	208
	
i1l853:	
;WLC.C: 208: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_Tx_Received+0)+0,f
u66_27:
	nop
decfsz	(??_Tx_Received+0)+0,f
	goto	u66_27
	nop2	;nop
	nop
opt asmopt_on

	line	210
	
i1l855:	
;WLC.C: 210: if( RA5 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(45/8),(45)&7	;volatile
	goto	u47_21
	goto	u47_20
u47_21:
	goto	i1l100
u47_20:
	line	212
	
i1l857:	
;WLC.C: 211: {
;WLC.C: 212: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_Tx_Received+0)+0,f
u67_27:
	nop
decfsz	(??_Tx_Received+0)+0,f
	goto	u67_27
	nop2	;nop
	nop
opt asmopt_on

	line	213
	
i1l859:	
;WLC.C: 213: if( RA5 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(45/8),(45)&7	;volatile
	goto	u48_21
	goto	u48_20
u48_21:
	goto	i1l863
u48_20:
	line	215
	
i1l861:	
;WLC.C: 214: {
;WLC.C: 215: ll = 1;
	clrf	(_ll)
	incf	(_ll),f
	line	216
;WLC.C: 216: RB4 = 1;
	bsf	(52/8),(52)&7	;volatile
	goto	i1l863
	line	217
	
i1l101:	
	line	218
;WLC.C: 217: }
;WLC.C: 218: }
	goto	i1l863
	line	219
	
i1l100:	
	line	221
;WLC.C: 219: else
;WLC.C: 220: {
;WLC.C: 221: ll = 0;
	clrf	(_ll)
	line	222
;WLC.C: 222: RB4 = 0;
	bcf	(52/8),(52)&7	;volatile
	goto	i1l863
	line	223
	
i1l102:	
	line	226
	
i1l863:	
;WLC.C: 223: }
;WLC.C: 226: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	227
;WLC.C: 227: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	229
	
i1l865:	
;WLC.C: 229: TRISA = 0x08;
	movlw	(08h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	230
	
i1l867:	
;WLC.C: 230: PORTA = 0x20;
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	231
	
i1l869:	
;WLC.C: 231: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_Tx_Received+0)+0,f
u68_27:
	nop
decfsz	(??_Tx_Received+0)+0,f
	goto	u68_27
	nop2	;nop
	nop
opt asmopt_on

	line	233
	
i1l871:	
;WLC.C: 233: if( RA3 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(43/8),(43)&7	;volatile
	goto	u49_21
	goto	u49_20
u49_21:
	goto	i1l103
u49_20:
	line	235
	
i1l873:	
;WLC.C: 234: {
;WLC.C: 235: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_Tx_Received+0)+0,f
u69_27:
	nop
decfsz	(??_Tx_Received+0)+0,f
	goto	u69_27
	nop2	;nop
	nop
opt asmopt_on

	line	236
	
i1l875:	
;WLC.C: 236: if( RA3 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(43/8),(43)&7	;volatile
	goto	u50_21
	goto	u50_20
u50_21:
	goto	i1l879
u50_20:
	line	238
	
i1l877:	
;WLC.C: 237: {
;WLC.C: 238: lu = 1;
	clrf	(_lu)
	incf	(_lu),f
	line	239
;WLC.C: 239: RB3 = 1;
	bsf	(51/8),(51)&7	;volatile
	goto	i1l879
	line	240
	
i1l104:	
	line	241
;WLC.C: 240: }
;WLC.C: 241: }
	goto	i1l879
	line	242
	
i1l103:	
	line	244
;WLC.C: 242: else
;WLC.C: 243: {
;WLC.C: 244: lu = 0;
	clrf	(_lu)
	line	245
;WLC.C: 245: RB3 = 0;
	bcf	(51/8),(51)&7	;volatile
	goto	i1l879
	line	246
	
i1l105:	
	line	249
	
i1l879:	
;WLC.C: 246: }
;WLC.C: 249: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	250
;WLC.C: 250: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	253
	
i1l881:	
;WLC.C: 253: INTF = 0x00;
	bcf	(89/8),(89)&7	;volatile
	line	254
	
i1l106:	
	movf	(??_Tx_Received+6),w
	movwf	btemp+1
	movf	(??_Tx_Received+5),w
	movwf	pclath
	movf	(??_Tx_Received+4),w
	movwf	fsr0
	swapf	(??_Tx_Received+3)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_Tx_Received
	__end_of_Tx_Received:
	signat	_Tx_Received,88
psect	text50,local,class=CODE,delta=2,merge=1
global __ptext50
__ptext50:	;psect for function _Tx_Received
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end

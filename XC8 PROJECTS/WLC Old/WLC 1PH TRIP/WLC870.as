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
	global	_txr_not_received
	global	_INTCON
_INTCON	set	0xB
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
psect	maintext,global,class=CODE,delta=2,split=1
global __pmaintext
__pmaintext:	;psect for function _Tx_Received
; #config settings
	file	"WLC870.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_txr_not_received:
       ds      1

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
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
	ds	4
??_main:	; 0 bytes @ 0x4
	ds	3
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@ul
main@ul:	; 1 bytes @ 0x0
	ds	1
	global	main@lu
main@lu:	; 1 bytes @ 0x1
	ds	1
	global	main@motor_flag
main@motor_flag:	; 1 bytes @ 0x2
	ds	1
	global	main@level_check
main@level_check:	; 1 bytes @ 0x3
	ds	1
	global	main@count
main@count:	; 1 bytes @ 0x4
	ds	1
	global	main@uu
main@uu:	; 1 bytes @ 0x5
	ds	1
	global	main@ll
main@ll:	; 1 bytes @ 0x6
	ds	1
	global	main@dry_run
main@dry_run:	; 1 bytes @ 0x7
	ds	1
	global	main@lp_flag
main@lp_flag:	; 1 bytes @ 0x8
	ds	1
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
;!    COMMON           14      7       7
;!    BANK0            80      9      10
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
;! (0) _main                                                12    12      0     339
;!                                              4 COMMON     3     3      0
;!                                              0 BANK0      9     9      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 0
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (1) _Tx_Received                                          4     4      0       0
;!                                              0 COMMON     4     4      0
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
;!COMMON               E      7       7       1       50.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0      11       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      9       A       5       12.5%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            20      0       0       6        0.0%
;!BANK1               20      0       0       7        0.0%
;!DATA                 0      0      11       8        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 13 in file "C:\XC8 PROJECTS\WLC 1PH TRIP\WLC.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  lp_flag         1    8[BANK0 ] unsigned char 
;;  dry_run         1    7[BANK0 ] unsigned char 
;;  ll              1    6[BANK0 ] unsigned char 
;;  uu              1    5[BANK0 ] unsigned char 
;;  count           1    4[BANK0 ] unsigned char 
;;  level_check     1    3[BANK0 ] unsigned char 
;;  motor_flag      1    2[BANK0 ] unsigned char 
;;  lu              1    1[BANK0 ] unsigned char 
;;  ul              1    0[BANK0 ] unsigned char 
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
;;      Locals:         0       9       0
;;      Temps:          3       0       0
;;      Totals:         3       9       0
;;Total ram usage:       12 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
psect	maintext
	file	"C:\XC8 PROJECTS\WLC 1PH TRIP\WLC.C"
	line	13
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0]
	line	14
	
l693:	
;WLC.C: 14: char count = 0, level_check = 0, lp_flag = 0, motor_flag = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	clrf	(main@level_check)
	clrf	(main@lp_flag)
	clrf	(main@motor_flag)
	line	15
;WLC.C: 15: char uu = 0, ul = 0, lu = 0, ll = 0, dry_run = 0;
	clrf	(main@uu)
	clrf	(main@ul)
	clrf	(main@lu)
	clrf	(main@ll)
	clrf	(main@dry_run)
	line	17
	
l695:	
;WLC.C: 17: ADCON1 = 0x06;
	movlw	(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	18
	
l697:	
;WLC.C: 18: TRISA = 0x00;
	clrf	(133)^080h	;volatile
	line	19
	
l699:	
;WLC.C: 19: TRISB = 0x01;
	movlw	(01h)
	movwf	(134)^080h	;volatile
	line	20
;WLC.C: 20: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	22
	
l701:	
;WLC.C: 22: OPTION_REG = 0xC0;
	movlw	(0C0h)
	movwf	(129)^080h	;volatile
	line	23
	
l703:	
;WLC.C: 23: INTCON = 0x90;
	movlw	(090h)
	movwf	(11)	;volatile
	line	25
;WLC.C: 25: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	26
;WLC.C: 26: PORTA = 0x00;
	clrf	(5)	;volatile
	line	27
;WLC.C: 27: PORTC = 0x00;
	clrf	(7)	;volatile
	line	30
	
l705:	
;WLC.C: 30: PORTB = 0xFE;
	movlw	(0FEh)
	movwf	(6)	;volatile
	line	31
	
l707:	
;WLC.C: 31: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u477:
	decfsz	((??_main+0)+0),f
	goto	u477
	decfsz	((??_main+0)+0+1),f
	goto	u477
	decfsz	((??_main+0)+0+2),f
	goto	u477
	nop2
opt asmopt_on

	line	32
;WLC.C: 32: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	33
	
l709:	
;WLC.C: 33: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u487:
	decfsz	((??_main+0)+0),f
	goto	u487
	decfsz	((??_main+0)+0+1),f
	goto	u487
	decfsz	((??_main+0)+0+2),f
	goto	u487
	nop2
opt asmopt_on

	line	34
	
l711:	
;WLC.C: 34: PORTB = 0xFE;
	movlw	(0FEh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	35
	
l713:	
;WLC.C: 35: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u497:
	decfsz	((??_main+0)+0),f
	goto	u497
	decfsz	((??_main+0)+0+1),f
	goto	u497
	decfsz	((??_main+0)+0+2),f
	goto	u497
	nop2
opt asmopt_on

	line	36
	
l715:	
;WLC.C: 36: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	37
;WLC.C: 37: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u507:
	decfsz	((??_main+0)+0),f
	goto	u507
	decfsz	((??_main+0)+0+1),f
	goto	u507
	decfsz	((??_main+0)+0+2),f
	goto	u507
	nop2
opt asmopt_on

	line	38
;WLC.C: 38: PORTB = 0xFE;
	movlw	(0FEh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	39
;WLC.C: 39: _delay(1000000);
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

	line	40
	
l717:	
;WLC.C: 40: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	41
	
l719:	
;WLC.C: 41: _delay(1000000);
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

	line	42
	
l721:	
;WLC.C: 42: PORTB = 0xFE;
	movlw	(0FEh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	43
	
l723:	
;WLC.C: 43: _delay(1000000);
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

	line	44
;WLC.C: 44: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	45
	
l725:	
;WLC.C: 45: _delay(1000000);
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

	line	46
	
l727:	
;WLC.C: 46: PORTB = 0xFE;
	movlw	(0FEh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	47
	
l729:	
;WLC.C: 47: _delay(1000000);
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

	line	48
	
l731:	
;WLC.C: 48: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	49
;WLC.C: 49: _delay(1000000);
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

	line	51
;WLC.C: 51: while(1)
	
l47:	
	line	53
;WLC.C: 52: {
;WLC.C: 53: TRISA = 0x20;
	movlw	(020h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	54
;WLC.C: 54: PORTA = 0xDF;;
	movlw	(0DFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	55
;WLC.C: 55: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_main+0)+0,f
u577:
	nop
decfsz	(??_main+0)+0,f
	goto	u577
	nop2	;nop
	nop
opt asmopt_on

	line	57
	
l733:	
;WLC.C: 57: if( RA5 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(45/8),(45)&7	;volatile
	goto	u241
	goto	u240
u241:
	goto	l48
u240:
	line	59
	
l735:	
;WLC.C: 58: {
;WLC.C: 59: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_main+0)+0,f
u587:
	nop
decfsz	(??_main+0)+0,f
	goto	u587
	nop2	;nop
	nop
opt asmopt_on

	line	60
	
l737:	
;WLC.C: 60: if( RA5 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(45/8),(45)&7	;volatile
	goto	u251
	goto	u250
u251:
	goto	l741
u250:
	line	62
	
l739:	
;WLC.C: 61: {
;WLC.C: 62: ll = 1;
	clrf	(main@ll)
	incf	(main@ll),f
	line	63
;WLC.C: 63: RB4 = 1;
	bsf	(52/8),(52)&7	;volatile
	goto	l741
	line	64
	
l49:	
	line	65
;WLC.C: 64: }
;WLC.C: 65: }
	goto	l741
	line	66
	
l48:	
	line	68
;WLC.C: 66: else
;WLC.C: 67: {
;WLC.C: 68: ll = 0;
	clrf	(main@ll)
	line	69
;WLC.C: 69: RB4 = 0;
	bcf	(52/8),(52)&7	;volatile
	goto	l741
	line	70
	
l50:	
	line	73
	
l741:	
;WLC.C: 70: }
;WLC.C: 73: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	74
;WLC.C: 74: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	76
	
l743:	
;WLC.C: 76: TRISA = 0x04;
	movlw	(04h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	77
	
l745:	
;WLC.C: 77: PORTA = 0xFB;
	movlw	(0FBh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	78
	
l747:	
;WLC.C: 78: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_main+0)+0,f
u597:
	nop
decfsz	(??_main+0)+0,f
	goto	u597
	nop2	;nop
	nop
opt asmopt_on

	line	81
	
l749:	
;WLC.C: 81: if( RA2 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(42/8),(42)&7	;volatile
	goto	u261
	goto	u260
u261:
	goto	l51
u260:
	line	83
	
l751:	
;WLC.C: 82: {
;WLC.C: 83: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_main+0)+0,f
u607:
	nop
decfsz	(??_main+0)+0,f
	goto	u607
	nop2	;nop
	nop
opt asmopt_on

	line	84
	
l753:	
;WLC.C: 84: if( RA2 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(42/8),(42)&7	;volatile
	goto	u271
	goto	u270
u271:
	goto	l769
u270:
	line	86
	
l755:	
;WLC.C: 85: {
;WLC.C: 86: ul = 1;
	clrf	(main@ul)
	incf	(main@ul),f
	line	87
;WLC.C: 87: RB2 = 1;
	bsf	(50/8),(50)&7	;volatile
	line	89
	
l757:	
;WLC.C: 89: if(dry_run == 1)
	movf	(main@dry_run),w
	xorlw	01h
	skipz
	goto	u281
	goto	u280
u281:
	goto	l769
u280:
	line	91
	
l759:	
;WLC.C: 90: {
;WLC.C: 91: dry_run = 0;
	clrf	(main@dry_run)
	goto	l769
	line	92
	
l53:	
	goto	l769
	line	93
	
l52:	
	line	94
;WLC.C: 92: }
;WLC.C: 93: }
;WLC.C: 94: }
	goto	l769
	line	95
	
l51:	
	line	97
;WLC.C: 95: else
;WLC.C: 96: {
;WLC.C: 97: ul = 0;
	clrf	(main@ul)
	line	98
;WLC.C: 98: RB2 = 0;
	bcf	(50/8),(50)&7	;volatile
	line	100
	
l761:	
;WLC.C: 100: if(dry_run == 1)
	movf	(main@dry_run),w
	xorlw	01h
	skipz
	goto	u291
	goto	u290
u291:
	goto	l769
u290:
	line	102
	
l763:	
;WLC.C: 101: {
;WLC.C: 102: RC4 = 0;
	bcf	(60/8),(60)&7	;volatile
	line	103
;WLC.C: 103: lp_flag = 0;
	clrf	(main@lp_flag)
	line	104
;WLC.C: 104: motor_flag = 0;
	clrf	(main@motor_flag)
	line	105
;WLC.C: 105: RC5 = 0;
	bcf	(61/8),(61)&7	;volatile
	line	107
;WLC.C: 107: while(1)
	
l56:	
	line	109
;WLC.C: 108: {
;WLC.C: 109: RB7 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7	;volatile
	line	110
	
l765:	
;WLC.C: 110: _delay(1000000);
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

	line	111
	
l767:	
;WLC.C: 111: RB7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	112
;WLC.C: 112: _delay(1000000);
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

	goto	l56
	line	113
	
l57:	
	line	107
	goto	l56
	
l58:	
	goto	l769
	line	114
	
l55:	
	goto	l769
	line	115
	
l54:	
	line	118
	
l769:	
;WLC.C: 113: }
;WLC.C: 114: }
;WLC.C: 115: }
;WLC.C: 118: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	119
;WLC.C: 119: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	121
	
l771:	
;WLC.C: 121: TRISA = 0x08;
	movlw	(08h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	122
	
l773:	
;WLC.C: 122: PORTA = 0xF7;
	movlw	(0F7h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	123
	
l775:	
;WLC.C: 123: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_main+0)+0,f
u637:
	nop
decfsz	(??_main+0)+0,f
	goto	u637
	nop2	;nop
	nop
opt asmopt_on

	line	125
	
l777:	
;WLC.C: 125: if( RA3 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(43/8),(43)&7	;volatile
	goto	u301
	goto	u300
u301:
	goto	l59
u300:
	line	127
	
l779:	
;WLC.C: 126: {
;WLC.C: 127: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_main+0)+0,f
u647:
	nop
decfsz	(??_main+0)+0,f
	goto	u647
	nop2	;nop
	nop
opt asmopt_on

	line	128
	
l781:	
;WLC.C: 128: if( RA3 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(43/8),(43)&7	;volatile
	goto	u311
	goto	u310
u311:
	goto	l785
u310:
	line	130
	
l783:	
;WLC.C: 129: {
;WLC.C: 130: lu = 1;
	clrf	(main@lu)
	incf	(main@lu),f
	line	131
;WLC.C: 131: RB3 = 1;
	bsf	(51/8),(51)&7	;volatile
	goto	l785
	line	132
	
l60:	
	line	133
;WLC.C: 132: }
;WLC.C: 133: }
	goto	l785
	line	134
	
l59:	
	line	136
;WLC.C: 134: else
;WLC.C: 135: {
;WLC.C: 136: lu = 0;
	clrf	(main@lu)
	line	137
;WLC.C: 137: RB3 = 0;
	bcf	(51/8),(51)&7	;volatile
	goto	l785
	line	138
	
l61:	
	line	141
	
l785:	
;WLC.C: 138: }
;WLC.C: 141: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	142
;WLC.C: 142: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	144
	
l787:	
;WLC.C: 144: TRISA = 0x02;
	movlw	(02h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	145
	
l789:	
;WLC.C: 145: PORTA = 0xFD;
	movlw	(0FDh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	146
	
l791:	
;WLC.C: 146: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_main+0)+0,f
u657:
	nop
decfsz	(??_main+0)+0,f
	goto	u657
	nop2	;nop
	nop
opt asmopt_on

	line	148
	
l793:	
;WLC.C: 148: if( RA1 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(41/8),(41)&7	;volatile
	goto	u321
	goto	u320
u321:
	goto	l62
u320:
	line	150
	
l795:	
;WLC.C: 149: {
;WLC.C: 150: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_main+0)+0,f
u667:
	nop
decfsz	(??_main+0)+0,f
	goto	u667
	nop2	;nop
	nop
opt asmopt_on

	line	151
	
l797:	
;WLC.C: 151: if( RA1 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(41/8),(41)&7	;volatile
	goto	u331
	goto	u330
u331:
	goto	l801
u330:
	line	153
	
l799:	
;WLC.C: 152: {
;WLC.C: 153: uu = 1;
	clrf	(main@uu)
	incf	(main@uu),f
	line	154
;WLC.C: 154: RB1 = 1;
	bsf	(49/8),(49)&7	;volatile
	goto	l801
	line	155
	
l63:	
	line	156
;WLC.C: 155: }
;WLC.C: 156: }
	goto	l801
	line	157
	
l62:	
	line	159
;WLC.C: 157: else
;WLC.C: 158: {
;WLC.C: 159: uu = 0;
	clrf	(main@uu)
	line	160
;WLC.C: 160: RB1 = 0;
	bcf	(49/8),(49)&7	;volatile
	goto	l801
	line	161
	
l64:	
	line	164
	
l801:	
;WLC.C: 161: }
;WLC.C: 164: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	165
;WLC.C: 165: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	167
	
l803:	
;WLC.C: 167: if( motor_flag == 1 )
	movf	(main@motor_flag),w
	xorlw	01h
	skipz
	goto	u341
	goto	u340
u341:
	goto	l813
u340:
	line	169
	
l805:	
;WLC.C: 168: {
;WLC.C: 169: txr_not_received ++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_txr_not_received),f
	line	171
	
l807:	
;WLC.C: 171: if( uu == 0 && ll == 1 )
	movf	(main@uu),f
	skipz
	goto	u351
	goto	u350
u351:
	goto	l66
u350:
	
l809:	
	movf	(main@ll),w
	xorlw	01h
	skipz
	goto	u361
	goto	u360
u361:
	goto	l66
u360:
	line	173
	
l811:	
;WLC.C: 172: {
;WLC.C: 173: level_check = 1;
	clrf	(main@level_check)
	incf	(main@level_check),f
	line	174
;WLC.C: 174: }
	goto	l823
	line	175
	
l66:	
	line	177
;WLC.C: 175: else
;WLC.C: 176: {
;WLC.C: 177: level_check = 0;
	clrf	(main@level_check)
	goto	l823
	line	178
	
l67:	
	line	179
;WLC.C: 178: }
;WLC.C: 179: }
	goto	l823
	line	180
	
l65:	
	line	182
	
l813:	
;WLC.C: 180: else
;WLC.C: 181: {
;WLC.C: 182: if( (uu == 0 && ul == 0) && (lu == 1 && ll == 1) )
	movf	(main@uu),f
	skipz
	goto	u371
	goto	u370
u371:
	goto	l69
u370:
	
l815:	
	movf	(main@ul),f
	skipz
	goto	u381
	goto	u380
u381:
	goto	l69
u380:
	
l817:	
	movf	(main@lu),w
	xorlw	01h
	skipz
	goto	u391
	goto	u390
u391:
	goto	l69
u390:
	
l819:	
	movf	(main@ll),w
	xorlw	01h
	skipz
	goto	u401
	goto	u400
u401:
	goto	l69
u400:
	line	184
	
l821:	
;WLC.C: 183: {
;WLC.C: 184: level_check = 1;
	clrf	(main@level_check)
	incf	(main@level_check),f
	line	185
;WLC.C: 185: }
	goto	l823
	line	186
	
l69:	
	line	188
;WLC.C: 186: else
;WLC.C: 187: {
;WLC.C: 188: level_check = 0;
	clrf	(main@level_check)
	goto	l823
	line	189
	
l70:	
	goto	l823
	line	190
	
l68:	
	line	192
	
l823:	
;WLC.C: 189: }
;WLC.C: 190: }
;WLC.C: 192: if( level_check == 1 && txr_not_received <= 20 )
	movf	(main@level_check),w
	xorlw	01h
	skipz
	goto	u411
	goto	u410
u411:
	goto	l831
u410:
	
l825:	
	movlw	(015h)
	subwf	(_txr_not_received),w
	skipnc
	goto	u421
	goto	u420
u421:
	goto	l831
u420:
	line	195
	
l827:	
;WLC.C: 193: {
;WLC.C: 195: if( lp_flag == 0 )
	movf	(main@lp_flag),f
	skipz
	goto	u431
	goto	u430
u431:
	goto	l73
u430:
	line	197
	
l829:	
;WLC.C: 196: {
;WLC.C: 197: RC4 = 1;
	bsf	(60/8),(60)&7	;volatile
	line	198
;WLC.C: 198: lp_flag = 1;
	clrf	(main@lp_flag)
	incf	(main@lp_flag),f
	line	199
;WLC.C: 199: motor_flag = 1;
	clrf	(main@motor_flag)
	incf	(main@motor_flag),f
	line	200
;WLC.C: 200: RC5 = 1;
	bsf	(61/8),(61)&7	;volatile
	line	201
;WLC.C: 201: dry_run = 1;
	clrf	(main@dry_run)
	incf	(main@dry_run),f
	goto	l73
	line	202
	
l72:	
	line	203
;WLC.C: 202: }
;WLC.C: 203: }
	goto	l73
	line	205
	
l71:	
	line	208
	
l831:	
;WLC.C: 205: else
;WLC.C: 206: {
;WLC.C: 208: if( lp_flag == 1 )
	movf	(main@lp_flag),w
	xorlw	01h
	skipz
	goto	u441
	goto	u440
u441:
	goto	l73
u440:
	line	210
	
l833:	
;WLC.C: 209: {
;WLC.C: 210: RC4 = 0;
	bcf	(60/8),(60)&7	;volatile
	line	211
;WLC.C: 211: lp_flag = 0;
	clrf	(main@lp_flag)
	line	212
;WLC.C: 212: motor_flag = 0;
	clrf	(main@motor_flag)
	line	213
;WLC.C: 213: RC5 = 0;
	bcf	(61/8),(61)&7	;volatile
	goto	l73
	line	214
	
l74:	
	line	215
	
l73:	
	line	217
;WLC.C: 214: }
;WLC.C: 215: }
;WLC.C: 217: for( count = 0; count < 15; count++ )
	clrf	(main@count)
	
l835:	
	movlw	(0Fh)
	subwf	(main@count),w
	skipc
	goto	u451
	goto	u450
u451:
	goto	l839
u450:
	goto	l47
	
l837:	
	goto	l47
	line	218
	
l75:	
	line	219
	
l839:	
;WLC.C: 218: {
;WLC.C: 219: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u677:
	decfsz	((??_main+0)+0),f
	goto	u677
	decfsz	((??_main+0)+0+1),f
	goto	u677
	decfsz	((??_main+0)+0+2),f
	goto	u677
	nop2
opt asmopt_on

	line	217
	
l841:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@count),f
	
l843:	
	movlw	(0Fh)
	subwf	(main@count),w
	skipc
	goto	u461
	goto	u460
u461:
	goto	l839
u460:
	goto	l47
	
l76:	
	goto	l47
	line	221
	
l77:	
	line	51
	goto	l47
	
l78:	
	line	222
	
l79:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_Tx_Received

;; *************** function _Tx_Received *****************
;; Defined at:
;;		line 226 in file "C:\XC8 PROJECTS\WLC 1PH TRIP\WLC.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text37,local,class=CODE,delta=2,merge=1
global __ptext37
__ptext37:	;psect for function _Tx_Received
psect	text37
	file	"C:\XC8 PROJECTS\WLC 1PH TRIP\WLC.C"
	line	226
	global	__size_of_Tx_Received
	__size_of_Tx_Received	equ	__end_of_Tx_Received-_Tx_Received
	
_Tx_Received:	
	opt	stack 7
; Regs used in _Tx_Received: []
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_Tx_Received+0)
	movf	fsr0,w
	movwf	(??_Tx_Received+1)
	movf	pclath,w
	movwf	(??_Tx_Received+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_Tx_Received+3)
	ljmp	_Tx_Received
psect	text37
	line	227
	
i1l845:	
;WLC.C: 227: txr_not_received = 0;
	clrf	(_txr_not_received)
	line	228
	
i1l82:	
	movf	(??_Tx_Received+3),w
	movwf	btemp+1
	movf	(??_Tx_Received+2),w
	movwf	pclath
	movf	(??_Tx_Received+1),w
	movwf	fsr0
	swapf	(??_Tx_Received+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_Tx_Received
	__end_of_Tx_Received:
	signat	_Tx_Received,88
psect	text38,local,class=CODE,delta=2,merge=1
global __ptext38
__ptext38:	;psect for function _Tx_Received
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end

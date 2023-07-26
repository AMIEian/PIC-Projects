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
	file	"WLC3PH.as"
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
	global	main@power
main@power:	; 1 bytes @ 0x0
	ds	1
	global	main@ul
main@ul:	; 1 bytes @ 0x1
	ds	1
	global	main@lu
main@lu:	; 1 bytes @ 0x2
	ds	1
	global	main@motor_flag
main@motor_flag:	; 1 bytes @ 0x3
	ds	1
	global	main@level_check
main@level_check:	; 1 bytes @ 0x4
	ds	1
	global	main@count
main@count:	; 1 bytes @ 0x5
	ds	1
	global	main@uu
main@uu:	; 1 bytes @ 0x6
	ds	1
	global	main@ll
main@ll:	; 1 bytes @ 0x7
	ds	1
	global	main@dry_run
main@dry_run:	; 1 bytes @ 0x8
	ds	1
	global	main@lp_flag
main@lp_flag:	; 1 bytes @ 0x9
	ds	1
	global	main@i
main@i:	; 1 bytes @ 0xA
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
;!    BANK0            80     11      12
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
;! (0) _main                                                14    14      0     503
;!                                              4 COMMON     3     3      0
;!                                              0 BANK0     11    11      0
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
;!ABS                  0      0      13       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      B       C       5       15.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            20      0       0       6        0.0%
;!BANK1               20      0       0       7        0.0%
;!DATA                 0      0      13       8        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 13 in file "C:\XC8 PROJECTS\WLC 3PH WITHOUT TRIP\WLC3PH.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   10[BANK0 ] unsigned char 
;;  lp_flag         1    9[BANK0 ] unsigned char 
;;  dry_run         1    8[BANK0 ] unsigned char 
;;  ll              1    7[BANK0 ] unsigned char 
;;  uu              1    6[BANK0 ] unsigned char 
;;  count           1    5[BANK0 ] unsigned char 
;;  level_check     1    4[BANK0 ] unsigned char 
;;  motor_flag      1    3[BANK0 ] unsigned char 
;;  lu              1    2[BANK0 ] unsigned char 
;;  ul              1    1[BANK0 ] unsigned char 
;;  power           1    0[BANK0 ] unsigned char 
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
;;      Locals:         0      11       0
;;      Temps:          3       0       0
;;      Totals:         3      11       0
;;Total ram usage:       14 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
psect	maintext
	file	"C:\XC8 PROJECTS\WLC 3PH WITHOUT TRIP\WLC3PH.c"
	line	13
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0]
	line	14
	
l739:	
;WLC3PH.c: 14: char count = 0, level_check = 0, lp_flag = 0, motor_flag = 0,power = 0, i = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	clrf	(main@level_check)
	clrf	(main@lp_flag)
	clrf	(main@motor_flag)
	clrf	(main@power)
	clrf	(main@i)
	line	15
;WLC3PH.c: 15: char uu = 0, ul = 0, lu = 0, ll = 0, dry_run = 0;
	clrf	(main@uu)
	clrf	(main@ul)
	clrf	(main@lu)
	clrf	(main@ll)
	clrf	(main@dry_run)
	line	17
	
l741:	
;WLC3PH.c: 17: ADCON1 = 0x06;
	movlw	(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	18
	
l743:	
;WLC3PH.c: 18: TRISA = 0x00;
	clrf	(133)^080h	;volatile
	line	19
	
l745:	
;WLC3PH.c: 19: TRISB = 0x01;
	movlw	(01h)
	movwf	(134)^080h	;volatile
	line	20
	
l747:	
;WLC3PH.c: 20: TRISC = 0x07;
	movlw	(07h)
	movwf	(135)^080h	;volatile
	line	22
	
l749:	
;WLC3PH.c: 22: OPTION_REG = 0xC0;
	movlw	(0C0h)
	movwf	(129)^080h	;volatile
	line	23
	
l751:	
;WLC3PH.c: 23: INTCON = 0x90;
	movlw	(090h)
	movwf	(11)	;volatile
	line	25
	
l753:	
;WLC3PH.c: 25: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	26
	
l755:	
;WLC3PH.c: 26: PORTA = 0x00;
	clrf	(5)	;volatile
	line	27
	
l757:	
;WLC3PH.c: 27: PORTC = 0x00;
	clrf	(7)	;volatile
	line	30
;WLC3PH.c: 30: PORTB = 0xFE;
	movlw	(0FEh)
	movwf	(6)	;volatile
	line	31
;WLC3PH.c: 31: _delay(1000000);
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

	line	32
	
l759:	
;WLC3PH.c: 32: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	33
	
l761:	
;WLC3PH.c: 33: _delay(1000000);
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

	line	34
	
l763:	
;WLC3PH.c: 34: PORTB = 0xFE;
	movlw	(0FEh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	35
	
l765:	
;WLC3PH.c: 35: _delay(1000000);
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

	line	36
;WLC3PH.c: 36: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	37
	
l767:	
;WLC3PH.c: 37: _delay(1000000);
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

	line	38
	
l769:	
;WLC3PH.c: 38: PORTB = 0xFE;
	movlw	(0FEh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	39
	
l771:	
;WLC3PH.c: 39: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u637:
	decfsz	((??_main+0)+0),f
	goto	u637
	decfsz	((??_main+0)+0+1),f
	goto	u637
	decfsz	((??_main+0)+0+2),f
	goto	u637
	nop2
opt asmopt_on

	line	40
	
l773:	
;WLC3PH.c: 40: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	41
;WLC3PH.c: 41: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u647:
	decfsz	((??_main+0)+0),f
	goto	u647
	decfsz	((??_main+0)+0+1),f
	goto	u647
	decfsz	((??_main+0)+0+2),f
	goto	u647
	nop2
opt asmopt_on

	line	42
;WLC3PH.c: 42: PORTB = 0xFE;
	movlw	(0FEh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	43
;WLC3PH.c: 43: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u657:
	decfsz	((??_main+0)+0),f
	goto	u657
	decfsz	((??_main+0)+0+1),f
	goto	u657
	decfsz	((??_main+0)+0+2),f
	goto	u657
	nop2
opt asmopt_on

	line	44
	
l775:	
;WLC3PH.c: 44: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	45
	
l777:	
;WLC3PH.c: 45: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u667:
	decfsz	((??_main+0)+0),f
	goto	u667
	decfsz	((??_main+0)+0+1),f
	goto	u667
	decfsz	((??_main+0)+0+2),f
	goto	u667
	nop2
opt asmopt_on

	line	46
	
l779:	
;WLC3PH.c: 46: PORTB = 0xFE;
	movlw	(0FEh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	47
	
l781:	
;WLC3PH.c: 47: _delay(1000000);
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

	line	48
;WLC3PH.c: 48: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	49
	
l783:	
;WLC3PH.c: 49: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u687:
	decfsz	((??_main+0)+0),f
	goto	u687
	decfsz	((??_main+0)+0+1),f
	goto	u687
	decfsz	((??_main+0)+0+2),f
	goto	u687
	nop2
opt asmopt_on

	goto	l785
	line	51
;WLC3PH.c: 51: while(1)
	
l55:	
	line	53
	
l785:	
;WLC3PH.c: 52: {
;WLC3PH.c: 53: TRISA = 0x20;
	movlw	(020h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	54
	
l787:	
;WLC3PH.c: 54: PORTA = 0xDF;;
	movlw	(0DFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	55
	
l789:	
;WLC3PH.c: 55: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_main+0)+0,f
u697:
	nop
decfsz	(??_main+0)+0,f
	goto	u697
	nop2	;nop
	nop
opt asmopt_on

	line	57
	
l791:	
;WLC3PH.c: 57: if( RA5 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(45/8),(45)&7	;volatile
	goto	u301
	goto	u300
u301:
	goto	l56
u300:
	line	59
	
l793:	
;WLC3PH.c: 58: {
;WLC3PH.c: 59: ll = 1;
	clrf	(main@ll)
	incf	(main@ll),f
	line	60
;WLC3PH.c: 60: RB4 = 1;
	bsf	(52/8),(52)&7	;volatile
	line	61
;WLC3PH.c: 61: }
	goto	l795
	line	62
	
l56:	
	line	64
;WLC3PH.c: 62: else
;WLC3PH.c: 63: {
;WLC3PH.c: 64: ll = 0;
	clrf	(main@ll)
	line	65
;WLC3PH.c: 65: RB4 = 0;
	bcf	(52/8),(52)&7	;volatile
	goto	l795
	line	66
	
l57:	
	line	69
	
l795:	
;WLC3PH.c: 66: }
;WLC3PH.c: 69: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	70
;WLC3PH.c: 70: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	72
	
l797:	
;WLC3PH.c: 72: TRISA = 0x04;
	movlw	(04h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	73
	
l799:	
;WLC3PH.c: 73: PORTA = 0xFB;
	movlw	(0FBh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	74
	
l801:	
;WLC3PH.c: 74: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_main+0)+0,f
u707:
	nop
decfsz	(??_main+0)+0,f
	goto	u707
	nop2	;nop
	nop
opt asmopt_on

	line	77
	
l803:	
;WLC3PH.c: 77: if( RA2 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(42/8),(42)&7	;volatile
	goto	u311
	goto	u310
u311:
	goto	l58
u310:
	line	79
	
l805:	
;WLC3PH.c: 78: {
;WLC3PH.c: 79: ul = 1;
	clrf	(main@ul)
	incf	(main@ul),f
	line	80
;WLC3PH.c: 80: RB2 = 1;
	bsf	(50/8),(50)&7	;volatile
	line	82
	
l807:	
;WLC3PH.c: 82: if(dry_run == 1)
	movf	(main@dry_run),w
	xorlw	01h
	skipz
	goto	u321
	goto	u320
u321:
	goto	l829
u320:
	line	84
	
l809:	
;WLC3PH.c: 83: {
;WLC3PH.c: 84: dry_run = 0;
	clrf	(main@dry_run)
	goto	l829
	line	85
	
l59:	
	line	86
;WLC3PH.c: 85: }
;WLC3PH.c: 86: }
	goto	l829
	line	87
	
l58:	
	line	89
;WLC3PH.c: 87: else
;WLC3PH.c: 88: {
;WLC3PH.c: 89: ul = 0;
	clrf	(main@ul)
	line	90
;WLC3PH.c: 90: RB2 = 0;
	bcf	(50/8),(50)&7	;volatile
	line	92
	
l811:	
;WLC3PH.c: 92: if(dry_run == 1)
	movf	(main@dry_run),w
	xorlw	01h
	skipz
	goto	u331
	goto	u330
u331:
	goto	l829
u330:
	line	94
	
l813:	
;WLC3PH.c: 93: {
;WLC3PH.c: 94: RC4 = 1;
	bsf	(60/8),(60)&7	;volatile
	line	95
;WLC3PH.c: 95: for( i = 0; i <= 7; i++ )
	clrf	(main@i)
	
l815:	
	movlw	(08h)
	subwf	(main@i),w
	skipc
	goto	u341
	goto	u340
u341:
	goto	l819
u340:
	goto	l63
	
l817:	
	goto	l63
	line	96
	
l62:	
	line	97
	
l819:	
;WLC3PH.c: 96: {
;WLC3PH.c: 97: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u717:
	decfsz	((??_main+0)+0),f
	goto	u717
	decfsz	((??_main+0)+0+1),f
	goto	u717
	decfsz	((??_main+0)+0+2),f
	goto	u717
	nop2
opt asmopt_on

	line	95
	
l821:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i),f
	
l823:	
	movlw	(08h)
	subwf	(main@i),w
	skipc
	goto	u351
	goto	u350
u351:
	goto	l819
u350:
	
l63:	
	line	99
;WLC3PH.c: 98: }
;WLC3PH.c: 99: RC4 = 0;
	bcf	(60/8),(60)&7	;volatile
	line	100
;WLC3PH.c: 100: lp_flag = 0;
	clrf	(main@lp_flag)
	line	101
;WLC3PH.c: 101: motor_flag = 0;
	clrf	(main@motor_flag)
	line	102
;WLC3PH.c: 102: RC5 = 0;
	bcf	(61/8),(61)&7	;volatile
	line	105
;WLC3PH.c: 105: while(1)
	
l64:	
	line	107
;WLC3PH.c: 106: {
;WLC3PH.c: 107: RB7 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7	;volatile
	line	108
	
l825:	
;WLC3PH.c: 108: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u727:
	decfsz	((??_main+0)+0),f
	goto	u727
	decfsz	((??_main+0)+0+1),f
	goto	u727
	decfsz	((??_main+0)+0+2),f
	goto	u727
	nop2
opt asmopt_on

	line	109
	
l827:	
;WLC3PH.c: 109: RB7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	110
;WLC3PH.c: 110: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u737:
	decfsz	((??_main+0)+0),f
	goto	u737
	decfsz	((??_main+0)+0+1),f
	goto	u737
	decfsz	((??_main+0)+0+2),f
	goto	u737
	nop2
opt asmopt_on

	goto	l64
	line	111
	
l65:	
	line	105
	goto	l64
	
l66:	
	goto	l829
	line	112
	
l61:	
	goto	l829
	line	113
	
l60:	
	line	116
	
l829:	
;WLC3PH.c: 111: }
;WLC3PH.c: 112: }
;WLC3PH.c: 113: }
;WLC3PH.c: 116: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	117
;WLC3PH.c: 117: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	119
	
l831:	
;WLC3PH.c: 119: TRISA = 0x08;
	movlw	(08h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	120
	
l833:	
;WLC3PH.c: 120: PORTA = 0xF7;
	movlw	(0F7h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	121
	
l835:	
;WLC3PH.c: 121: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_main+0)+0,f
u747:
	nop
decfsz	(??_main+0)+0,f
	goto	u747
	nop2	;nop
	nop
opt asmopt_on

	line	123
	
l837:	
;WLC3PH.c: 123: if( RA3 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(43/8),(43)&7	;volatile
	goto	u361
	goto	u360
u361:
	goto	l67
u360:
	line	125
	
l839:	
;WLC3PH.c: 124: {
;WLC3PH.c: 125: lu = 1;
	clrf	(main@lu)
	incf	(main@lu),f
	line	126
;WLC3PH.c: 126: RB3 = 1;
	bsf	(51/8),(51)&7	;volatile
	line	127
;WLC3PH.c: 127: }
	goto	l841
	line	128
	
l67:	
	line	130
;WLC3PH.c: 128: else
;WLC3PH.c: 129: {
;WLC3PH.c: 130: lu = 0;
	clrf	(main@lu)
	line	131
;WLC3PH.c: 131: RB3 = 0;
	bcf	(51/8),(51)&7	;volatile
	goto	l841
	line	132
	
l68:	
	line	135
	
l841:	
;WLC3PH.c: 132: }
;WLC3PH.c: 135: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	136
;WLC3PH.c: 136: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	138
	
l843:	
;WLC3PH.c: 138: TRISA = 0x02;
	movlw	(02h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	139
	
l845:	
;WLC3PH.c: 139: PORTA = 0xFD;
	movlw	(0FDh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	140
	
l847:	
;WLC3PH.c: 140: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_main+0)+0,f
u757:
	nop
decfsz	(??_main+0)+0,f
	goto	u757
	nop2	;nop
	nop
opt asmopt_on

	line	142
	
l849:	
;WLC3PH.c: 142: if( RA1 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(41/8),(41)&7	;volatile
	goto	u371
	goto	u370
u371:
	goto	l69
u370:
	line	144
	
l851:	
;WLC3PH.c: 143: {
;WLC3PH.c: 144: uu = 1;
	clrf	(main@uu)
	incf	(main@uu),f
	line	145
;WLC3PH.c: 145: RB1 = 1;
	bsf	(49/8),(49)&7	;volatile
	line	146
;WLC3PH.c: 146: }
	goto	l853
	line	147
	
l69:	
	line	149
;WLC3PH.c: 147: else
;WLC3PH.c: 148: {
;WLC3PH.c: 149: uu = 0;
	clrf	(main@uu)
	line	150
;WLC3PH.c: 150: RB1 = 0;
	bcf	(49/8),(49)&7	;volatile
	goto	l853
	line	151
	
l70:	
	line	154
	
l853:	
;WLC3PH.c: 151: }
;WLC3PH.c: 154: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	155
;WLC3PH.c: 155: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	157
	
l855:	
;WLC3PH.c: 157: if( motor_flag == 1 )
	movf	(main@motor_flag),w
	xorlw	01h
	skipz
	goto	u381
	goto	u380
u381:
	goto	l865
u380:
	line	159
	
l857:	
;WLC3PH.c: 158: {
;WLC3PH.c: 159: txr_not_received ++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_txr_not_received),f
	line	161
	
l859:	
;WLC3PH.c: 161: if( uu == 0 && ll == 1 )
	movf	(main@uu),f
	skipz
	goto	u391
	goto	u390
u391:
	goto	l72
u390:
	
l861:	
	movf	(main@ll),w
	xorlw	01h
	skipz
	goto	u401
	goto	u400
u401:
	goto	l72
u400:
	line	163
	
l863:	
;WLC3PH.c: 162: {
;WLC3PH.c: 163: level_check = 1;
	clrf	(main@level_check)
	incf	(main@level_check),f
	line	164
;WLC3PH.c: 164: }
	goto	l74
	line	165
	
l72:	
	line	167
;WLC3PH.c: 165: else
;WLC3PH.c: 166: {
;WLC3PH.c: 167: level_check = 0;
	clrf	(main@level_check)
	goto	l74
	line	168
	
l73:	
	line	169
;WLC3PH.c: 168: }
;WLC3PH.c: 169: }
	goto	l74
	line	170
	
l71:	
	line	172
	
l865:	
;WLC3PH.c: 170: else
;WLC3PH.c: 171: {
;WLC3PH.c: 172: if( (uu == 0 && ul == 0) && (lu == 1 && ll == 1) )
	movf	(main@uu),f
	skipz
	goto	u411
	goto	u410
u411:
	goto	l75
u410:
	
l867:	
	movf	(main@ul),f
	skipz
	goto	u421
	goto	u420
u421:
	goto	l75
u420:
	
l869:	
	movf	(main@lu),w
	xorlw	01h
	skipz
	goto	u431
	goto	u430
u431:
	goto	l75
u430:
	
l871:	
	movf	(main@ll),w
	xorlw	01h
	skipz
	goto	u441
	goto	u440
u441:
	goto	l75
u440:
	line	174
	
l873:	
;WLC3PH.c: 173: {
;WLC3PH.c: 174: level_check = 1;
	clrf	(main@level_check)
	incf	(main@level_check),f
	line	175
;WLC3PH.c: 175: }
	goto	l74
	line	176
	
l75:	
	line	178
;WLC3PH.c: 176: else
;WLC3PH.c: 177: {
;WLC3PH.c: 178: level_check = 0;
	clrf	(main@level_check)
	goto	l74
	line	179
	
l76:	
	line	180
	
l74:	
	line	183
;WLC3PH.c: 179: }
;WLC3PH.c: 180: }
;WLC3PH.c: 183: if( RC0 == 1 && RC1 == 1 && RC2 == 1 )
	btfss	(56/8),(56)&7	;volatile
	goto	u451
	goto	u450
u451:
	goto	l77
u450:
	
l875:	
	btfss	(57/8),(57)&7	;volatile
	goto	u461
	goto	u460
u461:
	goto	l77
u460:
	
l877:	
	btfss	(58/8),(58)&7	;volatile
	goto	u471
	goto	u470
u471:
	goto	l77
u470:
	line	186
	
l879:	
;WLC3PH.c: 184: {
;WLC3PH.c: 186: power = 1;
	clrf	(main@power)
	incf	(main@power),f
	line	187
;WLC3PH.c: 187: }
	goto	l881
	line	188
	
l77:	
	line	191
;WLC3PH.c: 188: else
;WLC3PH.c: 189: {
;WLC3PH.c: 191: power = 0;
	clrf	(main@power)
	goto	l881
	line	192
	
l78:	
	line	194
	
l881:	
;WLC3PH.c: 192: }
;WLC3PH.c: 194: if( level_check == 1 && power == 1 && txr_not_received <= 20 )
	movf	(main@level_check),w
	xorlw	01h
	skipz
	goto	u481
	goto	u480
u481:
	goto	l901
u480:
	
l883:	
	movf	(main@power),w
	xorlw	01h
	skipz
	goto	u491
	goto	u490
u491:
	goto	l901
u490:
	
l885:	
	movlw	(015h)
	subwf	(_txr_not_received),w
	skipnc
	goto	u501
	goto	u500
u501:
	goto	l901
u500:
	line	197
	
l887:	
;WLC3PH.c: 195: {
;WLC3PH.c: 197: if( lp_flag == 0 )
	movf	(main@lp_flag),f
	skipz
	goto	u511
	goto	u510
u511:
	goto	l83
u510:
	line	199
	
l889:	
;WLC3PH.c: 198: {
;WLC3PH.c: 199: RC3 = 1;
	bsf	(59/8),(59)&7	;volatile
	line	201
;WLC3PH.c: 201: for( i = 0; i <= 7; i++ )
	clrf	(main@i)
	
l891:	
	movlw	(08h)
	subwf	(main@i),w
	skipc
	goto	u521
	goto	u520
u521:
	goto	l895
u520:
	goto	l82
	
l893:	
	goto	l82
	line	202
	
l81:	
	line	203
	
l895:	
;WLC3PH.c: 202: {
;WLC3PH.c: 203: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u767:
	decfsz	((??_main+0)+0),f
	goto	u767
	decfsz	((??_main+0)+0+1),f
	goto	u767
	decfsz	((??_main+0)+0+2),f
	goto	u767
	nop2
opt asmopt_on

	line	201
	
l897:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i),f
	
l899:	
	movlw	(08h)
	subwf	(main@i),w
	skipc
	goto	u531
	goto	u530
u531:
	goto	l895
u530:
	
l82:	
	line	205
;WLC3PH.c: 204: }
;WLC3PH.c: 205: RC3 = 0;
	bcf	(59/8),(59)&7	;volatile
	line	206
;WLC3PH.c: 206: lp_flag = 1;
	clrf	(main@lp_flag)
	incf	(main@lp_flag),f
	line	207
;WLC3PH.c: 207: motor_flag = 1;
	clrf	(main@motor_flag)
	incf	(main@motor_flag),f
	line	208
;WLC3PH.c: 208: dry_run = 0;
	clrf	(main@dry_run)
	line	209
;WLC3PH.c: 209: RC5 = 1;
	bsf	(61/8),(61)&7	;volatile
	goto	l83
	line	210
	
l80:	
	line	211
;WLC3PH.c: 210: }
;WLC3PH.c: 211: }
	goto	l83
	line	213
	
l79:	
	line	216
	
l901:	
;WLC3PH.c: 213: else
;WLC3PH.c: 214: {
;WLC3PH.c: 216: if( lp_flag == 1 )
	movf	(main@lp_flag),w
	xorlw	01h
	skipz
	goto	u541
	goto	u540
u541:
	goto	l83
u540:
	line	218
	
l903:	
;WLC3PH.c: 217: {
;WLC3PH.c: 218: RC4 = 1;
	bsf	(60/8),(60)&7	;volatile
	line	219
;WLC3PH.c: 219: for( i = 0; i <= 7; i++ )
	clrf	(main@i)
	
l905:	
	movlw	(08h)
	subwf	(main@i),w
	skipc
	goto	u551
	goto	u550
u551:
	goto	l909
u550:
	goto	l86
	
l907:	
	goto	l86
	line	220
	
l85:	
	line	221
	
l909:	
;WLC3PH.c: 220: {
;WLC3PH.c: 221: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u777:
	decfsz	((??_main+0)+0),f
	goto	u777
	decfsz	((??_main+0)+0+1),f
	goto	u777
	decfsz	((??_main+0)+0+2),f
	goto	u777
	nop2
opt asmopt_on

	line	219
	
l911:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i),f
	
l913:	
	movlw	(08h)
	subwf	(main@i),w
	skipc
	goto	u561
	goto	u560
u561:
	goto	l909
u560:
	
l86:	
	line	223
;WLC3PH.c: 222: }
;WLC3PH.c: 223: RC4 = 0;
	bcf	(60/8),(60)&7	;volatile
	line	224
;WLC3PH.c: 224: lp_flag = 0;
	clrf	(main@lp_flag)
	line	225
;WLC3PH.c: 225: motor_flag = 0;
	clrf	(main@motor_flag)
	line	226
;WLC3PH.c: 226: RC5 = 0;
	bcf	(61/8),(61)&7	;volatile
	goto	l83
	line	227
	
l84:	
	line	228
	
l83:	
	line	231
;WLC3PH.c: 227: }
;WLC3PH.c: 228: }
;WLC3PH.c: 231: for( count = 0; count < 15; count++ )
	clrf	(main@count)
	
l915:	
	movlw	(0Fh)
	subwf	(main@count),w
	skipc
	goto	u571
	goto	u570
u571:
	goto	l919
u570:
	goto	l785
	
l917:	
	goto	l785
	line	232
	
l87:	
	line	233
	
l919:	
;WLC3PH.c: 232: {
;WLC3PH.c: 233: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u787:
	decfsz	((??_main+0)+0),f
	goto	u787
	decfsz	((??_main+0)+0+1),f
	goto	u787
	decfsz	((??_main+0)+0+2),f
	goto	u787
	nop2
opt asmopt_on

	line	231
	
l921:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@count),f
	
l923:	
	movlw	(0Fh)
	subwf	(main@count),w
	skipc
	goto	u581
	goto	u580
u581:
	goto	l919
u580:
	goto	l785
	
l88:	
	goto	l785
	line	235
	
l89:	
	line	51
	goto	l785
	
l90:	
	line	236
	
l91:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_Tx_Received

;; *************** function _Tx_Received *****************
;; Defined at:
;;		line 240 in file "C:\XC8 PROJECTS\WLC 3PH WITHOUT TRIP\WLC3PH.c"
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
	file	"C:\XC8 PROJECTS\WLC 3PH WITHOUT TRIP\WLC3PH.c"
	line	240
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
	line	241
	
i1l925:	
;WLC3PH.c: 241: txr_not_received = 0;
	clrf	(_txr_not_received)
	line	242
	
i1l94:	
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

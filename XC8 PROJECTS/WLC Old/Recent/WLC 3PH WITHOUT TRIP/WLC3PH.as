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
	global	_i
	global	_ll
	global	_lp_flag
	global	_ul
	global	_uu
	global	_level_check
	global	_lu
	global	_motor_flag
	global	_power
	global	_txr_not_received
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
psect	text48,local,class=CODE,delta=2,merge=1
global __ptext48
__ptext48:	;psect for function _Tx_Received
; #config settings
	file	"WLC3PH.as"
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

_i:
       ds      1

_ll:
       ds      1

_lp_flag:
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

_power:
       ds      1

_txr_not_received:
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
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
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
;!    BSS         12
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7      14
;!    BANK0            80      3       8
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
;!ABS                  0      0      16       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      3       8       5       10.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            20      0       0       6        0.0%
;!BANK1               20      0       0       7        0.0%
;!DATA                 0      0      16       8        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 15 in file "C:\XC8 PROJECTS\WLC 3PH WITHOUT TRIP\WLC3PH.c"
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
	file	"C:\XC8 PROJECTS\WLC 3PH WITHOUT TRIP\WLC3PH.c"
	line	15
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0]
	line	16
	
l789:	
;WLC3PH.c: 16: ADCON1 = 0x06;
	movlw	(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	17
	
l791:	
;WLC3PH.c: 17: TRISA = 0x00;
	clrf	(133)^080h	;volatile
	line	18
	
l793:	
;WLC3PH.c: 18: TRISB = 0x01;
	movlw	(01h)
	movwf	(134)^080h	;volatile
	line	19
	
l795:	
;WLC3PH.c: 19: TRISC = 0x07;
	movlw	(07h)
	movwf	(135)^080h	;volatile
	line	21
	
l797:	
;WLC3PH.c: 21: OPTION_REG = 0xC0;
	movlw	(0C0h)
	movwf	(129)^080h	;volatile
	line	22
	
l799:	
;WLC3PH.c: 22: INTCON = 0x90;
	movlw	(090h)
	movwf	(11)	;volatile
	line	24
	
l801:	
;WLC3PH.c: 24: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	25
	
l803:	
;WLC3PH.c: 25: PORTA = 0x00;
	clrf	(5)	;volatile
	line	26
	
l805:	
;WLC3PH.c: 26: PORTC = 0x00;
	clrf	(7)	;volatile
	line	29
;WLC3PH.c: 29: PORTB = 0xFE;
	movlw	(0FEh)
	movwf	(6)	;volatile
	line	30
;WLC3PH.c: 30: _delay(1000000);
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

	line	31
	
l807:	
;WLC3PH.c: 31: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	32
	
l809:	
;WLC3PH.c: 32: _delay(1000000);
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

	line	33
	
l811:	
;WLC3PH.c: 33: PORTB = 0xFE;
	movlw	(0FEh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	34
	
l813:	
;WLC3PH.c: 34: _delay(1000000);
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

	line	35
;WLC3PH.c: 35: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	36
	
l815:	
;WLC3PH.c: 36: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u747:
	decfsz	((??_main+0)+0),f
	goto	u747
	decfsz	((??_main+0)+0+1),f
	goto	u747
	decfsz	((??_main+0)+0+2),f
	goto	u747
	nop2
opt asmopt_on

	line	37
	
l817:	
;WLC3PH.c: 37: PORTB = 0xFE;
	movlw	(0FEh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	38
	
l819:	
;WLC3PH.c: 38: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u757:
	decfsz	((??_main+0)+0),f
	goto	u757
	decfsz	((??_main+0)+0+1),f
	goto	u757
	decfsz	((??_main+0)+0+2),f
	goto	u757
	nop2
opt asmopt_on

	line	39
	
l821:	
;WLC3PH.c: 39: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	40
;WLC3PH.c: 40: _delay(1000000);
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

	line	41
;WLC3PH.c: 41: PORTB = 0xFE;
	movlw	(0FEh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	42
;WLC3PH.c: 42: _delay(1000000);
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

	line	43
	
l823:	
;WLC3PH.c: 43: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	44
	
l825:	
;WLC3PH.c: 44: _delay(1000000);
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

	line	45
	
l827:	
;WLC3PH.c: 45: PORTB = 0xFE;
	movlw	(0FEh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	46
	
l829:	
;WLC3PH.c: 46: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u797:
	decfsz	((??_main+0)+0),f
	goto	u797
	decfsz	((??_main+0)+0+1),f
	goto	u797
	decfsz	((??_main+0)+0+2),f
	goto	u797
	nop2
opt asmopt_on

	line	47
;WLC3PH.c: 47: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	48
	
l831:	
;WLC3PH.c: 48: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u807:
	decfsz	((??_main+0)+0),f
	goto	u807
	decfsz	((??_main+0)+0+1),f
	goto	u807
	decfsz	((??_main+0)+0+2),f
	goto	u807
	nop2
opt asmopt_on

	goto	l833
	line	50
;WLC3PH.c: 50: while(1)
	
l79:	
	line	52
	
l833:	
;WLC3PH.c: 51: {
;WLC3PH.c: 52: if( motor_flag == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_motor_flag),w
	xorlw	01h
	skipz
	goto	u361
	goto	u360
u361:
	goto	l843
u360:
	line	54
	
l835:	
;WLC3PH.c: 53: {
;WLC3PH.c: 54: txr_not_received ++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_txr_not_received),f
	line	56
	
l837:	
;WLC3PH.c: 56: if( uu == 0 && ll == 1 )
	movf	(_uu),f
	skipz
	goto	u371
	goto	u370
u371:
	goto	l81
u370:
	
l839:	
	movf	(_ll),w
	xorlw	01h
	skipz
	goto	u381
	goto	u380
u381:
	goto	l81
u380:
	line	58
	
l841:	
;WLC3PH.c: 57: {
;WLC3PH.c: 58: level_check = 1;
	clrf	(_level_check)
	incf	(_level_check),f
	line	59
;WLC3PH.c: 59: }
	goto	l83
	line	60
	
l81:	
	line	62
;WLC3PH.c: 60: else
;WLC3PH.c: 61: {
;WLC3PH.c: 62: level_check = 0;
	clrf	(_level_check)
	goto	l83
	line	63
	
l82:	
	line	64
;WLC3PH.c: 63: }
;WLC3PH.c: 64: }
	goto	l83
	line	65
	
l80:	
	line	67
	
l843:	
;WLC3PH.c: 65: else
;WLC3PH.c: 66: {
;WLC3PH.c: 67: if( (uu == 0 && ul == 0) && (lu == 1 && ll == 1) )
	movf	(_uu),f
	skipz
	goto	u391
	goto	u390
u391:
	goto	l84
u390:
	
l845:	
	movf	(_ul),f
	skipz
	goto	u401
	goto	u400
u401:
	goto	l84
u400:
	
l847:	
	movf	(_lu),w
	xorlw	01h
	skipz
	goto	u411
	goto	u410
u411:
	goto	l84
u410:
	
l849:	
	movf	(_ll),w
	xorlw	01h
	skipz
	goto	u421
	goto	u420
u421:
	goto	l84
u420:
	line	69
	
l851:	
;WLC3PH.c: 68: {
;WLC3PH.c: 69: level_check = 1;
	clrf	(_level_check)
	incf	(_level_check),f
	line	70
;WLC3PH.c: 70: }
	goto	l83
	line	71
	
l84:	
	line	73
;WLC3PH.c: 71: else
;WLC3PH.c: 72: {
;WLC3PH.c: 73: level_check = 0;
	clrf	(_level_check)
	goto	l83
	line	74
	
l85:	
	line	75
	
l83:	
	line	78
;WLC3PH.c: 74: }
;WLC3PH.c: 75: }
;WLC3PH.c: 78: if( RC0 == 1 && RC1 == 1 && RC2 == 1 )
	btfss	(56/8),(56)&7	;volatile
	goto	u431
	goto	u430
u431:
	goto	l86
u430:
	
l853:	
	btfss	(57/8),(57)&7	;volatile
	goto	u441
	goto	u440
u441:
	goto	l86
u440:
	
l855:	
	btfss	(58/8),(58)&7	;volatile
	goto	u451
	goto	u450
u451:
	goto	l86
u450:
	line	81
	
l857:	
;WLC3PH.c: 79: {
;WLC3PH.c: 81: power = 1;
	clrf	(_power)
	incf	(_power),f
	line	82
;WLC3PH.c: 82: }
	goto	l859
	line	83
	
l86:	
	line	86
;WLC3PH.c: 83: else
;WLC3PH.c: 84: {
;WLC3PH.c: 86: power = 0;
	clrf	(_power)
	goto	l859
	line	87
	
l87:	
	line	89
	
l859:	
;WLC3PH.c: 87: }
;WLC3PH.c: 89: if( level_check == 1 && power == 1 && txr_not_received <= 20 )
	movf	(_level_check),w
	xorlw	01h
	skipz
	goto	u461
	goto	u460
u461:
	goto	l879
u460:
	
l861:	
	movf	(_power),w
	xorlw	01h
	skipz
	goto	u471
	goto	u470
u471:
	goto	l879
u470:
	
l863:	
	movlw	(015h)
	subwf	(_txr_not_received),w
	skipnc
	goto	u481
	goto	u480
u481:
	goto	l879
u480:
	line	92
	
l865:	
;WLC3PH.c: 90: {
;WLC3PH.c: 92: if( lp_flag == 0 )
	movf	(_lp_flag),f
	skipz
	goto	u491
	goto	u490
u491:
	goto	l92
u490:
	line	94
	
l867:	
;WLC3PH.c: 93: {
;WLC3PH.c: 94: RC3 = 1;
	bsf	(59/8),(59)&7	;volatile
	line	96
;WLC3PH.c: 96: for( i = 0; i <= 7; i++ )
	clrf	(_i)
	
l869:	
	movlw	(08h)
	subwf	(_i),w
	skipc
	goto	u501
	goto	u500
u501:
	goto	l873
u500:
	goto	l91
	
l871:	
	goto	l91
	line	97
	
l90:	
	line	98
	
l873:	
;WLC3PH.c: 97: {
;WLC3PH.c: 98: _delay(1000000);
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

	line	96
	
l875:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_i),f
	
l877:	
	movlw	(08h)
	subwf	(_i),w
	skipc
	goto	u511
	goto	u510
u511:
	goto	l873
u510:
	
l91:	
	line	100
;WLC3PH.c: 99: }
;WLC3PH.c: 100: RC3 = 0;
	bcf	(59/8),(59)&7	;volatile
	line	101
;WLC3PH.c: 101: lp_flag = 1;
	clrf	(_lp_flag)
	incf	(_lp_flag),f
	line	102
;WLC3PH.c: 102: motor_flag = 1;
	clrf	(_motor_flag)
	incf	(_motor_flag),f
	line	103
;WLC3PH.c: 103: dry_run = 0;
	clrf	(_dry_run)
	line	104
;WLC3PH.c: 104: RC5 = 1;
	bsf	(61/8),(61)&7	;volatile
	goto	l92
	line	105
	
l89:	
	line	106
;WLC3PH.c: 105: }
;WLC3PH.c: 106: }
	goto	l92
	line	108
	
l88:	
	line	111
	
l879:	
;WLC3PH.c: 108: else
;WLC3PH.c: 109: {
;WLC3PH.c: 111: if( lp_flag == 1 )
	movf	(_lp_flag),w
	xorlw	01h
	skipz
	goto	u521
	goto	u520
u521:
	goto	l92
u520:
	line	113
	
l881:	
;WLC3PH.c: 112: {
;WLC3PH.c: 113: RC4 = 1;
	bsf	(60/8),(60)&7	;volatile
	line	114
;WLC3PH.c: 114: for( i = 0; i <= 7; i++ )
	clrf	(_i)
	
l883:	
	movlw	(08h)
	subwf	(_i),w
	skipc
	goto	u531
	goto	u530
u531:
	goto	l887
u530:
	goto	l95
	
l885:	
	goto	l95
	line	115
	
l94:	
	line	116
	
l887:	
;WLC3PH.c: 115: {
;WLC3PH.c: 116: _delay(1000000);
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

	line	114
	
l889:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_i),f
	
l891:	
	movlw	(08h)
	subwf	(_i),w
	skipc
	goto	u541
	goto	u540
u541:
	goto	l887
u540:
	
l95:	
	line	118
;WLC3PH.c: 117: }
;WLC3PH.c: 118: RC4 = 0;
	bcf	(60/8),(60)&7	;volatile
	line	119
;WLC3PH.c: 119: lp_flag = 0;
	clrf	(_lp_flag)
	line	120
;WLC3PH.c: 120: motor_flag = 0;
	clrf	(_motor_flag)
	line	121
;WLC3PH.c: 121: RC5 = 0;
	bcf	(61/8),(61)&7	;volatile
	goto	l92
	line	122
	
l93:	
	line	123
	
l92:	
	line	126
;WLC3PH.c: 122: }
;WLC3PH.c: 123: }
;WLC3PH.c: 126: for( count = 0; count < 15; count++ )
	clrf	(_count)
	
l893:	
	movlw	(0Fh)
	subwf	(_count),w
	skipc
	goto	u551
	goto	u550
u551:
	goto	l897
u550:
	goto	l833
	
l895:	
	goto	l833
	line	127
	
l96:	
	line	128
	
l897:	
;WLC3PH.c: 127: {
;WLC3PH.c: 128: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u837:
	decfsz	((??_main+0)+0),f
	goto	u837
	decfsz	((??_main+0)+0+1),f
	goto	u837
	decfsz	((??_main+0)+0+2),f
	goto	u837
	nop2
opt asmopt_on

	line	126
	
l899:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_count),f
	
l901:	
	movlw	(0Fh)
	subwf	(_count),w
	skipc
	goto	u561
	goto	u560
u561:
	goto	l897
u560:
	goto	l833
	
l97:	
	goto	l833
	line	130
	
l98:	
	line	50
	goto	l833
	
l99:	
	line	131
	
l100:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_Tx_Received

;; *************** function _Tx_Received *****************
;; Defined at:
;;		line 135 in file "C:\XC8 PROJECTS\WLC 3PH WITHOUT TRIP\WLC3PH.c"
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
	file	"C:\XC8 PROJECTS\WLC 3PH WITHOUT TRIP\WLC3PH.c"
	line	135
	global	__size_of_Tx_Received
	__size_of_Tx_Received	equ	__end_of_Tx_Received-_Tx_Received
	
_Tx_Received:	
	opt	stack 7
; Regs used in _Tx_Received: [wreg+status,2+status,0]
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
	line	136
	
i1l903:	
;WLC3PH.c: 136: txr_not_received = 0;
	clrf	(_txr_not_received)
	line	139
	
i1l905:	
;WLC3PH.c: 139: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	140
;WLC3PH.c: 140: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	142
	
i1l907:	
;WLC3PH.c: 142: TRISA = 0x04;
	movlw	(04h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	147
	
i1l909:	
;WLC3PH.c: 147: if( RA2 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(42/8),(42)&7	;volatile
	goto	u57_21
	goto	u57_20
u57_21:
	goto	i1l103
u57_20:
	line	149
	
i1l911:	
;WLC3PH.c: 148: {
;WLC3PH.c: 149: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_Tx_Received+0)+0,f
u84_27:
	nop
decfsz	(??_Tx_Received+0)+0,f
	goto	u84_27
	nop2	;nop
	nop
opt asmopt_on

	line	150
	
i1l913:	
;WLC3PH.c: 150: if( RA2 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(42/8),(42)&7	;volatile
	goto	u58_21
	goto	u58_20
u58_21:
	goto	i1l939
u58_20:
	line	152
	
i1l915:	
;WLC3PH.c: 151: {
;WLC3PH.c: 152: ul = 1;
	clrf	(_ul)
	incf	(_ul),f
	line	155
	
i1l917:	
;WLC3PH.c: 155: if(dry_run == 1)
	movf	(_dry_run),w
	xorlw	01h
	skipz
	goto	u59_21
	goto	u59_20
u59_21:
	goto	i1l939
u59_20:
	line	157
	
i1l919:	
;WLC3PH.c: 156: {
;WLC3PH.c: 157: dry_run = 0;
	clrf	(_dry_run)
	goto	i1l939
	line	158
	
i1l105:	
	goto	i1l939
	line	159
	
i1l104:	
	line	160
;WLC3PH.c: 158: }
;WLC3PH.c: 159: }
;WLC3PH.c: 160: }
	goto	i1l939
	line	161
	
i1l103:	
	line	163
;WLC3PH.c: 161: else
;WLC3PH.c: 162: {
;WLC3PH.c: 163: ul = 0;
	clrf	(_ul)
	line	166
	
i1l921:	
;WLC3PH.c: 166: if(dry_run == 1)
	movf	(_dry_run),w
	xorlw	01h
	skipz
	goto	u60_21
	goto	u60_20
u60_21:
	goto	i1l939
u60_20:
	line	168
	
i1l923:	
;WLC3PH.c: 167: {
;WLC3PH.c: 168: RC4 = 1;
	bsf	(60/8),(60)&7	;volatile
	line	169
;WLC3PH.c: 169: for( i = 0; i <= 7; i++ )
	clrf	(_i)
	
i1l925:	
	movlw	(08h)
	subwf	(_i),w
	skipc
	goto	u61_21
	goto	u61_20
u61_21:
	goto	i1l929
u61_20:
	goto	i1l109
	
i1l927:	
	goto	i1l109
	line	170
	
i1l108:	
	line	171
	
i1l929:	
;WLC3PH.c: 170: {
;WLC3PH.c: 171: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_Tx_Received+0)+0+2),f
movlw	19
movwf	((??_Tx_Received+0)+0+1),f
	movlw	177
movwf	((??_Tx_Received+0)+0),f
u85_27:
	decfsz	((??_Tx_Received+0)+0),f
	goto	u85_27
	decfsz	((??_Tx_Received+0)+0+1),f
	goto	u85_27
	decfsz	((??_Tx_Received+0)+0+2),f
	goto	u85_27
	nop2
opt asmopt_on

	line	169
	
i1l931:	
	movlw	(01h)
	movwf	(??_Tx_Received+0)+0
	movf	(??_Tx_Received+0)+0,w
	addwf	(_i),f
	
i1l933:	
	movlw	(08h)
	subwf	(_i),w
	skipc
	goto	u62_21
	goto	u62_20
u62_21:
	goto	i1l929
u62_20:
	
i1l109:	
	line	173
;WLC3PH.c: 172: }
;WLC3PH.c: 173: RC4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7	;volatile
	line	174
;WLC3PH.c: 174: lp_flag = 0;
	clrf	(_lp_flag)
	line	175
;WLC3PH.c: 175: motor_flag = 0;
	clrf	(_motor_flag)
	line	176
;WLC3PH.c: 176: RC5 = 0;
	bcf	(61/8),(61)&7	;volatile
	line	178
;WLC3PH.c: 178: while(1)
	
i1l110:	
	line	180
;WLC3PH.c: 179: {
;WLC3PH.c: 180: RB7 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7	;volatile
	line	181
	
i1l935:	
;WLC3PH.c: 181: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_Tx_Received+0)+0+2),f
movlw	19
movwf	((??_Tx_Received+0)+0+1),f
	movlw	177
movwf	((??_Tx_Received+0)+0),f
u86_27:
	decfsz	((??_Tx_Received+0)+0),f
	goto	u86_27
	decfsz	((??_Tx_Received+0)+0+1),f
	goto	u86_27
	decfsz	((??_Tx_Received+0)+0+2),f
	goto	u86_27
	nop2
opt asmopt_on

	line	182
	
i1l937:	
;WLC3PH.c: 182: RB7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	183
;WLC3PH.c: 183: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_Tx_Received+0)+0+2),f
movlw	19
movwf	((??_Tx_Received+0)+0+1),f
	movlw	177
movwf	((??_Tx_Received+0)+0),f
u87_27:
	decfsz	((??_Tx_Received+0)+0),f
	goto	u87_27
	decfsz	((??_Tx_Received+0)+0+1),f
	goto	u87_27
	decfsz	((??_Tx_Received+0)+0+2),f
	goto	u87_27
	nop2
opt asmopt_on

	goto	i1l110
	line	184
	
i1l111:	
	line	178
	goto	i1l110
	
i1l112:	
	goto	i1l939
	line	185
	
i1l107:	
	goto	i1l939
	line	186
	
i1l106:	
	line	189
	
i1l939:	
;WLC3PH.c: 184: }
;WLC3PH.c: 185: }
;WLC3PH.c: 186: }
;WLC3PH.c: 189: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	190
;WLC3PH.c: 190: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	192
	
i1l941:	
;WLC3PH.c: 192: TRISA = 0x02;
	movlw	(02h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	196
	
i1l943:	
;WLC3PH.c: 196: if( RA1 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(41/8),(41)&7	;volatile
	goto	u63_21
	goto	u63_20
u63_21:
	goto	i1l113
u63_20:
	line	198
	
i1l945:	
;WLC3PH.c: 197: {
;WLC3PH.c: 198: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_Tx_Received+0)+0,f
u88_27:
	nop
decfsz	(??_Tx_Received+0)+0,f
	goto	u88_27
	nop2	;nop
	nop
opt asmopt_on

	line	199
	
i1l947:	
;WLC3PH.c: 199: if( RA1 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(41/8),(41)&7	;volatile
	goto	u64_21
	goto	u64_20
u64_21:
	goto	i1l951
u64_20:
	line	201
	
i1l949:	
;WLC3PH.c: 200: {
;WLC3PH.c: 201: uu = 1;
	clrf	(_uu)
	incf	(_uu),f
	line	202
;WLC3PH.c: 202: ul = 1;
	clrf	(_ul)
	incf	(_ul),f
	goto	i1l951
	line	205
	
i1l114:	
	line	206
;WLC3PH.c: 205: }
;WLC3PH.c: 206: }
	goto	i1l951
	line	207
	
i1l113:	
	line	209
;WLC3PH.c: 207: else
;WLC3PH.c: 208: {
;WLC3PH.c: 209: uu = 0;
	clrf	(_uu)
	goto	i1l951
	line	211
	
i1l115:	
	line	214
	
i1l951:	
;WLC3PH.c: 211: }
;WLC3PH.c: 214: if(uu == 1)
	movf	(_uu),w
	xorlw	01h
	skipz
	goto	u65_21
	goto	u65_20
u65_21:
	goto	i1l116
u65_20:
	line	216
	
i1l953:	
;WLC3PH.c: 215: {
;WLC3PH.c: 216: RB1 = 1;
	bsf	(49/8),(49)&7	;volatile
	line	217
;WLC3PH.c: 217: }
	goto	i1l955
	line	218
	
i1l116:	
	line	220
;WLC3PH.c: 218: else
;WLC3PH.c: 219: {
;WLC3PH.c: 220: RB1 = 0;
	bcf	(49/8),(49)&7	;volatile
	goto	i1l955
	line	221
	
i1l117:	
	line	223
	
i1l955:	
;WLC3PH.c: 221: }
;WLC3PH.c: 223: if(ul == 1)
	movf	(_ul),w
	xorlw	01h
	skipz
	goto	u66_21
	goto	u66_20
u66_21:
	goto	i1l118
u66_20:
	line	225
	
i1l957:	
;WLC3PH.c: 224: {
;WLC3PH.c: 225: RB2 = 1;
	bsf	(50/8),(50)&7	;volatile
	line	226
;WLC3PH.c: 226: }
	goto	i1l959
	line	227
	
i1l118:	
	line	229
;WLC3PH.c: 227: else
;WLC3PH.c: 228: {
;WLC3PH.c: 229: RB2 = 0;
	bcf	(50/8),(50)&7	;volatile
	goto	i1l959
	line	230
	
i1l119:	
	line	232
	
i1l959:	
;WLC3PH.c: 230: }
;WLC3PH.c: 232: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	233
;WLC3PH.c: 233: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	235
	
i1l961:	
;WLC3PH.c: 235: TRISA = 0x20;
	movlw	(020h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	236
	
i1l963:	
;WLC3PH.c: 236: PORTA = 0x08;
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	237
	
i1l965:	
;WLC3PH.c: 237: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_Tx_Received+0)+0,f
u89_27:
	nop
decfsz	(??_Tx_Received+0)+0,f
	goto	u89_27
	nop2	;nop
	nop
opt asmopt_on

	line	239
	
i1l967:	
;WLC3PH.c: 239: if( RA5 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(45/8),(45)&7	;volatile
	goto	u67_21
	goto	u67_20
u67_21:
	goto	i1l120
u67_20:
	line	241
	
i1l969:	
;WLC3PH.c: 240: {
;WLC3PH.c: 241: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_Tx_Received+0)+0,f
u90_27:
	nop
decfsz	(??_Tx_Received+0)+0,f
	goto	u90_27
	nop2	;nop
	nop
opt asmopt_on

	line	242
	
i1l971:	
;WLC3PH.c: 242: if( RA5 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(45/8),(45)&7	;volatile
	goto	u68_21
	goto	u68_20
u68_21:
	goto	i1l975
u68_20:
	line	244
	
i1l973:	
;WLC3PH.c: 243: {
;WLC3PH.c: 244: ll = 1;
	clrf	(_ll)
	incf	(_ll),f
	line	245
;WLC3PH.c: 245: RB4 = 1;
	bsf	(52/8),(52)&7	;volatile
	goto	i1l975
	line	246
	
i1l121:	
	line	247
;WLC3PH.c: 246: }
;WLC3PH.c: 247: }
	goto	i1l975
	line	248
	
i1l120:	
	line	250
;WLC3PH.c: 248: else
;WLC3PH.c: 249: {
;WLC3PH.c: 250: ll = 0;
	clrf	(_ll)
	line	251
;WLC3PH.c: 251: RB4 = 0;
	bcf	(52/8),(52)&7	;volatile
	goto	i1l975
	line	252
	
i1l122:	
	line	255
	
i1l975:	
;WLC3PH.c: 252: }
;WLC3PH.c: 255: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	256
;WLC3PH.c: 256: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	258
	
i1l977:	
;WLC3PH.c: 258: TRISA = 0x08;
	movlw	(08h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	259
	
i1l979:	
;WLC3PH.c: 259: PORTA = 0x20;
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	260
	
i1l981:	
;WLC3PH.c: 260: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_Tx_Received+0)+0,f
u91_27:
	nop
decfsz	(??_Tx_Received+0)+0,f
	goto	u91_27
	nop2	;nop
	nop
opt asmopt_on

	line	262
	
i1l983:	
;WLC3PH.c: 262: if( RA3 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(43/8),(43)&7	;volatile
	goto	u69_21
	goto	u69_20
u69_21:
	goto	i1l123
u69_20:
	line	264
	
i1l985:	
;WLC3PH.c: 263: {
;WLC3PH.c: 264: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_Tx_Received+0)+0,f
u92_27:
	nop
decfsz	(??_Tx_Received+0)+0,f
	goto	u92_27
	nop2	;nop
	nop
opt asmopt_on

	line	265
	
i1l987:	
;WLC3PH.c: 265: if( RA3 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(43/8),(43)&7	;volatile
	goto	u70_21
	goto	u70_20
u70_21:
	goto	i1l991
u70_20:
	line	267
	
i1l989:	
;WLC3PH.c: 266: {
;WLC3PH.c: 267: lu = 1;
	clrf	(_lu)
	incf	(_lu),f
	line	268
;WLC3PH.c: 268: RB3 = 1;
	bsf	(51/8),(51)&7	;volatile
	goto	i1l991
	line	269
	
i1l124:	
	line	270
;WLC3PH.c: 269: }
;WLC3PH.c: 270: }
	goto	i1l991
	line	271
	
i1l123:	
	line	273
;WLC3PH.c: 271: else
;WLC3PH.c: 272: {
;WLC3PH.c: 273: lu = 0;
	clrf	(_lu)
	line	274
;WLC3PH.c: 274: RB3 = 0;
	bcf	(51/8),(51)&7	;volatile
	goto	i1l991
	line	275
	
i1l125:	
	line	278
	
i1l991:	
;WLC3PH.c: 275: }
;WLC3PH.c: 278: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	279
;WLC3PH.c: 279: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	282
	
i1l993:	
;WLC3PH.c: 282: INTF = 0x00;
	bcf	(89/8),(89)&7	;volatile
	line	283
	
i1l126:	
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

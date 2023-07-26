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
	FNCALL	_main,_motor_start
	FNCALL	_main,_motor_stop
	FNROOT	_main
	FNCALL	intlevel1,_Tx_Received
	global	intlevel1
	FNROOT	intlevel1
	global	_DRY_RUN_NEEDED
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"E:\Study Material\XC8 PROJECTS\WLC 3PH TRIP\WLC3PH_NEW.C"
	line	35

;initializer for _DRY_RUN_NEEDED
	retlw	01h
	global	_count
	global	_ll
	global	_lp_flag
	global	_motor_flag
	global	_uu
	global	_Dry_Run_Timer
	global	_level_check
	global	_lu
	global	_power_check
	global	_txr_not_received
	global	_ul
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
	global	_RB6
_RB6	set	0x36
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
; #config settings
	file	"WLC3PH.as"
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

_ll:
       ds      1

_lp_flag:
       ds      1

_motor_flag:
       ds      1

_uu:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_Dry_Run_Timer:
       ds      1

_level_check:
       ds      1

_lu:
       ds      1

_power_check:
       ds      1

_txr_not_received:
       ds      1

_ul:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"E:\Study Material\XC8 PROJECTS\WLC 3PH TRIP\WLC3PH_NEW.C"
	line	35
_DRY_RUN_NEEDED:
       ds      1

	file	"WLC3PH.as"
	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	line	#
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_motor_start:	; 0 bytes @ 0x0
?_motor_stop:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_Tx_Received:	; 0 bytes @ 0x0
??_Tx_Received:	; 0 bytes @ 0x0
	ds	5
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_motor_start:	; 0 bytes @ 0x0
??_motor_stop:	; 0 bytes @ 0x0
	ds	3
	global	motor_start@i
motor_start@i:	; 1 bytes @ 0x3
	global	motor_stop@i
motor_stop@i:	; 1 bytes @ 0x3
	ds	1
??_main:	; 0 bytes @ 0x4
	ds	3
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        1
;!    BSS         11
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      5      10
;!    BANK0            80      7      14
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
;!    _main->_motor_start
;!    _main->_motor_stop
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
;! (0) _main                                                 3     3      0     136
;!                                              4 BANK0      3     3      0
;!                        _motor_start
;!                         _motor_stop
;! ---------------------------------------------------------------------------------
;! (1) _motor_stop                                           4     4      0      68
;!                                              0 BANK0      4     4      0
;! ---------------------------------------------------------------------------------
;! (1) _motor_start                                          4     4      0      68
;!                                              0 BANK0      4     4      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (2) _Tx_Received                                          5     5      0       0
;!                                              0 COMMON     5     5      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _motor_start
;!   _motor_stop
;!
;! _Tx_Received (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               20      0       0       7        0.0%
;!BITBANK1            20      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50      7       E       5       17.5%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      5       A       1       71.4%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      18       8        0.0%
;!ABS                  0      0      18       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA              40      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 38 in file "E:\Study Material\XC8 PROJECTS\WLC 3PH TRIP\WLC3PH_NEW.C"
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
;;      Temps:          0       3       0
;;      Totals:         0       3       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_motor_start
;;		_motor_stop
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"E:\Study Material\XC8 PROJECTS\WLC 3PH TRIP\WLC3PH_NEW.C"
	line	38
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"E:\Study Material\XC8 PROJECTS\WLC 3PH TRIP\WLC3PH_NEW.C"
	line	38
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	40
	
l1092:	
;WLC3PH_NEW.C: 40: ADCON1 = 0x06;
	movlw	(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	41
	
l1094:	
;WLC3PH_NEW.C: 41: TRISA = 0x00;
	clrf	(133)^080h	;volatile
	line	42
	
l1096:	
;WLC3PH_NEW.C: 42: TRISB = 0x81;
	movlw	(081h)
	movwf	(134)^080h	;volatile
	line	43
	
l1098:	
;WLC3PH_NEW.C: 43: TRISC = 0x07;
	movlw	(07h)
	movwf	(135)^080h	;volatile
	line	45
	
l1100:	
;WLC3PH_NEW.C: 45: OPTION_REG = 0xC0;
	movlw	(0C0h)
	movwf	(129)^080h	;volatile
	line	46
	
l1102:	
;WLC3PH_NEW.C: 46: INTCON = 0x90;
	movlw	(090h)
	movwf	(11)	;volatile
	line	48
	
l1104:	
;WLC3PH_NEW.C: 48: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	49
	
l1106:	
;WLC3PH_NEW.C: 49: PORTA = 0x00;
	clrf	(5)	;volatile
	line	50
	
l1108:	
;WLC3PH_NEW.C: 50: PORTC = 0x00;
	clrf	(7)	;volatile
	line	52
	
l1110:	
;WLC3PH_NEW.C: 52: for(count = 0; count <= 4; count++)
	clrf	(_count)
	
l1112:	
	movlw	(05h)
	subwf	(_count),w
	skipc
	goto	u831
	goto	u830
u831:
	goto	l1116
u830:
	goto	l1126
	
l1114:	
	goto	l1126
	line	53
	
l85:	
	line	54
	
l1116:	
;WLC3PH_NEW.C: 53: {
;WLC3PH_NEW.C: 54: PORTB = 0xFF;
	movlw	(0FFh)
	movwf	(6)	;volatile
	line	55
;WLC3PH_NEW.C: 55: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u1067:
	decfsz	((??_main+0)+0),f
	goto	u1067
	decfsz	((??_main+0)+0+1),f
	goto	u1067
	decfsz	((??_main+0)+0+2),f
	goto	u1067
	nop2
opt asmopt_on

	line	56
	
l1118:	
;WLC3PH_NEW.C: 56: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	57
	
l1120:	
;WLC3PH_NEW.C: 57: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u1077:
	decfsz	((??_main+0)+0),f
	goto	u1077
	decfsz	((??_main+0)+0+1),f
	goto	u1077
	decfsz	((??_main+0)+0+2),f
	goto	u1077
	nop2
opt asmopt_on

	line	52
	
l1122:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_count),f
	
l1124:	
	movlw	(05h)
	subwf	(_count),w
	skipc
	goto	u841
	goto	u840
u841:
	goto	l1116
u840:
	goto	l1126
	
l86:	
	line	59
	
l1126:	
;WLC3PH_NEW.C: 58: }
;WLC3PH_NEW.C: 59: count = 0;
	clrf	(_count)
	goto	l1128
	line	61
;WLC3PH_NEW.C: 61: while(1)
	
l87:	
	line	64
	
l1128:	
;WLC3PH_NEW.C: 62: {
;WLC3PH_NEW.C: 64: if( motor_flag == 1 )
	movf	(_motor_flag),w
	xorlw	01h
	skipz
	goto	u851
	goto	u850
u851:
	goto	l1140
u850:
	line	66
	
l1130:	
;WLC3PH_NEW.C: 65: {
;WLC3PH_NEW.C: 66: txr_not_received ++;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_txr_not_received),f
	line	68
	
l1132:	
;WLC3PH_NEW.C: 68: if( uu == 0 && ll == 1 )
	movf	(_uu),f
	skipz
	goto	u861
	goto	u860
u861:
	goto	l1138
u860:
	
l1134:	
	movf	(_ll),w
	xorlw	01h
	skipz
	goto	u871
	goto	u870
u871:
	goto	l1138
u870:
	line	70
	
l1136:	
;WLC3PH_NEW.C: 69: {
;WLC3PH_NEW.C: 70: level_check = 1;
	clrf	(_level_check)
	incf	(_level_check),f
	line	71
;WLC3PH_NEW.C: 71: }
	goto	l1152
	line	72
	
l89:	
	line	74
	
l1138:	
;WLC3PH_NEW.C: 72: else
;WLC3PH_NEW.C: 73: {
;WLC3PH_NEW.C: 74: level_check = 0;
	clrf	(_level_check)
	goto	l1152
	line	75
	
l90:	
	line	76
;WLC3PH_NEW.C: 75: }
;WLC3PH_NEW.C: 76: }
	goto	l1152
	line	78
	
l88:	
	line	80
	
l1140:	
;WLC3PH_NEW.C: 78: else
;WLC3PH_NEW.C: 79: {
;WLC3PH_NEW.C: 80: if( (uu == 0 && ul == 0) && (lu == 1 && ll == 1) )
	movf	(_uu),f
	skipz
	goto	u881
	goto	u880
u881:
	goto	l1150
u880:
	
l1142:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ul),f
	skipz
	goto	u891
	goto	u890
u891:
	goto	l1150
u890:
	
l1144:	
	movf	(_lu),w
	xorlw	01h
	skipz
	goto	u901
	goto	u900
u901:
	goto	l1150
u900:
	
l1146:	
	movf	(_ll),w
	xorlw	01h
	skipz
	goto	u911
	goto	u910
u911:
	goto	l1150
u910:
	line	82
	
l1148:	
;WLC3PH_NEW.C: 81: {
;WLC3PH_NEW.C: 82: level_check = 1;
	clrf	(_level_check)
	incf	(_level_check),f
	line	83
;WLC3PH_NEW.C: 83: }
	goto	l1152
	line	84
	
l92:	
	line	86
	
l1150:	
;WLC3PH_NEW.C: 84: else
;WLC3PH_NEW.C: 85: {
;WLC3PH_NEW.C: 86: level_check = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_level_check)
	goto	l1152
	line	87
	
l93:	
	goto	l1152
	line	88
	
l91:	
	line	91
	
l1152:	
;WLC3PH_NEW.C: 87: }
;WLC3PH_NEW.C: 88: }
;WLC3PH_NEW.C: 91: if( RC0 == 1 && RC1 == 1 && RC2 == 1 )
	btfss	(56/8),(56)&7	;volatile
	goto	u921
	goto	u920
u921:
	goto	l1160
u920:
	
l1154:	
	btfss	(57/8),(57)&7	;volatile
	goto	u931
	goto	u930
u931:
	goto	l1160
u930:
	
l1156:	
	btfss	(58/8),(58)&7	;volatile
	goto	u941
	goto	u940
u941:
	goto	l1160
u940:
	line	94
	
l1158:	
;WLC3PH_NEW.C: 92: {
;WLC3PH_NEW.C: 94: power_check = 1;
	clrf	(_power_check)
	incf	(_power_check),f
	line	95
;WLC3PH_NEW.C: 95: }
	goto	l1162
	line	96
	
l94:	
	line	99
	
l1160:	
;WLC3PH_NEW.C: 96: else
;WLC3PH_NEW.C: 97: {
;WLC3PH_NEW.C: 99: power_check = 0;
	clrf	(_power_check)
	goto	l1162
	line	100
	
l95:	
	line	102
	
l1162:	
;WLC3PH_NEW.C: 100: }
;WLC3PH_NEW.C: 102: if( level_check == 1 && power_check == 1 && txr_not_received <= 20 )
	movf	(_level_check),w
	xorlw	01h
	skipz
	goto	u951
	goto	u950
u951:
	goto	l1176
u950:
	
l1164:	
	movf	(_power_check),w
	xorlw	01h
	skipz
	goto	u961
	goto	u960
u961:
	goto	l1176
u960:
	
l1166:	
	movlw	(015h)
	subwf	(_txr_not_received),w
	skipnc
	goto	u971
	goto	u970
u971:
	goto	l1176
u970:
	line	105
	
l1168:	
;WLC3PH_NEW.C: 103: {
;WLC3PH_NEW.C: 105: if( lp_flag == 0 )
	movf	(_lp_flag),f
	skipz
	goto	u981
	goto	u980
u981:
	goto	l1184
u980:
	line	107
	
l1170:	
;WLC3PH_NEW.C: 106: {
;WLC3PH_NEW.C: 107: motor_start();
	fcall	_motor_start
	line	108
	
l1172:	
;WLC3PH_NEW.C: 108: lp_flag = 1;
	clrf	(_lp_flag)
	incf	(_lp_flag),f
	line	109
	
l1174:	
;WLC3PH_NEW.C: 109: motor_flag = 1;
	clrf	(_motor_flag)
	incf	(_motor_flag),f
	goto	l1184
	line	110
	
l97:	
	line	111
;WLC3PH_NEW.C: 110: }
;WLC3PH_NEW.C: 111: }
	goto	l1184
	line	113
	
l96:	
	line	116
	
l1176:	
;WLC3PH_NEW.C: 113: else
;WLC3PH_NEW.C: 114: {
;WLC3PH_NEW.C: 116: if( lp_flag == 1 )
	movf	(_lp_flag),w
	xorlw	01h
	skipz
	goto	u991
	goto	u990
u991:
	goto	l1184
u990:
	line	118
	
l1178:	
;WLC3PH_NEW.C: 117: {
;WLC3PH_NEW.C: 118: motor_stop();
	fcall	_motor_stop
	line	119
	
l1180:	
;WLC3PH_NEW.C: 119: lp_flag = 0;
	clrf	(_lp_flag)
	line	120
	
l1182:	
;WLC3PH_NEW.C: 120: motor_flag = 0;
	clrf	(_motor_flag)
	goto	l1184
	line	121
	
l99:	
	goto	l1184
	line	122
	
l98:	
	line	125
	
l1184:	
;WLC3PH_NEW.C: 121: }
;WLC3PH_NEW.C: 122: }
;WLC3PH_NEW.C: 125: if(DRY_RUN_NEEDED == 1 && RB7 == 0 && motor_flag == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_DRY_RUN_NEEDED),w
	xorlw	01h
	skipz
	goto	u1001
	goto	u1000
u1001:
	goto	l1208
u1000:
	
l1186:	
	btfsc	(55/8),(55)&7	;volatile
	goto	u1011
	goto	u1010
u1011:
	goto	l1208
u1010:
	
l1188:	
	movf	(_motor_flag),w
	xorlw	01h
	skipz
	goto	u1021
	goto	u1020
u1021:
	goto	l1208
u1020:
	line	127
	
l1190:	
;WLC3PH_NEW.C: 126: {
;WLC3PH_NEW.C: 127: Dry_Run_Timer++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_Dry_Run_Timer),f
	line	128
	
l1192:	
;WLC3PH_NEW.C: 128: if(Dry_Run_Timer > 6)
	movlw	(07h)
	subwf	(_Dry_Run_Timer),w
	skipc
	goto	u1031
	goto	u1030
u1031:
	goto	l105
u1030:
	line	131
	
l1194:	
;WLC3PH_NEW.C: 129: {
;WLC3PH_NEW.C: 131: motor_stop();
	fcall	_motor_stop
	line	132
	
l1196:	
;WLC3PH_NEW.C: 132: lp_flag = 0;
	clrf	(_lp_flag)
	line	133
	
l1198:	
;WLC3PH_NEW.C: 133: motor_flag = 0;
	clrf	(_motor_flag)
	goto	l1200
	line	134
;WLC3PH_NEW.C: 134: while(1)
	
l102:	
	line	137
	
l1200:	
;WLC3PH_NEW.C: 135: {
;WLC3PH_NEW.C: 137: RB6 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(54/8),(54)&7	;volatile
	line	138
	
l1202:	
;WLC3PH_NEW.C: 138: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u1087:
	decfsz	((??_main+0)+0),f
	goto	u1087
	decfsz	((??_main+0)+0+1),f
	goto	u1087
	decfsz	((??_main+0)+0+2),f
	goto	u1087
	nop2
opt asmopt_on

	line	139
	
l1204:	
;WLC3PH_NEW.C: 139: RB6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(54/8),(54)&7	;volatile
	line	140
	
l1206:	
;WLC3PH_NEW.C: 140: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u1097:
	decfsz	((??_main+0)+0),f
	goto	u1097
	decfsz	((??_main+0)+0+1),f
	goto	u1097
	decfsz	((??_main+0)+0+2),f
	goto	u1097
	nop2
opt asmopt_on

	goto	l1200
	line	141
	
l103:	
	line	134
	goto	l1200
	
l104:	
	goto	l105
	line	142
	
l101:	
	line	143
;WLC3PH_NEW.C: 141: }
;WLC3PH_NEW.C: 142: }
;WLC3PH_NEW.C: 143: }
	goto	l105
	line	144
	
l100:	
	line	146
	
l1208:	
;WLC3PH_NEW.C: 144: else
;WLC3PH_NEW.C: 145: {
;WLC3PH_NEW.C: 146: Dry_Run_Timer = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_Dry_Run_Timer)
	line	147
	
l105:	
	line	150
;WLC3PH_NEW.C: 147: }
;WLC3PH_NEW.C: 150: for( count = 0; count < 15; count++ )
	clrf	(_count)
	
l1210:	
	movlw	(0Fh)
	subwf	(_count),w
	skipc
	goto	u1041
	goto	u1040
u1041:
	goto	l1214
u1040:
	goto	l1128
	
l1212:	
	goto	l1128
	line	151
	
l106:	
	line	152
	
l1214:	
;WLC3PH_NEW.C: 151: {
;WLC3PH_NEW.C: 152: _delay(1000000);
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u1107:
	decfsz	((??_main+0)+0),f
	goto	u1107
	decfsz	((??_main+0)+0+1),f
	goto	u1107
	decfsz	((??_main+0)+0+2),f
	goto	u1107
	nop2
opt asmopt_on

	line	150
	
l1216:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_count),f
	
l1218:	
	movlw	(0Fh)
	subwf	(_count),w
	skipc
	goto	u1051
	goto	u1050
u1051:
	goto	l1214
u1050:
	goto	l1128
	
l107:	
	goto	l1128
	line	154
	
l108:	
	line	61
	goto	l1128
	
l109:	
	line	155
	
l110:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_motor_stop

;; *************** function _motor_stop *****************
;; Defined at:
;;		line 305 in file "E:\Study Material\XC8 PROJECTS\WLC 3PH TRIP\WLC3PH_NEW.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    3[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0
;;      Temps:          0       3       0
;;      Totals:         0       4       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	305
global __ptext1
__ptext1:	;psect for function _motor_stop
psect	text1
	file	"E:\Study Material\XC8 PROJECTS\WLC 3PH TRIP\WLC3PH_NEW.C"
	line	305
	global	__size_of_motor_stop
	__size_of_motor_stop	equ	__end_of_motor_stop-_motor_stop
	
_motor_stop:	
;incstack = 0
	opt	stack 6
; Regs used in _motor_stop: [wreg+status,2+status,0]
	line	308
	
l1078:	
;WLC3PH_NEW.C: 307: char i;
;WLC3PH_NEW.C: 308: RC4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(60/8),(60)&7	;volatile
	line	310
	
l1080:	
;WLC3PH_NEW.C: 310: for( i = 0; i <= 7; i++ )
	clrf	(motor_stop@i)
	
l1082:	
	movlw	(08h)
	subwf	(motor_stop@i),w
	skipc
	goto	u811
	goto	u810
u811:
	goto	l1086
u810:
	goto	l142
	
l1084:	
	goto	l142
	line	311
	
l141:	
	line	312
	
l1086:	
;WLC3PH_NEW.C: 311: {
;WLC3PH_NEW.C: 312: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_motor_stop+0)+0+2),f
movlw	19
movwf	((??_motor_stop+0)+0+1),f
	movlw	177
movwf	((??_motor_stop+0)+0),f
u1117:
	decfsz	((??_motor_stop+0)+0),f
	goto	u1117
	decfsz	((??_motor_stop+0)+0+1),f
	goto	u1117
	decfsz	((??_motor_stop+0)+0+2),f
	goto	u1117
	nop2
opt asmopt_on

	line	310
	
l1088:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_motor_stop+0)+0
	movf	(??_motor_stop+0)+0,w
	addwf	(motor_stop@i),f
	
l1090:	
	movlw	(08h)
	subwf	(motor_stop@i),w
	skipc
	goto	u821
	goto	u820
u821:
	goto	l1086
u820:
	
l142:	
	line	314
;WLC3PH_NEW.C: 313: }
;WLC3PH_NEW.C: 314: RC4 = 0;
	bcf	(60/8),(60)&7	;volatile
	line	316
;WLC3PH_NEW.C: 316: RC5 = 0;
	bcf	(61/8),(61)&7	;volatile
	line	317
	
l143:	
	return
	opt stack 0
GLOBAL	__end_of_motor_stop
	__end_of_motor_stop:
	signat	_motor_stop,88
	global	_motor_start

;; *************** function _motor_start *****************
;; Defined at:
;;		line 291 in file "E:\Study Material\XC8 PROJECTS\WLC 3PH TRIP\WLC3PH_NEW.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    3[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0
;;      Temps:          0       3       0
;;      Totals:         0       4       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	291
global __ptext2
__ptext2:	;psect for function _motor_start
psect	text2
	file	"E:\Study Material\XC8 PROJECTS\WLC 3PH TRIP\WLC3PH_NEW.C"
	line	291
	global	__size_of_motor_start
	__size_of_motor_start	equ	__end_of_motor_start-_motor_start
	
_motor_start:	
;incstack = 0
	opt	stack 6
; Regs used in _motor_start: [wreg+status,2+status,0]
	line	294
	
l1064:	
;WLC3PH_NEW.C: 293: char i;
;WLC3PH_NEW.C: 294: RC3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7	;volatile
	line	296
	
l1066:	
;WLC3PH_NEW.C: 296: for( i = 0; i <= 7; i++ )
	clrf	(motor_start@i)
	
l1068:	
	movlw	(08h)
	subwf	(motor_start@i),w
	skipc
	goto	u791
	goto	u790
u791:
	goto	l1072
u790:
	goto	l137
	
l1070:	
	goto	l137
	line	297
	
l136:	
	line	298
	
l1072:	
;WLC3PH_NEW.C: 297: {
;WLC3PH_NEW.C: 298: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_motor_start+0)+0+2),f
movlw	19
movwf	((??_motor_start+0)+0+1),f
	movlw	177
movwf	((??_motor_start+0)+0),f
u1127:
	decfsz	((??_motor_start+0)+0),f
	goto	u1127
	decfsz	((??_motor_start+0)+0+1),f
	goto	u1127
	decfsz	((??_motor_start+0)+0+2),f
	goto	u1127
	nop2
opt asmopt_on

	line	296
	
l1074:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_motor_start+0)+0
	movf	(??_motor_start+0)+0,w
	addwf	(motor_start@i),f
	
l1076:	
	movlw	(08h)
	subwf	(motor_start@i),w
	skipc
	goto	u801
	goto	u800
u801:
	goto	l1072
u800:
	
l137:	
	line	300
;WLC3PH_NEW.C: 299: }
;WLC3PH_NEW.C: 300: RC3 = 0;
	bcf	(59/8),(59)&7	;volatile
	line	302
;WLC3PH_NEW.C: 302: RC5 = 1;
	bsf	(61/8),(61)&7	;volatile
	line	303
	
l138:	
	return
	opt stack 0
GLOBAL	__end_of_motor_start
	__end_of_motor_start:
	signat	_motor_start,88
	global	_Tx_Received

;; *************** function _Tx_Received *****************
;; Defined at:
;;		line 158 in file "E:\Study Material\XC8 PROJECTS\WLC 3PH TRIP\WLC3PH_NEW.C"
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
;;      Temps:          5       0       0
;;      Totals:         5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	158
global __ptext3
__ptext3:	;psect for function _Tx_Received
psect	text3
	file	"E:\Study Material\XC8 PROJECTS\WLC 3PH TRIP\WLC3PH_NEW.C"
	line	158
	global	__size_of_Tx_Received
	__size_of_Tx_Received	equ	__end_of_Tx_Received-_Tx_Received
	
_Tx_Received:	
;incstack = 0
	opt	stack 6
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
	movwf	(??_Tx_Received+1)
	movf	fsr0,w
	movwf	(??_Tx_Received+2)
	movf	pclath,w
	movwf	(??_Tx_Received+3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_Tx_Received+4)
	ljmp	_Tx_Received
psect	text3
	line	160
	
i1l988:	
;WLC3PH_NEW.C: 160: txr_not_received = 0;
	clrf	(_txr_not_received)
	line	163
;WLC3PH_NEW.C: 163: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	164
;WLC3PH_NEW.C: 164: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	166
	
i1l990:	
;WLC3PH_NEW.C: 166: TRISA = 0x04;
	movlw	(04h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	169
	
i1l992:	
;WLC3PH_NEW.C: 169: if( RA2 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(42/8),(42)&7	;volatile
	goto	u67_21
	goto	u67_20
u67_21:
	goto	i1l1000
u67_20:
	line	171
	
i1l994:	
;WLC3PH_NEW.C: 170: {
;WLC3PH_NEW.C: 171: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_Tx_Received+0)+0,f
u113_27:
	nop
decfsz	(??_Tx_Received+0)+0,f
	goto	u113_27
	nop2	;nop
	nop
opt asmopt_on

	line	172
	
i1l996:	
;WLC3PH_NEW.C: 172: if( RA2 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(42/8),(42)&7	;volatile
	goto	u68_21
	goto	u68_20
u68_21:
	goto	i1l115
u68_20:
	line	174
	
i1l998:	
;WLC3PH_NEW.C: 173: {
;WLC3PH_NEW.C: 174: ul = 1;
	clrf	(_ul)
	incf	(_ul),f
	goto	i1l115
	line	175
	
i1l114:	
	line	176
;WLC3PH_NEW.C: 175: }
;WLC3PH_NEW.C: 176: }
	goto	i1l115
	line	177
	
i1l113:	
	line	179
	
i1l1000:	
;WLC3PH_NEW.C: 177: else
;WLC3PH_NEW.C: 178: {
;WLC3PH_NEW.C: 179: ul = 0;
	clrf	(_ul)
	line	180
	
i1l115:	
	line	183
;WLC3PH_NEW.C: 180: }
;WLC3PH_NEW.C: 183: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	184
;WLC3PH_NEW.C: 184: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	186
	
i1l1002:	
;WLC3PH_NEW.C: 186: TRISA = 0x02;
	movlw	(02h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	189
	
i1l1004:	
;WLC3PH_NEW.C: 189: if( RA1 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(41/8),(41)&7	;volatile
	goto	u69_21
	goto	u69_20
u69_21:
	goto	i1l1012
u69_20:
	line	191
	
i1l1006:	
;WLC3PH_NEW.C: 190: {
;WLC3PH_NEW.C: 191: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_Tx_Received+0)+0,f
u114_27:
	nop
decfsz	(??_Tx_Received+0)+0,f
	goto	u114_27
	nop2	;nop
	nop
opt asmopt_on

	line	192
	
i1l1008:	
;WLC3PH_NEW.C: 192: if( RA1 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(41/8),(41)&7	;volatile
	goto	u70_21
	goto	u70_20
u70_21:
	goto	i1l1014
u70_20:
	line	194
	
i1l1010:	
;WLC3PH_NEW.C: 193: {
;WLC3PH_NEW.C: 194: uu = 1;
	clrf	(_uu)
	incf	(_uu),f
	line	195
;WLC3PH_NEW.C: 195: ul = 1;
	clrf	(_ul)
	incf	(_ul),f
	goto	i1l1014
	line	196
	
i1l117:	
	line	197
;WLC3PH_NEW.C: 196: }
;WLC3PH_NEW.C: 197: }
	goto	i1l1014
	line	199
	
i1l116:	
	line	201
	
i1l1012:	
;WLC3PH_NEW.C: 199: else
;WLC3PH_NEW.C: 200: {
;WLC3PH_NEW.C: 201: uu = 0;
	clrf	(_uu)
	goto	i1l1014
	line	202
	
i1l118:	
	line	205
	
i1l1014:	
;WLC3PH_NEW.C: 202: }
;WLC3PH_NEW.C: 205: if(uu == 1)
	movf	(_uu),w
	xorlw	01h
	skipz
	goto	u71_21
	goto	u71_20
u71_21:
	goto	i1l119
u71_20:
	line	207
	
i1l1016:	
;WLC3PH_NEW.C: 206: {
;WLC3PH_NEW.C: 207: RB1 = 1;
	bsf	(49/8),(49)&7	;volatile
	line	208
;WLC3PH_NEW.C: 208: }
	goto	i1l1018
	line	209
	
i1l119:	
	line	211
;WLC3PH_NEW.C: 209: else
;WLC3PH_NEW.C: 210: {
;WLC3PH_NEW.C: 211: RB1 = 0;
	bcf	(49/8),(49)&7	;volatile
	goto	i1l1018
	line	212
	
i1l120:	
	line	214
	
i1l1018:	
;WLC3PH_NEW.C: 212: }
;WLC3PH_NEW.C: 214: if(ul == 1)
	movf	(_ul),w
	xorlw	01h
	skipz
	goto	u72_21
	goto	u72_20
u72_21:
	goto	i1l121
u72_20:
	line	216
	
i1l1020:	
;WLC3PH_NEW.C: 215: {
;WLC3PH_NEW.C: 216: RB2 = 1;
	bsf	(50/8),(50)&7	;volatile
	line	217
;WLC3PH_NEW.C: 217: }
	goto	i1l1022
	line	218
	
i1l121:	
	line	220
;WLC3PH_NEW.C: 218: else
;WLC3PH_NEW.C: 219: {
;WLC3PH_NEW.C: 220: RB2 = 0;
	bcf	(50/8),(50)&7	;volatile
	goto	i1l1022
	line	221
	
i1l122:	
	line	224
	
i1l1022:	
;WLC3PH_NEW.C: 221: }
;WLC3PH_NEW.C: 224: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	225
;WLC3PH_NEW.C: 225: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	227
	
i1l1024:	
;WLC3PH_NEW.C: 227: TRISA = 0x20;
	movlw	(020h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	228
	
i1l1026:	
;WLC3PH_NEW.C: 228: RA3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(43/8),(43)&7	;volatile
	line	229
	
i1l1028:	
;WLC3PH_NEW.C: 229: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_Tx_Received+0)+0,f
u115_27:
	nop
decfsz	(??_Tx_Received+0)+0,f
	goto	u115_27
	nop2	;nop
	nop
opt asmopt_on

	line	231
	
i1l1030:	
;WLC3PH_NEW.C: 231: if( RA5 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(45/8),(45)&7	;volatile
	goto	u73_21
	goto	u73_20
u73_21:
	goto	i1l1038
u73_20:
	line	233
	
i1l1032:	
;WLC3PH_NEW.C: 232: {
;WLC3PH_NEW.C: 233: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_Tx_Received+0)+0,f
u116_27:
	nop
decfsz	(??_Tx_Received+0)+0,f
	goto	u116_27
	nop2	;nop
	nop
opt asmopt_on

	line	234
	
i1l1034:	
;WLC3PH_NEW.C: 234: if( RA5 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(45/8),(45)&7	;volatile
	goto	u74_21
	goto	u74_20
u74_21:
	goto	i1l125
u74_20:
	line	236
	
i1l1036:	
;WLC3PH_NEW.C: 235: {
;WLC3PH_NEW.C: 236: ll = 1;
	clrf	(_ll)
	incf	(_ll),f
	goto	i1l125
	line	237
	
i1l124:	
	line	238
;WLC3PH_NEW.C: 237: }
;WLC3PH_NEW.C: 238: }
	goto	i1l125
	line	239
	
i1l123:	
	line	241
	
i1l1038:	
;WLC3PH_NEW.C: 239: else
;WLC3PH_NEW.C: 240: {
;WLC3PH_NEW.C: 241: ll = 0;
	clrf	(_ll)
	line	242
	
i1l125:	
	line	245
;WLC3PH_NEW.C: 242: }
;WLC3PH_NEW.C: 245: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	246
;WLC3PH_NEW.C: 246: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	248
	
i1l1040:	
;WLC3PH_NEW.C: 248: TRISA = 0x08;
	movlw	(08h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	249
	
i1l1042:	
;WLC3PH_NEW.C: 249: RA5 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(45/8),(45)&7	;volatile
	line	250
	
i1l1044:	
;WLC3PH_NEW.C: 250: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_Tx_Received+0)+0,f
u117_27:
	nop
decfsz	(??_Tx_Received+0)+0,f
	goto	u117_27
	nop2	;nop
	nop
opt asmopt_on

	line	252
	
i1l1046:	
;WLC3PH_NEW.C: 252: if( RA3 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(43/8),(43)&7	;volatile
	goto	u75_21
	goto	u75_20
u75_21:
	goto	i1l1054
u75_20:
	line	254
	
i1l1048:	
;WLC3PH_NEW.C: 253: {
;WLC3PH_NEW.C: 254: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_Tx_Received+0)+0,f
u118_27:
	nop
decfsz	(??_Tx_Received+0)+0,f
	goto	u118_27
	nop2	;nop
	nop
opt asmopt_on

	line	255
	
i1l1050:	
;WLC3PH_NEW.C: 255: if( RA3 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(43/8),(43)&7	;volatile
	goto	u76_21
	goto	u76_20
u76_21:
	goto	i1l128
u76_20:
	line	257
	
i1l1052:	
;WLC3PH_NEW.C: 256: {
;WLC3PH_NEW.C: 257: lu = 1;
	clrf	(_lu)
	incf	(_lu),f
	goto	i1l128
	line	258
	
i1l127:	
	line	259
;WLC3PH_NEW.C: 258: }
;WLC3PH_NEW.C: 259: }
	goto	i1l128
	line	260
	
i1l126:	
	line	262
	
i1l1054:	
;WLC3PH_NEW.C: 260: else
;WLC3PH_NEW.C: 261: {
;WLC3PH_NEW.C: 262: lu = 0;
	clrf	(_lu)
	line	263
	
i1l128:	
	line	266
;WLC3PH_NEW.C: 263: }
;WLC3PH_NEW.C: 266: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	267
;WLC3PH_NEW.C: 267: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	270
	
i1l1056:	
;WLC3PH_NEW.C: 270: if(lu == 1)
	movf	(_lu),w
	xorlw	01h
	skipz
	goto	u77_21
	goto	u77_20
u77_21:
	goto	i1l129
u77_20:
	line	272
	
i1l1058:	
;WLC3PH_NEW.C: 271: {
;WLC3PH_NEW.C: 272: RB3 = 1;
	bsf	(51/8),(51)&7	;volatile
	line	273
;WLC3PH_NEW.C: 273: }
	goto	i1l1060
	line	274
	
i1l129:	
	line	276
;WLC3PH_NEW.C: 274: else
;WLC3PH_NEW.C: 275: {
;WLC3PH_NEW.C: 276: RB3 = 0;
	bcf	(51/8),(51)&7	;volatile
	goto	i1l1060
	line	277
	
i1l130:	
	line	279
	
i1l1060:	
;WLC3PH_NEW.C: 277: }
;WLC3PH_NEW.C: 279: if(ll == 1)
	movf	(_ll),w
	xorlw	01h
	skipz
	goto	u78_21
	goto	u78_20
u78_21:
	goto	i1l131
u78_20:
	line	281
	
i1l1062:	
;WLC3PH_NEW.C: 280: {
;WLC3PH_NEW.C: 281: RB4 = 1;
	bsf	(52/8),(52)&7	;volatile
	line	282
;WLC3PH_NEW.C: 282: }
	goto	i1l132
	line	283
	
i1l131:	
	line	285
;WLC3PH_NEW.C: 283: else
;WLC3PH_NEW.C: 284: {
;WLC3PH_NEW.C: 285: RB4 = 0;
	bcf	(52/8),(52)&7	;volatile
	line	286
	
i1l132:	
	line	288
;WLC3PH_NEW.C: 286: }
;WLC3PH_NEW.C: 288: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	289
	
i1l133:	
	movf	(??_Tx_Received+4),w
	movwf	btemp+1
	movf	(??_Tx_Received+3),w
	movwf	pclath
	movf	(??_Tx_Received+2),w
	movwf	fsr0
	swapf	(??_Tx_Received+1)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_Tx_Received
	__end_of_Tx_Received:
	signat	_Tx_Received,88
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

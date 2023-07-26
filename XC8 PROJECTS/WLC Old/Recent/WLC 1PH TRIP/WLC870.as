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
	FNROOT	_main
	FNCALL	intlevel1,_Tx_Received
	global	intlevel1
	FNROOT	intlevel1
	global	_DRY_RUN_NEEDED
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"E:\Study Material\XC8 PROJECTS\WLC 1PH TRIP\WLC_NEW.C"
	line	28

;initializer for _DRY_RUN_NEEDED
	retlw	01h
	global	_count
	global	_ll
	global	_lp_flag
	global	_lu
	global	_ul
	global	_uu
	global	_Dry_Run_Timer
	global	_level_check
	global	_motor_flag
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
	global	_RB6
_RB6	set	0x36
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
; #config settings
	file	"WLC870.as"
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

_lu:
       ds      1

_ul:
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

_motor_flag:
       ds      1

_txr_not_received:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"E:\Study Material\XC8 PROJECTS\WLC 1PH TRIP\WLC_NEW.C"
	line	28
_DRY_RUN_NEEDED:
       ds      1

	file	"WLC870.as"
	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
	clrf	((__pbssCOMMON)+5)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
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
?_main:	; 0 bytes @ 0x0
?_Tx_Received:	; 0 bytes @ 0x0
??_Tx_Received:	; 0 bytes @ 0x0
	ds	5
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_main:	; 0 bytes @ 0x0
	ds	3
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        1
;!    BSS         10
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      5      11
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
;! (1) _Tx_Received                                          5     5      0       0
;!                                              0 COMMON     5     5      0
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
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               20      0       0       7        0.0%
;!BITBANK1            20      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50      3       8       5       10.0%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      5       B       1       78.6%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      13       8        0.0%
;!ABS                  0      0      13       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA              40      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 30 in file "E:\Study Material\XC8 PROJECTS\WLC 1PH TRIP\WLC_NEW.C"
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
	file	"E:\Study Material\XC8 PROJECTS\WLC 1PH TRIP\WLC_NEW.C"
	line	30
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"E:\Study Material\XC8 PROJECTS\WLC 1PH TRIP\WLC_NEW.C"
	line	30
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0]
	line	32
	
l930:	
;WLC_NEW.C: 32: ADCON1 = 0x06;
	movlw	(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	33
	
l932:	
;WLC_NEW.C: 33: TRISA = 0x00;
	clrf	(133)^080h	;volatile
	line	34
	
l934:	
;WLC_NEW.C: 34: TRISB = 0x81;
	movlw	(081h)
	movwf	(134)^080h	;volatile
	line	35
;WLC_NEW.C: 35: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	37
	
l936:	
;WLC_NEW.C: 37: OPTION_REG = 0xC0;
	movlw	(0C0h)
	movwf	(129)^080h	;volatile
	line	38
	
l938:	
;WLC_NEW.C: 38: INTCON = 0x90;
	movlw	(090h)
	movwf	(11)	;volatile
	line	40
;WLC_NEW.C: 40: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	41
;WLC_NEW.C: 41: PORTA = 0x00;
	clrf	(5)	;volatile
	line	42
;WLC_NEW.C: 42: PORTC = 0x00;
	clrf	(7)	;volatile
	line	44
;WLC_NEW.C: 44: for(count = 0; count <= 4; count++)
	clrf	(_count)
	
l940:	
	movlw	(05h)
	subwf	(_count),w
	skipc
	goto	u631
	goto	u630
u631:
	goto	l944
u630:
	goto	l954
	
l942:	
	goto	l954
	line	45
	
l71:	
	line	46
	
l944:	
;WLC_NEW.C: 45: {
;WLC_NEW.C: 46: PORTB = 0xFF;
	movlw	(0FFh)
	movwf	(6)	;volatile
	line	47
;WLC_NEW.C: 47: _delay(1000000);
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

	line	48
	
l946:	
;WLC_NEW.C: 48: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	49
	
l948:	
;WLC_NEW.C: 49: _delay(1000000);
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

	line	44
	
l950:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_count),f
	
l952:	
	movlw	(05h)
	subwf	(_count),w
	skipc
	goto	u641
	goto	u640
u641:
	goto	l944
u640:
	goto	l954
	
l72:	
	line	51
	
l954:	
;WLC_NEW.C: 50: }
;WLC_NEW.C: 51: count = 0;
	clrf	(_count)
	goto	l956
	line	53
;WLC_NEW.C: 53: while(1)
	
l73:	
	line	56
	
l956:	
;WLC_NEW.C: 54: {
;WLC_NEW.C: 56: if( motor_flag == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_motor_flag),w
	xorlw	01h
	skipz
	goto	u651
	goto	u650
u651:
	goto	l968
u650:
	line	58
	
l958:	
;WLC_NEW.C: 57: {
;WLC_NEW.C: 58: txr_not_received ++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_txr_not_received),f
	line	60
	
l960:	
;WLC_NEW.C: 60: if( uu == 0 && ll == 1 )
	movf	(_uu),f
	skipz
	goto	u661
	goto	u660
u661:
	goto	l966
u660:
	
l962:	
	movf	(_ll),w
	xorlw	01h
	skipz
	goto	u671
	goto	u670
u671:
	goto	l966
u670:
	line	62
	
l964:	
;WLC_NEW.C: 61: {
;WLC_NEW.C: 62: level_check = 1;
	clrf	(_level_check)
	incf	(_level_check),f
	line	63
;WLC_NEW.C: 63: }
	goto	l980
	line	64
	
l75:	
	line	66
	
l966:	
;WLC_NEW.C: 64: else
;WLC_NEW.C: 65: {
;WLC_NEW.C: 66: level_check = 0;
	clrf	(_level_check)
	goto	l980
	line	67
	
l76:	
	line	68
;WLC_NEW.C: 67: }
;WLC_NEW.C: 68: }
	goto	l980
	line	70
	
l74:	
	line	72
	
l968:	
;WLC_NEW.C: 70: else
;WLC_NEW.C: 71: {
;WLC_NEW.C: 72: if( (uu == 0 && ul == 0) && (lu == 1 && ll == 1) )
	movf	(_uu),f
	skipz
	goto	u681
	goto	u680
u681:
	goto	l978
u680:
	
l970:	
	movf	(_ul),f
	skipz
	goto	u691
	goto	u690
u691:
	goto	l978
u690:
	
l972:	
	movf	(_lu),w
	xorlw	01h
	skipz
	goto	u701
	goto	u700
u701:
	goto	l978
u700:
	
l974:	
	movf	(_ll),w
	xorlw	01h
	skipz
	goto	u711
	goto	u710
u711:
	goto	l978
u710:
	line	74
	
l976:	
;WLC_NEW.C: 73: {
;WLC_NEW.C: 74: level_check = 1;
	clrf	(_level_check)
	incf	(_level_check),f
	line	75
;WLC_NEW.C: 75: }
	goto	l980
	line	76
	
l78:	
	line	78
	
l978:	
;WLC_NEW.C: 76: else
;WLC_NEW.C: 77: {
;WLC_NEW.C: 78: level_check = 0;
	clrf	(_level_check)
	goto	l980
	line	79
	
l79:	
	goto	l980
	line	80
	
l77:	
	line	82
	
l980:	
;WLC_NEW.C: 79: }
;WLC_NEW.C: 80: }
;WLC_NEW.C: 82: if( level_check == 1 && txr_not_received <= 20 )
	movf	(_level_check),w
	xorlw	01h
	skipz
	goto	u721
	goto	u720
u721:
	goto	l988
u720:
	
l982:	
	movlw	(015h)
	subwf	(_txr_not_received),w
	skipnc
	goto	u731
	goto	u730
u731:
	goto	l988
u730:
	line	85
	
l984:	
;WLC_NEW.C: 83: {
;WLC_NEW.C: 85: if( lp_flag == 0 )
	movf	(_lp_flag),f
	skipz
	goto	u741
	goto	u740
u741:
	goto	l996
u740:
	line	87
	
l986:	
;WLC_NEW.C: 86: {
;WLC_NEW.C: 87: RC4 = 1;
	bsf	(60/8),(60)&7	;volatile
	line	88
;WLC_NEW.C: 88: lp_flag = 1;
	clrf	(_lp_flag)
	incf	(_lp_flag),f
	line	89
;WLC_NEW.C: 89: motor_flag = 1;
	clrf	(_motor_flag)
	incf	(_motor_flag),f
	line	90
;WLC_NEW.C: 90: RC5 = 1;
	bsf	(61/8),(61)&7	;volatile
	goto	l996
	line	91
	
l81:	
	line	92
;WLC_NEW.C: 91: }
;WLC_NEW.C: 92: }
	goto	l996
	line	94
	
l80:	
	line	97
	
l988:	
;WLC_NEW.C: 94: else
;WLC_NEW.C: 95: {
;WLC_NEW.C: 97: if( lp_flag == 1 )
	movf	(_lp_flag),w
	xorlw	01h
	skipz
	goto	u751
	goto	u750
u751:
	goto	l996
u750:
	line	99
	
l990:	
;WLC_NEW.C: 98: {
;WLC_NEW.C: 99: RC4 = 0;
	bcf	(60/8),(60)&7	;volatile
	line	100
	
l992:	
;WLC_NEW.C: 100: lp_flag = 0;
	clrf	(_lp_flag)
	line	101
;WLC_NEW.C: 101: motor_flag = 0;
	clrf	(_motor_flag)
	line	102
	
l994:	
;WLC_NEW.C: 102: RC5 = 0;
	bcf	(61/8),(61)&7	;volatile
	goto	l996
	line	103
	
l83:	
	goto	l996
	line	104
	
l82:	
	line	107
	
l996:	
;WLC_NEW.C: 103: }
;WLC_NEW.C: 104: }
;WLC_NEW.C: 107: if(DRY_RUN_NEEDED == 1 && RB7 == 0 && motor_flag == 1)
	movf	(_DRY_RUN_NEEDED),w
	xorlw	01h
	skipz
	goto	u761
	goto	u760
u761:
	goto	l1020
u760:
	
l998:	
	btfsc	(55/8),(55)&7	;volatile
	goto	u771
	goto	u770
u771:
	goto	l1020
u770:
	
l1000:	
	movf	(_motor_flag),w
	xorlw	01h
	skipz
	goto	u781
	goto	u780
u781:
	goto	l1020
u780:
	line	109
	
l1002:	
;WLC_NEW.C: 108: {
;WLC_NEW.C: 109: Dry_Run_Timer++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_Dry_Run_Timer),f
	line	110
	
l1004:	
;WLC_NEW.C: 110: if(Dry_Run_Timer > 6)
	movlw	(07h)
	subwf	(_Dry_Run_Timer),w
	skipc
	goto	u791
	goto	u790
u791:
	goto	l89
u790:
	line	113
	
l1006:	
;WLC_NEW.C: 111: {
;WLC_NEW.C: 113: RC4 = 0;
	bcf	(60/8),(60)&7	;volatile
	line	114
	
l1008:	
;WLC_NEW.C: 114: lp_flag = 0;
	clrf	(_lp_flag)
	line	115
;WLC_NEW.C: 115: motor_flag = 0;
	clrf	(_motor_flag)
	line	116
	
l1010:	
;WLC_NEW.C: 116: RC5 = 0;
	bcf	(61/8),(61)&7	;volatile
	goto	l1012
	line	117
;WLC_NEW.C: 117: while(1)
	
l86:	
	line	120
	
l1012:	
;WLC_NEW.C: 118: {
;WLC_NEW.C: 120: RB6 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(54/8),(54)&7	;volatile
	line	121
	
l1014:	
;WLC_NEW.C: 121: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u847:
	decfsz	((??_main+0)+0),f
	goto	u847
	decfsz	((??_main+0)+0+1),f
	goto	u847
	decfsz	((??_main+0)+0+2),f
	goto	u847
	nop2
opt asmopt_on

	line	122
	
l1016:	
;WLC_NEW.C: 122: RB6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(54/8),(54)&7	;volatile
	line	123
	
l1018:	
;WLC_NEW.C: 123: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u857:
	decfsz	((??_main+0)+0),f
	goto	u857
	decfsz	((??_main+0)+0+1),f
	goto	u857
	decfsz	((??_main+0)+0+2),f
	goto	u857
	nop2
opt asmopt_on

	goto	l1012
	line	124
	
l87:	
	line	117
	goto	l1012
	
l88:	
	goto	l89
	line	125
	
l85:	
	line	126
;WLC_NEW.C: 124: }
;WLC_NEW.C: 125: }
;WLC_NEW.C: 126: }
	goto	l89
	line	127
	
l84:	
	line	129
	
l1020:	
;WLC_NEW.C: 127: else
;WLC_NEW.C: 128: {
;WLC_NEW.C: 129: Dry_Run_Timer = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_Dry_Run_Timer)
	line	130
	
l89:	
	line	133
;WLC_NEW.C: 130: }
;WLC_NEW.C: 133: for( count = 0; count < 15; count++ )
	clrf	(_count)
	
l1022:	
	movlw	(0Fh)
	subwf	(_count),w
	skipc
	goto	u801
	goto	u800
u801:
	goto	l1026
u800:
	goto	l956
	
l1024:	
	goto	l956
	line	134
	
l90:	
	line	135
	
l1026:	
;WLC_NEW.C: 134: {
;WLC_NEW.C: 135: _delay(1000000);
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u867:
	decfsz	((??_main+0)+0),f
	goto	u867
	decfsz	((??_main+0)+0+1),f
	goto	u867
	decfsz	((??_main+0)+0+2),f
	goto	u867
	nop2
opt asmopt_on

	line	133
	
l1028:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_count),f
	
l1030:	
	movlw	(0Fh)
	subwf	(_count),w
	skipc
	goto	u811
	goto	u810
u811:
	goto	l1026
u810:
	goto	l956
	
l91:	
	goto	l956
	line	137
	
l92:	
	line	53
	goto	l956
	
l93:	
	line	138
	
l94:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_Tx_Received

;; *************** function _Tx_Received *****************
;; Defined at:
;;		line 141 in file "E:\Study Material\XC8 PROJECTS\WLC 1PH TRIP\WLC_NEW.C"
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
psect	text1,local,class=CODE,delta=2,merge=1
	line	141
global __ptext1
__ptext1:	;psect for function _Tx_Received
psect	text1
	file	"E:\Study Material\XC8 PROJECTS\WLC 1PH TRIP\WLC_NEW.C"
	line	141
	global	__size_of_Tx_Received
	__size_of_Tx_Received	equ	__end_of_Tx_Received-_Tx_Received
	
_Tx_Received:	
;incstack = 0
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
psect	text1
	line	143
	
i1l854:	
;WLC_NEW.C: 143: txr_not_received = 0;
	clrf	(_txr_not_received)
	line	146
;WLC_NEW.C: 146: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	147
;WLC_NEW.C: 147: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	149
	
i1l856:	
;WLC_NEW.C: 149: TRISA = 0x04;
	movlw	(04h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	152
	
i1l858:	
;WLC_NEW.C: 152: if( RA2 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(42/8),(42)&7	;volatile
	goto	u51_21
	goto	u51_20
u51_21:
	goto	i1l866
u51_20:
	line	154
	
i1l860:	
;WLC_NEW.C: 153: {
;WLC_NEW.C: 154: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_Tx_Received+0)+0,f
u87_27:
	nop
decfsz	(??_Tx_Received+0)+0,f
	goto	u87_27
	nop2	;nop
	nop
opt asmopt_on

	line	155
	
i1l862:	
;WLC_NEW.C: 155: if( RA2 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(42/8),(42)&7	;volatile
	goto	u52_21
	goto	u52_20
u52_21:
	goto	i1l99
u52_20:
	line	157
	
i1l864:	
;WLC_NEW.C: 156: {
;WLC_NEW.C: 157: ul = 1;
	clrf	(_ul)
	incf	(_ul),f
	goto	i1l99
	line	158
	
i1l98:	
	line	159
;WLC_NEW.C: 158: }
;WLC_NEW.C: 159: }
	goto	i1l99
	line	160
	
i1l97:	
	line	162
	
i1l866:	
;WLC_NEW.C: 160: else
;WLC_NEW.C: 161: {
;WLC_NEW.C: 162: ul = 0;
	clrf	(_ul)
	line	163
	
i1l99:	
	line	166
;WLC_NEW.C: 163: }
;WLC_NEW.C: 166: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	167
;WLC_NEW.C: 167: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	169
	
i1l868:	
;WLC_NEW.C: 169: TRISA = 0x02;
	movlw	(02h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	172
	
i1l870:	
;WLC_NEW.C: 172: if( RA1 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(41/8),(41)&7	;volatile
	goto	u53_21
	goto	u53_20
u53_21:
	goto	i1l878
u53_20:
	line	174
	
i1l872:	
;WLC_NEW.C: 173: {
;WLC_NEW.C: 174: _delay(1000);
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

	line	175
	
i1l874:	
;WLC_NEW.C: 175: if( RA1 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(41/8),(41)&7	;volatile
	goto	u54_21
	goto	u54_20
u54_21:
	goto	i1l880
u54_20:
	line	177
	
i1l876:	
;WLC_NEW.C: 176: {
;WLC_NEW.C: 177: uu = 1;
	clrf	(_uu)
	incf	(_uu),f
	line	178
;WLC_NEW.C: 178: ul = 1;
	clrf	(_ul)
	incf	(_ul),f
	goto	i1l880
	line	179
	
i1l101:	
	line	180
;WLC_NEW.C: 179: }
;WLC_NEW.C: 180: }
	goto	i1l880
	line	182
	
i1l100:	
	line	184
	
i1l878:	
;WLC_NEW.C: 182: else
;WLC_NEW.C: 183: {
;WLC_NEW.C: 184: uu = 0;
	clrf	(_uu)
	goto	i1l880
	line	185
	
i1l102:	
	line	188
	
i1l880:	
;WLC_NEW.C: 185: }
;WLC_NEW.C: 188: if(uu == 1)
	movf	(_uu),w
	xorlw	01h
	skipz
	goto	u55_21
	goto	u55_20
u55_21:
	goto	i1l103
u55_20:
	line	190
	
i1l882:	
;WLC_NEW.C: 189: {
;WLC_NEW.C: 190: RB1 = 1;
	bsf	(49/8),(49)&7	;volatile
	line	191
;WLC_NEW.C: 191: }
	goto	i1l884
	line	192
	
i1l103:	
	line	194
;WLC_NEW.C: 192: else
;WLC_NEW.C: 193: {
;WLC_NEW.C: 194: RB1 = 0;
	bcf	(49/8),(49)&7	;volatile
	goto	i1l884
	line	195
	
i1l104:	
	line	197
	
i1l884:	
;WLC_NEW.C: 195: }
;WLC_NEW.C: 197: if(ul == 1)
	movf	(_ul),w
	xorlw	01h
	skipz
	goto	u56_21
	goto	u56_20
u56_21:
	goto	i1l105
u56_20:
	line	199
	
i1l886:	
;WLC_NEW.C: 198: {
;WLC_NEW.C: 199: RB2 = 1;
	bsf	(50/8),(50)&7	;volatile
	line	200
;WLC_NEW.C: 200: }
	goto	i1l888
	line	201
	
i1l105:	
	line	203
;WLC_NEW.C: 201: else
;WLC_NEW.C: 202: {
;WLC_NEW.C: 203: RB2 = 0;
	bcf	(50/8),(50)&7	;volatile
	goto	i1l888
	line	204
	
i1l106:	
	line	207
	
i1l888:	
;WLC_NEW.C: 204: }
;WLC_NEW.C: 207: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	208
;WLC_NEW.C: 208: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	210
	
i1l890:	
;WLC_NEW.C: 210: TRISA = 0x20;
	movlw	(020h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	211
	
i1l892:	
;WLC_NEW.C: 211: RA3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(43/8),(43)&7	;volatile
	line	212
	
i1l894:	
;WLC_NEW.C: 212: _delay(1000);
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

	line	214
	
i1l896:	
;WLC_NEW.C: 214: if( RA5 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(45/8),(45)&7	;volatile
	goto	u57_21
	goto	u57_20
u57_21:
	goto	i1l904
u57_20:
	line	216
	
i1l898:	
;WLC_NEW.C: 215: {
;WLC_NEW.C: 216: _delay(1000);
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

	line	217
	
i1l900:	
;WLC_NEW.C: 217: if( RA5 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(45/8),(45)&7	;volatile
	goto	u58_21
	goto	u58_20
u58_21:
	goto	i1l109
u58_20:
	line	219
	
i1l902:	
;WLC_NEW.C: 218: {
;WLC_NEW.C: 219: ll = 1;
	clrf	(_ll)
	incf	(_ll),f
	goto	i1l109
	line	220
	
i1l108:	
	line	221
;WLC_NEW.C: 220: }
;WLC_NEW.C: 221: }
	goto	i1l109
	line	222
	
i1l107:	
	line	224
	
i1l904:	
;WLC_NEW.C: 222: else
;WLC_NEW.C: 223: {
;WLC_NEW.C: 224: ll = 0;
	clrf	(_ll)
	line	225
	
i1l109:	
	line	228
;WLC_NEW.C: 225: }
;WLC_NEW.C: 228: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	229
;WLC_NEW.C: 229: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	231
	
i1l906:	
;WLC_NEW.C: 231: TRISA = 0x08;
	movlw	(08h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	232
	
i1l908:	
;WLC_NEW.C: 232: RA5 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(45/8),(45)&7	;volatile
	line	233
	
i1l910:	
;WLC_NEW.C: 233: _delay(1000);
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

	line	235
	
i1l912:	
;WLC_NEW.C: 235: if( RA3 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(43/8),(43)&7	;volatile
	goto	u59_21
	goto	u59_20
u59_21:
	goto	i1l920
u59_20:
	line	237
	
i1l914:	
;WLC_NEW.C: 236: {
;WLC_NEW.C: 237: _delay(1000);
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

	line	238
	
i1l916:	
;WLC_NEW.C: 238: if( RA3 == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(43/8),(43)&7	;volatile
	goto	u60_21
	goto	u60_20
u60_21:
	goto	i1l112
u60_20:
	line	240
	
i1l918:	
;WLC_NEW.C: 239: {
;WLC_NEW.C: 240: lu = 1;
	clrf	(_lu)
	incf	(_lu),f
	goto	i1l112
	line	241
	
i1l111:	
	line	242
;WLC_NEW.C: 241: }
;WLC_NEW.C: 242: }
	goto	i1l112
	line	243
	
i1l110:	
	line	245
	
i1l920:	
;WLC_NEW.C: 243: else
;WLC_NEW.C: 244: {
;WLC_NEW.C: 245: lu = 0;
	clrf	(_lu)
	line	246
	
i1l112:	
	line	249
;WLC_NEW.C: 246: }
;WLC_NEW.C: 249: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	250
;WLC_NEW.C: 250: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	253
	
i1l922:	
;WLC_NEW.C: 253: if(lu == 1)
	movf	(_lu),w
	xorlw	01h
	skipz
	goto	u61_21
	goto	u61_20
u61_21:
	goto	i1l113
u61_20:
	line	255
	
i1l924:	
;WLC_NEW.C: 254: {
;WLC_NEW.C: 255: RB3 = 1;
	bsf	(51/8),(51)&7	;volatile
	line	256
;WLC_NEW.C: 256: }
	goto	i1l926
	line	257
	
i1l113:	
	line	259
;WLC_NEW.C: 257: else
;WLC_NEW.C: 258: {
;WLC_NEW.C: 259: RB3 = 0;
	bcf	(51/8),(51)&7	;volatile
	goto	i1l926
	line	260
	
i1l114:	
	line	262
	
i1l926:	
;WLC_NEW.C: 260: }
;WLC_NEW.C: 262: if(ll == 1)
	movf	(_ll),w
	xorlw	01h
	skipz
	goto	u62_21
	goto	u62_20
u62_21:
	goto	i1l115
u62_20:
	line	264
	
i1l928:	
;WLC_NEW.C: 263: {
;WLC_NEW.C: 264: RB4 = 1;
	bsf	(52/8),(52)&7	;volatile
	line	265
;WLC_NEW.C: 265: }
	goto	i1l116
	line	266
	
i1l115:	
	line	268
;WLC_NEW.C: 266: else
;WLC_NEW.C: 267: {
;WLC_NEW.C: 268: RB4 = 0;
	bcf	(52/8),(52)&7	;volatile
	line	269
	
i1l116:	
	line	271
;WLC_NEW.C: 269: }
;WLC_NEW.C: 271: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	272
	
i1l117:	
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

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
# 46 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
INDF equ 00h ;# 
# 52 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
TMR0 equ 01h ;# 
# 58 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
PCL equ 02h ;# 
# 64 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
STATUS equ 03h ;# 
# 151 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
FSR equ 04h ;# 
# 157 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
PORTA equ 05h ;# 
# 206 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
PORTB equ 06h ;# 
# 267 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
PORTC equ 07h ;# 
# 328 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
PCLATH equ 0Ah ;# 
# 347 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
INTCON equ 0Bh ;# 
# 424 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
PIR1 equ 0Ch ;# 
# 474 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
PIR2 equ 0Dh ;# 
# 494 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
TMR1 equ 0Eh ;# 
# 500 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
TMR1L equ 0Eh ;# 
# 506 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
TMR1H equ 0Fh ;# 
# 512 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
T1CON equ 010h ;# 
# 588 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
TMR2 equ 011h ;# 
# 594 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
T2CON equ 012h ;# 
# 664 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
CCPR1 equ 015h ;# 
# 670 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
CCPR1L equ 015h ;# 
# 676 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
CCPR1H equ 016h ;# 
# 682 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
CCP1CON equ 017h ;# 
# 739 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
RCSTA equ 018h ;# 
# 833 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
TXREG equ 019h ;# 
# 839 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
RCREG equ 01Ah ;# 
# 845 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
ADRESH equ 01Eh ;# 
# 851 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
ADCON0 equ 01Fh ;# 
# 946 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
OPTION_REG equ 081h ;# 
# 1015 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
TRISA equ 085h ;# 
# 1064 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
TRISB equ 086h ;# 
# 1125 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
TRISC equ 087h ;# 
# 1186 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
PIE1 equ 08Ch ;# 
# 1236 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
PIE2 equ 08Dh ;# 
# 1256 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
PCON equ 08Eh ;# 
# 1289 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
PR2 equ 092h ;# 
# 1295 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
TXSTA equ 098h ;# 
# 1375 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
SPBRG equ 099h ;# 
# 1381 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
ADRESL equ 09Eh ;# 
# 1387 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
ADCON1 equ 09Fh ;# 
# 1439 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
EEDATA equ 010Ch ;# 
# 1445 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
EEADR equ 010Dh ;# 
# 1451 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
EEDATH equ 010Eh ;# 
# 1457 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
EEADRH equ 010Fh ;# 
# 1463 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
EECON1 equ 018Ch ;# 
# 1507 "C:\Program Files\Microchip\xc8\v1.12\include\pic16f870.h"
EECON2 equ 018Dh ;# 
	FNROOT	_main
	FNCALL	intlevel1,_tmr_int
	global	intlevel1
	FNROOT	intlevel1
	global	_timer
	global	_ADCON0
_ADCON0	set	0x1F
	global	_ADRESH
_ADRESH	set	0x1E
	global	_INTCON
_INTCON	set	0xB
	global	_TMR0
_TMR0	set	0x1
	global	_ADON
_ADON	set	0xF8
	global	_GO_nDONE
_GO_nDONE	set	0xFA
	global	_RB0
_RB0	set	0x30
	global	_RB1
_RB1	set	0x31
	global	_RB3
_RB3	set	0x33
	global	_T0IF
_T0IF	set	0x5A
	global	_ADCON1
_ADCON1	set	0x9F
	global	_ADRESL
_ADRESL	set	0x9E
	global	_OPTION_REG
_OPTION_REG	set	0x81
	global	_TRISA
_TRISA	set	0x85
	global	_TRISB
_TRISB	set	0x86
psect	maintext,global,class=CODE,delta=2,split=1
global __pmaintext
__pmaintext:	;psect for function _tmr_int
; #config settings
	file	"VGuard.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_timer:
       ds      2

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
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
?_tmr_int:	; 0 bytes @ 0x0
??_tmr_int:	; 0 bytes @ 0x0
	ds	4
??_main:	; 0 bytes @ 0x4
	ds	2
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@trans_on
main@trans_on:	; 1 bytes @ 0x0
	ds	1
	global	main@breaker
main@breaker:	; 1 bytes @ 0x1
	ds	1
	global	main@error
main@error:	; 2 bytes @ 0x2
	ds	2
	global	main@voltage
main@voltage:	; 2 bytes @ 0x4
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         2
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      6       6
;!    BANK0            80      6       8
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
;!Critical Paths under _tmr_int in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _tmr_int in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _tmr_int in BANK1
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 8     8      0     389
;!                                              4 COMMON     2     2      0
;!                                              0 BANK0      6     6      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 0
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (1) _tmr_int                                              4     4      0       0
;!                                              0 COMMON     4     4      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!
;! _tmr_int (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA              40      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      6       6       1       42.9%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0       E       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      6       8       5       10.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            20      0       0       6        0.0%
;!BANK1               20      0       0       7        0.0%
;!DATA                 0      0       E       8        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 7 in file "C:\XC8 PROJECTS\V Guard\VGuard.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  voltage         2    4[BANK0 ] int 
;;  error           2    2[BANK0 ] int 
;;  breaker         1    1[BANK0 ] unsigned char 
;;  trans_on        1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       6       0
;;      Temps:          2       0       0
;;      Totals:         2       6       0
;;Total ram usage:        8 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
psect	maintext
	file	"C:\XC8 PROJECTS\V Guard\VGuard.C"
	line	7
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+btemp+1]
	line	8
	
l591:	
;VGuard.C: 8: char trans_on = 1, breaker = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@trans_on)
	incf	(main@trans_on),f
	clrf	(main@breaker)
	incf	(main@breaker),f
	line	9
	
l593:	
;VGuard.C: 9: int voltage = 0, error = 0;
	clrf	(main@voltage)
	clrf	(main@voltage+1)
	clrf	(main@error)
	clrf	(main@error+1)
	line	11
	
l595:	
;VGuard.C: 11: TRISA = 0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	12
	
l597:	
;VGuard.C: 12: TRISB = 0x00;
	clrf	(134)^080h	;volatile
	line	14
;VGuard.C: 14: OPTION_REG = 0x81;
	movlw	(081h)
	movwf	(129)^080h	;volatile
	line	15
;VGuard.C: 15: INTCON = 0xA0;
	movlw	(0A0h)
	movwf	(11)	;volatile
	line	17
;VGuard.C: 17: ADCON1 = 0x8E;
	movlw	(08Eh)
	movwf	(159)^080h	;volatile
	line	18
;VGuard.C: 18: ADCON0 = 0x40;
	movlw	(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	20
	
l599:	
;VGuard.C: 20: RB0 = 1;
	bsf	(48/8),(48)&7	;volatile
	line	21
	
l601:	
;VGuard.C: 21: RB1 = 0;
	bcf	(49/8),(49)&7	;volatile
	line	22
	
l603:	
;VGuard.C: 22: RB3 = 0;
	bcf	(51/8),(51)&7	;volatile
	goto	l605
	line	24
;VGuard.C: 24: while(1)
	
l35:	
	line	26
	
l605:	
;VGuard.C: 25: {
;VGuard.C: 26: if(timer == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_timer+1)),w
	iorwf	((_timer)),w
	skipz
	goto	u131
	goto	u130
u131:
	goto	l605
u130:
	line	28
	
l607:	
;VGuard.C: 27: {
;VGuard.C: 28: if(trans_on == 1)
	movf	(main@trans_on),w
	xorlw	01h
	skipz
	goto	u141
	goto	u140
u141:
	goto	l37
u140:
	line	31
	
l609:	
;VGuard.C: 29: {
;VGuard.C: 31: ADON = 1;
	bsf	(248/8),(248)&7	;volatile
	line	32
;VGuard.C: 32: GO_nDONE = 1;
	bsf	(250/8),(250)&7	;volatile
	line	34
;VGuard.C: 34: while(GO_nDONE)
	goto	l38
	
l39:	
	line	37
;VGuard.C: 35: {
	
l38:	
	line	34
	btfsc	(250/8),(250)&7	;volatile
	goto	u151
	goto	u150
u151:
	goto	l38
u150:
	goto	l611
	
l40:	
	line	39
	
l611:	
;VGuard.C: 37: }
;VGuard.C: 39: voltage = ADRESH;
	movf	(30),w	;volatile
	movwf	(??_main+0)+0+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(main@voltage)
	movf	1+(??_main+0)+0,w
	movwf	(main@voltage+1)
	line	40
	
l613:	
;VGuard.C: 40: voltage = voltage << 8;
	movf	(main@voltage+1),w
	movwf	(??_main+0)+0+1
	movf	(main@voltage),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(??_main+0)+1
	clrf	(??_main+0)+0
	movf	0+(??_main+0)+0,w
	movwf	(main@voltage)
	movf	1+(??_main+0)+0,w
	movwf	(main@voltage+1)
	line	41
	
l615:	
;VGuard.C: 41: voltage = voltage + ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@voltage),w
	movwf	(??_main+0)+0
	movf	(main@voltage+1),w
	skipnc
	incf	(main@voltage+1),w
	movwf	((??_main+0)+0)+1
	movf	0+(??_main+0)+0,w
	movwf	(main@voltage)
	movf	1+(??_main+0)+0,w
	movwf	(main@voltage+1)
	line	44
;VGuard.C: 44: if(voltage > 290 || voltage < 140)
	movf	(main@voltage+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0123h))^80h
	subwf	btemp+1,w
	skipz
	goto	u165
	movlw	low(0123h)
	subwf	(main@voltage),w
u165:

	skipnc
	goto	u161
	goto	u160
u161:
	goto	l43
u160:
	
l617:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@voltage+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u175
	movlw	low(08Ch)
	subwf	(main@voltage),w
u175:

	skipnc
	goto	u171
	goto	u170
u171:
	goto	l623
u170:
	
l43:	
	line	47
;VGuard.C: 45: {
;VGuard.C: 47: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7	;volatile
	line	48
	
l619:	
;VGuard.C: 48: timer = 20;
	movlw	low(014h)
	movwf	(_timer)
	movlw	high(014h)
	movwf	((_timer))+1
	line	49
	
l621:	
;VGuard.C: 49: breaker = 1;
	clrf	(main@breaker)
	incf	(main@breaker),f
	goto	l623
	line	50
	
l41:	
	line	53
	
l623:	
;VGuard.C: 50: }
;VGuard.C: 53: if(voltage >= 200 && voltage <= 240)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@voltage+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0C8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u185
	movlw	low(0C8h)
	subwf	(main@voltage),w
u185:

	skipc
	goto	u181
	goto	u180
u181:
	goto	l635
u180:
	
l625:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@voltage+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0F1h))^80h
	subwf	btemp+1,w
	skipz
	goto	u195
	movlw	low(0F1h)
	subwf	(main@voltage),w
u195:

	skipnc
	goto	u191
	goto	u190
u191:
	goto	l635
u190:
	line	55
	
l627:	
;VGuard.C: 54: {
;VGuard.C: 55: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7	;volatile
	line	56
;VGuard.C: 56: breaker = 0;
	clrf	(main@breaker)
	line	58
	
l629:	
;VGuard.C: 58: timer = error;
	movf	(main@error+1),w
	clrf	(_timer+1)
	addwf	(_timer+1)
	movf	(main@error),w
	clrf	(_timer)
	addwf	(_timer)

	line	59
	
l631:	
;VGuard.C: 59: RB0 = 0;
	bcf	(48/8),(48)&7	;volatile
	line	60
	
l633:	
;VGuard.C: 60: trans_on = 0;
	clrf	(main@trans_on)
	goto	l635
	line	61
	
l44:	
	line	64
	
l635:	
;VGuard.C: 61: }
;VGuard.C: 64: if(voltage < 200 && breaker == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@voltage+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0C8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u205
	movlw	low(0C8h)
	subwf	(main@voltage),w
u205:

	skipnc
	goto	u201
	goto	u200
u201:
	goto	l647
u200:
	
l637:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@breaker),f
	skipz
	goto	u211
	goto	u210
u211:
	goto	l647
u210:
	line	66
	
l639:	
;VGuard.C: 65: {
;VGuard.C: 66: error = 200 - voltage;
	comf	(main@voltage),w
	movwf	(??_main+0)+0
	comf	(main@voltage+1),w
	movwf	((??_main+0)+0+1)
	incf	(??_main+0)+0,f
	skipnz
	incf	((??_main+0)+0+1),f
	movf	0+(??_main+0)+0,w
	addlw	low(0C8h)
	movwf	(main@error)
	movf	1+(??_main+0)+0,w
	skipnc
	addlw	1
	addlw	high(0C8h)
	movwf	1+(main@error)
	line	67
;VGuard.C: 67: timer = error;
	movf	(main@error+1),w
	clrf	(_timer+1)
	addwf	(_timer+1)
	movf	(main@error),w
	clrf	(_timer)
	addwf	(_timer)

	line	68
	
l641:	
;VGuard.C: 68: RB3 = 0;
	bcf	(51/8),(51)&7	;volatile
	line	69
	
l643:	
;VGuard.C: 69: RB0 = 0;
	bcf	(48/8),(48)&7	;volatile
	line	70
	
l645:	
;VGuard.C: 70: trans_on = 0;
	clrf	(main@trans_on)
	goto	l647
	line	71
	
l45:	
	line	74
	
l647:	
;VGuard.C: 71: }
;VGuard.C: 74: if(voltage > 240 && breaker == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@voltage+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0F1h))^80h
	subwf	btemp+1,w
	skipz
	goto	u225
	movlw	low(0F1h)
	subwf	(main@voltage),w
u225:

	skipc
	goto	u221
	goto	u220
u221:
	goto	l605
u220:
	
l649:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@breaker),f
	skipz
	goto	u231
	goto	u230
u231:
	goto	l605
u230:
	line	76
	
l651:	
;VGuard.C: 75: {
;VGuard.C: 76: error = voltage - 240;
	movf	(main@voltage),w
	addlw	low(-240)
	movwf	(main@error)
	movf	(main@voltage+1),w
	skipnc
	addlw	1
	addlw	high(-240)
	movwf	1+(main@error)
	line	77
;VGuard.C: 77: timer = error;
	movf	(main@error+1),w
	clrf	(_timer+1)
	addwf	(_timer+1)
	movf	(main@error),w
	clrf	(_timer)
	addwf	(_timer)

	line	78
	
l653:	
;VGuard.C: 78: RB3 = 1;
	bsf	(51/8),(51)&7	;volatile
	line	79
	
l655:	
;VGuard.C: 79: RB0 = 0;
	bcf	(48/8),(48)&7	;volatile
	line	80
	
l657:	
;VGuard.C: 80: trans_on = 0;
	clrf	(main@trans_on)
	goto	l605
	line	81
	
l46:	
	line	82
;VGuard.C: 81: }
;VGuard.C: 82: }
	goto	l605
	line	83
	
l37:	
	line	85
;VGuard.C: 83: else
;VGuard.C: 84: {
;VGuard.C: 85: RB0 = 1;
	bsf	(48/8),(48)&7	;volatile
	line	86
;VGuard.C: 86: trans_on = 1;
	clrf	(main@trans_on)
	incf	(main@trans_on),f
	line	87
	
l659:	
;VGuard.C: 87: timer = error;
	movf	(main@error+1),w
	clrf	(_timer+1)
	addwf	(_timer+1)
	movf	(main@error),w
	clrf	(_timer)
	addwf	(_timer)

	goto	l605
	line	88
	
l47:	
	goto	l605
	line	89
	
l36:	
	goto	l605
	line	90
	
l48:	
	line	24
	goto	l605
	
l49:	
	line	91
	
l50:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_tmr_int

;; *************** function _tmr_int *****************
;; Defined at:
;;		line 95 in file "C:\XC8 PROJECTS\V Guard\VGuard.C"
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
__ptext37:	;psect for function _tmr_int
psect	text37
	file	"C:\XC8 PROJECTS\V Guard\VGuard.C"
	line	95
	global	__size_of_tmr_int
	__size_of_tmr_int	equ	__end_of_tmr_int-_tmr_int
	
_tmr_int:	
	opt	stack 7
; Regs used in _tmr_int: [wreg+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_tmr_int+0)
	movf	fsr0,w
	movwf	(??_tmr_int+1)
	movf	pclath,w
	movwf	(??_tmr_int+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_tmr_int+3)
	ljmp	_tmr_int
psect	text37
	line	96
	
i1l661:	
;VGuard.C: 96: timer = timer - 1;
	movf	(_timer),w
	addlw	low(-1)
	movwf	(_timer)
	movf	(_timer+1),w
	skipnc
	addlw	1
	addlw	high(-1)
	movwf	1+(_timer)
	line	98
	
i1l663:	
;VGuard.C: 98: if(timer < 0)
	btfss	(_timer+1),7
	goto	u24_21
	goto	u24_20
u24_21:
	goto	i1l53
u24_20:
	line	99
	
i1l665:	
;VGuard.C: 99: timer = 0;
	clrf	(_timer)
	clrf	(_timer+1)
	
i1l53:	
	line	100
;VGuard.C: 100: TMR0 = 0;
	clrf	(1)	;volatile
	line	101
	
i1l667:	
;VGuard.C: 101: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	goto	i1l54
	line	102
	
i1l669:	
	line	103
;VGuard.C: 102: return;
	
i1l54:	
	movf	(??_tmr_int+3),w
	movwf	btemp+1
	movf	(??_tmr_int+2),w
	movwf	pclath
	movf	(??_tmr_int+1),w
	movwf	fsr0
	swapf	(??_tmr_int+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_tmr_int
	__end_of_tmr_int:
	signat	_tmr_int,88
psect	text38,local,class=CODE,delta=2,merge=1
global __ptext38
__ptext38:	;psect for function _tmr_int
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end

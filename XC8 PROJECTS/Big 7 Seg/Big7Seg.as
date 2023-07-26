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
	FNCALL	_main,_Send_Data
	FNROOT	_main
	global	_display
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"E:\Study Material\XC8 PROJECTS\Big 7 Seg\Test.c"
	line	14

;initializer for _display
	retlw	03Fh
	retlw	06h
	retlw	05Bh
	retlw	04Fh
	retlw	066h
	retlw	06Dh
	retlw	07Dh
	retlw	07h
	retlw	07Fh
	retlw	06Fh
	global	_PORTA
_PORTA	set	0x5
	global	_PORTB
_PORTB	set	0x6
	global	_PORTC
_PORTC	set	0x7
	global	_RC0
_RC0	set	0x38
	global	_RC1
_RC1	set	0x39
	global	_RC2
_RC2	set	0x3A
	global	_RC3
_RC3	set	0x3B
	global	_ADCON1
_ADCON1	set	0x9F
	global	_TRISA
_TRISA	set	0x85
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
; #config settings
	file	"Big7Seg.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"E:\Study Material\XC8 PROJECTS\Big 7 Seg\Test.c"
	line	14
_display:
       ds      10

	file	"Big7Seg.as"
	line	#
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
	fcall	__pidataBANK0+2		;fetch initializer
	movwf	__pdataBANK0+2&07fh		
	fcall	__pidataBANK0+3		;fetch initializer
	movwf	__pdataBANK0+3&07fh		
	fcall	__pidataBANK0+4		;fetch initializer
	movwf	__pdataBANK0+4&07fh		
	fcall	__pidataBANK0+5		;fetch initializer
	movwf	__pdataBANK0+5&07fh		
	fcall	__pidataBANK0+6		;fetch initializer
	movwf	__pdataBANK0+6&07fh		
	fcall	__pidataBANK0+7		;fetch initializer
	movwf	__pdataBANK0+7&07fh		
	fcall	__pidataBANK0+8		;fetch initializer
	movwf	__pdataBANK0+8&07fh		
	fcall	__pidataBANK0+9		;fetch initializer
	movwf	__pdataBANK0+9&07fh		
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
?_main:	; 0 bytes @ 0x0
	global	Send_Data@number
Send_Data@number:	; 2 bytes @ 0x0
	ds	2
??_Send_Data:	; 0 bytes @ 0x2
	global	Send_Data@Flag
Send_Data@Flag:	; 2 bytes @ 0x2
	ds	2
	global	Send_Data@Mask
Send_Data@Mask:	; 2 bytes @ 0x4
	ds	2
	global	Send_Data@bits
Send_Data@bits:	; 2 bytes @ 0x6
	ds	2
??_main:	; 0 bytes @ 0x8
	ds	3
	global	main@count
main@count:	; 2 bytes @ 0xB
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        10
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     13      13
;!    BANK0            80      0      10
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
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 5     5      0     305
;!                                              8 COMMON     5     5      0
;!                          _Send_Data
;! ---------------------------------------------------------------------------------
;! (1) _Send_Data                                            8     6      2     212
;!                                              0 COMMON     8     6      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Send_Data
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
;!BANK0               50      0       A       5       12.5%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      D       D       1       92.9%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      17       8        0.0%
;!ABS                  0      0      17       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA              40      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 17 in file "E:\Study Material\XC8 PROJECTS\Big 7 Seg\Test.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           2   11[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         2       0       0
;;      Temps:          3       0       0
;;      Totals:         5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Send_Data
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"E:\Study Material\XC8 PROJECTS\Big 7 Seg\Test.c"
	line	17
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"E:\Study Material\XC8 PROJECTS\Big 7 Seg\Test.c"
	line	17
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 7
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	19
	
l573:	
;Test.c: 19: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	20
;Test.c: 20: TRISB = 0x00;
	clrf	(134)^080h	;volatile
	line	21
;Test.c: 21: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	22
	
l575:	
;Test.c: 22: ADCON1 = 0x06;
	movlw	(06h)
	movwf	(159)^080h	;volatile
	line	24
	
l577:	
;Test.c: 24: PORTB = 0xFF;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	25
	
l579:	
;Test.c: 25: PORTA = 0xFF;
	movlw	(0FFh)
	movwf	(5)	;volatile
	line	26
	
l581:	
;Test.c: 26: PORTC = 0xFF;
	movlw	(0FFh)
	movwf	(7)	;volatile
	line	30
;Test.c: 28: int count;
;Test.c: 30: for(count = 0; count <= 4; count++)
	clrf	(main@count)
	clrf	(main@count+1)
	
l583:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05h))^80h
	subwf	btemp+1,w
	skipz
	goto	u125
	movlw	low(05h)
	subwf	(main@count),w
u125:

	skipc
	goto	u121
	goto	u120
u121:
	goto	l31
u120:
	goto	l593
	
l585:	
	goto	l593
	line	31
	
l31:	
	line	32
;Test.c: 31: {
;Test.c: 32: RC3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7	;volatile
	line	33
	
l587:	
;Test.c: 33: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u157:
	decfsz	((??_main+0)+0),f
	goto	u157
	decfsz	((??_main+0)+0+1),f
	goto	u157
	decfsz	((??_main+0)+0+2),f
	goto	u157
	nop2
opt asmopt_on

	line	34
	
l589:	
;Test.c: 34: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7	;volatile
	line	35
;Test.c: 35: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u167:
	decfsz	((??_main+0)+0),f
	goto	u167
	decfsz	((??_main+0)+0+1),f
	goto	u167
	decfsz	((??_main+0)+0+2),f
	goto	u167
	nop2
opt asmopt_on

	line	30
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	
l591:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05h))^80h
	subwf	btemp+1,w
	skipz
	goto	u135
	movlw	low(05h)
	subwf	(main@count),w
u135:

	skipc
	goto	u131
	goto	u130
u131:
	goto	l31
u130:
	goto	l593
	
l32:	
	line	37
	
l593:	
;Test.c: 36: }
;Test.c: 37: count = 0;
	clrf	(main@count)
	clrf	(main@count+1)
	goto	l595
	line	38
;Test.c: 38: while(1)
	
l33:	
	line	40
	
l595:	
;Test.c: 39: {
;Test.c: 40: Send_Data(display[count]);
	movf	(main@count),w
	addlw	_display&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(Send_Data@number)
	movf	1+(??_main+0)+0,w
	movwf	(Send_Data@number+1)
	fcall	_Send_Data
	line	41
	
l597:	
;Test.c: 41: _delay(1000000);
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u177:
	decfsz	((??_main+0)+0),f
	goto	u177
	decfsz	((??_main+0)+0+1),f
	goto	u177
	decfsz	((??_main+0)+0+2),f
	goto	u177
	nop2
opt asmopt_on

	line	42
	
l599:	
;Test.c: 42: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	line	43
	
l601:	
;Test.c: 43: if(count > 9)
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u145
	movlw	low(0Ah)
	subwf	(main@count),w
u145:

	skipc
	goto	u141
	goto	u140
u141:
	goto	l595
u140:
	line	44
	
l603:	
;Test.c: 44: count = 0;
	clrf	(main@count)
	clrf	(main@count+1)
	goto	l595
	
l34:	
	goto	l595
	line	45
	
l35:	
	line	38
	goto	l595
	
l36:	
	line	46
	
l37:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_Send_Data

;; *************** function _Send_Data *****************
;; Defined at:
;;		line 48 in file "E:\Study Material\XC8 PROJECTS\Big 7 Seg\Test.c"
;; Parameters:    Size  Location     Type
;;  number          2    0[COMMON] unsigned short 
;; Auto vars:     Size  Location     Type
;;  bits            2    6[COMMON] unsigned short 
;;  Mask            2    4[COMMON] unsigned short 
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
	line	48
global __ptext1
__ptext1:	;psect for function _Send_Data
psect	text1
	file	"E:\Study Material\XC8 PROJECTS\Big 7 Seg\Test.c"
	line	48
	global	__size_of_Send_Data
	__size_of_Send_Data	equ	__end_of_Send_Data-_Send_Data
	
_Send_Data:	
;incstack = 0
	opt	stack 7
; Regs used in _Send_Data: [wreg+status,2+status,0]
	line	51
	
l553:	
;Test.c: 50: unsigned short Mask, bits, Flag;
;Test.c: 51: PORTC = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	53
	
l555:	
;Test.c: 53: Mask = 0x01;
	movlw	low(01h)
	movwf	(Send_Data@Mask)
	movlw	high(01h)
	movwf	((Send_Data@Mask))+1
	line	54
	
l557:	
;Test.c: 54: for (bits=0; bits<8; bits++)
	clrf	(Send_Data@bits)
	clrf	(Send_Data@bits+1)
	movlw	high(08h)
	subwf	(Send_Data@bits+1),w
	movlw	low(08h)
	skipnz
	subwf	(Send_Data@bits),w
	skipc
	goto	u81
	goto	u80
u81:
	goto	l561
u80:
	goto	l41
	
l559:	
	goto	l41
	line	55
	
l40:	
	line	56
	
l561:	
;Test.c: 55: {
;Test.c: 56: Flag = number & Mask;
	movf	(Send_Data@Mask),w
	andwf	(Send_Data@number),w
	movwf	(Send_Data@Flag)
	movf	(Send_Data@Mask+1),w
	andwf	(Send_Data@number+1),w
	movwf	1+(Send_Data@Flag)
	line	57
	
l563:	
;Test.c: 57: if(Flag == 0)
	movf	((Send_Data@Flag+1)),w
	iorwf	((Send_Data@Flag)),w
	skipz
	goto	u91
	goto	u90
u91:
	goto	l567
u90:
	line	59
	
l565:	
;Test.c: 58: {
;Test.c: 59: RC1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7	;volatile
	line	60
;Test.c: 60: _delay(1);
		opt asmopt_off
	nop
	opt asmopt_on

	line	61
;Test.c: 61: RC0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7	;volatile
	line	62
;Test.c: 62: _delay(1);
		opt asmopt_off
	nop
	opt asmopt_on

	line	63
;Test.c: 63: RC0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7	;volatile
	goto	l567
	line	64
	
l42:	
	line	65
	
l567:	
;Test.c: 64: }
;Test.c: 65: if(Flag > 0)
	movf	(Send_Data@Flag+1),w
	iorwf	(Send_Data@Flag),w
	skipnz
	goto	u101
	goto	u100
u101:
	goto	l571
u100:
	line	67
	
l569:	
;Test.c: 66: {
;Test.c: 67: RC1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7	;volatile
	line	68
;Test.c: 68: _delay(1);
		opt asmopt_off
	nop
	opt asmopt_on

	line	69
;Test.c: 69: RC0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7	;volatile
	line	70
;Test.c: 70: _delay(1);
		opt asmopt_off
	nop
	opt asmopt_on

	line	71
;Test.c: 71: RC0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7	;volatile
	goto	l571
	line	72
	
l43:	
	line	73
	
l571:	
;Test.c: 72: }
;Test.c: 73: Mask = Mask << 1;
	clrc
	rlf	(Send_Data@Mask),w
	movwf	(Send_Data@Mask)
	rlf	(Send_Data@Mask+1),w
	movwf	1+(Send_Data@Mask)
	line	54
	movlw	low(01h)
	addwf	(Send_Data@bits),f
	skipnc
	incf	(Send_Data@bits+1),f
	movlw	high(01h)
	addwf	(Send_Data@bits+1),f
	movlw	high(08h)
	subwf	(Send_Data@bits+1),w
	movlw	low(08h)
	skipnz
	subwf	(Send_Data@bits),w
	skipc
	goto	u111
	goto	u110
u111:
	goto	l561
u110:
	
l41:	
	line	76
;Test.c: 74: }
;Test.c: 76: RC2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7	;volatile
	line	77
;Test.c: 77: _delay(1);
		opt asmopt_off
	nop
	opt asmopt_on

	line	78
;Test.c: 78: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7	;volatile
	line	79
	
l44:	
	return
	opt stack 0
GLOBAL	__end_of_Send_Data
	__end_of_Send_Data:
	signat	_Send_Data,4216
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

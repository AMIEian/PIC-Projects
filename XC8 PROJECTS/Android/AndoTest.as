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
	FNCALL	_main,_USARTWriteChar
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_display
	global	_digits
	global	_Command
	global	_foot
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"E:\Study Material\XC8 PROJECTS\Android\AndoTest.c"
	line	9

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
	retlw	067h
	line	24

;initializer for _digits
	retlw	01h
	retlw	02h
	retlw	03h
	line	21

;initializer for _Command
	retlw	02h
	line	25

;initializer for _foot
	retlw	01h
	global	_ch
	global	_PIR1bits
_PIR1bits	set	0xC
	global	_PORTA
_PORTA	set	0x5
	global	_PORTB
_PORTB	set	0x6
	global	_PORTC
_PORTC	set	0x7
	global	_RCREG
_RCREG	set	0x1A
	global	_RCSTAbits
_RCSTAbits	set	0x18
	global	_TXREG
_TXREG	set	0x19
	global	_GIE
_GIE	set	0x5F
	global	_PEIE
_PEIE	set	0x5E
	global	_RC4
_RC4	set	0x3C
	global	_RCIF
_RCIF	set	0x65
	global	_ADCON1
_ADCON1	set	0x9F
	global	_SPBRG
_SPBRG	set	0x99
	global	_TRISA
_TRISA	set	0x85
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_TXSTAbits
_TXSTAbits	set	0x98
	global	_RCIE
_RCIE	set	0x465
; #config settings
	file	"AndoTest.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_ch:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"E:\Study Material\XC8 PROJECTS\Android\AndoTest.c"
	line	9
_display:
       ds      10

psect	dataBANK0
	file	"E:\Study Material\XC8 PROJECTS\Android\AndoTest.c"
	line	24
_digits:
       ds      3

psect	dataBANK0
	file	"E:\Study Material\XC8 PROJECTS\Android\AndoTest.c"
	line	21
_Command:
       ds      1

psect	dataBANK0
	file	"E:\Study Material\XC8 PROJECTS\Android\AndoTest.c"
	line	25
_foot:
       ds      1

	file	"AndoTest.as"
	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
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
	fcall	__pidataBANK0+10		;fetch initializer
	movwf	__pdataBANK0+10&07fh		
	fcall	__pidataBANK0+11		;fetch initializer
	movwf	__pdataBANK0+11&07fh		
	fcall	__pidataBANK0+12		;fetch initializer
	movwf	__pdataBANK0+12&07fh		
	fcall	__pidataBANK0+13		;fetch initializer
	movwf	__pdataBANK0+13&07fh		
	fcall	__pidataBANK0+14		;fetch initializer
	movwf	__pdataBANK0+14&07fh		
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_USARTWriteChar:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
??_ISR:	; 0 bytes @ 0x0
	ds	5
??_USARTWriteChar:	; 0 bytes @ 0x5
	global	USARTWriteChar@ch
USARTWriteChar@ch:	; 1 bytes @ 0x5
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_main:	; 0 bytes @ 0x0
	ds	3
	global	main@count
main@count:	; 2 bytes @ 0x3
	ds	2
	global	main@data
main@data:	; 1 bytes @ 0x5
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        15
;!    BSS         1
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      6       7
;!    BANK0            80      6      21
;!    BANK1            32      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_USARTWriteChar
;!
;!Critical Paths under _ISR in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK1
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
;! (0) _main                                                 6     6      0     538
;!                                              0 BANK0      6     6      0
;!                     _USARTWriteChar
;! ---------------------------------------------------------------------------------
;! (1) _USARTWriteChar                                       1     1      0      22
;!                                              5 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (2) _ISR                                                  5     5      0       0
;!                                              0 COMMON     5     5      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _USARTWriteChar
;!
;! _ISR (ROOT)
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
;!BANK0               50      6      15       5       26.3%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      6       7       1       50.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      1C       8        0.0%
;!ABS                  0      0      1C       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA              40      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 27 in file "E:\Study Material\XC8 PROJECTS\Android\AndoTest.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           2    3[BANK0 ] int 
;;  data            1    5[BANK0 ] unsigned char 
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
;;      Locals:         0       3       0
;;      Temps:          0       3       0
;;      Totals:         0       6       0
;;Total ram usage:        6 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_USARTWriteChar
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"E:\Study Material\XC8 PROJECTS\Android\AndoTest.c"
	line	27
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"E:\Study Material\XC8 PROJECTS\Android\AndoTest.c"
	line	27
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	29
	
l1208:	
;AndoTest.c: 29: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	30
;AndoTest.c: 30: TRISB = 0x00;
	clrf	(134)^080h	;volatile
	line	31
	
l1210:	
;AndoTest.c: 31: TRISC = 0xC0;
	movlw	(0C0h)
	movwf	(135)^080h	;volatile
	line	32
	
l1212:	
;AndoTest.c: 32: ADCON1 = 0x06;
	movlw	(06h)
	movwf	(159)^080h	;volatile
	line	34
	
l1214:	
;AndoTest.c: 34: PORTB = 0xFF;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	35
	
l1216:	
;AndoTest.c: 35: PORTA = 0xFF;
	movlw	(0FFh)
	movwf	(5)	;volatile
	line	36
	
l1218:	
;AndoTest.c: 36: PORTC = 0xFF;
	movlw	(0FFh)
	movwf	(7)	;volatile
	line	39
	
l1220:	
;AndoTest.c: 38: int count;
;AndoTest.c: 39: for(count = 0; count <= 4; count++)
	clrf	(main@count)
	clrf	(main@count+1)
	
l1222:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05h))^80h
	subwf	btemp+1,w
	skipz
	goto	u455
	movlw	low(05h)
	subwf	(main@count),w
u455:

	skipc
	goto	u451
	goto	u450
u451:
	goto	l53
u450:
	goto	l1232
	
l1224:	
	goto	l1232
	line	40
	
l53:	
	line	41
;AndoTest.c: 40: {
;AndoTest.c: 41: RC4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(60/8),(60)&7	;volatile
	line	42
	
l1226:	
;AndoTest.c: 42: _delay(1000000);
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

	line	43
	
l1228:	
;AndoTest.c: 43: RC4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7	;volatile
	line	44
;AndoTest.c: 44: _delay(1000000);
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

	line	39
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	
l1230:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05h))^80h
	subwf	btemp+1,w
	skipz
	goto	u465
	movlw	low(05h)
	subwf	(main@count),w
u465:

	skipc
	goto	u461
	goto	u460
u461:
	goto	l53
u460:
	goto	l1232
	
l54:	
	line	46
	
l1232:	
;AndoTest.c: 45: }
;AndoTest.c: 46: count = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	clrf	(main@count+1)
	line	49
	
l1234:	
;AndoTest.c: 49: SPBRG=25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	52
	
l1236:	
;AndoTest.c: 52: TXSTAbits.TX9=0;
	bcf	(152)^080h,6	;volatile
	line	53
	
l1238:	
;AndoTest.c: 53: TXSTAbits.TXEN=1;
	bsf	(152)^080h,5	;volatile
	line	54
	
l1240:	
;AndoTest.c: 54: TXSTAbits.SYNC=0;
	bcf	(152)^080h,4	;volatile
	line	55
	
l1242:	
;AndoTest.c: 55: TXSTAbits.BRGH=1;
	bsf	(152)^080h,2	;volatile
	line	58
	
l1244:	
;AndoTest.c: 58: RCSTAbits.SPEN=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(24),7	;volatile
	line	59
	
l1246:	
;AndoTest.c: 59: RCSTAbits.RX9=0;
	bcf	(24),6	;volatile
	line	60
	
l1248:	
;AndoTest.c: 60: RCSTAbits.CREN=1;
	bsf	(24),4	;volatile
	line	61
	
l1250:	
;AndoTest.c: 61: RCSTAbits.ADDEN=0;
	bcf	(24),3	;volatile
	line	64
	
l1252:	
;AndoTest.c: 64: RCIE=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1125/8)^080h,(1125)&7	;volatile
	line	65
	
l1254:	
;AndoTest.c: 65: PEIE=1;
	bsf	(94/8),(94)&7	;volatile
	line	68
	
l1256:	
;AndoTest.c: 68: (GIE = 1);
	bsf	(95/8),(95)&7	;volatile
	goto	l1258
	line	71
;AndoTest.c: 69: char data;
;AndoTest.c: 71: while(1)
	
l55:	
	line	73
	
l1258:	
;AndoTest.c: 72: {
;AndoTest.c: 73: _delay(1000);
	opt asmopt_off
movlw	249
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_main+0)+0,f
u667:
	nop
decfsz	(??_main+0)+0,f
	goto	u667
	nop2	;nop
	nop
opt asmopt_on

	line	74
	
l1260:	
;AndoTest.c: 74: count++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	line	75
	
l1262:	
;AndoTest.c: 75: if(count > 10000)
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02711h))^80h
	subwf	btemp+1,w
	skipz
	goto	u475
	movlw	low(02711h)
	subwf	(main@count),w
u475:

	skipc
	goto	u471
	goto	u470
u471:
	goto	l1444
u470:
	line	77
	
l1264:	
;AndoTest.c: 76: {
;AndoTest.c: 77: if(foot == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_foot),w
	xorlw	01h
	skipz
	goto	u481
	goto	u480
u481:
	goto	l1268
u480:
	line	79
	
l1266:	
;AndoTest.c: 78: {
;AndoTest.c: 79: RC4 = 1;
	bsf	(60/8),(60)&7	;volatile
	goto	l1268
	line	80
	
l57:	
	line	81
	
l1268:	
;AndoTest.c: 80: }
;AndoTest.c: 81: if(foot == 0)
	movf	(_foot),f
	skipz
	goto	u491
	goto	u490
u491:
	goto	l1272
u490:
	line	83
	
l1270:	
;AndoTest.c: 82: {
;AndoTest.c: 83: RC4 = 0;
	bcf	(60/8),(60)&7	;volatile
	goto	l1272
	line	84
	
l58:	
	line	85
	
l1272:	
;AndoTest.c: 84: }
;AndoTest.c: 85: foot = foot ^ 0x01;
	movf	(_foot),w
	xorlw	01h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_foot)
	line	86
	
l1274:	
;AndoTest.c: 86: count = 0;
	clrf	(main@count)
	clrf	(main@count+1)
	goto	l1444
	line	87
	
l56:	
	line	88
;AndoTest.c: 87: }
;AndoTest.c: 88: switch(Command)
	goto	l1444
	line	90
;AndoTest.c: 89: {
;AndoTest.c: 90: case Increase:
	
l60:	
	line	91
	
l1276:	
;AndoTest.c: 91: digits[0] = digits[0] + 1;
	movf	(_digits),w
	addlw	01h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_digits)
	line	92
	
l1278:	
;AndoTest.c: 92: if(digits[0] > 9)
	movf	(_digits),w
	xorlw	80h
	addlw	-((0Ah)^80h)
	skipc
	goto	u501
	goto	u500
u501:
	goto	l1294
u500:
	line	94
	
l1280:	
;AndoTest.c: 93: {
;AndoTest.c: 94: digits[0] = 0;
	clrf	(_digits)
	line	95
	
l1282:	
;AndoTest.c: 95: digits[1] = digits[1] + 1;
	movf	0+(_digits)+01h,w
	addlw	01h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_digits)+01h
	line	96
	
l1284:	
;AndoTest.c: 96: if(digits[1] > 9)
	movf	0+(_digits)+01h,w
	xorlw	80h
	addlw	-((0Ah)^80h)
	skipc
	goto	u511
	goto	u510
u511:
	goto	l1294
u510:
	line	98
	
l1286:	
;AndoTest.c: 97: {
;AndoTest.c: 98: digits[1] = 0;
	clrf	0+(_digits)+01h
	line	99
	
l1288:	
;AndoTest.c: 99: digits[2] = digits[2] + 1;
	movf	0+(_digits)+02h,w
	addlw	01h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_digits)+02h
	line	100
	
l1290:	
;AndoTest.c: 100: if(digits[2] > 9)
	movf	0+(_digits)+02h,w
	xorlw	80h
	addlw	-((0Ah)^80h)
	skipc
	goto	u521
	goto	u520
u521:
	goto	l1294
u520:
	line	102
	
l1292:	
;AndoTest.c: 101: {
;AndoTest.c: 102: digits[2] = 9;
	movlw	(09h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_digits)+02h
	line	103
;AndoTest.c: 103: digits[1] = 9;
	movlw	(09h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_digits)+01h
	line	104
;AndoTest.c: 104: digits[0] = 9;
	movlw	(09h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_digits)
	goto	l1294
	line	105
	
l63:	
	goto	l1294
	line	106
	
l62:	
	goto	l1294
	line	107
	
l61:	
	line	109
	
l1294:	
;AndoTest.c: 105: }
;AndoTest.c: 106: }
;AndoTest.c: 107: }
;AndoTest.c: 109: USARTWriteChar('A');
	movlw	(041h)
	fcall	_USARTWriteChar
	line	111
	
l1296:	
;AndoTest.c: 111: data = digits[0] + 48;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_digits),w
	addlw	030h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@data)
	line	112
	
l1298:	
;AndoTest.c: 112: USARTWriteChar(data);
	movf	(main@data),w
	fcall	_USARTWriteChar
	line	113
	
l1300:	
;AndoTest.c: 113: USARTWriteChar('B');
	movlw	(042h)
	fcall	_USARTWriteChar
	line	115
	
l1302:	
;AndoTest.c: 115: data = digits[1] + 48;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_digits)+01h,w
	addlw	030h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@data)
	line	116
	
l1304:	
;AndoTest.c: 116: USARTWriteChar(data);
	movf	(main@data),w
	fcall	_USARTWriteChar
	line	117
	
l1306:	
;AndoTest.c: 117: USARTWriteChar('C');
	movlw	(043h)
	fcall	_USARTWriteChar
	line	119
	
l1308:	
;AndoTest.c: 119: data = digits[2] + 48;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_digits)+02h,w
	addlw	030h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@data)
	line	120
	
l1310:	
;AndoTest.c: 120: USARTWriteChar(data);
	movf	(main@data),w
	fcall	_USARTWriteChar
	line	121
	
l1312:	
;AndoTest.c: 121: _delay(10000);
	opt asmopt_off
movlw	13
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+1),f
	movlw	251
movwf	((??_main+0)+0),f
u677:
	decfsz	((??_main+0)+0),f
	goto	u677
	decfsz	((??_main+0)+0+1),f
	goto	u677
	nop2
opt asmopt_on

	line	122
	
l1314:	
;AndoTest.c: 122: Command = Stop;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_Command)
	line	123
;AndoTest.c: 123: break;
	goto	l1258
	line	125
;AndoTest.c: 125: case Decrease:
	
l65:	
	line	126
	
l1316:	
;AndoTest.c: 126: digits[0] = digits[0] - 1;
	movf	(_digits),w
	addlw	-1
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_digits)
	line	127
	
l1318:	
;AndoTest.c: 127: if(digits[0] < 0)
	btfss	(_digits),7
	goto	u531
	goto	u530
u531:
	goto	l1334
u530:
	line	129
	
l1320:	
;AndoTest.c: 128: {
;AndoTest.c: 129: digits[0] = 9;
	movlw	(09h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_digits)
	line	130
	
l1322:	
;AndoTest.c: 130: digits[1] = digits[1] - 1;
	movf	0+(_digits)+01h,w
	addlw	-1
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_digits)+01h
	line	131
	
l1324:	
;AndoTest.c: 131: if(digits[1] < 0)
	btfss	0+(_digits)+01h,7
	goto	u541
	goto	u540
u541:
	goto	l1334
u540:
	line	133
	
l1326:	
;AndoTest.c: 132: {
;AndoTest.c: 133: digits[1] = 9;
	movlw	(09h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_digits)+01h
	line	134
	
l1328:	
;AndoTest.c: 134: digits[2] = digits[2] - 1;
	movf	0+(_digits)+02h,w
	addlw	-1
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_digits)+02h
	line	135
	
l1330:	
;AndoTest.c: 135: if(digits[2] < 0)
	btfss	0+(_digits)+02h,7
	goto	u551
	goto	u550
u551:
	goto	l1334
u550:
	line	137
	
l1332:	
;AndoTest.c: 136: {
;AndoTest.c: 137: digits[2] = 0;
	clrf	0+(_digits)+02h
	line	138
;AndoTest.c: 138: digits[1] = 0;
	clrf	0+(_digits)+01h
	line	139
;AndoTest.c: 139: digits[0] = 0;
	clrf	(_digits)
	goto	l1334
	line	140
	
l68:	
	goto	l1334
	line	141
	
l67:	
	goto	l1334
	line	142
	
l66:	
	line	144
	
l1334:	
;AndoTest.c: 140: }
;AndoTest.c: 141: }
;AndoTest.c: 142: }
;AndoTest.c: 144: USARTWriteChar('A');
	movlw	(041h)
	fcall	_USARTWriteChar
	line	146
	
l1336:	
;AndoTest.c: 146: data = digits[0] + 48;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_digits),w
	addlw	030h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@data)
	line	147
	
l1338:	
;AndoTest.c: 147: USARTWriteChar(data);
	movf	(main@data),w
	fcall	_USARTWriteChar
	line	148
	
l1340:	
;AndoTest.c: 148: USARTWriteChar('B');
	movlw	(042h)
	fcall	_USARTWriteChar
	line	150
	
l1342:	
;AndoTest.c: 150: data = digits[1] + 48;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_digits)+01h,w
	addlw	030h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@data)
	line	151
	
l1344:	
;AndoTest.c: 151: USARTWriteChar(data);
	movf	(main@data),w
	fcall	_USARTWriteChar
	line	152
	
l1346:	
;AndoTest.c: 152: USARTWriteChar('C');
	movlw	(043h)
	fcall	_USARTWriteChar
	line	154
	
l1348:	
;AndoTest.c: 154: data = digits[2] + 48;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_digits)+02h,w
	addlw	030h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@data)
	line	155
	
l1350:	
;AndoTest.c: 155: USARTWriteChar(data);
	movf	(main@data),w
	fcall	_USARTWriteChar
	line	156
	
l1352:	
;AndoTest.c: 156: _delay(10000);
	opt asmopt_off
movlw	13
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+1),f
	movlw	251
movwf	((??_main+0)+0),f
u687:
	decfsz	((??_main+0)+0),f
	goto	u687
	decfsz	((??_main+0)+0+1),f
	goto	u687
	nop2
opt asmopt_on

	line	157
	
l1354:	
;AndoTest.c: 157: Command = Stop;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_Command)
	line	158
;AndoTest.c: 158: break;
	goto	l1258
	line	160
;AndoTest.c: 160: case FastIncrease:
	
l69:	
	line	161
	
l1356:	
;AndoTest.c: 161: digits[0] = digits[0] + 1;
	movf	(_digits),w
	addlw	01h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_digits)
	line	162
	
l1358:	
;AndoTest.c: 162: if(digits[0] > 9)
	movf	(_digits),w
	xorlw	80h
	addlw	-((0Ah)^80h)
	skipc
	goto	u561
	goto	u560
u561:
	goto	l1374
u560:
	line	164
	
l1360:	
;AndoTest.c: 163: {
;AndoTest.c: 164: digits[0] = 0;
	clrf	(_digits)
	line	165
	
l1362:	
;AndoTest.c: 165: digits[1] = digits[1] + 1;
	movf	0+(_digits)+01h,w
	addlw	01h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_digits)+01h
	line	166
	
l1364:	
;AndoTest.c: 166: if(digits[1] > 9)
	movf	0+(_digits)+01h,w
	xorlw	80h
	addlw	-((0Ah)^80h)
	skipc
	goto	u571
	goto	u570
u571:
	goto	l1374
u570:
	line	168
	
l1366:	
;AndoTest.c: 167: {
;AndoTest.c: 168: digits[1] = 0;
	clrf	0+(_digits)+01h
	line	169
	
l1368:	
;AndoTest.c: 169: digits[2] = digits[2] + 1;
	movf	0+(_digits)+02h,w
	addlw	01h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_digits)+02h
	line	170
	
l1370:	
;AndoTest.c: 170: if(digits[2] > 9)
	movf	0+(_digits)+02h,w
	xorlw	80h
	addlw	-((0Ah)^80h)
	skipc
	goto	u581
	goto	u580
u581:
	goto	l1374
u580:
	line	172
	
l1372:	
;AndoTest.c: 171: {
;AndoTest.c: 172: digits[2] = 9;
	movlw	(09h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_digits)+02h
	line	173
;AndoTest.c: 173: digits[1] = 9;
	movlw	(09h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_digits)+01h
	line	174
;AndoTest.c: 174: digits[0] = 9;
	movlw	(09h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_digits)
	goto	l1374
	line	175
	
l72:	
	goto	l1374
	line	176
	
l71:	
	goto	l1374
	line	177
	
l70:	
	line	179
	
l1374:	
;AndoTest.c: 175: }
;AndoTest.c: 176: }
;AndoTest.c: 177: }
;AndoTest.c: 179: USARTWriteChar('A');
	movlw	(041h)
	fcall	_USARTWriteChar
	line	181
	
l1376:	
;AndoTest.c: 181: data = digits[0] + 48;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_digits),w
	addlw	030h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@data)
	line	182
	
l1378:	
;AndoTest.c: 182: USARTWriteChar(data);
	movf	(main@data),w
	fcall	_USARTWriteChar
	line	183
	
l1380:	
;AndoTest.c: 183: USARTWriteChar('B');
	movlw	(042h)
	fcall	_USARTWriteChar
	line	185
	
l1382:	
;AndoTest.c: 185: data = digits[1] + 48;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_digits)+01h,w
	addlw	030h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@data)
	line	186
	
l1384:	
;AndoTest.c: 186: USARTWriteChar(data);
	movf	(main@data),w
	fcall	_USARTWriteChar
	line	187
	
l1386:	
;AndoTest.c: 187: USARTWriteChar('C');
	movlw	(043h)
	fcall	_USARTWriteChar
	line	189
	
l1388:	
;AndoTest.c: 189: data = digits[2] + 48;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_digits)+02h,w
	addlw	030h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@data)
	line	190
	
l1390:	
;AndoTest.c: 190: USARTWriteChar(data);
	movf	(main@data),w
	fcall	_USARTWriteChar
	line	191
	
l1392:	
;AndoTest.c: 191: _delay(500000);
	opt asmopt_off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	138
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u697:
	decfsz	((??_main+0)+0),f
	goto	u697
	decfsz	((??_main+0)+0+1),f
	goto	u697
	decfsz	((??_main+0)+0+2),f
	goto	u697
	nop2
opt asmopt_on

	line	192
;AndoTest.c: 192: break;
	goto	l1258
	line	194
;AndoTest.c: 194: case FastDecrease:
	
l73:	
	line	195
	
l1394:	
;AndoTest.c: 195: digits[0] = digits[0] - 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_digits),w
	addlw	-1
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_digits)
	line	196
	
l1396:	
;AndoTest.c: 196: if(digits[0] < 0)
	btfss	(_digits),7
	goto	u591
	goto	u590
u591:
	goto	l1412
u590:
	line	198
	
l1398:	
;AndoTest.c: 197: {
;AndoTest.c: 198: digits[0] = 9;
	movlw	(09h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_digits)
	line	199
	
l1400:	
;AndoTest.c: 199: digits[1] = digits[1] - 1;
	movf	0+(_digits)+01h,w
	addlw	-1
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_digits)+01h
	line	200
	
l1402:	
;AndoTest.c: 200: if(digits[1] < 0)
	btfss	0+(_digits)+01h,7
	goto	u601
	goto	u600
u601:
	goto	l1412
u600:
	line	202
	
l1404:	
;AndoTest.c: 201: {
;AndoTest.c: 202: digits[1] = 9;
	movlw	(09h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_digits)+01h
	line	203
	
l1406:	
;AndoTest.c: 203: digits[2] = digits[2] - 1;
	movf	0+(_digits)+02h,w
	addlw	-1
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_digits)+02h
	line	204
	
l1408:	
;AndoTest.c: 204: if(digits[2] < 0)
	btfss	0+(_digits)+02h,7
	goto	u611
	goto	u610
u611:
	goto	l1412
u610:
	line	206
	
l1410:	
;AndoTest.c: 205: {
;AndoTest.c: 206: digits[2] = 0;
	clrf	0+(_digits)+02h
	line	207
;AndoTest.c: 207: digits[1] = 0;
	clrf	0+(_digits)+01h
	line	208
;AndoTest.c: 208: digits[0] = 0;
	clrf	(_digits)
	goto	l1412
	line	209
	
l76:	
	goto	l1412
	line	210
	
l75:	
	goto	l1412
	line	211
	
l74:	
	line	213
	
l1412:	
;AndoTest.c: 209: }
;AndoTest.c: 210: }
;AndoTest.c: 211: }
;AndoTest.c: 213: USARTWriteChar('A');
	movlw	(041h)
	fcall	_USARTWriteChar
	line	215
	
l1414:	
;AndoTest.c: 215: data = digits[0] + 48;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_digits),w
	addlw	030h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@data)
	line	216
	
l1416:	
;AndoTest.c: 216: USARTWriteChar(data);
	movf	(main@data),w
	fcall	_USARTWriteChar
	line	217
	
l1418:	
;AndoTest.c: 217: USARTWriteChar('B');
	movlw	(042h)
	fcall	_USARTWriteChar
	line	219
	
l1420:	
;AndoTest.c: 219: data = digits[1] + 48;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_digits)+01h,w
	addlw	030h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@data)
	line	220
	
l1422:	
;AndoTest.c: 220: USARTWriteChar(data);
	movf	(main@data),w
	fcall	_USARTWriteChar
	line	221
	
l1424:	
;AndoTest.c: 221: USARTWriteChar('C');
	movlw	(043h)
	fcall	_USARTWriteChar
	line	223
	
l1426:	
;AndoTest.c: 223: data = digits[2] + 48;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_digits)+02h,w
	addlw	030h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@data)
	line	224
	
l1428:	
;AndoTest.c: 224: USARTWriteChar(data);
	movf	(main@data),w
	fcall	_USARTWriteChar
	line	225
	
l1430:	
;AndoTest.c: 225: _delay(500000);
	opt asmopt_off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	138
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u707:
	decfsz	((??_main+0)+0),f
	goto	u707
	decfsz	((??_main+0)+0+1),f
	goto	u707
	decfsz	((??_main+0)+0+2),f
	goto	u707
	nop2
opt asmopt_on

	line	226
;AndoTest.c: 226: break;
	goto	l1258
	line	228
;AndoTest.c: 228: case Switch_Value:
	
l77:	
	line	229
	
l1432:	
;AndoTest.c: 229: if(foot == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_foot),w
	xorlw	01h
	skipz
	goto	u621
	goto	u620
u621:
	goto	l1436
u620:
	line	231
	
l1434:	
;AndoTest.c: 230: {
;AndoTest.c: 231: USARTWriteChar('R');
	movlw	(052h)
	fcall	_USARTWriteChar
	line	232
;AndoTest.c: 232: USARTWriteChar('1');
	movlw	(031h)
	fcall	_USARTWriteChar
	goto	l1436
	line	233
	
l78:	
	line	234
	
l1436:	
;AndoTest.c: 233: }
;AndoTest.c: 234: if(foot == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_foot),f
	skipz
	goto	u631
	goto	u630
u631:
	goto	l1440
u630:
	line	236
	
l1438:	
;AndoTest.c: 235: {
;AndoTest.c: 236: USARTWriteChar('F');
	movlw	(046h)
	fcall	_USARTWriteChar
	line	237
;AndoTest.c: 237: USARTWriteChar('1');
	movlw	(031h)
	fcall	_USARTWriteChar
	goto	l1440
	line	238
	
l79:	
	line	239
	
l1440:	
;AndoTest.c: 238: }
;AndoTest.c: 239: Command = Stop;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_Command)
	line	240
;AndoTest.c: 240: break;
	goto	l1258
	line	242
;AndoTest.c: 242: case Stop:
	
l80:	
	line	243
;AndoTest.c: 243: break;
	goto	l1258
	line	245
;AndoTest.c: 245: default:
	
l81:	
	line	246
;AndoTest.c: 246: break;
	goto	l1258
	line	247
	
l1442:	
;AndoTest.c: 247: }
	goto	l1258
	line	88
	
l59:	
	
l1444:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Command),w
	; Switch size 1, requested type "space"
; Number of cases is 6, Range of values is 0 to 5
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           12     6 (fixed)
; simple_byte           19    10 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is direct_byte

	movwf fsr
	movlw	6
	subwf	fsr,w
skipnc
goto l1258
movlw high(S1502)
movwf pclath
	movlw low(S1502)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
S1502:
	ljmp	l1276
	ljmp	l1356
	ljmp	l1258
	ljmp	l1316
	ljmp	l1394
	ljmp	l1432
psect	maintext

	line	247
	
l64:	
	goto	l1258
	line	248
	
l82:	
	line	71
	goto	l1258
	
l83:	
	line	249
	
l84:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_USARTWriteChar

;; *************** function _USARTWriteChar *****************
;; Defined at:
;;		line 285 in file "E:\Study Material\XC8 PROJECTS\Android\AndoTest.c"
;; Parameters:    Size  Location     Type
;;  ch              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch              1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         1       0       0
;;      Temps:          0       0       0
;;      Totals:         1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	285
global __ptext1
__ptext1:	;psect for function _USARTWriteChar
psect	text1
	file	"E:\Study Material\XC8 PROJECTS\Android\AndoTest.c"
	line	285
	global	__size_of_USARTWriteChar
	__size_of_USARTWriteChar	equ	__end_of_USARTWriteChar-_USARTWriteChar
	
_USARTWriteChar:	
;incstack = 0
	opt	stack 6
; Regs used in _USARTWriteChar: [wreg]
;USARTWriteChar@ch stored from wreg
	line	286
	movwf	(USARTWriteChar@ch)
	line	287
	
l884:	
;AndoTest.c: 287: while(!PIR1bits.TXIF);
	goto	l100
	
l101:	
	
l100:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(12),4	;volatile
	goto	u231
	goto	u230
u231:
	goto	l100
u230:
	goto	l886
	
l102:	
	line	288
	
l886:	
;AndoTest.c: 288: TXREG=ch;
	movf	(USARTWriteChar@ch),w
	movwf	(25)	;volatile
	line	289
	
l103:	
	return
	opt stack 0
GLOBAL	__end_of_USARTWriteChar
	__end_of_USARTWriteChar:
	signat	_USARTWriteChar,4216
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 251 in file "E:\Study Material\XC8 PROJECTS\Android\AndoTest.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
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
psect	text2,local,class=CODE,delta=2,merge=1
	line	251
global __ptext2
__ptext2:	;psect for function _ISR
psect	text2
	file	"E:\Study Material\XC8 PROJECTS\Android\AndoTest.c"
	line	251
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 6
; Regs used in _ISR: [wreg-fsr0h+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+1)
	movf	fsr0,w
	movwf	(??_ISR+2)
	movf	pclath,w
	movwf	(??_ISR+3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+4)
	ljmp	_ISR
psect	text2
	line	253
	
i1l1132:	
;AndoTest.c: 253: if (RCIE && RCIF) {
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1125/8)^080h,(1125)&7	;volatile
	goto	u43_21
	goto	u43_20
u43_21:
	goto	i1l97
u43_20:
	
i1l1134:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7	;volatile
	goto	u44_21
	goto	u44_20
u44_21:
	goto	i1l97
u44_20:
	line	254
	
i1l1136:	
;AndoTest.c: 254: ch = (char)RCREG;
	movf	(26),w	;volatile
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_ch)
	line	256
;AndoTest.c: 256: switch(ch)
	goto	i1l1152
	line	258
;AndoTest.c: 257: {
;AndoTest.c: 258: case '1':
	
i1l89:	
	line	259
	
i1l1138:	
;AndoTest.c: 259: Command = Increase;
	clrf	(_Command)
	line	260
;AndoTest.c: 260: break;
	goto	i1l97
	line	261
;AndoTest.c: 261: case '2':
	
i1l91:	
	line	262
;AndoTest.c: 262: Command = FastIncrease;
	clrf	(_Command)
	incf	(_Command),f
	line	263
;AndoTest.c: 263: break;
	goto	i1l97
	line	264
;AndoTest.c: 264: case '3':
	
i1l92:	
	line	265
	
i1l1140:	
;AndoTest.c: 265: Command = Stop;
	movlw	(02h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_Command)
	line	266
;AndoTest.c: 266: break;
	goto	i1l97
	line	267
;AndoTest.c: 267: case '4':
	
i1l93:	
	line	268
	
i1l1142:	
;AndoTest.c: 268: Command = Decrease;
	movlw	(03h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_Command)
	line	269
;AndoTest.c: 269: break;
	goto	i1l97
	line	270
;AndoTest.c: 270: case '5':
	
i1l94:	
	line	271
	
i1l1144:	
;AndoTest.c: 271: Command = FastDecrease;
	movlw	(04h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_Command)
	line	272
;AndoTest.c: 272: break;
	goto	i1l97
	line	273
;AndoTest.c: 273: case '6':
	
i1l95:	
	line	274
	
i1l1146:	
;AndoTest.c: 274: Command = Switch_Value;
	movlw	(05h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_Command)
	line	275
;AndoTest.c: 275: break;
	goto	i1l97
	line	276
;AndoTest.c: 276: default:
	
i1l96:	
	line	277
	
i1l1148:	
;AndoTest.c: 277: Command = Stop;
	movlw	(02h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_Command)
	line	278
;AndoTest.c: 278: break;
	goto	i1l97
	line	279
	
i1l1150:	
;AndoTest.c: 279: }
	goto	i1l97
	line	256
	
i1l88:	
	
i1l1152:	
	movf	(_ch),w
	; Switch size 1, requested type "space"
; Number of cases is 6, Range of values is 49 to 54
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           15     9 (fixed)
; simple_byte           19    10 (average)
; jumptable            263     9 (fixed)
;	Chosen strategy is direct_byte

	addlw	-49
	skipc
goto i1l1148
	movwf fsr
	movlw	6
	subwf	fsr,w
skipnc
goto i1l1148
movlw high(i1S1504)
movwf pclath
	movlw low(i1S1504)
	addwf fsr,w
	movwf pc
psect	swtext2,local,class=CONST,delta=2
global __pswtext2
__pswtext2:
i1S1504:
	ljmp	i1l1138
	ljmp	i1l91
	ljmp	i1l1140
	ljmp	i1l1142
	ljmp	i1l1144
	ljmp	i1l1146
psect	text2

	line	279
	
i1l90:	
	line	280
;AndoTest.c: 280: return;
	goto	i1l97
	line	281
	
i1l87:	
	line	282
	
i1l97:	
	movf	(??_ISR+4),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	btemp+1
	movf	(??_ISR+3),w
	movwf	pclath
	movf	(??_ISR+2),w
	movwf	fsr0
	swapf	(??_ISR+1)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,88
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

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
	global	_index_2
psect	idataCOMMON,class=CODE,space=0,delta=2,noexec
global __pidataCOMMON
__pidataCOMMON:
	file	"E:\Study Material\XC8 PROJECTS\Milk Display\Milk_display.c"
	line	13

;initializer for _index_2
	retlw	010h
	global	_PortB_Value
	global	_address_1
	global	_ch
	global	_count
	global	_index
	global	_index_1
	global	_data
	global	_address_2
	global	_flag
	global	_micro_secs
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
	global	_RA5
_RA5	set	0x2D
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
	file	"Milk_display.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_PortB_Value:
       ds      1

_address_1:
       ds      1

_ch:
       ds      1

_count:
       ds      1

_index:
       ds      1

_index_1:
       ds      1

psect	dataCOMMON,class=COMMON,space=1,noexec
global __pdataCOMMON
__pdataCOMMON:
	file	"E:\Study Material\XC8 PROJECTS\Milk Display\Milk_display.c"
	line	13
_index_2:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_data:
       ds      32

_address_2:
       ds      1

_flag:
       ds      1

_micro_secs:
       ds      1

	file	"Milk_display.as"
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop0		;do the next byte

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssCOMMON)
	movwf	fsr
	movlw	low((__pbssCOMMON)+06h)
	fcall	clear_ram0
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+023h)
	fcall	clear_ram0
	line	#
; Initialize objects allocated to COMMON
	global __pidataCOMMON
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
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
	ds	6
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_USARTWriteChar:	; 0 bytes @ 0x0
	global	USARTWriteChar@ch
USARTWriteChar@ch:	; 1 bytes @ 0x0
	ds	1
??_main:	; 0 bytes @ 0x1
	ds	3
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        1
;!    BSS         41
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      6      13
;!    BANK0            80      4      39
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
;!Critical Paths under _ISR in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_USARTWriteChar
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
;! (0) _main                                                 3     3      0      31
;!                                              1 BANK0      3     3      0
;!                     _USARTWriteChar
;! ---------------------------------------------------------------------------------
;! (1) _USARTWriteChar                                       1     1      0      31
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (2) _ISR                                                  6     6      0       0
;!                                              0 COMMON     6     6      0
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
;!BANK0               50      4      27       5       48.8%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      6       D       1       92.9%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      34       8        0.0%
;!ABS                  0      0      34       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA              40      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 22 in file "E:\Study Material\XC8 PROJECTS\Milk Display\Milk_display.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;;		_USARTWriteChar
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"E:\Study Material\XC8 PROJECTS\Milk Display\Milk_display.c"
	line	22
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"E:\Study Material\XC8 PROJECTS\Milk Display\Milk_display.c"
	line	22
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	24
	
l899:	
;Milk_display.c: 24: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	25
;Milk_display.c: 25: TRISB = 0x00;
	clrf	(134)^080h	;volatile
	line	26
	
l901:	
;Milk_display.c: 26: TRISC = 0xC0;
	movlw	(0C0h)
	movwf	(135)^080h	;volatile
	line	27
	
l903:	
;Milk_display.c: 27: ADCON1 = 0x06;
	movlw	(06h)
	movwf	(159)^080h	;volatile
	line	29
	
l905:	
;Milk_display.c: 29: PORTB = 0xFF;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	30
	
l907:	
;Milk_display.c: 30: PORTA = 0xFF;
	movlw	(0FFh)
	movwf	(5)	;volatile
	line	31
	
l909:	
;Milk_display.c: 31: PORTC = 0xFF;
	movlw	(0FFh)
	movwf	(7)	;volatile
	line	33
	
l911:	
;Milk_display.c: 33: for(count = 0; count <= 4; count++)
	clrf	(_count)
	movlw	(05h)
	subwf	(_count),w
	skipc
	goto	u401
	goto	u400
u401:
	goto	l67
u400:
	goto	l923
	
l913:	
	goto	l923
	line	34
	
l67:	
	line	35
;Milk_display.c: 34: {
;Milk_display.c: 35: RC4 = 0;
	bcf	(60/8),(60)&7	;volatile
	line	36
	
l915:	
;Milk_display.c: 36: _delay(1000000);
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

	line	37
	
l917:	
;Milk_display.c: 37: RC4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(60/8),(60)&7	;volatile
	line	38
;Milk_display.c: 38: _delay(1000000);
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

	line	33
	
l919:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_count),f
	
l921:	
	movlw	(05h)
	subwf	(_count),w
	skipc
	goto	u411
	goto	u410
u411:
	goto	l67
u410:
	goto	l923
	
l68:	
	line	42
	
l923:	
;Milk_display.c: 39: }
;Milk_display.c: 42: SPBRG=25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	45
	
l925:	
;Milk_display.c: 45: TXSTAbits.TX9=0;
	bcf	(152)^080h,6	;volatile
	line	46
	
l927:	
;Milk_display.c: 46: TXSTAbits.TXEN=1;
	bsf	(152)^080h,5	;volatile
	line	47
	
l929:	
;Milk_display.c: 47: TXSTAbits.SYNC=0;
	bcf	(152)^080h,4	;volatile
	line	48
	
l931:	
;Milk_display.c: 48: TXSTAbits.BRGH=1;
	bsf	(152)^080h,2	;volatile
	line	51
	
l933:	
;Milk_display.c: 51: RCSTAbits.SPEN=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(24),7	;volatile
	line	52
	
l935:	
;Milk_display.c: 52: RCSTAbits.RX9=0;
	bcf	(24),6	;volatile
	line	53
	
l937:	
;Milk_display.c: 53: RCSTAbits.CREN=1;
	bsf	(24),4	;volatile
	line	54
	
l939:	
;Milk_display.c: 54: RCSTAbits.ADDEN=0;
	bcf	(24),3	;volatile
	line	57
	
l941:	
;Milk_display.c: 57: RCIE=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1125/8)^080h,(1125)&7	;volatile
	line	58
	
l943:	
;Milk_display.c: 58: PEIE=1;
	bsf	(94/8),(94)&7	;volatile
	line	61
	
l945:	
;Milk_display.c: 61: (GIE = 1);
	bsf	(95/8),(95)&7	;volatile
	line	63
;Milk_display.c: 63: while(1)
	
l69:	
	line	65
;Milk_display.c: 64: {
;Milk_display.c: 65: PORTB = 0xFF;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(6)	;volatile
	line	66
;Milk_display.c: 66: _delay(10);
	opt asmopt_off
movlw	3
movwf	(??_main+0)+0,f
u507:
decfsz	(??_main+0)+0,f
	goto	u507
opt asmopt_on

	line	68
	
l947:	
;Milk_display.c: 68: if(data[index_1] != 'B')
	movf	(_index_1),w
	addlw	_data&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	xorlw	042h
	skipnz
	goto	u421
	goto	u420
u421:
	goto	l961
u420:
	line	70
	
l949:	
;Milk_display.c: 69: {
;Milk_display.c: 70: PortB_Value = 0x00;
	clrf	(_PortB_Value)
	line	71
	
l951:	
;Milk_display.c: 71: PortB_Value = address_1;
	movf	(_address_1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_PortB_Value)
	line	72
	
l953:	
;Milk_display.c: 72: PortB_Value = PortB_Value << 4;
	movf	(_PortB_Value),w
	movwf	(??_main+0)+0
	movlw	(04h)-1
u435:
	clrc
	rlf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u435
	clrc
	rlf	(??_main+0)+0,w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(_PortB_Value)
	line	73
	
l955:	
;Milk_display.c: 73: PortB_Value = PortB_Value & 0xF0;
	movf	(_PortB_Value),w
	andlw	0F0h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_PortB_Value)
	line	74
	
l957:	
;Milk_display.c: 74: PortB_Value = PortB_Value | data[index_1];
	movf	(_index_1),w
	addlw	_data&0ffh
	movwf	fsr0
	movf	indf,w
	iorwf	(_PortB_Value),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_PortB_Value)
	line	75
	
l959:	
;Milk_display.c: 75: PORTB = PortB_Value;
	movf	(_PortB_Value),w
	movwf	(6)	;volatile
	goto	l961
	line	76
	
l70:	
	line	78
	
l961:	
;Milk_display.c: 76: }
;Milk_display.c: 78: index_1++;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_index_1),f
	line	79
	
l963:	
;Milk_display.c: 79: address_1++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_address_1),f
	line	80
	
l965:	
;Milk_display.c: 80: if(index_1 == 16)
	movf	(_index_1),w
	xorlw	010h
	skipz
	goto	u441
	goto	u440
u441:
	goto	l969
u440:
	line	82
	
l967:	
;Milk_display.c: 81: {
;Milk_display.c: 82: index_1 = 0;
	clrf	(_index_1)
	line	83
;Milk_display.c: 83: address_1 = 0;
	clrf	(_address_1)
	goto	l969
	line	84
	
l71:	
	line	86
	
l969:	
;Milk_display.c: 84: }
;Milk_display.c: 86: PORTA = 0xFF;
	movlw	(0FFh)
	movwf	(5)	;volatile
	line	87
	
l971:	
;Milk_display.c: 87: PORTC = 0xFF;
	movlw	(0FFh)
	movwf	(7)	;volatile
	line	88
	
l973:	
;Milk_display.c: 88: _delay(10);
	opt asmopt_off
movlw	3
movwf	(??_main+0)+0,f
u517:
decfsz	(??_main+0)+0,f
	goto	u517
opt asmopt_on

	line	90
	
l975:	
;Milk_display.c: 90: if(data[index_2] != 'B')
	movf	(_index_2),w
	addlw	_data&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	xorlw	042h
	skipnz
	goto	u451
	goto	u450
u451:
	goto	l983
u450:
	line	92
	
l977:	
;Milk_display.c: 91: {
;Milk_display.c: 92: PORTA = address_2;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_address_2),w
	movwf	(5)	;volatile
	line	93
	
l979:	
;Milk_display.c: 93: PORTC = PORTC & 0xF0;
	movf	(7),w	;volatile
	andlw	0F0h
	movwf	(7)	;volatile
	line	94
	
l981:	
;Milk_display.c: 94: PORTC = PORTC | data[index_2];
	movf	(_index_2),w
	addlw	_data&0ffh
	movwf	fsr0
	movf	indf,w
	iorwf	(7),w	;volatile
	movwf	(7)	;volatile
	goto	l983
	line	95
	
l72:	
	line	97
	
l983:	
;Milk_display.c: 95: }
;Milk_display.c: 97: index_2++;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_index_2),f
	line	98
	
l985:	
;Milk_display.c: 98: address_2++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_address_2),f
	line	99
	
l987:	
;Milk_display.c: 99: if(index_2 == 32)
	movf	(_index_2),w
	xorlw	020h
	skipz
	goto	u461
	goto	u460
u461:
	goto	l993
u460:
	line	101
	
l989:	
;Milk_display.c: 100: {
;Milk_display.c: 101: index_2 = 16;
	movlw	(010h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_index_2)
	line	102
	
l991:	
;Milk_display.c: 102: address_2 = 0;
	clrf	(_address_2)
	goto	l993
	line	103
	
l73:	
	line	105
	
l993:	
;Milk_display.c: 103: }
;Milk_display.c: 105: RA5 = 1;
	bsf	(45/8),(45)&7	;volatile
	line	106
	
l995:	
;Milk_display.c: 106: _delay(10);
	opt asmopt_off
movlw	3
movwf	(??_main+0)+0,f
u527:
decfsz	(??_main+0)+0,f
	goto	u527
opt asmopt_on

	line	107
	
l997:	
;Milk_display.c: 107: RA5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(45/8),(45)&7	;volatile
	line	109
	
l999:	
;Milk_display.c: 109: _delay(1500);
	opt asmopt_off
movlw	214
movwf	(??_main+0)+0,f
u537:
	nop2
	nop2
decfsz	(??_main+0)+0,f
	goto	u537
	nop
opt asmopt_on

	line	110
	
l1001:	
;Milk_display.c: 110: if(flag == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_flag),w
	xorlw	01h
	skipz
	goto	u471
	goto	u470
u471:
	goto	l69
u470:
	line	112
	
l1003:	
;Milk_display.c: 111: {
;Milk_display.c: 112: USARTWriteChar(ch);
	movf	(_ch),w
	fcall	_USARTWriteChar
	line	113
	
l1005:	
;Milk_display.c: 113: flag = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_flag)
	goto	l69
	line	114
	
l74:	
	goto	l69
	line	115
	
l75:	
	line	63
	goto	l69
	
l76:	
	line	116
	
l77:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_USARTWriteChar

;; *************** function _USARTWriteChar *****************
;; Defined at:
;;		line 162 in file "E:\Study Material\XC8 PROJECTS\Milk Display\Milk_display.c"
;; Parameters:    Size  Location     Type
;;  ch              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch              1    0[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0
;;      Temps:          0       0       0
;;      Totals:         0       1       0
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
	line	162
global __ptext1
__ptext1:	;psect for function _USARTWriteChar
psect	text1
	file	"E:\Study Material\XC8 PROJECTS\Milk Display\Milk_display.c"
	line	162
	global	__size_of_USARTWriteChar
	__size_of_USARTWriteChar	equ	__end_of_USARTWriteChar-_USARTWriteChar
	
_USARTWriteChar:	
;incstack = 0
	opt	stack 6
; Regs used in _USARTWriteChar: [wreg]
;USARTWriteChar@ch stored from wreg
	line	163
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(USARTWriteChar@ch)
	line	164
	
l895:	
;Milk_display.c: 164: while(!PIR1bits.TXIF);
	goto	l91
	
l92:	
	
l91:	
	btfss	(12),4	;volatile
	goto	u391
	goto	u390
u391:
	goto	l91
u390:
	goto	l897
	
l93:	
	line	165
	
l897:	
;Milk_display.c: 165: TXREG=ch;
	movf	(USARTWriteChar@ch),w
	movwf	(25)	;volatile
	line	166
	
l94:	
	return
	opt stack 0
GLOBAL	__end_of_USARTWriteChar
	__end_of_USARTWriteChar:
	signat	_USARTWriteChar,4216
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 118 in file "E:\Study Material\XC8 PROJECTS\Milk Display\Milk_display.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          6       0       0
;;      Totals:         6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	118
global __ptext2
__ptext2:	;psect for function _ISR
psect	text2
	file	"E:\Study Material\XC8 PROJECTS\Milk Display\Milk_display.c"
	line	118
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 6
; Regs used in _ISR: [wreg-fsr0h+status,2+status,0+btemp+1]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+2)
	movf	fsr0,w
	movwf	(??_ISR+3)
	movf	pclath,w
	movwf	(??_ISR+4)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+5)
	ljmp	_ISR
psect	text2
	line	120
	
i1l835:	
;Milk_display.c: 120: if (RCIE && RCIF) {
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1125/8)^080h,(1125)&7	;volatile
	goto	u29_21
	goto	u29_20
u29_21:
	goto	i1l83
u29_20:
	
i1l837:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7	;volatile
	goto	u30_21
	goto	u30_20
u30_21:
	goto	i1l83
u30_20:
	line	121
	
i1l839:	
;Milk_display.c: 121: ch = (char)RCREG;
	movf	(26),w	;volatile
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_ch)
	line	122
;Milk_display.c: 122: if((ch-48) >= 0x00 && (ch-48) <= 0x09)
	movf	(_ch),w
	addlw	low(-48)
	movwf	(??_ISR+0)+0
	movlw	high(-48)
	skipnc
	movlw	(high(-48)+1)&0ffh
	movwf	((??_ISR+0)+0)+1
	btfsc	1+(??_ISR+0)+0,7
	goto	u31_21
	goto	u31_20
u31_21:
	goto	i1l855
u31_20:
	
i1l841:	
	movf	(_ch),w
	addlw	low(-48)
	movwf	(??_ISR+0)+0
	movlw	high(-48)
	skipnc
	movlw	(high(-48)+1)&0ffh
	movwf	((??_ISR+0)+0)+1
	movf	1+(??_ISR+0)+0,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u32_25
	movlw	low(0Ah)
	subwf	0+(??_ISR+0)+0,w
u32_25:

	skipnc
	goto	u32_21
	goto	u32_20
u32_21:
	goto	i1l855
u32_20:
	line	124
	
i1l843:	
;Milk_display.c: 123: {
;Milk_display.c: 124: data[index] = ch - 48;
	movf	(_ch),w
	addlw	0D0h
	movwf	(??_ISR+0)+0
	movf	(_index),w
	addlw	_data&0ffh
	movwf	fsr0
	movf	(??_ISR+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	125
	
i1l845:	
;Milk_display.c: 125: flag = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_flag)
	incf	(_flag),f
	line	126
	
i1l847:	
;Milk_display.c: 126: index++;
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	addwf	(_index),f
	line	127
	
i1l849:	
;Milk_display.c: 127: if(index == 32)
	movf	(_index),w
	xorlw	020h
	skipz
	goto	u33_21
	goto	u33_20
u33_21:
	goto	i1l83
u33_20:
	line	128
	
i1l851:	
;Milk_display.c: 128: index = 0;
	clrf	(_index)
	goto	i1l83
	
i1l82:	
	goto	i1l83
	line	129
	
i1l853:	
;Milk_display.c: 129: return;
	goto	i1l83
	line	130
	
i1l81:	
	line	132
	
i1l855:	
;Milk_display.c: 130: }
;Milk_display.c: 132: if(ch == 'B')
	movf	(_ch),w
	xorlw	042h
	skipz
	goto	u34_21
	goto	u34_20
u34_21:
	goto	i1l869
u34_20:
	line	134
	
i1l857:	
;Milk_display.c: 133: {
;Milk_display.c: 134: data[index] = 0x0F;
	movlw	(0Fh)
	movwf	(??_ISR+0)+0
	movf	(_index),w
	addlw	_data&0ffh
	movwf	fsr0
	movf	(??_ISR+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	135
	
i1l859:	
;Milk_display.c: 135: flag = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_flag)
	incf	(_flag),f
	line	137
	
i1l861:	
;Milk_display.c: 137: index++;
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	addwf	(_index),f
	line	138
	
i1l863:	
;Milk_display.c: 138: if(index == 32)
	movf	(_index),w
	xorlw	020h
	skipz
	goto	u35_21
	goto	u35_20
u35_21:
	goto	i1l83
u35_20:
	line	139
	
i1l865:	
;Milk_display.c: 139: index = 0;
	clrf	(_index)
	goto	i1l83
	
i1l85:	
	goto	i1l83
	line	140
	
i1l867:	
;Milk_display.c: 140: return;
	goto	i1l83
	line	141
	
i1l84:	
	line	143
	
i1l869:	
;Milk_display.c: 141: }
;Milk_display.c: 143: if(ch == 'R')
	movf	(_ch),w
	xorlw	052h
	skipz
	goto	u36_21
	goto	u36_20
u36_21:
	goto	i1l83
u36_20:
	line	145
	
i1l871:	
;Milk_display.c: 144: {
;Milk_display.c: 145: for(index = 0; index < 32; index++)
	clrf	(_index)
	
i1l873:	
	movlw	(020h)
	subwf	(_index),w
	skipc
	goto	u37_21
	goto	u37_20
u37_21:
	goto	i1l877
u37_20:
	goto	i1l883
	
i1l875:	
	goto	i1l883
	line	146
	
i1l87:	
	line	147
	
i1l877:	
;Milk_display.c: 146: {
;Milk_display.c: 147: data[index] = 0x00;
	movf	(_index),w
	addlw	_data&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	145
	
i1l879:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	addwf	(_index),f
	
i1l881:	
	movlw	(020h)
	subwf	(_index),w
	skipc
	goto	u38_21
	goto	u38_20
u38_21:
	goto	i1l877
u38_20:
	goto	i1l883
	
i1l88:	
	line	149
	
i1l883:	
;Milk_display.c: 148: }
;Milk_display.c: 149: index = 0;
	clrf	(_index)
	line	150
;Milk_display.c: 150: index_1 = 0;
	clrf	(_index_1)
	line	151
	
i1l885:	
;Milk_display.c: 151: index_2 = 16;
	movlw	(010h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_index_2)
	line	152
	
i1l887:	
;Milk_display.c: 152: address_1 = 0;
	clrf	(_address_1)
	line	153
	
i1l889:	
;Milk_display.c: 153: address_2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_address_2)
	line	154
	
i1l891:	
;Milk_display.c: 154: flag = 1;
	clrf	(_flag)
	incf	(_flag),f
	goto	i1l83
	line	155
	
i1l893:	
;Milk_display.c: 155: return;
	goto	i1l83
	line	156
	
i1l86:	
	line	157
;Milk_display.c: 156: }
;Milk_display.c: 157: return;
	goto	i1l83
	line	158
	
i1l80:	
	line	159
	
i1l83:	
	movf	(??_ISR+5),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(??_ISR+4),w
	movwf	pclath
	movf	(??_ISR+3),w
	movwf	fsr0
	swapf	(??_ISR+2)^0FFFFFF80h,w
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

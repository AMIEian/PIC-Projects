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
	FNCALL	_main,_USARTDataAvailable
	FNCALL	_main,_USARTInit
	FNCALL	_main,_USARTReadData
	FNCALL	_main,_USARTWriteChar
	FNROOT	_main
	FNCALL	_ISR,_USARTHandleRxInt
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_UQEnd
	global	_UQFront
	global	_URBuff
	global	USARTWriteInt@F769
	global	_PIR1bits
_PIR1bits	set	0xC
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
	global	_RB0
_RB0	set	0x30
	global	_RB1
_RB1	set	0x31
	global	_RCIF
_RCIF	set	0x65
	global	_SPBRG
_SPBRG	set	0x99
	global	_TRISB
_TRISB	set	0x86
	global	_TXSTAbits
_TXSTAbits	set	0x98
	global	_RCIE
_RCIE	set	0x465
psect	text0,local,class=CODE,delta=2,merge=1
; #config settings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f870.h"
	line	1794
global __ptext0
__ptext0:	;psect for function _USARTHandleRxInt
	file	"Serial_Test_Txr.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_UQEnd:
       ds      1

_UQFront:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_URBuff:
       ds      64

USARTWriteInt@F769:
       ds      5

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
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+045h)
	fcall	clear_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_USARTHandleRxInt:	; 0 bytes @ 0x0
??_USARTHandleRxInt:	; 0 bytes @ 0x0
?_USARTWriteChar:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_USARTDataAvailable:	; 1 bytes @ 0x0
?_USARTReadData:	; 1 bytes @ 0x0
	ds	4
	global	USARTHandleRxInt@data
USARTHandleRxInt@data:	; 1 bytes @ 0x4
	ds	1
??_ISR:	; 0 bytes @ 0x5
	ds	4
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?_USARTInit:	; 0 bytes @ 0x0
??_USARTWriteChar:	; 0 bytes @ 0x0
??_USARTDataAvailable:	; 0 bytes @ 0x0
??_USARTReadData:	; 0 bytes @ 0x0
	global	USARTWriteChar@ch
USARTWriteChar@ch:	; 1 bytes @ 0x0
	global	USARTInit@baud_rate
USARTInit@baud_rate:	; 2 bytes @ 0x0
	ds	1
	global	USARTReadData@data
USARTReadData@data:	; 1 bytes @ 0x1
	ds	1
??_USARTInit:	; 0 bytes @ 0x2
	ds	1
??_main:	; 0 bytes @ 0x3
	ds	3
	global	main@count
main@count:	; 1 bytes @ 0x6
	ds	1
	global	main@data
main@data:	; 1 bytes @ 0x7
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         71
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      9      11
;!    BANK0            80      8      77
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
;!    _ISR->_USARTHandleRxInt
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_USARTInit
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
;! (0) _main                                                 5     5      0     212
;!                                              3 BANK0      5     5      0
;!                 _USARTDataAvailable
;!                          _USARTInit
;!                      _USARTReadData
;!                     _USARTWriteChar
;! ---------------------------------------------------------------------------------
;! (1) _USARTWriteChar                                       1     1      0      22
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _USARTReadData                                        2     2      0      23
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _USARTInit                                            3     1      2      75
;!                                              0 BANK0      3     1      2
;! ---------------------------------------------------------------------------------
;! (1) _USARTDataAvailable                                   1     1      0       0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (2) _ISR                                                  4     4      0      15
;!                                              5 COMMON     4     4      0
;!                   _USARTHandleRxInt
;! ---------------------------------------------------------------------------------
;! (3) _USARTHandleRxInt                                     5     5      0      15
;!                                              0 COMMON     5     5      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _USARTDataAvailable
;!   _USARTInit
;!   _USARTReadData
;!   _USARTWriteChar
;!
;! _ISR (ROOT)
;!   _USARTHandleRxInt
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA              40      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      9       B       1       78.6%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0      58       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      8      4D       5       96.3%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            20      0       0       6        0.0%
;!BANK1               20      0       0       7        0.0%
;!DATA                 0      0      58       8        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 10 in file "E:\Study Material\XC8 PROJECTS\Serial Test Txr\SerTestTxr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data            1    7[BANK0 ] unsigned char 
;;  count           1    6[BANK0 ] unsigned char 
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
;;      Locals:         0       2       0
;;      Temps:          0       3       0
;;      Totals:         0       5       0
;;Total ram usage:        5 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_USARTDataAvailable
;;		_USARTInit
;;		_USARTReadData
;;		_USARTWriteChar
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"E:\Study Material\XC8 PROJECTS\Serial Test Txr\SerTestTxr.c"
	line	10
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"E:\Study Material\XC8 PROJECTS\Serial Test Txr\SerTestTxr.c"
	line	10
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	12
	
l1023:	
;SerTestTxr.c: 12: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	14
;SerTestTxr.c: 13: char count;
;SerTestTxr.c: 14: for(count = 0; count < 10; count++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	
l1025:	
	movlw	(0Ah)
	subwf	(main@count),w
	skipc
	goto	u441
	goto	u440
u441:
	goto	l41
u440:
	goto	l1037
	
l1027:	
	goto	l1037
	line	15
	
l41:	
	line	16
;SerTestTxr.c: 15: {
;SerTestTxr.c: 16: RB1 = 1;
	bsf	(49/8),(49)&7	;volatile
	line	17
	
l1029:	
;SerTestTxr.c: 17: _delay(1000000);
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

	line	18
	
l1031:	
;SerTestTxr.c: 18: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7	;volatile
	line	19
;SerTestTxr.c: 19: _delay(1000000);
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

	line	14
	
l1033:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@count),f
	
l1035:	
	movlw	(0Ah)
	subwf	(main@count),w
	skipc
	goto	u451
	goto	u450
u451:
	goto	l41
u450:
	goto	l1037
	
l42:	
	line	23
	
l1037:	
;SerTestTxr.c: 20: }
;SerTestTxr.c: 23: USARTInit(9600);
	movlw	low(02580h)
	movwf	(USARTInit@baud_rate)
	movlw	high(02580h)
	movwf	((USARTInit@baud_rate))+1
	fcall	_USARTInit
	goto	l44
	line	25
;SerTestTxr.c: 25: while(1)
	
l43:	
	line	28
;SerTestTxr.c: 26: {
;SerTestTxr.c: 28: while(RB0 == 0)
	goto	l44
	
l45:	
	line	30
;SerTestTxr.c: 29: {
	
l44:	
	line	28
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(48/8),(48)&7	;volatile
	goto	u461
	goto	u460
u461:
	goto	l44
u460:
	goto	l1039
	
l46:	
	line	33
	
l1039:	
;SerTestTxr.c: 30: }
;SerTestTxr.c: 33: USARTWriteChar('R');
	movlw	(052h)
	fcall	_USARTWriteChar
	line	36
;SerTestTxr.c: 36: while(USARTDataAvailable() == 0)
	goto	l1041
	
l48:	
	goto	l1041
	line	38
;SerTestTxr.c: 37: {
	
l47:	
	line	36
	
l1041:	
	fcall	_USARTDataAvailable
	xorlw	0
	skipnz
	goto	u471
	goto	u470
u471:
	goto	l1041
u470:
	goto	l1043
	
l49:	
	line	42
	
l1043:	
;SerTestTxr.c: 38: }
;SerTestTxr.c: 42: char data=USARTReadData();
	fcall	_USARTReadData
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@data)
	line	44
	
l1045:	
;SerTestTxr.c: 44: if(data == 'R')
	movf	(main@data),w
	xorlw	052h
	skipz
	goto	u481
	goto	u480
u481:
	goto	l51
u480:
	line	45
	
l1047:	
;SerTestTxr.c: 45: RB1 = 1;
	bsf	(49/8),(49)&7	;volatile
	goto	l51
	
l50:	
	line	48
;SerTestTxr.c: 48: while(RB0 == 1)
	goto	l51
	
l52:	
	line	50
;SerTestTxr.c: 49: {
	
l51:	
	line	48
	btfsc	(48/8),(48)&7	;volatile
	goto	u491
	goto	u490
u491:
	goto	l51
u490:
	goto	l1049
	
l53:	
	line	53
	
l1049:	
;SerTestTxr.c: 50: }
;SerTestTxr.c: 53: USARTWriteChar('B');
	movlw	(042h)
	fcall	_USARTWriteChar
	line	56
;SerTestTxr.c: 56: while(USARTDataAvailable() == 0)
	goto	l1051
	
l55:	
	goto	l1051
	line	58
;SerTestTxr.c: 57: {
	
l54:	
	line	56
	
l1051:	
	fcall	_USARTDataAvailable
	xorlw	0
	skipnz
	goto	u501
	goto	u500
u501:
	goto	l1051
u500:
	goto	l1053
	
l56:	
	line	62
	
l1053:	
;SerTestTxr.c: 58: }
;SerTestTxr.c: 62: char data=USARTReadData();
	fcall	_USARTReadData
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@data)
	line	64
	
l1055:	
;SerTestTxr.c: 64: if(data == 'B')
	movf	(main@data),w
	xorlw	042h
	skipz
	goto	u511
	goto	u510
u511:
	goto	l44
u510:
	line	65
	
l1057:	
;SerTestTxr.c: 65: RB1 = 0;
	bcf	(49/8),(49)&7	;volatile
	goto	l44
	
l57:	
	goto	l44
	line	68
	
l58:	
	line	25
	goto	l44
	
l59:	
	line	69
	
l60:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_USARTWriteChar

;; *************** function _USARTWriteChar *****************
;; Defined at:
;;		line 71 in file "E:\Study Material\XC8 PROJECTS\Serial Test Txr\usart_pic16.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_USARTWriteString
;;		_USARTWriteLine
;;		_USARTWriteInt
;;		_USARTGotoNewLine
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\Serial Test Txr\usart_pic16.c"
	line	71
global __ptext1
__ptext1:	;psect for function _USARTWriteChar
psect	text1
	file	"E:\Study Material\XC8 PROJECTS\Serial Test Txr\usart_pic16.c"
	line	71
	global	__size_of_USARTWriteChar
	__size_of_USARTWriteChar	equ	__end_of_USARTWriteChar-_USARTWriteChar
	
_USARTWriteChar:	
;incstack = 0
	opt	stack 5
; Regs used in _USARTWriteChar: [wreg]
;USARTWriteChar@ch stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(USARTWriteChar@ch)
	line	73
	
l963:	
;usart_pic16.c: 73: while(!PIR1bits.TXIF);
	goto	l96
	
l97:	
	
l96:	
	btfss	(12),4	;volatile
	goto	u361
	goto	u360
u361:
	goto	l96
u360:
	goto	l965
	
l98:	
	line	75
	
l965:	
;usart_pic16.c: 75: TXREG=ch;
	movf	(USARTWriteChar@ch),w
	movwf	(25)	;volatile
	line	76
	
l99:	
	return
	opt stack 0
GLOBAL	__end_of_USARTWriteChar
	__end_of_USARTWriteChar:
	signat	_USARTWriteChar,4216
	global	_USARTReadData

;; *************** function _USARTReadData *****************
;; Defined at:
;;		line 119 in file "E:\Study Material\XC8 PROJECTS\Serial Test Txr\usart_pic16.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data            1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       1       0
;;      Temps:          0       1       0
;;      Totals:         0       2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_USARTReadBuffer
;;		_USARTFlushBuffer
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	119
global __ptext2
__ptext2:	;psect for function _USARTReadData
psect	text2
	file	"E:\Study Material\XC8 PROJECTS\Serial Test Txr\usart_pic16.c"
	line	119
	global	__size_of_USARTReadData
	__size_of_USARTReadData	equ	__end_of_USARTReadData-_USARTReadData
	
_USARTReadData:	
;incstack = 0
	opt	stack 5
; Regs used in _USARTReadData: [wreg-fsr0h+status,2+status,0]
	line	124
	
l993:	
;usart_pic16.c: 121: char data;
;usart_pic16.c: 124: if(UQFront==-1)
	movf	(_UQFront),w	;volatile
	xorlw	-1
	skipz
	goto	u401
	goto	u400
u401:
	goto	l999
u400:
	line	125
	
l995:	
;usart_pic16.c: 125: return 0;
	movlw	(0)
	goto	l124
	
l997:	
	goto	l124
	
l123:	
	line	127
	
l999:	
;usart_pic16.c: 127: data=URBuff[UQFront];
	movf	(_UQFront),w
	addlw	_URBuff&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_USARTReadData+0)+0
	movf	(??_USARTReadData+0)+0,w
	movwf	(USARTReadData@data)
	line	129
	
l1001:	
;usart_pic16.c: 129: if(UQFront==UQEnd)
	movf	(_UQFront),w	;volatile
	xorwf	(_UQEnd),w	;volatile
	skipz
	goto	u411
	goto	u410
u411:
	goto	l1005
u410:
	line	133
	
l1003:	
;usart_pic16.c: 130: {
;usart_pic16.c: 133: UQFront=UQEnd=-1;
	movlw	(-1)
	movwf	(_UQEnd)	;volatile
	movwf	(??_USARTReadData+0)+0
	movf	(??_USARTReadData+0)+0,w
	movwf	(_UQFront)	;volatile
	line	134
;usart_pic16.c: 134: }
	goto	l1011
	line	135
	
l125:	
	line	137
	
l1005:	
;usart_pic16.c: 135: else
;usart_pic16.c: 136: {
;usart_pic16.c: 137: UQFront++;
	movlw	(01h)
	movwf	(??_USARTReadData+0)+0
	movf	(??_USARTReadData+0)+0,w
	addwf	(_UQFront),f	;volatile
	line	139
	
l1007:	
;usart_pic16.c: 139: if(UQFront==64)
	movf	(_UQFront),w	;volatile
	xorlw	040h
	skipz
	goto	u421
	goto	u420
u421:
	goto	l1011
u420:
	line	140
	
l1009:	
;usart_pic16.c: 140: UQFront=0;
	clrf	(_UQFront)	;volatile
	goto	l1011
	
l127:	
	goto	l1011
	line	141
	
l126:	
	line	143
	
l1011:	
;usart_pic16.c: 141: }
;usart_pic16.c: 143: return data;
	movf	(USARTReadData@data),w
	goto	l124
	
l1013:	
	line	144
	
l124:	
	return
	opt stack 0
GLOBAL	__end_of_USARTReadData
	__end_of_USARTReadData:
	signat	_USARTReadData,89
	global	_USARTInit

;; *************** function _USARTInit *****************
;; Defined at:
;;		line 31 in file "E:\Study Material\XC8 PROJECTS\Serial Test Txr\usart_pic16.c"
;; Parameters:    Size  Location     Type
;;  baud_rate       2    0[BANK0 ] unsigned int 
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
;;      Params:         0       2       0
;;      Locals:         0       0       0
;;      Temps:          0       1       0
;;      Totals:         0       3       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	31
global __ptext3
__ptext3:	;psect for function _USARTInit
psect	text3
	file	"E:\Study Material\XC8 PROJECTS\Serial Test Txr\usart_pic16.c"
	line	31
	global	__size_of_USARTInit
	__size_of_USARTInit	equ	__end_of_USARTInit-_USARTInit
	
_USARTInit:	
;incstack = 0
	opt	stack 5
; Regs used in _USARTInit: [wreg-fsr0h+status,2+status,0]
	line	34
	
l933:	
;usart_pic16.c: 34: UQFront=UQEnd=-1;
	movlw	(-1)
	movwf	(_UQEnd)	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_USARTInit+0)+0
	movf	(??_USARTInit+0)+0,w
	movwf	(_UQFront)	;volatile
	line	37
;usart_pic16.c: 37: switch(baud_rate)
	goto	l945
	line	39
;usart_pic16.c: 38: {
;usart_pic16.c: 39: case 9600:
	
l88:	
	line	40
	
l935:	
;usart_pic16.c: 40: SPBRG=25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	41
;usart_pic16.c: 41: break;
	goto	l89
	line	42
;usart_pic16.c: 42: case 19200:
	
l90:	
	line	43
	
l937:	
;usart_pic16.c: 43: SPBRG=12;
	movlw	(0Ch)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	44
;usart_pic16.c: 44: break;
	goto	l89
	line	45
;usart_pic16.c: 45: case 28800:
	
l91:	
	line	46
	
l939:	
;usart_pic16.c: 46: SPBRG=8;
	movlw	(08h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	47
;usart_pic16.c: 47: break;
	goto	l89
	line	48
;usart_pic16.c: 48: case 33600:
	
l92:	
	line	49
	
l941:	
;usart_pic16.c: 49: SPBRG=6;
	movlw	(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	50
;usart_pic16.c: 50: break;
	goto	l89
	line	51
	
l943:	
;usart_pic16.c: 51: }
	goto	l89
	line	37
	
l87:	
	
l945:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 4 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 37 to 131
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte          104     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	bcf	status, 5	;RP0=0, select bank0
	movf (USARTInit@baud_rate+1),w
	opt asmopt_off
	xorlw	37^0	; case 37
	skipnz
	goto	l1291
	xorlw	75^37	; case 75
	skipnz
	goto	l1293
	xorlw	112^75	; case 112
	skipnz
	goto	l1295
	xorlw	131^112	; case 131
	skipnz
	goto	l1297
	goto	l89
	opt asmopt_on
	
l1291:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 128 to 128
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           10     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf (USARTInit@baud_rate),w
	opt asmopt_off
	xorlw	128^0	; case 128
	skipnz
	goto	l935
	goto	l89
	opt asmopt_on
	
l1293:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte            7     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (USARTInit@baud_rate),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l937
	goto	l89
	opt asmopt_on
	
l1295:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 128 to 128
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           10     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf (USARTInit@baud_rate),w
	opt asmopt_off
	xorlw	128^0	; case 128
	skipnz
	goto	l939
	goto	l89
	opt asmopt_on
	
l1297:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 64 to 64
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           10     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf (USARTInit@baud_rate),w
	opt asmopt_off
	xorlw	64^0	; case 64
	skipnz
	goto	l941
	goto	l89
	opt asmopt_on

	line	51
	
l89:	
	line	53
;usart_pic16.c: 53: TXSTAbits.TX9=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(152)^080h,6	;volatile
	line	54
;usart_pic16.c: 54: TXSTAbits.TXEN=1;
	bsf	(152)^080h,5	;volatile
	line	55
;usart_pic16.c: 55: TXSTAbits.SYNC=0;
	bcf	(152)^080h,4	;volatile
	line	56
;usart_pic16.c: 56: TXSTAbits.BRGH=1;
	bsf	(152)^080h,2	;volatile
	line	59
;usart_pic16.c: 59: RCSTAbits.SPEN=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(24),7	;volatile
	line	60
;usart_pic16.c: 60: RCSTAbits.RX9=0;
	bcf	(24),6	;volatile
	line	61
;usart_pic16.c: 61: RCSTAbits.CREN=1;
	bsf	(24),4	;volatile
	line	62
;usart_pic16.c: 62: RCSTAbits.ADDEN=0;
	bcf	(24),3	;volatile
	line	65
;usart_pic16.c: 65: RCIE=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1125/8)^080h,(1125)&7	;volatile
	line	66
;usart_pic16.c: 66: PEIE=1;
	bsf	(94/8),(94)&7	;volatile
	line	68
;usart_pic16.c: 68: (GIE = 1);
	bsf	(95/8),(95)&7	;volatile
	line	69
	
l93:	
	return
	opt stack 0
GLOBAL	__end_of_USARTInit
	__end_of_USARTInit:
	signat	_USARTInit,4216
	global	_USARTDataAvailable

;; *************** function _USARTDataAvailable *****************
;; Defined at:
;;		line 146 in file "E:\Study Material\XC8 PROJECTS\Serial Test Txr\usart_pic16.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       1       0
;;      Totals:         0       1       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_USARTFlushBuffer
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	146
global __ptext4
__ptext4:	;psect for function _USARTDataAvailable
psect	text4
	file	"E:\Study Material\XC8 PROJECTS\Serial Test Txr\usart_pic16.c"
	line	146
	global	__size_of_USARTDataAvailable
	__size_of_USARTDataAvailable	equ	__end_of_USARTDataAvailable-_USARTDataAvailable
	
_USARTDataAvailable:	
;incstack = 0
	opt	stack 5
; Regs used in _USARTDataAvailable: [wreg+status,2+status,0]
	line	148
	
l967:	
;usart_pic16.c: 148: if(UQFront==-1) return 0;
	movf	(_UQFront),w	;volatile
	xorlw	-1
	skipz
	goto	u371
	goto	u370
u371:
	goto	l973
u370:
	
l969:	
	movlw	(0)
	goto	l131
	
l971:	
	goto	l131
	
l130:	
	line	149
	
l973:	
;usart_pic16.c: 149: if(UQFront<UQEnd)
	movf	(_UQFront),w	;volatile
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_USARTDataAvailable+0)+0
	movf	(_UQEnd),w	;volatile
	xorlw	80h
	subwf	(??_USARTDataAvailable+0)+0
	skipnc
	goto	u381
	goto	u380
u381:
	goto	l981
u380:
	line	150
	
l975:	
;usart_pic16.c: 150: return(UQEnd-UQFront+1);
	decf	(_UQFront),w	;volatile
	xorlw	0ffh
	addwf	(_UQEnd),w	;volatile
	addlw	01h
	goto	l131
	
l977:	
	goto	l131
	
l979:	
	goto	l131
	line	151
	
l132:	
	
l981:	
;usart_pic16.c: 151: else if(UQFront>UQEnd)
	movf	(_UQEnd),w	;volatile
	xorlw	80h
	movwf	(??_USARTDataAvailable+0)+0
	movf	(_UQFront),w	;volatile
	xorlw	80h
	subwf	(??_USARTDataAvailable+0)+0
	skipnc
	goto	u391
	goto	u390
u391:
	goto	l989
u390:
	line	152
	
l983:	
;usart_pic16.c: 152: return (64-UQFront+UQEnd+1);
	decf	(_UQFront),w	;volatile
	xorlw	0ffh
	addwf	(_UQEnd),w	;volatile
	addlw	041h
	goto	l131
	
l985:	
	goto	l131
	
l987:	
	goto	l131
	line	153
	
l134:	
	line	154
	
l989:	
;usart_pic16.c: 153: else
;usart_pic16.c: 154: return 1;
	movlw	(01h)
	goto	l131
	
l991:	
	goto	l131
	
l135:	
	goto	l131
	
l133:	
	line	155
	
l131:	
	return
	opt stack 0
GLOBAL	__end_of_USARTDataAvailable
	__end_of_USARTDataAvailable:
	signat	_USARTDataAvailable,89
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 6 in file "E:\Study Material\XC8 PROJECTS\Serial Test Txr\isr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_USARTHandleRxInt
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\Serial Test Txr\isr.c"
	line	6
global __ptext5
__ptext5:	;psect for function _ISR
psect	text5
	file	"E:\Study Material\XC8 PROJECTS\Serial Test Txr\isr.c"
	line	6
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 5
; Regs used in _ISR: [wreg-fsr0h+status,2+status,0+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+0)
	movf	fsr0,w
	movwf	(??_ISR+1)
	movf	pclath,w
	movwf	(??_ISR+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+3)
	ljmp	_ISR
psect	text5
	line	8
	
i1l739:	
;isr.c: 8: if (RCIE && RCIF) {
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1125/8)^080h,(1125)&7	;volatile
	goto	u16_21
	goto	u16_20
u16_21:
	goto	i1l16
u16_20:
	
i1l741:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7	;volatile
	goto	u17_21
	goto	u17_20
u17_21:
	goto	i1l16
u17_20:
	line	9
	
i1l743:	
;isr.c: 9: USARTHandleRxInt();
	fcall	_USARTHandleRxInt
	goto	i1l16
	line	10
	
i1l745:	
;isr.c: 10: return;
	goto	i1l16
	line	11
	
i1l15:	
	line	12
	
i1l16:	
	movf	(??_ISR+3),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(??_ISR+2),w
	movwf	pclath
	movf	(??_ISR+1),w
	movwf	fsr0
	swapf	(??_ISR+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,88
	global	_USARTHandleRxInt

;; *************** function _USARTHandleRxInt *****************
;; Defined at:
;;		line 95 in file "E:\Study Material\XC8 PROJECTS\Serial Test Txr\usart_pic16.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data            1    4[COMMON] unsigned char 
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
;;      Locals:         1       0       0
;;      Temps:          4       0       0
;;      Totals:         5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"E:\Study Material\XC8 PROJECTS\Serial Test Txr\usart_pic16.c"
	line	95
global __ptext6
__ptext6:	;psect for function _USARTHandleRxInt
psect	text6
	file	"E:\Study Material\XC8 PROJECTS\Serial Test Txr\usart_pic16.c"
	line	95
	global	__size_of_USARTHandleRxInt
	__size_of_USARTHandleRxInt	equ	__end_of_USARTHandleRxInt-_USARTHandleRxInt
	
_USARTHandleRxInt:	
;incstack = 0
	opt	stack 5
; Regs used in _USARTHandleRxInt: [wreg-fsr0h+status,2+status,0]
	line	98
	
i1l625:	
;usart_pic16.c: 98: char data=RCREG;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(26),w	;volatile
	movwf	(??_USARTHandleRxInt+0)+0
	movf	(??_USARTHandleRxInt+0)+0,w
	movwf	(USARTHandleRxInt@data)
	line	101
;usart_pic16.c: 101: if(((UQEnd==64-1) && UQFront==0) || ((UQEnd+1)==UQFront))
	movf	(_UQEnd),w	;volatile
	xorlw	03Fh
	skipz
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l629
u1_20:
	
i1l627:	
	movf	(_UQFront),w	;volatile
	skipz
	goto	u2_20
	goto	i1l631
u2_20:
	goto	i1l629
	
i1l115:	
	
i1l629:	
	movf	(_UQFront),w	;volatile
	movwf	(??_USARTHandleRxInt+0)+0
	clrf	(??_USARTHandleRxInt+0)+0+1
	btfsc	(??_USARTHandleRxInt+0)+0,7
	decf	(??_USARTHandleRxInt+0)+0+1,f
	movlw	01h
	addwf	(_UQEnd),w	;volatile
	movwf	(??_USARTHandleRxInt+2)+0
	clrf	1+(??_USARTHandleRxInt+2)+0
	skipnc
	incf	((??_USARTHandleRxInt+2)+0)+1,f
	btfss	(_UQEnd),7	;volatile
	goto	u3_24
	decf	((??_USARTHandleRxInt+2)+0)+1,f
	u3_24:
	
	movf	1+(??_USARTHandleRxInt+0)+0,w
	xorwf	1+(??_USARTHandleRxInt+2)+0,w
	skipz
	goto	u4_25
	movf	0+(??_USARTHandleRxInt+0)+0,w
	xorwf	0+(??_USARTHandleRxInt+2)+0,w
u4_25:

	skipz
	goto	u4_21
	goto	u4_20
u4_21:
	goto	i1l637
u4_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	goto	i1l631
	
i1l113:	
	line	104
	
i1l631:	
;usart_pic16.c: 102: {
;usart_pic16.c: 104: UQFront++;
	movlw	(01h)
	movwf	(??_USARTHandleRxInt+0)+0
	movf	(??_USARTHandleRxInt+0)+0,w
	addwf	(_UQFront),f	;volatile
	line	105
	
i1l633:	
;usart_pic16.c: 105: if(UQFront==64) UQFront=0;
	movf	(_UQFront),w	;volatile
	xorlw	040h
	skipz
	goto	u5_21
	goto	u5_20
u5_21:
	goto	i1l637
u5_20:
	
i1l635:	
	clrf	(_UQFront)	;volatile
	goto	i1l637
	
i1l116:	
	goto	i1l637
	line	106
	
i1l111:	
	line	108
	
i1l637:	
;usart_pic16.c: 106: }
;usart_pic16.c: 108: if(UQEnd==64-1)
	movf	(_UQEnd),w	;volatile
	xorlw	03Fh
	skipz
	goto	u6_21
	goto	u6_20
u6_21:
	goto	i1l641
u6_20:
	line	109
	
i1l639:	
;usart_pic16.c: 109: UQEnd=0;
	clrf	(_UQEnd)	;volatile
	goto	i1l643
	line	110
	
i1l117:	
	line	111
	
i1l641:	
;usart_pic16.c: 110: else
;usart_pic16.c: 111: UQEnd++;
	movlw	(01h)
	movwf	(??_USARTHandleRxInt+0)+0
	movf	(??_USARTHandleRxInt+0)+0,w
	addwf	(_UQEnd),f	;volatile
	goto	i1l643
	
i1l118:	
	line	113
	
i1l643:	
;usart_pic16.c: 113: URBuff[UQEnd]=data;
	movf	(USARTHandleRxInt@data),w
	movwf	(??_USARTHandleRxInt+0)+0
	movf	(_UQEnd),w
	addlw	_URBuff&0ffh
	movwf	fsr0
	movf	(??_USARTHandleRxInt+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	115
	
i1l645:	
;usart_pic16.c: 115: if(UQFront==-1) UQFront=0;
	movf	(_UQFront),w	;volatile
	xorlw	-1
	skipz
	goto	u7_21
	goto	u7_20
u7_21:
	goto	i1l120
u7_20:
	
i1l647:	
	clrf	(_UQFront)	;volatile
	goto	i1l120
	
i1l119:	
	line	117
	
i1l120:	
	return
	opt stack 0
GLOBAL	__end_of_USARTHandleRxInt
	__end_of_USARTHandleRxInt:
	signat	_USARTHandleRxInt,88
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

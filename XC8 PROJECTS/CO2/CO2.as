opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 58300"

opt pagewidth 120

	opt lm

	processor	16F628A
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
# 46 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
PORTA equ 0F80h ;# 
# 208 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
PORTB equ 0F81h ;# 
# 332 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
PORTC equ 0F82h ;# 
# 501 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
PORTD equ 0F83h ;# 
# 621 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
PORTE equ 0F84h ;# 
# 879 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
LATA equ 0F89h ;# 
# 1014 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
LATB equ 0F8Ah ;# 
# 1146 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
LATC equ 0F8Bh ;# 
# 1278 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
LATD equ 0F8Ch ;# 
# 1410 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
LATE equ 0F8Dh ;# 
# 1512 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
TRISA equ 0F92h ;# 
# 1517 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
DDRA equ 0F92h ;# 
# 1709 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
TRISB equ 0F93h ;# 
# 1714 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
DDRB equ 0F93h ;# 
# 1948 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
TRISC equ 0F94h ;# 
# 1953 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
DDRC equ 0F94h ;# 
# 2187 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
TRISD equ 0F95h ;# 
# 2192 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
DDRD equ 0F95h ;# 
# 2408 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
TRISE equ 0F96h ;# 
# 2413 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
DDRE equ 0F96h ;# 
# 2559 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
PIE1 equ 0F9Dh ;# 
# 2638 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
PIR1 equ 0F9Eh ;# 
# 2717 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
IPR1 equ 0F9Fh ;# 
# 2796 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
PIE2 equ 0FA0h ;# 
# 2839 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
PIR2 equ 0FA1h ;# 
# 2882 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
IPR2 equ 0FA2h ;# 
# 2925 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
EECON1 equ 0FA6h ;# 
# 2990 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
EECON2 equ 0FA7h ;# 
# 2996 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
EEDATA equ 0FA8h ;# 
# 3002 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
EEADR equ 0FA9h ;# 
# 3008 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
RCSTA equ 0FABh ;# 
# 3013 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
RCSTA1 equ 0FABh ;# 
# 3231 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
TXSTA equ 0FACh ;# 
# 3236 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
TXSTA1 equ 0FACh ;# 
# 3532 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
TXREG equ 0FADh ;# 
# 3537 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
TXREG1 equ 0FADh ;# 
# 3543 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
RCREG equ 0FAEh ;# 
# 3548 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
RCREG1 equ 0FAEh ;# 
# 3554 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
SPBRG equ 0FAFh ;# 
# 3559 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
SPBRG1 equ 0FAFh ;# 
# 3565 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
T3CON equ 0FB1h ;# 
# 3687 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
TMR3 equ 0FB2h ;# 
# 3693 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
TMR3L equ 0FB2h ;# 
# 3699 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
TMR3H equ 0FB3h ;# 
# 3705 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
CCP2CON equ 0FBAh ;# 
# 3792 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
CCPR2 equ 0FBBh ;# 
# 3798 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
CCPR2L equ 0FBBh ;# 
# 3804 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
CCPR2H equ 0FBCh ;# 
# 3810 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
CCP1CON equ 0FBDh ;# 
# 3888 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
CCPR1 equ 0FBEh ;# 
# 3894 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
CCPR1L equ 0FBEh ;# 
# 3900 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
CCPR1H equ 0FBFh ;# 
# 3906 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
ADCON1 equ 0FC1h ;# 
# 3973 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
ADCON0 equ 0FC2h ;# 
# 4117 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
ADRES equ 0FC3h ;# 
# 4123 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
ADRESL equ 0FC3h ;# 
# 4129 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
ADRESH equ 0FC4h ;# 
# 4135 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
SSPCON2 equ 0FC5h ;# 
# 4196 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
SSPCON1 equ 0FC6h ;# 
# 4265 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
SSPSTAT equ 0FC7h ;# 
# 4540 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
SSPADD equ 0FC8h ;# 
# 4546 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
SSPBUF equ 0FC9h ;# 
# 4552 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
T2CON equ 0FCAh ;# 
# 4622 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
PR2 equ 0FCBh ;# 
# 4627 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
MEMCON equ 0FCBh ;# 
# 4633 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
TMR2 equ 0FCCh ;# 
# 4639 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
T1CON equ 0FCDh ;# 
# 4747 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
TMR1 equ 0FCEh ;# 
# 4753 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
TMR1L equ 0FCEh ;# 
# 4759 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
TMR1H equ 0FCFh ;# 
# 4765 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
RCON equ 0FD0h ;# 
# 4907 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
WDTCON equ 0FD1h ;# 
# 4934 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
LVDCON equ 0FD2h ;# 
# 4991 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
OSCCON equ 0FD3h ;# 
# 5010 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
T0CON equ 0FD5h ;# 
# 5079 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
TMR0 equ 0FD6h ;# 
# 5085 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
TMR0L equ 0FD6h ;# 
# 5091 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
TMR0H equ 0FD7h ;# 
# 5097 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
STATUS equ 0FD8h ;# 
# 5175 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
FSR2 equ 0FD9h ;# 
# 5181 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
FSR2L equ 0FD9h ;# 
# 5187 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
FSR2H equ 0FDAh ;# 
# 5193 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
PLUSW2 equ 0FDBh ;# 
# 5199 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
PREINC2 equ 0FDCh ;# 
# 5205 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
POSTDEC2 equ 0FDDh ;# 
# 5211 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
POSTINC2 equ 0FDEh ;# 
# 5217 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
INDF2 equ 0FDFh ;# 
# 5223 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
BSR equ 0FE0h ;# 
# 5229 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
FSR1 equ 0FE1h ;# 
# 5235 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
FSR1L equ 0FE1h ;# 
# 5241 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
FSR1H equ 0FE2h ;# 
# 5247 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
PLUSW1 equ 0FE3h ;# 
# 5253 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
PREINC1 equ 0FE4h ;# 
# 5259 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
POSTDEC1 equ 0FE5h ;# 
# 5265 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
POSTINC1 equ 0FE6h ;# 
# 5271 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
INDF1 equ 0FE7h ;# 
# 5277 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
WREG equ 0FE8h ;# 
# 5288 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
FSR0 equ 0FE9h ;# 
# 5294 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
FSR0L equ 0FE9h ;# 
# 5300 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
FSR0H equ 0FEAh ;# 
# 5306 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
PLUSW0 equ 0FEBh ;# 
# 5312 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
PREINC0 equ 0FECh ;# 
# 5318 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
POSTDEC0 equ 0FEDh ;# 
# 5324 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
POSTINC0 equ 0FEEh ;# 
# 5330 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
INDF0 equ 0FEFh ;# 
# 5336 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
INTCON3 equ 0FF0h ;# 
# 5427 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
INTCON2 equ 0FF1h ;# 
# 5503 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
INTCON equ 0FF2h ;# 
# 5508 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
INTCON1 equ 0FF2h ;# 
# 5774 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
PROD equ 0FF3h ;# 
# 5780 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
PRODL equ 0FF3h ;# 
# 5786 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
PRODH equ 0FF4h ;# 
# 5792 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
TABLAT equ 0FF5h ;# 
# 5800 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
TBLPTR equ 0FF6h ;# 
# 5806 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
TBLPTRL equ 0FF6h ;# 
# 5812 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
TBLPTRH equ 0FF7h ;# 
# 5818 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
TBLPTRU equ 0FF8h ;# 
# 5826 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
PCLAT equ 0FF9h ;# 
# 5833 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
PC equ 0FF9h ;# 
# 5839 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
PCL equ 0FF9h ;# 
# 5845 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
PCLATH equ 0FFAh ;# 
# 5851 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
PCLATU equ 0FFBh ;# 
# 5857 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
STKPTR equ 0FFCh ;# 
# 5962 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
TOS equ 0FFDh ;# 
# 5968 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
TOSL equ 0FFDh ;# 
# 5974 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
TOSH equ 0FFEh ;# 
# 5980 "C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,___awdiv
	FNCALL	_main,___awmod
	FNCALL	_main,___bmul
	FNCALL	_main,___lwdiv
	FNROOT	_main
	FNCALL	intlevel1,_tmr_int
	global	intlevel1
	FNROOT	intlevel1
	global	__on_time
	global	_adr
	global	_count
	global	_on_time
	global	_values
	global	_hold
	global	_TMR0
_TMR0	set	0xFD6
	global	_ADCON1
_ADCON1	set	0xFC1
	global	_INTCON
_INTCON	set	0xFF2
	global	_PORTB
_PORTB	set	0xF81
	global	_PORTC
_PORTC	set	0xF82
	global	_PORTD
_PORTD	set	0xF83
	global	_PORTE
_PORTE	set	0xF84
	global	_RCON
_RCON	set	0xFD0
	global	_T0CON
_T0CON	set	0xFD5
	global	_TRISA
_TRISA	set	0xF92
	global	_TRISB
_TRISB	set	0xF93
	global	_TRISC
_TRISC	set	0xF94
	global	_TRISD
_TRISD	set	0xF95
	global	_TRISE
_TRISE	set	0xF96
	global	_CARRY
_CARRY	set	0x7EC0
	global	_RA0
_RA0	set	0x7C00
	global	_RA1
_RA1	set	0x7C01
	global	_RA2
_RA2	set	0x7C02
	global	_RA3
_RA3	set	0x7C03
	global	_RA4
_RA4	set	0x7C04
	global	_RB0
_RB0	set	0x7C08
	global	_RB1
_RB1	set	0x7C09
	global	_RB2
_RB2	set	0x7C0A
	global	_RB3
_RB3	set	0x7C0B
	global	_RC0
_RC0	set	0x7C10
	global	_RC1
_RC1	set	0x7C11
	global	_RC2
_RC2	set	0x7C12
	global	_RC3
_RC3	set	0x7C13
	global	_RC4
_RC4	set	0x7C14
	global	_RC5
_RC5	set	0x7C15
	global	_RC6
_RC6	set	0x7C16
	global	_RC7
_RC7	set	0x7C17
	global	_RD0
_RD0	set	0x7C18
	global	_RD1
_RD1	set	0x7C19
	global	_RD2
_RD2	set	0x7C1A
	global	_RD3
_RD3	set	0x7C1B
	global	_RD4
_RD4	set	0x7C1C
	global	_RD5
_RD5	set	0x7C1D
	global	_RD6
_RD6	set	0x7C1E
	global	_RD7
_RD7	set	0x7C1F
	global	_T0IF
_T0IF	set	0x7F92
psect	text0,local,class=CODE,delta=2,merge=1
; #config settings
	file	"C:\Program Files\Microchip\xc8\v1.12\include\pic18f452.h"
	line	1538
global __ptext0
__ptext0:	;psect for function _tmr_int
	file	"CO2.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
__on_time:
       ds      1

_adr:
       ds      1

_count:
       ds      1

_on_time:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_values:
       ds      14

_hold:
       ds      1

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
	movlw	low((__pbssCOMMON)+04h)
	fcall	clear_ram0
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+0Fh)
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
?_main:	; 0 bytes @ 0x0
?_tmr_int:	; 0 bytes @ 0x0
??_tmr_int:	; 0 bytes @ 0x0
	ds	5
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?___bmul:	; 1 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	ds	1
??___bmul:	; 0 bytes @ 0x1
	ds	1
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	1
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x3
	ds	1
??___awdiv:	; 0 bytes @ 0x4
??___awmod:	; 0 bytes @ 0x4
??___lwdiv:	; 0 bytes @ 0x4
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x5
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x6
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	2
??_main:	; 0 bytes @ 0x9
	ds	3
	global	main@R2
main@R2:	; 1 bytes @ 0xC
	ds	1
	global	main@R1
main@R1:	; 1 bytes @ 0xD
	ds	1
	global	main@progno
main@progno:	; 1 bytes @ 0xE
	ds	1
	global	main@coagmode
main@coagmode:	; 1 bytes @ 0xF
	ds	1
	global	main@bipomode
main@bipomode:	; 1 bytes @ 0x10
	ds	1
	global	main@coagpower
main@coagpower:	; 1 bytes @ 0x11
	ds	1
	global	main@cutpower
main@cutpower:	; 2 bytes @ 0x12
	ds	2
	global	main@temp
main@temp:	; 1 bytes @ 0x14
	ds	1
	global	main@j
main@j:	; 1 bytes @ 0x15
	ds	1
	global	main@cutmode
main@cutmode:	; 1 bytes @ 0x16
	ds	1
	global	main@bipopower
main@bipopower:	; 1 bytes @ 0x17
	ds	1
	global	main@hundreds
main@hundreds:	; 1 bytes @ 0x18
	ds	1
	global	main@units
main@units:	; 1 bytes @ 0x19
	ds	1
	global	main@tens
main@tens:	; 1 bytes @ 0x1A
	ds	1
	global	main@cnt
main@cnt:	; 1 bytes @ 0x1B
	ds	1
	global	main@i
main@i:	; 1 bytes @ 0x1C
	ds	1
	global	main@debounce
main@debounce:	; 1 bytes @ 0x1D
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         19
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      5       9
;!    BANK0            80     30      45
;!    BANK1            80      0       0
;!    BANK2            48      0       0

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
;!    _main->___awdiv
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
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _tmr_int in BANK2
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
;! (0) _main                                                21    21      0   11937
;!                                              9 BANK0     21    21      0
;!                            ___awdiv
;!                            ___awmod
;!                             ___bmul
;!                            ___lwdiv
;! ---------------------------------------------------------------------------------
;! (1) ___lwdiv                                              8     4      4     501
;!                                              0 BANK0      8     4      4
;! ---------------------------------------------------------------------------------
;! (1) ___bmul                                               4     3      1     396
;!                                              0 BANK0      4     3      1
;! ---------------------------------------------------------------------------------
;! (1) ___awmod                                              7     3      4    1473
;!                                              0 BANK0      7     3      4
;! ---------------------------------------------------------------------------------
;! (1) ___awdiv                                              9     5      4    1745
;!                                              0 BANK0      9     5      4
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (2) _tmr_int                                              5     5      0       0
;!                                              0 COMMON     5     5      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   ___awdiv
;!   ___awmod
;!   ___bmul
;!   ___lwdiv
;!
;! _tmr_int (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA              80      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      5       9       1       64.3%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!BANK0               50     1E      2D       3       56.3%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!ABS                  0      0      36       4        0.0%
;!BITBANK0            50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK2            30      0       0       8        0.0%
;!BANK2               30      0       0       9        0.0%
;!DATA                 0      0      36      10        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 13 in file "C:\XC8 PROJECTS\CO2\CO2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  cutpower        2   18[BANK0 ] unsigned int 
;;  debounce        1   29[BANK0 ] unsigned char 
;;  i               1   28[BANK0 ] unsigned char 
;;  cnt             1   27[BANK0 ] unsigned char 
;;  tens            1   26[BANK0 ] unsigned char 
;;  units           1   25[BANK0 ] unsigned char 
;;  hundreds        1   24[BANK0 ] unsigned char 
;;  bipopower       1   23[BANK0 ] unsigned char 
;;  cutmode         1   22[BANK0 ] unsigned char 
;;  j               1   21[BANK0 ] unsigned char 
;;  temp            1   20[BANK0 ] unsigned char 
;;  coagpower       1   17[BANK0 ] unsigned char 
;;  bipomode        1   16[BANK0 ] unsigned char 
;;  coagmode        1   15[BANK0 ] unsigned char 
;;  progno          1   14[BANK0 ] unsigned char 
;;  R1              1   13[BANK0 ] unsigned char 
;;  R2              1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0      18       0       0
;;      Temps:          0       3       0       0
;;      Totals:         0      21       0       0
;;Total ram usage:       21 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awdiv
;;		___awmod
;;		___bmul
;;		___lwdiv
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\XC8 PROJECTS\CO2\CO2.c"
	line	13
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\XC8 PROJECTS\CO2\CO2.c"
	line	13
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	14
	
l3109:	
;CO2.c: 14: unsigned char hundreds = 0,coagpower = 0, i =0,j = 0,R1 = 0x11,R2 = 0,temp = 0,cnt = 0,bipopower = 0,cutmode = 0,coagmode = 0,bipomode = 0,units = 0,tens = 0,debounce = 0,progno = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@hundreds)
	clrf	(main@coagpower)
	clrf	(main@i)
	clrf	(main@j)
	
l3111:	
	movlw	(011h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@R1)
	
l3113:	
	clrf	(main@R2)
	
l3115:	
	clrf	(main@temp)
	
l3117:	
	clrf	(main@cnt)
	
l3119:	
	clrf	(main@bipopower)
	
l3121:	
	clrf	(main@cutmode)
	
l3123:	
	clrf	(main@coagmode)
	
l3125:	
	clrf	(main@bipomode)
	
l3127:	
	clrf	(main@units)
	
l3129:	
	clrf	(main@tens)
	
l3131:	
	clrf	(main@debounce)
	
l3133:	
	clrf	(main@progno)
	line	15
	
l3135:	
;CO2.c: 15: unsigned int cutpower = 0;
	clrf	(main@cutpower)
	clrf	(main@cutpower+1)
	line	18
	
l3137:	
;CO2.c: 18: TRISA = 0xFF;
	movlw	(0FFh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	movwf	(3986)^0F80h	;volatile
	line	19
;CO2.c: 19: TRISE = 0x00;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	clrf	(3990)^0F80h	;volatile
	line	20
;CO2.c: 20: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	clrf	(3987)^0F80h	;volatile
	line	21
	
l3139:	
;CO2.c: 21: TRISD = 0x0F;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	movwf	(3989)^0F80h	;volatile
	line	22
	
l3141:	
;CO2.c: 22: TRISC = 0x7F;
	movlw	(07Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	movwf	(3988)^0F80h	;volatile
	line	24
	
l3143:	
;CO2.c: 24: ADCON1 = 0x07;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	movwf	(4033)^0F80h	;volatile
	line	25
	
l3145:	
;CO2.c: 25: RCON = 0x9F;
	movlw	(09Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	movwf	(4048)^0F80h	;volatile
	line	26
	
l3147:	
;CO2.c: 26: INTCON = 0xA0;
	movlw	(0A0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	movwf	(4082)^0F80h	;volatile
	line	27
	
l3149:	
;CO2.c: 27: T0CON = 0xC2;
	movlw	(0C2h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	movwf	(4053)^0F80h	;volatile
	line	28
;CO2.c: 28: TMR0 = 0x00;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	clrf	(4054)^0F80h	;volatile
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	clrf	(4054+1)^0F80h	;volatile
	line	29
;CO2.c: 29: cutmode = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@cutmode)
	line	30
;CO2.c: 30: coagmode = 0;
	clrf	(main@coagmode)
	line	31
;CO2.c: 31: bipomode = 0;
	clrf	(main@bipomode)
	line	51
	
l3151:	
;CO2.c: 51: RB0 = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bcf	(31752/8)^0F80h,(31752)&7	;volatile
	line	52
	
l3153:	
;CO2.c: 52: RB1 = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bcf	(31753/8)^0F80h,(31753)&7	;volatile
	line	55
	
l3155:	
;CO2.c: 55: RB2 = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bcf	(31754/8)^0F80h,(31754)&7	;volatile
	line	56
	
l3157:	
;CO2.c: 56: RB3 = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bcf	(31755/8)^0F80h,(31755)&7	;volatile
	line	57
	
l3159:	
;CO2.c: 57: RD4 = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bcf	(31772/8)^0F80h,(31772)&7	;volatile
	line	58
	
l3161:	
;CO2.c: 58: RC7 = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bcf	(31767/8)^0F80h,(31767)&7	;volatile
	line	59
	
l3163:	
;CO2.c: 59: RD5 = 1;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bsf	(31773/8)^0F80h,(31773)&7	;volatile
	goto	l3165
	line	60
;CO2.c: 60: while (1)
	
l99:	
	line	64
	
l3165:	
;CO2.c: 61: {
;CO2.c: 64: if(RA1 == 1)
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfss	(31745/8)^0F80h,(31745)&7	;volatile
	goto	u4811
	goto	u4810
u4811:
	goto	l100
u4810:
	line	66
	
l3167:	
;CO2.c: 65: {
;CO2.c: 66: RB3 = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bcf	(31755/8)^0F80h,(31755)&7	;volatile
	line	67
	
l100:	
	line	68
;CO2.c: 67: }
;CO2.c: 68: if(( RA2 || RA3 )== 1)
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfsc	(31746/8)^0F80h,(31746)&7	;volatile
	goto	u4821
	goto	u4820
u4821:
	goto	l103
u4820:
	
l3169:	
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfss	(31747/8)^0F80h,(31747)&7	;volatile
	goto	u4831
	goto	u4830
u4831:
	goto	l101
u4830:
	
l103:	
	line	70
;CO2.c: 69: {
;CO2.c: 70: RB2 = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bcf	(31754/8)^0F80h,(31754)&7	;volatile
	line	71
	
l101:	
	line	72
;CO2.c: 71: }
;CO2.c: 72: RC7 = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bcf	(31767/8)^0F80h,(31767)&7	;volatile
	line	73
;CO2.c: 73: if( RA0 == 0 )
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfsc	(31744/8)^0F80h,(31744)&7	;volatile
	goto	u4841
	goto	u4840
u4841:
	goto	l104
u4840:
	line	76
	
l3171:	
;CO2.c: 74: {
;CO2.c: 76: if( RA4 == 1 )
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfss	(31748/8)^0F80h,(31748)&7	;volatile
	goto	u4851
	goto	u4850
u4851:
	goto	l3177
u4850:
	line	78
	
l3173:	
;CO2.c: 77: {
;CO2.c: 78: RC7 = 1;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bsf	(31767/8)^0F80h,(31767)&7	;volatile
	line	79
	
l3175:	
;CO2.c: 79: _delay(100);
	opt asmopt_off
movlw	33
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_main+0)+0,f
u6777:
decfsz	(??_main+0)+0,f
	goto	u6777
opt asmopt_on

	line	80
;CO2.c: 80: }
	goto	l104
	line	81
	
l105:	
	line	85
	
l3177:	
;CO2.c: 81: else
;CO2.c: 82: {
;CO2.c: 85: cutpower = cutpower >> 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@cutpower+1),w
	movwf	(??_main+0)+0+1
	movf	(main@cutpower),w
	movwf	(??_main+0)+0
	clrc
	rrf	(??_main+0)+1,f
	rrf	(??_main+0)+0,f
	movf	0+(??_main+0)+0,w
	movwf	(main@cutpower)
	movf	1+(??_main+0)+0,w
	movwf	(main@cutpower+1)
	line	86
	
l3179:	
;CO2.c: 86: temp = cutpower & 0x00FF;
	movf	(main@cutpower),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@temp)
	line	87
	
l3181:	
;CO2.c: 87: RD5 = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bcf	(31773/8)^0F80h,(31773)&7	;volatile
	line	88
	
l3183:	
;CO2.c: 88: _delay(25);
	opt asmopt_off
movlw	8
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_main+0)+0,f
u6787:
decfsz	(??_main+0)+0,f
	goto	u6787
opt asmopt_on

	line	89
	
l3185:	
;CO2.c: 89: j = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@j)
	line	90
	
l3187:	
;CO2.c: 90: for( j = 0;j <= 7;j ++ )
	clrf	(main@j)
	
l3189:	
	movlw	(08h)
	subwf	(main@j),w
	skipc
	goto	u4861
	goto	u4860
u4861:
	goto	l3193
u4860:
	goto	l3203
	
l3191:	
	goto	l3203
	line	91
	
l107:	
	line	92
	
l3193:	
;CO2.c: 91: {
;CO2.c: 92: R1 = R1 << 1;
	movf	(main@R1),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(main@R1)
	line	93
	
l3195:	
;CO2.c: 93: if(CARRY == 1)
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfss	(32448/8)^0F80h,(32448)&7	;volatile
	goto	u4871
	goto	u4870
u4871:
	goto	l109
u4870:
	line	95
	
l3197:	
;CO2.c: 94: {
;CO2.c: 95: RD7 = 1;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bsf	(31775/8)^0F80h,(31775)&7	;volatile
	line	96
;CO2.c: 96: }
	goto	l110
	line	97
	
l109:	
	line	99
;CO2.c: 97: else
;CO2.c: 98: {
;CO2.c: 99: RD7 = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bcf	(31775/8)^0F80h,(31775)&7	;volatile
	line	100
	
l110:	
	line	101
;CO2.c: 100: }
;CO2.c: 101: RD6 = 1;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bsf	(31774/8)^0F80h,(31774)&7	;volatile
	line	102
;CO2.c: 102: _delay(5);
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop
	opt asmopt_on

	line	103
;CO2.c: 103: RD6 = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bcf	(31774/8)^0F80h,(31774)&7	;volatile
	line	104
;CO2.c: 104: RD7 = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bcf	(31775/8)^0F80h,(31775)&7	;volatile
	line	90
	
l3199:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@j),f
	
l3201:	
	movlw	(08h)
	subwf	(main@j),w
	skipc
	goto	u4881
	goto	u4880
u4881:
	goto	l3193
u4880:
	goto	l3203
	
l108:	
	line	106
	
l3203:	
;CO2.c: 105: }
;CO2.c: 106: i = 0;
	clrf	(main@i)
	line	107
;CO2.c: 107: for(i = 0;i <= 7;i ++ )
	clrf	(main@i)
	
l3205:	
	movlw	(08h)
	subwf	(main@i),w
	skipc
	goto	u4891
	goto	u4890
u4891:
	goto	l3209
u4890:
	goto	l112
	
l3207:	
	goto	l112
	line	108
	
l111:	
	line	109
	
l3209:	
;CO2.c: 108: {
;CO2.c: 109: temp = temp << 1;
	movf	(main@temp),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(main@temp)
	line	110
	
l3211:	
;CO2.c: 110: if(CARRY == 1)
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfss	(32448/8)^0F80h,(32448)&7	;volatile
	goto	u4901
	goto	u4900
u4901:
	goto	l113
u4900:
	line	112
	
l3213:	
;CO2.c: 111: {
;CO2.c: 112: RD7 = 1;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bsf	(31775/8)^0F80h,(31775)&7	;volatile
	line	113
;CO2.c: 113: }
	goto	l114
	line	114
	
l113:	
	line	116
;CO2.c: 114: else
;CO2.c: 115: {
;CO2.c: 116: RD7 = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bcf	(31775/8)^0F80h,(31775)&7	;volatile
	line	117
	
l114:	
	line	118
;CO2.c: 117: }
;CO2.c: 118: RD6 = 1;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bsf	(31774/8)^0F80h,(31774)&7	;volatile
	line	119
;CO2.c: 119: _delay(5);
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop
	opt asmopt_on

	line	120
;CO2.c: 120: RD6 = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bcf	(31774/8)^0F80h,(31774)&7	;volatile
	line	121
;CO2.c: 121: RD7 = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bcf	(31775/8)^0F80h,(31775)&7	;volatile
	line	107
	
l3215:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	
l3217:	
	movlw	(08h)
	subwf	(main@i),w
	skipc
	goto	u4911
	goto	u4910
u4911:
	goto	l3209
u4910:
	
l112:	
	line	124
;CO2.c: 122: }
;CO2.c: 124: RD5 = 1;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bsf	(31773/8)^0F80h,(31773)&7	;volatile
	line	125
	
l3219:	
;CO2.c: 125: R1 = 0x11;
	movlw	(011h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@R1)
	line	127
	
l3221:	
;CO2.c: 127: if(cutmode == 0) if((cutmode == 0) && (hold <= 0))
	movf	(main@cutmode),f
	skipz
	goto	u4921
	goto	u4920
u4921:
	goto	l3241
u4920:
	
l3223:	
	movf	(main@cutmode),f
	skipz
	goto	u4931
	goto	u4930
u4931:
	goto	l3241
u4930:
	
l3225:	
	movf	(_hold),w	;volatile
	xorlw	80h
	addlw	-((01h)^80h)
	skipnc
	goto	u4941
	goto	u4940
u4941:
	goto	l3241
u4940:
	line	129
	
l3227:	
;CO2.c: 128: {
;CO2.c: 129: i = 0;
	clrf	(main@i)
	line	130
;CO2.c: 130: while(RA0 == 0)
	goto	l3239
	
l118:	
	line	132
;CO2.c: 131: {
;CO2.c: 132: while( i < 10 )
	goto	l3233
	
l120:	
	line	134
;CO2.c: 133: {
;CO2.c: 134: RD4 = 1;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bsf	(31772/8)^0F80h,(31772)&7	;volatile
	line	135
;CO2.c: 135: _delay(6);
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	line	136
	
l3229:	
;CO2.c: 136: i = i + 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	01h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@i)
	line	137
	
l3231:	
;CO2.c: 137: RD4 = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bcf	(31772/8)^0F80h,(31772)&7	;volatile
	goto	l3233
	line	138
	
l119:	
	line	132
	
l3233:	
	movlw	(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(main@i),w
	skipc
	goto	u4951
	goto	u4950
u4951:
	goto	l120
u4950:
	goto	l3235
	
l121:	
	line	139
	
l3235:	
;CO2.c: 138: }
;CO2.c: 139: _delay(80);
	opt asmopt_off
movlw	26
movwf	(??_main+0)+0,f
u6797:
decfsz	(??_main+0)+0,f
	goto	u6797
	nop
opt asmopt_on

	line	140
	
l3237:	
;CO2.c: 140: i = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	goto	l3239
	line	141
	
l117:	
	line	130
	
l3239:	
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfss	(31744/8)^0F80h,(31744)&7	;volatile
	goto	u4961
	goto	u4960
u4961:
	goto	l3233
u4960:
	goto	l3241
	
l122:	
	goto	l3241
	line	143
	
l116:	
	goto	l3241
	line	144
	
l115:	
	
l3241:	
;CO2.c: 141: }
;CO2.c: 143: }
;CO2.c: 144: if( cutmode == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@cutmode),w
	xorlw	01h
	skipz
	goto	u4971
	goto	u4970
u4971:
	goto	l3245
u4970:
	line	148
	
l3243:	
;CO2.c: 145: {
;CO2.c: 148: _delay(5);
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop
	opt asmopt_on

	goto	l3245
	line	150
	
l123:	
	line	151
	
l3245:	
;CO2.c: 150: }
;CO2.c: 151: if( cutmode == 2 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@cutmode),w
	xorlw	02h
	skipz
	goto	u4981
	goto	u4980
u4981:
	goto	l3249
u4980:
	line	156
	
l3247:	
;CO2.c: 152: {
;CO2.c: 156: _delay(5);
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop
	opt asmopt_on

	goto	l3249
	line	157
	
l124:	
	line	158
	
l3249:	
;CO2.c: 157: }
;CO2.c: 158: if( cutmode == 3 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@cutmode),w
	xorlw	03h
	skipz
	goto	u4991
	goto	u4990
u4991:
	goto	l104
u4990:
	line	162
	
l3251:	
;CO2.c: 159: {
;CO2.c: 162: _delay(5);
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop
	opt asmopt_on

	goto	l104
	line	163
	
l125:	
	goto	l104
	line	164
	
l106:	
	line	165
	
l104:	
	line	166
;CO2.c: 163: }
;CO2.c: 164: }
;CO2.c: 165: }
;CO2.c: 166: if(RA1 == 0)
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfsc	(31745/8)^0F80h,(31745)&7	;volatile
	goto	u5001
	goto	u5000
u5001:
	goto	l126
u5000:
	line	168
	
l3253:	
;CO2.c: 167: {
;CO2.c: 168: if(RA4 == 1)
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfss	(31748/8)^0F80h,(31748)&7	;volatile
	goto	u5011
	goto	u5010
u5011:
	goto	l127
u5010:
	line	171
	
l3255:	
;CO2.c: 169: {
;CO2.c: 171: RC7 = 1;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bsf	(31767/8)^0F80h,(31767)&7	;volatile
	line	172
;CO2.c: 172: }
	goto	l126
	line	173
	
l127:	
	line	175
;CO2.c: 173: else
;CO2.c: 174: {
;CO2.c: 175: RB3 = 1;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bsf	(31755/8)^0F80h,(31755)&7	;volatile
	line	176
	
l3257:	
;CO2.c: 176: _delay(25);
	opt asmopt_off
movlw	8
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_main+0)+0,f
u6807:
decfsz	(??_main+0)+0,f
	goto	u6807
opt asmopt_on

	line	179
	
l3259:	
;CO2.c: 179: RD5 = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bcf	(31773/8)^0F80h,(31773)&7	;volatile
	line	180
;CO2.c: 180: _delay(25);
	opt asmopt_off
movlw	8
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_main+0)+0,f
u6817:
decfsz	(??_main+0)+0,f
	goto	u6817
opt asmopt_on

	line	181
	
l3261:	
;CO2.c: 181: j = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@j)
	line	182
	
l3263:	
;CO2.c: 182: for( j = 0;j <= 7;j ++ )
	clrf	(main@j)
	movlw	(08h)
	subwf	(main@j),w
	skipc
	goto	u5021
	goto	u5020
u5021:
	goto	l3267
u5020:
	goto	l3277
	
l3265:	
	goto	l3277
	line	183
	
l129:	
	line	184
	
l3267:	
;CO2.c: 183: {
;CO2.c: 184: R1 = R1 << 1;
	movf	(main@R1),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(main@R1)
	line	185
	
l3269:	
;CO2.c: 185: if(CARRY == 1)
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfss	(32448/8)^0F80h,(32448)&7	;volatile
	goto	u5031
	goto	u5030
u5031:
	goto	l131
u5030:
	line	187
	
l3271:	
;CO2.c: 186: {
;CO2.c: 187: RD7 = 1;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bsf	(31775/8)^0F80h,(31775)&7	;volatile
	line	188
;CO2.c: 188: }
	goto	l132
	line	189
	
l131:	
	line	191
;CO2.c: 189: else
;CO2.c: 190: {
;CO2.c: 191: RD7 = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bcf	(31775/8)^0F80h,(31775)&7	;volatile
	line	192
	
l132:	
	line	193
;CO2.c: 192: }
;CO2.c: 193: RD6 = 1;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bsf	(31774/8)^0F80h,(31774)&7	;volatile
	line	194
;CO2.c: 194: _delay(5);
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop
	opt asmopt_on

	line	195
;CO2.c: 195: RD6 = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bcf	(31774/8)^0F80h,(31774)&7	;volatile
	line	196
;CO2.c: 196: RD7 = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bcf	(31775/8)^0F80h,(31775)&7	;volatile
	line	182
	
l3273:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@j),f
	
l3275:	
	movlw	(08h)
	subwf	(main@j),w
	skipc
	goto	u5041
	goto	u5040
u5041:
	goto	l3267
u5040:
	goto	l3277
	
l130:	
	line	198
	
l3277:	
;CO2.c: 197: }
;CO2.c: 198: i = 0;
	clrf	(main@i)
	line	199
	
l3279:	
;CO2.c: 199: coagpower = 0xAA;
	movlw	(0AAh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@coagpower)
	line	200
	
l3281:	
;CO2.c: 200: for(i = 0;i <= 7;i ++ )
	clrf	(main@i)
	movlw	(08h)
	subwf	(main@i),w
	skipc
	goto	u5051
	goto	u5050
u5051:
	goto	l3285
u5050:
	goto	l134
	
l3283:	
	goto	l134
	line	201
	
l133:	
	line	202
	
l3285:	
;CO2.c: 201: {
;CO2.c: 202: coagpower = coagpower << 1;
	movf	(main@coagpower),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(main@coagpower)
	line	203
	
l3287:	
;CO2.c: 203: if(CARRY == 1)
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfss	(32448/8)^0F80h,(32448)&7	;volatile
	goto	u5061
	goto	u5060
u5061:
	goto	l135
u5060:
	line	205
	
l3289:	
;CO2.c: 204: {
;CO2.c: 205: RD7 = 1;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bsf	(31775/8)^0F80h,(31775)&7	;volatile
	line	206
;CO2.c: 206: }
	goto	l136
	line	207
	
l135:	
	line	209
;CO2.c: 207: else
;CO2.c: 208: {
;CO2.c: 209: RD7 = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bcf	(31775/8)^0F80h,(31775)&7	;volatile
	line	210
	
l136:	
	line	211
;CO2.c: 210: }
;CO2.c: 211: RD6 = 1;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bsf	(31774/8)^0F80h,(31774)&7	;volatile
	line	212
;CO2.c: 212: _delay(5);
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop
	opt asmopt_on

	line	213
;CO2.c: 213: RD6 = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bcf	(31774/8)^0F80h,(31774)&7	;volatile
	line	214
;CO2.c: 214: RD7 = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bcf	(31775/8)^0F80h,(31775)&7	;volatile
	line	200
	
l3291:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	
l3293:	
	movlw	(08h)
	subwf	(main@i),w
	skipc
	goto	u5071
	goto	u5070
u5071:
	goto	l3285
u5070:
	
l134:	
	line	217
;CO2.c: 215: }
;CO2.c: 217: RD5 = 1;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bsf	(31773/8)^0F80h,(31773)&7	;volatile
	line	218
	
l3295:	
;CO2.c: 218: R1 = 0x11;
	movlw	(011h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@R1)
	line	219
	
l3297:	
;CO2.c: 219: if(coagmode == 0)
	movf	(main@coagmode),f
	skipz
	goto	u5081
	goto	u5080
u5081:
	goto	l3313
u5080:
	line	221
	
l3299:	
;CO2.c: 220: {
;CO2.c: 221: i = 0;
	clrf	(main@i)
	line	222
;CO2.c: 222: while(RA1 == 0)
	goto	l3311
	
l139:	
	line	224
;CO2.c: 223: {
;CO2.c: 224: while( i < 1 )
	goto	l3305
	
l141:	
	line	226
;CO2.c: 225: {
;CO2.c: 226: RD4 = 1;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bsf	(31772/8)^0F80h,(31772)&7	;volatile
	line	227
;CO2.c: 227: _delay(6);
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	line	228
	
l3301:	
;CO2.c: 228: i = i + 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	01h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@i)
	line	229
	
l3303:	
;CO2.c: 229: RD4 = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bcf	(31772/8)^0F80h,(31772)&7	;volatile
	goto	l3305
	line	230
	
l140:	
	line	224
	
l3305:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	skipz
	goto	u5090
	goto	l141
u5090:
	goto	l3307
	
l142:	
	line	231
	
l3307:	
;CO2.c: 230: }
;CO2.c: 231: _delay(80);
	opt asmopt_off
movlw	26
movwf	(??_main+0)+0,f
u6827:
decfsz	(??_main+0)+0,f
	goto	u6827
	nop
opt asmopt_on

	line	232
	
l3309:	
;CO2.c: 232: i = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	goto	l3311
	line	233
	
l138:	
	line	222
	
l3311:	
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfss	(31745/8)^0F80h,(31745)&7	;volatile
	goto	u5101
	goto	u5100
u5101:
	goto	l3305
u5100:
	goto	l3313
	
l143:	
	goto	l3313
	line	235
	
l137:	
	line	236
	
l3313:	
;CO2.c: 233: }
;CO2.c: 235: }
;CO2.c: 236: if( coagmode == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@coagmode),w
	xorlw	01h
	skipz
	goto	u5111
	goto	u5110
u5111:
	goto	l3329
u5110:
	line	238
	
l3315:	
;CO2.c: 237: {
;CO2.c: 238: i = 0;
	clrf	(main@i)
	line	239
;CO2.c: 239: while(RA1 == 0)
	goto	l3327
	
l146:	
	line	241
;CO2.c: 240: {
;CO2.c: 241: while(i < 3 )
	goto	l3321
	
l148:	
	line	243
;CO2.c: 242: {
;CO2.c: 243: RD4 = 1;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bsf	(31772/8)^0F80h,(31772)&7	;volatile
	line	244
;CO2.c: 244: _delay(6);
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	line	245
	
l3317:	
;CO2.c: 245: i = i + 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	01h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@i)
	line	246
	
l3319:	
;CO2.c: 246: RD4 = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bcf	(31772/8)^0F80h,(31772)&7	;volatile
	goto	l3321
	line	247
	
l147:	
	line	241
	
l3321:	
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(main@i),w
	skipc
	goto	u5121
	goto	u5120
u5121:
	goto	l148
u5120:
	goto	l3323
	
l149:	
	line	248
	
l3323:	
;CO2.c: 247: }
;CO2.c: 248: _delay(50);
	opt asmopt_off
movlw	16
movwf	(??_main+0)+0,f
u6837:
decfsz	(??_main+0)+0,f
	goto	u6837
	nop
opt asmopt_on

	line	249
	
l3325:	
;CO2.c: 249: i = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	goto	l3327
	line	250
	
l145:	
	line	239
	
l3327:	
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfss	(31745/8)^0F80h,(31745)&7	;volatile
	goto	u5131
	goto	u5130
u5131:
	goto	l3321
u5130:
	goto	l3329
	
l150:	
	goto	l3329
	line	252
	
l144:	
	line	253
	
l3329:	
;CO2.c: 250: }
;CO2.c: 252: }
;CO2.c: 253: if( coagmode == 2 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@coagmode),w
	xorlw	02h
	skipz
	goto	u5141
	goto	u5140
u5141:
	goto	l126
u5140:
	line	255
	
l3331:	
;CO2.c: 254: {
;CO2.c: 255: i = 0;
	clrf	(main@i)
	line	256
;CO2.c: 256: while(RA1 == 0)
	goto	l3343
	
l153:	
	line	258
;CO2.c: 257: {
;CO2.c: 258: while(i < 4)
	goto	l3337
	
l155:	
	line	260
;CO2.c: 259: {
;CO2.c: 260: RD4 = 1;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bsf	(31772/8)^0F80h,(31772)&7	;volatile
	line	261
;CO2.c: 261: _delay(6);
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	line	262
	
l3333:	
;CO2.c: 262: i = i + 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	01h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@i)
	line	263
	
l3335:	
;CO2.c: 263: RD4 = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bcf	(31772/8)^0F80h,(31772)&7	;volatile
	goto	l3337
	line	264
	
l154:	
	line	258
	
l3337:	
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(main@i),w
	skipc
	goto	u5151
	goto	u5150
u5151:
	goto	l155
u5150:
	goto	l3339
	
l156:	
	line	265
	
l3339:	
;CO2.c: 264: }
;CO2.c: 265: _delay(40);
	opt asmopt_off
movlw	13
movwf	(??_main+0)+0,f
u6847:
decfsz	(??_main+0)+0,f
	goto	u6847
opt asmopt_on

	line	266
	
l3341:	
;CO2.c: 266: i = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	goto	l3343
	line	267
	
l152:	
	line	256
	
l3343:	
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfss	(31745/8)^0F80h,(31745)&7	;volatile
	goto	u5161
	goto	u5160
u5161:
	goto	l3337
u5160:
	goto	l126
	
l157:	
	goto	l126
	line	269
	
l151:	
	goto	l126
	line	270
	
l128:	
	line	271
	
l126:	
	line	272
;CO2.c: 267: }
;CO2.c: 269: }
;CO2.c: 270: }
;CO2.c: 271: }
;CO2.c: 272: if(RA2 == 0)
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfsc	(31746/8)^0F80h,(31746)&7	;volatile
	goto	u5171
	goto	u5170
u5171:
	goto	l158
u5170:
	line	274
	
l3345:	
;CO2.c: 273: {
;CO2.c: 274: if(bipomode == 2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@bipomode),w
	xorlw	02h
	skipz
	goto	u5181
	goto	u5180
u5181:
	goto	l159
u5180:
	line	276
	
l3347:	
;CO2.c: 275: {
;CO2.c: 276: bipomode = 0;
	clrf	(main@bipomode)
	line	277
;CO2.c: 277: }
	goto	l158
	line	278
	
l159:	
	line	280
;CO2.c: 278: else
;CO2.c: 279: {
;CO2.c: 280: RB2 = 1;;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bsf	(31754/8)^0F80h,(31754)&7	;volatile
	line	281
	
l3349:	
;CO2.c: 281: _delay(25);
	opt asmopt_off
movlw	8
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_main+0)+0,f
u6857:
decfsz	(??_main+0)+0,f
	goto	u6857
opt asmopt_on

	line	282
	
l3351:	
;CO2.c: 282: RD5 = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bcf	(31773/8)^0F80h,(31773)&7	;volatile
	line	283
;CO2.c: 283: _delay(25);
	opt asmopt_off
movlw	8
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_main+0)+0,f
u6867:
decfsz	(??_main+0)+0,f
	goto	u6867
opt asmopt_on

	line	285
;CO2.c: 285: bipopower = 0x63;
	movlw	(063h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@bipopower)
	line	287
	
l3353:	
;CO2.c: 287: j = 0;
	clrf	(main@j)
	line	288
	
l3355:	
;CO2.c: 288: for( j = 0;j <= 7;j ++ )
	clrf	(main@j)
	movlw	(08h)
	subwf	(main@j),w
	skipc
	goto	u5191
	goto	u5190
u5191:
	goto	l3359
u5190:
	goto	l3369
	
l3357:	
	goto	l3369
	line	289
	
l161:	
	line	290
	
l3359:	
;CO2.c: 289: {
;CO2.c: 290: R1 = R1 << 1;
	movf	(main@R1),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(main@R1)
	line	291
	
l3361:	
;CO2.c: 291: if(CARRY == 1)
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfss	(32448/8)^0F80h,(32448)&7	;volatile
	goto	u5201
	goto	u5200
u5201:
	goto	l163
u5200:
	line	293
	
l3363:	
;CO2.c: 292: {
;CO2.c: 293: RD7 = 1;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bsf	(31775/8)^0F80h,(31775)&7	;volatile
	line	294
;CO2.c: 294: }
	goto	l164
	line	295
	
l163:	
	line	297
;CO2.c: 295: else
;CO2.c: 296: {
;CO2.c: 297: RD7 = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bcf	(31775/8)^0F80h,(31775)&7	;volatile
	line	298
	
l164:	
	line	299
;CO2.c: 298: }
;CO2.c: 299: RD6 = 1;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bsf	(31774/8)^0F80h,(31774)&7	;volatile
	line	300
;CO2.c: 300: _delay(5);
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop
	opt asmopt_on

	line	301
;CO2.c: 301: RD6 = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bcf	(31774/8)^0F80h,(31774)&7	;volatile
	line	302
;CO2.c: 302: RD7 = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bcf	(31775/8)^0F80h,(31775)&7	;volatile
	line	288
	
l3365:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@j),f
	
l3367:	
	movlw	(08h)
	subwf	(main@j),w
	skipc
	goto	u5211
	goto	u5210
u5211:
	goto	l3359
u5210:
	goto	l3369
	
l162:	
	line	304
	
l3369:	
;CO2.c: 303: }
;CO2.c: 304: i = 0;
	clrf	(main@i)
	line	305
	
l3371:	
;CO2.c: 305: bipopower = 0xAA;
	movlw	(0AAh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@bipopower)
	line	306
	
l3373:	
;CO2.c: 306: for(i = 0;i <= 7;i ++ )
	clrf	(main@i)
	movlw	(08h)
	subwf	(main@i),w
	skipc
	goto	u5221
	goto	u5220
u5221:
	goto	l3377
u5220:
	goto	l166
	
l3375:	
	goto	l166
	line	307
	
l165:	
	line	308
	
l3377:	
;CO2.c: 307: {
;CO2.c: 308: bipopower = bipopower << 1;
	movf	(main@bipopower),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(main@bipopower)
	line	309
	
l3379:	
;CO2.c: 309: if(CARRY == 1)
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfss	(32448/8)^0F80h,(32448)&7	;volatile
	goto	u5231
	goto	u5230
u5231:
	goto	l167
u5230:
	line	311
	
l3381:	
;CO2.c: 310: {
;CO2.c: 311: RD7 = 1;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bsf	(31775/8)^0F80h,(31775)&7	;volatile
	line	312
;CO2.c: 312: }
	goto	l168
	line	313
	
l167:	
	line	315
;CO2.c: 313: else
;CO2.c: 314: {
;CO2.c: 315: RD7 = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bcf	(31775/8)^0F80h,(31775)&7	;volatile
	line	316
	
l168:	
	line	317
;CO2.c: 316: }
;CO2.c: 317: RD6 = 1;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bsf	(31774/8)^0F80h,(31774)&7	;volatile
	line	318
;CO2.c: 318: _delay(5);
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop
	opt asmopt_on

	line	319
;CO2.c: 319: RD6 = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bcf	(31774/8)^0F80h,(31774)&7	;volatile
	line	320
;CO2.c: 320: RD7 = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bcf	(31775/8)^0F80h,(31775)&7	;volatile
	line	306
	
l3383:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	
l3385:	
	movlw	(08h)
	subwf	(main@i),w
	skipc
	goto	u5241
	goto	u5240
u5241:
	goto	l3377
u5240:
	
l166:	
	line	322
;CO2.c: 321: }
;CO2.c: 322: RD5 = 1;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bsf	(31773/8)^0F80h,(31773)&7	;volatile
	line	323
	
l3387:	
;CO2.c: 323: R1 = 0x11;
	movlw	(011h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@R1)
	line	325
	
l3389:	
;CO2.c: 325: if(bipomode == 0)
	movf	(main@bipomode),f
	skipz
	goto	u5251
	goto	u5250
u5251:
	goto	l3405
u5250:
	line	327
	
l3391:	
;CO2.c: 326: {
;CO2.c: 327: i = 0;
	clrf	(main@i)
	line	328
;CO2.c: 328: while(RA2 == 0)
	goto	l3403
	
l171:	
	line	330
;CO2.c: 329: {
;CO2.c: 330: while( i < 1 )
	goto	l3397
	
l173:	
	line	332
;CO2.c: 331: {
;CO2.c: 332: RD4 = 1;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bsf	(31772/8)^0F80h,(31772)&7	;volatile
	line	333
;CO2.c: 333: _delay(6);
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	line	334
	
l3393:	
;CO2.c: 334: i = i + 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	01h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@i)
	line	335
	
l3395:	
;CO2.c: 335: RD4 = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bcf	(31772/8)^0F80h,(31772)&7	;volatile
	goto	l3397
	line	336
	
l172:	
	line	330
	
l3397:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	skipz
	goto	u5260
	goto	l173
u5260:
	goto	l3399
	
l174:	
	line	337
	
l3399:	
;CO2.c: 336: }
;CO2.c: 337: _delay(80);
	opt asmopt_off
movlw	26
movwf	(??_main+0)+0,f
u6877:
decfsz	(??_main+0)+0,f
	goto	u6877
	nop
opt asmopt_on

	line	338
	
l3401:	
;CO2.c: 338: i = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	goto	l3403
	line	339
	
l170:	
	line	328
	
l3403:	
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfss	(31746/8)^0F80h,(31746)&7	;volatile
	goto	u5271
	goto	u5270
u5271:
	goto	l3397
u5270:
	goto	l3405
	
l175:	
	goto	l3405
	line	341
	
l169:	
	line	342
	
l3405:	
;CO2.c: 339: }
;CO2.c: 341: }
;CO2.c: 342: if( bipomode == 1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@bipomode),w
	xorlw	01h
	skipz
	goto	u5281
	goto	u5280
u5281:
	goto	l158
u5280:
	line	344
	
l3407:	
;CO2.c: 343: {
;CO2.c: 344: i = 0;
	clrf	(main@i)
	line	345
;CO2.c: 345: while(RA2 == 0)
	goto	l3419
	
l178:	
	line	347
;CO2.c: 346: {
;CO2.c: 347: while(i < 3 )
	goto	l3413
	
l180:	
	line	349
;CO2.c: 348: {
;CO2.c: 349: RD4 = 1;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bsf	(31772/8)^0F80h,(31772)&7	;volatile
	line	350
;CO2.c: 350: _delay(6);
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	line	351
	
l3409:	
;CO2.c: 351: i = i + 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	01h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@i)
	line	352
	
l3411:	
;CO2.c: 352: RD4 = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bcf	(31772/8)^0F80h,(31772)&7	;volatile
	goto	l3413
	line	353
	
l179:	
	line	347
	
l3413:	
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(main@i),w
	skipc
	goto	u5291
	goto	u5290
u5291:
	goto	l180
u5290:
	goto	l3415
	
l181:	
	line	354
	
l3415:	
;CO2.c: 353: }
;CO2.c: 354: _delay(50);
	opt asmopt_off
movlw	16
movwf	(??_main+0)+0,f
u6887:
decfsz	(??_main+0)+0,f
	goto	u6887
	nop
opt asmopt_on

	line	355
	
l3417:	
;CO2.c: 355: i = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	goto	l3419
	line	356
	
l177:	
	line	345
	
l3419:	
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfss	(31746/8)^0F80h,(31746)&7	;volatile
	goto	u5301
	goto	u5300
u5301:
	goto	l3413
u5300:
	goto	l158
	
l182:	
	goto	l158
	line	357
	
l176:	
	goto	l158
	line	358
	
l160:	
	line	360
	
l158:	
	line	361
;CO2.c: 356: }
;CO2.c: 357: }
;CO2.c: 358: }
;CO2.c: 360: }
;CO2.c: 361: if(RA3 == 0)
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfsc	(31747/8)^0F80h,(31747)&7	;volatile
	goto	u5311
	goto	u5310
u5311:
	goto	l3477
u5310:
	line	363
	
l3421:	
;CO2.c: 362: {
;CO2.c: 363: bipomode = 2;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@bipomode)
	line	365
	
l3423:	
;CO2.c: 365: RB2 = 1;;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bsf	(31754/8)^0F80h,(31754)&7	;volatile
	line	366
;CO2.c: 366: _delay(25);
	opt asmopt_off
movlw	8
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_main+0)+0,f
u6897:
decfsz	(??_main+0)+0,f
	goto	u6897
opt asmopt_on

	line	367
;CO2.c: 367: bipopower = 0x63;
	movlw	(063h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@bipopower)
	line	368
	
l3425:	
;CO2.c: 368: RD5 = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bcf	(31773/8)^0F80h,(31773)&7	;volatile
	line	369
;CO2.c: 369: _delay(25);
	opt asmopt_off
movlw	8
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_main+0)+0,f
u6907:
decfsz	(??_main+0)+0,f
	goto	u6907
opt asmopt_on

	line	371
	
l3427:	
;CO2.c: 371: j = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@j)
	line	372
	
l3429:	
;CO2.c: 372: for( j = 0;j <= 7;j ++ )
	clrf	(main@j)
	movlw	(08h)
	subwf	(main@j),w
	skipc
	goto	u5321
	goto	u5320
u5321:
	goto	l3433
u5320:
	goto	l3443
	
l3431:	
	goto	l3443
	line	373
	
l184:	
	line	374
	
l3433:	
;CO2.c: 373: {
;CO2.c: 374: R1 = R1 << 1;
	movf	(main@R1),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(main@R1)
	line	375
	
l3435:	
;CO2.c: 375: if(CARRY == 1)
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfss	(32448/8)^0F80h,(32448)&7	;volatile
	goto	u5331
	goto	u5330
u5331:
	goto	l186
u5330:
	line	377
	
l3437:	
;CO2.c: 376: {
;CO2.c: 377: RD7 = 1;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bsf	(31775/8)^0F80h,(31775)&7	;volatile
	line	378
;CO2.c: 378: }
	goto	l187
	line	379
	
l186:	
	line	381
;CO2.c: 379: else
;CO2.c: 380: {
;CO2.c: 381: RD7 = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bcf	(31775/8)^0F80h,(31775)&7	;volatile
	line	382
	
l187:	
	line	383
;CO2.c: 382: }
;CO2.c: 383: RD6 = 1;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bsf	(31774/8)^0F80h,(31774)&7	;volatile
	line	384
;CO2.c: 384: _delay(5);
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop
	opt asmopt_on

	line	385
;CO2.c: 385: RD6 = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bcf	(31774/8)^0F80h,(31774)&7	;volatile
	line	372
	
l3439:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@j),f
	
l3441:	
	movlw	(08h)
	subwf	(main@j),w
	skipc
	goto	u5341
	goto	u5340
u5341:
	goto	l3433
u5340:
	goto	l3443
	
l185:	
	line	388
	
l3443:	
;CO2.c: 387: }
;CO2.c: 388: i = 0;
	clrf	(main@i)
	line	389
	
l3445:	
;CO2.c: 389: bipopower = 0xAA;
	movlw	(0AAh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@bipopower)
	line	390
	
l3447:	
;CO2.c: 390: for(i = 0;i <= 7;i ++ )
	clrf	(main@i)
	movlw	(08h)
	subwf	(main@i),w
	skipc
	goto	u5351
	goto	u5350
u5351:
	goto	l3451
u5350:
	goto	l189
	
l3449:	
	goto	l189
	line	391
	
l188:	
	line	392
	
l3451:	
;CO2.c: 391: {
;CO2.c: 392: bipopower = bipopower << 1;
	movf	(main@bipopower),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(main@bipopower)
	line	393
	
l3453:	
;CO2.c: 393: if(CARRY == 1)
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfss	(32448/8)^0F80h,(32448)&7	;volatile
	goto	u5361
	goto	u5360
u5361:
	goto	l190
u5360:
	line	395
	
l3455:	
;CO2.c: 394: {
;CO2.c: 395: RD7 = 1;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bsf	(31775/8)^0F80h,(31775)&7	;volatile
	line	396
;CO2.c: 396: }
	goto	l191
	line	397
	
l190:	
	line	399
;CO2.c: 397: else
;CO2.c: 398: {
;CO2.c: 399: RD7 = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bcf	(31775/8)^0F80h,(31775)&7	;volatile
	line	400
	
l191:	
	line	401
;CO2.c: 400: }
;CO2.c: 401: RD6 = 1;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bsf	(31774/8)^0F80h,(31774)&7	;volatile
	line	402
;CO2.c: 402: _delay(5);
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop
	opt asmopt_on

	line	403
;CO2.c: 403: RD6 = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bcf	(31774/8)^0F80h,(31774)&7	;volatile
	line	390
	
l3457:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	
l3459:	
	movlw	(08h)
	subwf	(main@i),w
	skipc
	goto	u5371
	goto	u5370
u5371:
	goto	l3451
u5370:
	
l189:	
	line	406
;CO2.c: 405: }
;CO2.c: 406: RD5 = 1;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bsf	(31773/8)^0F80h,(31773)&7	;volatile
	line	407
;CO2.c: 407: RB2 = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bcf	(31754/8)^0F80h,(31754)&7	;volatile
	line	408
	
l3461:	
;CO2.c: 408: _delay(25);
	opt asmopt_off
movlw	8
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_main+0)+0,f
u6917:
decfsz	(??_main+0)+0,f
	goto	u6917
opt asmopt_on

	line	409
;CO2.c: 409: R1 = 0X11;
	movlw	(011h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@R1)
	line	410
	
l3463:	
;CO2.c: 410: i = 0;
	clrf	(main@i)
	line	411
;CO2.c: 411: while(RA3 == 0)
	goto	l3475
	
l193:	
	line	413
;CO2.c: 412: {
;CO2.c: 413: while(i < 3 )
	goto	l3469
	
l195:	
	line	415
;CO2.c: 414: {
;CO2.c: 415: RD4 = 1;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bsf	(31772/8)^0F80h,(31772)&7	;volatile
	line	416
;CO2.c: 416: _delay(6);
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	line	417
	
l3465:	
;CO2.c: 417: i = i + 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	01h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@i)
	line	418
	
l3467:	
;CO2.c: 418: RD4 = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bcf	(31772/8)^0F80h,(31772)&7	;volatile
	goto	l3469
	line	419
	
l194:	
	line	413
	
l3469:	
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(main@i),w
	skipc
	goto	u5381
	goto	u5380
u5381:
	goto	l195
u5380:
	goto	l3471
	
l196:	
	line	420
	
l3471:	
;CO2.c: 419: }
;CO2.c: 420: _delay(50);
	opt asmopt_off
movlw	16
movwf	(??_main+0)+0,f
u6927:
decfsz	(??_main+0)+0,f
	goto	u6927
	nop
opt asmopt_on

	line	421
	
l3473:	
;CO2.c: 421: i = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	goto	l3475
	line	422
	
l192:	
	line	411
	
l3475:	
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfss	(31747/8)^0F80h,(31747)&7	;volatile
	goto	u5391
	goto	u5390
u5391:
	goto	l3469
u5390:
	goto	l3477
	
l197:	
	goto	l3477
	line	424
	
l183:	
	line	428
	
l3477:	
;CO2.c: 422: }
;CO2.c: 424: }
;CO2.c: 428: PORTD = PORTD & 0X0F;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	movf	(3971)^0F80h,w	;volatile
	andlw	0Fh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	movwf	(3971)^0F80h	;volatile
	line	429
;CO2.c: 429: PORTC = PORTC & 0x7F;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	movf	(3970)^0F80h,w	;volatile
	andlw	07Fh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	movwf	(3970)^0F80h	;volatile
	line	431
	
l3479:	
;CO2.c: 431: if (( PORTC == 0x7F ) &&( PORTD == 0x0F))
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	movf	(3970)^0F80h,w	;volatile
	xorlw	07Fh
	skipz
	goto	u5401
	goto	u5400
u5401:
	goto	l3485
u5400:
	
l3481:	
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	movf	(3971)^0F80h,w	;volatile
	xorlw	0Fh
	skipz
	goto	u5411
	goto	u5410
u5411:
	goto	l3485
u5410:
	line	434
	
l3483:	
;CO2.c: 432: {
;CO2.c: 433: {
;CO2.c: 434: cnt = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@cnt)
	goto	l3485
	line	436
	
l198:	
	line	437
	
l3485:	
;CO2.c: 435: }
;CO2.c: 436: }
;CO2.c: 437: if(( RC0 == 0 ) && ( cnt == 0 ))
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfsc	(31760/8)^0F80h,(31760)&7	;volatile
	goto	u5421
	goto	u5420
u5421:
	goto	l199
u5420:
	
l3487:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@cnt),f
	skipz
	goto	u5431
	goto	u5430
u5431:
	goto	l199
u5430:
	line	439
	
l3489:	
;CO2.c: 438: {
;CO2.c: 439: for (debounce = 0; debounce <= 99; debounce ++)
	clrf	(main@debounce)
	
l3491:	
	movlw	(064h)
	subwf	(main@debounce),w
	skipc
	goto	u5441
	goto	u5440
u5441:
	goto	l3495
u5440:
	goto	l199
	
l3493:	
	goto	l199
	line	440
	
l200:	
	line	441
	
l3495:	
;CO2.c: 440: {
;CO2.c: 441: _delay(250);
	opt asmopt_off
movlw	83
movwf	(??_main+0)+0,f
u6937:
decfsz	(??_main+0)+0,f
	goto	u6937
opt asmopt_on

	line	439
	
l3497:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@debounce),f
	
l3499:	
	movlw	(064h)
	subwf	(main@debounce),w
	skipc
	goto	u5451
	goto	u5450
u5451:
	goto	l3495
u5450:
	goto	l199
	
l201:	
	line	443
	
l199:	
	line	444
;CO2.c: 442: }
;CO2.c: 443: }
;CO2.c: 444: if( RC0 == 0 )
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfsc	(31760/8)^0F80h,(31760)&7	;volatile
	goto	u5461
	goto	u5460
u5461:
	goto	l202
u5460:
	line	446
	
l3501:	
;CO2.c: 445: {
;CO2.c: 446: if( progno < 99 )
	movlw	(063h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(main@progno),w
	skipnc
	goto	u5471
	goto	u5470
u5471:
	goto	l3517
u5470:
	line	448
	
l3503:	
;CO2.c: 447: {
;CO2.c: 448: progno = progno + 1;
	movf	(main@progno),w
	addlw	01h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@progno)
	line	449
	
l3505:	
;CO2.c: 449: tens = progno / 10;
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(main@progno),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(___awdiv@dividend)
	movf	1+(??_main+0)+0,w
	movwf	(___awdiv@dividend+1)
	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	movwf	(??_main+2)+0
	movf	(??_main+2)+0,w
	movwf	(main@tens)
	line	450
	
l3507:	
;CO2.c: 450: tens = tens << 4;
	movf	(main@tens),w
	movwf	(??_main+0)+0
	movlw	(04h)-1
u5485:
	clrc
	rlf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u5485
	clrc
	rlf	(??_main+0)+0,w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(main@tens)
	line	451
	
l3509:	
;CO2.c: 451: values[0] = tens;
	movf	(main@tens),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_values)	;volatile
	line	452
	
l3511:	
;CO2.c: 452: units = progno % 10;
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	movf	(main@progno),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(___awmod@dividend)
	movf	1+(??_main+0)+0,w
	movwf	(___awmod@dividend+1)
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	movwf	(??_main+2)+0
	movf	(??_main+2)+0,w
	movwf	(main@units)
	line	453
	
l3513:	
;CO2.c: 453: units = units << 4;
	movf	(main@units),w
	movwf	(??_main+0)+0
	movlw	(04h)-1
u5495:
	clrc
	rlf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u5495
	clrc
	rlf	(??_main+0)+0,w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(main@units)
	line	454
	
l3515:	
;CO2.c: 454: values[1] = units;
	movf	(main@units),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_values)+01h	;volatile
	goto	l3517
	line	455
	
l203:	
	line	456
	
l3517:	
;CO2.c: 455: }
;CO2.c: 456: if(cnt == 0)
	movf	(main@cnt),f
	skipz
	goto	u5501
	goto	u5500
u5501:
	goto	l3533
u5500:
	line	458
	
l3519:	
;CO2.c: 457: {
;CO2.c: 458: for (debounce = 0; debounce <= 200; debounce ++)
	clrf	(main@debounce)
	
l3521:	
	movlw	(0C9h)
	subwf	(main@debounce),w
	skipc
	goto	u5511
	goto	u5510
u5511:
	goto	l3525
u5510:
	goto	l3531
	
l3523:	
	goto	l3531
	line	459
	
l205:	
	line	460
	
l3525:	
;CO2.c: 459: {
;CO2.c: 460: _delay(20000);
	opt asmopt_off
movlw	26
movwf	((??_main+0)+0+1),f
	movlw	248
movwf	((??_main+0)+0),f
u6947:
	decfsz	((??_main+0)+0),f
	goto	u6947
	decfsz	((??_main+0)+0+1),f
	goto	u6947
	nop
opt asmopt_on

	line	458
	
l3527:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@debounce),f
	
l3529:	
	movlw	(0C9h)
	subwf	(main@debounce),w
	skipc
	goto	u5521
	goto	u5520
u5521:
	goto	l3525
u5520:
	goto	l3531
	
l206:	
	line	462
	
l3531:	
;CO2.c: 461: }
;CO2.c: 462: cnt = cnt + 1;
	movf	(main@cnt),w
	addlw	01h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@cnt)
	line	463
;CO2.c: 463: }
	goto	l202
	line	464
	
l204:	
	line	466
	
l3533:	
;CO2.c: 464: else
;CO2.c: 465: {
;CO2.c: 466: for (debounce = 0; debounce <= 100; debounce ++)
	clrf	(main@debounce)
	
l3535:	
	movlw	(065h)
	subwf	(main@debounce),w
	skipc
	goto	u5531
	goto	u5530
u5531:
	goto	l3539
u5530:
	goto	l202
	
l3537:	
	goto	l202
	line	467
	
l208:	
	line	468
	
l3539:	
;CO2.c: 467: {
;CO2.c: 468: _delay(3000);
	opt asmopt_off
movlw	4
movwf	((??_main+0)+0+1),f
	movlw	228
movwf	((??_main+0)+0),f
u6957:
	decfsz	((??_main+0)+0),f
	goto	u6957
	decfsz	((??_main+0)+0+1),f
	goto	u6957
	nop
opt asmopt_on

	line	466
	
l3541:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@debounce),f
	
l3543:	
	movlw	(065h)
	subwf	(main@debounce),w
	skipc
	goto	u5541
	goto	u5540
u5541:
	goto	l3539
u5540:
	goto	l202
	
l209:	
	goto	l202
	line	470
	
l207:	
	line	474
	
l202:	
	line	475
;CO2.c: 469: }
;CO2.c: 470: }
;CO2.c: 474: }
;CO2.c: 475: if(( RC1 == 0 ) && ( cnt == 0 ))
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfsc	(31761/8)^0F80h,(31761)&7	;volatile
	goto	u5551
	goto	u5550
u5551:
	goto	l210
u5550:
	
l3545:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@cnt),f
	skipz
	goto	u5561
	goto	u5560
u5561:
	goto	l210
u5560:
	line	478
	
l3547:	
;CO2.c: 476: {
;CO2.c: 478: for (debounce = 0; debounce <= 99; debounce ++)
	clrf	(main@debounce)
	
l3549:	
	movlw	(064h)
	subwf	(main@debounce),w
	skipc
	goto	u5571
	goto	u5570
u5571:
	goto	l3553
u5570:
	goto	l210
	
l3551:	
	goto	l210
	line	479
	
l211:	
	line	480
	
l3553:	
;CO2.c: 479: {
;CO2.c: 480: _delay(250);
	opt asmopt_off
movlw	83
movwf	(??_main+0)+0,f
u6967:
decfsz	(??_main+0)+0,f
	goto	u6967
opt asmopt_on

	line	478
	
l3555:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@debounce),f
	
l3557:	
	movlw	(064h)
	subwf	(main@debounce),w
	skipc
	goto	u5581
	goto	u5580
u5581:
	goto	l3553
u5580:
	goto	l210
	
l212:	
	line	482
	
l210:	
	line	483
;CO2.c: 481: }
;CO2.c: 482: }
;CO2.c: 483: if( RC1 == 0 )
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfsc	(31761/8)^0F80h,(31761)&7	;volatile
	goto	u5591
	goto	u5590
u5591:
	goto	l213
u5590:
	line	485
	
l3559:	
;CO2.c: 484: {
;CO2.c: 485: if( progno > 0 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@progno),w
	skipz
	goto	u5600
	goto	l3575
u5600:
	line	487
	
l3561:	
;CO2.c: 486: {
;CO2.c: 487: progno = progno - 1;
	movf	(main@progno),w
	addlw	0FFh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@progno)
	line	488
	
l3563:	
;CO2.c: 488: tens = progno / 10;
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(main@progno),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(___awdiv@dividend)
	movf	1+(??_main+0)+0,w
	movwf	(___awdiv@dividend+1)
	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	movwf	(??_main+2)+0
	movf	(??_main+2)+0,w
	movwf	(main@tens)
	line	489
	
l3565:	
;CO2.c: 489: tens = tens << 4;
	movf	(main@tens),w
	movwf	(??_main+0)+0
	movlw	(04h)-1
u5615:
	clrc
	rlf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u5615
	clrc
	rlf	(??_main+0)+0,w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(main@tens)
	line	490
	
l3567:	
;CO2.c: 490: values[0] = tens;
	movf	(main@tens),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_values)	;volatile
	line	491
	
l3569:	
;CO2.c: 491: units = progno % 10;
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	movf	(main@progno),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(___awmod@dividend)
	movf	1+(??_main+0)+0,w
	movwf	(___awmod@dividend+1)
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	movwf	(??_main+2)+0
	movf	(??_main+2)+0,w
	movwf	(main@units)
	line	492
	
l3571:	
;CO2.c: 492: units = units << 4;
	movf	(main@units),w
	movwf	(??_main+0)+0
	movlw	(04h)-1
u5625:
	clrc
	rlf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u5625
	clrc
	rlf	(??_main+0)+0,w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(main@units)
	line	493
	
l3573:	
;CO2.c: 493: values[1] = units;
	movf	(main@units),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_values)+01h	;volatile
	goto	l3575
	line	494
	
l214:	
	line	495
	
l3575:	
;CO2.c: 494: }
;CO2.c: 495: if(cnt == 0)
	movf	(main@cnt),f
	skipz
	goto	u5631
	goto	u5630
u5631:
	goto	l3591
u5630:
	line	497
	
l3577:	
;CO2.c: 496: {
;CO2.c: 497: for (debounce = 0; debounce <= 200; debounce ++)
	clrf	(main@debounce)
	
l3579:	
	movlw	(0C9h)
	subwf	(main@debounce),w
	skipc
	goto	u5641
	goto	u5640
u5641:
	goto	l3583
u5640:
	goto	l3589
	
l3581:	
	goto	l3589
	line	498
	
l216:	
	line	499
	
l3583:	
;CO2.c: 498: {
;CO2.c: 499: _delay(20000);
	opt asmopt_off
movlw	26
movwf	((??_main+0)+0+1),f
	movlw	248
movwf	((??_main+0)+0),f
u6977:
	decfsz	((??_main+0)+0),f
	goto	u6977
	decfsz	((??_main+0)+0+1),f
	goto	u6977
	nop
opt asmopt_on

	line	497
	
l3585:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@debounce),f
	
l3587:	
	movlw	(0C9h)
	subwf	(main@debounce),w
	skipc
	goto	u5651
	goto	u5650
u5651:
	goto	l3583
u5650:
	goto	l3589
	
l217:	
	line	501
	
l3589:	
;CO2.c: 500: }
;CO2.c: 501: cnt = cnt + 1;
	movf	(main@cnt),w
	addlw	01h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@cnt)
	line	502
;CO2.c: 502: }
	goto	l213
	line	503
	
l215:	
	line	506
	
l3591:	
;CO2.c: 503: else
;CO2.c: 504: {
;CO2.c: 506: for (debounce = 0; debounce <= 100; debounce ++)
	clrf	(main@debounce)
	
l3593:	
	movlw	(065h)
	subwf	(main@debounce),w
	skipc
	goto	u5661
	goto	u5660
u5661:
	goto	l3597
u5660:
	goto	l213
	
l3595:	
	goto	l213
	line	507
	
l219:	
	line	508
	
l3597:	
;CO2.c: 507: {
;CO2.c: 508: _delay(3000);
	opt asmopt_off
movlw	4
movwf	((??_main+0)+0+1),f
	movlw	228
movwf	((??_main+0)+0),f
u6987:
	decfsz	((??_main+0)+0),f
	goto	u6987
	decfsz	((??_main+0)+0+1),f
	goto	u6987
	nop
opt asmopt_on

	line	506
	
l3599:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@debounce),f
	
l3601:	
	movlw	(065h)
	subwf	(main@debounce),w
	skipc
	goto	u5671
	goto	u5670
u5671:
	goto	l3597
u5670:
	goto	l213
	
l220:	
	goto	l213
	line	510
	
l218:	
	line	512
	
l213:	
	line	513
;CO2.c: 509: }
;CO2.c: 510: }
;CO2.c: 512: }
;CO2.c: 513: if(( RC2 == 0 ) && ( cnt == 0 ))
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfsc	(31762/8)^0F80h,(31762)&7	;volatile
	goto	u5681
	goto	u5680
u5681:
	goto	l221
u5680:
	
l3603:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@cnt),f
	skipz
	goto	u5691
	goto	u5690
u5691:
	goto	l221
u5690:
	line	515
	
l3605:	
;CO2.c: 514: {
;CO2.c: 515: for (debounce = 0; debounce <= 99; debounce ++)
	clrf	(main@debounce)
	
l3607:	
	movlw	(064h)
	subwf	(main@debounce),w
	skipc
	goto	u5701
	goto	u5700
u5701:
	goto	l3611
u5700:
	goto	l221
	
l3609:	
	goto	l221
	line	516
	
l222:	
	line	517
	
l3611:	
;CO2.c: 516: {
;CO2.c: 517: _delay(250);
	opt asmopt_off
movlw	83
movwf	(??_main+0)+0,f
u6997:
decfsz	(??_main+0)+0,f
	goto	u6997
opt asmopt_on

	line	515
	
l3613:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@debounce),f
	
l3615:	
	movlw	(064h)
	subwf	(main@debounce),w
	skipc
	goto	u5711
	goto	u5710
u5711:
	goto	l3611
u5710:
	goto	l221
	
l223:	
	line	520
	
l221:	
	line	522
;CO2.c: 518: }
;CO2.c: 520: }
;CO2.c: 522: if( RC2 == 0 )
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfsc	(31762/8)^0F80h,(31762)&7	;volatile
	goto	u5721
	goto	u5720
u5721:
	goto	l224
u5720:
	line	525
	
l3617:	
;CO2.c: 523: {
;CO2.c: 525: if( cutpower < 400 )
	movlw	high(0190h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(main@cutpower+1),w
	movlw	low(0190h)
	skipnz
	subwf	(main@cutpower),w
	skipnc
	goto	u5731
	goto	u5730
u5731:
	goto	l225
u5730:
	line	527
	
l3619:	
;CO2.c: 526: {
;CO2.c: 527: cutpower = cutpower + 1;
	movf	(main@cutpower),w
	addlw	low(01h)
	movwf	(main@cutpower)
	movf	(main@cutpower+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(main@cutpower)
	line	528
	
l3621:	
;CO2.c: 528: hundreds = cutpower / 100;
	movlw	low(064h)
	movwf	(___lwdiv@divisor)
	movlw	high(064h)
	movwf	((___lwdiv@divisor))+1
	movf	(main@cutpower+1),w
	clrf	(___lwdiv@dividend+1)
	addwf	(___lwdiv@dividend+1)
	movf	(main@cutpower),w
	clrf	(___lwdiv@dividend)
	addwf	(___lwdiv@dividend)

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@hundreds)
	line	529
	
l3623:	
;CO2.c: 529: temp = (cutpower - ( hundreds * 100 ));
	movlw	(064h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(main@hundreds),w
	fcall	___bmul
	xorlw	0ffh
	addlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@cutpower),w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(main@temp)
	line	530
	
l3625:	
;CO2.c: 530: units = temp % 10;
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	movf	(main@temp),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(___awmod@dividend)
	movf	1+(??_main+0)+0,w
	movwf	(___awmod@dividend+1)
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	movwf	(??_main+2)+0
	movf	(??_main+2)+0,w
	movwf	(main@units)
	line	531
	
l3627:	
;CO2.c: 531: units = units << 4;
	movf	(main@units),w
	movwf	(??_main+0)+0
	movlw	(04h)-1
u5745:
	clrc
	rlf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u5745
	clrc
	rlf	(??_main+0)+0,w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(main@units)
	line	532
	
l3629:	
;CO2.c: 532: values[8] = units;
	movf	(main@units),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_values)+08h	;volatile
	line	533
	
l3631:	
;CO2.c: 533: tens = temp / 10;
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(main@temp),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(___awdiv@dividend)
	movf	1+(??_main+0)+0,w
	movwf	(___awdiv@dividend+1)
	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	movwf	(??_main+2)+0
	movf	(??_main+2)+0,w
	movwf	(main@tens)
	line	534
	
l3633:	
;CO2.c: 534: tens = tens << 4;
	movf	(main@tens),w
	movwf	(??_main+0)+0
	movlw	(04h)-1
u5755:
	clrc
	rlf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u5755
	clrc
	rlf	(??_main+0)+0,w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(main@tens)
	line	535
	
l3635:	
;CO2.c: 535: values[3] = tens;
	movf	(main@tens),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_values)+03h	;volatile
	line	536
;CO2.c: 536: hundreds = hundreds << 4;
	movf	(main@hundreds),w
	movwf	(??_main+0)+0
	movlw	(04h)-1
u5765:
	clrc
	rlf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u5765
	clrc
	rlf	(??_main+0)+0,w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(main@hundreds)
	line	537
	
l3637:	
;CO2.c: 537: values[2] = hundreds;
	movf	(main@hundreds),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_values)+02h	;volatile
	line	538
	
l225:	
	line	539
;CO2.c: 538: }
;CO2.c: 539: if(cnt == 0)
	movf	(main@cnt),f
	skipz
	goto	u5771
	goto	u5770
u5771:
	goto	l3653
u5770:
	line	541
	
l3639:	
;CO2.c: 540: {
;CO2.c: 541: for (debounce = 0; debounce <= 200; debounce ++)
	clrf	(main@debounce)
	
l3641:	
	movlw	(0C9h)
	subwf	(main@debounce),w
	skipc
	goto	u5781
	goto	u5780
u5781:
	goto	l3645
u5780:
	goto	l3651
	
l3643:	
	goto	l3651
	line	542
	
l227:	
	line	543
	
l3645:	
;CO2.c: 542: {
;CO2.c: 543: _delay(20000);
	opt asmopt_off
movlw	26
movwf	((??_main+0)+0+1),f
	movlw	248
movwf	((??_main+0)+0),f
u7007:
	decfsz	((??_main+0)+0),f
	goto	u7007
	decfsz	((??_main+0)+0+1),f
	goto	u7007
	nop
opt asmopt_on

	line	541
	
l3647:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@debounce),f
	
l3649:	
	movlw	(0C9h)
	subwf	(main@debounce),w
	skipc
	goto	u5791
	goto	u5790
u5791:
	goto	l3645
u5790:
	goto	l3651
	
l228:	
	line	545
	
l3651:	
;CO2.c: 544: }
;CO2.c: 545: cnt = cnt + 1;
	movf	(main@cnt),w
	addlw	01h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@cnt)
	line	546
;CO2.c: 546: }
	goto	l224
	line	547
	
l226:	
	line	550
	
l3653:	
;CO2.c: 547: else
;CO2.c: 548: {
;CO2.c: 550: for (debounce = 0; debounce <= 100; debounce ++)
	clrf	(main@debounce)
	
l3655:	
	movlw	(065h)
	subwf	(main@debounce),w
	skipc
	goto	u5801
	goto	u5800
u5801:
	goto	l3659
u5800:
	goto	l224
	
l3657:	
	goto	l224
	line	551
	
l230:	
	line	552
	
l3659:	
;CO2.c: 551: {
;CO2.c: 552: _delay(3000);
	opt asmopt_off
movlw	4
movwf	((??_main+0)+0+1),f
	movlw	228
movwf	((??_main+0)+0),f
u7017:
	decfsz	((??_main+0)+0),f
	goto	u7017
	decfsz	((??_main+0)+0+1),f
	goto	u7017
	nop
opt asmopt_on

	line	550
	
l3661:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@debounce),f
	
l3663:	
	movlw	(065h)
	subwf	(main@debounce),w
	skipc
	goto	u5811
	goto	u5810
u5811:
	goto	l3659
u5810:
	goto	l224
	
l231:	
	goto	l224
	line	554
	
l229:	
	line	558
	
l224:	
	line	559
;CO2.c: 553: }
;CO2.c: 554: }
;CO2.c: 558: }
;CO2.c: 559: if(( RC3 == 0 ) && ( cnt == 0 ))
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfsc	(31763/8)^0F80h,(31763)&7	;volatile
	goto	u5821
	goto	u5820
u5821:
	goto	l232
u5820:
	
l3665:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@cnt),f
	skipz
	goto	u5831
	goto	u5830
u5831:
	goto	l232
u5830:
	line	562
	
l3667:	
;CO2.c: 560: {
;CO2.c: 562: for (debounce = 0; debounce <= 99; debounce ++)
	clrf	(main@debounce)
	
l3669:	
	movlw	(064h)
	subwf	(main@debounce),w
	skipc
	goto	u5841
	goto	u5840
u5841:
	goto	l3673
u5840:
	goto	l232
	
l3671:	
	goto	l232
	line	563
	
l233:	
	line	564
	
l3673:	
;CO2.c: 563: {
;CO2.c: 564: _delay(250);
	opt asmopt_off
movlw	83
movwf	(??_main+0)+0,f
u7027:
decfsz	(??_main+0)+0,f
	goto	u7027
opt asmopt_on

	line	562
	
l3675:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@debounce),f
	
l3677:	
	movlw	(064h)
	subwf	(main@debounce),w
	skipc
	goto	u5851
	goto	u5850
u5851:
	goto	l3673
u5850:
	goto	l232
	
l234:	
	line	566
	
l232:	
	line	567
;CO2.c: 565: }
;CO2.c: 566: }
;CO2.c: 567: if( RC3 == 0 )
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfsc	(31763/8)^0F80h,(31763)&7	;volatile
	goto	u5861
	goto	u5860
u5861:
	goto	l235
u5860:
	line	569
	
l3679:	
;CO2.c: 568: {
;CO2.c: 569: if( cutpower > 0 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@cutpower+1),w
	iorwf	(main@cutpower),w
	skipnz
	goto	u5871
	goto	u5870
u5871:
	goto	l236
u5870:
	line	571
	
l3681:	
;CO2.c: 570: {
;CO2.c: 571: cutpower = cutpower - 1;
	movf	(main@cutpower),w
	addlw	low(0FFFFh)
	movwf	(main@cutpower)
	movf	(main@cutpower+1),w
	skipnc
	addlw	1
	addlw	high(0FFFFh)
	movwf	1+(main@cutpower)
	line	572
	
l3683:	
;CO2.c: 572: hundreds = cutpower / 100;
	movlw	low(064h)
	movwf	(___lwdiv@divisor)
	movlw	high(064h)
	movwf	((___lwdiv@divisor))+1
	movf	(main@cutpower+1),w
	clrf	(___lwdiv@dividend+1)
	addwf	(___lwdiv@dividend+1)
	movf	(main@cutpower),w
	clrf	(___lwdiv@dividend)
	addwf	(___lwdiv@dividend)

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@hundreds)
	line	573
	
l3685:	
;CO2.c: 573: temp = (cutpower - ( hundreds * 100 ));
	movlw	(064h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(main@hundreds),w
	fcall	___bmul
	xorlw	0ffh
	addlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@cutpower),w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(main@temp)
	line	575
	
l3687:	
;CO2.c: 575: units = temp % 10;
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	movf	(main@temp),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(___awmod@dividend)
	movf	1+(??_main+0)+0,w
	movwf	(___awmod@dividend+1)
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	movwf	(??_main+2)+0
	movf	(??_main+2)+0,w
	movwf	(main@units)
	line	576
	
l3689:	
;CO2.c: 576: units = units << 4;
	movf	(main@units),w
	movwf	(??_main+0)+0
	movlw	(04h)-1
u5885:
	clrc
	rlf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u5885
	clrc
	rlf	(??_main+0)+0,w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(main@units)
	line	577
	
l3691:	
;CO2.c: 577: values[8] = units;
	movf	(main@units),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_values)+08h	;volatile
	line	578
	
l3693:	
;CO2.c: 578: tens = temp / 10;
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(main@temp),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(___awdiv@dividend)
	movf	1+(??_main+0)+0,w
	movwf	(___awdiv@dividend+1)
	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	movwf	(??_main+2)+0
	movf	(??_main+2)+0,w
	movwf	(main@tens)
	line	579
	
l3695:	
;CO2.c: 579: tens = tens << 4;
	movf	(main@tens),w
	movwf	(??_main+0)+0
	movlw	(04h)-1
u5895:
	clrc
	rlf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u5895
	clrc
	rlf	(??_main+0)+0,w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(main@tens)
	line	580
	
l3697:	
;CO2.c: 580: values[3] = tens;
	movf	(main@tens),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_values)+03h	;volatile
	line	581
;CO2.c: 581: hundreds = hundreds << 4;
	movf	(main@hundreds),w
	movwf	(??_main+0)+0
	movlw	(04h)-1
u5905:
	clrc
	rlf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u5905
	clrc
	rlf	(??_main+0)+0,w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(main@hundreds)
	line	582
	
l3699:	
;CO2.c: 582: values[2] = hundreds;
	movf	(main@hundreds),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_values)+02h	;volatile
	line	585
	
l236:	
	line	586
;CO2.c: 585: }
;CO2.c: 586: if(cnt == 0)
	movf	(main@cnt),f
	skipz
	goto	u5911
	goto	u5910
u5911:
	goto	l3715
u5910:
	line	588
	
l3701:	
;CO2.c: 587: {
;CO2.c: 588: for (debounce = 0; debounce <= 200; debounce ++)
	clrf	(main@debounce)
	
l3703:	
	movlw	(0C9h)
	subwf	(main@debounce),w
	skipc
	goto	u5921
	goto	u5920
u5921:
	goto	l3707
u5920:
	goto	l3713
	
l3705:	
	goto	l3713
	line	589
	
l238:	
	line	590
	
l3707:	
;CO2.c: 589: {
;CO2.c: 590: _delay(20000);
	opt asmopt_off
movlw	26
movwf	((??_main+0)+0+1),f
	movlw	248
movwf	((??_main+0)+0),f
u7037:
	decfsz	((??_main+0)+0),f
	goto	u7037
	decfsz	((??_main+0)+0+1),f
	goto	u7037
	nop
opt asmopt_on

	line	588
	
l3709:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@debounce),f
	
l3711:	
	movlw	(0C9h)
	subwf	(main@debounce),w
	skipc
	goto	u5931
	goto	u5930
u5931:
	goto	l3707
u5930:
	goto	l3713
	
l239:	
	line	592
	
l3713:	
;CO2.c: 591: }
;CO2.c: 592: cnt = cnt + 1;
	movf	(main@cnt),w
	addlw	01h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@cnt)
	line	593
;CO2.c: 593: }
	goto	l235
	line	594
	
l237:	
	line	597
	
l3715:	
;CO2.c: 594: else
;CO2.c: 595: {
;CO2.c: 597: for (debounce = 0; debounce <= 100; debounce ++)
	clrf	(main@debounce)
	
l3717:	
	movlw	(065h)
	subwf	(main@debounce),w
	skipc
	goto	u5941
	goto	u5940
u5941:
	goto	l3721
u5940:
	goto	l235
	
l3719:	
	goto	l235
	line	598
	
l241:	
	line	599
	
l3721:	
;CO2.c: 598: {
;CO2.c: 599: _delay(3000);
	opt asmopt_off
movlw	4
movwf	((??_main+0)+0+1),f
	movlw	228
movwf	((??_main+0)+0),f
u7047:
	decfsz	((??_main+0)+0),f
	goto	u7047
	decfsz	((??_main+0)+0+1),f
	goto	u7047
	nop
opt asmopt_on

	line	597
	
l3723:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@debounce),f
	
l3725:	
	movlw	(065h)
	subwf	(main@debounce),w
	skipc
	goto	u5951
	goto	u5950
u5951:
	goto	l3721
u5950:
	goto	l235
	
l242:	
	goto	l235
	line	601
	
l240:	
	line	606
	
l235:	
	line	607
;CO2.c: 600: }
;CO2.c: 601: }
;CO2.c: 606: }
;CO2.c: 607: if(( RD0 == 0 ) && ( cnt == 0 ))
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfsc	(31768/8)^0F80h,(31768)&7	;volatile
	goto	u5961
	goto	u5960
u5961:
	goto	l243
u5960:
	
l3727:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@cnt),f
	skipz
	goto	u5971
	goto	u5970
u5971:
	goto	l243
u5970:
	line	610
	
l3729:	
;CO2.c: 608: {
;CO2.c: 610: for (debounce = 0; debounce <= 99; debounce ++)
	clrf	(main@debounce)
	
l3731:	
	movlw	(064h)
	subwf	(main@debounce),w
	skipc
	goto	u5981
	goto	u5980
u5981:
	goto	l3735
u5980:
	goto	l243
	
l3733:	
	goto	l243
	line	611
	
l244:	
	line	612
	
l3735:	
;CO2.c: 611: {
;CO2.c: 612: _delay(250);
	opt asmopt_off
movlw	83
movwf	(??_main+0)+0,f
u7057:
decfsz	(??_main+0)+0,f
	goto	u7057
opt asmopt_on

	line	610
	
l3737:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@debounce),f
	
l3739:	
	movlw	(064h)
	subwf	(main@debounce),w
	skipc
	goto	u5991
	goto	u5990
u5991:
	goto	l3735
u5990:
	goto	l243
	
l245:	
	line	614
	
l243:	
	line	615
;CO2.c: 613: }
;CO2.c: 614: }
;CO2.c: 615: if( RD0 == 0 )
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfsc	(31768/8)^0F80h,(31768)&7	;volatile
	goto	u6001
	goto	u6000
u6001:
	goto	l246
u6000:
	line	617
	
l3741:	
;CO2.c: 616: {
;CO2.c: 617: cutmode = cutmode + 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@cutmode),w
	addlw	01h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@cutmode)
	line	618
	
l3743:	
;CO2.c: 618: if( cutmode == 0x00 )
	movf	(main@cutmode),f
	skipz
	goto	u6011
	goto	u6010
u6011:
	goto	l247
u6010:
	line	620
	
l3745:	
;CO2.c: 619: {
;CO2.c: 620: values[5] = 0x70;
	movlw	(070h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_values)+05h	;volatile
	line	621
;CO2.c: 621: _delay(25000);
	opt asmopt_off
movlw	33
movwf	((??_main+0)+0+1),f
	movlw	118
movwf	((??_main+0)+0),f
u7067:
	decfsz	((??_main+0)+0),f
	goto	u7067
	decfsz	((??_main+0)+0+1),f
	goto	u7067
	nop
opt asmopt_on

	line	622
	
l247:	
	line	623
;CO2.c: 622: }
;CO2.c: 623: if( cutmode == 0x01 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@cutmode),w
	xorlw	01h
	skipz
	goto	u6021
	goto	u6020
u6021:
	goto	l248
u6020:
	line	626
	
l3747:	
;CO2.c: 624: {
;CO2.c: 626: values[5] = 0x40;
	movlw	(040h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_values)+05h	;volatile
	line	627
;CO2.c: 627: _delay(25000);
	opt asmopt_off
movlw	33
movwf	((??_main+0)+0+1),f
	movlw	118
movwf	((??_main+0)+0),f
u7077:
	decfsz	((??_main+0)+0),f
	goto	u7077
	decfsz	((??_main+0)+0+1),f
	goto	u7077
	nop
opt asmopt_on

	line	628
	
l248:	
	line	629
;CO2.c: 628: }
;CO2.c: 629: if( cutmode == 0x02 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@cutmode),w
	xorlw	02h
	skipz
	goto	u6031
	goto	u6030
u6031:
	goto	l249
u6030:
	line	631
	
l3749:	
;CO2.c: 630: {
;CO2.c: 631: values[5] = 0xF0;
	movlw	(0F0h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_values)+05h	;volatile
	line	632
;CO2.c: 632: _delay(25000);
	opt asmopt_off
movlw	33
movwf	((??_main+0)+0+1),f
	movlw	118
movwf	((??_main+0)+0),f
u7087:
	decfsz	((??_main+0)+0),f
	goto	u7087
	decfsz	((??_main+0)+0+1),f
	goto	u7087
	nop
opt asmopt_on

	line	633
	
l249:	
	line	635
;CO2.c: 633: }
;CO2.c: 635: if( cutmode ==0x03 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@cutmode),w
	xorlw	03h
	skipz
	goto	u6041
	goto	u6040
u6041:
	goto	l250
u6040:
	line	637
	
l3751:	
;CO2.c: 636: {
;CO2.c: 637: values[4] = 0x70;
	movlw	(070h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_values)+04h	;volatile
	line	638
;CO2.c: 638: _delay(25000);
	opt asmopt_off
movlw	33
movwf	((??_main+0)+0+1),f
	movlw	118
movwf	((??_main+0)+0),f
u7097:
	decfsz	((??_main+0)+0),f
	goto	u7097
	decfsz	((??_main+0)+0+1),f
	goto	u7097
	nop
opt asmopt_on

	line	639
	
l250:	
	line	640
;CO2.c: 639: }
;CO2.c: 640: if(cutmode ==0x04)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@cutmode),w
	xorlw	04h
	skipz
	goto	u6051
	goto	u6050
u6051:
	goto	l3755
u6050:
	line	642
	
l3753:	
;CO2.c: 641: {
;CO2.c: 642: cutmode = 0xFF;
	movlw	(0FFh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@cutmode)
	line	643
;CO2.c: 643: _delay(25000);
	opt asmopt_off
movlw	33
movwf	((??_main+0)+0+1),f
	movlw	118
movwf	((??_main+0)+0),f
u7107:
	decfsz	((??_main+0)+0),f
	goto	u7107
	decfsz	((??_main+0)+0+1),f
	goto	u7107
	nop
opt asmopt_on

	goto	l3755
	line	644
	
l251:	
	line	646
	
l3755:	
;CO2.c: 644: }
;CO2.c: 646: for (debounce = 0; debounce <= 200; debounce ++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@debounce)
	
l3757:	
	movlw	(0C9h)
	subwf	(main@debounce),w
	skipc
	goto	u6061
	goto	u6060
u6061:
	goto	l3761
u6060:
	goto	l246
	
l3759:	
	goto	l246
	line	647
	
l252:	
	line	648
	
l3761:	
;CO2.c: 647: { {
;CO2.c: 648: _delay(25000);
	opt asmopt_off
movlw	33
movwf	((??_main+0)+0+1),f
	movlw	118
movwf	((??_main+0)+0),f
u7117:
	decfsz	((??_main+0)+0),f
	goto	u7117
	decfsz	((??_main+0)+0+1),f
	goto	u7117
	nop
opt asmopt_on

	line	646
	
l3763:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@debounce),f
	
l3765:	
	movlw	(0C9h)
	subwf	(main@debounce),w
	skipc
	goto	u6071
	goto	u6070
u6071:
	goto	l3761
u6070:
	goto	l246
	
l253:	
	line	652
	
l246:	
	line	653
;CO2.c: 649: }
;CO2.c: 650: }
;CO2.c: 652: }
;CO2.c: 653: if( RD1 == 0 )
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfsc	(31769/8)^0F80h,(31769)&7	;volatile
	goto	u6081
	goto	u6080
u6081:
	goto	l254
u6080:
	line	655
	
l3767:	
;CO2.c: 654: {
;CO2.c: 655: if( coagpower < 150 )
	movlw	(096h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(main@coagpower),w
	skipnc
	goto	u6091
	goto	u6090
u6091:
	goto	l255
u6090:
	line	658
	
l3769:	
;CO2.c: 656: {
;CO2.c: 658: coagpower = coagpower + 1;
	movf	(main@coagpower),w
	addlw	01h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@coagpower)
	line	659
	
l3771:	
;CO2.c: 659: hundreds = coagpower / 100;
	movlw	low(064h)
	movwf	(___awdiv@divisor)
	movlw	high(064h)
	movwf	((___awdiv@divisor))+1
	movf	(main@coagpower),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(___awdiv@dividend)
	movf	1+(??_main+0)+0,w
	movwf	(___awdiv@dividend+1)
	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	movwf	(??_main+2)+0
	movf	(??_main+2)+0,w
	movwf	(main@hundreds)
	line	660
	
l3773:	
;CO2.c: 660: temp = (coagpower - ( hundreds * 100 ));
	movlw	(064h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(main@hundreds),w
	fcall	___bmul
	xorlw	0ffh
	addlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@coagpower),w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(main@temp)
	line	661
	
l3775:	
;CO2.c: 661: units = temp % 10;
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	movf	(main@temp),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(___awmod@dividend)
	movf	1+(??_main+0)+0,w
	movwf	(___awmod@dividend+1)
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	movwf	(??_main+2)+0
	movf	(??_main+2)+0,w
	movwf	(main@units)
	line	662
	
l3777:	
;CO2.c: 662: units = units << 4;
	movf	(main@units),w
	movwf	(??_main+0)+0
	movlw	(04h)-1
u6105:
	clrc
	rlf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u6105
	clrc
	rlf	(??_main+0)+0,w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(main@units)
	line	663
	
l3779:	
;CO2.c: 663: values[12] = units;
	movf	(main@units),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_values)+0Ch	;volatile
	line	664
	
l3781:	
;CO2.c: 664: tens = temp / 10;
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(main@temp),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(___awdiv@dividend)
	movf	1+(??_main+0)+0,w
	movwf	(___awdiv@dividend+1)
	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	movwf	(??_main+2)+0
	movf	(??_main+2)+0,w
	movwf	(main@tens)
	line	665
	
l3783:	
;CO2.c: 665: tens = tens << 4;
	movf	(main@tens),w
	movwf	(??_main+0)+0
	movlw	(04h)-1
u6115:
	clrc
	rlf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u6115
	clrc
	rlf	(??_main+0)+0,w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(main@tens)
	line	666
	
l3785:	
;CO2.c: 666: values[10] = tens;
	movf	(main@tens),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_values)+0Ah	;volatile
	line	667
;CO2.c: 667: hundreds = hundreds << 4;
	movf	(main@hundreds),w
	movwf	(??_main+0)+0
	movlw	(04h)-1
u6125:
	clrc
	rlf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u6125
	clrc
	rlf	(??_main+0)+0,w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(main@hundreds)
	line	668
	
l3787:	
;CO2.c: 668: values[9] = hundreds;
	movf	(main@hundreds),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_values)+09h	;volatile
	line	669
	
l255:	
	line	670
;CO2.c: 669: }
;CO2.c: 670: if(cnt == 0)
	movf	(main@cnt),f
	skipz
	goto	u6131
	goto	u6130
u6131:
	goto	l3803
u6130:
	line	672
	
l3789:	
;CO2.c: 671: {
;CO2.c: 672: for (debounce = 0; debounce <= 200; debounce ++)
	clrf	(main@debounce)
	
l3791:	
	movlw	(0C9h)
	subwf	(main@debounce),w
	skipc
	goto	u6141
	goto	u6140
u6141:
	goto	l3795
u6140:
	goto	l3801
	
l3793:	
	goto	l3801
	line	673
	
l257:	
	line	674
	
l3795:	
;CO2.c: 673: {
;CO2.c: 674: _delay(20000);
	opt asmopt_off
movlw	26
movwf	((??_main+0)+0+1),f
	movlw	248
movwf	((??_main+0)+0),f
u7127:
	decfsz	((??_main+0)+0),f
	goto	u7127
	decfsz	((??_main+0)+0+1),f
	goto	u7127
	nop
opt asmopt_on

	line	672
	
l3797:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@debounce),f
	
l3799:	
	movlw	(0C9h)
	subwf	(main@debounce),w
	skipc
	goto	u6151
	goto	u6150
u6151:
	goto	l3795
u6150:
	goto	l3801
	
l258:	
	line	676
	
l3801:	
;CO2.c: 675: }
;CO2.c: 676: cnt = cnt + 1;
	movf	(main@cnt),w
	addlw	01h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@cnt)
	line	677
;CO2.c: 677: }
	goto	l254
	line	678
	
l256:	
	line	681
	
l3803:	
;CO2.c: 678: else
;CO2.c: 679: {
;CO2.c: 681: for (debounce = 0; debounce <= 100; debounce ++)
	clrf	(main@debounce)
	
l3805:	
	movlw	(065h)
	subwf	(main@debounce),w
	skipc
	goto	u6161
	goto	u6160
u6161:
	goto	l3809
u6160:
	goto	l254
	
l3807:	
	goto	l254
	line	682
	
l260:	
	line	683
	
l3809:	
;CO2.c: 682: {
;CO2.c: 683: _delay(3000);
	opt asmopt_off
movlw	4
movwf	((??_main+0)+0+1),f
	movlw	228
movwf	((??_main+0)+0),f
u7137:
	decfsz	((??_main+0)+0),f
	goto	u7137
	decfsz	((??_main+0)+0+1),f
	goto	u7137
	nop
opt asmopt_on

	line	681
	
l3811:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@debounce),f
	
l3813:	
	movlw	(065h)
	subwf	(main@debounce),w
	skipc
	goto	u6171
	goto	u6170
u6171:
	goto	l3809
u6170:
	goto	l254
	
l261:	
	goto	l254
	line	685
	
l259:	
	line	689
	
l254:	
	line	691
;CO2.c: 684: }
;CO2.c: 685: }
;CO2.c: 689: }
;CO2.c: 691: if(( RD2 == 0 ) && ( cnt == 0 ))
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfsc	(31770/8)^0F80h,(31770)&7	;volatile
	goto	u6181
	goto	u6180
u6181:
	goto	l262
u6180:
	
l3815:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@cnt),f
	skipz
	goto	u6191
	goto	u6190
u6191:
	goto	l262
u6190:
	line	693
	
l3817:	
;CO2.c: 692: {
;CO2.c: 693: for (debounce = 0; debounce <= 99; debounce ++)
	clrf	(main@debounce)
	
l3819:	
	movlw	(064h)
	subwf	(main@debounce),w
	skipc
	goto	u6201
	goto	u6200
u6201:
	goto	l3823
u6200:
	goto	l262
	
l3821:	
	goto	l262
	line	694
	
l263:	
	line	695
	
l3823:	
;CO2.c: 694: {
;CO2.c: 695: _delay(250);
	opt asmopt_off
movlw	83
movwf	(??_main+0)+0,f
u7147:
decfsz	(??_main+0)+0,f
	goto	u7147
opt asmopt_on

	line	693
	
l3825:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@debounce),f
	
l3827:	
	movlw	(064h)
	subwf	(main@debounce),w
	skipc
	goto	u6211
	goto	u6210
u6211:
	goto	l3823
u6210:
	goto	l262
	
l264:	
	line	697
	
l262:	
	line	698
;CO2.c: 696: }
;CO2.c: 697: }
;CO2.c: 698: if( RD2 == 0 )
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfsc	(31770/8)^0F80h,(31770)&7	;volatile
	goto	u6221
	goto	u6220
u6221:
	goto	l265
u6220:
	line	700
	
l3829:	
;CO2.c: 699: {
;CO2.c: 700: if( coagpower > 0 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@coagpower),w
	skipz
	goto	u6230
	goto	l3851
u6230:
	line	702
	
l3831:	
;CO2.c: 701: {
;CO2.c: 702: coagpower = coagpower - 1;
	movf	(main@coagpower),w
	addlw	0FFh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@coagpower)
	line	703
	
l3833:	
;CO2.c: 703: hundreds = coagpower / 100;
	movlw	low(064h)
	movwf	(___awdiv@divisor)
	movlw	high(064h)
	movwf	((___awdiv@divisor))+1
	movf	(main@coagpower),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(___awdiv@dividend)
	movf	1+(??_main+0)+0,w
	movwf	(___awdiv@dividend+1)
	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	movwf	(??_main+2)+0
	movf	(??_main+2)+0,w
	movwf	(main@hundreds)
	line	704
	
l3835:	
;CO2.c: 704: hundreds = hundreds << 4;
	movf	(main@hundreds),w
	movwf	(??_main+0)+0
	movlw	(04h)-1
u6245:
	clrc
	rlf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u6245
	clrc
	rlf	(??_main+0)+0,w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(main@hundreds)
	line	705
	
l3837:	
;CO2.c: 705: values[9] = hundreds;
	movf	(main@hundreds),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_values)+09h	;volatile
	line	706
	
l3839:	
;CO2.c: 706: temp = (coagpower - ( hundreds * 100 ));
	movlw	(064h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(main@hundreds),w
	fcall	___bmul
	xorlw	0ffh
	addlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@coagpower),w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(main@temp)
	line	707
	
l3841:	
;CO2.c: 707: tens = temp / 10;
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(main@temp),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(___awdiv@dividend)
	movf	1+(??_main+0)+0,w
	movwf	(___awdiv@dividend+1)
	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	movwf	(??_main+2)+0
	movf	(??_main+2)+0,w
	movwf	(main@tens)
	line	708
	
l3843:	
;CO2.c: 708: tens = tens << 4;
	movf	(main@tens),w
	movwf	(??_main+0)+0
	movlw	(04h)-1
u6255:
	clrc
	rlf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u6255
	clrc
	rlf	(??_main+0)+0,w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(main@tens)
	line	709
	
l3845:	
;CO2.c: 709: values[10] = tens;
	movf	(main@tens),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_values)+0Ah	;volatile
	line	710
	
l3847:	
;CO2.c: 710: units = temp % 10;
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	movf	(main@temp),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(___awmod@dividend)
	movf	1+(??_main+0)+0,w
	movwf	(___awmod@dividend+1)
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	movwf	(??_main+2)+0
	movf	(??_main+2)+0,w
	movwf	(main@units)
	line	711
;CO2.c: 711: units = units << 4;
	movf	(main@units),w
	movwf	(??_main+0)+0
	movlw	(04h)-1
u6265:
	clrc
	rlf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u6265
	clrc
	rlf	(??_main+0)+0,w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(main@units)
	line	712
	
l3849:	
;CO2.c: 712: values[12] = units;
	movf	(main@units),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_values)+0Ch	;volatile
	goto	l3851
	line	713
	
l266:	
	line	714
	
l3851:	
;CO2.c: 713: }
;CO2.c: 714: if(cnt = 0)
	clrf	(main@cnt)
	goto	l3867
	line	716
	
l3853:	
;CO2.c: 715: {
;CO2.c: 716: for (debounce = 0; debounce <= 200; debounce ++)
	clrf	(main@debounce)
	
l3855:	
	movlw	(0C9h)
	subwf	(main@debounce),w
	skipc
	goto	u6271
	goto	u6270
u6271:
	goto	l3859
u6270:
	goto	l3865
	
l3857:	
	goto	l3865
	line	717
	
l268:	
	line	718
	
l3859:	
;CO2.c: 717: {
;CO2.c: 718: _delay(20000);
	opt asmopt_off
movlw	26
movwf	((??_main+0)+0+1),f
	movlw	248
movwf	((??_main+0)+0),f
u7157:
	decfsz	((??_main+0)+0),f
	goto	u7157
	decfsz	((??_main+0)+0+1),f
	goto	u7157
	nop
opt asmopt_on

	line	716
	
l3861:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@debounce),f
	
l3863:	
	movlw	(0C9h)
	subwf	(main@debounce),w
	skipc
	goto	u6281
	goto	u6280
u6281:
	goto	l3859
u6280:
	goto	l3865
	
l269:	
	line	720
	
l3865:	
;CO2.c: 719: }
;CO2.c: 720: cnt = cnt + 1;
	movf	(main@cnt),w
	addlw	01h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@cnt)
	line	721
;CO2.c: 721: }
	goto	l265
	line	722
	
l267:	
	line	725
	
l3867:	
;CO2.c: 722: else
;CO2.c: 723: {
;CO2.c: 725: for (debounce = 0; debounce <= 100; debounce ++)
	clrf	(main@debounce)
	
l3869:	
	movlw	(065h)
	subwf	(main@debounce),w
	skipc
	goto	u6291
	goto	u6290
u6291:
	goto	l3873
u6290:
	goto	l265
	
l3871:	
	goto	l265
	line	726
	
l271:	
	line	727
	
l3873:	
;CO2.c: 726: {
;CO2.c: 727: _delay(3000);
	opt asmopt_off
movlw	4
movwf	((??_main+0)+0+1),f
	movlw	228
movwf	((??_main+0)+0),f
u7167:
	decfsz	((??_main+0)+0),f
	goto	u7167
	decfsz	((??_main+0)+0+1),f
	goto	u7167
	nop
opt asmopt_on

	line	725
	
l3875:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@debounce),f
	
l3877:	
	movlw	(065h)
	subwf	(main@debounce),w
	skipc
	goto	u6301
	goto	u6300
u6301:
	goto	l3873
u6300:
	goto	l265
	
l272:	
	goto	l265
	line	729
	
l270:	
	line	730
	
l265:	
	line	734
;CO2.c: 728: }
;CO2.c: 729: }
;CO2.c: 730: }
;CO2.c: 734: if(( RD3 == 0 ) && ( cnt == 0 ))
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfsc	(31771/8)^0F80h,(31771)&7	;volatile
	goto	u6311
	goto	u6310
u6311:
	goto	l273
u6310:
	
l3879:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@cnt),f
	skipz
	goto	u6321
	goto	u6320
u6321:
	goto	l273
u6320:
	line	737
	
l3881:	
;CO2.c: 735: {
;CO2.c: 737: for (debounce = 0; debounce <= 200; debounce ++)
	clrf	(main@debounce)
	
l3883:	
	movlw	(0C9h)
	subwf	(main@debounce),w
	skipc
	goto	u6331
	goto	u6330
u6331:
	goto	l3887
u6330:
	goto	l273
	
l3885:	
	goto	l273
	line	738
	
l274:	
	line	739
	
l3887:	
;CO2.c: 738: {
;CO2.c: 739: _delay(25000);
	opt asmopt_off
movlw	33
movwf	((??_main+0)+0+1),f
	movlw	118
movwf	((??_main+0)+0),f
u7177:
	decfsz	((??_main+0)+0),f
	goto	u7177
	decfsz	((??_main+0)+0+1),f
	goto	u7177
	nop
opt asmopt_on

	line	737
	
l3889:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@debounce),f
	
l3891:	
	movlw	(0C9h)
	subwf	(main@debounce),w
	skipc
	goto	u6341
	goto	u6340
u6341:
	goto	l3887
u6340:
	goto	l273
	
l275:	
	line	741
	
l273:	
	line	742
;CO2.c: 740: }
;CO2.c: 741: }
;CO2.c: 742: if( RD3 == 0 )
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfsc	(31771/8)^0F80h,(31771)&7	;volatile
	goto	u6351
	goto	u6350
u6351:
	goto	l3905
u6350:
	line	744
	
l3893:	
;CO2.c: 743: {
;CO2.c: 744: coagmode = coagmode + 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@coagmode),w
	addlw	01h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@coagmode)
	line	746
	
l3895:	
;CO2.c: 746: if( coagmode == 0x00 )
	movf	(main@coagmode),f
	skipz
	goto	u6361
	goto	u6360
u6361:
	goto	l277
u6360:
	line	748
	
l3897:	
;CO2.c: 747: {
;CO2.c: 748: values[4] = 0x40;
	movlw	(040h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_values)+04h	;volatile
	line	749
;CO2.c: 749: _delay(25000);
	opt asmopt_off
movlw	33
movwf	((??_main+0)+0+1),f
	movlw	118
movwf	((??_main+0)+0),f
u7187:
	decfsz	((??_main+0)+0),f
	goto	u7187
	decfsz	((??_main+0)+0+1),f
	goto	u7187
	nop
opt asmopt_on

	line	750
	
l277:	
	line	751
;CO2.c: 750: }
;CO2.c: 751: if( coagmode == 0x01 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@coagmode),w
	xorlw	01h
	skipz
	goto	u6371
	goto	u6370
u6371:
	goto	l278
u6370:
	line	753
	
l3899:	
;CO2.c: 752: {
;CO2.c: 753: values[4] = 0xF0;
	movlw	(0F0h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_values)+04h	;volatile
	line	754
;CO2.c: 754: _delay(25000);
	opt asmopt_off
movlw	33
movwf	((??_main+0)+0+1),f
	movlw	118
movwf	((??_main+0)+0),f
u7197:
	decfsz	((??_main+0)+0),f
	goto	u7197
	decfsz	((??_main+0)+0+1),f
	goto	u7197
	nop
opt asmopt_on

	line	755
	
l278:	
	line	756
;CO2.c: 755: }
;CO2.c: 756: if( coagmode == 0x02 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@coagmode),w
	xorlw	02h
	skipz
	goto	u6381
	goto	u6380
u6381:
	goto	l279
u6380:
	line	758
	
l3901:	
;CO2.c: 757: {
;CO2.c: 758: values[11] = 0x70;
	movlw	(070h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_values)+0Bh	;volatile
	line	759
;CO2.c: 759: _delay(25000);
	opt asmopt_off
movlw	33
movwf	((??_main+0)+0+1),f
	movlw	118
movwf	((??_main+0)+0),f
u7207:
	decfsz	((??_main+0)+0),f
	goto	u7207
	decfsz	((??_main+0)+0+1),f
	goto	u7207
	nop
opt asmopt_on

	line	760
	
l279:	
	line	762
;CO2.c: 760: }
;CO2.c: 762: if( coagmode == 0x03 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@coagmode),w
	xorlw	03h
	skipz
	goto	u6391
	goto	u6390
u6391:
	goto	l3905
u6390:
	line	764
	
l3903:	
;CO2.c: 763: {
;CO2.c: 764: coagmode = 0xFF;
	movlw	(0FFh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@coagmode)
	line	765
;CO2.c: 765: _delay(25000);
	opt asmopt_off
movlw	33
movwf	((??_main+0)+0+1),f
	movlw	118
movwf	((??_main+0)+0),f
u7217:
	decfsz	((??_main+0)+0),f
	goto	u7217
	decfsz	((??_main+0)+0+1),f
	goto	u7217
	nop
opt asmopt_on

	goto	l3905
	line	766
	
l280:	
	goto	l3905
	line	769
	
l276:	
	line	770
	
l3905:	
;CO2.c: 766: }
;CO2.c: 769: }
;CO2.c: 770: if(( RC4 == 0 ) && ( cnt == 0 ))
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfsc	(31764/8)^0F80h,(31764)&7	;volatile
	goto	u6401
	goto	u6400
u6401:
	goto	l281
u6400:
	
l3907:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@cnt),f
	skipz
	goto	u6411
	goto	u6410
u6411:
	goto	l281
u6410:
	line	773
	
l3909:	
;CO2.c: 771: {
;CO2.c: 773: for (debounce = 0; debounce <= 99; debounce ++)
	clrf	(main@debounce)
	
l3911:	
	movlw	(064h)
	subwf	(main@debounce),w
	skipc
	goto	u6421
	goto	u6420
u6421:
	goto	l3915
u6420:
	goto	l281
	
l3913:	
	goto	l281
	line	774
	
l282:	
	line	775
	
l3915:	
;CO2.c: 774: {
;CO2.c: 775: _delay(250);
	opt asmopt_off
movlw	83
movwf	(??_main+0)+0,f
u7227:
decfsz	(??_main+0)+0,f
	goto	u7227
opt asmopt_on

	line	773
	
l3917:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@debounce),f
	
l3919:	
	movlw	(064h)
	subwf	(main@debounce),w
	skipc
	goto	u6431
	goto	u6430
u6431:
	goto	l3915
u6430:
	goto	l281
	
l283:	
	line	777
	
l281:	
	line	778
;CO2.c: 776: }
;CO2.c: 777: }
;CO2.c: 778: if( RC4 == 0 )
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfsc	(31764/8)^0F80h,(31764)&7	;volatile
	goto	u6441
	goto	u6440
u6441:
	goto	l284
u6440:
	line	780
	
l3921:	
;CO2.c: 779: {
;CO2.c: 780: if( bipopower < 99 )
	movlw	(063h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(main@bipopower),w
	skipnc
	goto	u6451
	goto	u6450
u6451:
	goto	l3937
u6450:
	line	782
	
l3923:	
;CO2.c: 781: {
;CO2.c: 782: bipopower = bipopower + 1;
	movf	(main@bipopower),w
	addlw	01h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@bipopower)
	line	783
	
l3925:	
;CO2.c: 783: tens = bipopower / 10;
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(main@bipopower),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(___awdiv@dividend)
	movf	1+(??_main+0)+0,w
	movwf	(___awdiv@dividend+1)
	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	movwf	(??_main+2)+0
	movf	(??_main+2)+0,w
	movwf	(main@tens)
	line	784
	
l3927:	
;CO2.c: 784: tens = tens << 4;
	movf	(main@tens),w
	movwf	(??_main+0)+0
	movlw	(04h)-1
u6465:
	clrc
	rlf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u6465
	clrc
	rlf	(??_main+0)+0,w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(main@tens)
	line	785
	
l3929:	
;CO2.c: 785: values[13] = tens;
	movf	(main@tens),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_values)+0Dh	;volatile
	line	786
	
l3931:	
;CO2.c: 786: units = bipopower % 10;
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	movf	(main@bipopower),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(___awmod@dividend)
	movf	1+(??_main+0)+0,w
	movwf	(___awmod@dividend+1)
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	movwf	(??_main+2)+0
	movf	(??_main+2)+0,w
	movwf	(main@units)
	line	787
	
l3933:	
;CO2.c: 787: units = units << 4;
	movf	(main@units),w
	movwf	(??_main+0)+0
	movlw	(04h)-1
u6475:
	clrc
	rlf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u6475
	clrc
	rlf	(??_main+0)+0,w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(main@units)
	line	788
	
l3935:	
;CO2.c: 788: values[6] = units;
	movf	(main@units),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_values)+06h	;volatile
	goto	l3937
	line	789
	
l285:	
	line	790
	
l3937:	
;CO2.c: 789: }
;CO2.c: 790: if(cnt == 0)
	movf	(main@cnt),f
	skipz
	goto	u6481
	goto	u6480
u6481:
	goto	l3953
u6480:
	line	792
	
l3939:	
;CO2.c: 791: {
;CO2.c: 792: for (debounce = 0; debounce <= 200; debounce ++)
	clrf	(main@debounce)
	
l3941:	
	movlw	(0C9h)
	subwf	(main@debounce),w
	skipc
	goto	u6491
	goto	u6490
u6491:
	goto	l3945
u6490:
	goto	l3951
	
l3943:	
	goto	l3951
	line	793
	
l287:	
	line	794
	
l3945:	
;CO2.c: 793: {
;CO2.c: 794: _delay(20000);
	opt asmopt_off
movlw	26
movwf	((??_main+0)+0+1),f
	movlw	248
movwf	((??_main+0)+0),f
u7237:
	decfsz	((??_main+0)+0),f
	goto	u7237
	decfsz	((??_main+0)+0+1),f
	goto	u7237
	nop
opt asmopt_on

	line	792
	
l3947:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@debounce),f
	
l3949:	
	movlw	(0C9h)
	subwf	(main@debounce),w
	skipc
	goto	u6501
	goto	u6500
u6501:
	goto	l3945
u6500:
	goto	l3951
	
l288:	
	line	796
	
l3951:	
;CO2.c: 795: }
;CO2.c: 796: cnt = cnt + 1;
	movf	(main@cnt),w
	addlw	01h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@cnt)
	line	797
;CO2.c: 797: }
	goto	l284
	line	798
	
l286:	
	line	801
	
l3953:	
;CO2.c: 798: else
;CO2.c: 799: {
;CO2.c: 801: for (debounce = 0; debounce <= 100; debounce ++)
	clrf	(main@debounce)
	
l3955:	
	movlw	(065h)
	subwf	(main@debounce),w
	skipc
	goto	u6511
	goto	u6510
u6511:
	goto	l3959
u6510:
	goto	l284
	
l3957:	
	goto	l284
	line	802
	
l290:	
	line	803
	
l3959:	
;CO2.c: 802: {
;CO2.c: 803: _delay(3000);
	opt asmopt_off
movlw	4
movwf	((??_main+0)+0+1),f
	movlw	228
movwf	((??_main+0)+0),f
u7247:
	decfsz	((??_main+0)+0),f
	goto	u7247
	decfsz	((??_main+0)+0+1),f
	goto	u7247
	nop
opt asmopt_on

	line	801
	
l3961:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@debounce),f
	
l3963:	
	movlw	(065h)
	subwf	(main@debounce),w
	skipc
	goto	u6521
	goto	u6520
u6521:
	goto	l3959
u6520:
	goto	l284
	
l291:	
	goto	l284
	line	805
	
l289:	
	line	809
	
l284:	
	line	810
;CO2.c: 804: }
;CO2.c: 805: }
;CO2.c: 809: }
;CO2.c: 810: if(( RC5 == 0 ) && ( cnt == 0 ))
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfsc	(31765/8)^0F80h,(31765)&7	;volatile
	goto	u6531
	goto	u6530
u6531:
	goto	l292
u6530:
	
l3965:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@cnt),f
	skipz
	goto	u6541
	goto	u6540
u6541:
	goto	l292
u6540:
	line	813
	
l3967:	
;CO2.c: 811: {
;CO2.c: 813: for (debounce = 0; debounce <= 99; debounce ++)
	clrf	(main@debounce)
	
l3969:	
	movlw	(064h)
	subwf	(main@debounce),w
	skipc
	goto	u6551
	goto	u6550
u6551:
	goto	l3973
u6550:
	goto	l292
	
l3971:	
	goto	l292
	line	814
	
l293:	
	line	815
	
l3973:	
;CO2.c: 814: {
;CO2.c: 815: _delay(250);
	opt asmopt_off
movlw	83
movwf	(??_main+0)+0,f
u7257:
decfsz	(??_main+0)+0,f
	goto	u7257
opt asmopt_on

	line	813
	
l3975:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@debounce),f
	
l3977:	
	movlw	(064h)
	subwf	(main@debounce),w
	skipc
	goto	u6561
	goto	u6560
u6561:
	goto	l3973
u6560:
	goto	l292
	
l294:	
	line	817
	
l292:	
	line	818
;CO2.c: 816: }
;CO2.c: 817: }
;CO2.c: 818: if( RC5 == 0 )
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfsc	(31765/8)^0F80h,(31765)&7	;volatile
	goto	u6571
	goto	u6570
u6571:
	goto	l295
u6570:
	line	820
	
l3979:	
;CO2.c: 819: {
;CO2.c: 820: if( bipopower > 0 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@bipopower),w
	skipz
	goto	u6580
	goto	l3995
u6580:
	line	822
	
l3981:	
;CO2.c: 821: {
;CO2.c: 822: bipopower = bipopower - 1;
	movf	(main@bipopower),w
	addlw	0FFh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@bipopower)
	line	823
	
l3983:	
;CO2.c: 823: tens = bipopower / 10;
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(main@bipopower),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(___awdiv@dividend)
	movf	1+(??_main+0)+0,w
	movwf	(___awdiv@dividend+1)
	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	movwf	(??_main+2)+0
	movf	(??_main+2)+0,w
	movwf	(main@tens)
	line	824
	
l3985:	
;CO2.c: 824: tens = tens << 4;
	movf	(main@tens),w
	movwf	(??_main+0)+0
	movlw	(04h)-1
u6595:
	clrc
	rlf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u6595
	clrc
	rlf	(??_main+0)+0,w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(main@tens)
	line	825
	
l3987:	
;CO2.c: 825: values[13] = tens;
	movf	(main@tens),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_values)+0Dh	;volatile
	line	826
	
l3989:	
;CO2.c: 826: units = bipopower % 10;
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	movf	(main@bipopower),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(___awmod@dividend)
	movf	1+(??_main+0)+0,w
	movwf	(___awmod@dividend+1)
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	movwf	(??_main+2)+0
	movf	(??_main+2)+0,w
	movwf	(main@units)
	line	827
	
l3991:	
;CO2.c: 827: units = units << 4;
	movf	(main@units),w
	movwf	(??_main+0)+0
	movlw	(04h)-1
u6605:
	clrc
	rlf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u6605
	clrc
	rlf	(??_main+0)+0,w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	(main@units)
	line	828
	
l3993:	
;CO2.c: 828: values[6] = units;
	movf	(main@units),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_values)+06h	;volatile
	goto	l3995
	line	829
	
l296:	
	line	830
	
l3995:	
;CO2.c: 829: }
;CO2.c: 830: if(cnt == 0)
	movf	(main@cnt),f
	skipz
	goto	u6611
	goto	u6610
u6611:
	goto	l4011
u6610:
	line	832
	
l3997:	
;CO2.c: 831: {
;CO2.c: 832: for (debounce = 0; debounce <= 200; debounce ++)
	clrf	(main@debounce)
	
l3999:	
	movlw	(0C9h)
	subwf	(main@debounce),w
	skipc
	goto	u6621
	goto	u6620
u6621:
	goto	l4003
u6620:
	goto	l4009
	
l4001:	
	goto	l4009
	line	833
	
l298:	
	line	834
	
l4003:	
;CO2.c: 833: {
;CO2.c: 834: _delay(20000);
	opt asmopt_off
movlw	26
movwf	((??_main+0)+0+1),f
	movlw	248
movwf	((??_main+0)+0),f
u7267:
	decfsz	((??_main+0)+0),f
	goto	u7267
	decfsz	((??_main+0)+0+1),f
	goto	u7267
	nop
opt asmopt_on

	line	832
	
l4005:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@debounce),f
	
l4007:	
	movlw	(0C9h)
	subwf	(main@debounce),w
	skipc
	goto	u6631
	goto	u6630
u6631:
	goto	l4003
u6630:
	goto	l4009
	
l299:	
	line	836
	
l4009:	
;CO2.c: 835: }
;CO2.c: 836: cnt = cnt + 1;
	movf	(main@cnt),w
	addlw	01h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@cnt)
	line	837
;CO2.c: 837: }
	goto	l295
	line	838
	
l297:	
	line	841
	
l4011:	
;CO2.c: 838: else
;CO2.c: 839: {
;CO2.c: 841: for (debounce = 0; debounce <= 100; debounce ++)
	clrf	(main@debounce)
	
l4013:	
	movlw	(065h)
	subwf	(main@debounce),w
	skipc
	goto	u6641
	goto	u6640
u6641:
	goto	l4017
u6640:
	goto	l295
	
l4015:	
	goto	l295
	line	842
	
l301:	
	line	843
	
l4017:	
;CO2.c: 842: {
;CO2.c: 843: _delay(3000);
	opt asmopt_off
movlw	4
movwf	((??_main+0)+0+1),f
	movlw	228
movwf	((??_main+0)+0),f
u7277:
	decfsz	((??_main+0)+0),f
	goto	u7277
	decfsz	((??_main+0)+0+1),f
	goto	u7277
	nop
opt asmopt_on

	line	841
	
l4019:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@debounce),f
	
l4021:	
	movlw	(065h)
	subwf	(main@debounce),w
	skipc
	goto	u6651
	goto	u6650
u6651:
	goto	l4017
u6650:
	goto	l295
	
l302:	
	goto	l295
	line	845
	
l300:	
	line	851
	
l295:	
	line	852
;CO2.c: 844: }
;CO2.c: 845: }
;CO2.c: 851: }
;CO2.c: 852: if(( RC6 == 0 ) && ( cnt == 0 ))
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfsc	(31766/8)^0F80h,(31766)&7	;volatile
	goto	u6661
	goto	u6660
u6661:
	goto	l303
u6660:
	
l4023:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@cnt),f
	skipz
	goto	u6671
	goto	u6670
u6671:
	goto	l303
u6670:
	line	855
	
l4025:	
;CO2.c: 853: {
;CO2.c: 855: for (debounce = 0; debounce <= 99; debounce ++)
	clrf	(main@debounce)
	
l4027:	
	movlw	(064h)
	subwf	(main@debounce),w
	skipc
	goto	u6681
	goto	u6680
u6681:
	goto	l4031
u6680:
	goto	l303
	
l4029:	
	goto	l303
	line	856
	
l304:	
	line	857
	
l4031:	
;CO2.c: 856: {
;CO2.c: 857: _delay(250);
	opt asmopt_off
movlw	83
movwf	(??_main+0)+0,f
u7287:
decfsz	(??_main+0)+0,f
	goto	u7287
opt asmopt_on

	line	855
	
l4033:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@debounce),f
	
l4035:	
	movlw	(064h)
	subwf	(main@debounce),w
	skipc
	goto	u6691
	goto	u6690
u6691:
	goto	l4031
u6690:
	goto	l303
	
l305:	
	line	859
	
l303:	
	line	860
;CO2.c: 858: }
;CO2.c: 859: }
;CO2.c: 860: if( RC6 == 0 )
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	btfsc	(31766/8)^0F80h,(31766)&7	;volatile
	goto	u6701
	goto	u6700
u6701:
	goto	l3165
u6700:
	line	862
	
l4037:	
;CO2.c: 861: {
;CO2.c: 862: bipomode = bipomode + 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@bipomode),w
	addlw	01h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@bipomode)
	line	865
	
l4039:	
;CO2.c: 865: if( bipomode == 0x00 )
	movf	(main@bipomode),f
	skipz
	goto	u6711
	goto	u6710
u6711:
	goto	l307
u6710:
	line	867
	
l4041:	
;CO2.c: 866: {
;CO2.c: 867: values[11] = 0x40;
	movlw	(040h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_values)+0Bh	;volatile
	line	868
;CO2.c: 868: _delay(25000);
	opt asmopt_off
movlw	33
movwf	((??_main+0)+0+1),f
	movlw	118
movwf	((??_main+0)+0),f
u7297:
	decfsz	((??_main+0)+0),f
	goto	u7297
	decfsz	((??_main+0)+0+1),f
	goto	u7297
	nop
opt asmopt_on

	line	869
	
l307:	
	line	870
;CO2.c: 869: }
;CO2.c: 870: if( bipomode == 0x01 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@bipomode),w
	xorlw	01h
	skipz
	goto	u6721
	goto	u6720
u6721:
	goto	l308
u6720:
	line	872
	
l4043:	
;CO2.c: 871: {
;CO2.c: 872: values[7] = 0x70;
	movlw	(070h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_values)+07h	;volatile
	line	873
;CO2.c: 873: _delay(25000);
	opt asmopt_off
movlw	33
movwf	((??_main+0)+0+1),f
	movlw	118
movwf	((??_main+0)+0),f
u7307:
	decfsz	((??_main+0)+0),f
	goto	u7307
	decfsz	((??_main+0)+0+1),f
	goto	u7307
	nop
opt asmopt_on

	line	874
	
l308:	
	line	875
;CO2.c: 874: }
;CO2.c: 875: if( bipomode == 0x02 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@bipomode),w
	xorlw	02h
	skipz
	goto	u6731
	goto	u6730
u6731:
	goto	l309
u6730:
	line	877
	
l4045:	
;CO2.c: 876: {
;CO2.c: 877: values[7] = 0x40;
	movlw	(040h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(_values)+07h	;volatile
	line	878
;CO2.c: 878: _delay(25000);
	opt asmopt_off
movlw	33
movwf	((??_main+0)+0+1),f
	movlw	118
movwf	((??_main+0)+0),f
u7317:
	decfsz	((??_main+0)+0),f
	goto	u7317
	decfsz	((??_main+0)+0+1),f
	goto	u7317
	nop
opt asmopt_on

	line	879
	
l309:	
	line	881
;CO2.c: 879: }
;CO2.c: 881: if( bipomode == 0X03 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@bipomode),w
	xorlw	03h
	skipz
	goto	u6741
	goto	u6740
u6741:
	goto	l4049
u6740:
	line	883
	
l4047:	
;CO2.c: 882: {
;CO2.c: 883: bipomode = 0xFF;
	movlw	(0FFh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@bipomode)
	line	884
;CO2.c: 884: _delay(25000);
	opt asmopt_off
movlw	33
movwf	((??_main+0)+0+1),f
	movlw	118
movwf	((??_main+0)+0),f
u7327:
	decfsz	((??_main+0)+0),f
	goto	u7327
	decfsz	((??_main+0)+0+1),f
	goto	u7327
	nop
opt asmopt_on

	goto	l4049
	line	885
	
l310:	
	line	886
	
l4049:	
;CO2.c: 885: }
;CO2.c: 886: for (debounce = 0; debounce <= 200; debounce ++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@debounce)
	
l4051:	
	movlw	(0C9h)
	subwf	(main@debounce),w
	skipc
	goto	u6751
	goto	u6750
u6751:
	goto	l4055
u6750:
	goto	l3165
	
l4053:	
	goto	l3165
	line	887
	
l311:	
	line	888
	
l4055:	
;CO2.c: 887: {
;CO2.c: 888: _delay(25000);
	opt asmopt_off
movlw	33
movwf	((??_main+0)+0+1),f
	movlw	118
movwf	((??_main+0)+0),f
u7337:
	decfsz	((??_main+0)+0),f
	goto	u7337
	decfsz	((??_main+0)+0+1),f
	goto	u7337
	nop
opt asmopt_on

	line	886
	
l4057:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@debounce),f
	
l4059:	
	movlw	(0C9h)
	subwf	(main@debounce),w
	skipc
	goto	u6761
	goto	u6760
u6761:
	goto	l4055
u6760:
	goto	l3165
	
l312:	
	goto	l3165
	line	891
	
l306:	
	goto	l3165
	line	893
	
l313:	
	line	60
	goto	l3165
	
l314:	
	line	894
	
l315:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] unsigned int 
;;  dividend        2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[BANK0 ] unsigned int 
;;  counter         1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       4       0       0
;;      Locals:         0       3       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       8       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\lwdiv.c"
	line	6
global __ptext1
__ptext1:	;psect for function ___lwdiv
psect	text1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l3083:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l3085:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u4741
	goto	u4740
u4741:
	goto	l3105
u4740:
	line	16
	
l3087:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l3093
	
l735:	
	line	18
	
l3089:	
	movlw	01h
	
u4755:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u4755
	line	19
	
l3091:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l3093
	line	20
	
l734:	
	line	17
	
l3093:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u4761
	goto	u4760
u4761:
	goto	l3089
u4760:
	goto	l3095
	
l736:	
	goto	l3095
	line	21
	
l737:	
	line	22
	
l3095:	
	movlw	01h
	
u4775:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u4775
	line	23
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u4785
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u4785:
	skipc
	goto	u4781
	goto	u4780
u4781:
	goto	l3101
u4780:
	line	24
	
l3097:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l3099:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l3101
	line	26
	
l738:	
	line	27
	
l3101:	
	movlw	01h
	
u4795:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u4795
	line	28
	
l3103:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u4801
	goto	u4800
u4801:
	goto	l3095
u4800:
	goto	l3105
	
l739:	
	goto	l3105
	line	29
	
l733:	
	line	30
	
l3105:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l740
	
l3107:	
	line	31
	
l740:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	___bmul

;; *************** function ___bmul *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\Umul8.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    3[BANK0 ] unsigned char 
;;  product         1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       4       0       0
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
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\Umul8.c"
	line	4
global __ptext2
__ptext2:	;psect for function ___bmul
psect	text2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\Umul8.c"
	line	4
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
;incstack = 0
	opt	stack 6
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___bmul@multiplier)
	line	6
	
l2985:	
	clrf	(___bmul@product)
	goto	l2987
	line	42
	
l421:	
	line	43
	
l2987:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u4531
	goto	u4530
u4531:
	goto	l2991
u4530:
	line	44
	
l2989:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	goto	l2991
	
l422:	
	line	45
	
l2991:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	46
	
l2993:	
	clrc
	rrf	(___bmul@multiplier),f

	line	47
	
l2995:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u4541
	goto	u4540
u4541:
	goto	l2987
u4540:
	goto	l2997
	
l423:	
	line	50
	
l2997:	
	movf	(___bmul@product),w
	goto	l424
	
l2999:	
	line	51
	
l424:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
	signat	___bmul,8313
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[BANK0 ] unsigned char 
;;  counter         1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       4       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       7       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\awmod.c"
	line	6
global __ptext3
__ptext3:	;psect for function ___awmod
psect	text3
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\awmod.c"
	line	6
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
;incstack = 0
	opt	stack 6
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	13
	
l3045:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awmod@sign)
	line	14
	
l3047:	
	btfss	(___awmod@dividend+1),7
	goto	u4651
	goto	u4650
u4651:
	goto	l3053
u4650:
	line	15
	
l3049:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	16
	
l3051:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	goto	l3053
	line	17
	
l539:	
	line	18
	
l3053:	
	btfss	(___awmod@divisor+1),7
	goto	u4661
	goto	u4660
u4661:
	goto	l3057
u4660:
	line	19
	
l3055:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l3057
	
l540:	
	line	20
	
l3057:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u4671
	goto	u4670
u4671:
	goto	l3075
u4670:
	line	21
	
l3059:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	22
	goto	l3065
	
l543:	
	line	23
	
l3061:	
	movlw	01h
	
u4685:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u4685
	line	24
	
l3063:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l3065
	line	25
	
l542:	
	line	22
	
l3065:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u4691
	goto	u4690
u4691:
	goto	l3061
u4690:
	goto	l3067
	
l544:	
	goto	l3067
	line	26
	
l545:	
	line	27
	
l3067:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u4705
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u4705:
	skipc
	goto	u4701
	goto	u4700
u4701:
	goto	l3071
u4700:
	line	28
	
l3069:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l3071
	
l546:	
	line	29
	
l3071:	
	movlw	01h
	
u4715:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u4715
	line	30
	
l3073:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u4721
	goto	u4720
u4721:
	goto	l3067
u4720:
	goto	l3075
	
l547:	
	goto	l3075
	line	31
	
l541:	
	line	32
	
l3075:	
	movf	(___awmod@sign),w
	skipz
	goto	u4730
	goto	l3079
u4730:
	line	33
	
l3077:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l3079
	
l548:	
	line	34
	
l3079:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l549
	
l3081:	
	line	35
	
l549:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[BANK0 ] int 
;;  sign            1    6[BANK0 ] unsigned char 
;;  counter         1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       4       0       0
;;      Locals:         0       4       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       9       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\awdiv.c"
	line	6
global __ptext4
__ptext4:	;psect for function ___awdiv
psect	text4
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l3001:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@sign)
	line	15
	
l3003:	
	btfss	(___awdiv@divisor+1),7
	goto	u4551
	goto	u4550
u4551:
	goto	l3009
u4550:
	line	16
	
l3005:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l3007:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	goto	l3009
	line	18
	
l526:	
	line	19
	
l3009:	
	btfss	(___awdiv@dividend+1),7
	goto	u4561
	goto	u4560
u4561:
	goto	l3015
u4560:
	line	20
	
l3011:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l3013:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l3015
	line	22
	
l527:	
	line	23
	
l3015:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l3017:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u4571
	goto	u4570
u4571:
	goto	l3037
u4570:
	line	25
	
l3019:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l3025
	
l530:	
	line	27
	
l3021:	
	movlw	01h
	
u4585:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u4585
	line	28
	
l3023:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l3025
	line	29
	
l529:	
	line	26
	
l3025:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u4591
	goto	u4590
u4591:
	goto	l3021
u4590:
	goto	l3027
	
l531:	
	goto	l3027
	line	30
	
l532:	
	line	31
	
l3027:	
	movlw	01h
	
u4605:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u4605
	line	32
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u4615
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u4615:
	skipc
	goto	u4611
	goto	u4610
u4611:
	goto	l3033
u4610:
	line	33
	
l3029:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
l3031:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l3033
	line	35
	
l533:	
	line	36
	
l3033:	
	movlw	01h
	
u4625:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u4625
	line	37
	
l3035:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u4631
	goto	u4630
u4631:
	goto	l3027
u4630:
	goto	l3037
	
l534:	
	goto	l3037
	line	38
	
l528:	
	line	39
	
l3037:	
	movf	(___awdiv@sign),w
	skipz
	goto	u4640
	goto	l3041
u4640:
	line	40
	
l3039:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l3041
	
l535:	
	line	41
	
l3041:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l536
	
l3043:	
	line	42
	
l536:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_tmr_int

;; *************** function _tmr_int *****************
;; Defined at:
;;		line 900 in file "C:\XC8 PROJECTS\CO2\CO2.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          5       0       0       0
;;      Totals:         5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"C:\XC8 PROJECTS\CO2\CO2.c"
	line	900
global __ptext5
__ptext5:	;psect for function _tmr_int
psect	text5
	file	"C:\XC8 PROJECTS\CO2\CO2.c"
	line	900
	global	__size_of_tmr_int
	__size_of_tmr_int	equ	__end_of_tmr_int-_tmr_int
	
_tmr_int:	
;incstack = 0
	opt	stack 6
; Regs used in _tmr_int: [wreg-fsr0h+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_tmr_int+1)
	movf	fsr0,w
	movwf	(??_tmr_int+2)
	movf	pclath,w
	movwf	(??_tmr_int+3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_tmr_int+4)
	ljmp	_tmr_int
psect	text5
	line	901
	
i1l2957:	
;CO2.c: 901: if(adr == 7)
	movf	(_adr),w	;volatile
	xorlw	07h
	skipz
	goto	u451_21
	goto	u451_20
u451_21:
	goto	i1l2963
u451_20:
	line	903
	
i1l2959:	
;CO2.c: 902: {
;CO2.c: 903: RB0 = ~(RB0);
	movlw	1<<((31752)&7)
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	xorwf	((31752)/8)^0F80h,f
	line	904
	
i1l2961:	
;CO2.c: 904: adr = 0;
	clrf	(_adr)	;volatile
	goto	i1l2963
	line	905
	
i1l318:	
	line	906
	
i1l2963:	
;CO2.c: 905: }
;CO2.c: 906: PORTE = adr;
	movf	(_adr),w	;volatile
	movwf	(??_tmr_int+0)+0
	movf	(??_tmr_int+0)+0,w
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	movwf	(3972)^0F80h	;volatile
	line	907
	
i1l2965:	
;CO2.c: 907: PORTB = PORTB & 0x0F;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	movf	(3969)^0F80h,w	;volatile
	andlw	0Fh
	movwf	(??_tmr_int+0)+0
	movf	(??_tmr_int+0)+0,w
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	movwf	(3969)^0F80h	;volatile
	line	908
	
i1l2967:	
;CO2.c: 908: PORTB = PORTB | values[count];
	movf	(_count),w
	addlw	_values&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	iorwf	(3969)^0F80h,w	;volatile
	movwf	(??_tmr_int+0)+0
	movf	(??_tmr_int+0)+0,w
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	movwf	(3969)^0F80h	;volatile
	line	909
	
i1l2969:	
;CO2.c: 909: adr = adr + 1;
	movf	(_adr),w	;volatile
	addlw	01h
	movwf	(??_tmr_int+0)+0
	movf	(??_tmr_int+0)+0,w
	movwf	(_adr)	;volatile
	line	910
	
i1l2971:	
;CO2.c: 910: count = count + 1;
	movf	(_count),w	;volatile
	addlw	01h
	movwf	(??_tmr_int+0)+0
	movf	(??_tmr_int+0)+0,w
	movwf	(_count)	;volatile
	line	911
	
i1l2973:	
;CO2.c: 911: if(count == 14)
	movf	(_count),w	;volatile
	xorlw	0Eh
	skipz
	goto	u452_21
	goto	u452_20
u452_21:
	goto	i1l2977
u452_20:
	line	913
	
i1l2975:	
;CO2.c: 912: {
;CO2.c: 913: count = 0;
	clrf	(_count)	;volatile
	goto	i1l2977
	line	914
	
i1l319:	
	line	915
	
i1l2977:	
;CO2.c: 914: }
;CO2.c: 915: hold = hold - 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_hold),w
	addlw	-1
	movwf	(??_tmr_int+0)+0
	movf	(??_tmr_int+0)+0,w
	movwf	(_hold)	;volatile
	line	917
	
i1l2979:	
;CO2.c: 917: T0IF = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	bcf	(32658/8)^0F80h,(32658)&7	;volatile
	line	918
	
i1l2981:	
;CO2.c: 918: TMR0 = 0;
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	clrf	(4054)^0F80h	;volatile
	bsf	status, 5	;RP0=1, select bank31
	bsf	status, 6	;RP1=1, select bank31
	clrf	(4054+1)^0F80h	;volatile
	goto	i1l320
	line	919
	
i1l2983:	
	line	920
;CO2.c: 919: return;
	
i1l320:	
	movf	(??_tmr_int+4),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(??_tmr_int+3),w
	movwf	pclath
	movf	(??_tmr_int+2),w
	movwf	fsr0
	swapf	(??_tmr_int+1)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_tmr_int
	__end_of_tmr_int:
	signat	_tmr_int,88
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

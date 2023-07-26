opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 59893"

opt pagewidth 120

	opt lm

	processor	18F43K20
porta	equ	0F80h
portb	equ	0F81h
portc	equ	0F82h
portd	equ	0F83h
porte	equ	0F84h
lata	equ	0F89h
latb	equ	0F8Ah
latc	equ	0F8Bh
latd	equ	0F8Ch
late	equ	0F8Dh
trisa	equ	0F92h
trisb	equ	0F93h
trisc	equ	0F94h
trisd	equ	0F95h
trise	equ	0F96h
pie1	equ	0F9Dh
pir1	equ	0F9Eh
ipr1	equ	0F9Fh
pie2	equ	0FA0h
pir2	equ	0FA1h
ipr2	equ	0FA2h
t3con	equ	0FB1h
tmr3l	equ	0FB2h
tmr3h	equ	0FB3h
ccp1con	equ	0FBDh
ccpr1l	equ	0FBEh
ccpr1h	equ	0FBFh
adcon1	equ	0FC1h
adcon0	equ	0FC2h
adresl	equ	0FC3h
adresh	equ	0FC4h
sspcon2	equ	0FC5h
sspcon1	equ	0FC6h
sspstat	equ	0FC7h
sspadd	equ	0FC8h
sspbuf	equ	0FC9h
t2con	equ	0FCAh
pr2	equ	0FCBh
tmr2	equ	0FCCh
t1con	equ	0FCDh
tmr1l	equ	0FCEh
tmr1h	equ	0FCFh
rcon	equ	0FD0h
wdtcon	equ	0FD1h
lvdcon	equ	0FD2h
osccon	equ	0FD3h
t0con	equ	0FD5h
tmr0l	equ	0FD6h
tmr0h	equ	0FD7h
status	equ	0FD8h
fsr2	equ	0FD9h
fsr2l	equ	0FD9h
fsr2h	equ	0FDAh
plusw2	equ	0FDBh
preinc2	equ	0FDCh
postdec2	equ	0FDDh
postinc2	equ	0FDEh
indf2	equ	0FDFh
bsr	equ	0FE0h
fsr1	equ	0FE1h
fsr1l	equ	0FE1h
fsr1h	equ	0FE2h
plusw1	equ	0FE3h
preinc1	equ	0FE4h
postdec1	equ	0FE5h
postinc1	equ	0FE6h
indf1	equ	0FE7h
wreg	equ	0FE8h
fsr0	equ	0FE9h
fsr0l	equ	0FE9h
fsr0h	equ	0FEAh
plusw0	equ	0FEBh
preinc0	equ	0FECh
postdec0	equ	0FEDh
postinc0	equ	0FEEh
indf0	equ	0FEFh
intcon3	equ	0FF0h
intcon2	equ	0FF1h
intcon	equ	0FF2h
prod	equ	0FF3h
prodl	equ	0FF3h
prodh	equ	0FF4h
tablat	equ	0FF5h
tblptr	equ	0FF6h
tblptrl	equ	0FF6h
tblptrh	equ	0FF7h
tblptru	equ	0FF8h
pcl	equ	0FF9h
pclat	equ	0FFAh
pclath	equ	0FFAh
pclatu	equ	0FFBh
stkptr	equ	0FFCh
tosl	equ	0FFDh
tosh	equ	0FFEh
tosu	equ	0FFFh
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,w
	movf indf1,w
endm
popf macro arg1
	movf postdec1,w
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
SSPMSK equ 0F77h ;# 
# 110 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
SLRCON equ 0F78h ;# 
# 153 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
CM2CON1 equ 0F79h ;# 
# 191 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
CM2CON0 equ 0F7Ah ;# 
# 260 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
CM1CON0 equ 0F7Bh ;# 
# 329 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
WPUB equ 0F7Ch ;# 
# 390 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
IOCB equ 0F7Dh ;# 
# 428 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
ANSEL equ 0F7Eh ;# 
# 489 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
ANSELH equ 0F7Fh ;# 
# 532 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PORTA equ 0F80h ;# 
# 769 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PORTB equ 0F81h ;# 
# 976 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PORTC equ 0F82h ;# 
# 1166 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PORTD equ 0F83h ;# 
# 1307 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PORTE equ 0F84h ;# 
# 1638 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
LATA equ 0F89h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
LATB equ 0F8Ah ;# 
# 1902 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
LATC equ 0F8Bh ;# 
# 2034 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
LATD equ 0F8Ch ;# 
# 2166 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
LATE equ 0F8Dh ;# 
# 2268 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TRISA equ 0F92h ;# 
# 2273 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
DDRA equ 0F92h ;# 
# 2489 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TRISB equ 0F93h ;# 
# 2494 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
DDRB equ 0F93h ;# 
# 2710 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TRISC equ 0F94h ;# 
# 2715 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
DDRC equ 0F94h ;# 
# 2931 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TRISD equ 0F95h ;# 
# 2936 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
DDRD equ 0F95h ;# 
# 3152 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TRISE equ 0F96h ;# 
# 3157 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
DDRE equ 0F96h ;# 
# 3303 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
OSCTUNE equ 0F9Bh ;# 
# 3372 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PIE1 equ 0F9Dh ;# 
# 3451 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PIR1 equ 0F9Eh ;# 
# 3530 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
IPR1 equ 0F9Fh ;# 
# 3609 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PIE2 equ 0FA0h ;# 
# 3688 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PIR2 equ 0FA1h ;# 
# 3767 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
IPR2 equ 0FA2h ;# 
# 3846 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
EECON1 equ 0FA6h ;# 
# 3911 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
EECON2 equ 0FA7h ;# 
# 3917 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
EEDATA equ 0FA8h ;# 
# 3923 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
EEADR equ 0FA9h ;# 
# 3984 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
RCSTA equ 0FABh ;# 
# 3989 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
RCSTA1 equ 0FABh ;# 
# 4193 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TXSTA equ 0FACh ;# 
# 4198 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TXSTA1 equ 0FACh ;# 
# 4490 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TXREG equ 0FADh ;# 
# 4495 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TXREG1 equ 0FADh ;# 
# 4501 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
RCREG equ 0FAEh ;# 
# 4506 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
RCREG1 equ 0FAEh ;# 
# 4512 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
SPBRG equ 0FAFh ;# 
# 4517 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
SPBRG1 equ 0FAFh ;# 
# 4523 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
SPBRGH equ 0FB0h ;# 
# 4529 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
T3CON equ 0FB1h ;# 
# 4642 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TMR3 equ 0FB2h ;# 
# 4648 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TMR3L equ 0FB2h ;# 
# 4654 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TMR3H equ 0FB3h ;# 
# 4660 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
CVRCON2 equ 0FB4h ;# 
# 4686 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
CVRCON equ 0FB5h ;# 
# 4764 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
ECCP1AS equ 0FB6h ;# 
# 4845 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PWM1CON equ 0FB7h ;# 
# 4914 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
BAUDCON equ 0FB8h ;# 
# 4919 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
BAUDCTL equ 0FB8h ;# 
# 5079 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PSTRCON equ 0FB9h ;# 
# 5122 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
CCP2CON equ 0FBAh ;# 
# 5185 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
CCPR2 equ 0FBBh ;# 
# 5191 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
CCPR2L equ 0FBBh ;# 
# 5197 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
CCPR2H equ 0FBCh ;# 
# 5203 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
CCP1CON equ 0FBDh ;# 
# 5284 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
CCPR1 equ 0FBEh ;# 
# 5290 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
CCPR1L equ 0FBEh ;# 
# 5296 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
CCPR1H equ 0FBFh ;# 
# 5302 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
ADCON2 equ 0FC0h ;# 
# 5372 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
ADCON1 equ 0FC1h ;# 
# 5425 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
ADCON0 equ 0FC2h ;# 
# 5543 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
ADRES equ 0FC3h ;# 
# 5549 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
ADRESL equ 0FC3h ;# 
# 5555 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
ADRESH equ 0FC4h ;# 
# 5561 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
SSPCON2 equ 0FC5h ;# 
# 5622 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
SSPCON1 equ 0FC6h ;# 
# 5691 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
SSPSTAT equ 0FC7h ;# 
# 5919 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
SSPADD equ 0FC8h ;# 
# 5925 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
SSPBUF equ 0FC9h ;# 
# 5931 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
T2CON equ 0FCAh ;# 
# 6001 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PR2 equ 0FCBh ;# 
# 6006 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
MEMCON equ 0FCBh ;# 
# 6110 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TMR2 equ 0FCCh ;# 
# 6116 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
T1CON equ 0FCDh ;# 
# 6220 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TMR1 equ 0FCEh ;# 
# 6226 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TMR1L equ 0FCEh ;# 
# 6232 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TMR1H equ 0FCFh ;# 
# 6238 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
RCON equ 0FD0h ;# 
# 6370 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
WDTCON equ 0FD1h ;# 
# 6397 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
HLVDCON equ 0FD2h ;# 
# 6402 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
LVDCON equ 0FD2h ;# 
# 6666 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
OSCCON equ 0FD3h ;# 
# 6742 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
T0CON equ 0FD5h ;# 
# 6811 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TMR0 equ 0FD6h ;# 
# 6817 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TMR0L equ 0FD6h ;# 
# 6823 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TMR0H equ 0FD7h ;# 
# 6829 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
STATUS equ 0FD8h ;# 
# 6907 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
FSR2 equ 0FD9h ;# 
# 6913 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
FSR2L equ 0FD9h ;# 
# 6919 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
FSR2H equ 0FDAh ;# 
# 6925 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PLUSW2 equ 0FDBh ;# 
# 6931 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PREINC2 equ 0FDCh ;# 
# 6937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
POSTDEC2 equ 0FDDh ;# 
# 6943 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
POSTINC2 equ 0FDEh ;# 
# 6949 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
INDF2 equ 0FDFh ;# 
# 6955 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
BSR equ 0FE0h ;# 
# 6961 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
FSR1 equ 0FE1h ;# 
# 6967 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
FSR1L equ 0FE1h ;# 
# 6973 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
FSR1H equ 0FE2h ;# 
# 6979 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PLUSW1 equ 0FE3h ;# 
# 6985 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PREINC1 equ 0FE4h ;# 
# 6991 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
POSTDEC1 equ 0FE5h ;# 
# 6997 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
POSTINC1 equ 0FE6h ;# 
# 7003 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
INDF1 equ 0FE7h ;# 
# 7009 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
WREG equ 0FE8h ;# 
# 7020 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
FSR0 equ 0FE9h ;# 
# 7026 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
FSR0L equ 0FE9h ;# 
# 7032 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
FSR0H equ 0FEAh ;# 
# 7038 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PLUSW0 equ 0FEBh ;# 
# 7044 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PREINC0 equ 0FECh ;# 
# 7050 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
POSTDEC0 equ 0FEDh ;# 
# 7056 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
POSTINC0 equ 0FEEh ;# 
# 7062 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
INDF0 equ 0FEFh ;# 
# 7068 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
INTCON3 equ 0FF0h ;# 
# 7159 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
INTCON2 equ 0FF1h ;# 
# 7228 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
INTCON equ 0FF2h ;# 
# 7364 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PROD equ 0FF3h ;# 
# 7370 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PRODL equ 0FF3h ;# 
# 7376 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PRODH equ 0FF4h ;# 
# 7382 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TABLAT equ 0FF5h ;# 
# 7390 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TBLPTR equ 0FF6h ;# 
# 7396 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TBLPTRL equ 0FF6h ;# 
# 7402 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TBLPTRH equ 0FF7h ;# 
# 7408 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TBLPTRU equ 0FF8h ;# 
# 7416 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PCLAT equ 0FF9h ;# 
# 7423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PC equ 0FF9h ;# 
# 7429 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PCL equ 0FF9h ;# 
# 7435 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PCLATH equ 0FFAh ;# 
# 7441 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PCLATU equ 0FFBh ;# 
# 7447 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
STKPTR equ 0FFCh ;# 
# 7520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TOS equ 0FFDh ;# 
# 7526 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TOSL equ 0FFDh ;# 
# 7532 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TOSH equ 0FFEh ;# 
# 7538 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TOSU equ 0FFFh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
SSPMSK equ 0F77h ;# 
# 110 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
SLRCON equ 0F78h ;# 
# 153 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
CM2CON1 equ 0F79h ;# 
# 191 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
CM2CON0 equ 0F7Ah ;# 
# 260 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
CM1CON0 equ 0F7Bh ;# 
# 329 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
WPUB equ 0F7Ch ;# 
# 390 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
IOCB equ 0F7Dh ;# 
# 428 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
ANSEL equ 0F7Eh ;# 
# 489 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
ANSELH equ 0F7Fh ;# 
# 532 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PORTA equ 0F80h ;# 
# 769 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PORTB equ 0F81h ;# 
# 976 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PORTC equ 0F82h ;# 
# 1166 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PORTD equ 0F83h ;# 
# 1307 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PORTE equ 0F84h ;# 
# 1638 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
LATA equ 0F89h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
LATB equ 0F8Ah ;# 
# 1902 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
LATC equ 0F8Bh ;# 
# 2034 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
LATD equ 0F8Ch ;# 
# 2166 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
LATE equ 0F8Dh ;# 
# 2268 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TRISA equ 0F92h ;# 
# 2273 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
DDRA equ 0F92h ;# 
# 2489 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TRISB equ 0F93h ;# 
# 2494 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
DDRB equ 0F93h ;# 
# 2710 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TRISC equ 0F94h ;# 
# 2715 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
DDRC equ 0F94h ;# 
# 2931 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TRISD equ 0F95h ;# 
# 2936 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
DDRD equ 0F95h ;# 
# 3152 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TRISE equ 0F96h ;# 
# 3157 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
DDRE equ 0F96h ;# 
# 3303 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
OSCTUNE equ 0F9Bh ;# 
# 3372 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PIE1 equ 0F9Dh ;# 
# 3451 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PIR1 equ 0F9Eh ;# 
# 3530 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
IPR1 equ 0F9Fh ;# 
# 3609 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PIE2 equ 0FA0h ;# 
# 3688 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PIR2 equ 0FA1h ;# 
# 3767 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
IPR2 equ 0FA2h ;# 
# 3846 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
EECON1 equ 0FA6h ;# 
# 3911 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
EECON2 equ 0FA7h ;# 
# 3917 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
EEDATA equ 0FA8h ;# 
# 3923 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
EEADR equ 0FA9h ;# 
# 3984 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
RCSTA equ 0FABh ;# 
# 3989 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
RCSTA1 equ 0FABh ;# 
# 4193 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TXSTA equ 0FACh ;# 
# 4198 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TXSTA1 equ 0FACh ;# 
# 4490 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TXREG equ 0FADh ;# 
# 4495 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TXREG1 equ 0FADh ;# 
# 4501 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
RCREG equ 0FAEh ;# 
# 4506 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
RCREG1 equ 0FAEh ;# 
# 4512 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
SPBRG equ 0FAFh ;# 
# 4517 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
SPBRG1 equ 0FAFh ;# 
# 4523 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
SPBRGH equ 0FB0h ;# 
# 4529 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
T3CON equ 0FB1h ;# 
# 4642 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TMR3 equ 0FB2h ;# 
# 4648 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TMR3L equ 0FB2h ;# 
# 4654 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TMR3H equ 0FB3h ;# 
# 4660 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
CVRCON2 equ 0FB4h ;# 
# 4686 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
CVRCON equ 0FB5h ;# 
# 4764 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
ECCP1AS equ 0FB6h ;# 
# 4845 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PWM1CON equ 0FB7h ;# 
# 4914 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
BAUDCON equ 0FB8h ;# 
# 4919 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
BAUDCTL equ 0FB8h ;# 
# 5079 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PSTRCON equ 0FB9h ;# 
# 5122 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
CCP2CON equ 0FBAh ;# 
# 5185 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
CCPR2 equ 0FBBh ;# 
# 5191 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
CCPR2L equ 0FBBh ;# 
# 5197 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
CCPR2H equ 0FBCh ;# 
# 5203 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
CCP1CON equ 0FBDh ;# 
# 5284 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
CCPR1 equ 0FBEh ;# 
# 5290 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
CCPR1L equ 0FBEh ;# 
# 5296 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
CCPR1H equ 0FBFh ;# 
# 5302 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
ADCON2 equ 0FC0h ;# 
# 5372 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
ADCON1 equ 0FC1h ;# 
# 5425 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
ADCON0 equ 0FC2h ;# 
# 5543 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
ADRES equ 0FC3h ;# 
# 5549 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
ADRESL equ 0FC3h ;# 
# 5555 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
ADRESH equ 0FC4h ;# 
# 5561 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
SSPCON2 equ 0FC5h ;# 
# 5622 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
SSPCON1 equ 0FC6h ;# 
# 5691 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
SSPSTAT equ 0FC7h ;# 
# 5919 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
SSPADD equ 0FC8h ;# 
# 5925 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
SSPBUF equ 0FC9h ;# 
# 5931 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
T2CON equ 0FCAh ;# 
# 6001 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PR2 equ 0FCBh ;# 
# 6006 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
MEMCON equ 0FCBh ;# 
# 6110 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TMR2 equ 0FCCh ;# 
# 6116 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
T1CON equ 0FCDh ;# 
# 6220 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TMR1 equ 0FCEh ;# 
# 6226 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TMR1L equ 0FCEh ;# 
# 6232 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TMR1H equ 0FCFh ;# 
# 6238 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
RCON equ 0FD0h ;# 
# 6370 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
WDTCON equ 0FD1h ;# 
# 6397 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
HLVDCON equ 0FD2h ;# 
# 6402 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
LVDCON equ 0FD2h ;# 
# 6666 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
OSCCON equ 0FD3h ;# 
# 6742 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
T0CON equ 0FD5h ;# 
# 6811 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TMR0 equ 0FD6h ;# 
# 6817 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TMR0L equ 0FD6h ;# 
# 6823 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TMR0H equ 0FD7h ;# 
# 6829 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
STATUS equ 0FD8h ;# 
# 6907 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
FSR2 equ 0FD9h ;# 
# 6913 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
FSR2L equ 0FD9h ;# 
# 6919 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
FSR2H equ 0FDAh ;# 
# 6925 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PLUSW2 equ 0FDBh ;# 
# 6931 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PREINC2 equ 0FDCh ;# 
# 6937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
POSTDEC2 equ 0FDDh ;# 
# 6943 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
POSTINC2 equ 0FDEh ;# 
# 6949 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
INDF2 equ 0FDFh ;# 
# 6955 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
BSR equ 0FE0h ;# 
# 6961 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
FSR1 equ 0FE1h ;# 
# 6967 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
FSR1L equ 0FE1h ;# 
# 6973 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
FSR1H equ 0FE2h ;# 
# 6979 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PLUSW1 equ 0FE3h ;# 
# 6985 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PREINC1 equ 0FE4h ;# 
# 6991 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
POSTDEC1 equ 0FE5h ;# 
# 6997 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
POSTINC1 equ 0FE6h ;# 
# 7003 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
INDF1 equ 0FE7h ;# 
# 7009 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
WREG equ 0FE8h ;# 
# 7020 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
FSR0 equ 0FE9h ;# 
# 7026 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
FSR0L equ 0FE9h ;# 
# 7032 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
FSR0H equ 0FEAh ;# 
# 7038 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PLUSW0 equ 0FEBh ;# 
# 7044 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PREINC0 equ 0FECh ;# 
# 7050 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
POSTDEC0 equ 0FEDh ;# 
# 7056 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
POSTINC0 equ 0FEEh ;# 
# 7062 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
INDF0 equ 0FEFh ;# 
# 7068 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
INTCON3 equ 0FF0h ;# 
# 7159 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
INTCON2 equ 0FF1h ;# 
# 7228 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
INTCON equ 0FF2h ;# 
# 7364 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PROD equ 0FF3h ;# 
# 7370 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PRODL equ 0FF3h ;# 
# 7376 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PRODH equ 0FF4h ;# 
# 7382 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TABLAT equ 0FF5h ;# 
# 7390 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TBLPTR equ 0FF6h ;# 
# 7396 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TBLPTRL equ 0FF6h ;# 
# 7402 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TBLPTRH equ 0FF7h ;# 
# 7408 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TBLPTRU equ 0FF8h ;# 
# 7416 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PCLAT equ 0FF9h ;# 
# 7423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PC equ 0FF9h ;# 
# 7429 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PCL equ 0FF9h ;# 
# 7435 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PCLATH equ 0FFAh ;# 
# 7441 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
PCLATU equ 0FFBh ;# 
# 7447 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
STKPTR equ 0FFCh ;# 
# 7520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TOS equ 0FFDh ;# 
# 7526 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TOSL equ 0FFDh ;# 
# 7532 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TOSH equ 0FFEh ;# 
# 7538 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f43k20.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,_MY_DELAY
	FNCALL	_main,_getKeyboardInput
	FNCALL	_main,_initKeyboard
	FNROOT	_main
	FNCALL	intlevel2,_ISR
	global	intlevel2
	FNROOT	intlevel2
	global	_Keyboard_Keys
	global	_Segment_Codes
	global	_digits
	global	_One_Minute_Timer
	global	_digit
psect	idataCOMRAM,class=CODE,space=0,delta=1,noexec
global __pidataCOMRAM
__pidataCOMRAM:
	file	"E:\Study Material\XC8 PROJECTS\New Remote\Remote2\keypad.h"
	line	5

;initializer for _Keyboard_Keys
	db	low(01h)
	db	low(04h)
	db	low(07h)
	db	low(0Bh)
	db	low(02h)
	db	low(05h)
	db	low(08h)
	db	low(0)
	db	low(03h)
	db	low(06h)
	db	low(09h)
	db	low(0Ch)
	db	low(02h)
	db	low(03h)
	db	low(04h)
	db	low(05h)
	file	"E:\Study Material\XC8 PROJECTS\New Remote\Remote2\Remote.c"
	line	11

;initializer for _Segment_Codes
	db	low(03Fh)
	db	low(06h)
	db	low(05Bh)
	db	low(04Fh)
	db	low(066h)
	db	low(06Dh)
	db	low(07Dh)
	db	low(07h)
	db	low(07Fh)
	db	low(067h)
	db	low(0)
	line	7

;initializer for _digits
	db	low(01h)
	db	low(02h)
	db	low(03h)
	line	12

;initializer for _One_Minute_Timer
	dw	(01h)&0ffffh
	line	14

;initializer for _digit
	db	low(0FFh)
	global	_data_timer
	global	_Sleep_Flag
	global	_count
	global	_index
	global	_t
	global	_TMR0
_TMR0	set	0xFD6
	global	_ADCON1
_ADCON1	set	0xFC1
	global	_INTCON
_INTCON	set	0xFF2
	global	_IOCB
_IOCB	set	0xF7D
	global	_OSCCON
_OSCCON	set	0xFD3
	global	_PORTA
_PORTA	set	0xF80
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
	global	_RBIE
_RBIE	set	0x7F93
	global	_RBIF
_RBIF	set	0x7F90
	global	_SWDTEN
_SWDTEN	set	0x7E88
	global	_TMR0IF
_TMR0IF	set	0x7F92
	global	_TMR0ON
_TMR0ON	set	0x7EAF
; #config settings
	file	"Remote2.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMRAM,class=COMRAM,space=1,noexec
global __pbssCOMRAM
__pbssCOMRAM:
	global	_data_timer
_data_timer:
       ds      2
	global	_Sleep_Flag
_Sleep_Flag:
       ds      1
	global	_count
_count:
       ds      1
	global	_index
_index:
       ds      1
	global	_t
	global	_t
_t:
       ds      1
psect	dataCOMRAM,class=COMRAM,space=1,noexec
global __pdataCOMRAM
__pdataCOMRAM:
	file	"E:\Study Material\XC8 PROJECTS\New Remote\Remote2\keypad.h"
	line	5
	global	_Keyboard_Keys
_Keyboard_Keys:
       ds      16
psect	dataCOMRAM
	file	"E:\Study Material\XC8 PROJECTS\New Remote\Remote2\Remote.c"
	line	11
	global	_Segment_Codes
_Segment_Codes:
       ds      11
psect	dataCOMRAM
	file	"E:\Study Material\XC8 PROJECTS\New Remote\Remote2\Remote.c"
	line	7
	global	_digits
_digits:
       ds      3
psect	dataCOMRAM
	file	"E:\Study Material\XC8 PROJECTS\New Remote\Remote2\Remote.c"
	line	12
	global	_One_Minute_Timer
_One_Minute_Timer:
       ds      2
psect	dataCOMRAM
	file	"E:\Study Material\XC8 PROJECTS\New Remote\Remote2\Remote.c"
	line	14
	global	_digit
_digit:
       ds      1
	file	"Remote2.as"
	line	#
psect	cinit
; Clear objects allocated to COMRAM (6 bytes)
	global __pbssCOMRAM
clrf	(__pbssCOMRAM+5)&0xffh,c
clrf	(__pbssCOMRAM+4)&0xffh,c
clrf	(__pbssCOMRAM+3)&0xffh,c
clrf	(__pbssCOMRAM+2)&0xffh,c
clrf	(__pbssCOMRAM+1)&0xffh,c
clrf	(__pbssCOMRAM+0)&0xffh,c
	line	#
; Initialize objects allocated to COMRAM (33 bytes)
	global __pidataCOMRAM
	; load TBLPTR registers with __pidataCOMRAM
	movlw	low (__pidataCOMRAM)
	movwf	tblptrl
	movlw	high(__pidataCOMRAM)
	movwf	tblptrh
	movlw	low highword(__pidataCOMRAM)
	movwf	tblptru
	lfsr	0,__pdataCOMRAM
	lfsr	1,33
	copy_data0:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data0
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_initKeyboard:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
??_ISR:	; 0 bytes @ 0x0
?_getKeyboardInput:	; 1 bytes @ 0x0
	ds   15
?_MY_DELAY:	; 0 bytes @ 0xF
??_initKeyboard:	; 0 bytes @ 0xF
??_getKeyboardInput:	; 0 bytes @ 0xF
	global	MY_DELAY@ms
MY_DELAY@ms:	; 2 bytes @ 0xF
	ds   2
??_MY_DELAY:	; 0 bytes @ 0x11
	global	getKeyboardInput@column_mask
getKeyboardInput@column_mask:	; 1 bytes @ 0x11
	ds   1
	global	getKeyboardInput@Keyboard_Input
getKeyboardInput@Keyboard_Input:	; 1 bytes @ 0x12
	ds   1
	global	getKeyboardInput@row
getKeyboardInput@row:	; 1 bytes @ 0x13
	ds   1
	global	getKeyboardInput@column
getKeyboardInput@column:	; 1 bytes @ 0x14
	ds   1
	global	getKeyboardInput@temp
getKeyboardInput@temp:	; 1 bytes @ 0x15
	ds   1
??_main:	; 0 bytes @ 0x16
	ds   8
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        33
;!    BSS         6
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95     30      69
;!    BANK0           160      0       0
;!    BANK1           256      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_getKeyboardInput
;!
;!Critical Paths under _ISR in COMRAM
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
;;Main: autosize = 0, tempsize = 8, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 8     8      0     308
;!                                             22 COMRAM     8     8      0
;!                           _MY_DELAY
;!                   _getKeyboardInput
;!                       _initKeyboard
;! ---------------------------------------------------------------------------------
;! (1) _initKeyboard                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _getKeyboardInput                                     7     7      0     225
;!                                             15 COMRAM     7     7      0
;! ---------------------------------------------------------------------------------
;! (1) _MY_DELAY                                             2     0      2      83
;!                                             15 COMRAM     2     0      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (2) _ISR                                                 15    15      0       0
;!                                              0 COMRAM    15    15      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _MY_DELAY
;!   _getKeyboardInput
;!   _initKeyboard
;!
;! _ISR (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             1FF      0       0       8        0.0%
;!EEDATA             100      0       0       0        0.0%
;!BITBANK1           100      0       0       5        0.0%
;!BANK1              100      0       0       6        0.0%
;!BITBANK0            A0      0       0       3        0.0%
;!BANK0               A0      0       0       4        0.0%
;!BITCOMRAM           5F      0       0       0        0.0%
;!COMRAM              5F     1E      45       1       72.6%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      45       7        0.0%
;!DATA                 0      0      45       9        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 17 in file "E:\Study Material\XC8 PROJECTS\New Remote\Remote2\Remote.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          8       0       0
;;      Totals:         8       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_MY_DELAY
;;		_getKeyboardInput
;;		_initKeyboard
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\New Remote\Remote2\Remote.c"
	line	17
global __ptext0
__ptext0:
psect	text0
	file	"E:\Study Material\XC8 PROJECTS\New Remote\Remote2\Remote.c"
	line	17
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 29
	line	19
	
l778:
;Remote.c: 19: OSCCON = 0x17;
	movlw	low(017h)
	movwf	((c:4051)),c	;volatile
	line	21
	
l780:
;Remote.c: 21: SWDTEN = 0x00;
	bcf	c:(32392/8),(32392)&7	;volatile
	line	22
;Remote.c: 22: RCON = 0x00;
	movlw	low(0)
	movwf	((c:4048)),c	;volatile
	line	24
;Remote.c: 24: ADCON1 = 0x06;
	movlw	low(06h)
	movwf	((c:4033)),c	;volatile
	line	26
;Remote.c: 26: TRISA = 0x00;
	movlw	low(0)
	movwf	((c:3986)),c	;volatile
	line	27
;Remote.c: 27: TRISC = 0x00;
	movlw	low(0)
	movwf	((c:3988)),c	;volatile
	line	28
;Remote.c: 28: TRISD = 0x00;
	movlw	low(0)
	movwf	((c:3989)),c	;volatile
	line	29
;Remote.c: 29: TRISE = 0x00;
	movlw	low(0)
	movwf	((c:3990)),c	;volatile
	line	31
;Remote.c: 31: PORTB = 0x00;
	movlw	low(0)
	movwf	((c:3969)),c	;volatile
	line	33
;Remote.c: 33: for(count = 0; count <= 5; count++)
	movlw	low(0)
	movwf	((c:_count)),c
	
l782:
	movlw	(06h-1)
	cpfsgt	((c:_count)),c
	goto	u101
	goto	u100
u101:
	goto	l103
u100:
	goto	l796
	
l784:
	goto	l796
	line	34
	
l103:
	line	35
;Remote.c: 34: {
;Remote.c: 35: PORTE = 0xFF;
	setf	((c:3972)),c	;volatile
	line	36
	
l786:
;Remote.c: 36: MY_DELAY(1000);
	movlw	high(03E8h)
	movwf	((c:MY_DELAY@ms+1)),c
	movlw	low(03E8h)
	movwf	((c:MY_DELAY@ms)),c
	call	_MY_DELAY	;wreg free
	line	37
	
l788:
;Remote.c: 37: PORTE = 0x00;
	movlw	low(0)
	movwf	((c:3972)),c	;volatile
	line	38
	
l790:
;Remote.c: 38: MY_DELAY(1000);
	movlw	high(03E8h)
	movwf	((c:MY_DELAY@ms+1)),c
	movlw	low(03E8h)
	movwf	((c:MY_DELAY@ms)),c
	call	_MY_DELAY	;wreg free
	line	33
	
l792:
	incf	((c:_count)),c
	
l794:
	movlw	(06h-1)
	cpfsgt	((c:_count)),c
	goto	u111
	goto	u110
u111:
	goto	l103
u110:
	goto	l796
	
l104:
	line	40
	
l796:
;Remote.c: 39: }
;Remote.c: 40: count = 0;
	movlw	low(0)
	movwf	((c:_count)),c
	line	42
;Remote.c: 42: PORTC = 0x01;
	movlw	low(01h)
	movwf	((c:3970)),c	;volatile
	line	44
;Remote.c: 44: INTCON = 0xA0;
	movlw	low(0A0h)
	movwf	((c:4082)),c	;volatile
	line	45
;Remote.c: 45: T0CON = 0xD8;
	movlw	low(0D8h)
	movwf	((c:4053)),c	;volatile
	line	47
;Remote.c: 47: TMR0 = 0;
	movlw	high(0)
	movwf	((c:4054+1)),c	;volatile
	movlw	low(0)
	movwf	((c:4054)),c	;volatile
	line	49
	
l798:
;Remote.c: 49: initKeyboard();
	call	_initKeyboard	;wreg free
	goto	l800
	line	51
;Remote.c: 51: while(1)
	
l105:
	line	53
	
l800:
;Remote.c: 52: {
;Remote.c: 53: digit = getKeyboardInput();
	call	_getKeyboardInput	;wreg free
	movwf	((c:_digit)),c
	line	55
	
l802:
;Remote.c: 55: if(digit == 0x0C)
	movf	((c:_digit)),c,w
	xorlw	12

	btfss	status,2
	goto	u121
	goto	u120
u121:
	goto	l822
u120:
	line	58
	
l804:
;Remote.c: 56: {
;Remote.c: 58: digits[0] = digits[0] + 1;
	incf	((c:_digits)),c,w
	movwf	((c:_digits)),c
	line	59
;Remote.c: 59: if(digits[0] > 9)
	movf	((c:_digits)),c,w
	xorlw	80h
	addlw	-((0Ah)^80h)
	btfss	status,0
	goto	u131
	goto	u130
u131:
	goto	l107
u130:
	line	61
	
l806:
;Remote.c: 60: {
;Remote.c: 61: digits[0] = 0;
	movlw	low(0)
	movwf	((c:_digits)),c
	line	62
	
l808:
;Remote.c: 62: digits[1] = digits[1] + 1;
	incf	(0+((c:_digits)+01h)),c,w
	movwf	(0+((c:_digits)+01h)),c
	line	63
	
l810:
;Remote.c: 63: if(digits[1] > 9)
	movf	(0+((c:_digits)+01h)),c,w
	xorlw	80h
	addlw	-((0Ah)^80h)
	btfss	status,0
	goto	u141
	goto	u140
u141:
	goto	l107
u140:
	line	65
	
l812:
;Remote.c: 64: {
;Remote.c: 65: digits[1] = 0;
	movlw	low(0)
	movwf	(0+((c:_digits)+01h)),c
	line	66
	
l814:
;Remote.c: 66: digits[2] = digits[2] + 1;
	incf	(0+((c:_digits)+02h)),c,w
	movwf	(0+((c:_digits)+02h)),c
	line	67
	
l816:
;Remote.c: 67: if(digits[2] > 9)
	movf	(0+((c:_digits)+02h)),c,w
	xorlw	80h
	addlw	-((0Ah)^80h)
	btfss	status,0
	goto	u151
	goto	u150
u151:
	goto	l107
u150:
	line	69
	
l818:
;Remote.c: 68: {
;Remote.c: 69: digits[2] = 9;
	movlw	low(09h)
	movwf	(0+((c:_digits)+02h)),c
	line	70
;Remote.c: 70: digits[1] = 9;
	movlw	low(09h)
	movwf	(0+((c:_digits)+01h)),c
	line	71
;Remote.c: 71: digits[0] = 9;
	movlw	low(09h)
	movwf	((c:_digits)),c
	goto	l107
	line	72
	
l109:
	goto	l107
	line	73
	
l108:
	line	74
	
l107:
	line	75
;Remote.c: 72: }
;Remote.c: 73: }
;Remote.c: 74: }
;Remote.c: 75: One_Minute_Timer = 1;
	movlw	high(01h)
	movwf	((c:_One_Minute_Timer+1)),c
	movlw	low(01h)
	movwf	((c:_One_Minute_Timer)),c
	line	76
	
l820:
;Remote.c: 76: digit = 0xFF;
	setf	((c:_digit)),c
	goto	l822
	line	77
	
l106:
	line	79
	
l822:
;Remote.c: 77: }
;Remote.c: 79: if(digit == 0x0B)
	movf	((c:_digit)),c,w
	xorlw	11

	btfss	status,2
	goto	u161
	goto	u160
u161:
	goto	l844
u160:
	line	82
	
l824:
;Remote.c: 80: {
;Remote.c: 82: digits[0] = digits[0] - 1;
	decf	((c:_digits)),c,w
	movwf	((c:_digits)),c
	line	83
	
l826:
;Remote.c: 83: if(digits[0] < 0)
	btfss	((c:_digits)),c,7
	goto	u171
	goto	u170
u171:
	goto	l111
u170:
	line	85
	
l828:
;Remote.c: 84: {
;Remote.c: 85: digits[0] = 9;
	movlw	low(09h)
	movwf	((c:_digits)),c
	line	86
	
l830:
;Remote.c: 86: digits[1] = digits[1] - 1;
	decf	(0+((c:_digits)+01h)),c,w
	movwf	(0+((c:_digits)+01h)),c
	line	87
	
l832:
;Remote.c: 87: if(digits[1] < 0)
	btfss	(0+((c:_digits)+01h)),c,7
	goto	u181
	goto	u180
u181:
	goto	l111
u180:
	line	89
	
l834:
;Remote.c: 88: {
;Remote.c: 89: digits[1] = 9;
	movlw	low(09h)
	movwf	(0+((c:_digits)+01h)),c
	line	90
	
l836:
;Remote.c: 90: digits[2] = digits[2] - 1;
	decf	(0+((c:_digits)+02h)),c,w
	movwf	(0+((c:_digits)+02h)),c
	line	91
	
l838:
;Remote.c: 91: if(digits[2] < 0)
	btfss	(0+((c:_digits)+02h)),c,7
	goto	u191
	goto	u190
u191:
	goto	l111
u190:
	line	93
	
l840:
;Remote.c: 92: {
;Remote.c: 93: digits[2] = 0;
	movlw	low(0)
	movwf	(0+((c:_digits)+02h)),c
	line	94
;Remote.c: 94: digits[1] = 0;
	movlw	low(0)
	movwf	(0+((c:_digits)+01h)),c
	line	95
;Remote.c: 95: digits[0] = 0;
	movlw	low(0)
	movwf	((c:_digits)),c
	goto	l111
	line	96
	
l113:
	goto	l111
	line	97
	
l112:
	line	98
	
l111:
	line	99
;Remote.c: 96: }
;Remote.c: 97: }
;Remote.c: 98: }
;Remote.c: 99: One_Minute_Timer = 1;
	movlw	high(01h)
	movwf	((c:_One_Minute_Timer+1)),c
	movlw	low(01h)
	movwf	((c:_One_Minute_Timer)),c
	line	100
	
l842:
;Remote.c: 100: digit = 0xFF;
	setf	((c:_digit)),c
	goto	l844
	line	101
	
l110:
	line	103
	
l844:
;Remote.c: 101: }
;Remote.c: 103: if( digit != 0xFF )
	incf	((c:_digit)),c,w

	btfsc	status,2
	goto	u201
	goto	u200
u201:
	goto	l888
u200:
	line	105
	
l846:
;Remote.c: 104: {
;Remote.c: 105: if(count == 0)
	tstfsz	((c:_count)),c
	goto	u211
	goto	u210
u211:
	goto	l858
u210:
	line	107
	
l848:
;Remote.c: 106: {
;Remote.c: 107: digits[count] = digit;
	movf	((c:_count)),c,w
	mullw	01h
	movlw	low((c:_digits))
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high((c:_digits))
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:_digit),indf2

	line	108
	
l850:
;Remote.c: 108: digits[count+1] = 10;
	movf	((c:_count)),c,w
	movwf	(??_main+0+0)&0ffh,c
	clrf	(??_main+0+0+1)&0ffh,c

	movlw	01h
	addwf	(??_main+0+0),c
	movlw	0
	addwfc	(??_main+0+1),c
	movlw	low((c:_digits))
	addwf	(??_main+0+0),c,w
	movwf	c:fsr2l
	movlw	high((c:_digits))
	addwfc	(??_main+0+1),c,w
	movwf	1+c:fsr2l
	movlw	low(0Ah)
	movwf	indf2
	line	109
	
l852:
;Remote.c: 109: digits[count+2] = 10;
	movf	((c:_count)),c,w
	movwf	(??_main+0+0)&0ffh,c
	clrf	(??_main+0+0+1)&0ffh,c

	movlw	02h
	addwf	(??_main+0+0),c
	movlw	0
	addwfc	(??_main+0+1),c
	movlw	low((c:_digits))
	addwf	(??_main+0+0),c,w
	movwf	c:fsr2l
	movlw	high((c:_digits))
	addwfc	(??_main+0+1),c,w
	movwf	1+c:fsr2l
	movlw	low(0Ah)
	movwf	indf2
	line	110
	
l854:
;Remote.c: 110: data_timer = 1;
	movlw	high(01h)
	movwf	((c:_data_timer+1)),c
	movlw	low(01h)
	movwf	((c:_data_timer)),c
	line	111
	
l856:
;Remote.c: 111: One_Minute_Timer = 1;
	movlw	high(01h)
	movwf	((c:_One_Minute_Timer+1)),c
	movlw	low(01h)
	movwf	((c:_One_Minute_Timer)),c
	goto	l858
	line	112
	
l115:
	line	113
	
l858:
;Remote.c: 112: }
;Remote.c: 113: if(count == 1)
	decf	((c:_count)),c,w

	btfss	status,2
	goto	u221
	goto	u220
u221:
	goto	l868
u220:
	line	115
	
l860:
;Remote.c: 114: {
;Remote.c: 115: digits[count] = digits[count-1];
	movlw	low(0FFFFh)
	movwf	(??_main+0+0)&0ffh,c
	movlw	high(0FFFFh)
	movwf	(??_main+0+0+1)&0ffh,c
	movf	((c:_count)),c,w
	movwf	(??_main+2+0)&0ffh,c
	clrf	(??_main+2+0+1)&0ffh,c

	movf	(??_main+0+0),c,w
	addwf	(??_main+2+0),c
	movf	(??_main+0+1),c,w
	addwfc	(??_main+2+1),c
	movlw	low((c:_digits))
	addwf	(??_main+2+0),c,w
	movwf	c:fsr2l
	movlw	high((c:_digits))
	addwfc	(??_main+2+1),c,w
	movwf	1+c:fsr2l
	movf	((c:_count)),c,w
	mullw	01h
	movlw	low((c:_digits))
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlw	high((c:_digits))
	addwfc	prod+1,w
	movwf	1+c:fsr1l
	movff	indf2,indf1
	line	116
	
l862:
;Remote.c: 116: digits[count-1] = digit;
	movlw	low(0FFFFh)
	movwf	(??_main+0+0)&0ffh,c
	movlw	high(0FFFFh)
	movwf	(??_main+0+0+1)&0ffh,c
	movf	((c:_count)),c,w
	movwf	(??_main+2+0)&0ffh,c
	clrf	(??_main+2+0+1)&0ffh,c

	movf	(??_main+0+0),c,w
	addwf	(??_main+2+0),c
	movf	(??_main+0+1),c,w
	addwfc	(??_main+2+1),c
	movlw	low((c:_digits))
	addwf	(??_main+2+0),c,w
	movwf	c:fsr2l
	movlw	high((c:_digits))
	addwfc	(??_main+2+1),c,w
	movwf	1+c:fsr2l
	movff	(c:_digit),indf2

	line	117
	
l864:
;Remote.c: 117: data_timer = 1;
	movlw	high(01h)
	movwf	((c:_data_timer+1)),c
	movlw	low(01h)
	movwf	((c:_data_timer)),c
	line	118
	
l866:
;Remote.c: 118: One_Minute_Timer = 1;
	movlw	high(01h)
	movwf	((c:_One_Minute_Timer+1)),c
	movlw	low(01h)
	movwf	((c:_One_Minute_Timer)),c
	goto	l868
	line	119
	
l116:
	line	120
	
l868:
;Remote.c: 119: }
;Remote.c: 120: if(count == 2)
	movf	((c:_count)),c,w
	xorlw	2

	btfss	status,2
	goto	u231
	goto	u230
u231:
	goto	l880
u230:
	line	122
	
l870:
;Remote.c: 121: {
;Remote.c: 122: digits[count] = digits[count-1];
	movlw	low(0FFFFh)
	movwf	(??_main+0+0)&0ffh,c
	movlw	high(0FFFFh)
	movwf	(??_main+0+0+1)&0ffh,c
	movf	((c:_count)),c,w
	movwf	(??_main+2+0)&0ffh,c
	clrf	(??_main+2+0+1)&0ffh,c

	movf	(??_main+0+0),c,w
	addwf	(??_main+2+0),c
	movf	(??_main+0+1),c,w
	addwfc	(??_main+2+1),c
	movlw	low((c:_digits))
	addwf	(??_main+2+0),c,w
	movwf	c:fsr2l
	movlw	high((c:_digits))
	addwfc	(??_main+2+1),c,w
	movwf	1+c:fsr2l
	movf	((c:_count)),c,w
	mullw	01h
	movlw	low((c:_digits))
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlw	high((c:_digits))
	addwfc	prod+1,w
	movwf	1+c:fsr1l
	movff	indf2,indf1
	line	123
	
l872:
;Remote.c: 123: digits[count-1] = digits[count-2];
	movlw	low(0FFFEh)
	movwf	(??_main+0+0)&0ffh,c
	movlw	high(0FFFEh)
	movwf	(??_main+0+0+1)&0ffh,c
	movf	((c:_count)),c,w
	movwf	(??_main+2+0)&0ffh,c
	clrf	(??_main+2+0+1)&0ffh,c

	movf	(??_main+0+0),c,w
	addwf	(??_main+2+0),c
	movf	(??_main+0+1),c,w
	addwfc	(??_main+2+1),c
	movlw	low((c:_digits))
	addwf	(??_main+2+0),c,w
	movwf	c:fsr2l
	movlw	high((c:_digits))
	addwfc	(??_main+2+1),c,w
	movwf	1+c:fsr2l
	movlw	low(0FFFFh)
	movwf	(??_main+4+0)&0ffh,c
	movlw	high(0FFFFh)
	movwf	(??_main+4+0+1)&0ffh,c
	movf	((c:_count)),c,w
	movwf	(??_main+6+0)&0ffh,c
	clrf	(??_main+6+0+1)&0ffh,c

	movf	(??_main+4+0),c,w
	addwf	(??_main+6+0),c
	movf	(??_main+4+1),c,w
	addwfc	(??_main+6+1),c
	movlw	low((c:_digits))
	addwf	(??_main+6+0),c,w
	movwf	c:fsr1l
	movlw	high((c:_digits))
	addwfc	(??_main+6+1),c,w
	movwf	1+c:fsr1l
	movff	indf2,indf1
	line	124
	
l874:
;Remote.c: 124: digits[count-2] = digit;
	movlw	low(0FFFEh)
	movwf	(??_main+0+0)&0ffh,c
	movlw	high(0FFFEh)
	movwf	(??_main+0+0+1)&0ffh,c
	movf	((c:_count)),c,w
	movwf	(??_main+2+0)&0ffh,c
	clrf	(??_main+2+0+1)&0ffh,c

	movf	(??_main+0+0),c,w
	addwf	(??_main+2+0),c
	movf	(??_main+0+1),c,w
	addwfc	(??_main+2+1),c
	movlw	low((c:_digits))
	addwf	(??_main+2+0),c,w
	movwf	c:fsr2l
	movlw	high((c:_digits))
	addwfc	(??_main+2+1),c,w
	movwf	1+c:fsr2l
	movff	(c:_digit),indf2

	line	125
	
l876:
;Remote.c: 125: data_timer = 0;
	movlw	high(0)
	movwf	((c:_data_timer+1)),c
	movlw	low(0)
	movwf	((c:_data_timer)),c
	line	126
	
l878:
;Remote.c: 126: One_Minute_Timer = 1;
	movlw	high(01h)
	movwf	((c:_One_Minute_Timer+1)),c
	movlw	low(01h)
	movwf	((c:_One_Minute_Timer)),c
	goto	l880
	line	127
	
l117:
	line	128
	
l880:
;Remote.c: 127: }
;Remote.c: 128: count++;
	incf	((c:_count)),c
	line	129
	
l882:
;Remote.c: 129: if(count > 2)
	movlw	(03h-1)
	cpfsgt	((c:_count)),c
	goto	u241
	goto	u240
u241:
	goto	l886
u240:
	line	130
	
l884:
;Remote.c: 130: count = 0;
	movlw	low(0)
	movwf	((c:_count)),c
	goto	l886
	
l118:
	line	131
	
l886:
;Remote.c: 131: digit = 0xFF;
	setf	((c:_digit)),c
	goto	l888
	line	132
	
l114:
	line	134
	
l888:
;Remote.c: 132: }
;Remote.c: 134: if(Sleep_Flag == 1)
	decf	((c:_Sleep_Flag)),c,w

	btfss	status,2
	goto	u251
	goto	u250
u251:
	goto	l800
u250:
	line	136
	
l890:
;Remote.c: 135: {
;Remote.c: 136: PORTC = 0x00;
	movlw	low(0)
	movwf	((c:3970)),c	;volatile
	line	137
;Remote.c: 137: PORTD = 0x00;
	movlw	low(0)
	movwf	((c:3971)),c	;volatile
	line	138
	
l892:
;Remote.c: 138: TMR0ON = 0;
	bcf	c:(32431/8),(32431)&7	;volatile
	line	139
;Remote.c: 139: TRISA = 0x00;
	movlw	low(0)
	movwf	((c:3986)),c	;volatile
	line	140
;Remote.c: 140: PORTA = 0x07;
	movlw	low(07h)
	movwf	((c:3968)),c	;volatile
	line	141
	
l894:
;Remote.c: 141: TRISB = 0xFF;
	setf	((c:3987)),c	;volatile
	line	142
	
l896:
;Remote.c: 142: TRISC = 0xFF;
	setf	((c:3988)),c	;volatile
	line	143
	
l898:
;Remote.c: 143: TRISD = 0xFF;
	setf	((c:3989)),c	;volatile
	line	145
;Remote.c: 145: INTCON = 0x88;
	movlw	low(088h)
	movwf	((c:4082)),c	;volatile
	line	146
	
l900:
;Remote.c: 146: IOCB = 0xFF;
	setf	((c:3965)),c	;volatile
	line	149
# 149 "E:\Study Material\XC8 PROJECTS\New Remote\Remote2\Remote.c"
sleep ;# 
psect	text0
	line	152
;Remote.c: 152: Sleep_Flag = 0;
	movlw	low(0)
	movwf	((c:_Sleep_Flag)),c
	line	153
;Remote.c: 153: RCON = 0x00;
	movlw	low(0)
	movwf	((c:4048)),c	;volatile
	line	154
;Remote.c: 154: INTCON = 0xA0;
	movlw	low(0A0h)
	movwf	((c:4082)),c	;volatile
	line	155
;Remote.c: 155: IOCB = 0x00;
	movlw	low(0)
	movwf	((c:3965)),c	;volatile
	line	156
;Remote.c: 156: T0CON = 0xD8;
	movlw	low(0D8h)
	movwf	((c:4053)),c	;volatile
	line	157
;Remote.c: 157: TMR0 = 0;
	movlw	high(0)
	movwf	((c:4054+1)),c	;volatile
	movlw	low(0)
	movwf	((c:4054)),c	;volatile
	line	158
;Remote.c: 158: TRISA = 0x00;
	movlw	low(0)
	movwf	((c:3986)),c	;volatile
	line	159
;Remote.c: 159: PORTA = 0x00;
	movlw	low(0)
	movwf	((c:3968)),c	;volatile
	line	160
;Remote.c: 160: TRISC = 0x00;
	movlw	low(0)
	movwf	((c:3988)),c	;volatile
	line	161
;Remote.c: 161: TRISD = 0x00;
	movlw	low(0)
	movwf	((c:3989)),c	;volatile
	line	162
	
l902:
;Remote.c: 162: initKeyboard();
	call	_initKeyboard	;wreg free
	line	163
	
l904:
;Remote.c: 163: PORTC = 0x01;
	movlw	low(01h)
	movwf	((c:3970)),c	;volatile
	line	164
	
l906:
;Remote.c: 164: index = 0;
	movlw	low(0)
	movwf	((c:_index)),c
	line	165
	
l908:
;Remote.c: 165: One_Minute_Timer = 1;
	movlw	high(01h)
	movwf	((c:_One_Minute_Timer+1)),c
	movlw	low(01h)
	movwf	((c:_One_Minute_Timer)),c
	goto	l800
	line	166
	
l119:
	goto	l800
	line	167
	
l120:
	line	51
	goto	l800
	
l121:
	line	169
	
l122:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_initKeyboard

;; *************** function _initKeyboard *****************
;; Defined at:
;;		line 5 in file "E:\Study Material\XC8 PROJECTS\New Remote\Remote2\keypad.c"
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
;; Data sizes:     COMRAM   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\New Remote\Remote2\keypad.c"
	line	5
global __ptext1
__ptext1:
psect	text1
	file	"E:\Study Material\XC8 PROJECTS\New Remote\Remote2\keypad.c"
	line	5
	global	__size_of_initKeyboard
	__size_of_initKeyboard	equ	__end_of_initKeyboard-_initKeyboard
	
_initKeyboard:
;incstack = 0
	opt	stack 29
	line	7
	
l714:
;keypad.c: 7: TRISA = 0x00;
	movlw	low(0)
	movwf	((c:3986)),c	;volatile
	line	8
;keypad.c: 8: TRISB = 0xF0;
	movlw	low(0F0h)
	movwf	((c:3987)),c	;volatile
	line	9
;keypad.c: 9: PORTA = 0x00;
	movlw	low(0)
	movwf	((c:3968)),c	;volatile
	line	10
;keypad.c: 10: PORTB = 0x00;
	movlw	low(0)
	movwf	((c:3969)),c	;volatile
	line	11
	
l15:
	return
	opt stack 0
GLOBAL	__end_of_initKeyboard
	__end_of_initKeyboard:
	signat	_initKeyboard,88
	global	_getKeyboardInput

;; *************** function _getKeyboardInput *****************
;; Defined at:
;;		line 13 in file "E:\Study Material\XC8 PROJECTS\New Remote\Remote2\keypad.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp            1   21[COMRAM] unsigned char 
;;  column          1   20[COMRAM] unsigned char 
;;  row             1   19[COMRAM] unsigned char 
;;  Keyboard_Inp    1   18[COMRAM] unsigned char 
;;  column_mask     1   17[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         5       0       0
;;      Temps:          2       0       0
;;      Totals:         7       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
	line	13
global __ptext2
__ptext2:
psect	text2
	file	"E:\Study Material\XC8 PROJECTS\New Remote\Remote2\keypad.c"
	line	13
	global	__size_of_getKeyboardInput
	__size_of_getKeyboardInput	equ	__end_of_getKeyboardInput-_getKeyboardInput
	
_getKeyboardInput:
;incstack = 0
	opt	stack 29
	line	15
	
l716:
;keypad.c: 15: char Keyboard_Input = 0xFF;
	setf	((c:getKeyboardInput@Keyboard_Input)),c
	line	16
	
l718:
;keypad.c: 16: char column = 0;
	movlw	low(0)
	movwf	((c:getKeyboardInput@column)),c
	line	18
;keypad.c: 17: char row;
;keypad.c: 18: char column_mask = 0x01;
	movlw	low(01h)
	movwf	((c:getKeyboardInput@column_mask)),c
	line	19
;keypad.c: 19: char temp = 0x00;
	movlw	low(0)
	movwf	((c:getKeyboardInput@temp)),c
	line	20
;keypad.c: 20: for(column = 0; column < 4; column ++)
	movlw	low(0)
	movwf	((c:getKeyboardInput@column)),c
	
l720:
	movlw	(04h-1)
	cpfsgt	((c:getKeyboardInput@column)),c
	goto	u11
	goto	u10
u11:
	goto	l724
u10:
	goto	l766
	
l722:
	goto	l766
	line	21
	
l18:
	line	22
	
l724:
;keypad.c: 21: {
;keypad.c: 22: PORTA = 0x00;
	movlw	low(0)
	movwf	((c:3968)),c	;volatile
	line	23
;keypad.c: 23: PORTB = 0x00;
	movlw	low(0)
	movwf	((c:3969)),c	;volatile
	line	24
	
l726:
;keypad.c: 24: PORTA = column_mask << column;
	movff	(c:getKeyboardInput@column),??_getKeyboardInput+0+0
	movff	(c:getKeyboardInput@column_mask),??_getKeyboardInput+1+0
	incf	(??_getKeyboardInput+0+0),c
	goto	u24
u25:
	bcf	status,0
	rlcf	(??_getKeyboardInput+1+0),c
u24:
	decfsz	(??_getKeyboardInput+0+0),c
	goto	u25
	movf	(??_getKeyboardInput+1+0),c,w
	movwf	((c:3968)),c	;volatile
	line	25
	
l728:
;keypad.c: 25: _delay((unsigned long)((1)*(250000/4000.0)));
	movlw	20
u357:
decfsz	wreg,f
	goto	u357
	nop2	;nop

	line	27
	
l730:
;keypad.c: 27: temp = PORTB & 0xF0;
	movf	((c:3969)),c,w	;volatile
	andlw	low(0F0h)
	movwf	((c:getKeyboardInput@temp)),c
	line	28
	
l732:
;keypad.c: 28: if(temp != 0x00)
	movf	((c:getKeyboardInput@temp)),c,w
	btfsc	status,2
	goto	u31
	goto	u30
u31:
	goto	l736
u30:
	line	29
	
l734:
;keypad.c: 29: _delay((unsigned long)((5)*(250000/4000.0)));
	movlw	104
u367:
decfsz	wreg,f
	goto	u367

	goto	l736
	
l20:
	line	31
	
l736:
;keypad.c: 31: temp = PORTB & 0xF0;
	movf	((c:3969)),c,w	;volatile
	andlw	low(0F0h)
	movwf	((c:getKeyboardInput@temp)),c
	line	32
	
l738:
;keypad.c: 32: if(temp != 0x00)
	movf	((c:getKeyboardInput@temp)),c,w
	btfsc	status,2
	goto	u41
	goto	u40
u41:
	goto	l762
u40:
	line	35
	
l740:
;keypad.c: 33: {
;keypad.c: 35: row = temp >> 4;
	swapf	((c:getKeyboardInput@temp)),c,w
	andlw	(0ffh shr 4) & 0ffh
	movwf	((c:getKeyboardInput@row)),c
	line	36
;keypad.c: 36: row = row >> 1;
	bcf	status,0
	rrcf	((c:getKeyboardInput@row)),c,w
	movwf	((c:getKeyboardInput@row)),c
	line	37
	
l742:
;keypad.c: 37: if(row > 3)
	movlw	(04h-1)
	cpfsgt	((c:getKeyboardInput@row)),c
	goto	u51
	goto	u50
u51:
	goto	l746
u50:
	line	38
	
l744:
;keypad.c: 38: row = 3;
	movlw	low(03h)
	movwf	((c:getKeyboardInput@row)),c
	goto	l746
	
l22:
	line	40
	
l746:
;keypad.c: 40: Keyboard_Input = Keyboard_Keys[column][row];
	movf	((c:getKeyboardInput@column)),c,w
	mullw	04h
	movlw	low((c:_Keyboard_Keys))
	movwf	(??_getKeyboardInput+0+0)&0ffh,c
	movlw	high((c:_Keyboard_Keys))
	movwf	(??_getKeyboardInput+0+0+1)&0ffh,c
	movf	(prodl),c,w
	addwf	(??_getKeyboardInput+0+0),c
	movf	(prodh),c,w
	addwfc	(??_getKeyboardInput+0+1),c
	movf	((c:getKeyboardInput@row)),c,w
	mullw	01h
	movf	(prodl),c,w
	addwf	(??_getKeyboardInput+0+0),c,w
	movwf	c:fsr2l
	movf	(prodh),c,w
	addwfc	(??_getKeyboardInput+0+1),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:getKeyboardInput@Keyboard_Input)),c
	line	42
	
l748:
;keypad.c: 42: if(Keyboard_Input == 0x00)
	tstfsz	((c:getKeyboardInput@Keyboard_Input)),c
	goto	u61
	goto	u60
u61:
	goto	l23
u60:
	line	43
	
l750:
;keypad.c: 43: PORTB = 0x0A;
	movlw	low(0Ah)
	movwf	((c:3969)),c	;volatile
	goto	l752
	line	44
	
l23:
	line	45
;keypad.c: 44: else
;keypad.c: 45: PORTB = Keyboard_Input;
	movff	(c:getKeyboardInput@Keyboard_Input),(c:3969)	;volatile
	goto	l752
	
l24:
	line	47
	
l752:
;keypad.c: 47: temp = PORTB & 0xF0;
	movf	((c:3969)),c,w	;volatile
	andlw	low(0F0h)
	movwf	((c:getKeyboardInput@temp)),c
	line	48
;keypad.c: 48: while(temp != 0x00)
	goto	l758
	
l26:
	line	50
	
l754:
;keypad.c: 49: {
;keypad.c: 50: _delay((unsigned long)((1)*(250000/4000.0)));
	movlw	20
u377:
decfsz	wreg,f
	goto	u377
	nop2	;nop

	line	51
	
l756:
;keypad.c: 51: temp = PORTB & 0xF0;
	movf	((c:3969)),c,w	;volatile
	andlw	low(0F0h)
	movwf	((c:getKeyboardInput@temp)),c
	goto	l758
	line	52
	
l25:
	line	48
	
l758:
	tstfsz	((c:getKeyboardInput@temp)),c
	goto	u71
	goto	u70
u71:
	goto	l754
u70:
	goto	l760
	
l27:
	line	53
	
l760:
;keypad.c: 52: }
;keypad.c: 53: PORTB = 0x00;
	movlw	low(0)
	movwf	((c:3969)),c	;volatile
	line	54
;keypad.c: 54: break;
	goto	l766
	line	55
	
l21:
	line	20
	
l762:
	incf	((c:getKeyboardInput@column)),c
	
l764:
	movlw	(04h-1)
	cpfsgt	((c:getKeyboardInput@column)),c
	goto	u81
	goto	u80
u81:
	goto	l724
u80:
	goto	l766
	
l19:
	line	57
	
l766:
;keypad.c: 55: }
;keypad.c: 56: }
;keypad.c: 57: PORTA = 0x00;
	movlw	low(0)
	movwf	((c:3968)),c	;volatile
	line	58
;keypad.c: 58: PORTB = 0x00;
	movlw	low(0)
	movwf	((c:3969)),c	;volatile
	line	59
;keypad.c: 59: return Keyboard_Input;
	movf	((c:getKeyboardInput@Keyboard_Input)),c,w
	goto	l28
	
l768:
	line	60
	
l28:
	return
	opt stack 0
GLOBAL	__end_of_getKeyboardInput
	__end_of_getKeyboardInput:
	signat	_getKeyboardInput,89
	global	_MY_DELAY

;; *************** function _MY_DELAY *****************
;; Defined at:
;;		line 218 in file "E:\Study Material\XC8 PROJECTS\New Remote\Remote2\Remote.c"
;; Parameters:    Size  Location     Type
;;  ms              2   15[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, prodl
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1
;;      Params:         2       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\New Remote\Remote2\Remote.c"
	line	218
global __ptext3
__ptext3:
psect	text3
	file	"E:\Study Material\XC8 PROJECTS\New Remote\Remote2\Remote.c"
	line	218
	global	__size_of_MY_DELAY
	__size_of_MY_DELAY	equ	__end_of_MY_DELAY-_MY_DELAY
	
_MY_DELAY:
;incstack = 0
	opt	stack 29
	line	220
	
l770:
;Remote.c: 220: while(ms > 0)
	goto	l776
	
l136:
	line	222
	
l772:
;Remote.c: 221: {
;Remote.c: 222: _delay((unsigned long)((1)*(250000/4000.0)));
	movlw	20
u387:
decfsz	wreg,f
	goto	u387
	nop2	;nop

	line	223
	
l774:
;Remote.c: 223: ms--;
	decf	((c:MY_DELAY@ms)),c
	btfss	status,0
	decf	((c:MY_DELAY@ms+1)),c
	goto	l776
	line	224
	
l135:
	line	220
	
l776:
	movf	((c:MY_DELAY@ms+1)),c,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	01h
	btfsc	status,2
	subwf	((c:MY_DELAY@ms)),c,w
	btfsc	status,0
	goto	u91
	goto	u90
u91:
	goto	l772
u90:
	goto	l138
	
l137:
	line	226
;Remote.c: 224: }
;Remote.c: 225: return;
	
l138:
	return
	opt stack 0
GLOBAL	__end_of_MY_DELAY
	__end_of_MY_DELAY:
	signat	_MY_DELAY,4216
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 171 in file "E:\Study Material\XC8 PROJECTS\New Remote\Remote2\Remote.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:         15       0       0
;;      Totals:        15       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	intcode,class=CODE,space=0,reloc=2
global __pintcode
__pintcode:
psect	intcode
	file	"E:\Study Material\XC8 PROJECTS\New Remote\Remote2\Remote.c"
	line	171
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:
;incstack = 0
	opt	stack 29
	movff	pclat+0,??_ISR+1
	movff	pclat+1,??_ISR+2
	movff	fsr0l+0,??_ISR+3
	movff	fsr0h+0,??_ISR+4
	movff	fsr1l+0,??_ISR+5
	movff	fsr1h+0,??_ISR+6
	movff	fsr2l+0,??_ISR+7
	movff	fsr2h+0,??_ISR+8
	movff	prodl+0,??_ISR+9
	movff	prodh+0,??_ISR+10
	movff	tblptrl+0,??_ISR+11
	movff	tblptrh+0,??_ISR+12
	movff	tblptru+0,??_ISR+13
	movff	tablat+0,??_ISR+14
	line	174
	
i2l910:
;Remote.c: 174: if(RBIE && RBIF)
	btfss	c:(32659/8),(32659)&7	;volatile
	goto	i2u26_41
	goto	i2u26_40
i2u26_41:
	goto	i2l125
i2u26_40:
	
i2l912:
	btfss	c:(32656/8),(32656)&7	;volatile
	goto	i2u27_41
	goto	i2u27_40
i2u27_41:
	goto	i2l125
i2u27_40:
	line	176
	
i2l914:
;Remote.c: 175: {
;Remote.c: 176: RBIF = 0;
	bcf	c:(32656/8),(32656)&7	;volatile
	line	177
;Remote.c: 177: return;
	goto	i2l126
	line	178
	
i2l125:
	line	180
;Remote.c: 178: }
;Remote.c: 180: if(TMR0ON && TMR0IF)
	btfss	c:(32431/8),(32431)&7	;volatile
	goto	i2u28_41
	goto	i2u28_40
i2u28_41:
	goto	i2l126
i2u28_40:
	
i2l916:
	btfss	c:(32658/8),(32658)&7	;volatile
	goto	i2u29_41
	goto	i2u29_40
i2u29_41:
	goto	i2l126
i2u29_40:
	line	182
	
i2l918:
;Remote.c: 181: {
;Remote.c: 182: index = index + 1;
	incf	((c:_index)),c,w
	movwf	((c:_index)),c
	line	183
;Remote.c: 183: PORTC = PORTC << 1;
	movf	((c:3970)),c,w	;volatile
	addwf	((c:3970)),c,w	;volatile
	movwf	((c:3970)),c	;volatile
	line	184
	
i2l920:
;Remote.c: 184: if(index > 2)
	movlw	(03h-1)
	cpfsgt	((c:_index)),c
	goto	i2u30_41
	goto	i2u30_40
i2u30_41:
	goto	i2l924
i2u30_40:
	line	186
	
i2l922:
;Remote.c: 185: {
;Remote.c: 186: index = 0;
	movlw	low(0)
	movwf	((c:_index)),c
	line	187
;Remote.c: 187: PORTC = 0x01;
	movlw	low(01h)
	movwf	((c:3970)),c	;volatile
	goto	i2l924
	line	188
	
i2l128:
	line	189
	
i2l924:
;Remote.c: 188: }
;Remote.c: 189: PORTD = Segment_Codes[digits[index]];
	movf	((c:_index)),c,w
	mullw	01h
	movlw	low((c:_digits))
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high((c:_digits))
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	(??_ISR+0+0)&0ffh,c
	movf	((??_ISR+0+0)),c,w
	mullw	01h
	movlw	low((c:_Segment_Codes))
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high((c:_Segment_Codes))
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:3971)),c	;volatile
	line	190
	
i2l926:
;Remote.c: 190: PORTD = ~(PORTD);
	comf	((c:3971)),c	;volatile
	line	191
	
i2l928:
;Remote.c: 191: if(data_timer >= 1)
	movf	((c:_data_timer+1)),c,w
	xorlw	80h
	addlw	-((0)^80h)
	movlw	01h
	btfsc	status,2
	subwf	((c:_data_timer)),c,w
	btfss	status,0
	goto	i2u31_41
	goto	i2u31_40
i2u31_41:
	goto	i2l934
i2u31_40:
	line	193
	
i2l930:
;Remote.c: 192: {
;Remote.c: 193: data_timer = data_timer + 1;
	movlw	low(01h)
	addwf	((c:_data_timer)),c,w
	
	movwf	((c:_data_timer)),c
	movlw	high(01h)
	addwfc	((c:_data_timer+1)),c,w
	movwf	1+((c:_data_timer)),c
	line	194
;Remote.c: 194: if(data_timer >= 500)
	movf	((c:_data_timer+1)),c,w
	xorlw	80h
	addlw	-((01h)^80h)
	movlw	0F4h
	btfsc	status,2
	subwf	((c:_data_timer)),c,w
	btfss	status,0
	goto	i2u32_41
	goto	i2u32_40
i2u32_41:
	goto	i2l934
i2u32_40:
	line	197
	
i2l932:
;Remote.c: 195: {
;Remote.c: 197: data_timer = 0;
	movlw	high(0)
	movwf	((c:_data_timer+1)),c
	movlw	low(0)
	movwf	((c:_data_timer)),c
	line	198
;Remote.c: 198: count = 0;
	movlw	low(0)
	movwf	((c:_count)),c
	line	199
;Remote.c: 199: One_Minute_Timer = 1;
	movlw	high(01h)
	movwf	((c:_One_Minute_Timer+1)),c
	movlw	low(01h)
	movwf	((c:_One_Minute_Timer)),c
	goto	i2l934
	line	200
	
i2l130:
	goto	i2l934
	line	201
	
i2l129:
	line	203
	
i2l934:
;Remote.c: 200: }
;Remote.c: 201: }
;Remote.c: 203: if(One_Minute_Timer >= 1)
	movf	((c:_One_Minute_Timer+1)),c,w
	iorwf ((c:_One_Minute_Timer)),c,w

	btfsc	status,2
	goto	i2u33_41
	goto	i2u33_40
i2u33_41:
	goto	i2l131
i2u33_40:
	line	205
	
i2l936:
;Remote.c: 204: {
;Remote.c: 205: One_Minute_Timer = One_Minute_Timer + 1;
	movlw	low(01h)
	addwf	((c:_One_Minute_Timer)),c,w
	
	movwf	((c:_One_Minute_Timer)),c
	movlw	high(01h)
	addwfc	((c:_One_Minute_Timer+1)),c,w
	movwf	1+((c:_One_Minute_Timer)),c
	line	206
;Remote.c: 206: if(One_Minute_Timer > 2500)
	movlw	0C5h
	subwf	((c:_One_Minute_Timer)),c,w
	movlw	09h
	subwfb	((c:_One_Minute_Timer+1)),c,w
	btfss	status,0
	goto	i2u34_41
	goto	i2u34_40
i2u34_41:
	goto	i2l131
i2u34_40:
	line	208
	
i2l938:
;Remote.c: 207: {
;Remote.c: 208: Sleep_Flag = 1;
	movlw	low(01h)
	movwf	((c:_Sleep_Flag)),c
	line	209
;Remote.c: 209: One_Minute_Timer = 0;
	movlw	high(0)
	movwf	((c:_One_Minute_Timer+1)),c
	movlw	low(0)
	movwf	((c:_One_Minute_Timer)),c
	goto	i2l131
	line	210
	
i2l132:
	line	211
	
i2l131:
	line	212
;Remote.c: 210: }
;Remote.c: 211: }
;Remote.c: 212: TMR0 = 0;
	movlw	high(0)
	movwf	((c:4054+1)),c	;volatile
	movlw	low(0)
	movwf	((c:4054)),c	;volatile
	line	213
	
i2l940:
;Remote.c: 213: TMR0IF = 0;
	bcf	c:(32658/8),(32658)&7	;volatile
	goto	i2l126
	line	214
	
i2l942:
;Remote.c: 214: return;
	goto	i2l126
	line	215
	
i2l127:
	line	216
	
i2l126:
	movff	??_ISR+14,tablat+0
	movff	??_ISR+13,tblptru+0
	movff	??_ISR+12,tblptrh+0
	movff	??_ISR+11,tblptrl+0
	movff	??_ISR+10,prodh+0
	movff	??_ISR+9,prodl+0
	movff	??_ISR+8,fsr2h+0
	movff	??_ISR+7,fsr2l+0
	movff	??_ISR+6,fsr1h+0
	movff	??_ISR+5,fsr1l+0
	movff	??_ISR+4,fsr0h+0
	movff	??_ISR+3,fsr0l+0
	movff	??_ISR+2,pclat+1
	movff	??_ISR+1,pclat+0
	retfie f
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,88
	GLOBAL	__activetblptr
__activetblptr	EQU	0
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end

opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 59893"

opt pagewidth 120

	opt lm

	processor	18F452
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
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PORTA equ 0F80h ;# 
# 211 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PORTB equ 0F81h ;# 
# 335 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PORTC equ 0F82h ;# 
# 504 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PORTD equ 0F83h ;# 
# 624 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PORTE equ 0F84h ;# 
# 882 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
LATA equ 0F89h ;# 
# 1017 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
LATB equ 0F8Ah ;# 
# 1149 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
LATC equ 0F8Bh ;# 
# 1281 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
LATD equ 0F8Ch ;# 
# 1413 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
LATE equ 0F8Dh ;# 
# 1515 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TRISA equ 0F92h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
DDRA equ 0F92h ;# 
# 1712 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TRISB equ 0F93h ;# 
# 1717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
DDRB equ 0F93h ;# 
# 1951 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TRISC equ 0F94h ;# 
# 1956 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
DDRC equ 0F94h ;# 
# 2190 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TRISD equ 0F95h ;# 
# 2195 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
DDRD equ 0F95h ;# 
# 2411 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TRISE equ 0F96h ;# 
# 2416 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
DDRE equ 0F96h ;# 
# 2562 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PIE1 equ 0F9Dh ;# 
# 2641 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PIR1 equ 0F9Eh ;# 
# 2720 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
IPR1 equ 0F9Fh ;# 
# 2799 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PIE2 equ 0FA0h ;# 
# 2842 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PIR2 equ 0FA1h ;# 
# 2885 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
IPR2 equ 0FA2h ;# 
# 2928 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
EECON1 equ 0FA6h ;# 
# 2993 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
EECON2 equ 0FA7h ;# 
# 2999 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
EEDATA equ 0FA8h ;# 
# 3005 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
EEADR equ 0FA9h ;# 
# 3011 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
RCSTA equ 0FABh ;# 
# 3016 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
RCSTA1 equ 0FABh ;# 
# 3234 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TXSTA equ 0FACh ;# 
# 3239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TXSTA1 equ 0FACh ;# 
# 3535 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TXREG equ 0FADh ;# 
# 3540 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TXREG1 equ 0FADh ;# 
# 3546 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
RCREG equ 0FAEh ;# 
# 3551 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
RCREG1 equ 0FAEh ;# 
# 3557 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
SPBRG equ 0FAFh ;# 
# 3562 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
SPBRG1 equ 0FAFh ;# 
# 3568 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
T3CON equ 0FB1h ;# 
# 3690 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TMR3 equ 0FB2h ;# 
# 3696 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TMR3L equ 0FB2h ;# 
# 3702 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TMR3H equ 0FB3h ;# 
# 3708 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
CCP2CON equ 0FBAh ;# 
# 3795 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
CCPR2 equ 0FBBh ;# 
# 3801 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
CCPR2L equ 0FBBh ;# 
# 3807 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
CCPR2H equ 0FBCh ;# 
# 3813 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
CCP1CON equ 0FBDh ;# 
# 3891 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
CCPR1 equ 0FBEh ;# 
# 3897 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
CCPR1L equ 0FBEh ;# 
# 3903 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
CCPR1H equ 0FBFh ;# 
# 3909 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
ADCON1 equ 0FC1h ;# 
# 3976 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
ADCON0 equ 0FC2h ;# 
# 4120 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
ADRES equ 0FC3h ;# 
# 4126 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
ADRESL equ 0FC3h ;# 
# 4132 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
ADRESH equ 0FC4h ;# 
# 4138 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
SSPCON2 equ 0FC5h ;# 
# 4199 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
SSPCON1 equ 0FC6h ;# 
# 4268 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
SSPSTAT equ 0FC7h ;# 
# 4543 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
SSPADD equ 0FC8h ;# 
# 4549 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
SSPBUF equ 0FC9h ;# 
# 4555 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
T2CON equ 0FCAh ;# 
# 4625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PR2 equ 0FCBh ;# 
# 4630 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
MEMCON equ 0FCBh ;# 
# 4734 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TMR2 equ 0FCCh ;# 
# 4740 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
T1CON equ 0FCDh ;# 
# 4848 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TMR1 equ 0FCEh ;# 
# 4854 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TMR1L equ 0FCEh ;# 
# 4860 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TMR1H equ 0FCFh ;# 
# 4866 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
RCON equ 0FD0h ;# 
# 5008 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
WDTCON equ 0FD1h ;# 
# 5035 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
LVDCON equ 0FD2h ;# 
# 5092 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
OSCCON equ 0FD3h ;# 
# 5111 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
T0CON equ 0FD5h ;# 
# 5180 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TMR0 equ 0FD6h ;# 
# 5186 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TMR0L equ 0FD6h ;# 
# 5192 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TMR0H equ 0FD7h ;# 
# 5198 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
STATUS equ 0FD8h ;# 
# 5276 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
FSR2 equ 0FD9h ;# 
# 5282 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
FSR2L equ 0FD9h ;# 
# 5288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
FSR2H equ 0FDAh ;# 
# 5294 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PLUSW2 equ 0FDBh ;# 
# 5300 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PREINC2 equ 0FDCh ;# 
# 5306 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
POSTDEC2 equ 0FDDh ;# 
# 5312 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
POSTINC2 equ 0FDEh ;# 
# 5318 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
INDF2 equ 0FDFh ;# 
# 5324 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
BSR equ 0FE0h ;# 
# 5330 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
FSR1 equ 0FE1h ;# 
# 5336 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
FSR1L equ 0FE1h ;# 
# 5342 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
FSR1H equ 0FE2h ;# 
# 5348 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PLUSW1 equ 0FE3h ;# 
# 5354 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PREINC1 equ 0FE4h ;# 
# 5360 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
POSTDEC1 equ 0FE5h ;# 
# 5366 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
POSTINC1 equ 0FE6h ;# 
# 5372 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
INDF1 equ 0FE7h ;# 
# 5378 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
WREG equ 0FE8h ;# 
# 5389 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
FSR0 equ 0FE9h ;# 
# 5395 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
FSR0L equ 0FE9h ;# 
# 5401 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
FSR0H equ 0FEAh ;# 
# 5407 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PLUSW0 equ 0FEBh ;# 
# 5413 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PREINC0 equ 0FECh ;# 
# 5419 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
POSTDEC0 equ 0FEDh ;# 
# 5425 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
POSTINC0 equ 0FEEh ;# 
# 5431 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
INDF0 equ 0FEFh ;# 
# 5437 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
INTCON3 equ 0FF0h ;# 
# 5528 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
INTCON2 equ 0FF1h ;# 
# 5604 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
INTCON equ 0FF2h ;# 
# 5609 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
INTCON1 equ 0FF2h ;# 
# 5875 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PROD equ 0FF3h ;# 
# 5881 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PRODL equ 0FF3h ;# 
# 5887 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PRODH equ 0FF4h ;# 
# 5893 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TABLAT equ 0FF5h ;# 
# 5901 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TBLPTR equ 0FF6h ;# 
# 5907 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TBLPTRL equ 0FF6h ;# 
# 5913 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TBLPTRH equ 0FF7h ;# 
# 5919 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TBLPTRU equ 0FF8h ;# 
# 5927 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PCLAT equ 0FF9h ;# 
# 5934 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PC equ 0FF9h ;# 
# 5940 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PCL equ 0FF9h ;# 
# 5946 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PCLATH equ 0FFAh ;# 
# 5952 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PCLATU equ 0FFBh ;# 
# 5958 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
STKPTR equ 0FFCh ;# 
# 6063 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TOS equ 0FFDh ;# 
# 6069 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TOSL equ 0FFDh ;# 
# 6075 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TOSH equ 0FFEh ;# 
# 6081 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TOSU equ 0FFFh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PORTA equ 0F80h ;# 
# 211 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PORTB equ 0F81h ;# 
# 335 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PORTC equ 0F82h ;# 
# 504 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PORTD equ 0F83h ;# 
# 624 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PORTE equ 0F84h ;# 
# 882 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
LATA equ 0F89h ;# 
# 1017 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
LATB equ 0F8Ah ;# 
# 1149 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
LATC equ 0F8Bh ;# 
# 1281 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
LATD equ 0F8Ch ;# 
# 1413 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
LATE equ 0F8Dh ;# 
# 1515 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TRISA equ 0F92h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
DDRA equ 0F92h ;# 
# 1712 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TRISB equ 0F93h ;# 
# 1717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
DDRB equ 0F93h ;# 
# 1951 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TRISC equ 0F94h ;# 
# 1956 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
DDRC equ 0F94h ;# 
# 2190 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TRISD equ 0F95h ;# 
# 2195 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
DDRD equ 0F95h ;# 
# 2411 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TRISE equ 0F96h ;# 
# 2416 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
DDRE equ 0F96h ;# 
# 2562 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PIE1 equ 0F9Dh ;# 
# 2641 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PIR1 equ 0F9Eh ;# 
# 2720 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
IPR1 equ 0F9Fh ;# 
# 2799 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PIE2 equ 0FA0h ;# 
# 2842 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PIR2 equ 0FA1h ;# 
# 2885 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
IPR2 equ 0FA2h ;# 
# 2928 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
EECON1 equ 0FA6h ;# 
# 2993 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
EECON2 equ 0FA7h ;# 
# 2999 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
EEDATA equ 0FA8h ;# 
# 3005 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
EEADR equ 0FA9h ;# 
# 3011 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
RCSTA equ 0FABh ;# 
# 3016 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
RCSTA1 equ 0FABh ;# 
# 3234 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TXSTA equ 0FACh ;# 
# 3239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TXSTA1 equ 0FACh ;# 
# 3535 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TXREG equ 0FADh ;# 
# 3540 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TXREG1 equ 0FADh ;# 
# 3546 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
RCREG equ 0FAEh ;# 
# 3551 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
RCREG1 equ 0FAEh ;# 
# 3557 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
SPBRG equ 0FAFh ;# 
# 3562 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
SPBRG1 equ 0FAFh ;# 
# 3568 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
T3CON equ 0FB1h ;# 
# 3690 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TMR3 equ 0FB2h ;# 
# 3696 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TMR3L equ 0FB2h ;# 
# 3702 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TMR3H equ 0FB3h ;# 
# 3708 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
CCP2CON equ 0FBAh ;# 
# 3795 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
CCPR2 equ 0FBBh ;# 
# 3801 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
CCPR2L equ 0FBBh ;# 
# 3807 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
CCPR2H equ 0FBCh ;# 
# 3813 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
CCP1CON equ 0FBDh ;# 
# 3891 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
CCPR1 equ 0FBEh ;# 
# 3897 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
CCPR1L equ 0FBEh ;# 
# 3903 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
CCPR1H equ 0FBFh ;# 
# 3909 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
ADCON1 equ 0FC1h ;# 
# 3976 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
ADCON0 equ 0FC2h ;# 
# 4120 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
ADRES equ 0FC3h ;# 
# 4126 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
ADRESL equ 0FC3h ;# 
# 4132 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
ADRESH equ 0FC4h ;# 
# 4138 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
SSPCON2 equ 0FC5h ;# 
# 4199 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
SSPCON1 equ 0FC6h ;# 
# 4268 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
SSPSTAT equ 0FC7h ;# 
# 4543 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
SSPADD equ 0FC8h ;# 
# 4549 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
SSPBUF equ 0FC9h ;# 
# 4555 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
T2CON equ 0FCAh ;# 
# 4625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PR2 equ 0FCBh ;# 
# 4630 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
MEMCON equ 0FCBh ;# 
# 4734 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TMR2 equ 0FCCh ;# 
# 4740 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
T1CON equ 0FCDh ;# 
# 4848 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TMR1 equ 0FCEh ;# 
# 4854 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TMR1L equ 0FCEh ;# 
# 4860 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TMR1H equ 0FCFh ;# 
# 4866 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
RCON equ 0FD0h ;# 
# 5008 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
WDTCON equ 0FD1h ;# 
# 5035 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
LVDCON equ 0FD2h ;# 
# 5092 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
OSCCON equ 0FD3h ;# 
# 5111 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
T0CON equ 0FD5h ;# 
# 5180 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TMR0 equ 0FD6h ;# 
# 5186 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TMR0L equ 0FD6h ;# 
# 5192 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TMR0H equ 0FD7h ;# 
# 5198 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
STATUS equ 0FD8h ;# 
# 5276 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
FSR2 equ 0FD9h ;# 
# 5282 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
FSR2L equ 0FD9h ;# 
# 5288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
FSR2H equ 0FDAh ;# 
# 5294 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PLUSW2 equ 0FDBh ;# 
# 5300 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PREINC2 equ 0FDCh ;# 
# 5306 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
POSTDEC2 equ 0FDDh ;# 
# 5312 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
POSTINC2 equ 0FDEh ;# 
# 5318 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
INDF2 equ 0FDFh ;# 
# 5324 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
BSR equ 0FE0h ;# 
# 5330 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
FSR1 equ 0FE1h ;# 
# 5336 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
FSR1L equ 0FE1h ;# 
# 5342 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
FSR1H equ 0FE2h ;# 
# 5348 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PLUSW1 equ 0FE3h ;# 
# 5354 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PREINC1 equ 0FE4h ;# 
# 5360 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
POSTDEC1 equ 0FE5h ;# 
# 5366 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
POSTINC1 equ 0FE6h ;# 
# 5372 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
INDF1 equ 0FE7h ;# 
# 5378 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
WREG equ 0FE8h ;# 
# 5389 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
FSR0 equ 0FE9h ;# 
# 5395 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
FSR0L equ 0FE9h ;# 
# 5401 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
FSR0H equ 0FEAh ;# 
# 5407 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PLUSW0 equ 0FEBh ;# 
# 5413 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PREINC0 equ 0FECh ;# 
# 5419 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
POSTDEC0 equ 0FEDh ;# 
# 5425 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
POSTINC0 equ 0FEEh ;# 
# 5431 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
INDF0 equ 0FEFh ;# 
# 5437 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
INTCON3 equ 0FF0h ;# 
# 5528 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
INTCON2 equ 0FF1h ;# 
# 5604 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
INTCON equ 0FF2h ;# 
# 5609 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
INTCON1 equ 0FF2h ;# 
# 5875 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PROD equ 0FF3h ;# 
# 5881 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PRODL equ 0FF3h ;# 
# 5887 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PRODH equ 0FF4h ;# 
# 5893 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TABLAT equ 0FF5h ;# 
# 5901 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TBLPTR equ 0FF6h ;# 
# 5907 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TBLPTRL equ 0FF6h ;# 
# 5913 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TBLPTRH equ 0FF7h ;# 
# 5919 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TBLPTRU equ 0FF8h ;# 
# 5927 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PCLAT equ 0FF9h ;# 
# 5934 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PC equ 0FF9h ;# 
# 5940 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PCL equ 0FF9h ;# 
# 5946 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PCLATH equ 0FFAh ;# 
# 5952 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PCLATU equ 0FFBh ;# 
# 5958 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
STKPTR equ 0FFCh ;# 
# 6063 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TOS equ 0FFDh ;# 
# 6069 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TOSL equ 0FFDh ;# 
# 6075 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TOSH equ 0FFEh ;# 
# 6081 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TOSU equ 0FFFh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PORTA equ 0F80h ;# 
# 211 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PORTB equ 0F81h ;# 
# 335 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PORTC equ 0F82h ;# 
# 504 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PORTD equ 0F83h ;# 
# 624 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PORTE equ 0F84h ;# 
# 882 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
LATA equ 0F89h ;# 
# 1017 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
LATB equ 0F8Ah ;# 
# 1149 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
LATC equ 0F8Bh ;# 
# 1281 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
LATD equ 0F8Ch ;# 
# 1413 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
LATE equ 0F8Dh ;# 
# 1515 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TRISA equ 0F92h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
DDRA equ 0F92h ;# 
# 1712 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TRISB equ 0F93h ;# 
# 1717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
DDRB equ 0F93h ;# 
# 1951 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TRISC equ 0F94h ;# 
# 1956 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
DDRC equ 0F94h ;# 
# 2190 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TRISD equ 0F95h ;# 
# 2195 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
DDRD equ 0F95h ;# 
# 2411 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TRISE equ 0F96h ;# 
# 2416 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
DDRE equ 0F96h ;# 
# 2562 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PIE1 equ 0F9Dh ;# 
# 2641 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PIR1 equ 0F9Eh ;# 
# 2720 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
IPR1 equ 0F9Fh ;# 
# 2799 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PIE2 equ 0FA0h ;# 
# 2842 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PIR2 equ 0FA1h ;# 
# 2885 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
IPR2 equ 0FA2h ;# 
# 2928 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
EECON1 equ 0FA6h ;# 
# 2993 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
EECON2 equ 0FA7h ;# 
# 2999 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
EEDATA equ 0FA8h ;# 
# 3005 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
EEADR equ 0FA9h ;# 
# 3011 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
RCSTA equ 0FABh ;# 
# 3016 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
RCSTA1 equ 0FABh ;# 
# 3234 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TXSTA equ 0FACh ;# 
# 3239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TXSTA1 equ 0FACh ;# 
# 3535 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TXREG equ 0FADh ;# 
# 3540 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TXREG1 equ 0FADh ;# 
# 3546 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
RCREG equ 0FAEh ;# 
# 3551 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
RCREG1 equ 0FAEh ;# 
# 3557 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
SPBRG equ 0FAFh ;# 
# 3562 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
SPBRG1 equ 0FAFh ;# 
# 3568 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
T3CON equ 0FB1h ;# 
# 3690 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TMR3 equ 0FB2h ;# 
# 3696 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TMR3L equ 0FB2h ;# 
# 3702 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TMR3H equ 0FB3h ;# 
# 3708 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
CCP2CON equ 0FBAh ;# 
# 3795 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
CCPR2 equ 0FBBh ;# 
# 3801 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
CCPR2L equ 0FBBh ;# 
# 3807 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
CCPR2H equ 0FBCh ;# 
# 3813 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
CCP1CON equ 0FBDh ;# 
# 3891 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
CCPR1 equ 0FBEh ;# 
# 3897 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
CCPR1L equ 0FBEh ;# 
# 3903 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
CCPR1H equ 0FBFh ;# 
# 3909 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
ADCON1 equ 0FC1h ;# 
# 3976 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
ADCON0 equ 0FC2h ;# 
# 4120 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
ADRES equ 0FC3h ;# 
# 4126 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
ADRESL equ 0FC3h ;# 
# 4132 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
ADRESH equ 0FC4h ;# 
# 4138 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
SSPCON2 equ 0FC5h ;# 
# 4199 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
SSPCON1 equ 0FC6h ;# 
# 4268 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
SSPSTAT equ 0FC7h ;# 
# 4543 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
SSPADD equ 0FC8h ;# 
# 4549 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
SSPBUF equ 0FC9h ;# 
# 4555 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
T2CON equ 0FCAh ;# 
# 4625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PR2 equ 0FCBh ;# 
# 4630 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
MEMCON equ 0FCBh ;# 
# 4734 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TMR2 equ 0FCCh ;# 
# 4740 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
T1CON equ 0FCDh ;# 
# 4848 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TMR1 equ 0FCEh ;# 
# 4854 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TMR1L equ 0FCEh ;# 
# 4860 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TMR1H equ 0FCFh ;# 
# 4866 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
RCON equ 0FD0h ;# 
# 5008 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
WDTCON equ 0FD1h ;# 
# 5035 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
LVDCON equ 0FD2h ;# 
# 5092 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
OSCCON equ 0FD3h ;# 
# 5111 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
T0CON equ 0FD5h ;# 
# 5180 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TMR0 equ 0FD6h ;# 
# 5186 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TMR0L equ 0FD6h ;# 
# 5192 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TMR0H equ 0FD7h ;# 
# 5198 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
STATUS equ 0FD8h ;# 
# 5276 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
FSR2 equ 0FD9h ;# 
# 5282 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
FSR2L equ 0FD9h ;# 
# 5288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
FSR2H equ 0FDAh ;# 
# 5294 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PLUSW2 equ 0FDBh ;# 
# 5300 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PREINC2 equ 0FDCh ;# 
# 5306 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
POSTDEC2 equ 0FDDh ;# 
# 5312 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
POSTINC2 equ 0FDEh ;# 
# 5318 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
INDF2 equ 0FDFh ;# 
# 5324 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
BSR equ 0FE0h ;# 
# 5330 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
FSR1 equ 0FE1h ;# 
# 5336 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
FSR1L equ 0FE1h ;# 
# 5342 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
FSR1H equ 0FE2h ;# 
# 5348 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PLUSW1 equ 0FE3h ;# 
# 5354 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PREINC1 equ 0FE4h ;# 
# 5360 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
POSTDEC1 equ 0FE5h ;# 
# 5366 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
POSTINC1 equ 0FE6h ;# 
# 5372 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
INDF1 equ 0FE7h ;# 
# 5378 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
WREG equ 0FE8h ;# 
# 5389 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
FSR0 equ 0FE9h ;# 
# 5395 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
FSR0L equ 0FE9h ;# 
# 5401 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
FSR0H equ 0FEAh ;# 
# 5407 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PLUSW0 equ 0FEBh ;# 
# 5413 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PREINC0 equ 0FECh ;# 
# 5419 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
POSTDEC0 equ 0FEDh ;# 
# 5425 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
POSTINC0 equ 0FEEh ;# 
# 5431 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
INDF0 equ 0FEFh ;# 
# 5437 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
INTCON3 equ 0FF0h ;# 
# 5528 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
INTCON2 equ 0FF1h ;# 
# 5604 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
INTCON equ 0FF2h ;# 
# 5609 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
INTCON1 equ 0FF2h ;# 
# 5875 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PROD equ 0FF3h ;# 
# 5881 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PRODL equ 0FF3h ;# 
# 5887 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PRODH equ 0FF4h ;# 
# 5893 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TABLAT equ 0FF5h ;# 
# 5901 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TBLPTR equ 0FF6h ;# 
# 5907 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TBLPTRL equ 0FF6h ;# 
# 5913 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TBLPTRH equ 0FF7h ;# 
# 5919 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TBLPTRU equ 0FF8h ;# 
# 5927 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PCLAT equ 0FF9h ;# 
# 5934 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PC equ 0FF9h ;# 
# 5940 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PCL equ 0FF9h ;# 
# 5946 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PCLATH equ 0FFAh ;# 
# 5952 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
PCLATU equ 0FFBh ;# 
# 5958 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
STKPTR equ 0FFCh ;# 
# 6063 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TOS equ 0FFDh ;# 
# 6069 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TOSL equ 0FFDh ;# 
# 6075 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TOSH equ 0FFEh ;# 
# 6081 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,_MY_DELAY
	FNCALL	_main,_USARTInit
	FNCALL	_main,_bi_Operation
	FNCALL	_main,_coag_Operation
	FNCALL	_main,_cut_Operation
	FNCALL	_main,_get_char
	FNCALL	_main,_init_Values
	FNCALL	_main,_liga_Operation
	FNCALL	_main,_load_Digipot
	FNCALL	_main,_put_char
	FNCALL	_liga_Operation,_put_char
	FNCALL	_init_Values,_load_Digipot
	FNCALL	_load_Digipot,___awtoft
	FNCALL	_load_Digipot,___fttol
	FNCALL	_load_Digipot,_sqrt
	FNCALL	_sqrt,___ftge
	FNCALL	_sqrt,___ftmul
	FNCALL	_sqrt,___ftsub
	FNCALL	___ftsub,___ftadd
	FNCALL	___ftadd,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___awtoft,___ftpack
	FNROOT	_main
	global	_Bi_Power
	global	_Coag_Power
	global	_Cut_Power
	global	_errno
	global	_Bi_Mode
	global	_Coag_Mode
	global	_Cut_Mode
	global	_train
	global	_ADCON1
_ADCON1	set	0xFC1
	global	_PIR1bits
_PIR1bits	set	0xF9E
	global	_RCREG
_RCREG	set	0xFAE
	global	_RCSTAbits
_RCSTAbits	set	0xFAB
	global	_SPBRG
_SPBRG	set	0xFAF
	global	_TRISA
_TRISA	set	0xF92
	global	_TRISB
_TRISB	set	0xF93
	global	_TRISC
_TRISC	set	0xF94
	global	_TRISCbits
_TRISCbits	set	0xF94
	global	_TXREG
_TXREG	set	0xFAD
	global	_TXSTAbits
_TXSTAbits	set	0xFAC
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
	global	_RA5
_RA5	set	0x7C05
	global	_RB1
_RB1	set	0x7C09
	global	_RB2
_RB2	set	0x7C0A
	global	_RB3
_RB3	set	0x7C0B
	global	_RB4
_RB4	set	0x7C0C
	global	_RB5
_RB5	set	0x7C0D
	global	_RB6
_RB6	set	0x7C0E
	global	_RB7
_RB7	set	0x7C0F
	global	_RC0
_RC0	set	0x7C10
	global	_RC1
_RC1	set	0x7C11
psect	text0,class=CODE,space=0,reloc=2
; #config settings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic18f452.h"
	line	6677
global __ptext0
__ptext0:
global __CFG_OSCS$OFF
__CFG_OSCS$OFF equ 0x0
global __CFG_OSC$HSPLL
__CFG_OSC$HSPLL equ 0x0
global __CFG_PWRT$OFF
__CFG_PWRT$OFF equ 0x0
global __CFG_BOR$OFF
__CFG_BOR$OFF equ 0x0
global __CFG_WDT$OFF
__CFG_WDT$OFF equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
	file	"Android_Cautery.as"
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
	global	_Bi_Power
_Bi_Power:
       ds      2
	global	_Coag_Power
_Coag_Power:
       ds      2
	global	_Cut_Power
_Cut_Power:
       ds      2
	global	_errno
_errno:
       ds      2
	global	_Bi_Mode
_Bi_Mode:
       ds      1
	global	_Coag_Mode
_Coag_Mode:
       ds      1
	global	_Cut_Mode
_Cut_Mode:
       ds      1
	global	_train
	global	_train
_train:
       ds      1
	line	#
psect	cinit
; Clear objects allocated to COMRAM (12 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	12
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_init_Values:	; 0 bytes @ 0x0
?_MY_DELAY:	; 0 bytes @ 0x0
?_USARTInit:	; 0 bytes @ 0x0
??_USARTInit:	; 0 bytes @ 0x0
?_put_char:	; 0 bytes @ 0x0
??_put_char:	; 0 bytes @ 0x0
??_get_char:	; 0 bytes @ 0x0
?_cut_Operation:	; 0 bytes @ 0x0
??_cut_Operation:	; 0 bytes @ 0x0
?_coag_Operation:	; 0 bytes @ 0x0
??_coag_Operation:	; 0 bytes @ 0x0
?_bi_Operation:	; 0 bytes @ 0x0
??_bi_Operation:	; 0 bytes @ 0x0
?_liga_Operation:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?___ftge:	; 1 bit 
?_get_char:	; 1 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	put_char@ch
put_char@ch:	; 1 bytes @ 0x0
	global	get_char@data
get_char@data:	; 1 bytes @ 0x0
	global	MY_DELAY@ms
MY_DELAY@ms:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x0
	ds   1
??_liga_Operation:	; 0 bytes @ 0x1
	global	liga_Operation@dry_fl
liga_Operation@dry_fl:	; 1 bytes @ 0x1
	global	get_char@rx_delay
get_char@rx_delay:	; 2 bytes @ 0x1
	ds   1
??_MY_DELAY:	; 0 bytes @ 0x2
	global	liga_Operation@wait
liga_Operation@wait:	; 2 bytes @ 0x2
	ds   1
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x3
	ds   1
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	ds   1
??___ftpack:	; 0 bytes @ 0x5
	ds   1
??___ftge:	; 0 bytes @ 0x6
	ds   2
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x8
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x8
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x8
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x8
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x8
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x8
	ds   3
??___awtoft:	; 0 bytes @ 0xB
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xB
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0xB
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0xB
	ds   3
??___ftadd:	; 0 bytes @ 0xE
??___ftmul:	; 0 bytes @ 0xE
	ds   3
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x11
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x11
	ds   1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x12
	ds   1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x13
	ds   1
	global	?___ftsub
?___ftsub:	; 3 bytes @ 0x14
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x14
	global	___ftsub@f1
___ftsub@f1:	; 3 bytes @ 0x14
	ds   1
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x15
	ds   1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x16
	ds   1
	global	___ftsub@f2
___ftsub@f2:	; 3 bytes @ 0x17
	ds   3
??___ftsub:	; 0 bytes @ 0x1A
	global	?_sqrt
?_sqrt:	; 3 bytes @ 0x1A
	global	sqrt@y
sqrt@y:	; 3 bytes @ 0x1A
	ds   3
??_sqrt:	; 0 bytes @ 0x1D
	ds   3
	global	sqrt@og
sqrt@og:	; 3 bytes @ 0x20
	ds   3
	global	sqrt@z
sqrt@z:	; 3 bytes @ 0x23
	ds   3
	global	sqrt@i
sqrt@i:	; 1 bytes @ 0x26
	ds   1
	global	sqrt@q
sqrt@q:	; 3 bytes @ 0x27
	ds   3
	global	sqrt@x
sqrt@x:	; 3 bytes @ 0x2A
	ds   3
	global	?___fttol
?___fttol:	; 4 bytes @ 0x2D
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x2D
	ds   4
??___fttol:	; 0 bytes @ 0x31
	ds   5
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x36
	ds   1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x37
	ds   4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x3B
	ds   1
?_load_Digipot:	; 0 bytes @ 0x3C
	global	load_Digipot@Power
load_Digipot@Power:	; 2 bytes @ 0x3C
	ds   2
	global	load_Digipot@Mode
load_Digipot@Mode:	; 1 bytes @ 0x3E
	ds   1
??_load_Digipot:	; 0 bytes @ 0x3F
	ds   4
	global	load_Digipot@R1
load_Digipot@R1:	; 1 bytes @ 0x43
	ds   1
	global	load_Digipot@i
load_Digipot@i:	; 1 bytes @ 0x44
	ds   1
	global	load_Digipot@j
load_Digipot@j:	; 1 bytes @ 0x45
	ds   1
	global	load_Digipot@temp
load_Digipot@temp:	; 1 bytes @ 0x46
	ds   1
??_init_Values:	; 0 bytes @ 0x47
??_main:	; 0 bytes @ 0x47
	ds   1
	global	main@communication
main@communication:	; 1 bytes @ 0x48
	ds   1
	global	main@milis
main@milis:	; 2 bytes @ 0x49
	ds   2
	global	main@inact_flag
main@inact_flag:	; 1 bytes @ 0x4B
	ds   1
	global	main@addition
main@addition:	; 2 bytes @ 0x4C
	ds   2
	global	main@e_enable
main@e_enable:	; 1 bytes @ 0x4E
	ds   1
	global	main@data_flag
main@data_flag:	; 1 bytes @ 0x4F
	ds   1
	global	main@multiplier
main@multiplier:	; 1 bytes @ 0x50
	ds   1
	global	main@count
main@count:	; 1 bytes @ 0x51
	ds   1
	global	main@value
main@value:	; 1 bytes @ 0x52
	ds   1
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
;!    COMRAM          127     83      95
;!    BANK0           128      0       0
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_load_Digipot
;!    _liga_Operation->_put_char
;!    _init_Values->_load_Digipot
;!    _load_Digipot->___fttol
;!    _sqrt->___ftsub
;!    ___ftsub->___ftadd
;!    ___ftadd->___ftpack
;!    ___ftmul->___ftpack
;!    ___fttol->_sqrt
;!    ___awtoft->___ftpack
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                12    12      0   13698
;!                                             71 COMRAM    12    12      0
;!                           _MY_DELAY
;!                          _USARTInit
;!                       _bi_Operation
;!                     _coag_Operation
;!                      _cut_Operation
;!                           _get_char
;!                        _init_Values
;!                     _liga_Operation
;!                       _load_Digipot
;!                           _put_char
;! ---------------------------------------------------------------------------------
;! (1) _liga_Operation                                       3     3      0      60
;!                                              1 COMRAM     3     3      0
;!                           _put_char
;! ---------------------------------------------------------------------------------
;! (1) _put_char                                             1     1      0      15
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _init_Values                                          0     0      0    6176
;!                       _load_Digipot
;! ---------------------------------------------------------------------------------
;! (1) _load_Digipot                                        11     8      3    6176
;!                                             60 COMRAM    11     8      3
;!                           ___awtoft
;!                            ___fttol
;!                               _sqrt
;! ---------------------------------------------------------------------------------
;! (2) _sqrt                                                19    16      3    4072
;!                                             26 COMRAM    19    16      3
;!                           ___awtoft (ARG)
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftsub
;! ---------------------------------------------------------------------------------
;! (3) ___ftsub                                              6     0      6    1890
;!                                             20 COMRAM     6     0      6
;!                            ___ftadd
;! ---------------------------------------------------------------------------------
;! (4) ___ftadd                                             12     6      6    1740
;!                                              8 COMRAM    12     6      6
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (3) ___ftmul                                             15     9      6    1667
;!                                              8 COMRAM    15     9      6
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (3) ___ftge                                               9     3      6     158
;!                                              0 COMRAM     9     3      6
;! ---------------------------------------------------------------------------------
;! (2) ___fttol                                             15    11      4     267
;!                                             45 COMRAM    15    11      4
;!                           ___awtoft (ARG)
;!                               _sqrt (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___awtoft                                             4     1      3    1227
;!                                              8 COMRAM     4     1      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (5) ___ftpack                                             8     3      5    1065
;!                                              0 COMRAM     8     3      5
;! ---------------------------------------------------------------------------------
;! (1) _get_char                                             3     3      0      45
;!                                              0 COMRAM     3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _cut_Operation                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _coag_Operation                                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _bi_Operation                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _USARTInit                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _MY_DELAY                                             3     1      2     491
;!                                              0 COMRAM     3     1      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _MY_DELAY
;!   _USARTInit
;!   _bi_Operation
;!   _coag_Operation
;!   _cut_Operation
;!   _get_char
;!   _init_Values
;!     _load_Digipot
;!       ___awtoft
;!         ___ftpack
;!       ___fttol
;!         ___awtoft (ARG)
;!           ___ftpack
;!         _sqrt (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftge (ARG)
;!           ___ftmul (ARG)
;!             ___ftpack
;!           ___ftsub (ARG)
;!             ___ftadd
;!               ___ftpack
;!       _sqrt
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftge (ARG)
;!         ___ftmul (ARG)
;!           ___ftpack
;!         ___ftsub (ARG)
;!           ___ftadd
;!             ___ftpack
;!   _liga_Operation
;!     _put_char
;!   _load_Digipot
;!     ___awtoft
;!       ___ftpack
;!     ___fttol
;!       ___awtoft (ARG)
;!         ___ftpack
;!       _sqrt (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftge (ARG)
;!         ___ftmul (ARG)
;!           ___ftpack
;!         ___ftsub (ARG)
;!           ___ftadd
;!             ___ftpack
;!     _sqrt
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftge (ARG)
;!       ___ftmul (ARG)
;!         ___ftpack
;!       ___ftsub (ARG)
;!         ___ftadd
;!           ___ftpack
;!   _put_char
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             5FF      0       0      17        0.0%
;!EEDATA             100      0       0       0        0.0%
;!BITBANK5           100      0       0      16        0.0%
;!BANK5              100      0       0      14        0.0%
;!BITBANK4           100      0       0      12        0.0%
;!BANK4              100      0       0      13        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0       0       7        0.0%
;!BITBANK0            80      0       0       4        0.0%
;!BANK0               80      0       0       5        0.0%
;!BITCOMRAM           7F      0       0       0        0.0%
;!COMRAM              7F     53      5F       1       74.8%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      5F      15        0.0%
;!DATA                 0      0      5F       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 12 in file "E:\Study Material\XC8 PROJECTS\Android Cautery\Android_Cautery.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  addition        2   76[COMRAM] int 
;;  milis           2   73[COMRAM] int 
;;  value           1   82[COMRAM] unsigned char 
;;  count           1   81[COMRAM] unsigned char 
;;  multiplier      1   80[COMRAM] unsigned char 
;;  data_flag       1   79[COMRAM] unsigned char 
;;  e_enable        1   78[COMRAM] unsigned char 
;;  inact_flag      1   75[COMRAM] unsigned char 
;;  communicatio    1   72[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:        11       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_MY_DELAY
;;		_USARTInit
;;		_bi_Operation
;;		_coag_Operation
;;		_cut_Operation
;;		_get_char
;;		_init_Values
;;		_liga_Operation
;;		_load_Digipot
;;		_put_char
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0
psect	text0
	file	"E:\Study Material\XC8 PROJECTS\Android Cautery\Android_Cautery.c"
	line	12
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
	line	14
	
l1309:
;Android_Cautery.c: 14: TRISA = 0xFF;
	setf	((c:3986)),c	;volatile
	line	15
	
l1311:
;Android_Cautery.c: 15: TRISB = 0x00;
	movlw	low(0)
	movwf	((c:3987)),c	;volatile
	line	16
;Android_Cautery.c: 16: TRISC = 0x80;
	movlw	low(080h)
	movwf	((c:3988)),c	;volatile
	line	17
;Android_Cautery.c: 17: ADCON1 = 0x06;
	movlw	low(06h)
	movwf	((c:4033)),c	;volatile
	line	19
	
l1313:
;Android_Cautery.c: 19: init_Values();
	call	_init_Values	;wreg free
	line	21
	
l1315:
;Android_Cautery.c: 21: RB1 = 0;
	bcf	c:(31753/8),(31753)&7	;volatile
	line	22
	
l1317:
;Android_Cautery.c: 22: RB2 = 1;
	bsf	c:(31754/8),(31754)&7	;volatile
	line	23
	
l1319:
;Android_Cautery.c: 23: RB3 = 0;
	bcf	c:(31755/8),(31755)&7	;volatile
	line	24
	
l1321:
;Android_Cautery.c: 24: RB4 = 0;
	bcf	c:(31756/8),(31756)&7	;volatile
	line	25
	
l1323:
;Android_Cautery.c: 25: RB5 = 0;
	bcf	c:(31757/8),(31757)&7	;volatile
	line	26
	
l1325:
;Android_Cautery.c: 26: RB6 = 0;
	bcf	c:(31758/8),(31758)&7	;volatile
	line	27
	
l1327:
;Android_Cautery.c: 27: RC0 = 0;
	bcf	c:(31760/8),(31760)&7	;volatile
	line	28
	
l1329:
;Android_Cautery.c: 28: RC1 = 0;
	bcf	c:(31761/8),(31761)&7	;volatile
	line	30
	
l1331:
;Android_Cautery.c: 30: int addition = 0;
	movlw	high(0)
	movwf	((c:main@addition+1)),c
	movlw	low(0)
	movwf	((c:main@addition)),c
	line	31
	
l1333:
;Android_Cautery.c: 31: unsigned char inact_flag = 0;
	movlw	low(0)
	movwf	((c:main@inact_flag)),c
	line	32
	
l1335:
;Android_Cautery.c: 32: char value = 0, multiplier = 1;
	movlw	low(0)
	movwf	((c:main@value)),c
	
l1337:
	movlw	low(01h)
	movwf	((c:main@multiplier)),c
	line	35
	
l1339:
;Android_Cautery.c: 33: char count;
;Android_Cautery.c: 34: char communication;
;Android_Cautery.c: 35: int milis = 0;
	movlw	high(0)
	movwf	((c:main@milis+1)),c
	movlw	low(0)
	movwf	((c:main@milis)),c
	line	36
	
l1341:
;Android_Cautery.c: 36: unsigned char data_flag = 0;
	movlw	low(0)
	movwf	((c:main@data_flag)),c
	line	37
	
l1343:
;Android_Cautery.c: 37: unsigned char e_enable = 0;
	movlw	low(0)
	movwf	((c:main@e_enable)),c
	line	39
	
l1345:
;Android_Cautery.c: 39: for(count = 0; count < 5; count++)
	movlw	low(0)
	movwf	((c:main@count)),c
	
l1347:
	movlw	(05h-1)
	cpfsgt	((c:main@count)),c
	goto	u811
	goto	u810
u811:
	goto	l75
u810:
	goto	l1359
	
l1349:
	goto	l1359
	line	40
	
l75:
	line	41
;Android_Cautery.c: 40: {
;Android_Cautery.c: 41: RB7 = 1;
	bsf	c:(31759/8),(31759)&7	;volatile
	line	42
	
l1351:
;Android_Cautery.c: 42: MY_DELAY(1000);
	movlw	high(03E8h)
	movwf	((c:MY_DELAY@ms+1)),c
	movlw	low(03E8h)
	movwf	((c:MY_DELAY@ms)),c
	call	_MY_DELAY	;wreg free
	line	43
	
l1353:
;Android_Cautery.c: 43: RB7 = 0;
	bcf	c:(31759/8),(31759)&7	;volatile
	line	44
;Android_Cautery.c: 44: MY_DELAY(1000);
	movlw	high(03E8h)
	movwf	((c:MY_DELAY@ms+1)),c
	movlw	low(03E8h)
	movwf	((c:MY_DELAY@ms)),c
	call	_MY_DELAY	;wreg free
	line	39
	
l1355:
	incf	((c:main@count)),c
	
l1357:
	movlw	(05h-1)
	cpfsgt	((c:main@count)),c
	goto	u821
	goto	u820
u821:
	goto	l75
u820:
	goto	l1359
	
l76:
	line	46
	
l1359:
;Android_Cautery.c: 45: }
;Android_Cautery.c: 46: count = 0;
	movlw	low(0)
	movwf	((c:main@count)),c
	line	48
	
l1361:
;Android_Cautery.c: 48: USARTInit();
	call	_USARTInit	;wreg free
	goto	l1363
	line	50
;Android_Cautery.c: 50: while(1)
	
l77:
	line	52
	
l1363:
;Android_Cautery.c: 51: {
;Android_Cautery.c: 52: _delay((unsigned long)((1)*(40000000/4000.0)));
	movlw	10
movwf	(??_main+0+0)&0ffh,c,f
	movlw	190
u1257:
	decfsz	wreg,f
	goto	u1257
	decfsz	(??_main+0+0)&0ffh,c,f
	goto	u1257
	nop2

	line	53
	
l1365:
;Android_Cautery.c: 53: milis++;
	infsnz	((c:main@milis)),c
	incf	((c:main@milis+1)),c
	line	54
	
l1367:
;Android_Cautery.c: 54: if(inact_flag == 0 && e_enable == 1)
	tstfsz	((c:main@inact_flag)),c
	goto	u831
	goto	u830
u831:
	goto	l78
u830:
	
l1369:
	decf	((c:main@e_enable)),c,w

	btfss	status,2
	goto	u841
	goto	u840
u841:
	goto	l78
u840:
	line	56
	
l1371:
;Android_Cautery.c: 55: {
;Android_Cautery.c: 56: if(milis >= 2000)
	movf	((c:main@milis+1)),c,w
	xorlw	80h
	addlw	-((07h)^80h)
	movlw	0D0h
	btfsc	status,2
	subwf	((c:main@milis)),c,w
	btfss	status,0
	goto	u851
	goto	u850
u851:
	goto	l78
u850:
	line	58
	
l1373:
;Android_Cautery.c: 57: {
;Android_Cautery.c: 58: milis = 0;
	movlw	high(0)
	movwf	((c:main@milis+1)),c
	movlw	low(0)
	movwf	((c:main@milis)),c
	line	60
	
l1375:
;Android_Cautery.c: 60: put_char('N');
	movlw	(04Eh)&0ffh
	
	call	_put_char
	line	61
	
l1377:
;Android_Cautery.c: 61: RB7 = ~RB7;
	btg	c:(31759/8),(31759)&7	;volatile
	line	62
	
l1379:
;Android_Cautery.c: 62: communication = 'X';
	movlw	low(058h)
	movwf	((c:main@communication)),c
	line	63
	
l1381:
;Android_Cautery.c: 63: communication = get_char();
	call	_get_char	;wreg free
	movwf	((c:main@communication)),c
	line	64
	
l1383:
;Android_Cautery.c: 64: if(communication == 'S')
	movf	((c:main@communication)),c,w
	xorlw	83

	btfss	status,2
	goto	u861
	goto	u860
u861:
	goto	l78
u860:
	line	65
	
l1385:
;Android_Cautery.c: 65: RC0 = ~RC0;
	btg	c:(31760/8),(31760)&7	;volatile
	goto	l78
	
l80:
	goto	l78
	line	66
	
l79:
	line	67
	
l78:
	line	68
;Android_Cautery.c: 66: }
;Android_Cautery.c: 67: }
;Android_Cautery.c: 68: if(RA4 == 1)
	btfss	c:(31748/8),(31748)&7	;volatile
	goto	u871
	goto	u870
u871:
	goto	l1395
u870:
	line	70
	
l1387:
;Android_Cautery.c: 69: {
;Android_Cautery.c: 70: if(inact_flag == 1)
	decf	((c:main@inact_flag)),c,w

	btfss	status,2
	goto	u881
	goto	u880
u881:
	goto	l1393
u880:
	line	72
	
l1389:
;Android_Cautery.c: 71: {
;Android_Cautery.c: 72: put_char('K');
	movlw	(04Bh)&0ffh
	
	call	_put_char
	line	73
	
l1391:
;Android_Cautery.c: 73: inact_flag = 0;
	movlw	low(0)
	movwf	((c:main@inact_flag)),c
	goto	l1393
	line	74
	
l82:
	line	75
	
l1393:
;Android_Cautery.c: 74: }
;Android_Cautery.c: 75: MY_DELAY(1);
	movlw	high(01h)
	movwf	((c:MY_DELAY@ms+1)),c
	movlw	low(01h)
	movwf	((c:MY_DELAY@ms)),c
	call	_MY_DELAY	;wreg free
	goto	l1395
	line	76
	
l81:
	line	77
	
l1395:
;Android_Cautery.c: 76: }
;Android_Cautery.c: 77: if(RA0 == 0)
	btfsc	c:(31744/8),(31744)&7	;volatile
	goto	u891
	goto	u890
u891:
	goto	l1471
u890:
	line	79
	
l1397:
;Android_Cautery.c: 78: {
;Android_Cautery.c: 79: _delay((unsigned long)((10)*(40000000/4000.0)));
	movlw	98
movwf	(??_main+0+0)&0ffh,c,f
	movlw	118
u1267:
	decfsz	wreg,f
	goto	u1267
	decfsz	(??_main+0+0)&0ffh,c,f
	goto	u1267
	nop2

	line	80
	
l1399:
;Android_Cautery.c: 80: if(RA0 == 0)
	btfsc	c:(31744/8),(31744)&7	;volatile
	goto	u901
	goto	u900
u901:
	goto	l1471
u900:
	line	82
	
l1401:
;Android_Cautery.c: 81: {
;Android_Cautery.c: 82: if(RA4 == 0)
	btfsc	c:(31748/8),(31748)&7	;volatile
	goto	u911
	goto	u910
u911:
	goto	l1411
u910:
	line	84
	
l1403:
;Android_Cautery.c: 83: {
;Android_Cautery.c: 84: if(inact_flag == 0)
	tstfsz	((c:main@inact_flag)),c
	goto	u921
	goto	u920
u921:
	goto	l1409
u920:
	line	86
	
l1405:
;Android_Cautery.c: 85: {
;Android_Cautery.c: 86: put_char('I');
	movlw	(049h)&0ffh
	
	call	_put_char
	line	87
	
l1407:
;Android_Cautery.c: 87: inact_flag = 1;
	movlw	low(01h)
	movwf	((c:main@inact_flag)),c
	goto	l1409
	line	88
	
l86:
	line	89
	
l1409:
;Android_Cautery.c: 88: }
;Android_Cautery.c: 89: MY_DELAY(500);
	movlw	high(01F4h)
	movwf	((c:MY_DELAY@ms+1)),c
	movlw	low(01F4h)
	movwf	((c:MY_DELAY@ms)),c
	call	_MY_DELAY	;wreg free
	line	90
;Android_Cautery.c: 90: }
	goto	l1471
	line	91
	
l85:
	line	93
	
l1411:
;Android_Cautery.c: 91: else
;Android_Cautery.c: 92: {
;Android_Cautery.c: 93: data_flag = 0;
	movlw	low(0)
	movwf	((c:main@data_flag)),c
	line	95
	
l1413:
;Android_Cautery.c: 95: put_char('A');
	movlw	(041h)&0ffh
	
	call	_put_char
	line	96
	
l1415:
;Android_Cautery.c: 96: multiplier = 1;
	movlw	low(01h)
	movwf	((c:main@multiplier)),c
	line	98
	
l1417:
;Android_Cautery.c: 98: for(count = 0; count < 3; count++)
	movlw	low(0)
	movwf	((c:main@count)),c
	
l1419:
	movlw	(03h-1)
	cpfsgt	((c:main@count)),c
	goto	u931
	goto	u930
u931:
	goto	l1423
u930:
	goto	l1443
	
l1421:
	goto	l1443
	line	99
	
l88:
	line	100
	
l1423:
;Android_Cautery.c: 99: {
;Android_Cautery.c: 100: value = 0;
	movlw	low(0)
	movwf	((c:main@value)),c
	line	101
;Android_Cautery.c: 101: addition = 0;
	movlw	high(0)
	movwf	((c:main@addition+1)),c
	movlw	low(0)
	movwf	((c:main@addition)),c
	line	102
	
l1425:
;Android_Cautery.c: 102: value = get_char();
	call	_get_char	;wreg free
	movwf	((c:main@value)),c
	line	103
	
l1427:
;Android_Cautery.c: 103: value = value - 48;
	movf	((c:main@value)),c,w
	addlw	low(0D0h)
	movwf	((c:main@value)),c
	line	104
	
l1429:
;Android_Cautery.c: 104: if(value >= 0 && value <= 9)
	movlw	(0Ah)&0ffh
	subwf	((c:main@value)),c,w
	btfsc	status,0
	goto	u941
	goto	u940
u941:
	goto	l1437
u940:
	line	107
	
l1431:
;Android_Cautery.c: 105: {
;Android_Cautery.c: 107: addition = value * multiplier;
	movf	((c:main@value)),c,w
	mulwf	((c:main@multiplier)),c
	movff	prodl,(c:main@addition)
	movff	prodh,(c:main@addition+1)
	line	108
	
l1433:
;Android_Cautery.c: 108: Cut_Power = Cut_Power + addition;
	movf	((c:main@addition)),c,w
	addwf	((c:_Cut_Power)),c,w
	
	movwf	((c:_Cut_Power)),c
	movf	((c:main@addition+1)),c,w
	addwfc	((c:_Cut_Power+1)),c,w
	movwf	1+((c:_Cut_Power)),c
	line	109
	
l1435:
;Android_Cautery.c: 109: multiplier = multiplier * 10;
	movf	((c:main@multiplier)),c,w
	mullw	0Ah
	movff	prodl,(c:main@multiplier)
	line	110
;Android_Cautery.c: 110: }
	goto	l1439
	line	111
	
l90:
	line	112
	
l1437:
;Android_Cautery.c: 111: else
;Android_Cautery.c: 112: data_flag = 1;
	movlw	low(01h)
	movwf	((c:main@data_flag)),c
	goto	l1439
	
l91:
	line	98
	
l1439:
	incf	((c:main@count)),c
	
l1441:
	movlw	(03h-1)
	cpfsgt	((c:main@count)),c
	goto	u951
	goto	u950
u951:
	goto	l1423
u950:
	goto	l1443
	
l89:
	line	115
	
l1443:
;Android_Cautery.c: 113: }
;Android_Cautery.c: 115: Cut_Mode = get_char();
	call	_get_char	;wreg free
	movwf	((c:_Cut_Mode)),c
	line	116
	
l1445:
;Android_Cautery.c: 116: if(Cut_Mode != 'X')
	movf	((c:_Cut_Mode)),c,w
	xorlw	88

	btfsc	status,2
	goto	u961
	goto	u960
u961:
	goto	l1449
u960:
	line	117
	
l1447:
;Android_Cautery.c: 117: Cut_Mode = Cut_Mode - 48;
	movf	((c:_Cut_Mode)),c,w
	addlw	low(0D0h)
	movwf	((c:_Cut_Mode)),c
	goto	l1451
	line	118
	
l92:
	line	119
	
l1449:
;Android_Cautery.c: 118: else
;Android_Cautery.c: 119: data_flag = 1;
	movlw	low(01h)
	movwf	((c:main@data_flag)),c
	goto	l1451
	
l93:
	line	120
	
l1451:
;Android_Cautery.c: 120: if(data_flag == 0)
	tstfsz	((c:main@data_flag)),c
	goto	u971
	goto	u970
u971:
	goto	l1459
u970:
	line	123
	
l1453:
;Android_Cautery.c: 121: {
;Android_Cautery.c: 123: load_Digipot(Cut_Power, 1);
	movff	(c:_Cut_Power),(c:load_Digipot@Power)
	movff	(c:_Cut_Power+1),(c:load_Digipot@Power+1)
	movlw	low(01h)
	movwf	((c:load_Digipot@Mode)),c
	call	_load_Digipot	;wreg free
	line	125
	
l1455:
;Android_Cautery.c: 125: put_char('D');
	movlw	(044h)&0ffh
	
	call	_put_char
	line	127
	
l1457:
;Android_Cautery.c: 127: cut_Operation();
	call	_cut_Operation	;wreg free
	goto	l1459
	line	128
	
l94:
	line	130
	
l1459:
;Android_Cautery.c: 128: }
;Android_Cautery.c: 130: init_Values();
	call	_init_Values	;wreg free
	line	131
	
l1461:
;Android_Cautery.c: 131: MY_DELAY(50);
	movlw	high(032h)
	movwf	((c:MY_DELAY@ms+1)),c
	movlw	low(032h)
	movwf	((c:MY_DELAY@ms)),c
	call	_MY_DELAY	;wreg free
	line	133
	
l1463:
;Android_Cautery.c: 133: put_char('E');
	movlw	(045h)&0ffh
	
	call	_put_char
	line	134
	
l1465:
;Android_Cautery.c: 134: MY_DELAY(50);
	movlw	high(032h)
	movwf	((c:MY_DELAY@ms+1)),c
	movlw	low(032h)
	movwf	((c:MY_DELAY@ms)),c
	call	_MY_DELAY	;wreg free
	line	135
	
l1467:
;Android_Cautery.c: 135: if(e_enable == 0)
	tstfsz	((c:main@e_enable)),c
	goto	u981
	goto	u980
u981:
	goto	l95
u980:
	line	136
	
l1469:
;Android_Cautery.c: 136: e_enable = 1;
	movlw	low(01h)
	movwf	((c:main@e_enable)),c
	
l95:
	line	137
;Android_Cautery.c: 137: milis = 0;
	movlw	high(0)
	movwf	((c:main@milis+1)),c
	movlw	low(0)
	movwf	((c:main@milis)),c
	goto	l1471
	line	139
	
l87:
	goto	l1471
	line	140
	
l84:
	goto	l1471
	line	141
	
l83:
	line	143
	
l1471:
;Android_Cautery.c: 139: }
;Android_Cautery.c: 140: }
;Android_Cautery.c: 141: }
;Android_Cautery.c: 143: if(RA1 == 0)
	btfsc	c:(31745/8),(31745)&7	;volatile
	goto	u991
	goto	u990
u991:
	goto	l1553
u990:
	line	145
	
l1473:
;Android_Cautery.c: 144: {
;Android_Cautery.c: 145: _delay((unsigned long)((10)*(40000000/4000.0)));
	movlw	98
movwf	(??_main+0+0)&0ffh,c,f
	movlw	118
u1277:
	decfsz	wreg,f
	goto	u1277
	decfsz	(??_main+0+0)&0ffh,c,f
	goto	u1277
	nop2

	line	146
	
l1475:
;Android_Cautery.c: 146: if(RA1 == 0)
	btfsc	c:(31745/8),(31745)&7	;volatile
	goto	u1001
	goto	u1000
u1001:
	goto	l1553
u1000:
	line	148
	
l1477:
;Android_Cautery.c: 147: {
;Android_Cautery.c: 148: if(RA4 == 0)
	btfsc	c:(31748/8),(31748)&7	;volatile
	goto	u1011
	goto	u1010
u1011:
	goto	l1487
u1010:
	line	150
	
l1479:
;Android_Cautery.c: 149: {
;Android_Cautery.c: 150: if(inact_flag == 0)
	tstfsz	((c:main@inact_flag)),c
	goto	u1021
	goto	u1020
u1021:
	goto	l1485
u1020:
	line	152
	
l1481:
;Android_Cautery.c: 151: {
;Android_Cautery.c: 152: put_char('I');
	movlw	(049h)&0ffh
	
	call	_put_char
	line	153
	
l1483:
;Android_Cautery.c: 153: inact_flag = 1;
	movlw	low(01h)
	movwf	((c:main@inact_flag)),c
	goto	l1485
	line	154
	
l99:
	line	155
	
l1485:
;Android_Cautery.c: 154: }
;Android_Cautery.c: 155: MY_DELAY(500);
	movlw	high(01F4h)
	movwf	((c:MY_DELAY@ms+1)),c
	movlw	low(01F4h)
	movwf	((c:MY_DELAY@ms)),c
	call	_MY_DELAY	;wreg free
	line	156
;Android_Cautery.c: 156: }
	goto	l1553
	line	157
	
l98:
	line	159
	
l1487:
;Android_Cautery.c: 157: else
;Android_Cautery.c: 158: {
;Android_Cautery.c: 159: data_flag = 0;
	movlw	low(0)
	movwf	((c:main@data_flag)),c
	line	161
	
l1489:
;Android_Cautery.c: 161: put_char('B');
	movlw	(042h)&0ffh
	
	call	_put_char
	line	162
	
l1491:
;Android_Cautery.c: 162: multiplier = 1;
	movlw	low(01h)
	movwf	((c:main@multiplier)),c
	line	164
	
l1493:
;Android_Cautery.c: 164: for(count = 0; count < 3; count++)
	movlw	low(0)
	movwf	((c:main@count)),c
	
l1495:
	movlw	(03h-1)
	cpfsgt	((c:main@count)),c
	goto	u1031
	goto	u1030
u1031:
	goto	l1499
u1030:
	goto	l1519
	
l1497:
	goto	l1519
	line	165
	
l101:
	line	166
	
l1499:
;Android_Cautery.c: 165: {
;Android_Cautery.c: 166: value = 0;
	movlw	low(0)
	movwf	((c:main@value)),c
	line	167
;Android_Cautery.c: 167: addition = 0;
	movlw	high(0)
	movwf	((c:main@addition+1)),c
	movlw	low(0)
	movwf	((c:main@addition)),c
	line	168
	
l1501:
;Android_Cautery.c: 168: value = get_char();
	call	_get_char	;wreg free
	movwf	((c:main@value)),c
	line	169
	
l1503:
;Android_Cautery.c: 169: value = value - 48;
	movf	((c:main@value)),c,w
	addlw	low(0D0h)
	movwf	((c:main@value)),c
	line	170
	
l1505:
;Android_Cautery.c: 170: if(value >= 0 && value <= 9)
	movlw	(0Ah)&0ffh
	subwf	((c:main@value)),c,w
	btfsc	status,0
	goto	u1041
	goto	u1040
u1041:
	goto	l1513
u1040:
	line	173
	
l1507:
;Android_Cautery.c: 171: {
;Android_Cautery.c: 173: addition = value * multiplier;
	movf	((c:main@value)),c,w
	mulwf	((c:main@multiplier)),c
	movff	prodl,(c:main@addition)
	movff	prodh,(c:main@addition+1)
	line	174
	
l1509:
;Android_Cautery.c: 174: Coag_Power = Coag_Power + addition;
	movf	((c:main@addition)),c,w
	addwf	((c:_Coag_Power)),c,w
	
	movwf	((c:_Coag_Power)),c
	movf	((c:main@addition+1)),c,w
	addwfc	((c:_Coag_Power+1)),c,w
	movwf	1+((c:_Coag_Power)),c
	line	175
	
l1511:
;Android_Cautery.c: 175: multiplier = multiplier * 10;
	movf	((c:main@multiplier)),c,w
	mullw	0Ah
	movff	prodl,(c:main@multiplier)
	line	176
;Android_Cautery.c: 176: }
	goto	l1515
	line	177
	
l103:
	line	178
	
l1513:
;Android_Cautery.c: 177: else
;Android_Cautery.c: 178: data_flag = 1;
	movlw	low(01h)
	movwf	((c:main@data_flag)),c
	goto	l1515
	
l104:
	line	164
	
l1515:
	incf	((c:main@count)),c
	
l1517:
	movlw	(03h-1)
	cpfsgt	((c:main@count)),c
	goto	u1051
	goto	u1050
u1051:
	goto	l1499
u1050:
	goto	l1519
	
l102:
	line	181
	
l1519:
;Android_Cautery.c: 179: }
;Android_Cautery.c: 181: Coag_Mode = get_char();
	call	_get_char	;wreg free
	movwf	((c:_Coag_Mode)),c
	line	182
	
l1521:
;Android_Cautery.c: 182: if(Coag_Mode != 'X')
	movf	((c:_Coag_Mode)),c,w
	xorlw	88

	btfsc	status,2
	goto	u1061
	goto	u1060
u1061:
	goto	l1525
u1060:
	line	183
	
l1523:
;Android_Cautery.c: 183: Coag_Mode = Coag_Mode - 48;
	movf	((c:_Coag_Mode)),c,w
	addlw	low(0D0h)
	movwf	((c:_Coag_Mode)),c
	goto	l1527
	line	184
	
l105:
	line	185
	
l1525:
;Android_Cautery.c: 184: else
;Android_Cautery.c: 185: data_flag = 1;
	movlw	low(01h)
	movwf	((c:main@data_flag)),c
	goto	l1527
	
l106:
	line	186
	
l1527:
;Android_Cautery.c: 186: if(data_flag == 0)
	tstfsz	((c:main@data_flag)),c
	goto	u1071
	goto	u1070
u1071:
	goto	l1539
u1070:
	line	189
	
l1529:
;Android_Cautery.c: 187: {
;Android_Cautery.c: 189: load_Digipot(Coag_Power, 2);
	movff	(c:_Coag_Power),(c:load_Digipot@Power)
	movff	(c:_Coag_Power+1),(c:load_Digipot@Power+1)
	movlw	low(02h)
	movwf	((c:load_Digipot@Mode)),c
	call	_load_Digipot	;wreg free
	line	191
	
l1531:
;Android_Cautery.c: 191: put_char('D');
	movlw	(044h)&0ffh
	
	call	_put_char
	line	193
	
l1533:
;Android_Cautery.c: 193: RB6 = 1;
	bsf	c:(31758/8),(31758)&7	;volatile
	line	194
	
l1535:
;Android_Cautery.c: 194: _delay(25);
	movlw	5
u1287:
	nop
decfsz	wreg,f
	goto	u1287

	line	195
	
l1537:
;Android_Cautery.c: 195: coag_Operation();
	call	_coag_Operation	;wreg free
	goto	l1539
	line	196
	
l107:
	line	198
	
l1539:
;Android_Cautery.c: 196: }
;Android_Cautery.c: 198: init_Values();
	call	_init_Values	;wreg free
	line	200
	
l1541:
;Android_Cautery.c: 200: RB6 = 0;
	bcf	c:(31758/8),(31758)&7	;volatile
	line	201
	
l1543:
;Android_Cautery.c: 201: MY_DELAY(50);
	movlw	high(032h)
	movwf	((c:MY_DELAY@ms+1)),c
	movlw	low(032h)
	movwf	((c:MY_DELAY@ms)),c
	call	_MY_DELAY	;wreg free
	line	203
	
l1545:
;Android_Cautery.c: 203: put_char('E');
	movlw	(045h)&0ffh
	
	call	_put_char
	line	204
	
l1547:
;Android_Cautery.c: 204: MY_DELAY(50);
	movlw	high(032h)
	movwf	((c:MY_DELAY@ms+1)),c
	movlw	low(032h)
	movwf	((c:MY_DELAY@ms)),c
	call	_MY_DELAY	;wreg free
	line	205
	
l1549:
;Android_Cautery.c: 205: if(e_enable == 0)
	tstfsz	((c:main@e_enable)),c
	goto	u1081
	goto	u1080
u1081:
	goto	l108
u1080:
	line	206
	
l1551:
;Android_Cautery.c: 206: e_enable = 1;
	movlw	low(01h)
	movwf	((c:main@e_enable)),c
	
l108:
	line	207
;Android_Cautery.c: 207: milis = 0;
	movlw	high(0)
	movwf	((c:main@milis+1)),c
	movlw	low(0)
	movwf	((c:main@milis)),c
	goto	l1553
	line	209
	
l100:
	goto	l1553
	line	210
	
l97:
	goto	l1553
	line	211
	
l96:
	line	213
	
l1553:
;Android_Cautery.c: 209: }
;Android_Cautery.c: 210: }
;Android_Cautery.c: 211: }
;Android_Cautery.c: 213: if(RA2 == 0)
	btfsc	c:(31746/8),(31746)&7	;volatile
	goto	u1091
	goto	u1090
u1091:
	goto	l1627
u1090:
	line	215
	
l1555:
;Android_Cautery.c: 214: {
;Android_Cautery.c: 215: _delay((unsigned long)((10)*(40000000/4000.0)));
	movlw	98
movwf	(??_main+0+0)&0ffh,c,f
	movlw	118
u1297:
	decfsz	wreg,f
	goto	u1297
	decfsz	(??_main+0+0)&0ffh,c,f
	goto	u1297
	nop2

	line	216
	
l1557:
;Android_Cautery.c: 216: if(RA2 == 0)
	btfsc	c:(31746/8),(31746)&7	;volatile
	goto	u1101
	goto	u1100
u1101:
	goto	l1627
u1100:
	line	218
	
l1559:
;Android_Cautery.c: 217: {
;Android_Cautery.c: 218: data_flag = 0;
	movlw	low(0)
	movwf	((c:main@data_flag)),c
	line	220
	
l1561:
;Android_Cautery.c: 220: put_char('C');
	movlw	(043h)&0ffh
	
	call	_put_char
	line	221
	
l1563:
;Android_Cautery.c: 221: multiplier = 1;
	movlw	low(01h)
	movwf	((c:main@multiplier)),c
	line	223
	
l1565:
;Android_Cautery.c: 223: for(count = 0; count < 3; count++)
	movlw	low(0)
	movwf	((c:main@count)),c
	
l1567:
	movlw	(03h-1)
	cpfsgt	((c:main@count)),c
	goto	u1111
	goto	u1110
u1111:
	goto	l1571
u1110:
	goto	l1591
	
l1569:
	goto	l1591
	line	224
	
l111:
	line	225
	
l1571:
;Android_Cautery.c: 224: {
;Android_Cautery.c: 225: value = 0;
	movlw	low(0)
	movwf	((c:main@value)),c
	line	226
;Android_Cautery.c: 226: addition = 0;
	movlw	high(0)
	movwf	((c:main@addition+1)),c
	movlw	low(0)
	movwf	((c:main@addition)),c
	line	227
	
l1573:
;Android_Cautery.c: 227: value = get_char();
	call	_get_char	;wreg free
	movwf	((c:main@value)),c
	line	228
	
l1575:
;Android_Cautery.c: 228: value = value - 48;
	movf	((c:main@value)),c,w
	addlw	low(0D0h)
	movwf	((c:main@value)),c
	line	229
	
l1577:
;Android_Cautery.c: 229: if(value >= 0 && value <= 9)
	movlw	(0Ah)&0ffh
	subwf	((c:main@value)),c,w
	btfsc	status,0
	goto	u1121
	goto	u1120
u1121:
	goto	l1585
u1120:
	line	232
	
l1579:
;Android_Cautery.c: 230: {
;Android_Cautery.c: 232: addition = value * multiplier;
	movf	((c:main@value)),c,w
	mulwf	((c:main@multiplier)),c
	movff	prodl,(c:main@addition)
	movff	prodh,(c:main@addition+1)
	line	233
	
l1581:
;Android_Cautery.c: 233: Bi_Power = Bi_Power + addition;
	movf	((c:main@addition)),c,w
	addwf	((c:_Bi_Power)),c,w
	
	movwf	((c:_Bi_Power)),c
	movf	((c:main@addition+1)),c,w
	addwfc	((c:_Bi_Power+1)),c,w
	movwf	1+((c:_Bi_Power)),c
	line	234
	
l1583:
;Android_Cautery.c: 234: multiplier = multiplier * 10;
	movf	((c:main@multiplier)),c,w
	mullw	0Ah
	movff	prodl,(c:main@multiplier)
	line	235
;Android_Cautery.c: 235: }
	goto	l1587
	line	236
	
l113:
	line	237
	
l1585:
;Android_Cautery.c: 236: else
;Android_Cautery.c: 237: data_flag = 1;
	movlw	low(01h)
	movwf	((c:main@data_flag)),c
	goto	l1587
	
l114:
	line	223
	
l1587:
	incf	((c:main@count)),c
	
l1589:
	movlw	(03h-1)
	cpfsgt	((c:main@count)),c
	goto	u1131
	goto	u1130
u1131:
	goto	l1571
u1130:
	goto	l1591
	
l112:
	line	240
	
l1591:
;Android_Cautery.c: 238: }
;Android_Cautery.c: 240: Bi_Mode = get_char();
	call	_get_char	;wreg free
	movwf	((c:_Bi_Mode)),c
	line	241
	
l1593:
;Android_Cautery.c: 241: if(Bi_Mode != 'X')
	movf	((c:_Bi_Mode)),c,w
	xorlw	88

	btfsc	status,2
	goto	u1141
	goto	u1140
u1141:
	goto	l1599
u1140:
	line	243
	
l1595:
;Android_Cautery.c: 242: {
;Android_Cautery.c: 243: Bi_Mode = Bi_Mode - 48;
	movf	((c:_Bi_Mode)),c,w
	addlw	low(0D0h)
	movwf	((c:_Bi_Mode)),c
	line	244
;Android_Cautery.c: 244: if(Bi_Mode == 2)
	movf	((c:_Bi_Mode)),c,w
	xorlw	2

	btfss	status,2
	goto	u1151
	goto	u1150
u1151:
	goto	l1601
u1150:
	line	245
	
l1597:
;Android_Cautery.c: 245: Bi_Mode = 0;
	movlw	low(0)
	movwf	((c:_Bi_Mode)),c
	goto	l1601
	
l116:
	line	246
;Android_Cautery.c: 246: }
	goto	l1601
	line	247
	
l115:
	line	248
	
l1599:
;Android_Cautery.c: 247: else
;Android_Cautery.c: 248: data_flag = 1;
	movlw	low(01h)
	movwf	((c:main@data_flag)),c
	goto	l1601
	
l117:
	line	249
	
l1601:
;Android_Cautery.c: 249: if(data_flag == 0)
	tstfsz	((c:main@data_flag)),c
	goto	u1161
	goto	u1160
u1161:
	goto	l1613
u1160:
	line	252
	
l1603:
;Android_Cautery.c: 250: {
;Android_Cautery.c: 252: load_Digipot(Bi_Power, 3);
	movff	(c:_Bi_Power),(c:load_Digipot@Power)
	movff	(c:_Bi_Power+1),(c:load_Digipot@Power+1)
	movlw	low(03h)
	movwf	((c:load_Digipot@Mode)),c
	call	_load_Digipot	;wreg free
	line	254
	
l1605:
;Android_Cautery.c: 254: put_char('D');
	movlw	(044h)&0ffh
	
	call	_put_char
	line	256
	
l1607:
;Android_Cautery.c: 256: RB5 = 1;
	bsf	c:(31757/8),(31757)&7	;volatile
	line	257
	
l1609:
;Android_Cautery.c: 257: _delay(25);
	movlw	5
u1307:
	nop
decfsz	wreg,f
	goto	u1307

	line	258
	
l1611:
;Android_Cautery.c: 258: bi_Operation();
	call	_bi_Operation	;wreg free
	goto	l1613
	line	259
	
l118:
	line	261
	
l1613:
;Android_Cautery.c: 259: }
;Android_Cautery.c: 261: init_Values();
	call	_init_Values	;wreg free
	line	263
	
l1615:
;Android_Cautery.c: 263: RB5 = 0;
	bcf	c:(31757/8),(31757)&7	;volatile
	line	264
	
l1617:
;Android_Cautery.c: 264: MY_DELAY(50);
	movlw	high(032h)
	movwf	((c:MY_DELAY@ms+1)),c
	movlw	low(032h)
	movwf	((c:MY_DELAY@ms)),c
	call	_MY_DELAY	;wreg free
	line	266
	
l1619:
;Android_Cautery.c: 266: put_char('E');
	movlw	(045h)&0ffh
	
	call	_put_char
	line	267
	
l1621:
;Android_Cautery.c: 267: MY_DELAY(50);
	movlw	high(032h)
	movwf	((c:MY_DELAY@ms+1)),c
	movlw	low(032h)
	movwf	((c:MY_DELAY@ms)),c
	call	_MY_DELAY	;wreg free
	line	268
	
l1623:
;Android_Cautery.c: 268: if(e_enable == 0)
	tstfsz	((c:main@e_enable)),c
	goto	u1171
	goto	u1170
u1171:
	goto	l119
u1170:
	line	269
	
l1625:
;Android_Cautery.c: 269: e_enable = 1;
	movlw	low(01h)
	movwf	((c:main@e_enable)),c
	
l119:
	line	270
;Android_Cautery.c: 270: milis = 0;
	movlw	high(0)
	movwf	((c:main@milis+1)),c
	movlw	low(0)
	movwf	((c:main@milis)),c
	goto	l1627
	line	272
	
l110:
	goto	l1627
	line	273
	
l109:
	line	275
	
l1627:
;Android_Cautery.c: 272: }
;Android_Cautery.c: 273: }
;Android_Cautery.c: 275: if(RA3 == 0)
	btfsc	c:(31747/8),(31747)&7	;volatile
	goto	u1181
	goto	u1180
u1181:
	goto	l1363
u1180:
	line	277
	
l1629:
;Android_Cautery.c: 276: {
;Android_Cautery.c: 277: _delay((unsigned long)((10)*(40000000/4000.0)));
	movlw	98
movwf	(??_main+0+0)&0ffh,c,f
	movlw	118
u1317:
	decfsz	wreg,f
	goto	u1317
	decfsz	(??_main+0+0)&0ffh,c,f
	goto	u1317
	nop2

	line	278
	
l1631:
;Android_Cautery.c: 278: if(RA3 == 0)
	btfsc	c:(31747/8),(31747)&7	;volatile
	goto	u1191
	goto	u1190
u1191:
	goto	l1363
u1190:
	line	280
	
l1633:
;Android_Cautery.c: 279: {
;Android_Cautery.c: 280: data_flag = 0;
	movlw	low(0)
	movwf	((c:main@data_flag)),c
	line	282
	
l1635:
;Android_Cautery.c: 282: put_char('L');
	movlw	(04Ch)&0ffh
	
	call	_put_char
	line	283
	
l1637:
;Android_Cautery.c: 283: multiplier = 1;
	movlw	low(01h)
	movwf	((c:main@multiplier)),c
	line	285
	
l1639:
;Android_Cautery.c: 285: for(count = 0; count < 3; count++)
	movlw	low(0)
	movwf	((c:main@count)),c
	
l1641:
	movlw	(03h-1)
	cpfsgt	((c:main@count)),c
	goto	u1201
	goto	u1200
u1201:
	goto	l1645
u1200:
	goto	l1665
	
l1643:
	goto	l1665
	line	286
	
l122:
	line	287
	
l1645:
;Android_Cautery.c: 286: {
;Android_Cautery.c: 287: value = 0;
	movlw	low(0)
	movwf	((c:main@value)),c
	line	288
;Android_Cautery.c: 288: addition = 0;
	movlw	high(0)
	movwf	((c:main@addition+1)),c
	movlw	low(0)
	movwf	((c:main@addition)),c
	line	289
	
l1647:
;Android_Cautery.c: 289: value = get_char();
	call	_get_char	;wreg free
	movwf	((c:main@value)),c
	line	290
	
l1649:
;Android_Cautery.c: 290: value = value - 48;
	movf	((c:main@value)),c,w
	addlw	low(0D0h)
	movwf	((c:main@value)),c
	line	291
	
l1651:
;Android_Cautery.c: 291: if(value >= 0 && value <= 9)
	movlw	(0Ah)&0ffh
	subwf	((c:main@value)),c,w
	btfsc	status,0
	goto	u1211
	goto	u1210
u1211:
	goto	l1659
u1210:
	line	294
	
l1653:
;Android_Cautery.c: 292: {
;Android_Cautery.c: 294: addition = value * multiplier;
	movf	((c:main@value)),c,w
	mulwf	((c:main@multiplier)),c
	movff	prodl,(c:main@addition)
	movff	prodh,(c:main@addition+1)
	line	295
	
l1655:
;Android_Cautery.c: 295: Bi_Power = Bi_Power + addition;
	movf	((c:main@addition)),c,w
	addwf	((c:_Bi_Power)),c,w
	
	movwf	((c:_Bi_Power)),c
	movf	((c:main@addition+1)),c,w
	addwfc	((c:_Bi_Power+1)),c,w
	movwf	1+((c:_Bi_Power)),c
	line	296
	
l1657:
;Android_Cautery.c: 296: multiplier = multiplier * 10;
	movf	((c:main@multiplier)),c,w
	mullw	0Ah
	movff	prodl,(c:main@multiplier)
	line	297
;Android_Cautery.c: 297: }
	goto	l1661
	line	298
	
l124:
	line	299
	
l1659:
;Android_Cautery.c: 298: else
;Android_Cautery.c: 299: data_flag = 1;
	movlw	low(01h)
	movwf	((c:main@data_flag)),c
	goto	l1661
	
l125:
	line	285
	
l1661:
	incf	((c:main@count)),c
	
l1663:
	movlw	(03h-1)
	cpfsgt	((c:main@count)),c
	goto	u1221
	goto	u1220
u1221:
	goto	l1645
u1220:
	goto	l1665
	
l123:
	line	302
	
l1665:
;Android_Cautery.c: 300: }
;Android_Cautery.c: 302: Bi_Mode = get_char();
	call	_get_char	;wreg free
	movwf	((c:_Bi_Mode)),c
	line	303
	
l1667:
;Android_Cautery.c: 303: Bi_Mode = 2;
	movlw	low(02h)
	movwf	((c:_Bi_Mode)),c
	line	304
	
l1669:
;Android_Cautery.c: 304: if(data_flag == 0)
	tstfsz	((c:main@data_flag)),c
	goto	u1231
	goto	u1230
u1231:
	goto	l1683
u1230:
	line	307
	
l1671:
;Android_Cautery.c: 305: {
;Android_Cautery.c: 307: load_Digipot(Bi_Power, 4);
	movff	(c:_Bi_Power),(c:load_Digipot@Power)
	movff	(c:_Bi_Power+1),(c:load_Digipot@Power+1)
	movlw	low(04h)
	movwf	((c:load_Digipot@Mode)),c
	call	_load_Digipot	;wreg free
	line	309
	
l1673:
;Android_Cautery.c: 309: put_char('D');
	movlw	(044h)&0ffh
	
	call	_put_char
	line	311
	
l1675:
;Android_Cautery.c: 311: RB5 = 1;
	bsf	c:(31757/8),(31757)&7	;volatile
	line	312
	
l1677:
;Android_Cautery.c: 312: _delay(25);
	movlw	5
u1327:
	nop
decfsz	wreg,f
	goto	u1327

	line	313
	
l1679:
;Android_Cautery.c: 313: liga_Operation();
	call	_liga_Operation	;wreg free
	line	314
	
l1681:
;Android_Cautery.c: 314: MY_DELAY(50);
	movlw	high(032h)
	movwf	((c:MY_DELAY@ms+1)),c
	movlw	low(032h)
	movwf	((c:MY_DELAY@ms)),c
	call	_MY_DELAY	;wreg free
	goto	l1683
	line	315
	
l126:
	line	317
	
l1683:
;Android_Cautery.c: 315: }
;Android_Cautery.c: 317: init_Values();
	call	_init_Values	;wreg free
	line	319
	
l1685:
;Android_Cautery.c: 319: RB5 = 0;
	bcf	c:(31757/8),(31757)&7	;volatile
	line	320
	
l1687:
;Android_Cautery.c: 320: MY_DELAY(50);
	movlw	high(032h)
	movwf	((c:MY_DELAY@ms+1)),c
	movlw	low(032h)
	movwf	((c:MY_DELAY@ms)),c
	call	_MY_DELAY	;wreg free
	line	322
	
l1689:
;Android_Cautery.c: 322: put_char('E');
	movlw	(045h)&0ffh
	
	call	_put_char
	line	323
	
l1691:
;Android_Cautery.c: 323: MY_DELAY(50);
	movlw	high(032h)
	movwf	((c:MY_DELAY@ms+1)),c
	movlw	low(032h)
	movwf	((c:MY_DELAY@ms)),c
	call	_MY_DELAY	;wreg free
	line	324
	
l1693:
;Android_Cautery.c: 324: if(e_enable == 0)
	tstfsz	((c:main@e_enable)),c
	goto	u1241
	goto	u1240
u1241:
	goto	l127
u1240:
	line	325
	
l1695:
;Android_Cautery.c: 325: e_enable = 1;
	movlw	low(01h)
	movwf	((c:main@e_enable)),c
	
l127:
	line	326
;Android_Cautery.c: 326: milis = 0;
	movlw	high(0)
	movwf	((c:main@milis+1)),c
	movlw	low(0)
	movwf	((c:main@milis)),c
	goto	l1363
	line	328
	
l121:
	goto	l1363
	line	329
	
l120:
	goto	l1363
	line	330
	
l128:
	line	50
	goto	l1363
	
l129:
	line	331
	
l130:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_liga_Operation

;; *************** function _liga_Operation *****************
;; Defined at:
;;		line 208 in file "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  wait            2    2[COMRAM] unsigned int 
;;  dry_fl          1    1[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_put_char
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
	line	208
global __ptext1
__ptext1:
psect	text1
	file	"E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
	line	208
	global	__size_of_liga_Operation
	__size_of_liga_Operation	equ	__end_of_liga_Operation-_liga_Operation
	
_liga_Operation:
;incstack = 0
	opt	stack 29
	dw	0FFFFh
	line	210
	
l1291:
;cautery.c: 210: char dry_fl = 0;
	movlw	low(0)
	movwf	((c:liga_Operation@dry_fl)),c
	line	211
;cautery.c: 211: unsigned int wait = 0;
	movlw	high(0)
	movwf	((c:liga_Operation@wait+1)),c
	movlw	low(0)
	movwf	((c:liga_Operation@wait)),c
	line	212
;cautery.c: 212: while(RA3 == 0)
	goto	l1307
	
l248:
	line	214
;cautery.c: 213: {
;cautery.c: 214: if(dry_fl == 0)
	tstfsz	((c:liga_Operation@dry_fl)),c
	goto	u771
	goto	u770
u771:
	goto	l1303
u770:
	line	217
	
l1293:
# 217 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
movlw 0x05 ;# 
	line	218
# 218 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
MOVWF _train ;# 
	line	219
# 219 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
loop_5: ;# 
	line	220
# 220 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
BSF PORTB,1 ;# 
	line	221
# 221 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	222
# 222 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	223
# 223 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	224
# 224 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	225
# 225 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	226
# 226 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	227
# 227 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	228
# 228 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	229
# 229 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	230
# 230 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
BCF PORTB,1 ;# 
	line	231
# 231 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	232
# 232 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	233
# 233 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	234
# 234 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	235
# 235 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	236
# 236 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	237
# 237 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
decfsz _train,f ;# 
	line	238
# 238 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
goto loop_5 ;# 
psect	text1
	line	241
	
l1295:
;cautery.c: 241: wait = wait + 1;
	movlw	low(01h)
	addwf	((c:liga_Operation@wait)),c,w
	
	movwf	((c:liga_Operation@wait)),c
	movlw	high(01h)
	addwfc	((c:liga_Operation@wait+1)),c,w
	movwf	1+((c:liga_Operation@wait)),c
	line	242
;cautery.c: 242: if(wait > 50000)
	movlw	051h
	subwf	((c:liga_Operation@wait)),c,w
	movlw	0C3h
	subwfb	((c:liga_Operation@wait+1)),c,w
	btfss	status,0
	goto	u781
	goto	u780
u781:
	goto	l1303
u780:
	line	244
	
l1297:
;cautery.c: 243: {
;cautery.c: 244: if(RA5 == 1)
	btfss	c:(31749/8),(31749)&7	;volatile
	goto	u791
	goto	u790
u791:
	goto	l1303
u790:
	line	246
	
l1299:
;cautery.c: 245: {
;cautery.c: 246: dry_fl = 1;
	movlw	low(01h)
	movwf	((c:liga_Operation@dry_fl)),c
	line	247
	
l1301:
;cautery.c: 247: put_char('T');
	movlw	(054h)&0ffh
	
	call	_put_char
	goto	l1303
	line	248
	
l251:
	goto	l1303
	line	249
	
l250:
	goto	l1303
	line	250
	
l249:
	line	251
	
l1303:
;cautery.c: 248: }
;cautery.c: 249: }
;cautery.c: 250: }
;cautery.c: 251: RB1 = 0;
	bcf	c:(31753/8),(31753)&7	;volatile
	line	252
	
l1305:
;cautery.c: 252: _delay(600);
	movlw	150
u1337:
decfsz	wreg,f
	goto	u1337

	goto	l1307
	line	253
	
l247:
	line	212
	
l1307:
	btfss	c:(31747/8),(31747)&7	;volatile
	goto	u801
	goto	u800
u801:
	goto	l248
u800:
	goto	l253
	
l252:
	line	254
	
l253:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_liga_Operation
	__end_of_liga_Operation:
	signat	_liga_Operation,88
	global	_put_char

;; *************** function _put_char *****************
;; Defined at:
;;		line 27 in file "E:\Study Material\XC8 PROJECTS\Android Cautery\my_serial.c"
;; Parameters:    Size  Location     Type
;;  ch              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch              1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_liga_Operation
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Android Cautery\my_serial.c"
	line	27
global __ptext2
__ptext2:
psect	text2
	file	"E:\Study Material\XC8 PROJECTS\Android Cautery\my_serial.c"
	line	27
	global	__size_of_put_char
	__size_of_put_char	equ	__end_of_put_char-_put_char
	
_put_char:
;incstack = 0
	opt	stack 30
	dw	0FFFFh
;put_char@ch stored from wreg
	movwf	((c:put_char@ch)),c
	line	29
	
l1137:
;my_serial.c: 29: while(!PIR1bits.TXIF);
	goto	l160
	
l161:
	
l160:
	btfss	((c:3998)),c,4	;volatile
	goto	u491
	goto	u490
u491:
	goto	l160
u490:
	goto	l1139
	
l162:
	line	30
	
l1139:
;my_serial.c: 30: TXREG=ch;
	movff	(c:put_char@ch),(c:4013)	;volatile
	line	31
	
l163:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_put_char
	__end_of_put_char:
	signat	_put_char,4216
	global	_init_Values

;; *************** function _init_Values *****************
;; Defined at:
;;		line 7 in file "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_load_Digipot
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
	line	7
global __ptext3
__ptext3:
psect	text3
	file	"E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
	line	7
	global	__size_of_init_Values
	__size_of_init_Values	equ	__end_of_init_Values-_init_Values
	
_init_Values:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
	line	9
	
l1207:
;cautery.c: 9: Cut_Power = 0x0000;
	movlw	high(0)
	movwf	((c:_Cut_Power+1)),c
	movlw	low(0)
	movwf	((c:_Cut_Power)),c
	line	10
;cautery.c: 10: Coag_Power = 0x0000;
	movlw	high(0)
	movwf	((c:_Coag_Power+1)),c
	movlw	low(0)
	movwf	((c:_Coag_Power)),c
	line	11
;cautery.c: 11: Bi_Power = 0x0000;
	movlw	high(0)
	movwf	((c:_Bi_Power+1)),c
	movlw	low(0)
	movwf	((c:_Bi_Power)),c
	line	13
;cautery.c: 13: Cut_Mode = 0x00;
	movlw	low(0)
	movwf	((c:_Cut_Mode)),c
	line	14
;cautery.c: 14: Coag_Mode = 0x00;
	movlw	low(0)
	movwf	((c:_Coag_Mode)),c
	line	15
;cautery.c: 15: Bi_Mode = 0x00;
	movlw	low(0)
	movwf	((c:_Bi_Mode)),c
	line	17
	
l1209:
;cautery.c: 17: load_Digipot(25, 2);
	movlw	high(019h)
	movwf	((c:load_Digipot@Power+1)),c
	movlw	low(019h)
	movwf	((c:load_Digipot@Power)),c
	movlw	low(02h)
	movwf	((c:load_Digipot@Mode)),c
	call	_load_Digipot	;wreg free
	line	18
	
l217:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_init_Values
	__end_of_init_Values:
	signat	_init_Values,88
	global	_load_Digipot

;; *************** function _load_Digipot *****************
;; Defined at:
;;		line 256 in file "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
;; Parameters:    Size  Location     Type
;;  Power           2   60[COMRAM] int 
;;  Mode            1   62[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  temp            1   70[COMRAM] unsigned char 
;;  j               1   69[COMRAM] unsigned char 
;;  i               1   68[COMRAM] unsigned char 
;;  R1              1   67[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         3       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0
;;      Totals:        11       0       0       0       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___awtoft
;;		___fttol
;;		_sqrt
;; This function is called by:
;;		_main
;;		_init_Values
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
	line	256
global __ptext4
__ptext4:
psect	text4
	file	"E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
	line	256
	global	__size_of_load_Digipot
	__size_of_load_Digipot	equ	__end_of_load_Digipot-_load_Digipot
	
_load_Digipot:
;incstack = 0
	opt	stack 26
	dw	0FFFFh
	line	261
	
l1141:
;cautery.c: 258: char temp;
;cautery.c: 259: char R1, i, j;
;cautery.c: 261: if(Mode == 1 || Mode == 3)
	decf	((c:load_Digipot@Mode)),c,w

	btfsc	status,2
	goto	u501
	goto	u500
u501:
	goto	l1145
u500:
	
l1143:
	movf	((c:load_Digipot@Mode)),c,w
	xorlw	3

	btfss	status,2
	goto	u511
	goto	u510
u511:
	goto	l1151
u510:
	goto	l1145
	
l258:
	line	263
	
l1145:
;cautery.c: 262: {
;cautery.c: 263: temp = (char)sqrt(Power);
	movff	(c:load_Digipot@Power),(c:___awtoft@c)
	movff	(c:load_Digipot@Power+1),(c:___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(c:sqrt@y)
	movff	1+?___awtoft,(c:sqrt@y+1)
	movff	2+?___awtoft,(c:sqrt@y+2)
	call	_sqrt	;wreg free
	movff	0+?_sqrt,(c:___fttol@f1)
	movff	1+?_sqrt,(c:___fttol@f1+1)
	movff	2+?_sqrt,(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,??_load_Digipot+0+0
	movff	1+?___fttol,??_load_Digipot+0+0+1
	movff	2+?___fttol,??_load_Digipot+0+0+2
	movff	3+?___fttol,??_load_Digipot+0+0+3
	
	movf	(??_load_Digipot+0+0),c,w
	movwf	((c:load_Digipot@temp)),c
	line	264
	
l1147:
;cautery.c: 264: temp = temp * 10;
	movf	((c:load_Digipot@temp)),c,w
	mullw	0Ah
	movff	prodl,(c:load_Digipot@temp)
	line	265
	
l1149:
;cautery.c: 265: temp = ~temp;
	comf	((c:load_Digipot@temp)),c
	line	266
;cautery.c: 266: }
	goto	l1165
	line	267
	
l256:
	
l1151:
;cautery.c: 267: else if(Mode == 4)
	movf	((c:load_Digipot@Mode)),c,w
	xorlw	4

	btfss	status,2
	goto	u521
	goto	u520
u521:
	goto	l1159
u520:
	line	269
	
l1153:
;cautery.c: 268: {
;cautery.c: 269: temp = (char)sqrt(Power);
	movff	(c:load_Digipot@Power),(c:___awtoft@c)
	movff	(c:load_Digipot@Power+1),(c:___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(c:sqrt@y)
	movff	1+?___awtoft,(c:sqrt@y+1)
	movff	2+?___awtoft,(c:sqrt@y+2)
	call	_sqrt	;wreg free
	movff	0+?_sqrt,(c:___fttol@f1)
	movff	1+?_sqrt,(c:___fttol@f1+1)
	movff	2+?_sqrt,(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,??_load_Digipot+0+0
	movff	1+?___fttol,??_load_Digipot+0+0+1
	movff	2+?___fttol,??_load_Digipot+0+0+2
	movff	3+?___fttol,??_load_Digipot+0+0+3
	
	movf	(??_load_Digipot+0+0),c,w
	movwf	((c:load_Digipot@temp)),c
	line	270
	
l1155:
;cautery.c: 270: temp = temp * 15;
	movf	((c:load_Digipot@temp)),c,w
	mullw	0Fh
	movff	prodl,(c:load_Digipot@temp)
	line	271
	
l1157:
;cautery.c: 271: temp = ~temp;
	comf	((c:load_Digipot@temp)),c
	line	272
;cautery.c: 272: }
	goto	l1165
	line	273
	
l260:
	line	275
	
l1159:
;cautery.c: 273: else
;cautery.c: 274: {
;cautery.c: 275: temp = (char)sqrt(Power);
	movff	(c:load_Digipot@Power),(c:___awtoft@c)
	movff	(c:load_Digipot@Power+1),(c:___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(c:sqrt@y)
	movff	1+?___awtoft,(c:sqrt@y+1)
	movff	2+?___awtoft,(c:sqrt@y+2)
	call	_sqrt	;wreg free
	movff	0+?_sqrt,(c:___fttol@f1)
	movff	1+?_sqrt,(c:___fttol@f1+1)
	movff	2+?_sqrt,(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,??_load_Digipot+0+0
	movff	1+?___fttol,??_load_Digipot+0+0+1
	movff	2+?___fttol,??_load_Digipot+0+0+2
	movff	3+?___fttol,??_load_Digipot+0+0+3
	
	movf	(??_load_Digipot+0+0),c,w
	movwf	((c:load_Digipot@temp)),c
	line	276
	
l1161:
;cautery.c: 276: temp = temp * 17;
	movf	((c:load_Digipot@temp)),c,w
	mullw	011h
	movff	prodl,(c:load_Digipot@temp)
	line	277
	
l1163:
;cautery.c: 277: temp = ~temp;
	comf	((c:load_Digipot@temp)),c
	goto	l1165
	line	278
	
l261:
	goto	l1165
	
l259:
	line	280
	
l1165:
;cautery.c: 278: }
;cautery.c: 280: RB2 = 0;
	bcf	c:(31754/8),(31754)&7	;volatile
	line	281
	
l1167:
;cautery.c: 281: _delay(25);
	movlw	5
u1347:
	nop
decfsz	wreg,f
	goto	u1347

	line	282
	
l1169:
;cautery.c: 282: R1 = 0x11;
	movlw	low(011h)
	movwf	((c:load_Digipot@R1)),c
	line	283
	
l1171:
;cautery.c: 283: for( j = 0;j <= 7;j ++ )
	movlw	low(0)
	movwf	((c:load_Digipot@j)),c
	
l1173:
	movlw	(08h-1)
	cpfsgt	((c:load_Digipot@j)),c
	goto	u531
	goto	u530
u531:
	goto	l1177
u530:
	goto	l1189
	
l1175:
	goto	l1189
	line	284
	
l262:
	line	285
	
l1177:
;cautery.c: 284: {
;cautery.c: 285: R1 = R1 << 1;
	movf	((c:load_Digipot@R1)),c,w
	addwf	((c:load_Digipot@R1)),c,w
	movwf	((c:load_Digipot@R1)),c
	line	286
	
l1179:
;cautery.c: 286: if(CARRY == 1)
	btfss	c:(32448/8),(32448)&7	;volatile
	goto	u541
	goto	u540
u541:
	goto	l264
u540:
	line	288
	
l1181:
;cautery.c: 287: {
;cautery.c: 288: RB4 = 1;
	bsf	c:(31756/8),(31756)&7	;volatile
	line	289
	
l264:
	line	290
;cautery.c: 289: }
;cautery.c: 290: if(CARRY != 1)
	btfsc	c:(32448/8),(32448)&7	;volatile
	goto	u551
	goto	u550
u551:
	goto	l265
u550:
	line	292
	
l1183:
;cautery.c: 291: {
;cautery.c: 292: RB4 = 0;
	bcf	c:(31756/8),(31756)&7	;volatile
	line	293
	
l265:
	line	295
;cautery.c: 293: }
;cautery.c: 295: RB3 = 1;
	bsf	c:(31755/8),(31755)&7	;volatile
	line	296
;cautery.c: 296: _delay(5);
	nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop

	line	297
;cautery.c: 297: RB3 = 0;
	bcf	c:(31755/8),(31755)&7	;volatile
	line	298
;cautery.c: 298: RB4 = 0;
	bcf	c:(31756/8),(31756)&7	;volatile
	line	283
	
l1185:
	incf	((c:load_Digipot@j)),c
	
l1187:
	movlw	(08h-1)
	cpfsgt	((c:load_Digipot@j)),c
	goto	u561
	goto	u560
u561:
	goto	l1177
u560:
	goto	l1189
	
l263:
	line	300
	
l1189:
;cautery.c: 299: }
;cautery.c: 300: for(i = 0;i <= 7;i ++ )
	movlw	low(0)
	movwf	((c:load_Digipot@i)),c
	
l1191:
	movlw	(08h-1)
	cpfsgt	((c:load_Digipot@i)),c
	goto	u571
	goto	u570
u571:
	goto	l1195
u570:
	goto	l267
	
l1193:
	goto	l267
	line	301
	
l266:
	line	302
	
l1195:
;cautery.c: 301: {
;cautery.c: 302: temp = temp << 1;
	movf	((c:load_Digipot@temp)),c,w
	addwf	((c:load_Digipot@temp)),c,w
	movwf	((c:load_Digipot@temp)),c
	line	303
	
l1197:
;cautery.c: 303: if(CARRY == 1)
	btfss	c:(32448/8),(32448)&7	;volatile
	goto	u581
	goto	u580
u581:
	goto	l268
u580:
	line	305
	
l1199:
;cautery.c: 304: {
;cautery.c: 305: RB4 = 1;
	bsf	c:(31756/8),(31756)&7	;volatile
	line	306
	
l268:
	line	307
;cautery.c: 306: }
;cautery.c: 307: if(CARRY != 1)
	btfsc	c:(32448/8),(32448)&7	;volatile
	goto	u591
	goto	u590
u591:
	goto	l269
u590:
	line	309
	
l1201:
;cautery.c: 308: {
;cautery.c: 309: RB4 = 0;
	bcf	c:(31756/8),(31756)&7	;volatile
	line	310
	
l269:
	line	311
;cautery.c: 310: }
;cautery.c: 311: RB3 = 1;
	bsf	c:(31755/8),(31755)&7	;volatile
	line	312
;cautery.c: 312: _delay(5);
	nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop

	line	313
;cautery.c: 313: RB3 = 0;
	bcf	c:(31755/8),(31755)&7	;volatile
	line	314
;cautery.c: 314: RB4 = 0;
	bcf	c:(31756/8),(31756)&7	;volatile
	line	300
	
l1203:
	incf	((c:load_Digipot@i)),c
	
l1205:
	movlw	(08h-1)
	cpfsgt	((c:load_Digipot@i)),c
	goto	u601
	goto	u600
u601:
	goto	l1195
u600:
	
l267:
	line	316
;cautery.c: 315: }
;cautery.c: 316: RB2 = 1;
	bsf	c:(31754/8),(31754)&7	;volatile
	line	318
	
l270:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_load_Digipot
	__end_of_load_Digipot:
	signat	_load_Digipot,8312
	global	_sqrt

;; *************** function _sqrt *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\sqrt.c"
;; Parameters:    Size  Location     Type
;;  y               3   26[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  x               3   42[COMRAM] unsigned char 
;;  q               3   39[COMRAM] unsigned char 
;;  z               3   35[COMRAM] unsigned char 
;;  og              3   32[COMRAM] unsigned char 
;;  i               1   38[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   26[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         3       0       0       0       0       0       0
;;      Locals:        13       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0
;;      Totals:        19       0       0       0       0       0       0
;;Total ram usage:       19 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftge
;;		___ftmul
;;		___ftsub
;; This function is called by:
;;		_load_Digipot
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\sqrt.c"
	line	13
global __ptext5
__ptext5:
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\sqrt.c"
	line	13
	global	__size_of_sqrt
	__size_of_sqrt	equ	__end_of_sqrt-_sqrt
	
_sqrt:
;incstack = 0
	opt	stack 26
	dw	0FFFFh
	line	19
	
l1045:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:___ftge@ff1)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:___ftge@ff1+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:___ftge@ff1+2)),c

	movff	(c:sqrt@y),(c:___ftge@ff2)
	movff	(c:sqrt@y+1),(c:___ftge@ff2+1)
	movff	(c:sqrt@y+2),(c:___ftge@ff2+2)
	call	___ftge	;wreg free
	btfss	status,0
	goto	u381
	goto	u380
u381:
	goto	l817
u380:
	line	20
	
l1047:
	movf	((c:sqrt@y+2)),c,w
	xorlw	80h
	addlw	-(low highword(float24(0.0000000000000000)))^80h
	
	bnz	u395
	movlw	high(float24(0.0000000000000000))
	subwf	((c:sqrt@y+1)),c,w
	bnz	u395
	movlw	low(float24(0.0000000000000000))
	subwf	((c:sqrt@y)),c,w
u395:
	btfsc	status,0
	goto	u391
	goto	u390
u391:
	goto	l818
u390:
	line	21
	
l1049:
	movlw	high(021h)
	movwf	((c:_errno+1)),c
	movlw	low(021h)
	movwf	((c:_errno)),c
	
l818:
	line	22
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?_sqrt)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?_sqrt+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?_sqrt+2)),c

	goto	l819
	
l1051:
	goto	l819
	line	23
	
l817:
	line	24
	movff	(c:sqrt@y),(c:sqrt@z)
	movff	(c:sqrt@y+1),(c:sqrt@z+1)
	movff	(c:sqrt@y+2),(c:sqrt@z+2)
	line	30
	
l1053:
	movff	(c:sqrt@y),??_sqrt+0+0
	movff	(c:sqrt@y+1),??_sqrt+0+0+1
	movff	(c:sqrt@y+2),??_sqrt+0+0+2
	comf	(??_sqrt+0+0),c
	comf	(??_sqrt+0+1),c
	comf	(??_sqrt+0+2),c
	incf	(??_sqrt+0+0),c
	movlw	0
	addwfc	(??_sqrt+0+1),c
	addwfc	(??_sqrt+0+2),c

	movlw	low(0BE6EC8h)
	addwf	(??_sqrt+0+0),c,w
	movwf	((c:sqrt@x)),c
	movlw	06Eh
	addwfc	(??_sqrt+0+1),c,w
	movwf	1+((c:sqrt@x)),c
	movlw	0BEh
	addwfc	(??_sqrt+0+2),c,w
	movwf	2+((c:sqrt@x)),c
	line	31
	
l1055:
	bcf	status,0
	rrcf	((c:sqrt@x+2)),c
	rrcf	((c:sqrt@x+1)),c
	rrcf	((c:sqrt@x)),c
	line	32
	
l1057:
	movlw	low(08000h)
	subwf	((c:sqrt@z)),c
	movlw	high(08000h)
	subwfb	((c:sqrt@z+1)),c
	movlw	low highword(08000h)
	subwfb	((c:sqrt@z+2)),c

	line	34
	
l1059:
	movlw	low(04h)
	movwf	((c:sqrt@i)),c
	goto	l1061
	line	35
	
l820:
	line	36
	
l1061:
	movff	(c:sqrt@x),(c:sqrt@og)
	movff	(c:sqrt@x+1),(c:sqrt@og+1)
	movff	(c:sqrt@x+2),(c:sqrt@og+2)
	line	37
	
l1063:
	movff	(c:sqrt@x),(c:___ftmul@f1)
	movff	(c:sqrt@x+1),(c:___ftmul@f1+1)
	movff	(c:sqrt@x+2),(c:___ftmul@f1+2)
	movff	(c:sqrt@z),(c:___ftmul@f2)
	movff	(c:sqrt@z+1),(c:___ftmul@f2+1)
	movff	(c:sqrt@z+2),(c:___ftmul@f2+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:sqrt@q)
	movff	1+?___ftmul,(c:sqrt@q+1)
	movff	2+?___ftmul,(c:sqrt@q+2)
	line	38
	
l1065:
	movff	(c:sqrt@q),(c:___ftmul@f1)
	movff	(c:sqrt@q+1),(c:___ftmul@f1+1)
	movff	(c:sqrt@q+2),(c:___ftmul@f1+2)
	movff	(c:sqrt@x),(c:___ftmul@f2)
	movff	(c:sqrt@x+1),(c:___ftmul@f2+1)
	movff	(c:sqrt@x+2),(c:___ftmul@f2+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:sqrt@q)
	movff	1+?___ftmul,(c:sqrt@q+1)
	movff	2+?___ftmul,(c:sqrt@q+2)
	line	39
	
l1067:
	movff	(c:sqrt@q),(c:___ftmul@f1)
	movff	(c:sqrt@q+1),(c:___ftmul@f1+1)
	movff	(c:sqrt@q+2),(c:___ftmul@f1+2)
	movff	(c:sqrt@x),(c:___ftmul@f2)
	movff	(c:sqrt@x+1),(c:___ftmul@f2+1)
	movff	(c:sqrt@x+2),(c:___ftmul@f2+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:sqrt@q)
	movff	1+?___ftmul,(c:sqrt@q+1)
	movff	2+?___ftmul,(c:sqrt@q+2)
	line	40
	
l1069:
	movff	(c:sqrt@x),(c:___ftmul@f1)
	movff	(c:sqrt@x+1),(c:___ftmul@f1+1)
	movff	(c:sqrt@x+2),(c:___ftmul@f1+2)
	movlw	low(float24(1.5000000000000000))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(1.5000000000000000))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(1.5000000000000000))
	movwf	((c:___ftmul@f2+2)),c

	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:sqrt@x)
	movff	1+?___ftmul,(c:sqrt@x+1)
	movff	2+?___ftmul,(c:sqrt@x+2)
	line	41
	
l1071:
	movff	(c:sqrt@x),(c:___ftsub@f1)
	movff	(c:sqrt@x+1),(c:___ftsub@f1+1)
	movff	(c:sqrt@x+2),(c:___ftsub@f1+2)
	movff	(c:sqrt@q),(c:___ftsub@f2)
	movff	(c:sqrt@q+1),(c:___ftsub@f2+1)
	movff	(c:sqrt@q+2),(c:___ftsub@f2+2)
	call	___ftsub	;wreg free
	movff	0+?___ftsub,(c:sqrt@x)
	movff	1+?___ftsub,(c:sqrt@x+1)
	movff	2+?___ftsub,(c:sqrt@x+2)
	line	42
	
l1073:
	decfsz	((c:sqrt@i)),c
	
	goto	l1061
	goto	l1075
	
l821:
	line	43
	
l1075:
	movff	(c:sqrt@x),(c:___ftmul@f1)
	movff	(c:sqrt@x+1),(c:___ftmul@f1+1)
	movff	(c:sqrt@x+2),(c:___ftmul@f1+2)
	movff	(c:sqrt@y),(c:___ftmul@f2)
	movff	(c:sqrt@y+1),(c:___ftmul@f2+1)
	movff	(c:sqrt@y+2),(c:___ftmul@f2+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:?_sqrt)
	movff	1+?___ftmul,(c:?_sqrt+1)
	movff	2+?___ftmul,(c:?_sqrt+2)
	goto	l819
	
l1077:
	line	44
	
l819:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_sqrt
	__end_of_sqrt:
	signat	_sqrt,4219
	global	___ftsub

;; *************** function ___ftsub *****************
;; Defined at:
;;		line 20 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftsub.c"
;; Parameters:    Size  Location     Type
;;  f1              3   20[COMRAM] float 
;;  f2              3   23[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   20[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         6       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftadd
;; This function is called by:
;;		_sqrt
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftsub.c"
	line	20
global __ptext6
__ptext6:
psect	text6
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftsub.c"
	line	20
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:
;incstack = 0
	opt	stack 26
	dw	0FFFFh
	line	23
	
l1021:
	movlw	low(0800000h)
	xorwf	((c:___ftsub@f2)),c
	movlw	high(0800000h)
	xorwf	((c:___ftsub@f2+1)),c
	movlw	low highword(0800000h)
	xorwf	((c:___ftsub@f2+2)),c

	line	24
	
l1023:
	movff	(c:___ftsub@f1),(c:___ftadd@f1)
	movff	(c:___ftsub@f1+1),(c:___ftadd@f1+1)
	movff	(c:___ftsub@f1+2),(c:___ftadd@f1+2)
	movff	(c:___ftsub@f2),(c:___ftadd@f2)
	movff	(c:___ftsub@f2+1),(c:___ftadd@f2+1)
	movff	(c:___ftsub@f2+2),(c:___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(c:?___ftsub)
	movff	1+?___ftadd,(c:?___ftsub+1)
	movff	2+?___ftadd,(c:?___ftsub+2)
	goto	l679
	
l1025:
	line	25
	
l679:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
	signat	___ftsub,8315
	global	___ftadd

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 86 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3    8[COMRAM] float 
;;  f2              3   11[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   19[COMRAM] unsigned char 
;;  exp2            1   18[COMRAM] unsigned char 
;;  sign            1   17[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         6       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		___ftsub
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
global __ptext7
__ptext7:
psect	text7
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:
;incstack = 0
	opt	stack 26
	dw	0FFFFh
	line	90
	
l903:
	movff	(c:___ftadd@f1+2),??___ftadd+0+0
	clrf	(??___ftadd+0+0+1)&0ffh,c
	clrf	(??___ftadd+0+0+2)&0ffh,c
	rlcf	((c:___ftadd@f1+1)),c,w
	rlcf	(??___ftadd+0+0)&0ffh,c
	bnc	u81
	bsf	(??___ftadd+0+0+1)&0ffh,c,0
u81:
	movf	(??___ftadd+0+0),c,w
	movwf	((c:___ftadd@exp1)),c
	line	91
	movff	(c:___ftadd@f2+2),??___ftadd+0+0
	clrf	(??___ftadd+0+0+1)&0ffh,c
	clrf	(??___ftadd+0+0+2)&0ffh,c
	rlcf	((c:___ftadd@f2+1)),c,w
	rlcf	(??___ftadd+0+0)&0ffh,c
	bnc	u91
	bsf	(??___ftadd+0+0+1)&0ffh,c,0
u91:
	movf	(??___ftadd+0+0),c,w
	movwf	((c:___ftadd@exp2)),c
	line	92
	
l905:
	movf	((c:___ftadd@exp1)),c,w
	btfsc	status,2
	goto	u101
	goto	u100
u101:
	goto	l616
u100:
	
l907:
	movf	((c:___ftadd@exp2)),c,w
	subwf	((c:___ftadd@exp1)),c,w
	btfsc	status,0
	goto	u111
	goto	u110
u111:
	goto	l911
u110:
	
l909:
	movf	((c:___ftadd@exp1)),c,w
	sublw	0
	addwf	((c:___ftadd@exp2)),c,w
	movwf	(??___ftadd+0+0)&0ffh,c
	movlw	(019h)&0ffh
	subwf	((??___ftadd+0+0)),c,w
	btfss	status,0
	goto	u121
	goto	u120
u121:
	goto	l911
u120:
	
l616:
	line	93
	movff	(c:___ftadd@f2),(c:?___ftadd)
	movff	(c:___ftadd@f2+1),(c:?___ftadd+1)
	movff	(c:___ftadd@f2+2),(c:?___ftadd+2)
	goto	l617
	
l614:
	line	94
	
l911:
	movf	((c:___ftadd@exp2)),c,w
	btfsc	status,2
	goto	u131
	goto	u130
u131:
	goto	l620
u130:
	
l913:
	movf	((c:___ftadd@exp1)),c,w
	subwf	((c:___ftadd@exp2)),c,w
	btfsc	status,0
	goto	u141
	goto	u140
u141:
	goto	l917
u140:
	
l915:
	movf	((c:___ftadd@exp2)),c,w
	sublw	0
	addwf	((c:___ftadd@exp1)),c,w
	movwf	(??___ftadd+0+0)&0ffh,c
	movlw	(019h)&0ffh
	subwf	((??___ftadd+0+0)),c,w
	btfss	status,0
	goto	u151
	goto	u150
u151:
	goto	l917
u150:
	
l620:
	line	95
	movff	(c:___ftadd@f1),(c:?___ftadd)
	movff	(c:___ftadd@f1+1),(c:?___ftadd+1)
	movff	(c:___ftadd@f1+2),(c:?___ftadd+2)
	goto	l617
	
l618:
	line	96
	
l917:
	movlw	low(06h)
	movwf	((c:___ftadd@sign)),c
	line	97
	
l919:
	
	btfss	((c:___ftadd@f1+2)),c,(23)&7
	goto	u161
	goto	u160
u161:
	goto	l923
u160:
	line	98
	
l921:
	bsf	(0+(7/8)+(c:___ftadd@sign)),c,(7)&7
	goto	l923
	
l621:
	line	99
	
l923:
	
	btfss	((c:___ftadd@f2+2)),c,(23)&7
	goto	u171
	goto	u170
u171:
	goto	l622
u170:
	line	100
	
l925:
	bsf	(0+(6/8)+(c:___ftadd@sign)),c,(6)&7
	
l622:
	line	101
	bsf	(0+(15/8)+(c:___ftadd@f1)),c,(15)&7
	line	102
	
l927:
	movlw	low(0FFFFh)
	andwf	((c:___ftadd@f1)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftadd@f1+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftadd@f1+2)),c

	line	103
	bsf	(0+(15/8)+(c:___ftadd@f2)),c,(15)&7
	line	104
	
l929:
	movlw	low(0FFFFh)
	andwf	((c:___ftadd@f2)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftadd@f2+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftadd@f2+2)),c

	line	106
	
l931:
	movf	((c:___ftadd@exp2)),c,w
	subwf	((c:___ftadd@exp1)),c,w
	btfsc	status,0
	goto	u181
	goto	u180
u181:
	goto	l943
u180:
	goto	l933
	line	109
	
l624:
	line	110
	
l933:
	bcf	status,0
	rlcf	((c:___ftadd@f2)),c
	rlcf	((c:___ftadd@f2+1)),c
	rlcf	((c:___ftadd@f2+2)),c
	line	111
	decf	((c:___ftadd@exp2)),c
	line	112
	
l935:
	movf	((c:___ftadd@exp2)),c,w
	xorwf	((c:___ftadd@exp1)),c,w
	btfsc	status,2
	goto	u191
	goto	u190
u191:
	goto	l941
u190:
	
l937:
	decf	((c:___ftadd@sign)),c
	movff	(c:___ftadd@sign),??___ftadd+0+0
	movlw	07h
	andwf	(??___ftadd+0+0),c
	btfss	status,2
	goto	u201
	goto	u200
u201:
	goto	l933
u200:
	goto	l941
	
l626:
	goto	l941
	
l627:
	line	113
	goto	l941
	
l629:
	line	114
	
l939:
	bcf	status,0
	rrcf	((c:___ftadd@f1+2)),c
	rrcf	((c:___ftadd@f1+1)),c
	rrcf	((c:___ftadd@f1)),c
	line	115
	incf	((c:___ftadd@exp1)),c
	goto	l941
	line	116
	
l628:
	line	113
	
l941:
	movf	((c:___ftadd@exp2)),c,w
	cpfseq	((c:___ftadd@exp1)),c
	goto	u211
	goto	u210
u211:
	goto	l939
u210:
	goto	l631
	
l630:
	line	117
	goto	l631
	
l623:
	
l943:
	movf	((c:___ftadd@exp1)),c,w
	subwf	((c:___ftadd@exp2)),c,w
	btfsc	status,0
	goto	u221
	goto	u220
u221:
	goto	l631
u220:
	goto	l945
	line	120
	
l633:
	line	121
	
l945:
	bcf	status,0
	rlcf	((c:___ftadd@f1)),c
	rlcf	((c:___ftadd@f1+1)),c
	rlcf	((c:___ftadd@f1+2)),c
	line	122
	decf	((c:___ftadd@exp1)),c
	line	123
	
l947:
	movf	((c:___ftadd@exp2)),c,w
	xorwf	((c:___ftadd@exp1)),c,w
	btfsc	status,2
	goto	u231
	goto	u230
u231:
	goto	l953
u230:
	
l949:
	decf	((c:___ftadd@sign)),c
	movff	(c:___ftadd@sign),??___ftadd+0+0
	movlw	07h
	andwf	(??___ftadd+0+0),c
	btfss	status,2
	goto	u241
	goto	u240
u241:
	goto	l945
u240:
	goto	l953
	
l635:
	goto	l953
	
l636:
	line	124
	goto	l953
	
l638:
	line	125
	
l951:
	bcf	status,0
	rrcf	((c:___ftadd@f2+2)),c
	rrcf	((c:___ftadd@f2+1)),c
	rrcf	((c:___ftadd@f2)),c
	line	126
	incf	((c:___ftadd@exp2)),c
	goto	l953
	line	127
	
l637:
	line	124
	
l953:
	movf	((c:___ftadd@exp2)),c,w
	cpfseq	((c:___ftadd@exp1)),c
	goto	u251
	goto	u250
u251:
	goto	l951
u250:
	goto	l631
	
l639:
	goto	l631
	line	128
	
l632:
	line	129
	
l631:
	
	btfss	((c:___ftadd@sign)),c,(7)&7
	goto	u261
	goto	u260
u261:
	goto	l640
u260:
	line	131
	
l955:
	movlw	low(0FFFFFFh)
	xorwf	((c:___ftadd@f1)),c
	movlw	high(0FFFFFFh)
	xorwf	((c:___ftadd@f1+1)),c
	movlw	low highword(0FFFFFFh)
	xorwf	((c:___ftadd@f1+2)),c

	line	132
	movlw	low(01h)
	addwf	((c:___ftadd@f1)),c
	movlw	high(01h)
	addwfc	((c:___ftadd@f1+1)),c
	movlw	low highword(01h)
	addwfc	((c:___ftadd@f1+2)),c

	line	133
	
l640:
	line	134
	
	btfss	((c:___ftadd@sign)),c,(6)&7
	goto	u271
	goto	u270
u271:
	goto	l959
u270:
	line	136
	
l957:
	movlw	low(0FFFFFFh)
	xorwf	((c:___ftadd@f2)),c
	movlw	high(0FFFFFFh)
	xorwf	((c:___ftadd@f2+1)),c
	movlw	low highword(0FFFFFFh)
	xorwf	((c:___ftadd@f2+2)),c

	line	137
	movlw	low(01h)
	addwf	((c:___ftadd@f2)),c
	movlw	high(01h)
	addwfc	((c:___ftadd@f2+1)),c
	movlw	low highword(01h)
	addwfc	((c:___ftadd@f2+2)),c

	goto	l959
	line	138
	
l641:
	line	139
	
l959:
	movlw	low(0)
	movwf	((c:___ftadd@sign)),c
	line	140
	
l961:
	movf	((c:___ftadd@f1)),c,w
	addwf	((c:___ftadd@f2)),c
	movf	((c:___ftadd@f1+1)),c,w
	addwfc	((c:___ftadd@f2+1)),c
	movf	((c:___ftadd@f1+2)),c,w
	addwfc	((c:___ftadd@f2+2)),c

	line	141
	
l963:
	
	btfss	((c:___ftadd@f2+2)),c,(23)&7
	goto	u281
	goto	u280
u281:
	goto	l969
u280:
	line	142
	
l965:
	movlw	low(0FFFFFFh)
	xorwf	((c:___ftadd@f2)),c
	movlw	high(0FFFFFFh)
	xorwf	((c:___ftadd@f2+1)),c
	movlw	low highword(0FFFFFFh)
	xorwf	((c:___ftadd@f2+2)),c

	line	143
	movlw	low(01h)
	addwf	((c:___ftadd@f2)),c
	movlw	high(01h)
	addwfc	((c:___ftadd@f2+1)),c
	movlw	low highword(01h)
	addwfc	((c:___ftadd@f2+2)),c

	line	144
	
l967:
	movlw	low(01h)
	movwf	((c:___ftadd@sign)),c
	goto	l969
	line	145
	
l642:
	line	146
	
l969:
	movff	(c:___ftadd@f2),(c:___ftpack@arg)
	movff	(c:___ftadd@f2+1),(c:___ftpack@arg+1)
	movff	(c:___ftadd@f2+2),(c:___ftpack@arg+2)
	movff	(c:___ftadd@exp1),(c:___ftpack@exp)
	movff	(c:___ftadd@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftadd)
	movff	1+?___ftpack,(c:?___ftadd+1)
	movff	2+?___ftpack,(c:?___ftadd+2)
	goto	l617
	
l971:
	line	148
	
l617:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3    8[COMRAM] float 
;;  f2              3   11[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   17[COMRAM] unsigned um
;;  sign            1   22[COMRAM] unsigned char 
;;  cntr            1   21[COMRAM] unsigned char 
;;  exp             1   20[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         6       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0
;;      Totals:        15       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_sqrt
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
global __ptext8
__ptext8:
psect	text8
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:
;incstack = 0
	opt	stack 27
	dw	0FFFFh
	line	67
	
l973:
	movff	(c:___ftmul@f1+2),??___ftmul+0+0
	clrf	(??___ftmul+0+0+1)&0ffh,c
	clrf	(??___ftmul+0+0+2)&0ffh,c
	rlcf	((c:___ftmul@f1+1)),c,w
	rlcf	(??___ftmul+0+0)&0ffh,c
	bnc	u291
	bsf	(??___ftmul+0+0+1)&0ffh,c,0
u291:
	movf	(??___ftmul+0+0),c,w
	movwf	((c:___ftmul@exp)),c
	tstfsz	((c:___ftmul@exp))&0ffh
	goto	u301
	goto	u300
u301:
	goto	l979
u300:
	line	68
	
l975:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftmul)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftmul+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftmul+2)),c

	goto	l663
	
l977:
	goto	l663
	
l662:
	line	69
	
l979:
	movff	(c:___ftmul@f2+2),??___ftmul+0+0
	clrf	(??___ftmul+0+0+1)&0ffh,c
	clrf	(??___ftmul+0+0+2)&0ffh,c
	rlcf	((c:___ftmul@f2+1)),c,w
	rlcf	(??___ftmul+0+0)&0ffh,c
	bnc	u311
	bsf	(??___ftmul+0+0+1)&0ffh,c,0
u311:
	movf	(??___ftmul+0+0),c,w
	movwf	((c:___ftmul@sign)),c
	tstfsz	((c:___ftmul@sign))&0ffh
	goto	u321
	goto	u320
u321:
	goto	l985
u320:
	line	70
	
l981:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftmul)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftmul+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftmul+2)),c

	goto	l663
	
l983:
	goto	l663
	
l664:
	line	71
	
l985:
	movf	((c:___ftmul@sign)),c,w
	addlw	low(07Bh)
	addwf	((c:___ftmul@exp)),c
	line	72
	
l987:
	movff	0+2+(c:___ftmul@f1),(c:___ftmul@sign)
	line	73
	movf	(0+2+(c:___ftmul@f2)),c,w
	xorwf	((c:___ftmul@sign)),c
	line	74
	movlw	(080h)&0ffh
	andwf	((c:___ftmul@sign)),c
	line	75
	
l989:
	bsf	(0+(15/8)+(c:___ftmul@f1)),c,(15)&7
	line	77
	
l991:
	bsf	(0+(15/8)+(c:___ftmul@f2)),c,(15)&7
	line	78
	
l993:
	movlw	low(0FFFFh)
	andwf	((c:___ftmul@f2)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftmul@f2+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftmul@f2+2)),c

	line	79
	
l995:
	movlw	low(0)
	movwf	((c:___ftmul@f3_as_product)),c
	movlw	high(0)
	movwf	((c:___ftmul@f3_as_product+1)),c
	movlw	low highword(0)
	movwf	((c:___ftmul@f3_as_product+2)),c

	line	134
	
l997:
	movlw	low(07h)
	movwf	((c:___ftmul@cntr)),c
	goto	l999
	line	135
	
l665:
	line	136
	
l999:
	
	btfss	((c:___ftmul@f1)),c,(0)&7
	goto	u331
	goto	u330
u331:
	goto	l1003
u330:
	line	137
	
l1001:
	movf	((c:___ftmul@f2)),c,w
	addwf	((c:___ftmul@f3_as_product)),c
	movf	((c:___ftmul@f2+1)),c,w
	addwfc	((c:___ftmul@f3_as_product+1)),c
	movf	((c:___ftmul@f2+2)),c,w
	addwfc	((c:___ftmul@f3_as_product+2)),c

	goto	l1003
	
l666:
	line	138
	
l1003:
	bcf	status,0
	rrcf	((c:___ftmul@f1+2)),c
	rrcf	((c:___ftmul@f1+1)),c
	rrcf	((c:___ftmul@f1)),c
	line	139
	bcf	status,0
	rlcf	((c:___ftmul@f2)),c
	rlcf	((c:___ftmul@f2+1)),c
	rlcf	((c:___ftmul@f2+2)),c
	line	140
	
l1005:
	decfsz	((c:___ftmul@cntr)),c
	
	goto	l999
	goto	l1007
	
l667:
	line	143
	
l1007:
	movlw	low(09h)
	movwf	((c:___ftmul@cntr)),c
	goto	l1009
	line	144
	
l668:
	line	145
	
l1009:
	
	btfss	((c:___ftmul@f1)),c,(0)&7
	goto	u341
	goto	u340
u341:
	goto	l1013
u340:
	line	146
	
l1011:
	movf	((c:___ftmul@f2)),c,w
	addwf	((c:___ftmul@f3_as_product)),c
	movf	((c:___ftmul@f2+1)),c,w
	addwfc	((c:___ftmul@f3_as_product+1)),c
	movf	((c:___ftmul@f2+2)),c,w
	addwfc	((c:___ftmul@f3_as_product+2)),c

	goto	l1013
	
l669:
	line	147
	
l1013:
	bcf	status,0
	rrcf	((c:___ftmul@f1+2)),c
	rrcf	((c:___ftmul@f1+1)),c
	rrcf	((c:___ftmul@f1)),c
	line	148
	bcf	status,0
	rrcf	((c:___ftmul@f3_as_product+2)),c
	rrcf	((c:___ftmul@f3_as_product+1)),c
	rrcf	((c:___ftmul@f3_as_product)),c
	line	149
	
l1015:
	decfsz	((c:___ftmul@cntr)),c
	
	goto	l1009
	goto	l1017
	
l670:
	line	156
	
l1017:
	movff	(c:___ftmul@f3_as_product),(c:___ftpack@arg)
	movff	(c:___ftmul@f3_as_product+1),(c:___ftpack@arg+1)
	movff	(c:___ftmul@f3_as_product+2),(c:___ftpack@arg+2)
	movff	(c:___ftmul@exp),(c:___ftpack@exp)
	movff	(c:___ftmul@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftmul)
	movff	1+?___ftpack,(c:?___ftmul+1)
	movff	2+?___ftpack,(c:?___ftmul+2)
	goto	l663
	
l1019:
	line	157
	
l663:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	___ftge

;; *************** function ___ftge *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    0[COMRAM] float 
;;  ff2             3    3[COMRAM] float 
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
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         6       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sqrt
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
	line	4
global __ptext9
__ptext9:
psect	text9
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
	line	4
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:
;incstack = 0
	opt	stack 28
	dw	0FFFFh
	line	6
	
l1027:
	
	btfss	((c:___ftge@ff1+2)),c,(23)&7
	goto	u351
	goto	u350
u351:
	goto	l1031
u350:
	line	7
	
l1029:
	movff	(c:___ftge@ff1),??___ftge+0+0
	movff	(c:___ftge@ff1+1),??___ftge+0+0+1
	movff	(c:___ftge@ff1+2),??___ftge+0+0+2
	comf	(??___ftge+0+0),c
	comf	(??___ftge+0+1),c
	comf	(??___ftge+0+2),c
	incf	(??___ftge+0+0),c
	movlw	0
	addwfc	(??___ftge+0+1),c
	addwfc	(??___ftge+0+2),c

	movlw	low(0800000h)
	addwf	(??___ftge+0+0),c,w
	movwf	((c:___ftge@ff1)),c
	movlw	0
	addwfc	(??___ftge+0+1),c,w
	movwf	1+((c:___ftge@ff1)),c
	movlw	080h
	addwfc	(??___ftge+0+2),c,w
	movwf	2+((c:___ftge@ff1)),c
	goto	l1031
	
l655:
	line	8
	
l1031:
	
	btfss	((c:___ftge@ff2+2)),c,(23)&7
	goto	u361
	goto	u360
u361:
	goto	l1035
u360:
	line	9
	
l1033:
	movff	(c:___ftge@ff2),??___ftge+0+0
	movff	(c:___ftge@ff2+1),??___ftge+0+0+1
	movff	(c:___ftge@ff2+2),??___ftge+0+0+2
	comf	(??___ftge+0+0),c
	comf	(??___ftge+0+1),c
	comf	(??___ftge+0+2),c
	incf	(??___ftge+0+0),c
	movlw	0
	addwfc	(??___ftge+0+1),c
	addwfc	(??___ftge+0+2),c

	movlw	low(0800000h)
	addwf	(??___ftge+0+0),c,w
	movwf	((c:___ftge@ff2)),c
	movlw	0
	addwfc	(??___ftge+0+1),c,w
	movwf	1+((c:___ftge@ff2)),c
	movlw	080h
	addwfc	(??___ftge+0+2),c,w
	movwf	2+((c:___ftge@ff2)),c
	goto	l1035
	
l656:
	line	10
	
l1035:
	movlw	low(0800000h)
	xorwf	((c:___ftge@ff1)),c
	movlw	high(0800000h)
	xorwf	((c:___ftge@ff1+1)),c
	movlw	low highword(0800000h)
	xorwf	((c:___ftge@ff1+2)),c

	line	11
	
l1037:
	movlw	low(0800000h)
	xorwf	((c:___ftge@ff2)),c
	movlw	high(0800000h)
	xorwf	((c:___ftge@ff2+1)),c
	movlw	low highword(0800000h)
	xorwf	((c:___ftge@ff2+2)),c

	line	12
	movf	((c:___ftge@ff2)),c,w
	subwf	((c:___ftge@ff1)),c,w
	movf	((c:___ftge@ff2+1)),c,w
	subwfb	((c:___ftge@ff1+1)),c,w
	movf	((c:___ftge@ff2+2)),c,w
	subwfb	((c:___ftge@ff1+2)),c,w
	btfsc	status,0
	goto	u371
	goto	u370
u371:
	goto	l1041
u370:
	
l1039:
	bcf	status,0
	goto	l657
	
l865:
	
l1041:
	bsf	status,0
	goto	l657
	
l867:
	goto	l657
	
l1043:
	line	13
	
l657:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   45[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   55[COMRAM] unsigned long 
;;  exp1            1   59[COMRAM] unsigned char 
;;  sign1           1   54[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   45[COMRAM] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0
;;      Temps:          5       0       0       0       0       0       0
;;      Totals:        15       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_load_Digipot
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
global __ptext10
__ptext10:
psect	text10
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:
;incstack = 0
	opt	stack 29
	dw	0FFFFh
	line	49
	
l1091:
	movff	(c:___fttol@f1+2),??___fttol+0+0
	clrf	(??___fttol+0+0+1)&0ffh,c
	clrf	(??___fttol+0+0+2)&0ffh,c
	rlcf	((c:___fttol@f1+1)),c,w
	rlcf	(??___fttol+0+0)&0ffh,c
	bnc	u411
	bsf	(??___fttol+0+0+1)&0ffh,c,0
u411:
	movf	(??___fttol+0+0),c,w
	movwf	((c:___fttol@exp1)),c
	tstfsz	((c:___fttol@exp1))&0ffh
	goto	u421
	goto	u420
u421:
	goto	l1097
u420:
	line	50
	
l1093:
	movlw	low(0)
	movwf	((c:?___fttol)),c
	movlw	high(0)
	movwf	((c:?___fttol+1)),c
	movlw	low highword(0)
	movwf	((c:?___fttol+2)),c
	movlw	high highword(0)
	movwf	((c:?___fttol+3)),c
	goto	l683
	
l1095:
	goto	l683
	
l682:
	line	51
	
l1097:
	movlw	(017h)&0ffh
	movwf	(??___fttol+0+0)&0ffh,c
	movff	(c:___fttol@f1),??___fttol+1+0
	movff	(c:___fttol@f1+1),??___fttol+1+0+1
	movff	(c:___fttol@f1+2),??___fttol+1+0+2
	incf	((??___fttol+0+0)),c,w
	movwf	(??___fttol+4+0)&0ffh,c
	goto	u430
u435:
	bcf	status,0
	rrcf	(??___fttol+1+2),c
	rrcf	(??___fttol+1+1),c
	rrcf	(??___fttol+1+0),c
u430:
	decfsz	(??___fttol+4+0)&0ffh,c
	goto	u435
	movf	(??___fttol+1+0),c,w
	movwf	((c:___fttol@sign1)),c
	line	52
	
l1099:
	bsf	(0+(15/8)+(c:___fttol@f1)),c,(15)&7
	line	53
	
l1101:
	movlw	low(0FFFFh)
	andwf	((c:___fttol@f1)),c
	movlw	high(0FFFFh)
	andwf	((c:___fttol@f1+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___fttol@f1+2)),c

	line	54
	
l1103:
	movf	((c:___fttol@f1)),c,w
	movwf	((c:___fttol@lval)),c
	movf	((c:___fttol@f1+1)),c,w
	movwf	1+((c:___fttol@lval)),c
	
	movf	((c:___fttol@f1+2)),c,w
	movwf	2+((c:___fttol@lval)),c
	
	clrf	3+((c:___fttol@lval)),c
	line	55
	
l1105:
	movlw	(08Eh)&0ffh
	subwf	((c:___fttol@exp1)),c
	line	56
	
l1107:
	btfss	((c:___fttol@exp1)),c,7
	goto	u441
	goto	u440
u441:
	goto	l1119
u440:
	line	57
	
l1109:
	movf	((c:___fttol@exp1)),c,w
	xorlw	80h
	movwf	(??___fttol+0+0)&0ffh,c
	movlw	(-15)&0ffh
	xorlw	80h
	subwf	(??___fttol+0+0),c,w
	btfsc	status,0
	goto	u451
	goto	u450
u451:
	goto	l1115
u450:
	line	58
	
l1111:
	movlw	low(0)
	movwf	((c:?___fttol)),c
	movlw	high(0)
	movwf	((c:?___fttol+1)),c
	movlw	low highword(0)
	movwf	((c:?___fttol+2)),c
	movlw	high highword(0)
	movwf	((c:?___fttol+3)),c
	goto	l683
	
l1113:
	goto	l683
	
l685:
	goto	l1115
	line	59
	
l686:
	line	60
	
l1115:
	bcf	status,0
	rrcf	((c:___fttol@lval+3)),c
	rrcf	((c:___fttol@lval+2)),c
	rrcf	((c:___fttol@lval+1)),c
	rrcf	((c:___fttol@lval)),c
	line	61
	
l1117:
	incfsz	((c:___fttol@exp1)),c
	
	goto	l1115
	goto	l1129
	
l687:
	line	62
	goto	l1129
	
l684:
	line	63
	
l1119:
	movlw	(018h-1)
	cpfsgt	((c:___fttol@exp1)),c
	goto	u461
	goto	u460
u461:
	goto	l1127
u460:
	line	64
	
l1121:
	movlw	low(0)
	movwf	((c:?___fttol)),c
	movlw	high(0)
	movwf	((c:?___fttol+1)),c
	movlw	low highword(0)
	movwf	((c:?___fttol+2)),c
	movlw	high highword(0)
	movwf	((c:?___fttol+3)),c
	goto	l683
	
l1123:
	goto	l683
	
l689:
	line	65
	goto	l1127
	
l691:
	line	66
	
l1125:
	bcf	status,0
	rlcf	((c:___fttol@lval)),c
	rlcf	((c:___fttol@lval+1)),c
	rlcf	((c:___fttol@lval+2)),c
	rlcf	((c:___fttol@lval+3)),c
	line	67
	decf	((c:___fttol@exp1)),c
	goto	l1127
	line	68
	
l690:
	line	65
	
l1127:
	tstfsz	((c:___fttol@exp1)),c
	goto	u471
	goto	u470
u471:
	goto	l1125
u470:
	goto	l1129
	
l692:
	goto	l1129
	line	69
	
l688:
	line	70
	
l1129:
	movf	((c:___fttol@sign1)),c,w
	btfsc	status,2
	goto	u481
	goto	u480
u481:
	goto	l1133
u480:
	line	71
	
l1131:
	comf	((c:___fttol@lval+3)),c
	comf	((c:___fttol@lval+2)),c
	comf	((c:___fttol@lval+1)),c
	negf	((c:___fttol@lval)),c
	movlw	0
	addwfc	((c:___fttol@lval+1)),c
	addwfc	((c:___fttol@lval+2)),c
	addwfc	((c:___fttol@lval+3)),c
	goto	l1133
	
l693:
	line	72
	
l1133:
	movff	(c:___fttol@lval),(c:?___fttol)
	movff	(c:___fttol@lval+1),(c:?___fttol+1)
	movff	(c:___fttol@lval+2),(c:?___fttol+2)
	movff	(c:___fttol@lval+3),(c:?___fttol+3)
	goto	l683
	
l1135:
	line	73
	
l683:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___awtoft

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 32 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   11[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, prodl, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         3       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_load_Digipot
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
	line	32
global __ptext11
__ptext11:
psect	text11
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
	line	32
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:
;incstack = 0
	opt	stack 28
	dw	0FFFFh
	line	36
	
l1079:
	movlw	low(0)
	movwf	((c:___awtoft@sign)),c
	line	37
	
l1081:
	movf	((c:___awtoft@c+1)),c,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	0
	btfsc	status,2
	subwf	((c:___awtoft@c)),c,w
	btfsc	status,0
	goto	u401
	goto	u400
u401:
	goto	l1087
u400:
	line	38
	
l1083:
	negf	((c:___awtoft@c)),c
	comf	((c:___awtoft@c+1)),c
	btfsc	status,0
	incf	((c:___awtoft@c+1)),c
	line	39
	
l1085:
	movlw	low(01h)
	movwf	((c:___awtoft@sign)),c
	goto	l1087
	line	40
	
l490:
	line	41
	
l1087:
	movff	(c:___awtoft@c),(c:___ftpack@arg)
	movff	(c:___awtoft@c+1),(c:___ftpack@arg+1)
	clrf	((c:___ftpack@arg+2)),c
	movlw	low(08Eh)
	movwf	((c:___ftpack@exp)),c
	movff	(c:___awtoft@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___awtoft)
	movff	1+?___ftpack,(c:?___awtoft+1)
	movff	2+?___ftpack,(c:?___awtoft+2)
	goto	l491
	
l1089:
	line	42
	
l491:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
	signat	___awtoft,4219
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMRAM] unsigned um
;;  exp             1    3[COMRAM] unsigned char 
;;  sign            1    4[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         5       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___awtoft
;;		___ftadd
;;		___ftmul
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
global __ptext12
__ptext12:
psect	text12
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:
;incstack = 0
	opt	stack 26
	dw	0FFFFh
	line	64
	
l869:
	movf	((c:___ftpack@exp)),c,w
	btfsc	status,2
	goto	u11
	goto	u10
u11:
	goto	l873
u10:
	
l871:
	movf	((c:___ftpack@arg)),c,w
	iorwf	((c:___ftpack@arg+1)),c,w
	iorwf	((c:___ftpack@arg+2)),c,w
	btfss	status,2
	goto	u21
	goto	u20
u21:
	goto	l879
u20:
	goto	l873
	
l578:
	line	65
	
l873:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftpack)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftpack+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftpack+2)),c

	goto	l579
	
l875:
	goto	l579
	
l576:
	line	66
	goto	l879
	
l581:
	line	67
	
l877:
	incf	((c:___ftpack@exp)),c
	line	68
	bcf	status,0
	rrcf	((c:___ftpack@arg+2)),c
	rrcf	((c:___ftpack@arg+1)),c
	rrcf	((c:___ftpack@arg)),c
	goto	l879
	line	69
	
l580:
	line	66
	
l879:
	movlw	low(0FE0000h)
	andwf	((c:___ftpack@arg)),c,w
	movwf	(??___ftpack+0+0)&0ffh,c
	movlw	0
	andwf	((c:___ftpack@arg+1)),c,w
	movwf	1+(??___ftpack+0+0)&0ffh,c
	movlw	0FEh
	andwf	((c:___ftpack@arg+2)),c,w
	movwf	2+(??___ftpack+0+0)&0ffh,c

	movf	(??___ftpack+0+0),c,w
	iorwf	(??___ftpack+0+1),c,w
	iorwf	(??___ftpack+0+2),c,w
	btfss	status,2
	goto	u31
	goto	u30
u31:
	goto	l877
u30:
	goto	l885
	
l582:
	line	70
	goto	l885
	
l584:
	line	71
	
l881:
	incf	((c:___ftpack@exp)),c
	line	72
	
l883:
	movlw	low(01h)
	addwf	((c:___ftpack@arg)),c
	movlw	high(01h)
	addwfc	((c:___ftpack@arg+1)),c
	movlw	low highword(01h)
	addwfc	((c:___ftpack@arg+2)),c

	line	73
	bcf	status,0
	rrcf	((c:___ftpack@arg+2)),c
	rrcf	((c:___ftpack@arg+1)),c
	rrcf	((c:___ftpack@arg)),c
	goto	l885
	line	74
	
l583:
	line	70
	
l885:
	movlw	low(0FF0000h)
	andwf	((c:___ftpack@arg)),c,w
	movwf	(??___ftpack+0+0)&0ffh,c
	movlw	0
	andwf	((c:___ftpack@arg+1)),c,w
	movwf	1+(??___ftpack+0+0)&0ffh,c
	movlw	0FFh
	andwf	((c:___ftpack@arg+2)),c,w
	movwf	2+(??___ftpack+0+0)&0ffh,c

	movf	(??___ftpack+0+0),c,w
	iorwf	(??___ftpack+0+1),c,w
	iorwf	(??___ftpack+0+2),c,w
	btfss	status,2
	goto	u41
	goto	u40
u41:
	goto	l881
u40:
	goto	l889
	
l585:
	line	75
	goto	l889
	
l587:
	line	76
	
l887:
	decf	((c:___ftpack@exp)),c
	line	77
	bcf	status,0
	rlcf	((c:___ftpack@arg)),c
	rlcf	((c:___ftpack@arg+1)),c
	rlcf	((c:___ftpack@arg+2)),c
	goto	l889
	line	78
	
l586:
	line	75
	
l889:
	
	btfss	((c:___ftpack@arg+1)),c,(15)&7
	goto	u51
	goto	u50
u51:
	goto	l887
u50:
	
l588:
	line	79
	
	btfsc	((c:___ftpack@exp)),c,(0)&7
	goto	u61
	goto	u60
u61:
	goto	l893
u60:
	line	80
	
l891:
	bcf	(0+(15/8)+(c:___ftpack@arg)),c,(15)&7
	goto	l893
	
l589:
	line	81
	
l893:
	bcf status,0
	rrcf	((c:___ftpack@exp)),c

	line	82
	movf	((c:___ftpack@exp)),c,w
	iorwf	((c:___ftpack@arg+2)),c

	line	83
	
l895:
	movf	((c:___ftpack@sign)),c,w
	btfsc	status,2
	goto	u71
	goto	u70
u71:
	goto	l899
u70:
	line	84
	
l897:
	bsf	(0+(23/8)+(c:___ftpack@arg)),c,(23)&7
	goto	l899
	
l590:
	line	85
	
l899:
	movff	(c:___ftpack@arg),(c:?___ftpack)
	movff	(c:___ftpack@arg+1),(c:?___ftpack+1)
	movff	(c:___ftpack@arg+2),(c:?___ftpack+2)
	goto	l579
	
l901:
	line	86
	
l579:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_get_char

;; *************** function _get_char *****************
;; Defined at:
;;		line 33 in file "E:\Study Material\XC8 PROJECTS\Android Cautery\my_serial.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  rx_delay        2    1[COMRAM] unsigned int 
;;  data            1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Android Cautery\my_serial.c"
	line	33
global __ptext13
__ptext13:
psect	text13
	file	"E:\Study Material\XC8 PROJECTS\Android Cautery\my_serial.c"
	line	33
	global	__size_of_get_char
	__size_of_get_char	equ	__end_of_get_char-_get_char
	
_get_char:
;incstack = 0
	opt	stack 30
	dw	0FFFFh
	line	36
	
l1221:
;my_serial.c: 35: char data;
;my_serial.c: 36: unsigned int rx_delay = 0;
	movlw	high(0)
	movwf	((c:get_char@rx_delay+1)),c
	movlw	low(0)
	movwf	((c:get_char@rx_delay)),c
	line	37
;my_serial.c: 37: while(!PIR1bits.RCIF && rx_delay < 50000)
	goto	l1227
	
l167:
	line	39
	
l1223:
;my_serial.c: 38: {
;my_serial.c: 39: _delay((unsigned long)((5)*(40000000/4000000.0)));
	movlw	10
u1357:
	nop
decfsz	wreg,f
	goto	u1357

	line	40
	
l1225:
;my_serial.c: 40: rx_delay++;
	infsnz	((c:get_char@rx_delay)),c
	incf	((c:get_char@rx_delay+1)),c
	goto	l1227
	line	41
	
l166:
	line	37
	
l1227:
	btfsc	((c:3998)),c,5	;volatile
	goto	u621
	goto	u620
u621:
	goto	l1231
u620:
	
l1229:
	movlw	050h
	subwf	((c:get_char@rx_delay)),c,w
	movlw	0C3h
	subwfb	((c:get_char@rx_delay+1)),c,w
	btfss	status,0
	goto	u631
	goto	u630
u631:
	goto	l1223
u630:
	goto	l1231
	
l169:
	goto	l1231
	
l170:
	line	42
	
l1231:
;my_serial.c: 41: }
;my_serial.c: 42: if(rx_delay >= 50000)
	movlw	050h
	subwf	((c:get_char@rx_delay)),c,w
	movlw	0C3h
	subwfb	((c:get_char@rx_delay+1)),c,w
	btfss	status,0
	goto	u641
	goto	u640
u641:
	goto	l171
u640:
	line	44
	
l1233:
;my_serial.c: 43: {
;my_serial.c: 44: RC1 = 1;
	bsf	c:(31761/8),(31761)&7	;volatile
	line	45
	
l1235:
;my_serial.c: 45: return 'X';
	movlw	(058h)&0ffh
	goto	l172
	
l1237:
	goto	l172
	line	46
	
l171:
	line	47
;my_serial.c: 46: }
;my_serial.c: 47: RC1 = 0;
	bcf	c:(31761/8),(31761)&7	;volatile
	line	48
;my_serial.c: 48: data = RCREG;
	movff	(c:4014),(c:get_char@data)	;volatile
	line	49
	
l1239:
;my_serial.c: 49: return data;
	movf	((c:get_char@data)),c,w
	goto	l172
	
l1241:
	line	50
	
l172:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_get_char
	__end_of_get_char:
	signat	_get_char,89
	global	_cut_Operation

;; *************** function _cut_Operation *****************
;; Defined at:
;;		line 20 in file "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
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
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
	line	20
global __ptext14
__ptext14:
psect	text14
	file	"E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
	line	20
	global	__size_of_cut_Operation
	__size_of_cut_Operation	equ	__end_of_cut_Operation-_cut_Operation
	
_cut_Operation:
;incstack = 0
	opt	stack 30
	dw	0FFFFh
	line	22
	
l1243:
;cautery.c: 22: while(RA0 == 0)
	goto	l1259
	
l221:
	line	25
# 25 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
movlw 0x0A ;# 
	line	26
# 26 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
MOVWF _train ;# 
	line	27
# 27 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
loop: ;# 
	line	28
# 28 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
BSF PORTB,1 ;# 
	line	29
# 29 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	30
# 30 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	31
# 31 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	32
# 32 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	33
# 33 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	34
# 34 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	35
# 35 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	36
# 36 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	37
# 37 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	38
# 38 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
BCF PORTB,1 ;# 
	line	39
# 39 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	40
# 40 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	41
# 41 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	42
# 42 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	43
# 43 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	44
# 44 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	45
# 45 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
decfsz _train,f ;# 
	line	46
# 46 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
goto loop ;# 
psect	text14
	line	50
;cautery.c: 50: if( Cut_Mode == 0 )
	tstfsz	((c:_Cut_Mode)),c
	goto	u651
	goto	u650
u651:
	goto	l1247
u650:
	line	52
	
l1245:
;cautery.c: 51: {
;cautery.c: 52: _delay(5);
	nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop

	goto	l1247
	line	53
	
l222:
	line	55
	
l1247:
;cautery.c: 53: }
;cautery.c: 55: if( Cut_Mode == 1 )
	decf	((c:_Cut_Mode)),c,w

	btfss	status,2
	goto	u661
	goto	u660
u661:
	goto	l1251
u660:
	line	57
	
l1249:
;cautery.c: 56: {
;cautery.c: 57: _delay(40);
	movlw	10
u1367:
decfsz	wreg,f
	goto	u1367

	goto	l1251
	line	58
	
l223:
	line	60
	
l1251:
;cautery.c: 58: }
;cautery.c: 60: if( Cut_Mode == 2 )
	movf	((c:_Cut_Mode)),c,w
	xorlw	2

	btfss	status,2
	goto	u671
	goto	u670
u671:
	goto	l1255
u670:
	line	62
	
l1253:
;cautery.c: 61: {
;cautery.c: 62: _delay(60);
	movlw	15
u1377:
decfsz	wreg,f
	goto	u1377

	goto	l1255
	line	63
	
l224:
	line	65
	
l1255:
;cautery.c: 63: }
;cautery.c: 65: if( Cut_Mode == 3 )
	movf	((c:_Cut_Mode)),c,w
	xorlw	3

	btfss	status,2
	goto	u681
	goto	u680
u681:
	goto	l1259
u680:
	line	67
	
l1257:
;cautery.c: 66: {
;cautery.c: 67: _delay(100);
	movlw	25
u1387:
decfsz	wreg,f
	goto	u1387

	goto	l1259
	line	68
	
l225:
	goto	l1259
	line	69
	
l220:
	line	22
	
l1259:
	btfss	c:(31744/8),(31744)&7	;volatile
	goto	u691
	goto	u690
u691:
	goto	l221
u690:
	
l226:
	line	70
;cautery.c: 68: }
;cautery.c: 69: }
;cautery.c: 70: RB1 = 0;
	bcf	c:(31753/8),(31753)&7	;volatile
	line	71
	
l227:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_cut_Operation
	__end_of_cut_Operation:
	signat	_cut_Operation,88
	global	_coag_Operation

;; *************** function _coag_Operation *****************
;; Defined at:
;;		line 73 in file "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
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
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2
	line	73
global __ptext15
__ptext15:
psect	text15
	file	"E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
	line	73
	global	__size_of_coag_Operation
	__size_of_coag_Operation	equ	__end_of_coag_Operation-_coag_Operation
	
_coag_Operation:
;incstack = 0
	opt	stack 30
	dw	0FFFFh
	line	75
	
l1261:
;cautery.c: 75: while(RA1 == 0)
	goto	l1279
	
l231:
	line	77
;cautery.c: 76: {
;cautery.c: 77: if(Coag_Mode == 0)
	tstfsz	((c:_Coag_Mode)),c
	goto	u701
	goto	u700
u701:
	goto	l1267
u700:
	line	80
	
l1263:
# 80 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
movlw 0x01 ;# 
	line	81
# 81 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
MOVWF _train ;# 
	line	82
# 82 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
loop_1: ;# 
	line	83
# 83 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
BSF PORTB,1 ;# 
	line	84
# 84 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	85
# 85 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	86
# 86 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	87
# 87 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	88
# 88 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	89
# 89 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	90
# 90 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	91
# 91 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	92
# 92 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	93
# 93 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
BCF PORTB,1 ;# 
	line	94
# 94 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	95
# 95 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	96
# 96 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	97
# 97 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	98
# 98 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	99
# 99 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	100
# 100 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
decfsz _train,f ;# 
	line	101
# 101 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
goto loop_1 ;# 
psect	text15
	line	103
	
l1265:
;cautery.c: 103: _delay(50);
	movlw	10
u1397:
	nop
decfsz	wreg,f
	goto	u1397

	goto	l1267
	line	104
	
l232:
	line	106
	
l1267:
;cautery.c: 104: }
;cautery.c: 106: if( Coag_Mode == 1 )
	decf	((c:_Coag_Mode)),c,w

	btfss	status,2
	goto	u711
	goto	u710
u711:
	goto	l1273
u710:
	line	109
	
l1269:
# 109 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
movlw 0x03 ;# 
	line	110
# 110 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
MOVWF _train ;# 
	line	111
# 111 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
loop_2: ;# 
	line	112
# 112 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
BSF PORTB,1 ;# 
	line	113
# 113 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	114
# 114 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	115
# 115 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	116
# 116 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	117
# 117 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	118
# 118 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	119
# 119 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	120
# 120 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	121
# 121 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	122
# 122 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
BCF PORTB,1 ;# 
	line	123
# 123 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	124
# 124 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	125
# 125 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	126
# 126 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	127
# 127 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	128
# 128 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	129
# 129 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
decfsz _train,f ;# 
	line	130
# 130 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
goto loop_2 ;# 
psect	text15
	line	132
	
l1271:
;cautery.c: 132: _delay(50);
	movlw	10
u1407:
	nop
decfsz	wreg,f
	goto	u1407

	goto	l1273
	line	133
	
l233:
	line	135
	
l1273:
;cautery.c: 133: }
;cautery.c: 135: if( Coag_Mode == 2 )
	movf	((c:_Coag_Mode)),c,w
	xorlw	2

	btfss	status,2
	goto	u721
	goto	u720
u721:
	goto	l1279
u720:
	line	138
	
l1275:
# 138 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
movlw 0x03 ;# 
	line	139
# 139 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
MOVWF _train ;# 
	line	140
# 140 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
loop_3: ;# 
	line	141
# 141 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
BSF PORTB,1 ;# 
	line	142
# 142 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	143
# 143 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	144
# 144 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	145
# 145 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	146
# 146 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	147
# 147 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	148
# 148 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	149
# 149 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	150
# 150 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	151
# 151 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
BCF PORTB,1 ;# 
	line	152
# 152 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	153
# 153 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	154
# 154 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	155
# 155 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	156
# 156 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	157
# 157 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	158
# 158 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
decfsz _train,f ;# 
	line	159
# 159 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
goto loop_3 ;# 
psect	text15
	line	161
	
l1277:
;cautery.c: 161: _delay(50);
	movlw	10
u1417:
	nop
decfsz	wreg,f
	goto	u1417

	goto	l1279
	line	162
	
l234:
	goto	l1279
	line	163
	
l230:
	line	75
	
l1279:
	btfss	c:(31745/8),(31745)&7	;volatile
	goto	u731
	goto	u730
u731:
	goto	l231
u730:
	
l235:
	line	164
;cautery.c: 162: }
;cautery.c: 163: }
;cautery.c: 164: RB1 = 0;
	bcf	c:(31753/8),(31753)&7	;volatile
	line	165
	
l236:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_coag_Operation
	__end_of_coag_Operation:
	signat	_coag_Operation,88
	global	_bi_Operation

;; *************** function _bi_Operation *****************
;; Defined at:
;;		line 167 in file "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
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
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2
	line	167
global __ptext16
__ptext16:
psect	text16
	file	"E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
	line	167
	global	__size_of_bi_Operation
	__size_of_bi_Operation	equ	__end_of_bi_Operation-_bi_Operation
	
_bi_Operation:
;incstack = 0
	opt	stack 30
	dw	0FFFFh
	line	169
	
l1281:
;cautery.c: 169: while(RA2 == 0)
	goto	l1289
	
l240:
	line	172
# 172 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
movlw 0x0A ;# 
	line	173
# 173 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
MOVWF _train ;# 
	line	174
# 174 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
loop_4: ;# 
	line	175
# 175 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
BSF PORTB,1 ;# 
	line	176
# 176 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	177
# 177 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	178
# 178 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	179
# 179 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	180
# 180 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	181
# 181 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	182
# 182 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	183
# 183 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	184
# 184 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	185
# 185 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
BCF PORTB,1 ;# 
	line	186
# 186 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	187
# 187 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	188
# 188 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	189
# 189 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	190
# 190 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	191
# 191 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
NOP ;# 
	line	192
# 192 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
decfsz _train,f ;# 
	line	193
# 193 "E:\Study Material\XC8 PROJECTS\Android Cautery\cautery.c"
goto loop_4 ;# 
psect	text16
	line	196
;cautery.c: 196: if(Bi_Mode == 0)
	tstfsz	((c:_Bi_Mode)),c
	goto	u741
	goto	u740
u741:
	goto	l1285
u740:
	line	198
	
l1283:
;cautery.c: 197: {
;cautery.c: 198: _delay(100);
	movlw	25
u1427:
decfsz	wreg,f
	goto	u1427

	goto	l1285
	line	199
	
l241:
	line	200
	
l1285:
;cautery.c: 199: }
;cautery.c: 200: if(Bi_Mode == 1)
	decf	((c:_Bi_Mode)),c,w

	btfss	status,2
	goto	u751
	goto	u750
u751:
	goto	l1289
u750:
	line	202
	
l1287:
;cautery.c: 201: {
;cautery.c: 202: _delay(600);
	movlw	150
u1437:
decfsz	wreg,f
	goto	u1437

	goto	l1289
	line	203
	
l242:
	goto	l1289
	line	204
	
l239:
	line	169
	
l1289:
	btfss	c:(31746/8),(31746)&7	;volatile
	goto	u761
	goto	u760
u761:
	goto	l240
u760:
	
l243:
	line	205
;cautery.c: 203: }
;cautery.c: 204: }
;cautery.c: 205: RB1 = 0;
	bcf	c:(31753/8),(31753)&7	;volatile
	line	206
	
l244:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_bi_Operation
	__end_of_bi_Operation:
	signat	_bi_Operation,88
	global	_USARTInit

;; *************** function _USARTInit *****************
;; Defined at:
;;		line 7 in file "E:\Study Material\XC8 PROJECTS\Android Cautery\my_serial.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Android Cautery\my_serial.c"
	line	7
global __ptext17
__ptext17:
psect	text17
	file	"E:\Study Material\XC8 PROJECTS\Android Cautery\my_serial.c"
	line	7
	global	__size_of_USARTInit
	__size_of_USARTInit	equ	__end_of_USARTInit-_USARTInit
	
_USARTInit:
;incstack = 0
	opt	stack 30
	dw	0FFFFh
	line	10
	
l1219:
;my_serial.c: 10: TRISCbits.RC6 = 0;
	bcf	((c:3988)),c,6	;volatile
	line	11
;my_serial.c: 11: TRISCbits.RC7 = 1;
	bsf	((c:3988)),c,7	;volatile
	line	14
;my_serial.c: 14: TXSTAbits.SYNC = 0;
	bcf	((c:4012)),c,4	;volatile
	line	15
;my_serial.c: 15: TXSTAbits.TX9 = 0;
	bcf	((c:4012)),c,6	;volatile
	line	16
;my_serial.c: 16: TXSTAbits.BRGH = 1;
	bsf	((c:4012)),c,2	;volatile
	line	17
;my_serial.c: 17: TXSTAbits.TXEN = 1;
	bsf	((c:4012)),c,5	;volatile
	line	20
;my_serial.c: 20: RCSTAbits.SPEN = 1;
	bsf	((c:4011)),c,7	;volatile
	line	21
;my_serial.c: 21: RCSTAbits.RX9 = 0;
	bcf	((c:4011)),c,6	;volatile
	line	22
;my_serial.c: 22: RCSTAbits.CREN = 1;
	bsf	((c:4011)),c,4	;volatile
	line	24
;my_serial.c: 24: SPBRG = 255;
	setf	((c:4015)),c	;volatile
	line	25
	
l157:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_USARTInit
	__end_of_USARTInit:
	signat	_USARTInit,88
	global	_MY_DELAY

;; *************** function _MY_DELAY *****************
;; Defined at:
;;		line 333 in file "E:\Study Material\XC8 PROJECTS\Android Cautery\Android_Cautery.c"
;; Parameters:    Size  Location     Type
;;  ms              2    0[COMRAM] int 
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
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Android Cautery\Android_Cautery.c"
	line	333
global __ptext18
__ptext18:
psect	text18
	file	"E:\Study Material\XC8 PROJECTS\Android Cautery\Android_Cautery.c"
	line	333
	global	__size_of_MY_DELAY
	__size_of_MY_DELAY	equ	__end_of_MY_DELAY-_MY_DELAY
	
_MY_DELAY:
;incstack = 0
	opt	stack 30
	dw	0FFFFh
	line	335
	
l1211:
;Android_Cautery.c: 335: while(ms > 0)
	goto	l1217
	
l134:
	line	337
	
l1213:
;Android_Cautery.c: 336: {
;Android_Cautery.c: 337: _delay((unsigned long)((1)*(40000000/4000.0)));
	movlw	10
movwf	(??_MY_DELAY+0+0)&0ffh,c,f
	movlw	190
u1447:
	decfsz	wreg,f
	goto	u1447
	decfsz	(??_MY_DELAY+0+0)&0ffh,c,f
	goto	u1447
	nop2

	line	338
	
l1215:
;Android_Cautery.c: 338: ms--;
	decf	((c:MY_DELAY@ms)),c
	btfss	status,0
	decf	((c:MY_DELAY@ms+1)),c
	goto	l1217
	line	339
	
l133:
	line	335
	
l1217:
	movf	((c:MY_DELAY@ms+1)),c,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	01h
	btfsc	status,2
	subwf	((c:MY_DELAY@ms)),c,w
	btfsc	status,0
	goto	u611
	goto	u610
u611:
	goto	l1213
u610:
	goto	l136
	
l135:
	line	341
;Android_Cautery.c: 339: }
;Android_Cautery.c: 340: return;
	
l136:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_MY_DELAY
	__end_of_MY_DELAY:
	signat	_MY_DELAY,4216
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

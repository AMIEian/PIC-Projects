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
	FNCALL	_main,_MY_DELAY
	FNCALL	_main,___awdiv
	FNCALL	_main,___awmod
	FNROOT	_main
	FNCALL	intlevel2,_tmr_int
	global	intlevel2
	FNROOT	intlevel2
	global	_values
psect	idataCOMRAM,class=CODE,space=0,delta=1,noexec
global __pidataCOMRAM
__pidataCOMRAM:
	file	"E:\Study Material\XC8 PROJECTS\CO2 Display\disp.c"
	line	8

;initializer for _values
	db	low(010h)
	db	low(020h)
	db	low(030h)
	db	low(040h)
	db	low(050h)
	db	low(060h)
	db	low(070h)
	db	low(080h)
	db	low(090h)
	db	low(0)
	db	low(010h)
	db	low(020h)
	db	low(030h)
	db	low(040h)
	global	_adr
	global	_blink
	global	_count
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
	global	_T1CON
_T1CON	set	0xFCD
	global	_TRISB
_TRISB	set	0xF93
	global	_TRISC
_TRISC	set	0xF94
	global	_TRISD
_TRISD	set	0xF95
	global	_TRISE
_TRISE	set	0xF96
	global	_RB0
_RB0	set	0x7C08
	global	_RB1
_RB1	set	0x7C09
	global	_T0IF
_T0IF	set	0x7F92
	global	_TMR1IF
_TMR1IF	set	0x7CF0
; #config settings
	file	"Display.as"
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
	global	_adr
_adr:
       ds      1
	global	_blink
_blink:
       ds      1
	global	_count
_count:
       ds      1
psect	dataCOMRAM,class=COMRAM,space=1,noexec
global __pdataCOMRAM
__pdataCOMRAM:
	file	"E:\Study Material\XC8 PROJECTS\CO2 Display\disp.c"
	line	8
	global	_values
_values:
       ds      14
	file	"Display.as"
	line	#
psect	cinit
; Clear objects allocated to COMRAM (3 bytes)
	global __pbssCOMRAM
clrf	(__pbssCOMRAM+2)&0xffh,c
clrf	(__pbssCOMRAM+1)&0xffh,c
clrf	(__pbssCOMRAM+0)&0xffh,c
	line	#
; Initialize objects allocated to COMRAM (14 bytes)
	global __pidataCOMRAM
	; load TBLPTR registers with __pidataCOMRAM
	movlw	low (__pidataCOMRAM)
	movwf	tblptrl
	movlw	high(__pidataCOMRAM)
	movwf	tblptrh
	movlw	low highword(__pidataCOMRAM)
	movwf	tblptru
	lfsr	0,__pdataCOMRAM
	lfsr	1,14
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
__end_of__initialization:	GLOBAL	__Lmediumconst
	movlw	low highword(__Lmediumconst)
	movwf	tblptru
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_MY_DELAY:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_tmr_int:	; 0 bytes @ 0x0
??_tmr_int:	; 0 bytes @ 0x0
	ds   14
??_MY_DELAY:	; 0 bytes @ 0xE
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0xE
	global	?___awmod
?___awmod:	; 2 bytes @ 0xE
	global	MY_DELAY@sec
MY_DELAY@sec:	; 1 bytes @ 0xE
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0xE
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0xE
	ds   1
	global	MY_DELAY@Count
MY_DELAY@Count:	; 1 bytes @ 0xF
	ds   1
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x10
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x10
	ds   2
??___awdiv:	; 0 bytes @ 0x12
??___awmod:	; 0 bytes @ 0x12
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x12
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x12
	ds   1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x13
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x13
	ds   1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x14
	ds   2
??_main:	; 0 bytes @ 0x16
	global	main@portd_old_status
main@portd_old_status:	; 1 bytes @ 0x16
	ds   1
	global	main@debounce
main@debounce:	; 1 bytes @ 0x17
	ds   1
	global	main@set_pressure
main@set_pressure:	; 1 bytes @ 0x18
	ds   1
	global	main@set_flow
main@set_flow:	; 1 bytes @ 0x19
	ds   1
	global	main@units
main@units:	; 1 bytes @ 0x1A
	ds   1
	global	main@tens
main@tens:	; 1 bytes @ 0x1B
	ds   1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        14
;!    BSS         3
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM          127     28      45
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
;!    _main->___awdiv
;!
;!Critical Paths under _tmr_int in COMRAM
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
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _tmr_int in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _tmr_int in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _tmr_int in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _tmr_int in BANK5
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 6     6      0    1504
;!                                             22 COMRAM     6     6      0
;!                           _MY_DELAY
;!                            ___awdiv
;!                            ___awmod
;! ---------------------------------------------------------------------------------
;! (1) ___awmod                                              6     2      4     467
;!                                             14 COMRAM     6     2      4
;! ---------------------------------------------------------------------------------
;! (1) ___awdiv                                              8     4      4     467
;!                                             14 COMRAM     8     4      4
;! ---------------------------------------------------------------------------------
;! (1) _MY_DELAY                                             2     2      0      30
;!                                             14 COMRAM     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (2) _tmr_int                                             14    14      0       0
;!                                              0 COMRAM    14    14      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _MY_DELAY
;!   ___awdiv
;!   ___awmod
;!
;! _tmr_int (ROOT)
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
;!COMRAM              7F     1C      2D       1       35.4%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      2D      15        0.0%
;!DATA                 0      0      2D       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 10 in file "E:\Study Material\XC8 PROJECTS\CO2 Display\disp.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  tens            1   27[COMRAM] unsigned char 
;;  units           1   26[COMRAM] unsigned char 
;;  set_flow        1   25[COMRAM] unsigned char 
;;  set_pressure    1   24[COMRAM] unsigned char 
;;  debounce        1   23[COMRAM] unsigned char 
;;  portd_old_st    1   22[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, prodl, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_MY_DELAY
;;		___awdiv
;;		___awmod
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\CO2 Display\disp.c"
	line	10
global __ptext0
__ptext0:
psect	text0
	file	"E:\Study Material\XC8 PROJECTS\CO2 Display\disp.c"
	line	10
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 29
	dw	0FFFFh
	line	12
	
l759:
;disp.c: 12: unsigned char set_pressure = 0, set_flow = 0, portd_old_status = 0xFF, units = 0, tens = 0, debounce = 0;
	movlw	low(0)
	movwf	((c:main@set_pressure)),c
	movlw	low(0)
	movwf	((c:main@set_flow)),c
	
l761:
	setf	((c:main@portd_old_status)),c
	movlw	low(0)
	movwf	((c:main@units)),c
	movlw	low(0)
	movwf	((c:main@tens)),c
	movlw	low(0)
	movwf	((c:main@debounce)),c
	line	14
;disp.c: 14: ADCON1 = 0x06;
	movlw	low(06h)
	movwf	((c:4033)),c	;volatile
	line	16
;disp.c: 16: TRISE = 0x00;
	movlw	low(0)
	movwf	((c:3990)),c	;volatile
	line	17
;disp.c: 17: TRISB = 0x00;
	movlw	low(0)
	movwf	((c:3987)),c	;volatile
	line	18
	
l763:
;disp.c: 18: TRISD = 0xFF;
	setf	((c:3989)),c	;volatile
	line	19
;disp.c: 19: TRISC = 0x00;
	movlw	low(0)
	movwf	((c:3988)),c	;volatile
	line	21
;disp.c: 21: RCON = 0x9F;
	movlw	low(09Fh)
	movwf	((c:4048)),c	;volatile
	line	22
;disp.c: 22: INTCON = 0xA0;
	movlw	low(0A0h)
	movwf	((c:4082)),c	;volatile
	line	23
;disp.c: 23: T0CON = 0xC2;
	movlw	low(0C2h)
	movwf	((c:4053)),c	;volatile
	line	24
;disp.c: 24: TMR0 = 0x00;
	movlw	high(0)
	movwf	((c:4054+1)),c	;volatile
	movlw	low(0)
	movwf	((c:4054)),c	;volatile
	line	26
	
l765:
;disp.c: 26: RB0 = 0;
	bcf	c:(31752/8),(31752)&7	;volatile
	line	27
	
l767:
;disp.c: 27: RB1 = 0;
	bcf	c:(31753/8),(31753)&7	;volatile
	line	30
;disp.c: 30: for(blink = 0; blink < 5; blink ++)
	movlw	low(0)
	movwf	((c:_blink)),c	;volatile
	
l769:
	movlw	(05h-1)
	cpfsgt	((c:_blink)),c	;volatile
	goto	u161
	goto	u160
u161:
	goto	l51
u160:
	goto	l783
	
l771:
	goto	l783
	line	31
	
l51:
	line	32
;disp.c: 31: {
;disp.c: 32: PORTC = 0xFF;
	setf	((c:3970)),c	;volatile
	line	33
	
l773:
;disp.c: 33: MY_DELAY(1);
	movlw	(01h)&0ffh
	
	call	_MY_DELAY
	line	34
	
l775:
;disp.c: 34: PORTC = 0x00;
	movlw	low(0)
	movwf	((c:3970)),c	;volatile
	line	35
	
l777:
;disp.c: 35: MY_DELAY(1);
	movlw	(01h)&0ffh
	
	call	_MY_DELAY
	line	30
	
l779:
	incf	((c:_blink)),c	;volatile
	
l781:
	movlw	(05h-1)
	cpfsgt	((c:_blink)),c	;volatile
	goto	u171
	goto	u170
u171:
	goto	l51
u170:
	goto	l783
	
l52:
	goto	l783
	line	38
;disp.c: 36: }
;disp.c: 38: while (1)
	
l53:
	line	41
	
l783:
;disp.c: 39: {
;disp.c: 41: if( portd_old_status != PORTD )
	movf	((c:main@portd_old_status)),c,w
	xorwf	((c:3971)),c,w	;volatile
	btfsc	status,2
	goto	u181
	goto	u180
u181:
	goto	l783
u180:
	line	44
	
l785:
;disp.c: 42: {
;disp.c: 44: for (debounce = 0; debounce <= 99; debounce ++)
	movlw	low(0)
	movwf	((c:main@debounce)),c
	
l787:
	movlw	(064h-1)
	cpfsgt	((c:main@debounce)),c
	goto	u191
	goto	u190
u191:
	goto	l791
u190:
	goto	l797
	
l789:
	goto	l797
	line	45
	
l55:
	line	46
	
l791:
;disp.c: 45: {
;disp.c: 46: _delay(250);
	movlw	50
u287:
	nop
decfsz	wreg,f
	goto	u287

	line	44
	
l793:
	incf	((c:main@debounce)),c
	
l795:
	movlw	(064h-1)
	cpfsgt	((c:main@debounce)),c
	goto	u201
	goto	u200
u201:
	goto	l791
u200:
	goto	l797
	
l56:
	line	49
	
l797:
;disp.c: 47: }
;disp.c: 49: if( portd_old_status != PORTD )
	movf	((c:main@portd_old_status)),c,w
	xorwf	((c:3971)),c,w	;volatile
	btfsc	status,2
	goto	u211
	goto	u210
u211:
	goto	l783
u210:
	line	51
	
l799:
;disp.c: 50: {
;disp.c: 51: portd_old_status = PORTD;
	movff	(c:3971),(c:main@portd_old_status)	;volatile
	line	52
;disp.c: 52: switch( PORTD )
	goto	l875
	line	54
;disp.c: 53: {
;disp.c: 54: case 0xFE :
	
l59:
	line	56
	
l801:
;disp.c: 56: if( set_flow < 30 )
	movlw	(01Eh)&0ffh
	subwf	((c:main@set_flow)),c,w
	btfsc	status,0
	goto	u221
	goto	u220
u221:
	goto	l783
u220:
	line	58
	
l803:
;disp.c: 57: {
;disp.c: 58: set_flow = set_flow + 1;
	incf	((c:main@set_flow)),c,w
	movwf	((c:main@set_flow)),c
	line	59
	
l805:
;disp.c: 59: units = 0x00;
	movlw	low(0)
	movwf	((c:main@units)),c
	line	60
	
l807:
;disp.c: 60: units = set_flow % 10;
	movff	(c:main@set_flow),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	movwf	((c:main@units)),c
	line	61
	
l809:
;disp.c: 61: units = units << 4;
	swapf	((c:main@units)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:main@units)),c
	line	62
	
l811:
;disp.c: 62: values[5] = units;
	movff	(c:main@units),0+((c:_values)+05h)	;volatile
	line	63
	
l813:
;disp.c: 63: tens = 0x00;
	movlw	low(0)
	movwf	((c:main@tens)),c
	line	64
;disp.c: 64: tens = set_flow / 10;
	movff	(c:main@set_flow),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	movwf	((c:main@tens)),c
	line	65
	
l815:
;disp.c: 65: tens = tens << 4;
	swapf	((c:main@tens)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:main@tens)),c
	line	66
	
l817:
;disp.c: 66: values[4] = tens;
	movff	(c:main@tens),0+((c:_values)+04h)	;volatile
	goto	l783
	line	67
	
l60:
	line	68
;disp.c: 67: }
;disp.c: 68: break;
	goto	l783
	line	70
;disp.c: 70: case 0xFD :
	
l62:
	line	72
	
l819:
;disp.c: 72: if( set_flow > 0 )
	movf	((c:main@set_flow)),c,w
	btfsc	status,2
	goto	u231
	goto	u230
u231:
	goto	l783
u230:
	line	74
	
l821:
;disp.c: 73: {
;disp.c: 74: set_flow = set_flow - 1;
	decf	((c:main@set_flow)),c,w
	movwf	((c:main@set_flow)),c
	line	75
	
l823:
;disp.c: 75: units = 0x00;
	movlw	low(0)
	movwf	((c:main@units)),c
	line	76
	
l825:
;disp.c: 76: units = set_flow % 10;
	movff	(c:main@set_flow),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	movwf	((c:main@units)),c
	line	77
	
l827:
;disp.c: 77: units = units << 4;
	swapf	((c:main@units)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:main@units)),c
	line	78
	
l829:
;disp.c: 78: values[5] = units;
	movff	(c:main@units),0+((c:_values)+05h)	;volatile
	line	79
	
l831:
;disp.c: 79: tens = 0x00;
	movlw	low(0)
	movwf	((c:main@tens)),c
	line	80
;disp.c: 80: tens = set_flow / 10;
	movff	(c:main@set_flow),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	movwf	((c:main@tens)),c
	line	81
	
l833:
;disp.c: 81: tens = tens << 4;
	swapf	((c:main@tens)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:main@tens)),c
	line	82
	
l835:
;disp.c: 82: values[4] = tens;
	movff	(c:main@tens),0+((c:_values)+04h)	;volatile
	goto	l783
	line	83
	
l63:
	line	84
;disp.c: 83: }
;disp.c: 84: break;
	goto	l783
	line	86
;disp.c: 86: case 0xFB :
	
l64:
	line	88
	
l837:
;disp.c: 88: if( set_pressure > 0 )
	movf	((c:main@set_pressure)),c,w
	btfsc	status,2
	goto	u241
	goto	u240
u241:
	goto	l783
u240:
	line	90
	
l839:
;disp.c: 89: {
;disp.c: 90: set_pressure = set_pressure - 1;
	decf	((c:main@set_pressure)),c,w
	movwf	((c:main@set_pressure)),c
	line	91
	
l841:
;disp.c: 91: units = 0x00;
	movlw	low(0)
	movwf	((c:main@units)),c
	line	92
	
l843:
;disp.c: 92: units = set_pressure % 10;
	movff	(c:main@set_pressure),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	movwf	((c:main@units)),c
	line	93
	
l845:
;disp.c: 93: units = units << 4;
	swapf	((c:main@units)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:main@units)),c
	line	94
	
l847:
;disp.c: 94: values[3] = units;
	movff	(c:main@units),0+((c:_values)+03h)	;volatile
	line	95
	
l849:
;disp.c: 95: tens = 0x00;
	movlw	low(0)
	movwf	((c:main@tens)),c
	line	96
;disp.c: 96: tens = set_pressure / 10;
	movff	(c:main@set_pressure),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	movwf	((c:main@tens)),c
	line	97
	
l851:
;disp.c: 97: tens = tens << 4;
	swapf	((c:main@tens)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:main@tens)),c
	line	98
	
l853:
;disp.c: 98: values[2] = tens;
	movff	(c:main@tens),0+((c:_values)+02h)	;volatile
	goto	l783
	line	99
	
l65:
	line	100
;disp.c: 99: }
;disp.c: 100: break;
	goto	l783
	line	102
;disp.c: 102: case 0xF7 :
	
l66:
	line	103
;disp.c: 103: break;
	goto	l783
	line	105
;disp.c: 105: case 0xEF :
	
l67:
	line	107
	
l855:
;disp.c: 107: if( set_pressure < 12 )
	movlw	(0Ch)&0ffh
	subwf	((c:main@set_pressure)),c,w
	btfsc	status,0
	goto	u251
	goto	u250
u251:
	goto	l783
u250:
	line	109
	
l857:
;disp.c: 108: {
;disp.c: 109: set_pressure = set_pressure + 1;
	incf	((c:main@set_pressure)),c,w
	movwf	((c:main@set_pressure)),c
	line	110
	
l859:
;disp.c: 110: units = 0x00;
	movlw	low(0)
	movwf	((c:main@units)),c
	line	111
	
l861:
;disp.c: 111: units = set_pressure % 10;
	movff	(c:main@set_pressure),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	movwf	((c:main@units)),c
	line	112
	
l863:
;disp.c: 112: units = units << 4;
	swapf	((c:main@units)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:main@units)),c
	line	113
	
l865:
;disp.c: 113: values[3] = units;
	movff	(c:main@units),0+((c:_values)+03h)	;volatile
	line	114
	
l867:
;disp.c: 114: tens = 0x00;
	movlw	low(0)
	movwf	((c:main@tens)),c
	line	115
;disp.c: 115: tens = set_pressure / 10;
	movff	(c:main@set_pressure),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	movwf	((c:main@tens)),c
	line	116
	
l869:
;disp.c: 116: tens = tens << 4;
	swapf	((c:main@tens)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:main@tens)),c
	line	117
	
l871:
;disp.c: 117: values[2] = tens;
	movff	(c:main@tens),0+((c:_values)+02h)	;volatile
	goto	l783
	line	118
	
l68:
	line	119
;disp.c: 118: }
;disp.c: 119: break;
	goto	l783
	line	121
;disp.c: 121: case 0xDF :
	
l69:
	line	122
;disp.c: 122: break;
	goto	l783
	line	124
;disp.c: 124: case 0x7F :
	
l70:
	line	125
;disp.c: 125: break;
	goto	l783
	line	127
;disp.c: 127: default :
	
l71:
	line	128
;disp.c: 128: break;
	goto	l783
	line	129
	
l873:
;disp.c: 129: }
	goto	l783
	line	52
	
l58:
	
l875:
	movf	((c:3971)),c,w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 7, Range of values is 127 to 254
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           22    12 (average)
;	Chosen strategy is simple_byte

	xorlw	127^0	; case 127
	skipnz
	goto	l783
	xorlw	223^127	; case 223
	skipnz
	goto	l783
	xorlw	239^223	; case 239
	skipnz
	goto	l855
	xorlw	247^239	; case 247
	skipnz
	goto	l783
	xorlw	251^247	; case 251
	skipnz
	goto	l837
	xorlw	253^251	; case 253
	skipnz
	goto	l819
	xorlw	254^253	; case 254
	skipnz
	goto	l801
	goto	l783

	line	129
	
l61:
	goto	l783
	line	130
	
l57:
	goto	l783
	line	131
	
l54:
	goto	l783
	line	132
	
l72:
	line	38
	goto	l783
	
l73:
	line	133
	
l74:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2   14[COMRAM] int 
;;  divisor         2   16[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   19[COMRAM] unsigned char 
;;  counter         1   18[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   14[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0, prodl
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	8
global __ptext1
__ptext1:
psect	text1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	8
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:
;incstack = 0
	opt	stack 29
	dw	0FFFFh
	line	13
	
l723:
	movlw	low(0)
	movwf	((c:___awmod@sign)),c
	line	14
	
l725:
	movf	((c:___awmod@dividend+1)),c,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	0
	btfsc	status,2
	subwf	((c:___awmod@dividend)),c,w
	btfsc	status,0
	goto	u101
	goto	u100
u101:
	goto	l731
u100:
	line	15
	
l727:
	negf	((c:___awmod@dividend)),c
	comf	((c:___awmod@dividend+1)),c
	btfsc	status,0
	incf	((c:___awmod@dividend+1)),c
	line	16
	
l729:
	movlw	low(01h)
	movwf	((c:___awmod@sign)),c
	goto	l731
	line	17
	
l290:
	line	18
	
l731:
	movf	((c:___awmod@divisor+1)),c,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	0
	btfsc	status,2
	subwf	((c:___awmod@divisor)),c,w
	btfsc	status,0
	goto	u111
	goto	u110
u111:
	goto	l735
u110:
	line	19
	
l733:
	negf	((c:___awmod@divisor)),c
	comf	((c:___awmod@divisor+1)),c
	btfsc	status,0
	incf	((c:___awmod@divisor+1)),c
	goto	l735
	
l291:
	line	20
	
l735:
	movf	((c:___awmod@divisor+1)),c,w
	iorwf ((c:___awmod@divisor)),c,w

	btfsc	status,2
	goto	u121
	goto	u120
u121:
	goto	l751
u120:
	line	21
	
l737:
	movlw	low(01h)
	movwf	((c:___awmod@counter)),c
	line	22
	goto	l741
	
l294:
	line	23
	
l739:
	bcf	status,0
	rlcf	((c:___awmod@divisor)),c
	rlcf	((c:___awmod@divisor+1)),c
	line	24
	incf	((c:___awmod@counter)),c
	goto	l741
	line	25
	
l293:
	line	22
	
l741:
	
	btfss	((c:___awmod@divisor+1)),c,(15)&7
	goto	u131
	goto	u130
u131:
	goto	l739
u130:
	goto	l743
	
l295:
	goto	l743
	line	26
	
l296:
	line	27
	
l743:
	movf	((c:___awmod@divisor)),c,w
	subwf	((c:___awmod@dividend)),c,w
	movf	((c:___awmod@divisor+1)),c,w
	subwfb	((c:___awmod@dividend+1)),c,w
	btfss	status,0
	goto	u141
	goto	u140
u141:
	goto	l747
u140:
	line	28
	
l745:
	movf	((c:___awmod@divisor)),c,w
	subwf	((c:___awmod@dividend)),c
	movf	((c:___awmod@divisor+1)),c,w
	subwfb	((c:___awmod@dividend+1)),c

	goto	l747
	
l297:
	line	29
	
l747:
	bcf	status,0
	rrcf	((c:___awmod@divisor+1)),c
	rrcf	((c:___awmod@divisor)),c
	line	30
	
l749:
	decfsz	((c:___awmod@counter)),c
	
	goto	l743
	goto	l751
	
l298:
	goto	l751
	line	31
	
l292:
	line	32
	
l751:
	movf	((c:___awmod@sign)),c,w
	btfsc	status,2
	goto	u151
	goto	u150
u151:
	goto	l755
u150:
	line	33
	
l753:
	negf	((c:___awmod@dividend)),c
	comf	((c:___awmod@dividend+1)),c
	btfsc	status,0
	incf	((c:___awmod@dividend+1)),c
	goto	l755
	
l299:
	line	34
	
l755:
	movff	(c:___awmod@dividend),(c:?___awmod)
	movff	(c:___awmod@dividend+1),(c:?___awmod+1)
	goto	l300
	
l757:
	line	35
	
l300:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        2   14[COMRAM] int 
;;  divisor         2   16[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   20[COMRAM] int 
;;  sign            1   19[COMRAM] unsigned char 
;;  counter         1   18[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   14[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0, prodl
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	8
global __ptext2
__ptext2:
psect	text2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	8
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:
;incstack = 0
	opt	stack 29
	dw	0FFFFh
	line	14
	
l679:
	movlw	low(0)
	movwf	((c:___awdiv@sign)),c
	line	15
	
l681:
	movf	((c:___awdiv@divisor+1)),c,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	0
	btfsc	status,2
	subwf	((c:___awdiv@divisor)),c,w
	btfsc	status,0
	goto	u41
	goto	u40
u41:
	goto	l687
u40:
	line	16
	
l683:
	negf	((c:___awdiv@divisor)),c
	comf	((c:___awdiv@divisor+1)),c
	btfsc	status,0
	incf	((c:___awdiv@divisor+1)),c
	line	17
	
l685:
	movlw	low(01h)
	movwf	((c:___awdiv@sign)),c
	goto	l687
	line	18
	
l277:
	line	19
	
l687:
	movf	((c:___awdiv@dividend+1)),c,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	0
	btfsc	status,2
	subwf	((c:___awdiv@dividend)),c,w
	btfsc	status,0
	goto	u51
	goto	u50
u51:
	goto	l693
u50:
	line	20
	
l689:
	negf	((c:___awdiv@dividend)),c
	comf	((c:___awdiv@dividend+1)),c
	btfsc	status,0
	incf	((c:___awdiv@dividend+1)),c
	line	21
	
l691:
	movlw	(01h)&0ffh
	xorwf	((c:___awdiv@sign)),c
	goto	l693
	line	22
	
l278:
	line	23
	
l693:
	movlw	high(0)
	movwf	((c:___awdiv@quotient+1)),c
	movlw	low(0)
	movwf	((c:___awdiv@quotient)),c
	line	24
	
l695:
	movf	((c:___awdiv@divisor+1)),c,w
	iorwf ((c:___awdiv@divisor)),c,w

	btfsc	status,2
	goto	u61
	goto	u60
u61:
	goto	l715
u60:
	line	25
	
l697:
	movlw	low(01h)
	movwf	((c:___awdiv@counter)),c
	line	26
	goto	l701
	
l281:
	line	27
	
l699:
	bcf	status,0
	rlcf	((c:___awdiv@divisor)),c
	rlcf	((c:___awdiv@divisor+1)),c
	line	28
	incf	((c:___awdiv@counter)),c
	goto	l701
	line	29
	
l280:
	line	26
	
l701:
	
	btfss	((c:___awdiv@divisor+1)),c,(15)&7
	goto	u71
	goto	u70
u71:
	goto	l699
u70:
	goto	l703
	
l282:
	goto	l703
	line	30
	
l283:
	line	31
	
l703:
	bcf	status,0
	rlcf	((c:___awdiv@quotient)),c
	rlcf	((c:___awdiv@quotient+1)),c
	line	32
	
l705:
	movf	((c:___awdiv@divisor)),c,w
	subwf	((c:___awdiv@dividend)),c,w
	movf	((c:___awdiv@divisor+1)),c,w
	subwfb	((c:___awdiv@dividend+1)),c,w
	btfss	status,0
	goto	u81
	goto	u80
u81:
	goto	l711
u80:
	line	33
	
l707:
	movf	((c:___awdiv@divisor)),c,w
	subwf	((c:___awdiv@dividend)),c
	movf	((c:___awdiv@divisor+1)),c,w
	subwfb	((c:___awdiv@dividend+1)),c

	line	34
	
l709:
	bsf	(0+(0/8)+(c:___awdiv@quotient)),c,(0)&7
	goto	l711
	line	35
	
l284:
	line	36
	
l711:
	bcf	status,0
	rrcf	((c:___awdiv@divisor+1)),c
	rrcf	((c:___awdiv@divisor)),c
	line	37
	
l713:
	decfsz	((c:___awdiv@counter)),c
	
	goto	l703
	goto	l715
	
l285:
	goto	l715
	line	38
	
l279:
	line	39
	
l715:
	movf	((c:___awdiv@sign)),c,w
	btfsc	status,2
	goto	u91
	goto	u90
u91:
	goto	l719
u90:
	line	40
	
l717:
	negf	((c:___awdiv@quotient)),c
	comf	((c:___awdiv@quotient+1)),c
	btfsc	status,0
	incf	((c:___awdiv@quotient+1)),c
	goto	l719
	
l286:
	line	41
	
l719:
	movff	(c:___awdiv@quotient),(c:?___awdiv)
	movff	(c:___awdiv@quotient+1),(c:?___awdiv+1)
	goto	l287
	
l721:
	line	42
	
l287:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_MY_DELAY

;; *************** function _MY_DELAY *****************
;; Defined at:
;;		line 157 in file "E:\Study Material\XC8 PROJECTS\CO2 Display\disp.c"
;; Parameters:    Size  Location     Type
;;  sec             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sec             1   14[COMRAM] unsigned char 
;;  Count           1   15[COMRAM] unsigned char 
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
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
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
	file	"E:\Study Material\XC8 PROJECTS\CO2 Display\disp.c"
	line	157
global __ptext3
__ptext3:
psect	text3
	file	"E:\Study Material\XC8 PROJECTS\CO2 Display\disp.c"
	line	157
	global	__size_of_MY_DELAY
	__size_of_MY_DELAY	equ	__end_of_MY_DELAY-_MY_DELAY
	
_MY_DELAY:
;incstack = 0
	opt	stack 29
	dw	0FFFFh
;MY_DELAY@sec stored from wreg
	movwf	((c:MY_DELAY@sec)),c
	line	159
	
l667:
;disp.c: 159: while(sec > 0)
	goto	l677
	
l83:
	line	161
	
l669:
;disp.c: 160: {
;disp.c: 161: char Count = 0;
	movlw	low(0)
	movwf	((c:MY_DELAY@Count)),c
	line	162
;disp.c: 162: T1CON = 0b00000001;
	movlw	low(01h)
	movwf	((c:4045)),c	;volatile
	line	163
;disp.c: 163: while(Count != 38)
	goto	l673
	
l85:
	line	165
;disp.c: 164: {
;disp.c: 165: while (!TMR1IF);
	goto	l86
	
l87:
	
l86:
	btfss	c:(31984/8),(31984)&7	;volatile
	goto	u11
	goto	u10
u11:
	goto	l86
u10:
	
l88:
	line	166
;disp.c: 166: TMR1IF = 0;
	bcf	c:(31984/8),(31984)&7	;volatile
	line	167
	
l671:
;disp.c: 167: Count ++;
	incf	((c:MY_DELAY@Count)),c
	goto	l673
	line	168
	
l84:
	line	163
	
l673:
	movf	((c:MY_DELAY@Count)),c,w
	xorlw	38

	btfss	status,2
	goto	u21
	goto	u20
u21:
	goto	l86
u20:
	goto	l675
	
l89:
	line	169
	
l675:
;disp.c: 168: }
;disp.c: 169: sec--;
	decf	((c:MY_DELAY@sec)),c
	goto	l677
	line	170
	
l82:
	line	159
	
l677:
	tstfsz	((c:MY_DELAY@sec)),c
	goto	u31
	goto	u30
u31:
	goto	l669
u30:
	goto	l91
	
l90:
	line	171
	
l91:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_MY_DELAY
	__end_of_MY_DELAY:
	signat	_MY_DELAY,4216
	global	_tmr_int

;; *************** function _tmr_int *****************
;; Defined at:
;;		line 136 in file "E:\Study Material\XC8 PROJECTS\CO2 Display\disp.c"
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
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:         14       0       0       0       0       0       0
;;      Totals:        14       0       0       0       0       0       0
;;Total ram usage:       14 bytes
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
	file	"E:\Study Material\XC8 PROJECTS\CO2 Display\disp.c"
	line	136
	global	__size_of_tmr_int
	__size_of_tmr_int	equ	__end_of_tmr_int-_tmr_int
	
_tmr_int:
;incstack = 0
	opt	stack 29
	dw	0FFFFh; errata NOP
	movff	pclat+0,??_tmr_int+0
	movff	pclat+1,??_tmr_int+1
	movff	fsr0l+0,??_tmr_int+2
	movff	fsr0h+0,??_tmr_int+3
	movff	fsr1l+0,??_tmr_int+4
	movff	fsr1h+0,??_tmr_int+5
	movff	fsr2l+0,??_tmr_int+6
	movff	fsr2h+0,??_tmr_int+7
	movff	prodl+0,??_tmr_int+8
	movff	prodh+0,??_tmr_int+9
	movff	tblptrl+0,??_tmr_int+10
	movff	tblptrh+0,??_tmr_int+11
	movff	tblptru+0,??_tmr_int+12
	movff	tablat+0,??_tmr_int+13
	line	138
	
i2l877:
;disp.c: 138: if(adr == 7)
	movf	((c:_adr)),c,w	;volatile
	xorlw	7

	btfss	status,2
	goto	i2u26_41
	goto	i2u26_40
i2u26_41:
	goto	i2l883
i2u26_40:
	line	140
	
i2l879:
;disp.c: 139: {
;disp.c: 140: RB0 = ~(RB0);
	btg	c:(31752/8),(31752)&7	;volatile
	line	141
	
i2l881:
;disp.c: 141: adr = 0;
	movlw	low(0)
	movwf	((c:_adr)),c	;volatile
	goto	i2l883
	line	142
	
i2l77:
	line	143
	
i2l883:
;disp.c: 142: }
;disp.c: 143: PORTE = adr;
	movff	(c:_adr),(c:3972)	;volatile
	line	144
	
i2l885:
;disp.c: 144: PORTB = PORTB & 0x0F;
	movf	((c:3969)),c,w	;volatile
	andlw	low(0Fh)
	movwf	((c:3969)),c	;volatile
	line	145
	
i2l887:
;disp.c: 145: PORTB = PORTB | values[count];
	movf	((c:_count)),c,w	;volatile
	mullw	01h
	movlw	low((c:_values))	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high((c:_values))	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	iorwf	((c:3969)),c,w	;volatile
	movwf	((c:3969)),c	;volatile
	line	146
	
i2l889:
;disp.c: 146: adr = adr + 1;
	incf	((c:_adr)),c,w	;volatile
	movwf	((c:_adr)),c	;volatile
	line	147
	
i2l891:
;disp.c: 147: count = count + 1;
	incf	((c:_count)),c,w	;volatile
	movwf	((c:_count)),c	;volatile
	line	148
	
i2l893:
;disp.c: 148: if(count == 14)
	movf	((c:_count)),c,w	;volatile
	xorlw	14

	btfss	status,2
	goto	i2u27_41
	goto	i2u27_40
i2u27_41:
	goto	i2l897
i2u27_40:
	line	150
	
i2l895:
;disp.c: 149: {
;disp.c: 150: count = 0;
	movlw	low(0)
	movwf	((c:_count)),c	;volatile
	goto	i2l897
	line	151
	
i2l78:
	line	152
	
i2l897:
;disp.c: 151: }
;disp.c: 152: T0IF = 0;
	bcf	c:(32658/8),(32658)&7	;volatile
	line	153
;disp.c: 153: TMR0 = 0;
	movlw	high(0)
	movwf	((c:4054+1)),c	;volatile
	movlw	low(0)
	movwf	((c:4054)),c	;volatile
	goto	i2l79
	line	154
	
i2l899:
	line	155
;disp.c: 154: return;
	
i2l79:
	movff	??_tmr_int+13,tablat+0
	movff	??_tmr_int+12,tblptru+0
	movff	??_tmr_int+11,tblptrh+0
	movff	??_tmr_int+10,tblptrl+0
	movff	??_tmr_int+9,prodh+0
	movff	??_tmr_int+8,prodl+0
	movff	??_tmr_int+7,fsr2h+0
	movff	??_tmr_int+6,fsr2l+0
	movff	??_tmr_int+5,fsr1h+0
	movff	??_tmr_int+4,fsr1l+0
	movff	??_tmr_int+3,fsr0h+0
	movff	??_tmr_int+2,fsr0l+0
	movff	??_tmr_int+1,pclat+1
	movff	??_tmr_int+0,pclat+0
	retfie f
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_tmr_int
	__end_of_tmr_int:
	signat	_tmr_int,88
	GLOBAL	__activetblptr
__activetblptr	EQU	2
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end

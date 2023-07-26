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
	FNCALL	_main,_Busy_eep
	FNCALL	_main,_Read_b_eep
	FNCALL	_main,_Write_b_eep
	FNCALL	_main,___awdiv
	FNCALL	_main,___awmod
	FNCALL	_main,___fttol
	FNCALL	_main,___lbtoft
	FNCALL	_main,___lwdiv
	FNCALL	_main,___lwtoft
	FNCALL	_main,_sqrt
	FNCALL	_sqrt,___ftge
	FNCALL	_sqrt,___ftmul
	FNCALL	_sqrt,___ftsub
	FNCALL	___ftsub,___ftadd
	FNCALL	___ftadd,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___lwtoft,___ftpack
	FNCALL	___lbtoft,___ftpack
	FNROOT	_main
	FNCALL	intlevel2,_tmr_int
	global	intlevel2
	FNROOT	intlevel2
	global	_R1
psect	idataCOMRAM,class=CODE,space=0,delta=1,noexec
global __pidataCOMRAM
__pidataCOMRAM:
	file	"E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
	line	17

;initializer for _R1
	db	low(011h)
	global	_values
	global	_cutpower
	global	_DATAI
	global	_RXBUF
	global	__txbuf
	global	_addrh
	global	_addrl
	global	_adr
	global	_bipomode
	global	_bipopower
	global	_cnt
	global	_coagmode
	global	_coagpower
	global	_count
	global	_cutmode
	global	_cutpowerh
	global	_cutpowerl
	global	_datao
	global	_debounce
	global	_dry_fl
	global	_hold
	global	_hundreds
	global	_i
	global	_j
	global	_progno
	global	_rdfl
	global	_rxbuf
	global	_step
	global	_temp
	global	_tens
	global	_train
	global	_txbuf
	global	_units
	global	_wrfl
	global	_errno
	global	_temp_a
	global	_wait
	global	_R2
	global	_TMR0
_TMR0	set	0xFD6
	global	_ADCON1
_ADCON1	set	0xFC1
	global	_EEADR
_EEADR	set	0xFA9
	global	_EECON1bits
_EECON1bits	set	0xFA6
	global	_EECON2
_EECON2	set	0xFA7
	global	_EEDATA
_EEDATA	set	0xFA8
	global	_INTCON
_INTCON	set	0xFF2
	global	_INTCONbits
_INTCONbits	set	0xFF2
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
	global	_GIE
_GIE	set	0x7F97
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
; #config settings
global __CFG_OSCS$OFF
__CFG_OSCS$OFF equ 0x0
global __CFG_OSC$HS
__CFG_OSC$HS equ 0x0
global __CFG_PWRT$OFF
__CFG_PWRT$OFF equ 0x0
global __CFG_BOR$OFF
__CFG_BOR$OFF equ 0x0
global __CFG_WDT$OFF
__CFG_WDT$OFF equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
	file	"Caut_Machine.as"
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
	global	_values
_values:
       ds      14
	global	_cutpower
_cutpower:
       ds      2
	global	_DATAI
_DATAI:
       ds      1
	global	_RXBUF
	global	_RXBUF
_RXBUF:
       ds      1
	global	__txbuf
	global	__txbuf
__txbuf:
       ds      1
	global	_addrh
_addrh:
       ds      1
	global	_addrl
_addrl:
       ds      1
	global	_adr
_adr:
       ds      1
	global	_bipomode
_bipomode:
       ds      1
	global	_bipopower
_bipopower:
       ds      1
	global	_cnt
_cnt:
       ds      1
	global	_coagmode
_coagmode:
       ds      1
	global	_coagpower
_coagpower:
       ds      1
	global	_count
_count:
       ds      1
	global	_cutmode
_cutmode:
       ds      1
	global	_cutpowerh
_cutpowerh:
       ds      1
	global	_cutpowerl
_cutpowerl:
       ds      1
	global	_datao
	global	_datao
_datao:
       ds      1
	global	_debounce
_debounce:
       ds      1
	global	_dry_fl
_dry_fl:
       ds      1
	global	_hold
_hold:
       ds      1
	global	_hundreds
_hundreds:
       ds      1
	global	_i
_i:
       ds      1
	global	_j
_j:
       ds      1
	global	_progno
_progno:
       ds      1
	global	_rdfl
_rdfl:
       ds      1
	global	_rxbuf
	global	_rxbuf
_rxbuf:
       ds      1
	global	_step
	global	_step
_step:
       ds      1
	global	_temp
_temp:
       ds      1
	global	_tens
_tens:
       ds      1
	global	_train
	global	_train
_train:
       ds      1
	global	_txbuf
	global	_txbuf
_txbuf:
       ds      1
	global	_units
_units:
       ds      1
	global	_wrfl
	global	_wrfl
_wrfl:
       ds      1
psect	dataCOMRAM,class=COMRAM,space=1,noexec
global __pdataCOMRAM
__pdataCOMRAM:
	file	"E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
	line	17
	global	_R1
_R1:
       ds      1
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
	global	_errno
_errno:
       ds      2
	global	_temp_a
	global	_temp_a
_temp_a:
       ds      2
	global	_wait
_wait:
       ds      2
	global	_R2
	global	_R2
_R2:
       ds      1
	file	"Caut_Machine.as"
	line	#
psect	cinit
; Clear objects allocated to BANK0 (7 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	7
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
; Clear objects allocated to COMRAM (48 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	48
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
	line	#
; Initialize objects allocated to COMRAM (1 bytes)
	global __pidataCOMRAM
	; load TBLPTR registers with __pidataCOMRAM
	movlw	low (__pidataCOMRAM)
	movwf	tblptrl
	movlw	high(__pidataCOMRAM)
	movwf	tblptrh
	movlw	low highword(__pidataCOMRAM)
	movwf	tblptru
	tblrd*+ ;fetch initializer
	movff	tablat, __pdataCOMRAM+0		
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:movlb 0
goto _main	;jump to C main() function
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??___fttol:	; 0 bytes @ 0x0
	ds   5
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x5
	ds   1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x6
	ds   4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0xA
	ds   1
??_main:	; 0 bytes @ 0xB
	ds   4
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_Busy_eep:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_tmr_int:	; 0 bytes @ 0x0
??_tmr_int:	; 0 bytes @ 0x0
	ds   14
?_Write_b_eep:	; 0 bytes @ 0xE
??_Busy_eep:	; 0 bytes @ 0xE
?___ftge:	; 1 bit 
?_Read_b_eep:	; 1 bytes @ 0xE
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0xE
	global	?___awmod
?___awmod:	; 2 bytes @ 0xE
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0xE
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0xE
	global	Read_b_eep@badd
Read_b_eep@badd:	; 2 bytes @ 0xE
	global	Write_b_eep@badd
Write_b_eep@badd:	; 2 bytes @ 0xE
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0xE
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0xE
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0xE
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0xE
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0xE
	ds   2
??_Read_b_eep:	; 0 bytes @ 0x10
	global	Write_b_eep@bdat
Write_b_eep@bdat:	; 1 bytes @ 0x10
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x10
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x10
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x10
	ds   1
??_Write_b_eep:	; 0 bytes @ 0x11
	global	Write_b_eep@GIE_BIT_VAL
Write_b_eep@GIE_BIT_VAL:	; 1 bytes @ 0x11
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x11
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x11
	ds   1
??___awdiv:	; 0 bytes @ 0x12
??___awmod:	; 0 bytes @ 0x12
??___lwdiv:	; 0 bytes @ 0x12
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x12
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x12
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x12
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x12
	ds   1
??___ftpack:	; 0 bytes @ 0x13
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x13
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x13
	ds   1
??___ftge:	; 0 bytes @ 0x14
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x14
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x14
	ds   2
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x16
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x16
	global	?___lbtoft
?___lbtoft:	; 3 bytes @ 0x16
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x16
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x16
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x16
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x16
	ds   3
??___lbtoft:	; 0 bytes @ 0x19
??___lwtoft:	; 0 bytes @ 0x19
	global	___lbtoft@c
___lbtoft@c:	; 1 bytes @ 0x19
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x19
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x19
	ds   3
??___ftadd:	; 0 bytes @ 0x1C
??___ftmul:	; 0 bytes @ 0x1C
	ds   3
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x1F
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x1F
	ds   1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x20
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x20
	ds   1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x21
	ds   1
	global	?___ftsub
?___ftsub:	; 3 bytes @ 0x22
	global	___ftsub@f1
___ftsub@f1:	; 3 bytes @ 0x22
	ds   1
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x23
	ds   1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x24
	ds   1
	global	___ftsub@f2
___ftsub@f2:	; 3 bytes @ 0x25
	ds   3
??___ftsub:	; 0 bytes @ 0x28
	global	?_sqrt
?_sqrt:	; 3 bytes @ 0x28
	global	sqrt@y
sqrt@y:	; 3 bytes @ 0x28
	ds   3
??_sqrt:	; 0 bytes @ 0x2B
	ds   3
	global	sqrt@og
sqrt@og:	; 3 bytes @ 0x2E
	ds   3
	global	sqrt@z
sqrt@z:	; 3 bytes @ 0x31
	ds   3
	global	sqrt@i
sqrt@i:	; 1 bytes @ 0x34
	ds   1
	global	sqrt@q
sqrt@q:	; 3 bytes @ 0x35
	ds   3
	global	sqrt@x
sqrt@x:	; 3 bytes @ 0x38
	ds   3
	global	?___fttol
?___fttol:	; 4 bytes @ 0x3B
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x3B
	ds   4
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        1
;!    BSS         55
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM          127     63     112
;!    BANK0           128     15      22
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
;!    _main->___fttol
;!    _sqrt->___ftsub
;!    ___ftsub->___ftadd
;!    ___ftadd->___ftpack
;!    ___ftmul->___ftpack
;!    ___lwtoft->___ftpack
;!    ___lbtoft->___ftpack
;!    ___fttol->_sqrt
;!
;!Critical Paths under _tmr_int in COMRAM
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->___fttol
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
;;Main: autosize = 0, tempsize = 4, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 4     4      0   13369
;!                                             11 BANK0      4     4      0
;!                           _Busy_eep
;!                         _Read_b_eep
;!                        _Write_b_eep
;!                            ___awdiv
;!                            ___awmod
;!                            ___fttol
;!                           ___lbtoft
;!                            ___lwdiv
;!                           ___lwtoft
;!                               _sqrt
;! ---------------------------------------------------------------------------------
;! (1) _sqrt                                                19    16      3    5482
;!                                             40 COMRAM    19    16      3
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftsub
;!                           ___lbtoft (ARG)
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftsub                                              6     0      6    2532
;!                                             34 COMRAM     6     0      6
;!                            ___ftadd
;! ---------------------------------------------------------------------------------
;! (3) ___ftadd                                             12     6      6    2341
;!                                             22 COMRAM    12     6      6
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (2) ___ftmul                                             15     9      6    2171
;!                                             22 COMRAM    15     9      6
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (2) ___ftge                                               9     3      6     222
;!                                             14 COMRAM     9     3      6
;! ---------------------------------------------------------------------------------
;! (1) ___lwtoft                                             3     0      3    1420
;!                                             22 COMRAM     3     0      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (1) ___lwdiv                                              7     3      4     420
;!                                             14 COMRAM     7     3      4
;! ---------------------------------------------------------------------------------
;! (1) ___lbtoft                                             4     1      3    1377
;!                                             22 COMRAM     4     1      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (4) ___ftpack                                             8     3      5    1355
;!                                             14 COMRAM     8     3      5
;! ---------------------------------------------------------------------------------
;! (1) ___fttol                                             15    11      4     587
;!                                             59 COMRAM     4     0      4
;!                                              0 BANK0     11    11      0
;!                           ___lbtoft (ARG)
;!                           ___lwtoft (ARG)
;!                               _sqrt (ARG)
;! ---------------------------------------------------------------------------------
;! (1) ___awmod                                              6     2      4    1242
;!                                             14 COMRAM     6     2      4
;! ---------------------------------------------------------------------------------
;! (1) ___awdiv                                              8     4      4    1504
;!                                             14 COMRAM     8     4      4
;! ---------------------------------------------------------------------------------
;! (1) _Write_b_eep                                          4     1      3    1014
;!                                             14 COMRAM     4     1      3
;! ---------------------------------------------------------------------------------
;! (1) _Read_b_eep                                           2     0      2     323
;!                                             14 COMRAM     2     0      2
;! ---------------------------------------------------------------------------------
;! (1) _Busy_eep                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _tmr_int                                             14    14      0       0
;!                                              0 COMRAM    14    14      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Busy_eep
;!   _Read_b_eep
;!   _Write_b_eep
;!   ___awdiv
;!   ___awmod
;!   ___fttol
;!     ___lbtoft (ARG)
;!       ___ftpack
;!     ___lwtoft (ARG)
;!       ___ftpack
;!     _sqrt (ARG)
;!       ___ftge
;!       ___ftmul
;!         ___ftpack
;!       ___ftsub
;!         ___ftadd
;!           ___ftpack
;!       ___lbtoft (ARG)
;!         ___ftpack
;!       ___lwtoft (ARG)
;!         ___ftpack
;!   ___lbtoft
;!     ___ftpack
;!   ___lwdiv
;!   ___lwtoft
;!     ___ftpack
;!   _sqrt
;!     ___ftge
;!     ___ftmul
;!       ___ftpack
;!     ___ftsub
;!       ___ftadd
;!         ___ftpack
;!     ___lbtoft (ARG)
;!       ___ftpack
;!     ___lwtoft (ARG)
;!       ___ftpack
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
;!BANK0               80      F      16       5       17.2%
;!BITCOMRAM           7F      0       0       0        0.0%
;!COMRAM              7F     3F      70       1       88.2%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      86      15        0.0%
;!DATA                 0      0      86       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 20 in file "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
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
;;      Temps:          0       4       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Busy_eep
;;		_Read_b_eep
;;		_Write_b_eep
;;		___awdiv
;;		___awmod
;;		___fttol
;;		___lbtoft
;;		___lwdiv
;;		___lwtoft
;;		_sqrt
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
	line	20
global __ptext0
__ptext0:
psect	text0
	file	"E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
	line	20
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 26
	dw	0FFFFh
	line	22
	
l4416:
;digi.c: 22: TRISA = 0xFF;
	setf	((c:3986)),c	;volatile
	line	23
	
l4418:
;digi.c: 23: TRISE = 0x00;
	movlw	low(0)
	movwf	((c:3990)),c	;volatile
	line	24
;digi.c: 24: TRISB = 0x00;
	movlw	low(0)
	movwf	((c:3987)),c	;volatile
	line	25
;digi.c: 25: TRISD = 0x1F;
	movlw	low(01Fh)
	movwf	((c:3989)),c	;volatile
	line	26
;digi.c: 26: TRISC = 0xF7;
	movlw	low(0F7h)
	movwf	((c:3988)),c	;volatile
	line	28
;digi.c: 28: ADCON1 = 0x07;
	movlw	low(07h)
	movwf	((c:4033)),c	;volatile
	line	29
;digi.c: 29: RCON = 0x9F;
	movlw	low(09Fh)
	movwf	((c:4048)),c	;volatile
	line	30
;digi.c: 30: INTCON = 0xA0;
	movlw	low(0A0h)
	movwf	((c:4082)),c	;volatile
	line	31
;digi.c: 31: T0CON = 0xC2;
	movlw	low(0C2h)
	movwf	((c:4053)),c	;volatile
	line	32
;digi.c: 32: TMR0 = 0x00;
	movlw	high(0)
	movwf	((c:4054+1)),c	;volatile
	movlw	low(0)
	movwf	((c:4054)),c	;volatile
	line	35
;digi.c: 35: cutmode = 0;
	movlw	low(0)
	movwf	((c:_cutmode)),c
	line	36
;digi.c: 36: coagmode = 0;
	movlw	low(0)
	movwf	((c:_coagmode)),c
	line	37
;digi.c: 37: bipomode = 0;
	movlw	low(0)
	movwf	((c:_bipomode)),c
	line	38
;digi.c: 38: values[5] = 0x20;
	movlw	low(020h)
	movwf	(0+((c:_values)+05h)),c	;volatile
	line	39
;digi.c: 39: values[4] = 0x10;
	movlw	low(010h)
	movwf	(0+((c:_values)+04h)),c	;volatile
	line	40
;digi.c: 40: values[11] = 0x20;
	movlw	low(020h)
	movwf	(0+((c:_values)+0Bh)),c	;volatile
	line	41
;digi.c: 41: values[7] = 0x20;
	movlw	low(020h)
	movwf	(0+((c:_values)+07h)),c	;volatile
	line	43
;digi.c: 43: values[8] = 0x80;
	movlw	low(080h)
	movwf	(0+((c:_values)+08h)),c	;volatile
	line	44
;digi.c: 44: values[3] = 0x30;
	movlw	low(030h)
	movwf	(0+((c:_values)+03h)),c	;volatile
	line	45
;digi.c: 45: values[2] = 0x20;
	movlw	low(020h)
	movwf	(0+((c:_values)+02h)),c	;volatile
	line	48
	
l4420:
;digi.c: 48: RB0 = 0;
	bcf	c:(31752/8),(31752)&7	;volatile
	line	49
	
l4422:
;digi.c: 49: RB1 = 0;
	bcf	c:(31753/8),(31753)&7	;volatile
	line	52
	
l4424:
;digi.c: 52: RB2 = 0;
	bcf	c:(31754/8),(31754)&7	;volatile
	line	53
	
l4426:
;digi.c: 53: RB3 = 0;
	bcf	c:(31755/8),(31755)&7	;volatile
	line	54
	
l4428:
;digi.c: 54: RB1 = 0;
	bcf	c:(31753/8),(31753)&7	;volatile
	line	55
	
l4430:
;digi.c: 55: RC7 = 0;
	bcf	c:(31767/8),(31767)&7	;volatile
	line	56
	
l4432:
;digi.c: 56: RD5 = 1;
	bsf	c:(31773/8),(31773)&7	;volatile
	goto	l4434
	line	57
;digi.c: 57: while (1)
	
l171:
	line	60
	
l4434:
;digi.c: 58: {
;digi.c: 60: RB1 = 0;
	bcf	c:(31753/8),(31753)&7	;volatile
	line	61
	
l4436:
;digi.c: 61: if(RA3 == 1)
	btfss	c:(31747/8),(31747)&7	;volatile
	goto	u5331
	goto	u5330
u5331:
	goto	l4440
u5330:
	line	63
	
l4438:
;digi.c: 62: {
;digi.c: 63: dry_fl = 0;
	movlw	low(0)
	movwf	((c:_dry_fl)),c
	line	64
;digi.c: 64: wait = 0;
	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_wait+1))&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_wait))&0ffh
	goto	l4440
	line	65
	
l172:; BSR set to: 0

	line	68
	
l4440:
;digi.c: 65: }
;digi.c: 68: if( rdfl == 1 )
	decf	((c:_rdfl)),c,w

	btfss	status,2
	goto	u5341
	goto	u5340
u5341:
	goto	l173
u5340:
	line	70
	
l4442:
;digi.c: 69: {
;digi.c: 70: addrh = progno * 8;
	movf	((c:_progno)),c,w
	mullw	08h
	movff	prodl,(c:_addrh)
	line	71
	
l4444:
;digi.c: 71: addrl = addrh + 1;
	incf	((c:_addrh)),c,w
	movwf	((c:_addrl)),c
	line	72
	
l4446:
;digi.c: 72: DATAI = Read_b_eep(addrl);
	movff	(c:_addrl),(c:Read_b_eep@badd)
	clrf	((c:Read_b_eep@badd+1)),c
	call	_Read_b_eep	;wreg free
	movwf	((c:_DATAI)),c
	line	73
	
l4448:
;digi.c: 73: _delay(1000);
	movlw	250
u7297:
decfsz	wreg,f
	goto	u7297

	line	74
	
l4450:
;digi.c: 74: cutpowerh = DATAI;
	movff	(c:_DATAI),(c:_cutpowerh)
	line	76
	
l4452:
;digi.c: 76: addrl = addrh + 2;
	movf	((c:_addrh)),c,w
	addlw	low(02h)
	movwf	((c:_addrl)),c
	line	77
	
l4454:
;digi.c: 77: DATAI = Read_b_eep(addrl);
	movff	(c:_addrl),(c:Read_b_eep@badd)
	clrf	((c:Read_b_eep@badd+1)),c
	call	_Read_b_eep	;wreg free
	movwf	((c:_DATAI)),c
	line	78
	
l4456:
;digi.c: 78: _delay(1000);
	movlw	250
u7307:
decfsz	wreg,f
	goto	u7307

	line	79
	
l4458:
;digi.c: 79: cutpowerl = DATAI;
	movff	(c:_DATAI),(c:_cutpowerl)
	line	81
	
l4460:
;digi.c: 81: addrl = addrh + 3;
	movf	((c:_addrh)),c,w
	addlw	low(03h)
	movwf	((c:_addrl)),c
	line	82
	
l4462:
;digi.c: 82: DATAI = Read_b_eep(addrl);
	movff	(c:_addrl),(c:Read_b_eep@badd)
	clrf	((c:Read_b_eep@badd+1)),c
	call	_Read_b_eep	;wreg free
	movwf	((c:_DATAI)),c
	line	83
	
l4464:
;digi.c: 83: _delay(1000);
	movlw	250
u7317:
decfsz	wreg,f
	goto	u7317

	line	84
	
l4466:
;digi.c: 84: cutmode = DATAI;
	movff	(c:_DATAI),(c:_cutmode)
	line	86
	
l4468:
;digi.c: 86: addrl = addrh + 4;
	movf	((c:_addrh)),c,w
	addlw	low(04h)
	movwf	((c:_addrl)),c
	line	87
	
l4470:
;digi.c: 87: DATAI = Read_b_eep(addrl);
	movff	(c:_addrl),(c:Read_b_eep@badd)
	clrf	((c:Read_b_eep@badd+1)),c
	call	_Read_b_eep	;wreg free
	movwf	((c:_DATAI)),c
	line	88
	
l4472:
;digi.c: 88: _delay(1000);
	movlw	250
u7327:
decfsz	wreg,f
	goto	u7327

	line	89
	
l4474:
;digi.c: 89: coagpower = DATAI;
	movff	(c:_DATAI),(c:_coagpower)
	line	91
	
l4476:
;digi.c: 91: addrl = addrh + 5;
	movf	((c:_addrh)),c,w
	addlw	low(05h)
	movwf	((c:_addrl)),c
	line	92
	
l4478:
;digi.c: 92: DATAI = Read_b_eep(addrl);
	movff	(c:_addrl),(c:Read_b_eep@badd)
	clrf	((c:Read_b_eep@badd+1)),c
	call	_Read_b_eep	;wreg free
	movwf	((c:_DATAI)),c
	line	93
	
l4480:
;digi.c: 93: _delay(1000);
	movlw	250
u7337:
decfsz	wreg,f
	goto	u7337

	line	94
	
l4482:
;digi.c: 94: coagmode = DATAI;
	movff	(c:_DATAI),(c:_coagmode)
	line	96
	
l4484:
;digi.c: 96: addrl = addrh + 6;
	movf	((c:_addrh)),c,w
	addlw	low(06h)
	movwf	((c:_addrl)),c
	line	97
	
l4486:
;digi.c: 97: DATAI = Read_b_eep(addrl);
	movff	(c:_addrl),(c:Read_b_eep@badd)
	clrf	((c:Read_b_eep@badd+1)),c
	call	_Read_b_eep	;wreg free
	movwf	((c:_DATAI)),c
	line	98
	
l4488:
;digi.c: 98: _delay(1000);
	movlw	250
u7347:
decfsz	wreg,f
	goto	u7347

	line	99
	
l4490:
;digi.c: 99: bipopower = DATAI;
	movff	(c:_DATAI),(c:_bipopower)
	line	101
	
l4492:
;digi.c: 101: addrl = addrh + 7;
	movf	((c:_addrh)),c,w
	addlw	low(07h)
	movwf	((c:_addrl)),c
	line	102
	
l4494:
;digi.c: 102: DATAI = Read_b_eep(addrl);
	movff	(c:_addrl),(c:Read_b_eep@badd)
	clrf	((c:Read_b_eep@badd+1)),c
	call	_Read_b_eep	;wreg free
	movwf	((c:_DATAI)),c
	line	103
	
l4496:
;digi.c: 103: _delay(1000);
	movlw	250
u7357:
decfsz	wreg,f
	goto	u7357

	line	104
	
l4498:
;digi.c: 104: bipomode = DATAI;
	movff	(c:_DATAI),(c:_bipomode)
	line	105
	
l4500:
;digi.c: 105: rdfl = 0;
	movlw	low(0)
	movwf	((c:_rdfl)),c
	line	109
	
l4502:
;digi.c: 109: if( bipomode == 0X03 )
	movf	((c:_bipomode)),c,w
	xorlw	3

	btfss	status,2
	goto	u5351
	goto	u5350
u5351:
	goto	l4506
u5350:
	line	111
	
l4504:
;digi.c: 110: {
;digi.c: 111: bipomode = 0x00;
	movlw	low(0)
	movwf	((c:_bipomode)),c
	goto	l4506
	line	112
	
l174:
	line	114
	
l4506:
;digi.c: 112: }
;digi.c: 114: if( bipomode == 0x00 )
	tstfsz	((c:_bipomode)),c
	goto	u5361
	goto	u5360
u5361:
	goto	l4510
u5360:
	line	116
	
l4508:
;digi.c: 115: {
;digi.c: 116: values[7] = 0x20;
	movlw	low(020h)
	movwf	(0+((c:_values)+07h)),c	;volatile
	goto	l4510
	line	117
	
l175:
	line	119
	
l4510:
;digi.c: 117: }
;digi.c: 119: if( bipomode == 0x01 )
	decf	((c:_bipomode)),c,w

	btfss	status,2
	goto	u5371
	goto	u5370
u5371:
	goto	l4514
u5370:
	line	121
	
l4512:
;digi.c: 120: {
;digi.c: 121: values[7] = 0x40;
	movlw	low(040h)
	movwf	(0+((c:_values)+07h)),c	;volatile
	goto	l4514
	line	122
	
l176:
	line	124
	
l4514:
;digi.c: 122: }
;digi.c: 124: if( bipomode == 0x02 )
	movf	((c:_bipomode)),c,w
	xorlw	2

	btfss	status,2
	goto	u5381
	goto	u5380
u5381:
	goto	l4518
u5380:
	line	126
	
l4516:
;digi.c: 125: {
;digi.c: 126: values[7] = 0x10;
	movlw	low(010h)
	movwf	(0+((c:_values)+07h)),c	;volatile
	goto	l4518
	line	127
	
l177:
	line	130
	
l4518:
;digi.c: 127: }
;digi.c: 130: if( coagmode == 0x03 )
	movf	((c:_coagmode)),c,w
	xorlw	3

	btfss	status,2
	goto	u5391
	goto	u5390
u5391:
	goto	l4522
u5390:
	line	132
	
l4520:
;digi.c: 131: {
;digi.c: 132: coagmode = 0x00;
	movlw	low(0)
	movwf	((c:_coagmode)),c
	goto	l4522
	line	133
	
l178:
	line	135
	
l4522:
;digi.c: 133: }
;digi.c: 135: if( coagmode == 0x00 )
	tstfsz	((c:_coagmode)),c
	goto	u5401
	goto	u5400
u5401:
	goto	l4526
u5400:
	line	137
	
l4524:
;digi.c: 136: {
;digi.c: 137: values[11] = 0x20;
	movlw	low(020h)
	movwf	(0+((c:_values)+0Bh)),c	;volatile
	goto	l4526
	line	138
	
l179:
	line	140
	
l4526:
;digi.c: 138: }
;digi.c: 140: if( coagmode == 0x01 )
	decf	((c:_coagmode)),c,w

	btfss	status,2
	goto	u5411
	goto	u5410
u5411:
	goto	l4530
u5410:
	line	142
	
l4528:
;digi.c: 141: {
;digi.c: 142: values[11] = 0x40;
	movlw	low(040h)
	movwf	(0+((c:_values)+0Bh)),c	;volatile
	goto	l4530
	line	143
	
l180:
	line	145
	
l4530:
;digi.c: 143: }
;digi.c: 145: if( coagmode == 0x02 )
	movf	((c:_coagmode)),c,w
	xorlw	2

	btfss	status,2
	goto	u5421
	goto	u5420
u5421:
	goto	l4534
u5420:
	line	147
	
l4532:
;digi.c: 146: {
;digi.c: 147: values[11] = 0x10;
	movlw	low(010h)
	movwf	(0+((c:_values)+0Bh)),c	;volatile
	goto	l4534
	line	148
	
l181:
	line	150
	
l4534:
;digi.c: 148: }
;digi.c: 150: if(cutmode == 0x04)
	movf	((c:_cutmode)),c,w
	xorlw	4

	btfss	status,2
	goto	u5431
	goto	u5430
u5431:
	goto	l4538
u5430:
	line	152
	
l4536:
;digi.c: 151: {
;digi.c: 152: cutmode = 0x00;
	movlw	low(0)
	movwf	((c:_cutmode)),c
	goto	l4538
	line	153
	
l182:
	line	156
	
l4538:
;digi.c: 153: }
;digi.c: 156: if( cutmode == 0x00 )
	tstfsz	((c:_cutmode)),c
	goto	u5441
	goto	u5440
u5441:
	goto	l4542
u5440:
	line	158
	
l4540:
;digi.c: 157: {
;digi.c: 158: values[5] = 0x20;
	movlw	low(020h)
	movwf	(0+((c:_values)+05h)),c	;volatile
	line	159
;digi.c: 159: values[4] = 0x10;
	movlw	low(010h)
	movwf	(0+((c:_values)+04h)),c	;volatile
	goto	l4542
	line	160
	
l183:
	line	162
	
l4542:
;digi.c: 160: }
;digi.c: 162: if( cutmode == 0x01 )
	decf	((c:_cutmode)),c,w

	btfss	status,2
	goto	u5451
	goto	u5450
u5451:
	goto	l4546
u5450:
	line	164
	
l4544:
;digi.c: 163: {
;digi.c: 164: values[5] = 0x40;
	movlw	low(040h)
	movwf	(0+((c:_values)+05h)),c	;volatile
	line	165
;digi.c: 165: values[4] = 0x10;
	movlw	low(010h)
	movwf	(0+((c:_values)+04h)),c	;volatile
	goto	l4546
	line	166
	
l184:
	line	168
	
l4546:
;digi.c: 166: }
;digi.c: 168: if( cutmode == 0x02 )
	movf	((c:_cutmode)),c,w
	xorlw	2

	btfss	status,2
	goto	u5461
	goto	u5460
u5461:
	goto	l4550
u5460:
	line	170
	
l4548:
;digi.c: 169: {
;digi.c: 170: values[4] = 0x20;
	movlw	low(020h)
	movwf	(0+((c:_values)+04h)),c	;volatile
	line	171
;digi.c: 171: values[5] = 0x10;
	movlw	low(010h)
	movwf	(0+((c:_values)+05h)),c	;volatile
	goto	l4550
	line	172
	
l185:
	line	174
	
l4550:
;digi.c: 172: }
;digi.c: 174: if( cutmode == 0x03 )
	movf	((c:_cutmode)),c,w
	xorlw	3

	btfss	status,2
	goto	u5471
	goto	u5470
u5471:
	goto	l186
u5470:
	line	176
	
l4552:
;digi.c: 175: {
;digi.c: 176: values[4] = 0x40;
	movlw	low(040h)
	movwf	(0+((c:_values)+04h)),c	;volatile
	line	177
;digi.c: 177: values[5] = 0x10;
	movlw	low(010h)
	movwf	(0+((c:_values)+05h)),c	;volatile
	line	178
	
l186:
	line	182
;digi.c: 178: }
;digi.c: 182: cutpower = cutpowerh << 8;
	movf	((c:_cutpowerh)),c,w
	movwf	((c:_cutpower+1)),c
	clrf	((c:_cutpower)),c
	line	183
	
l4554:
;digi.c: 183: cutpower = cutpower + cutpowerl;
	movf	((c:_cutpowerl)),c,w
	addwf	((c:_cutpower)),c,w
	
	movwf	((c:_cutpower)),c
	movlw	0
	addwfc	((c:_cutpower+1)),c,w
	movwf	1+((c:_cutpower)),c
	line	184
	
l4556:
;digi.c: 184: hundreds = cutpower / 100;
	movff	(c:_cutpower),(c:___lwdiv@dividend)
	movff	(c:_cutpower+1),(c:___lwdiv@dividend+1)
	movlw	high(064h)
	movwf	((c:___lwdiv@divisor+1)),c
	movlw	low(064h)
	movwf	((c:___lwdiv@divisor)),c
	call	___lwdiv	;wreg free
	movf	(0+?___lwdiv),c,w
	movwf	((c:_hundreds)),c
	line	185
	
l4558:
;digi.c: 185: temp = (cutpower - ( hundreds * 100 ));
	movf	((c:_hundreds)),c,w
	mullw	064h
	movf	(prodl),c,w
	sublw	0
	addwf	((c:_cutpower)),c,w
	movwf	((c:_temp)),c
	line	186
	
l4560:
;digi.c: 186: units = temp % 10;
	movff	(c:_temp),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	movwf	((c:_units)),c
	line	187
	
l4562:
;digi.c: 187: units = units << 4;
	swapf	((c:_units)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:_units)),c
	line	188
	
l4564:
;digi.c: 188: values[8] = units;
	movff	(c:_units),0+((c:_values)+08h)	;volatile
	line	189
	
l4566:
;digi.c: 189: tens = temp / 10;
	movff	(c:_temp),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	movwf	((c:_tens)),c
	line	190
	
l4568:
;digi.c: 190: tens = tens << 4;
	swapf	((c:_tens)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:_tens)),c
	line	191
	
l4570:
;digi.c: 191: values[3] = tens;
	movff	(c:_tens),0+((c:_values)+03h)	;volatile
	line	192
	
l4572:
;digi.c: 192: hundreds = hundreds << 4;
	swapf	((c:_hundreds)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:_hundreds)),c
	line	193
	
l4574:
;digi.c: 193: values[2] = hundreds;
	movff	(c:_hundreds),0+((c:_values)+02h)	;volatile
	line	196
	
l4576:
;digi.c: 196: hundreds = coagpower / 100;
	movff	(c:_coagpower),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(064h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(064h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	movwf	((c:_hundreds)),c
	line	197
	
l4578:
;digi.c: 197: temp = (coagpower - ( hundreds * 100 ));
	movf	((c:_hundreds)),c,w
	mullw	064h
	movf	(prodl),c,w
	sublw	0
	addwf	((c:_coagpower)),c,w
	movwf	((c:_temp)),c
	line	198
	
l4580:
;digi.c: 198: units = temp % 10;
	movff	(c:_temp),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	movwf	((c:_units)),c
	line	199
	
l4582:
;digi.c: 199: units = units << 4;
	swapf	((c:_units)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:_units)),c
	line	200
	
l4584:
;digi.c: 200: values[12] = units;
	movff	(c:_units),0+((c:_values)+0Ch)	;volatile
	line	201
	
l4586:
;digi.c: 201: tens = temp / 10;
	movff	(c:_temp),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	movwf	((c:_tens)),c
	line	202
	
l4588:
;digi.c: 202: tens = tens << 4;
	swapf	((c:_tens)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:_tens)),c
	line	203
	
l4590:
;digi.c: 203: values[10] = tens;
	movff	(c:_tens),0+((c:_values)+0Ah)	;volatile
	line	204
	
l4592:
;digi.c: 204: hundreds = hundreds << 4;
	swapf	((c:_hundreds)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:_hundreds)),c
	line	205
	
l4594:
;digi.c: 205: values[9] = hundreds;
	movff	(c:_hundreds),0+((c:_values)+09h)	;volatile
	line	208
	
l4596:
;digi.c: 208: tens = bipopower / 10;
	movff	(c:_bipopower),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	movwf	((c:_tens)),c
	line	209
	
l4598:
;digi.c: 209: tens = tens << 4;
	swapf	((c:_tens)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:_tens)),c
	line	210
	
l4600:
;digi.c: 210: values[13] = tens;
	movff	(c:_tens),0+((c:_values)+0Dh)	;volatile
	line	211
	
l4602:
;digi.c: 211: units = bipopower % 10;
	movff	(c:_bipopower),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	movwf	((c:_units)),c
	line	212
	
l4604:
;digi.c: 212: units = units << 4;
	swapf	((c:_units)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:_units)),c
	line	213
	
l4606:
;digi.c: 213: values[6] = units;
	movff	(c:_units),0+((c:_values)+06h)	;volatile
	line	214
;digi.c: 214: }
	goto	l4644
	line	215
	
l173:
	line	222
;digi.c: 215: else
;digi.c: 216: {
;digi.c: 222: temp = 0xFF;
	setf	((c:_temp)),c
	line	223
;digi.c: 223: RD5 = 0;
	bcf	c:(31773/8),(31773)&7	;volatile
	line	224
	
l4608:
;digi.c: 224: _delay(25);
	movlw	5
u7367:
	nop
decfsz	wreg,f
	goto	u7367

	line	225
	
l4610:
;digi.c: 225: for( j = 0;j <= 7;j ++ )
	movlw	low(0)
	movwf	((c:_j)),c
	
l4612:
	movlw	(08h-1)
	cpfsgt	((c:_j)),c
	goto	u5481
	goto	u5480
u5481:
	goto	l4616
u5480:
	goto	l4626
	
l4614:
	goto	l4626
	line	226
	
l188:
	line	227
	
l4616:
;digi.c: 226: {
;digi.c: 227: R1 = R1 << 1;
	movf	((c:_R1)),c,w
	addwf	((c:_R1)),c,w
	movwf	((c:_R1)),c
	line	228
	
l4618:
;digi.c: 228: if(CARRY == 1)
	btfss	c:(32448/8),(32448)&7	;volatile
	goto	u5491
	goto	u5490
u5491:
	goto	l190
u5490:
	line	230
	
l4620:
;digi.c: 229: {
;digi.c: 230: RD7 = 1;
	bsf	c:(31775/8),(31775)&7	;volatile
	line	231
;digi.c: 231: }
	goto	l191
	line	232
	
l190:
	line	234
;digi.c: 232: else
;digi.c: 233: {
;digi.c: 234: RD7 = 0;
	bcf	c:(31775/8),(31775)&7	;volatile
	line	235
	
l191:
	line	236
;digi.c: 235: }
;digi.c: 236: RD6 = 1;
	bsf	c:(31774/8),(31774)&7	;volatile
	line	237
;digi.c: 237: _delay(5);
	nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop

	line	238
;digi.c: 238: RD6 = 0;
	bcf	c:(31774/8),(31774)&7	;volatile
	line	239
;digi.c: 239: RD7 = 0;
	bcf	c:(31775/8),(31775)&7	;volatile
	line	225
	
l4622:
	incf	((c:_j)),c
	
l4624:
	movlw	(08h-1)
	cpfsgt	((c:_j)),c
	goto	u5501
	goto	u5500
u5501:
	goto	l4616
u5500:
	goto	l4626
	
l189:
	line	241
	
l4626:
;digi.c: 240: }
;digi.c: 241: for(i = 0;i <= 7;i ++ )
	movlw	low(0)
	movwf	((c:_i)),c
	
l4628:
	movlw	(08h-1)
	cpfsgt	((c:_i)),c
	goto	u5511
	goto	u5510
u5511:
	goto	l4632
u5510:
	goto	l193
	
l4630:
	goto	l193
	line	242
	
l192:
	line	243
	
l4632:
;digi.c: 242: {
;digi.c: 243: temp = temp << 1;
	movf	((c:_temp)),c,w
	addwf	((c:_temp)),c,w
	movwf	((c:_temp)),c
	line	244
	
l4634:
;digi.c: 244: if(CARRY == 1)
	btfss	c:(32448/8),(32448)&7	;volatile
	goto	u5521
	goto	u5520
u5521:
	goto	l194
u5520:
	line	246
	
l4636:
;digi.c: 245: {
;digi.c: 246: RD7 = 1;
	bsf	c:(31775/8),(31775)&7	;volatile
	line	247
;digi.c: 247: }
	goto	l195
	line	248
	
l194:
	line	250
;digi.c: 248: else
;digi.c: 249: {
;digi.c: 250: RD7 = 0;
	bcf	c:(31775/8),(31775)&7	;volatile
	line	251
	
l195:
	line	252
;digi.c: 251: }
;digi.c: 252: RD6 = 1;
	bsf	c:(31774/8),(31774)&7	;volatile
	line	253
;digi.c: 253: _delay(5);
	nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop

	line	254
;digi.c: 254: RD6 = 0;
	bcf	c:(31774/8),(31774)&7	;volatile
	line	255
;digi.c: 255: RD7 = 0;
	bcf	c:(31775/8),(31775)&7	;volatile
	line	241
	
l4638:
	incf	((c:_i)),c
	
l4640:
	movlw	(08h-1)
	cpfsgt	((c:_i)),c
	goto	u5531
	goto	u5530
u5531:
	goto	l4632
u5530:
	
l193:
	line	257
;digi.c: 256: }
;digi.c: 257: RD5 = 1;
	bsf	c:(31773/8),(31773)&7	;volatile
	line	258
	
l4642:
;digi.c: 258: R1 = 0x11;
	movlw	low(011h)
	movwf	((c:_R1)),c
	goto	l4644
	line	259
	
l187:
	line	263
	
l4644:
;digi.c: 259: }
;digi.c: 263: if(RA1 == 0)
	btfsc	c:(31745/8),(31745)&7	;volatile
	goto	u5541
	goto	u5540
u5541:
	goto	l196
u5540:
	line	265
	
l4646:
;digi.c: 264: {
;digi.c: 265: RB2 = 0;
	bcf	c:(31754/8),(31754)&7	;volatile
	line	266
	
l196:
	line	267
;digi.c: 266: }
;digi.c: 267: if(( RA2 || RA3 )== 0)
	btfsc	c:(31746/8),(31746)&7	;volatile
	goto	u5551
	goto	u5550
u5551:
	goto	l197
u5550:
	
l4648:
	btfsc	c:(31747/8),(31747)&7	;volatile
	goto	u5561
	goto	u5560
u5561:
	goto	l197
u5560:
	line	269
	
l4650:
;digi.c: 268: {
;digi.c: 269: RB3 = 0;
	bcf	c:(31755/8),(31755)&7	;volatile
	line	270
	
l197:
	line	273
;digi.c: 270: }
;digi.c: 273: if( RA0 == 0 )
	btfsc	c:(31744/8),(31744)&7	;volatile
	goto	u5571
	goto	u5570
u5571:
	goto	l198
u5570:
	line	275
	
l4652:
;digi.c: 274: {
;digi.c: 275: RB2 = 0;
	bcf	c:(31754/8),(31754)&7	;volatile
	line	276
	
l4654:
;digi.c: 276: _delay(100);
	movlw	25
u7377:
decfsz	wreg,f
	goto	u7377

	line	277
	
l4656:
;digi.c: 277: RB3 = 0;
	bcf	c:(31755/8),(31755)&7	;volatile
	line	278
;digi.c: 278: _delay(100);
	movlw	25
u7387:
decfsz	wreg,f
	goto	u7387

	line	280
	
l4658:
;digi.c: 280: if( RA4 == 0 )
	btfsc	c:(31748/8),(31748)&7	;volatile
	goto	u5581
	goto	u5580
u5581:
	goto	l4662
u5580:
	line	283
	
l4660:
;digi.c: 281: {
;digi.c: 283: _delay(10000);
	movlw	10
	movlb	0	; () banked
movwf	(??_main+0+0)&0ffh,f
	movlw	190
u7397:
	decfsz	wreg,f
	goto	u7397
	decfsz	(??_main+0+0)&0ffh,f
	goto	u7397
	nop2

	line	284
;digi.c: 284: }
	goto	l198
	line	285
	
l199:
	line	288
	
l4662:
;digi.c: 285: else
;digi.c: 286: {
;digi.c: 288: temp = sqrt(cutpower);
	movff	(c:_cutpower),(c:___lwtoft@c)
	movff	(c:_cutpower+1),(c:___lwtoft@c+1)
	call	___lwtoft	;wreg free
	movff	0+?___lwtoft,(c:sqrt@y)
	movff	1+?___lwtoft,(c:sqrt@y+1)
	movff	2+?___lwtoft,(c:sqrt@y+2)
	call	_sqrt	;wreg free
	movff	0+?_sqrt,(c:___fttol@f1)
	movff	1+?_sqrt,(c:___fttol@f1+1)
	movff	2+?_sqrt,(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,??_main+0+0
	movff	1+?___fttol,??_main+0+0+1
	movff	2+?___fttol,??_main+0+0+2
	movff	3+?___fttol,??_main+0+0+3
	
	movlb	0	; () banked
	movf	(??_main+0+0)&0ffh,w
	movwf	((c:_temp)),c
	line	289
	
l4664:; BSR set to: 0

;digi.c: 289: temp = temp * 4;
	movf	((c:_temp)),c,w
	mullw	04h
	movff	prodl,(c:_temp)
	line	290
	
l4666:; BSR set to: 0

;digi.c: 290: temp = ~temp;
	comf	((c:_temp)),c
	line	297
	
l4668:; BSR set to: 0

;digi.c: 297: RD5 = 0;
	bcf	c:(31773/8),(31773)&7	;volatile
	line	298
	
l4670:; BSR set to: 0

;digi.c: 298: _delay(25);
	movlw	5
u7407:
	nop
decfsz	wreg,f
	goto	u7407

	line	299
	
l4672:
;digi.c: 299: for( j = 0;j <= 7;j ++ )
	movlw	low(0)
	movwf	((c:_j)),c
	
l4674:
	movlw	(08h-1)
	cpfsgt	((c:_j)),c
	goto	u5591
	goto	u5590
u5591:
	goto	l4678
u5590:
	goto	l4688
	
l4676:
	goto	l4688
	line	300
	
l201:
	line	301
	
l4678:
;digi.c: 300: {
;digi.c: 301: R1 = R1 << 1;
	movf	((c:_R1)),c,w
	addwf	((c:_R1)),c,w
	movwf	((c:_R1)),c
	line	302
	
l4680:
;digi.c: 302: if(CARRY == 1)
	btfss	c:(32448/8),(32448)&7	;volatile
	goto	u5601
	goto	u5600
u5601:
	goto	l203
u5600:
	line	304
	
l4682:
;digi.c: 303: {
;digi.c: 304: RD7 = 1;
	bsf	c:(31775/8),(31775)&7	;volatile
	line	305
;digi.c: 305: }
	goto	l204
	line	306
	
l203:
	line	308
;digi.c: 306: else
;digi.c: 307: {
;digi.c: 308: RD7 = 0;
	bcf	c:(31775/8),(31775)&7	;volatile
	line	309
	
l204:
	line	310
;digi.c: 309: }
;digi.c: 310: RD6 = 1;
	bsf	c:(31774/8),(31774)&7	;volatile
	line	311
;digi.c: 311: _delay(5);
	nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop

	line	312
;digi.c: 312: RD6 = 0;
	bcf	c:(31774/8),(31774)&7	;volatile
	line	313
;digi.c: 313: RD7 = 0;
	bcf	c:(31775/8),(31775)&7	;volatile
	line	299
	
l4684:
	incf	((c:_j)),c
	
l4686:
	movlw	(08h-1)
	cpfsgt	((c:_j)),c
	goto	u5611
	goto	u5610
u5611:
	goto	l4678
u5610:
	goto	l4688
	
l202:
	line	315
	
l4688:
;digi.c: 314: }
;digi.c: 315: for(i = 0;i <= 7;i ++ )
	movlw	low(0)
	movwf	((c:_i)),c
	
l4690:
	movlw	(08h-1)
	cpfsgt	((c:_i)),c
	goto	u5621
	goto	u5620
u5621:
	goto	l4694
u5620:
	goto	l206
	
l4692:
	goto	l206
	line	316
	
l205:
	line	317
	
l4694:
;digi.c: 316: {
;digi.c: 317: temp = temp << 1;
	movf	((c:_temp)),c,w
	addwf	((c:_temp)),c,w
	movwf	((c:_temp)),c
	line	318
	
l4696:
;digi.c: 318: if(CARRY == 1)
	btfss	c:(32448/8),(32448)&7	;volatile
	goto	u5631
	goto	u5630
u5631:
	goto	l207
u5630:
	line	320
	
l4698:
;digi.c: 319: {
;digi.c: 320: RD7 = 1;
	bsf	c:(31775/8),(31775)&7	;volatile
	line	321
;digi.c: 321: }
	goto	l208
	line	322
	
l207:
	line	324
;digi.c: 322: else
;digi.c: 323: {
;digi.c: 324: RD7 = 0;
	bcf	c:(31775/8),(31775)&7	;volatile
	line	325
	
l208:
	line	326
;digi.c: 325: }
;digi.c: 326: RD6 = 1;
	bsf	c:(31774/8),(31774)&7	;volatile
	line	327
;digi.c: 327: _delay(5);
	nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop

	line	328
;digi.c: 328: RD6 = 0;
	bcf	c:(31774/8),(31774)&7	;volatile
	line	329
;digi.c: 329: RD7 = 0;
	bcf	c:(31775/8),(31775)&7	;volatile
	line	315
	
l4700:
	incf	((c:_i)),c
	
l4702:
	movlw	(08h-1)
	cpfsgt	((c:_i)),c
	goto	u5641
	goto	u5640
u5641:
	goto	l4694
u5640:
	
l206:
	line	331
;digi.c: 330: }
;digi.c: 331: RD5 = 1;
	bsf	c:(31773/8),(31773)&7	;volatile
	line	332
	
l4704:
;digi.c: 332: R1 = 0x11;
	movlw	low(011h)
	movwf	((c:_R1)),c
	line	338
;digi.c: 338: while(RA0 == 0)
	goto	l4720
	
l210:
	line	341
# 341 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
movlw 0x0A ;# 
	line	342
# 342 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
MOVWF _train ;# 
	line	343
# 343 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
loop: ;# 
	line	344
# 344 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
BSF PORTB,1 ;# 
	line	345
# 345 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	346
# 346 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	347
# 347 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	348
# 348 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	349
# 349 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	350
# 350 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	351
# 351 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	352
# 352 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	353
# 353 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	354
# 354 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
BCF PORTB,1 ;# 
	line	355
# 355 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	356
# 356 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	357
# 357 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	358
# 358 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	359
# 359 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	360
# 360 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	361
# 361 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
decfsz _train,f ;# 
	line	362
# 362 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
goto loop ;# 
psect	text0
	line	366
;digi.c: 366: if( cutmode == 0 )
	tstfsz	((c:_cutmode)),c
	goto	u5651
	goto	u5650
u5651:
	goto	l4708
u5650:
	line	368
	
l4706:
;digi.c: 367: {
;digi.c: 368: _delay(5);
	nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop

	goto	l4708
	line	369
	
l211:
	line	371
	
l4708:
;digi.c: 369: }
;digi.c: 371: if( cutmode == 1 )
	decf	((c:_cutmode)),c,w

	btfss	status,2
	goto	u5661
	goto	u5660
u5661:
	goto	l4712
u5660:
	line	373
	
l4710:
;digi.c: 372: {
;digi.c: 373: _delay(40);
	movlw	10
u7417:
decfsz	wreg,f
	goto	u7417

	goto	l4712
	line	374
	
l212:
	line	376
	
l4712:
;digi.c: 374: }
;digi.c: 376: if( cutmode == 2 )
	movf	((c:_cutmode)),c,w
	xorlw	2

	btfss	status,2
	goto	u5671
	goto	u5670
u5671:
	goto	l4716
u5670:
	line	378
	
l4714:
;digi.c: 377: {
;digi.c: 378: _delay(60);
	movlw	15
u7427:
decfsz	wreg,f
	goto	u7427

	goto	l4716
	line	379
	
l213:
	line	381
	
l4716:
;digi.c: 379: }
;digi.c: 381: if( cutmode == 3 )
	movf	((c:_cutmode)),c,w
	xorlw	3

	btfss	status,2
	goto	u5681
	goto	u5680
u5681:
	goto	l4720
u5680:
	line	383
	
l4718:
;digi.c: 382: {
;digi.c: 383: _delay(100);
	movlw	25
u7437:
decfsz	wreg,f
	goto	u7437

	goto	l4720
	line	384
	
l214:
	goto	l4720
	line	385
	
l209:
	line	338
	
l4720:
	btfss	c:(31744/8),(31744)&7	;volatile
	goto	u5691
	goto	u5690
u5691:
	goto	l210
u5690:
	goto	l198
	
l215:
	goto	l198
	line	386
	
l200:
	line	387
	
l198:
	line	390
;digi.c: 384: }
;digi.c: 385: }
;digi.c: 386: }
;digi.c: 387: }
;digi.c: 390: if(RA1 == 0)
	btfsc	c:(31745/8),(31745)&7	;volatile
	goto	u5701
	goto	u5700
u5701:
	goto	l216
u5700:
	line	392
	
l4722:
;digi.c: 391: {
;digi.c: 392: if(RA4 == 0)
	btfsc	c:(31748/8),(31748)&7	;volatile
	goto	u5711
	goto	u5710
u5711:
	goto	l217
u5710:
	line	394
	
l4724:
;digi.c: 393: {
;digi.c: 394: _delay(10000);
	movlw	10
	movlb	0	; () banked
movwf	(??_main+0+0)&0ffh,f
	movlw	190
u7447:
	decfsz	wreg,f
	goto	u7447
	decfsz	(??_main+0+0)&0ffh,f
	goto	u7447
	nop2

	line	395
;digi.c: 395: }
	goto	l216
	line	396
	
l217:
	line	399
;digi.c: 396: else
;digi.c: 397: {
;digi.c: 399: RB3 = 1;
	bsf	c:(31755/8),(31755)&7	;volatile
	line	400
	
l4726:
;digi.c: 400: _delay(25);
	movlw	5
u7457:
	nop
decfsz	wreg,f
	goto	u7457

	line	401
	
l4728:
;digi.c: 401: temp = sqrt(coagpower);
	movf	((c:_coagpower)),c,w
	
	call	___lbtoft
	movff	0+?___lbtoft,(c:sqrt@y)
	movff	1+?___lbtoft,(c:sqrt@y+1)
	movff	2+?___lbtoft,(c:sqrt@y+2)
	call	_sqrt	;wreg free
	movff	0+?_sqrt,(c:___fttol@f1)
	movff	1+?_sqrt,(c:___fttol@f1+1)
	movff	2+?_sqrt,(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,??_main+0+0
	movff	1+?___fttol,??_main+0+0+1
	movff	2+?___fttol,??_main+0+0+2
	movff	3+?___fttol,??_main+0+0+3
	
	movlb	0	; () banked
	movf	(??_main+0+0)&0ffh,w
	movwf	((c:_temp)),c
	line	402
	
l4730:; BSR set to: 0

;digi.c: 402: temp = temp * 10;
	movf	((c:_temp)),c,w
	mullw	0Ah
	movff	prodl,(c:_temp)
	line	403
	
l4732:; BSR set to: 0

;digi.c: 403: temp = ~temp;
	comf	((c:_temp)),c
	line	410
	
l4734:; BSR set to: 0

;digi.c: 410: RD5 = 0;
	bcf	c:(31773/8),(31773)&7	;volatile
	line	411
	
l4736:; BSR set to: 0

;digi.c: 411: _delay(25);
	movlw	5
u7467:
	nop
decfsz	wreg,f
	goto	u7467

	line	412
	
l4738:
;digi.c: 412: R1 = 0x11;
	movlw	low(011h)
	movwf	((c:_R1)),c
	line	413
	
l4740:
;digi.c: 413: for( j = 0; j <= 7; j ++ )
	movlw	low(0)
	movwf	((c:_j)),c
	
l4742:
	movlw	(08h-1)
	cpfsgt	((c:_j)),c
	goto	u5721
	goto	u5720
u5721:
	goto	l4746
u5720:
	goto	l4756
	
l4744:
	goto	l4756
	line	414
	
l219:
	line	415
	
l4746:
;digi.c: 414: {
;digi.c: 415: R1 = R1 << 1;
	movf	((c:_R1)),c,w
	addwf	((c:_R1)),c,w
	movwf	((c:_R1)),c
	line	416
	
l4748:
;digi.c: 416: if(CARRY == 1)
	btfss	c:(32448/8),(32448)&7	;volatile
	goto	u5731
	goto	u5730
u5731:
	goto	l221
u5730:
	line	418
	
l4750:
;digi.c: 417: {
;digi.c: 418: RD7 = 1;
	bsf	c:(31775/8),(31775)&7	;volatile
	line	419
;digi.c: 419: }
	goto	l222
	line	420
	
l221:
	line	422
;digi.c: 420: else
;digi.c: 421: {
;digi.c: 422: RD7 = 0;
	bcf	c:(31775/8),(31775)&7	;volatile
	line	423
	
l222:
	line	424
;digi.c: 423: }
;digi.c: 424: RD6 = 1;
	bsf	c:(31774/8),(31774)&7	;volatile
	line	425
;digi.c: 425: _delay(5);
	nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop

	line	426
;digi.c: 426: RD6 = 0;
	bcf	c:(31774/8),(31774)&7	;volatile
	line	427
;digi.c: 427: RD7 = 0;
	bcf	c:(31775/8),(31775)&7	;volatile
	line	413
	
l4752:
	incf	((c:_j)),c
	
l4754:
	movlw	(08h-1)
	cpfsgt	((c:_j)),c
	goto	u5741
	goto	u5740
u5741:
	goto	l4746
u5740:
	goto	l4756
	
l220:
	line	429
	
l4756:
;digi.c: 428: }
;digi.c: 429: for( i = 0; i <= 7; i ++ )
	movlw	low(0)
	movwf	((c:_i)),c
	
l4758:
	movlw	(08h-1)
	cpfsgt	((c:_i)),c
	goto	u5751
	goto	u5750
u5751:
	goto	l4762
u5750:
	goto	l224
	
l4760:
	goto	l224
	line	430
	
l223:
	line	431
	
l4762:
;digi.c: 430: {
;digi.c: 431: temp = temp << 1;
	movf	((c:_temp)),c,w
	addwf	((c:_temp)),c,w
	movwf	((c:_temp)),c
	line	432
	
l4764:
;digi.c: 432: if(CARRY == 1)
	btfss	c:(32448/8),(32448)&7	;volatile
	goto	u5761
	goto	u5760
u5761:
	goto	l225
u5760:
	line	434
	
l4766:
;digi.c: 433: {
;digi.c: 434: RD7 = 1;
	bsf	c:(31775/8),(31775)&7	;volatile
	line	435
;digi.c: 435: }
	goto	l226
	line	436
	
l225:
	line	438
;digi.c: 436: else
;digi.c: 437: {
;digi.c: 438: RD7 = 0;
	bcf	c:(31775/8),(31775)&7	;volatile
	line	439
	
l226:
	line	440
;digi.c: 439: }
;digi.c: 440: RD6 = 1;
	bsf	c:(31774/8),(31774)&7	;volatile
	line	441
;digi.c: 441: _delay(5);
	nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop

	line	442
;digi.c: 442: RD6 = 0;
	bcf	c:(31774/8),(31774)&7	;volatile
	line	443
;digi.c: 443: RD7 = 0;
	bcf	c:(31775/8),(31775)&7	;volatile
	line	429
	
l4768:
	incf	((c:_i)),c
	
l4770:
	movlw	(08h-1)
	cpfsgt	((c:_i)),c
	goto	u5771
	goto	u5770
u5771:
	goto	l4762
u5770:
	
l224:
	line	445
;digi.c: 444: }
;digi.c: 445: RD5 = 1;
	bsf	c:(31773/8),(31773)&7	;volatile
	line	446
	
l4772:
;digi.c: 446: R1 = 0x11;
	movlw	low(011h)
	movwf	((c:_R1)),c
	line	452
;digi.c: 452: while(RA1 == 0)
	goto	l4790
	
l228:
	line	454
;digi.c: 453: {
;digi.c: 454: if(coagmode == 0)
	tstfsz	((c:_coagmode)),c
	goto	u5781
	goto	u5780
u5781:
	goto	l4778
u5780:
	line	457
	
l4774:
# 457 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
movlw 0x01 ;# 
	line	458
# 458 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
MOVWF _train ;# 
	line	459
# 459 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
loop_1: ;# 
	line	460
# 460 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
BSF PORTB,1 ;# 
	line	461
# 461 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	462
# 462 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	463
# 463 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	464
# 464 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	465
# 465 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	466
# 466 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	467
# 467 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	468
# 468 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	469
# 469 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	470
# 470 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
BCF PORTB,1 ;# 
	line	471
# 471 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	472
# 472 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	473
# 473 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	474
# 474 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	475
# 475 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	476
# 476 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	477
# 477 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
decfsz _train,f ;# 
	line	478
# 478 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
goto loop_1 ;# 
psect	text0
	line	480
	
l4776:
;digi.c: 480: _delay(50);
	movlw	10
u7477:
	nop
decfsz	wreg,f
	goto	u7477

	goto	l4778
	line	481
	
l229:
	line	483
	
l4778:
;digi.c: 481: }
;digi.c: 483: if( coagmode == 1 )
	decf	((c:_coagmode)),c,w

	btfss	status,2
	goto	u5791
	goto	u5790
u5791:
	goto	l4784
u5790:
	line	486
	
l4780:
# 486 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
movlw 0x03 ;# 
	line	487
# 487 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
MOVWF _train ;# 
	line	488
# 488 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
loop_2: ;# 
	line	489
# 489 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
BSF PORTB,1 ;# 
	line	490
# 490 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	491
# 491 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	492
# 492 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	493
# 493 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	494
# 494 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	495
# 495 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	496
# 496 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	497
# 497 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	498
# 498 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	499
# 499 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
BCF PORTB,1 ;# 
	line	500
# 500 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	501
# 501 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	502
# 502 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	503
# 503 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	504
# 504 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	505
# 505 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	506
# 506 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
decfsz _train,f ;# 
	line	507
# 507 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
goto loop_2 ;# 
psect	text0
	line	509
	
l4782:
;digi.c: 509: _delay(50);
	movlw	10
u7487:
	nop
decfsz	wreg,f
	goto	u7487

	goto	l4784
	line	510
	
l230:
	line	512
	
l4784:
;digi.c: 510: }
;digi.c: 512: if( coagmode == 2 )
	movf	((c:_coagmode)),c,w
	xorlw	2

	btfss	status,2
	goto	u5801
	goto	u5800
u5801:
	goto	l4790
u5800:
	line	515
	
l4786:
# 515 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
movlw 0x03 ;# 
	line	516
# 516 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
MOVWF _train ;# 
	line	517
# 517 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
loop_3: ;# 
	line	518
# 518 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
BSF PORTB,1 ;# 
	line	519
# 519 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	520
# 520 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	521
# 521 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	522
# 522 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	523
# 523 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	524
# 524 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	525
# 525 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	526
# 526 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	527
# 527 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	528
# 528 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
BCF PORTB,1 ;# 
	line	529
# 529 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	530
# 530 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	531
# 531 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	532
# 532 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	533
# 533 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	534
# 534 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	535
# 535 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
decfsz _train,f ;# 
	line	536
# 536 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
goto loop_3 ;# 
psect	text0
	line	538
	
l4788:
;digi.c: 538: _delay(50);
	movlw	10
u7497:
	nop
decfsz	wreg,f
	goto	u7497

	goto	l4790
	line	539
	
l231:
	goto	l4790
	line	540
	
l227:
	line	452
	
l4790:
	btfss	c:(31745/8),(31745)&7	;volatile
	goto	u5811
	goto	u5810
u5811:
	goto	l228
u5810:
	goto	l216
	
l232:
	goto	l216
	line	541
	
l218:
	line	542
	
l216:
	line	545
;digi.c: 539: }
;digi.c: 540: }
;digi.c: 541: }
;digi.c: 542: }
;digi.c: 545: if(RA2 == 0 )
	btfsc	c:(31746/8),(31746)&7	;volatile
	goto	u5821
	goto	u5820
u5821:
	goto	l233
u5820:
	line	547
	
l4792:
;digi.c: 546: {
;digi.c: 547: if(bipomode == 2)
	movf	((c:_bipomode)),c,w
	xorlw	2

	btfss	status,2
	goto	u5831
	goto	u5830
u5831:
	goto	l234
u5830:
	line	549
	
l4794:
;digi.c: 548: {
;digi.c: 549: bipomode = 0;
	movlw	low(0)
	movwf	((c:_bipomode)),c
	line	550
;digi.c: 550: }
	goto	l233
	line	551
	
l234:
	line	554
;digi.c: 551: else
;digi.c: 552: {
;digi.c: 554: RB2 = 1;
	bsf	c:(31754/8),(31754)&7	;volatile
	line	555
	
l4796:
;digi.c: 555: _delay(25);
	movlw	5
u7507:
	nop
decfsz	wreg,f
	goto	u7507

	line	557
	
l4798:
;digi.c: 557: temp = sqrt(bipopower);
	movf	((c:_bipopower)),c,w
	
	call	___lbtoft
	movff	0+?___lbtoft,(c:sqrt@y)
	movff	1+?___lbtoft,(c:sqrt@y+1)
	movff	2+?___lbtoft,(c:sqrt@y+2)
	call	_sqrt	;wreg free
	movff	0+?_sqrt,(c:___fttol@f1)
	movff	1+?_sqrt,(c:___fttol@f1+1)
	movff	2+?_sqrt,(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,??_main+0+0
	movff	1+?___fttol,??_main+0+0+1
	movff	2+?___fttol,??_main+0+0+2
	movff	3+?___fttol,??_main+0+0+3
	
	movlb	0	; () banked
	movf	(??_main+0+0)&0ffh,w
	movwf	((c:_temp)),c
	line	558
	
l4800:; BSR set to: 0

;digi.c: 558: temp = temp * 10;
	movf	((c:_temp)),c,w
	mullw	0Ah
	movff	prodl,(c:_temp)
	line	559
	
l4802:; BSR set to: 0

;digi.c: 559: temp = ~temp;
	comf	((c:_temp)),c
	line	566
	
l4804:; BSR set to: 0

;digi.c: 566: RD5 = 0;
	bcf	c:(31773/8),(31773)&7	;volatile
	line	567
	
l4806:; BSR set to: 0

;digi.c: 567: _delay(25);
	movlw	5
u7517:
	nop
decfsz	wreg,f
	goto	u7517

	line	568
	
l4808:
;digi.c: 568: R1 = 0x11;
	movlw	low(011h)
	movwf	((c:_R1)),c
	line	569
	
l4810:
;digi.c: 569: for( j = 0;j <= 7;j ++ )
	movlw	low(0)
	movwf	((c:_j)),c
	
l4812:
	movlw	(08h-1)
	cpfsgt	((c:_j)),c
	goto	u5841
	goto	u5840
u5841:
	goto	l4816
u5840:
	goto	l4826
	
l4814:
	goto	l4826
	line	570
	
l236:
	line	571
	
l4816:
;digi.c: 570: {
;digi.c: 571: R1 = R1 << 1;
	movf	((c:_R1)),c,w
	addwf	((c:_R1)),c,w
	movwf	((c:_R1)),c
	line	572
	
l4818:
;digi.c: 572: if(CARRY == 1)
	btfss	c:(32448/8),(32448)&7	;volatile
	goto	u5851
	goto	u5850
u5851:
	goto	l238
u5850:
	line	574
	
l4820:
;digi.c: 573: {
;digi.c: 574: RD7 = 1;
	bsf	c:(31775/8),(31775)&7	;volatile
	line	575
;digi.c: 575: }
	goto	l239
	line	576
	
l238:
	line	578
;digi.c: 576: else
;digi.c: 577: {
;digi.c: 578: RD7 = 0;
	bcf	c:(31775/8),(31775)&7	;volatile
	line	579
	
l239:
	line	580
;digi.c: 579: }
;digi.c: 580: RD6 = 1;
	bsf	c:(31774/8),(31774)&7	;volatile
	line	581
;digi.c: 581: _delay(5);
	nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop

	line	582
;digi.c: 582: RD6 = 0;
	bcf	c:(31774/8),(31774)&7	;volatile
	line	583
;digi.c: 583: RD7 = 0;
	bcf	c:(31775/8),(31775)&7	;volatile
	line	569
	
l4822:
	incf	((c:_j)),c
	
l4824:
	movlw	(08h-1)
	cpfsgt	((c:_j)),c
	goto	u5861
	goto	u5860
u5861:
	goto	l4816
u5860:
	goto	l4826
	
l237:
	line	585
	
l4826:
;digi.c: 584: }
;digi.c: 585: for(i = 0;i <= 7;i ++ )
	movlw	low(0)
	movwf	((c:_i)),c
	
l4828:
	movlw	(08h-1)
	cpfsgt	((c:_i)),c
	goto	u5871
	goto	u5870
u5871:
	goto	l4832
u5870:
	goto	l241
	
l4830:
	goto	l241
	line	586
	
l240:
	line	587
	
l4832:
;digi.c: 586: {
;digi.c: 587: temp = temp << 1;
	movf	((c:_temp)),c,w
	addwf	((c:_temp)),c,w
	movwf	((c:_temp)),c
	line	588
	
l4834:
;digi.c: 588: if(CARRY == 1)
	btfss	c:(32448/8),(32448)&7	;volatile
	goto	u5881
	goto	u5880
u5881:
	goto	l242
u5880:
	line	590
	
l4836:
;digi.c: 589: {
;digi.c: 590: RD7 = 1;
	bsf	c:(31775/8),(31775)&7	;volatile
	line	591
;digi.c: 591: }
	goto	l243
	line	592
	
l242:
	line	594
;digi.c: 592: else
;digi.c: 593: {
;digi.c: 594: RD7 = 0;
	bcf	c:(31775/8),(31775)&7	;volatile
	line	595
	
l243:
	line	596
;digi.c: 595: }
;digi.c: 596: RD6 = 1;
	bsf	c:(31774/8),(31774)&7	;volatile
	line	597
;digi.c: 597: _delay(5);
	nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop

	line	598
;digi.c: 598: RD6 = 0;
	bcf	c:(31774/8),(31774)&7	;volatile
	line	599
;digi.c: 599: RD7 = 0;
	bcf	c:(31775/8),(31775)&7	;volatile
	line	585
	
l4838:
	incf	((c:_i)),c
	
l4840:
	movlw	(08h-1)
	cpfsgt	((c:_i)),c
	goto	u5891
	goto	u5890
u5891:
	goto	l4832
u5890:
	
l241:
	line	601
;digi.c: 600: }
;digi.c: 601: RD5 = 1;
	bsf	c:(31773/8),(31773)&7	;volatile
	line	602
	
l4842:
;digi.c: 602: R1 = 0x11;
	movlw	low(011h)
	movwf	((c:_R1)),c
	line	608
;digi.c: 608: while(RA2 == 0)
	goto	l4850
	
l245:
	line	611
# 611 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
movlw 0x0A ;# 
	line	612
# 612 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
MOVWF _train ;# 
	line	613
# 613 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
loop_4: ;# 
	line	614
# 614 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
BSF PORTB,1 ;# 
	line	615
# 615 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	616
# 616 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	617
# 617 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	618
# 618 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	619
# 619 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	620
# 620 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	621
# 621 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	622
# 622 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	623
# 623 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	624
# 624 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
BCF PORTB,1 ;# 
	line	625
# 625 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	626
# 626 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	627
# 627 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	628
# 628 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	629
# 629 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	630
# 630 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	631
# 631 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
decfsz _train,f ;# 
	line	632
# 632 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
goto loop_4 ;# 
psect	text0
	line	635
;digi.c: 635: if( bipomode == 0 )
	tstfsz	((c:_bipomode)),c
	goto	u5901
	goto	u5900
u5901:
	goto	l4846
u5900:
	line	637
	
l4844:
;digi.c: 636: {
;digi.c: 637: _delay(100);
	movlw	25
u7527:
decfsz	wreg,f
	goto	u7527

	goto	l4846
	line	638
	
l246:
	line	639
	
l4846:
;digi.c: 638: }
;digi.c: 639: if(bipomode == 1)
	decf	((c:_bipomode)),c,w

	btfss	status,2
	goto	u5911
	goto	u5910
u5911:
	goto	l4850
u5910:
	line	641
	
l4848:
;digi.c: 640: {
;digi.c: 641: _delay(600);
	movlw	150
u7537:
decfsz	wreg,f
	goto	u7537

	goto	l4850
	line	642
	
l247:
	goto	l4850
	line	643
	
l244:
	line	608
	
l4850:
	btfss	c:(31746/8),(31746)&7	;volatile
	goto	u5921
	goto	u5920
u5921:
	goto	l245
u5920:
	goto	l233
	
l248:
	goto	l233
	line	644
	
l235:
	line	646
	
l233:
	line	649
;digi.c: 642: }
;digi.c: 643: }
;digi.c: 644: }
;digi.c: 646: }
;digi.c: 649: if( RA3 == 0 )
	btfsc	c:(31747/8),(31747)&7	;volatile
	goto	u5931
	goto	u5930
u5931:
	goto	l4920
u5930:
	line	651
	
l4852:
;digi.c: 650: {
;digi.c: 651: bipomode = 2;
	movlw	low(02h)
	movwf	((c:_bipomode)),c
	line	654
	
l4854:
;digi.c: 654: RB2 = 1;
	bsf	c:(31754/8),(31754)&7	;volatile
	line	655
	
l4856:
;digi.c: 655: _delay(25);
	movlw	5
u7547:
	nop
decfsz	wreg,f
	goto	u7547

	line	657
	
l4858:
;digi.c: 657: temp = sqrt(bipopower);
	movf	((c:_bipopower)),c,w
	
	call	___lbtoft
	movff	0+?___lbtoft,(c:sqrt@y)
	movff	1+?___lbtoft,(c:sqrt@y+1)
	movff	2+?___lbtoft,(c:sqrt@y+2)
	call	_sqrt	;wreg free
	movff	0+?_sqrt,(c:___fttol@f1)
	movff	1+?_sqrt,(c:___fttol@f1+1)
	movff	2+?_sqrt,(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,??_main+0+0
	movff	1+?___fttol,??_main+0+0+1
	movff	2+?___fttol,??_main+0+0+2
	movff	3+?___fttol,??_main+0+0+3
	
	movlb	0	; () banked
	movf	(??_main+0+0)&0ffh,w
	movwf	((c:_temp)),c
	line	658
	
l4860:; BSR set to: 0

;digi.c: 658: temp = temp * 12;
	movf	((c:_temp)),c,w
	mullw	0Ch
	movff	prodl,(c:_temp)
	line	659
	
l4862:; BSR set to: 0

;digi.c: 659: temp = ~temp;
	comf	((c:_temp)),c
	line	666
	
l4864:; BSR set to: 0

;digi.c: 666: RD5 = 0;
	bcf	c:(31773/8),(31773)&7	;volatile
	line	667
	
l4866:; BSR set to: 0

;digi.c: 667: R1 = 0x11;
	movlw	low(011h)
	movwf	((c:_R1)),c
	line	668
	
l4868:; BSR set to: 0

;digi.c: 668: for( j = 0;j <= 7;j ++ )
	movlw	low(0)
	movwf	((c:_j)),c
	
l4870:; BSR set to: 0

	movlw	(08h-1)
	cpfsgt	((c:_j)),c
	goto	u5941
	goto	u5940
u5941:
	goto	l4874
u5940:
	goto	l4884
	
l4872:; BSR set to: 0

	goto	l4884
	line	669
	
l250:; BSR set to: 0

	line	670
	
l4874:
;digi.c: 669: {
;digi.c: 670: R1 = R1 << 1;
	movf	((c:_R1)),c,w
	addwf	((c:_R1)),c,w
	movwf	((c:_R1)),c
	line	671
	
l4876:
;digi.c: 671: if(CARRY == 1)
	btfss	c:(32448/8),(32448)&7	;volatile
	goto	u5951
	goto	u5950
u5951:
	goto	l252
u5950:
	line	673
	
l4878:
;digi.c: 672: {
;digi.c: 673: RD7 = 1;
	bsf	c:(31775/8),(31775)&7	;volatile
	line	674
;digi.c: 674: }
	goto	l253
	line	675
	
l252:
	line	677
;digi.c: 675: else
;digi.c: 676: {
;digi.c: 677: RD7 = 0;
	bcf	c:(31775/8),(31775)&7	;volatile
	line	678
	
l253:
	line	679
;digi.c: 678: }
;digi.c: 679: RD6 = 1;
	bsf	c:(31774/8),(31774)&7	;volatile
	line	680
;digi.c: 680: _delay(5);
	nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop

	line	681
;digi.c: 681: RD6 = 0;
	bcf	c:(31774/8),(31774)&7	;volatile
	line	682
;digi.c: 682: RD7 =0;
	bcf	c:(31775/8),(31775)&7	;volatile
	line	668
	
l4880:
	incf	((c:_j)),c
	
l4882:
	movlw	(08h-1)
	cpfsgt	((c:_j)),c
	goto	u5961
	goto	u5960
u5961:
	goto	l4874
u5960:
	goto	l4884
	
l251:
	line	684
	
l4884:
;digi.c: 683: }
;digi.c: 684: for(i = 0;i <= 7;i ++ )
	movlw	low(0)
	movwf	((c:_i)),c
	
l4886:
	movlw	(08h-1)
	cpfsgt	((c:_i)),c
	goto	u5971
	goto	u5970
u5971:
	goto	l4890
u5970:
	goto	l255
	
l4888:
	goto	l255
	line	685
	
l254:
	line	686
	
l4890:
;digi.c: 685: {
;digi.c: 686: temp = temp << 1;
	movf	((c:_temp)),c,w
	addwf	((c:_temp)),c,w
	movwf	((c:_temp)),c
	line	687
	
l4892:
;digi.c: 687: if(CARRY == 1)
	btfss	c:(32448/8),(32448)&7	;volatile
	goto	u5981
	goto	u5980
u5981:
	goto	l256
u5980:
	line	689
	
l4894:
;digi.c: 688: {
;digi.c: 689: RD7 = 1;
	bsf	c:(31775/8),(31775)&7	;volatile
	line	690
;digi.c: 690: }
	goto	l257
	line	691
	
l256:
	line	693
;digi.c: 691: else
;digi.c: 692: {
;digi.c: 693: RD7 = 0;
	bcf	c:(31775/8),(31775)&7	;volatile
	line	694
	
l257:
	line	695
;digi.c: 694: }
;digi.c: 695: RD6 = 1;
	bsf	c:(31774/8),(31774)&7	;volatile
	line	696
;digi.c: 696: _delay(5);
	nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop

	line	697
;digi.c: 697: RD6 = 0;
	bcf	c:(31774/8),(31774)&7	;volatile
	line	698
;digi.c: 698: RD7 = 0;
	bcf	c:(31775/8),(31775)&7	;volatile
	line	684
	
l4896:
	incf	((c:_i)),c
	
l4898:
	movlw	(08h-1)
	cpfsgt	((c:_i)),c
	goto	u5991
	goto	u5990
u5991:
	goto	l4890
u5990:
	
l255:
	line	700
;digi.c: 699: }
;digi.c: 700: RD5 = 1;
	bsf	c:(31773/8),(31773)&7	;volatile
	line	701
	
l4900:
;digi.c: 701: _delay(25);
	movlw	5
u7557:
	nop
decfsz	wreg,f
	goto	u7557

	line	702
	
l4902:
;digi.c: 702: R1 = 0x11;
	movlw	low(011h)
	movwf	((c:_R1)),c
	line	708
	
l4904:
;digi.c: 708: wait = 0;
	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_wait+1))&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_wait))&0ffh
	line	709
;digi.c: 709: while(RA3 == 0)
	goto	l4918
	
l259:
	line	711
;digi.c: 710: {
;digi.c: 711: if(dry_fl == 0)
	tstfsz	((c:_dry_fl)),c
	goto	u6001
	goto	u6000
u6001:
	goto	l4914
u6000:
	line	714
	
l4906:
# 714 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
movlw 0x05 ;# 
	line	715
# 715 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
MOVWF _train ;# 
	line	716
# 716 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
loop_5: ;# 
	line	717
# 717 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
BSF PORTB,1 ;# 
	line	718
# 718 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	719
# 719 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	720
# 720 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	721
# 721 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	722
# 722 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	723
# 723 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	724
# 724 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	725
# 725 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	726
# 726 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	727
# 727 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
BCF PORTB,1 ;# 
	line	728
# 728 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	729
# 729 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	730
# 730 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	731
# 731 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	732
# 732 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	733
# 733 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
NOP ;# 
	line	734
# 734 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
decfsz _train,f ;# 
	line	735
# 735 "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
goto loop_5 ;# 
psect	text0
	line	738
	
l4908:
;digi.c: 738: wait = wait + 1;
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	addwf	((_wait))&0ffh,w
	movlb	0	; () banked
	
	movlb	0	; () banked
	movwf	((_wait))&0ffh
	movlw	high(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	addwfc	((_wait+1))&0ffh,w
	movlb	0	; () banked
	movwf	1+((_wait))&0ffh
	line	739
;digi.c: 739: if(wait > 5000)
	movlw	089h
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	((_wait))&0ffh,w
	movlw	013h
	movlb	0	; () banked
	subwfb	((_wait+1))&0ffh,w
	btfss	status,0
	goto	u6011
	goto	u6010
u6011:
	goto	l4914
u6010:
	line	741
	
l4910:; BSR set to: 0

;digi.c: 740: {
;digi.c: 741: if(RA5 == 1)
	btfss	c:(31749/8),(31749)&7	;volatile
	goto	u6021
	goto	u6020
u6021:
	goto	l4914
u6020:
	line	743
	
l4912:; BSR set to: 0

;digi.c: 742: {
;digi.c: 743: dry_fl = 1;
	movlw	low(01h)
	movwf	((c:_dry_fl)),c
	goto	l4914
	line	744
	
l262:; BSR set to: 0

	goto	l4914
	line	745
	
l261:; BSR set to: 0

	goto	l4914
	line	746
	
l260:; BSR set to: 0

	line	747
	
l4914:
;digi.c: 744: }
;digi.c: 745: }
;digi.c: 746: }
;digi.c: 747: RB1 = 0;
	bcf	c:(31753/8),(31753)&7	;volatile
	line	748
	
l4916:
;digi.c: 748: _delay(600);
	movlw	150
u7567:
decfsz	wreg,f
	goto	u7567

	goto	l4918
	line	749
	
l258:
	line	709
	
l4918:
	btfss	c:(31747/8),(31747)&7	;volatile
	goto	u6031
	goto	u6030
u6031:
	goto	l259
u6030:
	goto	l4920
	
l263:
	goto	l4920
	line	750
	
l249:
	line	755
	
l4920:
;digi.c: 749: }
;digi.c: 750: }
;digi.c: 755: PORTD = PORTD & 0x1F;
	movf	((c:3971)),c,w	;volatile
	andlw	low(01Fh)
	movwf	((c:3971)),c	;volatile
	line	756
;digi.c: 756: PORTC = PORTC & 0xF7;
	movf	((c:3970)),c,w	;volatile
	andlw	low(0F7h)
	movwf	((c:3970)),c	;volatile
	line	759
;digi.c: 759: if (( PORTC == 0xF7 ) &&( PORTD == 0x1F))
	movf	((c:3970)),c,w	;volatile
	xorlw	247

	btfss	status,2
	goto	u6041
	goto	u6040
u6041:
	goto	l4926
u6040:
	
l4922:
	movf	((c:3971)),c,w	;volatile
	xorlw	31

	btfss	status,2
	goto	u6051
	goto	u6050
u6051:
	goto	l4926
u6050:
	line	762
	
l4924:
;digi.c: 760: {
;digi.c: 761: {
;digi.c: 762: cnt = 0;
	movlw	low(0)
	movwf	((c:_cnt)),c
	goto	l4926
	line	764
	
l264:
	line	765
	
l4926:
;digi.c: 763: }
;digi.c: 764: }
;digi.c: 765: if(( RC0 == 0 ) && ( cnt == 0 ))
	btfsc	c:(31760/8),(31760)&7	;volatile
	goto	u6061
	goto	u6060
u6061:
	goto	l265
u6060:
	
l4928:
	tstfsz	((c:_cnt)),c
	goto	u6071
	goto	u6070
u6071:
	goto	l265
u6070:
	line	767
	
l4930:
;digi.c: 766: {
;digi.c: 767: for (debounce = 0; debounce <= 99; debounce ++)
	movlw	low(0)
	movwf	((c:_debounce)),c
	
l4932:
	movlw	(064h-1)
	cpfsgt	((c:_debounce)),c
	goto	u6081
	goto	u6080
u6081:
	goto	l4936
u6080:
	goto	l265
	
l4934:
	goto	l265
	line	768
	
l266:
	line	769
	
l4936:
;digi.c: 768: {
;digi.c: 769: _delay(250);
	movlw	50
u7577:
	nop
decfsz	wreg,f
	goto	u7577

	line	767
	
l4938:
	incf	((c:_debounce)),c
	
l4940:
	movlw	(064h-1)
	cpfsgt	((c:_debounce)),c
	goto	u6091
	goto	u6090
u6091:
	goto	l4936
u6090:
	goto	l265
	
l267:
	line	771
	
l265:
	line	773
;digi.c: 770: }
;digi.c: 771: }
;digi.c: 773: if( RC0 == 0 )
	btfsc	c:(31760/8),(31760)&7	;volatile
	goto	u6101
	goto	u6100
u6101:
	goto	l4988
u6100:
	goto	l269
	line	775
	
l4942:
;digi.c: 774: {
;digi.c: 775: while(RC0 == 0)
	goto	l269
	
l270:
	line	777
	
l4944:
;digi.c: 776: {
;digi.c: 777: if( progno < 99 )
	movlw	(063h)&0ffh
	subwf	((c:_progno)),c,w
	btfsc	status,0
	goto	u6111
	goto	u6110
u6111:
	goto	l4958
u6110:
	line	779
	
l4946:
;digi.c: 778: {
;digi.c: 779: progno = progno + 1;
	incf	((c:_progno)),c,w
	movwf	((c:_progno)),c
	line	780
	
l4948:
;digi.c: 780: tens = progno / 10;
	movff	(c:_progno),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	movwf	((c:_tens)),c
	line	781
	
l4950:
;digi.c: 781: tens = tens << 4;
	swapf	((c:_tens)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:_tens)),c
	line	782
	
l4952:
;digi.c: 782: values[0] = tens;
	movff	(c:_tens),(c:_values)	;volatile
	line	783
;digi.c: 783: units = progno % 10;
	movff	(c:_progno),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	movwf	((c:_units)),c
	line	784
	
l4954:
;digi.c: 784: units = units << 4;
	swapf	((c:_units)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:_units)),c
	line	785
	
l4956:
;digi.c: 785: values[1] = units;
	movff	(c:_units),0+((c:_values)+01h)	;volatile
	goto	l4958
	line	786
	
l271:
	line	787
	
l4958:
;digi.c: 786: }
;digi.c: 787: if(cnt == 0)
	tstfsz	((c:_cnt)),c
	goto	u6121
	goto	u6120
u6121:
	goto	l4974
u6120:
	line	789
	
l4960:
;digi.c: 788: {
;digi.c: 789: for (debounce = 0; debounce <= 200; debounce ++)
	movlw	low(0)
	movwf	((c:_debounce)),c
	
l4962:
	movlw	(0C9h-1)
	cpfsgt	((c:_debounce)),c
	goto	u6131
	goto	u6130
u6131:
	goto	l4966
u6130:
	goto	l4972
	
l4964:
	goto	l4972
	line	790
	
l273:
	line	791
	
l4966:
;digi.c: 790: {
;digi.c: 791: _delay(30000);
	movlw	30
	movlb	0	; () banked
movwf	(??_main+0+0)&0ffh,f
	movlw	60
u7587:
	decfsz	wreg,f
	goto	u7587
	decfsz	(??_main+0+0)&0ffh,f
	goto	u7587
	nop2

	line	789
	
l4968:
	incf	((c:_debounce)),c
	
l4970:
	movlw	(0C9h-1)
	cpfsgt	((c:_debounce)),c
	goto	u6141
	goto	u6140
u6141:
	goto	l4966
u6140:
	goto	l4972
	
l274:
	line	793
	
l4972:
;digi.c: 792: }
;digi.c: 793: cnt = cnt + 1;
	incf	((c:_cnt)),c,w
	movwf	((c:_cnt)),c
	line	794
;digi.c: 794: }
	goto	l269
	line	795
	
l272:
	line	797
	
l4974:
;digi.c: 795: else
;digi.c: 796: {
;digi.c: 797: for (debounce = 0; debounce <= 200; debounce ++)
	movlw	low(0)
	movwf	((c:_debounce)),c
	
l4976:
	movlw	(0C9h-1)
	cpfsgt	((c:_debounce)),c
	goto	u6151
	goto	u6150
u6151:
	goto	l4980
u6150:
	goto	l269
	
l4978:
	goto	l269
	line	798
	
l276:
	line	799
	
l4980:
;digi.c: 798: {
;digi.c: 799: _delay(3000);
	movlw	3
	movlb	0	; () banked
movwf	(??_main+0+0)&0ffh,f
	movlw	236
u7597:
	decfsz	wreg,f
	goto	u7597
	decfsz	(??_main+0+0)&0ffh,f
	goto	u7597

	line	797
	
l4982:
	incf	((c:_debounce)),c
	
l4984:
	movlw	(0C9h-1)
	cpfsgt	((c:_debounce)),c
	goto	u6161
	goto	u6160
u6161:
	goto	l4980
u6160:
	goto	l269
	
l277:
	goto	l269
	line	801
	
l275:
	line	802
	
l269:
	line	775
	btfss	c:(31760/8),(31760)&7	;volatile
	goto	u6171
	goto	u6170
u6171:
	goto	l4944
u6170:
	goto	l4986
	
l278:
	line	803
	
l4986:
;digi.c: 800: }
;digi.c: 801: }
;digi.c: 802: }
;digi.c: 803: rdfl = 1;
	movlw	low(01h)
	movwf	((c:_rdfl)),c
	goto	l4988
	line	804
	
l268:
	line	807
	
l4988:
;digi.c: 804: }
;digi.c: 807: if(( RC1 == 0 ) && ( cnt == 0 ))
	btfsc	c:(31761/8),(31761)&7	;volatile
	goto	u6181
	goto	u6180
u6181:
	goto	l279
u6180:
	
l4990:
	tstfsz	((c:_cnt)),c
	goto	u6191
	goto	u6190
u6191:
	goto	l279
u6190:
	line	809
	
l4992:
;digi.c: 808: {
;digi.c: 809: for (debounce = 0; debounce <= 99; debounce ++)
	movlw	low(0)
	movwf	((c:_debounce)),c
	
l4994:
	movlw	(064h-1)
	cpfsgt	((c:_debounce)),c
	goto	u6201
	goto	u6200
u6201:
	goto	l4998
u6200:
	goto	l279
	
l4996:
	goto	l279
	line	810
	
l280:
	line	811
	
l4998:
;digi.c: 810: {
;digi.c: 811: _delay(250);
	movlw	50
u7607:
	nop
decfsz	wreg,f
	goto	u7607

	line	809
	
l5000:
	incf	((c:_debounce)),c
	
l5002:
	movlw	(064h-1)
	cpfsgt	((c:_debounce)),c
	goto	u6211
	goto	u6210
u6211:
	goto	l4998
u6210:
	goto	l279
	
l281:
	line	813
	
l279:
	line	814
;digi.c: 812: }
;digi.c: 813: }
;digi.c: 814: if( RC1 == 0 )
	btfsc	c:(31761/8),(31761)&7	;volatile
	goto	u6221
	goto	u6220
u6221:
	goto	l5050
u6220:
	goto	l283
	line	816
	
l5004:
;digi.c: 815: {
;digi.c: 816: while(RC1 == 0)
	goto	l283
	
l284:
	line	818
	
l5006:
;digi.c: 817: {
;digi.c: 818: if( progno > 0 )
	movf	((c:_progno)),c,w
	btfsc	status,2
	goto	u6231
	goto	u6230
u6231:
	goto	l5020
u6230:
	line	820
	
l5008:
;digi.c: 819: {
;digi.c: 820: progno = progno - 1;
	decf	((c:_progno)),c,w
	movwf	((c:_progno)),c
	line	821
	
l5010:
;digi.c: 821: tens = progno / 10;
	movff	(c:_progno),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	movwf	((c:_tens)),c
	line	822
	
l5012:
;digi.c: 822: tens = tens << 4;
	swapf	((c:_tens)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:_tens)),c
	line	823
	
l5014:
;digi.c: 823: values[0] = tens;
	movff	(c:_tens),(c:_values)	;volatile
	line	824
;digi.c: 824: units = progno % 10;
	movff	(c:_progno),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	movwf	((c:_units)),c
	line	825
	
l5016:
;digi.c: 825: units = units << 4;
	swapf	((c:_units)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:_units)),c
	line	826
	
l5018:
;digi.c: 826: values[1] = units;
	movff	(c:_units),0+((c:_values)+01h)	;volatile
	goto	l5020
	line	827
	
l285:
	line	828
	
l5020:
;digi.c: 827: }
;digi.c: 828: if(cnt == 0)
	tstfsz	((c:_cnt)),c
	goto	u6241
	goto	u6240
u6241:
	goto	l5036
u6240:
	line	830
	
l5022:
;digi.c: 829: {
;digi.c: 830: for (debounce = 0; debounce <= 200; debounce ++)
	movlw	low(0)
	movwf	((c:_debounce)),c
	
l5024:
	movlw	(0C9h-1)
	cpfsgt	((c:_debounce)),c
	goto	u6251
	goto	u6250
u6251:
	goto	l5028
u6250:
	goto	l5034
	
l5026:
	goto	l5034
	line	831
	
l287:
	line	832
	
l5028:
;digi.c: 831: {
;digi.c: 832: _delay(30000);
	movlw	30
	movlb	0	; () banked
movwf	(??_main+0+0)&0ffh,f
	movlw	60
u7617:
	decfsz	wreg,f
	goto	u7617
	decfsz	(??_main+0+0)&0ffh,f
	goto	u7617
	nop2

	line	830
	
l5030:
	incf	((c:_debounce)),c
	
l5032:
	movlw	(0C9h-1)
	cpfsgt	((c:_debounce)),c
	goto	u6261
	goto	u6260
u6261:
	goto	l5028
u6260:
	goto	l5034
	
l288:
	line	834
	
l5034:
;digi.c: 833: }
;digi.c: 834: cnt = cnt + 1;
	incf	((c:_cnt)),c,w
	movwf	((c:_cnt)),c
	line	835
;digi.c: 835: }
	goto	l283
	line	836
	
l286:
	line	838
	
l5036:
;digi.c: 836: else
;digi.c: 837: {
;digi.c: 838: for (debounce = 0; debounce <= 200; debounce ++)
	movlw	low(0)
	movwf	((c:_debounce)),c
	
l5038:
	movlw	(0C9h-1)
	cpfsgt	((c:_debounce)),c
	goto	u6271
	goto	u6270
u6271:
	goto	l5042
u6270:
	goto	l283
	
l5040:
	goto	l283
	line	839
	
l290:
	line	840
	
l5042:
;digi.c: 839: {
;digi.c: 840: _delay(3000);
	movlw	3
	movlb	0	; () banked
movwf	(??_main+0+0)&0ffh,f
	movlw	236
u7627:
	decfsz	wreg,f
	goto	u7627
	decfsz	(??_main+0+0)&0ffh,f
	goto	u7627

	line	838
	
l5044:
	incf	((c:_debounce)),c
	
l5046:
	movlw	(0C9h-1)
	cpfsgt	((c:_debounce)),c
	goto	u6281
	goto	u6280
u6281:
	goto	l5042
u6280:
	goto	l283
	
l291:
	goto	l283
	line	842
	
l289:
	line	843
	
l283:
	line	816
	btfss	c:(31761/8),(31761)&7	;volatile
	goto	u6291
	goto	u6290
u6291:
	goto	l5006
u6290:
	goto	l5048
	
l292:
	line	844
	
l5048:
;digi.c: 841: }
;digi.c: 842: }
;digi.c: 843: }
;digi.c: 844: rdfl = 1;
	movlw	low(01h)
	movwf	((c:_rdfl)),c
	goto	l5050
	line	845
	
l282:
	line	848
	
l5050:
;digi.c: 845: }
;digi.c: 848: if(( RC2 == 0 ) && ( cnt == 0 ))
	btfsc	c:(31762/8),(31762)&7	;volatile
	goto	u6301
	goto	u6300
u6301:
	goto	l293
u6300:
	
l5052:
	tstfsz	((c:_cnt)),c
	goto	u6311
	goto	u6310
u6311:
	goto	l293
u6310:
	line	850
	
l5054:
;digi.c: 849: {
;digi.c: 850: for (debounce = 0; debounce <= 99; debounce ++)
	movlw	low(0)
	movwf	((c:_debounce)),c
	
l5056:
	movlw	(064h-1)
	cpfsgt	((c:_debounce)),c
	goto	u6321
	goto	u6320
u6321:
	goto	l5060
u6320:
	goto	l293
	
l5058:
	goto	l293
	line	851
	
l294:
	line	852
	
l5060:
;digi.c: 851: {
;digi.c: 852: _delay(250);
	movlw	50
u7637:
	nop
decfsz	wreg,f
	goto	u7637

	line	850
	
l5062:
	incf	((c:_debounce)),c
	
l5064:
	movlw	(064h-1)
	cpfsgt	((c:_debounce)),c
	goto	u6331
	goto	u6330
u6331:
	goto	l5060
u6330:
	goto	l293
	
l295:
	line	854
	
l293:
	line	855
;digi.c: 853: }
;digi.c: 854: }
;digi.c: 855: if( RC2 == 0 )
	btfsc	c:(31762/8),(31762)&7	;volatile
	goto	u6341
	goto	u6340
u6341:
	goto	l5142
u6340:
	goto	l297
	line	857
	
l5066:
;digi.c: 856: {
;digi.c: 857: while(RC2 == 0)
	goto	l297
	
l298:
	line	859
	
l5068:
;digi.c: 858: {
;digi.c: 859: if( cutpower < 400 )
	movlw	090h
	subwf	((c:_cutpower)),c,w
	movlw	01h
	subwfb	((c:_cutpower+1)),c,w
	btfsc	status,0
	goto	u6351
	goto	u6350
u6351:
	goto	l5096
u6350:
	line	863
	
l5070:
;digi.c: 860: {
;digi.c: 863: cutpower = cutpower + 1;
	movlw	low(01h)
	addwf	((c:_cutpower)),c,w
	
	movwf	((c:_cutpower)),c
	movlw	high(01h)
	addwfc	((c:_cutpower+1)),c,w
	movwf	1+((c:_cutpower)),c
	line	864
	
l5072:
;digi.c: 864: hundreds = cutpower / 100;
	movff	(c:_cutpower),(c:___lwdiv@dividend)
	movff	(c:_cutpower+1),(c:___lwdiv@dividend+1)
	movlw	high(064h)
	movwf	((c:___lwdiv@divisor+1)),c
	movlw	low(064h)
	movwf	((c:___lwdiv@divisor)),c
	call	___lwdiv	;wreg free
	movf	(0+?___lwdiv),c,w
	movwf	((c:_hundreds)),c
	line	865
	
l5074:
;digi.c: 865: temp = (cutpower - ( hundreds * 100 ));
	movf	((c:_hundreds)),c,w
	mullw	064h
	movf	(prodl),c,w
	sublw	0
	addwf	((c:_cutpower)),c,w
	movwf	((c:_temp)),c
	line	866
	
l5076:
;digi.c: 866: units = temp % 10;
	movff	(c:_temp),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	movwf	((c:_units)),c
	line	867
	
l5078:
;digi.c: 867: units = units << 4;
	swapf	((c:_units)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:_units)),c
	line	868
	
l5080:
;digi.c: 868: values[8] = units;
	movff	(c:_units),0+((c:_values)+08h)	;volatile
	line	869
	
l5082:
;digi.c: 869: tens = temp / 10;
	movff	(c:_temp),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	movwf	((c:_tens)),c
	line	870
	
l5084:
;digi.c: 870: tens = tens << 4;
	swapf	((c:_tens)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:_tens)),c
	line	871
	
l5086:
;digi.c: 871: values[3] = tens;
	movff	(c:_tens),0+((c:_values)+03h)	;volatile
	line	872
	
l5088:
;digi.c: 872: hundreds = hundreds << 4;
	swapf	((c:_hundreds)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:_hundreds)),c
	line	873
	
l5090:
;digi.c: 873: values[2] = hundreds;
	movff	(c:_hundreds),0+((c:_values)+02h)	;volatile
	line	874
	
l5092:
;digi.c: 874: cutpowerl =cutpower & 0x00FF;
	movff	(c:_cutpower),(c:_cutpowerl)
	line	875
	
l5094:
;digi.c: 875: cutpowerh =cutpower >> 8;
	movff	(c:_cutpower+1),??_main+0+0
	movff	??_main+0+0,??_main+1+0
	movlb	0	; () banked
	clrf	(??_main+1+0+1)&0ffh
	movlb	0	; () banked
	movf	(??_main+1+0)&0ffh,w
	movwf	((c:_cutpowerh)),c
	goto	l5096
	line	880
	
l299:; BSR set to: 0

	line	881
	
l5096:
;digi.c: 880: }
;digi.c: 881: if(cnt == 0)
	tstfsz	((c:_cnt)),c
	goto	u6361
	goto	u6360
u6361:
	goto	l5112
u6360:
	line	883
	
l5098:
;digi.c: 882: {
;digi.c: 883: for (debounce = 0; debounce <= 200; debounce ++)
	movlw	low(0)
	movwf	((c:_debounce)),c
	
l5100:
	movlw	(0C9h-1)
	cpfsgt	((c:_debounce)),c
	goto	u6371
	goto	u6370
u6371:
	goto	l5104
u6370:
	goto	l5110
	
l5102:
	goto	l5110
	line	884
	
l301:
	line	885
	
l5104:
;digi.c: 884: {
;digi.c: 885: _delay(30000);
	movlw	30
	movlb	0	; () banked
movwf	(??_main+0+0)&0ffh,f
	movlw	60
u7647:
	decfsz	wreg,f
	goto	u7647
	decfsz	(??_main+0+0)&0ffh,f
	goto	u7647
	nop2

	line	883
	
l5106:
	incf	((c:_debounce)),c
	
l5108:
	movlw	(0C9h-1)
	cpfsgt	((c:_debounce)),c
	goto	u6381
	goto	u6380
u6381:
	goto	l5104
u6380:
	goto	l5110
	
l302:
	line	887
	
l5110:
;digi.c: 886: }
;digi.c: 887: cnt = cnt + 1;
	incf	((c:_cnt)),c,w
	movwf	((c:_cnt)),c
	line	888
;digi.c: 888: }
	goto	l297
	line	889
	
l300:
	line	892
	
l5112:
;digi.c: 889: else
;digi.c: 890: {
;digi.c: 892: for (debounce = 0; debounce <= 200; debounce ++)
	movlw	low(0)
	movwf	((c:_debounce)),c
	
l5114:
	movlw	(0C9h-1)
	cpfsgt	((c:_debounce)),c
	goto	u6391
	goto	u6390
u6391:
	goto	l5118
u6390:
	goto	l297
	
l5116:
	goto	l297
	line	893
	
l304:
	line	894
	
l5118:
;digi.c: 893: {
;digi.c: 894: _delay(3000);
	movlw	3
	movlb	0	; () banked
movwf	(??_main+0+0)&0ffh,f
	movlw	236
u7657:
	decfsz	wreg,f
	goto	u7657
	decfsz	(??_main+0+0)&0ffh,f
	goto	u7657

	line	892
	
l5120:
	incf	((c:_debounce)),c
	
l5122:
	movlw	(0C9h-1)
	cpfsgt	((c:_debounce)),c
	goto	u6401
	goto	u6400
u6401:
	goto	l5118
u6400:
	goto	l297
	
l305:
	goto	l297
	line	896
	
l303:
	line	897
	
l297:
	line	857
	btfss	c:(31762/8),(31762)&7	;volatile
	goto	u6411
	goto	u6410
u6411:
	goto	l5068
u6410:
	goto	l5124
	
l306:
	line	898
	
l5124:
;digi.c: 895: }
;digi.c: 896: }
;digi.c: 897: }
;digi.c: 898: addrl = (progno * 8) + 1;
	movf	((c:_progno)),c,w
	mullw	08h
	incf	(prodl),c,w
	movwf	((c:_addrl)),c
	line	899
	
l5126:
;digi.c: 899: GIE = 0;
	bcf	c:(32663/8),(32663)&7	;volatile
	line	900
	
l5128:
;digi.c: 900: Write_b_eep(addrl,cutpowerh);
	movff	(c:_addrl),(c:Write_b_eep@badd)
	clrf	((c:Write_b_eep@badd+1)),c
	movff	(c:_cutpowerh),(c:Write_b_eep@bdat)
	call	_Write_b_eep	;wreg free
	line	901
	
l5130:
;digi.c: 901: Busy_eep();
	call	_Busy_eep	;wreg free
	line	902
	
l5132:
;digi.c: 902: _delay(100);
	movlw	25
u7667:
decfsz	wreg,f
	goto	u7667

	line	903
	
l5134:
;digi.c: 903: addrl = (progno * 8) + 2;
	movf	((c:_progno)),c,w
	mullw	08h
	movf	(prodl),c,w
	addlw	low(02h)
	movwf	((c:_addrl)),c
	line	904
	
l5136:
;digi.c: 904: Write_b_eep(addrl,cutpowerl);
	movff	(c:_addrl),(c:Write_b_eep@badd)
	clrf	((c:Write_b_eep@badd+1)),c
	movff	(c:_cutpowerl),(c:Write_b_eep@bdat)
	call	_Write_b_eep	;wreg free
	line	905
	
l5138:
;digi.c: 905: Busy_eep();
	call	_Busy_eep	;wreg free
	line	906
	
l5140:
;digi.c: 906: GIE = 1;
	bsf	c:(32663/8),(32663)&7	;volatile
	goto	l5142
	line	910
	
l296:
	line	911
	
l5142:
;digi.c: 910: }
;digi.c: 911: if(( RD0 == 0 ) && ( cnt == 0 ))
	btfsc	c:(31768/8),(31768)&7	;volatile
	goto	u6421
	goto	u6420
u6421:
	goto	l307
u6420:
	
l5144:
	tstfsz	((c:_cnt)),c
	goto	u6431
	goto	u6430
u6431:
	goto	l307
u6430:
	line	914
	
l5146:
;digi.c: 912: {
;digi.c: 914: for (debounce = 0; debounce <= 99; debounce ++)
	movlw	low(0)
	movwf	((c:_debounce)),c
	
l5148:
	movlw	(064h-1)
	cpfsgt	((c:_debounce)),c
	goto	u6441
	goto	u6440
u6441:
	goto	l5152
u6440:
	goto	l307
	
l5150:
	goto	l307
	line	915
	
l308:
	line	916
	
l5152:
;digi.c: 915: {
;digi.c: 916: _delay(250);
	movlw	50
u7677:
	nop
decfsz	wreg,f
	goto	u7677

	line	914
	
l5154:
	incf	((c:_debounce)),c
	
l5156:
	movlw	(064h-1)
	cpfsgt	((c:_debounce)),c
	goto	u6451
	goto	u6450
u6451:
	goto	l5152
u6450:
	goto	l307
	
l309:
	line	918
	
l307:
	line	919
;digi.c: 917: }
;digi.c: 918: }
;digi.c: 919: if( RD0 == 0 )
	btfsc	c:(31768/8),(31768)&7	;volatile
	goto	u6461
	goto	u6460
u6461:
	goto	l5234
u6460:
	goto	l311
	line	921
	
l5158:
;digi.c: 920: {
;digi.c: 921: while(RD0 == 0)
	goto	l311
	
l312:
	line	923
	
l5160:
;digi.c: 922: {
;digi.c: 923: if( cutpower > 0 )
	movf	((c:_cutpower+1)),c,w
	iorwf ((c:_cutpower)),c,w

	btfsc	status,2
	goto	u6471
	goto	u6470
u6471:
	goto	l5188
u6470:
	line	925
	
l5162:
;digi.c: 924: {
;digi.c: 925: cutpower = cutpower - 1;
	movlw	low(0FFFFh)
	addwf	((c:_cutpower)),c,w
	
	movwf	((c:_cutpower)),c
	movlw	high(0FFFFh)
	addwfc	((c:_cutpower+1)),c,w
	movwf	1+((c:_cutpower)),c
	line	926
	
l5164:
;digi.c: 926: hundreds = cutpower / 100;
	movff	(c:_cutpower),(c:___lwdiv@dividend)
	movff	(c:_cutpower+1),(c:___lwdiv@dividend+1)
	movlw	high(064h)
	movwf	((c:___lwdiv@divisor+1)),c
	movlw	low(064h)
	movwf	((c:___lwdiv@divisor)),c
	call	___lwdiv	;wreg free
	movf	(0+?___lwdiv),c,w
	movwf	((c:_hundreds)),c
	line	927
	
l5166:
;digi.c: 927: temp = (cutpower - ( hundreds * 100 ));
	movf	((c:_hundreds)),c,w
	mullw	064h
	movf	(prodl),c,w
	sublw	0
	addwf	((c:_cutpower)),c,w
	movwf	((c:_temp)),c
	line	928
	
l5168:
;digi.c: 928: units = temp % 10;
	movff	(c:_temp),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	movwf	((c:_units)),c
	line	929
	
l5170:
;digi.c: 929: units = units << 4;
	swapf	((c:_units)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:_units)),c
	line	930
	
l5172:
;digi.c: 930: values[8] = units;
	movff	(c:_units),0+((c:_values)+08h)	;volatile
	line	931
	
l5174:
;digi.c: 931: tens = temp / 10;
	movff	(c:_temp),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	movwf	((c:_tens)),c
	line	932
	
l5176:
;digi.c: 932: tens = tens << 4;
	swapf	((c:_tens)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:_tens)),c
	line	933
	
l5178:
;digi.c: 933: values[3] = tens;
	movff	(c:_tens),0+((c:_values)+03h)	;volatile
	line	934
	
l5180:
;digi.c: 934: hundreds = hundreds << 4;
	swapf	((c:_hundreds)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:_hundreds)),c
	line	935
	
l5182:
;digi.c: 935: values[2] = hundreds;
	movff	(c:_hundreds),0+((c:_values)+02h)	;volatile
	line	936
	
l5184:
;digi.c: 936: cutpowerl =cutpower & 0x00FF;
	movff	(c:_cutpower),(c:_cutpowerl)
	line	937
	
l5186:
;digi.c: 937: cutpowerh =cutpower >> 8;
	movff	(c:_cutpower+1),??_main+0+0
	movff	??_main+0+0,??_main+1+0
	movlb	0	; () banked
	clrf	(??_main+1+0+1)&0ffh
	movlb	0	; () banked
	movf	(??_main+1+0)&0ffh,w
	movwf	((c:_cutpowerh)),c
	goto	l5188
	line	940
	
l313:; BSR set to: 0

	line	941
	
l5188:
;digi.c: 940: }
;digi.c: 941: if(cnt == 0)
	tstfsz	((c:_cnt)),c
	goto	u6481
	goto	u6480
u6481:
	goto	l5204
u6480:
	line	943
	
l5190:
;digi.c: 942: {
;digi.c: 943: for (debounce = 0; debounce <= 200; debounce ++)
	movlw	low(0)
	movwf	((c:_debounce)),c
	
l5192:
	movlw	(0C9h-1)
	cpfsgt	((c:_debounce)),c
	goto	u6491
	goto	u6490
u6491:
	goto	l5196
u6490:
	goto	l5202
	
l5194:
	goto	l5202
	line	944
	
l315:
	line	945
	
l5196:
;digi.c: 944: {
;digi.c: 945: _delay(30000);
	movlw	30
	movlb	0	; () banked
movwf	(??_main+0+0)&0ffh,f
	movlw	60
u7687:
	decfsz	wreg,f
	goto	u7687
	decfsz	(??_main+0+0)&0ffh,f
	goto	u7687
	nop2

	line	943
	
l5198:
	incf	((c:_debounce)),c
	
l5200:
	movlw	(0C9h-1)
	cpfsgt	((c:_debounce)),c
	goto	u6501
	goto	u6500
u6501:
	goto	l5196
u6500:
	goto	l5202
	
l316:
	line	947
	
l5202:
;digi.c: 946: }
;digi.c: 947: cnt = cnt + 1;
	incf	((c:_cnt)),c,w
	movwf	((c:_cnt)),c
	line	948
;digi.c: 948: }
	goto	l311
	line	949
	
l314:
	line	952
	
l5204:
;digi.c: 949: else
;digi.c: 950: {
;digi.c: 952: for (debounce = 0; debounce <= 200; debounce ++)
	movlw	low(0)
	movwf	((c:_debounce)),c
	
l5206:
	movlw	(0C9h-1)
	cpfsgt	((c:_debounce)),c
	goto	u6511
	goto	u6510
u6511:
	goto	l5210
u6510:
	goto	l311
	
l5208:
	goto	l311
	line	953
	
l318:
	line	954
	
l5210:
;digi.c: 953: {
;digi.c: 954: _delay(3000);
	movlw	3
	movlb	0	; () banked
movwf	(??_main+0+0)&0ffh,f
	movlw	236
u7697:
	decfsz	wreg,f
	goto	u7697
	decfsz	(??_main+0+0)&0ffh,f
	goto	u7697

	line	952
	
l5212:
	incf	((c:_debounce)),c
	
l5214:
	movlw	(0C9h-1)
	cpfsgt	((c:_debounce)),c
	goto	u6521
	goto	u6520
u6521:
	goto	l5210
u6520:
	goto	l311
	
l319:
	goto	l311
	line	956
	
l317:
	line	957
	
l311:
	line	921
	btfss	c:(31768/8),(31768)&7	;volatile
	goto	u6531
	goto	u6530
u6531:
	goto	l5160
u6530:
	goto	l5216
	
l320:
	line	958
	
l5216:
;digi.c: 955: }
;digi.c: 956: }
;digi.c: 957: }
;digi.c: 958: addrl = (progno * 8) + 1;
	movf	((c:_progno)),c,w
	mullw	08h
	incf	(prodl),c,w
	movwf	((c:_addrl)),c
	line	959
	
l5218:
;digi.c: 959: GIE = 0;
	bcf	c:(32663/8),(32663)&7	;volatile
	line	960
	
l5220:
;digi.c: 960: Write_b_eep(addrl,cutpowerh);
	movff	(c:_addrl),(c:Write_b_eep@badd)
	clrf	((c:Write_b_eep@badd+1)),c
	movff	(c:_cutpowerh),(c:Write_b_eep@bdat)
	call	_Write_b_eep	;wreg free
	line	961
	
l5222:
;digi.c: 961: Busy_eep();
	call	_Busy_eep	;wreg free
	line	962
	
l5224:
;digi.c: 962: _delay(100);
	movlw	25
u7707:
decfsz	wreg,f
	goto	u7707

	line	963
	
l5226:
;digi.c: 963: addrl = (progno * 8) + 2;
	movf	((c:_progno)),c,w
	mullw	08h
	movf	(prodl),c,w
	addlw	low(02h)
	movwf	((c:_addrl)),c
	line	964
	
l5228:
;digi.c: 964: Write_b_eep(addrl,cutpowerl);
	movff	(c:_addrl),(c:Write_b_eep@badd)
	clrf	((c:Write_b_eep@badd+1)),c
	movff	(c:_cutpowerl),(c:Write_b_eep@bdat)
	call	_Write_b_eep	;wreg free
	line	965
	
l5230:
;digi.c: 965: Busy_eep();
	call	_Busy_eep	;wreg free
	line	966
	
l5232:
;digi.c: 966: GIE = 1;
	bsf	c:(32663/8),(32663)&7	;volatile
	goto	l5234
	line	972
	
l310:
	line	973
	
l5234:
;digi.c: 972: }
;digi.c: 973: if(( RD1 == 0 ) && ( cnt == 0 ))
	btfsc	c:(31769/8),(31769)&7	;volatile
	goto	u6541
	goto	u6540
u6541:
	goto	l321
u6540:
	
l5236:
	tstfsz	((c:_cnt)),c
	goto	u6551
	goto	u6550
u6551:
	goto	l321
u6550:
	line	976
	
l5238:
;digi.c: 974: {
;digi.c: 976: for (debounce = 0; debounce <= 99; debounce ++)
	movlw	low(0)
	movwf	((c:_debounce)),c
	
l5240:
	movlw	(064h-1)
	cpfsgt	((c:_debounce)),c
	goto	u6561
	goto	u6560
u6561:
	goto	l5244
u6560:
	goto	l321
	
l5242:
	goto	l321
	line	977
	
l322:
	line	978
	
l5244:
;digi.c: 977: {
;digi.c: 978: _delay(250);
	movlw	50
u7717:
	nop
decfsz	wreg,f
	goto	u7717

	line	976
	
l5246:
	incf	((c:_debounce)),c
	
l5248:
	movlw	(064h-1)
	cpfsgt	((c:_debounce)),c
	goto	u6571
	goto	u6570
u6571:
	goto	l5244
u6570:
	goto	l321
	
l323:
	line	980
	
l321:
	line	981
;digi.c: 979: }
;digi.c: 980: }
;digi.c: 981: if( RD1 == 0 )
	btfsc	c:(31769/8),(31769)&7	;volatile
	goto	u6581
	goto	u6580
u6581:
	goto	l5292
u6580:
	line	983
	
l5250:
;digi.c: 982: {
;digi.c: 983: cutmode = cutmode + 1;
	incf	((c:_cutmode)),c,w
	movwf	((c:_cutmode)),c
	line	984
;digi.c: 984: while(RD1 == 0)
	goto	l325
	
l326:
	line	987
	
l5252:
;digi.c: 985: {
;digi.c: 987: if(cutmode == 0x04)
	movf	((c:_cutmode)),c,w
	xorlw	4

	btfss	status,2
	goto	u6591
	goto	u6590
u6591:
	goto	l5256
u6590:
	line	989
	
l5254:
;digi.c: 988: {
;digi.c: 989: cutmode = 0x00;
	movlw	low(0)
	movwf	((c:_cutmode)),c
	goto	l5256
	line	991
	
l327:
	line	993
	
l5256:
;digi.c: 991: }
;digi.c: 993: if( cutmode == 0x00 )
	tstfsz	((c:_cutmode)),c
	goto	u6601
	goto	u6600
u6601:
	goto	l5260
u6600:
	line	995
	
l5258:
;digi.c: 994: {
;digi.c: 995: values[5] = 0x20;
	movlw	low(020h)
	movwf	(0+((c:_values)+05h)),c	;volatile
	line	996
;digi.c: 996: values[4] = 0x10;
	movlw	low(010h)
	movwf	(0+((c:_values)+04h)),c	;volatile
	goto	l5260
	line	998
	
l328:
	line	999
	
l5260:
;digi.c: 998: }
;digi.c: 999: if( cutmode == 0x01 )
	decf	((c:_cutmode)),c,w

	btfss	status,2
	goto	u6611
	goto	u6610
u6611:
	goto	l5264
u6610:
	line	1002
	
l5262:
;digi.c: 1000: {
;digi.c: 1002: values[5] = 0x40;
	movlw	low(040h)
	movwf	(0+((c:_values)+05h)),c	;volatile
	line	1003
;digi.c: 1003: values[4] = 0x10;
	movlw	low(010h)
	movwf	(0+((c:_values)+04h)),c	;volatile
	goto	l5264
	line	1004
	
l329:
	line	1005
	
l5264:
;digi.c: 1004: }
;digi.c: 1005: if( cutmode == 0x02 )
	movf	((c:_cutmode)),c,w
	xorlw	2

	btfss	status,2
	goto	u6621
	goto	u6620
u6621:
	goto	l5268
u6620:
	line	1007
	
l5266:
;digi.c: 1006: {
;digi.c: 1007: values[4] = 0x20;
	movlw	low(020h)
	movwf	(0+((c:_values)+04h)),c	;volatile
	line	1008
;digi.c: 1008: values[5] = 0x10;
	movlw	low(010h)
	movwf	(0+((c:_values)+05h)),c	;volatile
	goto	l5268
	line	1010
	
l330:
	line	1012
	
l5268:
;digi.c: 1010: }
;digi.c: 1012: if( cutmode == 0x03 )
	movf	((c:_cutmode)),c,w
	xorlw	3

	btfss	status,2
	goto	u6631
	goto	u6630
u6631:
	goto	l331
u6630:
	line	1014
	
l5270:
;digi.c: 1013: {
;digi.c: 1014: values[4] = 0x40;
	movlw	low(040h)
	movwf	(0+((c:_values)+04h)),c	;volatile
	line	1015
;digi.c: 1015: values[5] = 0x10;
	movlw	low(010h)
	movwf	(0+((c:_values)+05h)),c	;volatile
	line	1016
	
l331:
	line	1019
;digi.c: 1016: }
;digi.c: 1019: for (debounce = 0; debounce <= 200; debounce ++)
	movlw	low(0)
	movwf	((c:_debounce)),c
	
l5272:
	movlw	(0C9h-1)
	cpfsgt	((c:_debounce)),c
	goto	u6641
	goto	u6640
u6641:
	goto	l5276
u6640:
	goto	l325
	
l5274:
	goto	l325
	line	1020
	
l332:
	line	1021
	
l5276:
;digi.c: 1020: {
;digi.c: 1021: _delay(25000);
	movlw	25
	movlb	0	; () banked
movwf	(??_main+0+0)&0ffh,f
	movlw	93
u7727:
	decfsz	wreg,f
	goto	u7727
	decfsz	(??_main+0+0)&0ffh,f
	goto	u7727

	line	1019
	
l5278:
	incf	((c:_debounce)),c
	
l5280:
	movlw	(0C9h-1)
	cpfsgt	((c:_debounce)),c
	goto	u6651
	goto	u6650
u6651:
	goto	l5276
u6650:
	goto	l325
	
l333:
	line	1023
	
l325:
	line	984
	btfss	c:(31769/8),(31769)&7	;volatile
	goto	u6661
	goto	u6660
u6661:
	goto	l5252
u6660:
	goto	l5282
	
l334:
	line	1024
	
l5282:
;digi.c: 1022: }
;digi.c: 1023: }
;digi.c: 1024: addrl = (progno * 8) + 3;
	movf	((c:_progno)),c,w
	mullw	08h
	movf	(prodl),c,w
	addlw	low(03h)
	movwf	((c:_addrl)),c
	line	1025
	
l5284:
;digi.c: 1025: GIE = 0;
	bcf	c:(32663/8),(32663)&7	;volatile
	line	1026
	
l5286:
;digi.c: 1026: Write_b_eep(addrl,cutmode);
	movff	(c:_addrl),(c:Write_b_eep@badd)
	clrf	((c:Write_b_eep@badd+1)),c
	movff	(c:_cutmode),(c:Write_b_eep@bdat)
	call	_Write_b_eep	;wreg free
	line	1027
	
l5288:
;digi.c: 1027: Busy_eep();
	call	_Busy_eep	;wreg free
	line	1028
	
l5290:
;digi.c: 1028: GIE = 1;
	bsf	c:(32663/8),(32663)&7	;volatile
	goto	l5292
	line	1031
	
l324:
	line	1032
	
l5292:
;digi.c: 1031: }
;digi.c: 1032: if( RD2 == 0 )
	btfsc	c:(31770/8),(31770)&7	;volatile
	goto	u6671
	goto	u6670
u6671:
	goto	l5358
u6670:
	goto	l336
	line	1034
	
l5294:
;digi.c: 1033: {
;digi.c: 1034: while(RD2 == 0)
	goto	l336
	
l337:
	line	1036
	
l5296:
;digi.c: 1035: {
;digi.c: 1036: if( coagpower < 150 )
	movlw	(096h)&0ffh
	subwf	((c:_coagpower)),c,w
	btfsc	status,0
	goto	u6681
	goto	u6680
u6681:
	goto	l5320
u6680:
	line	1039
	
l5298:
;digi.c: 1037: {
;digi.c: 1039: coagpower = coagpower + 1;
	incf	((c:_coagpower)),c,w
	movwf	((c:_coagpower)),c
	line	1041
	
l5300:
;digi.c: 1041: hundreds = coagpower / 100;
	movff	(c:_coagpower),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(064h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(064h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	movwf	((c:_hundreds)),c
	line	1042
	
l5302:
;digi.c: 1042: temp = (coagpower - ( hundreds * 100 ));
	movf	((c:_hundreds)),c,w
	mullw	064h
	movf	(prodl),c,w
	sublw	0
	addwf	((c:_coagpower)),c,w
	movwf	((c:_temp)),c
	line	1043
	
l5304:
;digi.c: 1043: units = temp % 10;
	movff	(c:_temp),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	movwf	((c:_units)),c
	line	1044
	
l5306:
;digi.c: 1044: units = units << 4;
	swapf	((c:_units)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:_units)),c
	line	1045
	
l5308:
;digi.c: 1045: values[12] = units;
	movff	(c:_units),0+((c:_values)+0Ch)	;volatile
	line	1046
	
l5310:
;digi.c: 1046: tens = temp / 10;
	movff	(c:_temp),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	movwf	((c:_tens)),c
	line	1047
	
l5312:
;digi.c: 1047: tens = tens << 4;
	swapf	((c:_tens)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:_tens)),c
	line	1048
	
l5314:
;digi.c: 1048: values[10] = tens;
	movff	(c:_tens),0+((c:_values)+0Ah)	;volatile
	line	1049
	
l5316:
;digi.c: 1049: hundreds = hundreds << 4;
	swapf	((c:_hundreds)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:_hundreds)),c
	line	1050
	
l5318:
;digi.c: 1050: values[9] = hundreds;
	movff	(c:_hundreds),0+((c:_values)+09h)	;volatile
	goto	l5320
	line	1052
	
l338:
	line	1053
	
l5320:
;digi.c: 1052: }
;digi.c: 1053: if(cnt == 0)
	tstfsz	((c:_cnt)),c
	goto	u6691
	goto	u6690
u6691:
	goto	l5336
u6690:
	line	1055
	
l5322:
;digi.c: 1054: {
;digi.c: 1055: for (debounce = 0; debounce <= 200; debounce ++)
	movlw	low(0)
	movwf	((c:_debounce)),c
	
l5324:
	movlw	(0C9h-1)
	cpfsgt	((c:_debounce)),c
	goto	u6701
	goto	u6700
u6701:
	goto	l5328
u6700:
	goto	l5334
	
l5326:
	goto	l5334
	line	1056
	
l340:
	line	1057
	
l5328:
;digi.c: 1056: {
;digi.c: 1057: _delay(30000);
	movlw	30
	movlb	0	; () banked
movwf	(??_main+0+0)&0ffh,f
	movlw	60
u7737:
	decfsz	wreg,f
	goto	u7737
	decfsz	(??_main+0+0)&0ffh,f
	goto	u7737
	nop2

	line	1055
	
l5330:
	incf	((c:_debounce)),c
	
l5332:
	movlw	(0C9h-1)
	cpfsgt	((c:_debounce)),c
	goto	u6711
	goto	u6710
u6711:
	goto	l5328
u6710:
	goto	l5334
	
l341:
	line	1059
	
l5334:
;digi.c: 1058: }
;digi.c: 1059: cnt = cnt + 1;
	incf	((c:_cnt)),c,w
	movwf	((c:_cnt)),c
	line	1060
;digi.c: 1060: }
	goto	l336
	line	1061
	
l339:
	line	1064
	
l5336:
;digi.c: 1061: else
;digi.c: 1062: {
;digi.c: 1064: for (debounce = 0; debounce <= 200; debounce ++)
	movlw	low(0)
	movwf	((c:_debounce)),c
	
l5338:
	movlw	(0C9h-1)
	cpfsgt	((c:_debounce)),c
	goto	u6721
	goto	u6720
u6721:
	goto	l5342
u6720:
	goto	l336
	
l5340:
	goto	l336
	line	1065
	
l343:
	line	1066
	
l5342:
;digi.c: 1065: {
;digi.c: 1066: _delay(3000);
	movlw	3
	movlb	0	; () banked
movwf	(??_main+0+0)&0ffh,f
	movlw	236
u7747:
	decfsz	wreg,f
	goto	u7747
	decfsz	(??_main+0+0)&0ffh,f
	goto	u7747

	line	1064
	
l5344:
	incf	((c:_debounce)),c
	
l5346:
	movlw	(0C9h-1)
	cpfsgt	((c:_debounce)),c
	goto	u6731
	goto	u6730
u6731:
	goto	l5342
u6730:
	goto	l336
	
l344:
	goto	l336
	line	1068
	
l342:
	line	1069
	
l336:
	line	1034
	btfss	c:(31770/8),(31770)&7	;volatile
	goto	u6741
	goto	u6740
u6741:
	goto	l5296
u6740:
	goto	l5348
	
l345:
	line	1070
	
l5348:
;digi.c: 1067: }
;digi.c: 1068: }
;digi.c: 1069: }
;digi.c: 1070: addrl = (progno * 8) + 4;
	movf	((c:_progno)),c,w
	mullw	08h
	movf	(prodl),c,w
	addlw	low(04h)
	movwf	((c:_addrl)),c
	line	1071
	
l5350:
;digi.c: 1071: GIE = 0;
	bcf	c:(32663/8),(32663)&7	;volatile
	line	1072
	
l5352:
;digi.c: 1072: Write_b_eep(addrl,coagpower);
	movff	(c:_addrl),(c:Write_b_eep@badd)
	clrf	((c:Write_b_eep@badd+1)),c
	movff	(c:_coagpower),(c:Write_b_eep@bdat)
	call	_Write_b_eep	;wreg free
	line	1073
	
l5354:
;digi.c: 1073: Busy_eep();
	call	_Busy_eep	;wreg free
	line	1074
	
l5356:
;digi.c: 1074: GIE = 1;
	bsf	c:(32663/8),(32663)&7	;volatile
	goto	l5358
	line	1080
	
l335:
	line	1081
	
l5358:
;digi.c: 1080: }
;digi.c: 1081: if( RD3 == 0 )
	btfsc	c:(31771/8),(31771)&7	;volatile
	goto	u6751
	goto	u6750
u6751:
	goto	l5424
u6750:
	goto	l347
	line	1083
	
l5360:
;digi.c: 1082: {
;digi.c: 1083: while(RD3 == 0)
	goto	l347
	
l348:
	line	1085
	
l5362:
;digi.c: 1084: {
;digi.c: 1085: if( coagpower > 0 )
	movf	((c:_coagpower)),c,w
	btfsc	status,2
	goto	u6761
	goto	u6760
u6761:
	goto	l5386
u6760:
	line	1088
	
l5364:
;digi.c: 1086: {
;digi.c: 1088: coagpower = coagpower - 1;
	decf	((c:_coagpower)),c,w
	movwf	((c:_coagpower)),c
	line	1089
	
l5366:
;digi.c: 1089: hundreds = coagpower / 100;
	movff	(c:_coagpower),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(064h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(064h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	movwf	((c:_hundreds)),c
	line	1090
	
l5368:
;digi.c: 1090: temp = (coagpower - ( hundreds * 100 ));
	movf	((c:_hundreds)),c,w
	mullw	064h
	movf	(prodl),c,w
	sublw	0
	addwf	((c:_coagpower)),c,w
	movwf	((c:_temp)),c
	line	1091
	
l5370:
;digi.c: 1091: units = temp % 10;
	movff	(c:_temp),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	movwf	((c:_units)),c
	line	1092
	
l5372:
;digi.c: 1092: units = units << 4;
	swapf	((c:_units)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:_units)),c
	line	1093
	
l5374:
;digi.c: 1093: values[12] = units;
	movff	(c:_units),0+((c:_values)+0Ch)	;volatile
	line	1094
	
l5376:
;digi.c: 1094: tens = temp / 10;
	movff	(c:_temp),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	movwf	((c:_tens)),c
	line	1095
	
l5378:
;digi.c: 1095: tens = tens << 4;
	swapf	((c:_tens)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:_tens)),c
	line	1096
	
l5380:
;digi.c: 1096: values[10] = tens;
	movff	(c:_tens),0+((c:_values)+0Ah)	;volatile
	line	1097
	
l5382:
;digi.c: 1097: hundreds = hundreds << 4;
	swapf	((c:_hundreds)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:_hundreds)),c
	line	1098
	
l5384:
;digi.c: 1098: values[9] = hundreds;
	movff	(c:_hundreds),0+((c:_values)+09h)	;volatile
	goto	l5386
	line	1101
	
l349:
	line	1102
	
l5386:
;digi.c: 1101: }
;digi.c: 1102: if(cnt == 0)
	tstfsz	((c:_cnt)),c
	goto	u6771
	goto	u6770
u6771:
	goto	l5402
u6770:
	line	1104
	
l5388:
;digi.c: 1103: {
;digi.c: 1104: for (debounce = 0; debounce <= 200; debounce ++)
	movlw	low(0)
	movwf	((c:_debounce)),c
	
l5390:
	movlw	(0C9h-1)
	cpfsgt	((c:_debounce)),c
	goto	u6781
	goto	u6780
u6781:
	goto	l5394
u6780:
	goto	l5400
	
l5392:
	goto	l5400
	line	1105
	
l351:
	line	1106
	
l5394:
;digi.c: 1105: {
;digi.c: 1106: _delay(30000);
	movlw	30
	movlb	0	; () banked
movwf	(??_main+0+0)&0ffh,f
	movlw	60
u7757:
	decfsz	wreg,f
	goto	u7757
	decfsz	(??_main+0+0)&0ffh,f
	goto	u7757
	nop2

	line	1104
	
l5396:
	incf	((c:_debounce)),c
	
l5398:
	movlw	(0C9h-1)
	cpfsgt	((c:_debounce)),c
	goto	u6791
	goto	u6790
u6791:
	goto	l5394
u6790:
	goto	l5400
	
l352:
	line	1108
	
l5400:
;digi.c: 1107: }
;digi.c: 1108: cnt = cnt + 1;
	incf	((c:_cnt)),c,w
	movwf	((c:_cnt)),c
	line	1109
;digi.c: 1109: }
	goto	l347
	line	1110
	
l350:
	line	1113
	
l5402:
;digi.c: 1110: else
;digi.c: 1111: {
;digi.c: 1113: for (debounce = 0; debounce <= 200; debounce ++)
	movlw	low(0)
	movwf	((c:_debounce)),c
	
l5404:
	movlw	(0C9h-1)
	cpfsgt	((c:_debounce)),c
	goto	u6801
	goto	u6800
u6801:
	goto	l5408
u6800:
	goto	l347
	
l5406:
	goto	l347
	line	1114
	
l354:
	line	1115
	
l5408:
;digi.c: 1114: {
;digi.c: 1115: _delay(3000);
	movlw	3
	movlb	0	; () banked
movwf	(??_main+0+0)&0ffh,f
	movlw	236
u7767:
	decfsz	wreg,f
	goto	u7767
	decfsz	(??_main+0+0)&0ffh,f
	goto	u7767

	line	1113
	
l5410:
	incf	((c:_debounce)),c
	
l5412:
	movlw	(0C9h-1)
	cpfsgt	((c:_debounce)),c
	goto	u6811
	goto	u6810
u6811:
	goto	l5408
u6810:
	goto	l347
	
l355:
	goto	l347
	line	1117
	
l353:
	line	1118
	
l347:
	line	1083
	btfss	c:(31771/8),(31771)&7	;volatile
	goto	u6821
	goto	u6820
u6821:
	goto	l5362
u6820:
	goto	l5414
	
l356:
	line	1119
	
l5414:
;digi.c: 1116: }
;digi.c: 1117: }
;digi.c: 1118: }
;digi.c: 1119: addrl = (progno * 8) + 4;
	movf	((c:_progno)),c,w
	mullw	08h
	movf	(prodl),c,w
	addlw	low(04h)
	movwf	((c:_addrl)),c
	line	1120
	
l5416:
;digi.c: 1120: GIE = 0;
	bcf	c:(32663/8),(32663)&7	;volatile
	line	1121
	
l5418:
;digi.c: 1121: Write_b_eep(addrl,coagpower);
	movff	(c:_addrl),(c:Write_b_eep@badd)
	clrf	((c:Write_b_eep@badd+1)),c
	movff	(c:_coagpower),(c:Write_b_eep@bdat)
	call	_Write_b_eep	;wreg free
	line	1122
	
l5420:
;digi.c: 1122: Busy_eep();
	call	_Busy_eep	;wreg free
	line	1123
	
l5422:
;digi.c: 1123: GIE = 1;
	bsf	c:(32663/8),(32663)&7	;volatile
	goto	l5424
	line	1126
	
l346:
	line	1130
	
l5424:
;digi.c: 1126: }
;digi.c: 1130: if(( RC5 == 0 ) && ( cnt == 0 ))
	btfsc	c:(31765/8),(31765)&7	;volatile
	goto	u6831
	goto	u6830
u6831:
	goto	l357
u6830:
	
l5426:
	tstfsz	((c:_cnt)),c
	goto	u6841
	goto	u6840
u6841:
	goto	l357
u6840:
	line	1133
	
l5428:
;digi.c: 1131: {
;digi.c: 1133: for (debounce = 0; debounce <= 200; debounce ++)
	movlw	low(0)
	movwf	((c:_debounce)),c
	
l5430:
	movlw	(0C9h-1)
	cpfsgt	((c:_debounce)),c
	goto	u6851
	goto	u6850
u6851:
	goto	l5434
u6850:
	goto	l357
	
l5432:
	goto	l357
	line	1134
	
l358:
	line	1135
	
l5434:
;digi.c: 1134: {
;digi.c: 1135: _delay(250);
	movlw	50
u7777:
	nop
decfsz	wreg,f
	goto	u7777

	line	1133
	
l5436:
	incf	((c:_debounce)),c
	
l5438:
	movlw	(0C9h-1)
	cpfsgt	((c:_debounce)),c
	goto	u6861
	goto	u6860
u6861:
	goto	l5434
u6860:
	goto	l357
	
l359:
	line	1137
	
l357:
	line	1138
;digi.c: 1136: }
;digi.c: 1137: }
;digi.c: 1138: if( RC5 == 0 )
	btfsc	c:(31765/8),(31765)&7	;volatile
	goto	u6871
	goto	u6870
u6871:
	goto	l5470
u6870:
	line	1140
	
l5440:
;digi.c: 1139: {
;digi.c: 1140: coagmode = coagmode + 1;
	incf	((c:_coagmode)),c,w
	movwf	((c:_coagmode)),c
	line	1142
;digi.c: 1142: while(RC5 == 0)
	goto	l5458
	
l362:
	line	1145
	
l5442:
;digi.c: 1143: {
;digi.c: 1145: if( coagmode == 0x03 )
	movf	((c:_coagmode)),c,w
	xorlw	3

	btfss	status,2
	goto	u6881
	goto	u6880
u6881:
	goto	l5446
u6880:
	line	1147
	
l5444:
;digi.c: 1146: {
;digi.c: 1147: coagmode = 0x00;
	movlw	low(0)
	movwf	((c:_coagmode)),c
	goto	l5446
	line	1149
	
l363:
	line	1150
	
l5446:
;digi.c: 1149: }
;digi.c: 1150: if( coagmode == 0x00 )
	tstfsz	((c:_coagmode)),c
	goto	u6891
	goto	u6890
u6891:
	goto	l5450
u6890:
	line	1152
	
l5448:
;digi.c: 1151: {
;digi.c: 1152: values[7] = 0x20;
	movlw	low(020h)
	movwf	(0+((c:_values)+07h)),c	;volatile
	goto	l5450
	line	1154
	
l364:
	line	1155
	
l5450:
;digi.c: 1154: }
;digi.c: 1155: if( coagmode == 0x01 )
	decf	((c:_coagmode)),c,w

	btfss	status,2
	goto	u6901
	goto	u6900
u6901:
	goto	l5454
u6900:
	line	1157
	
l5452:
;digi.c: 1156: {
;digi.c: 1157: values[7] = 0x40;
	movlw	low(040h)
	movwf	(0+((c:_values)+07h)),c	;volatile
	goto	l5454
	line	1159
	
l365:
	line	1160
	
l5454:
;digi.c: 1159: }
;digi.c: 1160: if( coagmode == 0x02 )
	movf	((c:_coagmode)),c,w
	xorlw	2

	btfss	status,2
	goto	u6911
	goto	u6910
u6911:
	goto	l5458
u6910:
	line	1162
	
l5456:
;digi.c: 1161: {
;digi.c: 1162: values[7] = 0x10;
	movlw	low(010h)
	movwf	(0+((c:_values)+07h)),c	;volatile
	goto	l5458
	line	1164
	
l366:
	goto	l5458
	line	1168
	
l361:
	line	1142
	
l5458:
	btfss	c:(31765/8),(31765)&7	;volatile
	goto	u6921
	goto	u6920
u6921:
	goto	l5442
u6920:
	goto	l5460
	
l367:
	line	1169
	
l5460:
;digi.c: 1164: }
;digi.c: 1168: }
;digi.c: 1169: addrl = (progno * 8) + 5;
	movf	((c:_progno)),c,w
	mullw	08h
	movf	(prodl),c,w
	addlw	low(05h)
	movwf	((c:_addrl)),c
	line	1170
	
l5462:
;digi.c: 1170: GIE = 0;
	bcf	c:(32663/8),(32663)&7	;volatile
	line	1171
	
l5464:
;digi.c: 1171: Write_b_eep(addrl,coagmode);
	movff	(c:_addrl),(c:Write_b_eep@badd)
	clrf	((c:Write_b_eep@badd+1)),c
	movff	(c:_coagmode),(c:Write_b_eep@bdat)
	call	_Write_b_eep	;wreg free
	line	1172
	
l5466:
;digi.c: 1172: Busy_eep();
	call	_Busy_eep	;wreg free
	line	1173
	
l5468:
;digi.c: 1173: GIE =1;
	bsf	c:(32663/8),(32663)&7	;volatile
	goto	l5470
	line	1177
	
l360:
	line	1178
	
l5470:
;digi.c: 1177: }
;digi.c: 1178: if(( RC6 == 0 ) && ( cnt == 0 ))
	btfsc	c:(31766/8),(31766)&7	;volatile
	goto	u6931
	goto	u6930
u6931:
	goto	l368
u6930:
	
l5472:
	tstfsz	((c:_cnt)),c
	goto	u6941
	goto	u6940
u6941:
	goto	l368
u6940:
	line	1181
	
l5474:
;digi.c: 1179: {
;digi.c: 1181: for (debounce = 0; debounce <= 99; debounce ++)
	movlw	low(0)
	movwf	((c:_debounce)),c
	
l5476:
	movlw	(064h-1)
	cpfsgt	((c:_debounce)),c
	goto	u6951
	goto	u6950
u6951:
	goto	l5480
u6950:
	goto	l368
	
l5478:
	goto	l368
	line	1182
	
l369:
	line	1183
	
l5480:
;digi.c: 1182: {
;digi.c: 1183: _delay(250);
	movlw	50
u7787:
	nop
decfsz	wreg,f
	goto	u7787

	line	1181
	
l5482:
	incf	((c:_debounce)),c
	
l5484:
	movlw	(064h-1)
	cpfsgt	((c:_debounce)),c
	goto	u6961
	goto	u6960
u6961:
	goto	l5480
u6960:
	goto	l368
	
l370:
	line	1185
	
l368:
	line	1186
;digi.c: 1184: }
;digi.c: 1185: }
;digi.c: 1186: if( RC6 == 0 )
	btfsc	c:(31766/8),(31766)&7	;volatile
	goto	u6971
	goto	u6970
u6971:
	goto	l5540
u6970:
	goto	l372
	line	1188
	
l5486:
;digi.c: 1187: {
;digi.c: 1188: while(RC6 == 0)
	goto	l372
	
l373:
	line	1190
	
l5488:
;digi.c: 1189: {
;digi.c: 1190: if( bipopower < 99 )
	movlw	(063h)&0ffh
	subwf	((c:_bipopower)),c,w
	btfsc	status,0
	goto	u6981
	goto	u6980
u6981:
	goto	l5502
u6980:
	line	1192
	
l5490:
;digi.c: 1191: {
;digi.c: 1192: bipopower = bipopower + 1;
	incf	((c:_bipopower)),c,w
	movwf	((c:_bipopower)),c
	line	1193
	
l5492:
;digi.c: 1193: tens = bipopower / 10;
	movff	(c:_bipopower),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	movwf	((c:_tens)),c
	line	1194
	
l5494:
;digi.c: 1194: tens = tens << 4;
	swapf	((c:_tens)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:_tens)),c
	line	1195
	
l5496:
;digi.c: 1195: values[13] = tens;
	movff	(c:_tens),0+((c:_values)+0Dh)	;volatile
	line	1196
;digi.c: 1196: units = bipopower % 10;
	movff	(c:_bipopower),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	movwf	((c:_units)),c
	line	1197
	
l5498:
;digi.c: 1197: units = units << 4;
	swapf	((c:_units)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:_units)),c
	line	1198
	
l5500:
;digi.c: 1198: values[6] = units;
	movff	(c:_units),0+((c:_values)+06h)	;volatile
	goto	l5502
	line	1199
	
l374:
	line	1200
	
l5502:
;digi.c: 1199: }
;digi.c: 1200: if(cnt == 0)
	tstfsz	((c:_cnt)),c
	goto	u6991
	goto	u6990
u6991:
	goto	l5518
u6990:
	line	1202
	
l5504:
;digi.c: 1201: {
;digi.c: 1202: for (debounce = 0; debounce <= 200; debounce ++)
	movlw	low(0)
	movwf	((c:_debounce)),c
	
l5506:
	movlw	(0C9h-1)
	cpfsgt	((c:_debounce)),c
	goto	u7001
	goto	u7000
u7001:
	goto	l5510
u7000:
	goto	l5516
	
l5508:
	goto	l5516
	line	1203
	
l376:
	line	1204
	
l5510:
;digi.c: 1203: {
;digi.c: 1204: _delay(30000);
	movlw	30
	movlb	0	; () banked
movwf	(??_main+0+0)&0ffh,f
	movlw	60
u7797:
	decfsz	wreg,f
	goto	u7797
	decfsz	(??_main+0+0)&0ffh,f
	goto	u7797
	nop2

	line	1202
	
l5512:
	incf	((c:_debounce)),c
	
l5514:
	movlw	(0C9h-1)
	cpfsgt	((c:_debounce)),c
	goto	u7011
	goto	u7010
u7011:
	goto	l5510
u7010:
	goto	l5516
	
l377:
	line	1206
	
l5516:
;digi.c: 1205: }
;digi.c: 1206: cnt = cnt + 1;
	incf	((c:_cnt)),c,w
	movwf	((c:_cnt)),c
	line	1207
;digi.c: 1207: }
	goto	l372
	line	1208
	
l375:
	line	1211
	
l5518:
;digi.c: 1208: else
;digi.c: 1209: {
;digi.c: 1211: for (debounce = 0; debounce <= 200; debounce ++)
	movlw	low(0)
	movwf	((c:_debounce)),c
	
l5520:
	movlw	(0C9h-1)
	cpfsgt	((c:_debounce)),c
	goto	u7021
	goto	u7020
u7021:
	goto	l5524
u7020:
	goto	l372
	
l5522:
	goto	l372
	line	1212
	
l379:
	line	1213
	
l5524:
;digi.c: 1212: {
;digi.c: 1213: _delay(3000);
	movlw	3
	movlb	0	; () banked
movwf	(??_main+0+0)&0ffh,f
	movlw	236
u7807:
	decfsz	wreg,f
	goto	u7807
	decfsz	(??_main+0+0)&0ffh,f
	goto	u7807

	line	1211
	
l5526:
	incf	((c:_debounce)),c
	
l5528:
	movlw	(0C9h-1)
	cpfsgt	((c:_debounce)),c
	goto	u7031
	goto	u7030
u7031:
	goto	l5524
u7030:
	goto	l372
	
l380:
	goto	l372
	line	1215
	
l378:
	line	1216
	
l372:
	line	1188
	btfss	c:(31766/8),(31766)&7	;volatile
	goto	u7041
	goto	u7040
u7041:
	goto	l5488
u7040:
	goto	l5530
	
l381:
	line	1217
	
l5530:
;digi.c: 1214: }
;digi.c: 1215: }
;digi.c: 1216: }
;digi.c: 1217: addrl = (progno * 8) + 6;
	movf	((c:_progno)),c,w
	mullw	08h
	movf	(prodl),c,w
	addlw	low(06h)
	movwf	((c:_addrl)),c
	line	1218
	
l5532:
;digi.c: 1218: GIE = 0;
	bcf	c:(32663/8),(32663)&7	;volatile
	line	1219
	
l5534:
;digi.c: 1219: Write_b_eep(addrl,bipopower);
	movff	(c:_addrl),(c:Write_b_eep@badd)
	clrf	((c:Write_b_eep@badd+1)),c
	movff	(c:_bipopower),(c:Write_b_eep@bdat)
	call	_Write_b_eep	;wreg free
	line	1220
	
l5536:
;digi.c: 1220: Busy_eep();
	call	_Busy_eep	;wreg free
	line	1221
	
l5538:
;digi.c: 1221: GIE = 1;
	bsf	c:(32663/8),(32663)&7	;volatile
	goto	l5540
	line	1225
	
l371:
	line	1227
	
l5540:
;digi.c: 1225: }
;digi.c: 1227: if(( RC7 == 0 ) && ( cnt == 0 ))
	btfsc	c:(31767/8),(31767)&7	;volatile
	goto	u7051
	goto	u7050
u7051:
	goto	l382
u7050:
	
l5542:
	tstfsz	((c:_cnt)),c
	goto	u7061
	goto	u7060
u7061:
	goto	l382
u7060:
	line	1230
	
l5544:
;digi.c: 1228: {
;digi.c: 1230: for (debounce = 0; debounce <= 99; debounce ++)
	movlw	low(0)
	movwf	((c:_debounce)),c
	
l5546:
	movlw	(064h-1)
	cpfsgt	((c:_debounce)),c
	goto	u7071
	goto	u7070
u7071:
	goto	l5550
u7070:
	goto	l382
	
l5548:
	goto	l382
	line	1231
	
l383:
	line	1232
	
l5550:
;digi.c: 1231: {
;digi.c: 1232: _delay(250);
	movlw	50
u7817:
	nop
decfsz	wreg,f
	goto	u7817

	line	1230
	
l5552:
	incf	((c:_debounce)),c
	
l5554:
	movlw	(064h-1)
	cpfsgt	((c:_debounce)),c
	goto	u7081
	goto	u7080
u7081:
	goto	l5550
u7080:
	goto	l382
	
l384:
	line	1234
	
l382:
	line	1235
;digi.c: 1233: }
;digi.c: 1234: }
;digi.c: 1235: if( RC7 == 0 )
	btfsc	c:(31767/8),(31767)&7	;volatile
	goto	u7091
	goto	u7090
u7091:
	goto	l5610
u7090:
	goto	l386
	line	1237
	
l5556:
;digi.c: 1236: {
;digi.c: 1237: while(RC7 == 0)
	goto	l386
	
l387:
	line	1239
	
l5558:
;digi.c: 1238: {
;digi.c: 1239: if( bipopower > 0 )
	movf	((c:_bipopower)),c,w
	btfsc	status,2
	goto	u7101
	goto	u7100
u7101:
	goto	l5572
u7100:
	line	1241
	
l5560:
;digi.c: 1240: {
;digi.c: 1241: bipopower = bipopower - 1;
	decf	((c:_bipopower)),c,w
	movwf	((c:_bipopower)),c
	line	1242
	
l5562:
;digi.c: 1242: tens = bipopower / 10;
	movff	(c:_bipopower),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	movwf	((c:_tens)),c
	line	1243
	
l5564:
;digi.c: 1243: tens = tens << 4;
	swapf	((c:_tens)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:_tens)),c
	line	1244
	
l5566:
;digi.c: 1244: values[13] = tens;
	movff	(c:_tens),0+((c:_values)+0Dh)	;volatile
	line	1245
;digi.c: 1245: units = bipopower % 10;
	movff	(c:_bipopower),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	movwf	((c:_units)),c
	line	1246
	
l5568:
;digi.c: 1246: units = units << 4;
	swapf	((c:_units)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:_units)),c
	line	1247
	
l5570:
;digi.c: 1247: values[6] = units;
	movff	(c:_units),0+((c:_values)+06h)	;volatile
	goto	l5572
	line	1248
	
l388:
	line	1249
	
l5572:
;digi.c: 1248: }
;digi.c: 1249: if(cnt == 0)
	tstfsz	((c:_cnt)),c
	goto	u7111
	goto	u7110
u7111:
	goto	l5588
u7110:
	line	1251
	
l5574:
;digi.c: 1250: {
;digi.c: 1251: for (debounce = 0; debounce <= 200; debounce ++)
	movlw	low(0)
	movwf	((c:_debounce)),c
	
l5576:
	movlw	(0C9h-1)
	cpfsgt	((c:_debounce)),c
	goto	u7121
	goto	u7120
u7121:
	goto	l5580
u7120:
	goto	l5586
	
l5578:
	goto	l5586
	line	1252
	
l390:
	line	1253
	
l5580:
;digi.c: 1252: {
;digi.c: 1253: _delay(30000);
	movlw	30
	movlb	0	; () banked
movwf	(??_main+0+0)&0ffh,f
	movlw	60
u7827:
	decfsz	wreg,f
	goto	u7827
	decfsz	(??_main+0+0)&0ffh,f
	goto	u7827
	nop2

	line	1251
	
l5582:
	incf	((c:_debounce)),c
	
l5584:
	movlw	(0C9h-1)
	cpfsgt	((c:_debounce)),c
	goto	u7131
	goto	u7130
u7131:
	goto	l5580
u7130:
	goto	l5586
	
l391:
	line	1255
	
l5586:
;digi.c: 1254: }
;digi.c: 1255: cnt = cnt + 1;
	incf	((c:_cnt)),c,w
	movwf	((c:_cnt)),c
	line	1256
;digi.c: 1256: }
	goto	l386
	line	1257
	
l389:
	line	1260
	
l5588:
;digi.c: 1257: else
;digi.c: 1258: {
;digi.c: 1260: for (debounce = 0; debounce <= 200; debounce ++)
	movlw	low(0)
	movwf	((c:_debounce)),c
	
l5590:
	movlw	(0C9h-1)
	cpfsgt	((c:_debounce)),c
	goto	u7141
	goto	u7140
u7141:
	goto	l5594
u7140:
	goto	l386
	
l5592:
	goto	l386
	line	1261
	
l393:
	line	1262
	
l5594:
;digi.c: 1261: {
;digi.c: 1262: _delay(3000);
	movlw	3
	movlb	0	; () banked
movwf	(??_main+0+0)&0ffh,f
	movlw	236
u7837:
	decfsz	wreg,f
	goto	u7837
	decfsz	(??_main+0+0)&0ffh,f
	goto	u7837

	line	1260
	
l5596:
	incf	((c:_debounce)),c
	
l5598:
	movlw	(0C9h-1)
	cpfsgt	((c:_debounce)),c
	goto	u7151
	goto	u7150
u7151:
	goto	l5594
u7150:
	goto	l386
	
l394:
	goto	l386
	line	1264
	
l392:
	line	1265
	
l386:
	line	1237
	btfss	c:(31767/8),(31767)&7	;volatile
	goto	u7161
	goto	u7160
u7161:
	goto	l5558
u7160:
	goto	l5600
	
l395:
	line	1266
	
l5600:
;digi.c: 1263: }
;digi.c: 1264: }
;digi.c: 1265: }
;digi.c: 1266: addrl = (progno * 8) + 6;
	movf	((c:_progno)),c,w
	mullw	08h
	movf	(prodl),c,w
	addlw	low(06h)
	movwf	((c:_addrl)),c
	line	1267
	
l5602:
;digi.c: 1267: GIE = 0;
	bcf	c:(32663/8),(32663)&7	;volatile
	line	1268
	
l5604:
;digi.c: 1268: Write_b_eep(addrl,bipopower);
	movff	(c:_addrl),(c:Write_b_eep@badd)
	clrf	((c:Write_b_eep@badd+1)),c
	movff	(c:_bipopower),(c:Write_b_eep@bdat)
	call	_Write_b_eep	;wreg free
	line	1269
	
l5606:
;digi.c: 1269: Busy_eep();
	call	_Busy_eep	;wreg free
	line	1270
	
l5608:
;digi.c: 1270: GIE = 1;
	bsf	c:(32663/8),(32663)&7	;volatile
	goto	l5610
	line	1275
	
l385:
	line	1276
	
l5610:
;digi.c: 1275: }
;digi.c: 1276: if((RD4 == 0 ) && ( cnt == 0 ))
	btfsc	c:(31772/8),(31772)&7	;volatile
	goto	u7171
	goto	u7170
u7171:
	goto	l396
u7170:
	
l5612:
	tstfsz	((c:_cnt)),c
	goto	u7181
	goto	u7180
u7181:
	goto	l396
u7180:
	line	1279
	
l5614:
;digi.c: 1277: {
;digi.c: 1279: for (debounce = 0; debounce <= 99; debounce ++)
	movlw	low(0)
	movwf	((c:_debounce)),c
	
l5616:
	movlw	(064h-1)
	cpfsgt	((c:_debounce)),c
	goto	u7191
	goto	u7190
u7191:
	goto	l5620
u7190:
	goto	l396
	
l5618:
	goto	l396
	line	1280
	
l397:
	line	1281
	
l5620:
;digi.c: 1280: {
;digi.c: 1281: _delay(250);
	movlw	50
u7847:
	nop
decfsz	wreg,f
	goto	u7847

	line	1279
	
l5622:
	incf	((c:_debounce)),c
	
l5624:
	movlw	(064h-1)
	cpfsgt	((c:_debounce)),c
	goto	u7201
	goto	u7200
u7201:
	goto	l5620
u7200:
	goto	l396
	
l398:
	line	1283
	
l396:
	line	1284
;digi.c: 1282: }
;digi.c: 1283: }
;digi.c: 1284: if(RD4 == 0 )
	btfsc	c:(31772/8),(31772)&7	;volatile
	goto	u7211
	goto	u7210
u7211:
	goto	l4434
u7210:
	line	1286
	
l5626:
;digi.c: 1285: {
;digi.c: 1286: bipomode = bipomode + 1;
	incf	((c:_bipomode)),c,w
	movwf	((c:_bipomode)),c
	line	1287
;digi.c: 1287: while(RD4 = 0);
	goto	l400
	
l401:
	
l400:
	bcf	c:(31772/8),(31772)&7	;volatile
	btfsc	c:(31772/8),(31772)&7	;volatile
	goto	u7221
	goto	u7220
u7221:
	goto	l400
u7220:
	goto	l5628
	
l402:
	line	1291
	
l5628:
;digi.c: 1288: {
;digi.c: 1291: if( bipomode == 0X03 )
	movf	((c:_bipomode)),c,w
	xorlw	3

	btfss	status,2
	goto	u7231
	goto	u7230
u7231:
	goto	l5632
u7230:
	line	1293
	
l5630:
;digi.c: 1292: {
;digi.c: 1293: bipomode = 0x00;
	movlw	low(0)
	movwf	((c:_bipomode)),c
	goto	l5632
	line	1295
	
l403:
	line	1296
	
l5632:
;digi.c: 1295: }
;digi.c: 1296: if( bipomode == 0x00 )
	tstfsz	((c:_bipomode)),c
	goto	u7241
	goto	u7240
u7241:
	goto	l5636
u7240:
	line	1298
	
l5634:
;digi.c: 1297: {
;digi.c: 1298: values[11] = 0x20;
	movlw	low(020h)
	movwf	(0+((c:_values)+0Bh)),c	;volatile
	goto	l5636
	line	1300
	
l404:
	line	1301
	
l5636:
;digi.c: 1300: }
;digi.c: 1301: if( bipomode == 0x01 )
	decf	((c:_bipomode)),c,w

	btfss	status,2
	goto	u7251
	goto	u7250
u7251:
	goto	l5640
u7250:
	line	1303
	
l5638:
;digi.c: 1302: {
;digi.c: 1303: values[11] = 0x40;
	movlw	low(040h)
	movwf	(0+((c:_values)+0Bh)),c	;volatile
	goto	l5640
	line	1305
	
l405:
	line	1306
	
l5640:
;digi.c: 1305: }
;digi.c: 1306: if( bipomode == 0x02 )
	movf	((c:_bipomode)),c,w
	xorlw	2

	btfss	status,2
	goto	u7261
	goto	u7260
u7261:
	goto	l406
u7260:
	line	1308
	
l5642:
;digi.c: 1307: {
;digi.c: 1308: values[11] = 0x10;
	movlw	low(010h)
	movwf	(0+((c:_values)+0Bh)),c	;volatile
	line	1310
	
l406:
	line	1313
;digi.c: 1310: }
;digi.c: 1313: for (debounce = 0; debounce <= 200; debounce ++)
	movlw	low(0)
	movwf	((c:_debounce)),c
	
l5644:
	movlw	(0C9h-1)
	cpfsgt	((c:_debounce)),c
	goto	u7271
	goto	u7270
u7271:
	goto	l5648
u7270:
	goto	l5654
	
l5646:
	goto	l5654
	line	1314
	
l407:
	line	1315
	
l5648:
;digi.c: 1314: {
;digi.c: 1315: _delay(25000);
	movlw	25
	movlb	0	; () banked
movwf	(??_main+0+0)&0ffh,f
	movlw	93
u7857:
	decfsz	wreg,f
	goto	u7857
	decfsz	(??_main+0+0)&0ffh,f
	goto	u7857

	line	1313
	
l5650:
	incf	((c:_debounce)),c
	
l5652:
	movlw	(0C9h-1)
	cpfsgt	((c:_debounce)),c
	goto	u7281
	goto	u7280
u7281:
	goto	l5648
u7280:
	goto	l5654
	
l408:
	line	1319
	
l5654:
;digi.c: 1317: }
;digi.c: 1318: }
;digi.c: 1319: addrl = (progno * 8) + 7;
	movf	((c:_progno)),c,w
	mullw	08h
	movf	(prodl),c,w
	addlw	low(07h)
	movwf	((c:_addrl)),c
	line	1320
	
l5656:
;digi.c: 1320: GIE = 0;
	bcf	c:(32663/8),(32663)&7	;volatile
	line	1321
	
l5658:
;digi.c: 1321: Write_b_eep(addrl,bipomode);
	movff	(c:_addrl),(c:Write_b_eep@badd)
	clrf	((c:Write_b_eep@badd+1)),c
	movff	(c:_bipomode),(c:Write_b_eep@bdat)
	call	_Write_b_eep	;wreg free
	line	1322
	
l5660:
;digi.c: 1322: Busy_eep();
	call	_Busy_eep	;wreg free
	line	1323
	
l5662:
;digi.c: 1323: GIE = 1;
	bsf	c:(32663/8),(32663)&7	;volatile
	goto	l4434
	line	1325
	
l399:
	goto	l4434
	line	1327
	
l409:
	line	57
	goto	l4434
	
l410:
	line	1328
	
l411:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_sqrt

;; *************** function _sqrt *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\sqrt.c"
;; Parameters:    Size  Location     Type
;;  y               3   40[COMRAM] 
;; Auto vars:     Size  Location     Type
;;  x               3   56[COMRAM] 
;;  q               3   53[COMRAM] 
;;  z               3   49[COMRAM] 
;;  og              3   46[COMRAM] 
;;  i               1   52[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   40[COMRAM] unsigned char 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___ftge
;;		___ftmul
;;		___ftsub
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\sqrt.c"
	line	13
global __ptext1
__ptext1:
psect	text1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\sqrt.c"
	line	13
	global	__size_of_sqrt
	__size_of_sqrt	equ	__end_of_sqrt-_sqrt
	
_sqrt:
;incstack = 0
	opt	stack 26
	dw	0FFFFh
	line	19
	
l2908:
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
	goto	u3011
	goto	u3010
u3011:
	goto	l998
u3010:
	line	20
	
l2910:
	movf	((c:sqrt@y+2)),c,w
	xorlw	80h
	addlw	-(low highword(float24(0.0000000000000000)))^80h
	
	bnz	u3025
	movlw	high(float24(0.0000000000000000))
	subwf	((c:sqrt@y+1)),c,w
	bnz	u3025
	movlw	low(float24(0.0000000000000000))
	subwf	((c:sqrt@y)),c,w
u3025:
	btfsc	status,0
	goto	u3021
	goto	u3020
u3021:
	goto	l999
u3020:
	line	21
	
l2912:
	movlw	high(021h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_errno+1))&0ffh
	movlw	low(021h)
	movlb	0	; () banked
	movwf	((_errno))&0ffh
	
l999:
	line	22
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?_sqrt)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?_sqrt+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?_sqrt+2)),c

	goto	l1000
	
l2914:
	goto	l1000
	line	23
	
l998:
	line	24
	movff	(c:sqrt@y),(c:sqrt@z)
	movff	(c:sqrt@y+1),(c:sqrt@z+1)
	movff	(c:sqrt@y+2),(c:sqrt@z+2)
	line	30
	
l2916:
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
	
l2918:
	bcf	status,0
	rrcf	((c:sqrt@x+2)),c
	rrcf	((c:sqrt@x+1)),c
	rrcf	((c:sqrt@x)),c
	line	32
	
l2920:
	movlw	low(08000h)
	subwf	((c:sqrt@z)),c
	movlw	high(08000h)
	subwfb	((c:sqrt@z+1)),c
	movlw	low highword(08000h)
	subwfb	((c:sqrt@z+2)),c

	line	34
	
l2922:
	movlw	low(04h)
	movwf	((c:sqrt@i)),c
	goto	l2924
	line	35
	
l1001:
	line	36
	
l2924:
	movff	(c:sqrt@x),(c:sqrt@og)
	movff	(c:sqrt@x+1),(c:sqrt@og+1)
	movff	(c:sqrt@x+2),(c:sqrt@og+2)
	line	37
	
l2926:
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
	
l2928:
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
	
l2930:
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
	
l2932:
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
	
l2934:
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
	
l2936:
	decfsz	((c:sqrt@i)),c
	
	goto	l2924
	goto	l2938
	
l1002:
	line	43
	
l2938:
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
	goto	l1000
	
l2940:
	line	44
	
l1000:
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
;;  f1              3   34[COMRAM] float 
;;  f2              3   37[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   34[COMRAM] float 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftadd
;; This function is called by:
;;		_sqrt
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftsub.c"
	line	20
global __ptext2
__ptext2:
psect	text2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftsub.c"
	line	20
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:
;incstack = 0
	opt	stack 26
	dw	0FFFFh
	line	23
	
l2878:
	movlw	low(0800000h)
	xorwf	((c:___ftsub@f2)),c
	movlw	high(0800000h)
	xorwf	((c:___ftsub@f2+1)),c
	movlw	low highword(0800000h)
	xorwf	((c:___ftsub@f2+2)),c

	line	24
	
l2880:
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
	goto	l860
	
l2882:
	line	25
	
l860:
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
;;  f1              3   22[COMRAM] float 
;;  f2              3   25[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   33[COMRAM] unsigned char 
;;  exp2            1   32[COMRAM] unsigned char 
;;  sign            1   31[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   22[COMRAM] float 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		___ftsub
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
global __ptext3
__ptext3:
psect	text3
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:
;incstack = 0
	opt	stack 26
	dw	0FFFFh
	line	90
	
l2760:
	movff	(c:___ftadd@f1+2),??___ftadd+0+0
	clrf	(??___ftadd+0+0+1)&0ffh,c
	clrf	(??___ftadd+0+0+2)&0ffh,c
	rlcf	((c:___ftadd@f1+1)),c,w
	rlcf	(??___ftadd+0+0)&0ffh,c
	bnc	u2711
	bsf	(??___ftadd+0+0+1)&0ffh,c,0
u2711:
	movf	(??___ftadd+0+0),c,w
	movwf	((c:___ftadd@exp1)),c
	line	91
	movff	(c:___ftadd@f2+2),??___ftadd+0+0
	clrf	(??___ftadd+0+0+1)&0ffh,c
	clrf	(??___ftadd+0+0+2)&0ffh,c
	rlcf	((c:___ftadd@f2+1)),c,w
	rlcf	(??___ftadd+0+0)&0ffh,c
	bnc	u2721
	bsf	(??___ftadd+0+0+1)&0ffh,c,0
u2721:
	movf	(??___ftadd+0+0),c,w
	movwf	((c:___ftadd@exp2)),c
	line	92
	
l2762:
	movf	((c:___ftadd@exp1)),c,w
	btfsc	status,2
	goto	u2731
	goto	u2730
u2731:
	goto	l797
u2730:
	
l2764:
	movf	((c:___ftadd@exp2)),c,w
	subwf	((c:___ftadd@exp1)),c,w
	btfsc	status,0
	goto	u2741
	goto	u2740
u2741:
	goto	l2768
u2740:
	
l2766:
	movf	((c:___ftadd@exp1)),c,w
	sublw	0
	addwf	((c:___ftadd@exp2)),c,w
	movwf	(??___ftadd+0+0)&0ffh,c
	movlw	(019h)&0ffh
	subwf	((??___ftadd+0+0)),c,w
	btfss	status,0
	goto	u2751
	goto	u2750
u2751:
	goto	l2768
u2750:
	
l797:
	line	93
	movff	(c:___ftadd@f2),(c:?___ftadd)
	movff	(c:___ftadd@f2+1),(c:?___ftadd+1)
	movff	(c:___ftadd@f2+2),(c:?___ftadd+2)
	goto	l798
	
l795:
	line	94
	
l2768:
	movf	((c:___ftadd@exp2)),c,w
	btfsc	status,2
	goto	u2761
	goto	u2760
u2761:
	goto	l801
u2760:
	
l2770:
	movf	((c:___ftadd@exp1)),c,w
	subwf	((c:___ftadd@exp2)),c,w
	btfsc	status,0
	goto	u2771
	goto	u2770
u2771:
	goto	l2774
u2770:
	
l2772:
	movf	((c:___ftadd@exp2)),c,w
	sublw	0
	addwf	((c:___ftadd@exp1)),c,w
	movwf	(??___ftadd+0+0)&0ffh,c
	movlw	(019h)&0ffh
	subwf	((??___ftadd+0+0)),c,w
	btfss	status,0
	goto	u2781
	goto	u2780
u2781:
	goto	l2774
u2780:
	
l801:
	line	95
	movff	(c:___ftadd@f1),(c:?___ftadd)
	movff	(c:___ftadd@f1+1),(c:?___ftadd+1)
	movff	(c:___ftadd@f1+2),(c:?___ftadd+2)
	goto	l798
	
l799:
	line	96
	
l2774:
	movlw	low(06h)
	movwf	((c:___ftadd@sign)),c
	line	97
	
l2776:
	
	btfss	((c:___ftadd@f1+2)),c,(23)&7
	goto	u2791
	goto	u2790
u2791:
	goto	l2780
u2790:
	line	98
	
l2778:
	bsf	(0+(7/8)+(c:___ftadd@sign)),c,(7)&7
	goto	l2780
	
l802:
	line	99
	
l2780:
	
	btfss	((c:___ftadd@f2+2)),c,(23)&7
	goto	u2801
	goto	u2800
u2801:
	goto	l803
u2800:
	line	100
	
l2782:
	bsf	(0+(6/8)+(c:___ftadd@sign)),c,(6)&7
	
l803:
	line	101
	bsf	(0+(15/8)+(c:___ftadd@f1)),c,(15)&7
	line	102
	
l2784:
	movlw	low(0FFFFh)
	andwf	((c:___ftadd@f1)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftadd@f1+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftadd@f1+2)),c

	line	103
	bsf	(0+(15/8)+(c:___ftadd@f2)),c,(15)&7
	line	104
	
l2786:
	movlw	low(0FFFFh)
	andwf	((c:___ftadd@f2)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftadd@f2+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftadd@f2+2)),c

	line	106
	
l2788:
	movf	((c:___ftadd@exp2)),c,w
	subwf	((c:___ftadd@exp1)),c,w
	btfsc	status,0
	goto	u2811
	goto	u2810
u2811:
	goto	l2800
u2810:
	goto	l2790
	line	109
	
l805:
	line	110
	
l2790:
	bcf	status,0
	rlcf	((c:___ftadd@f2)),c
	rlcf	((c:___ftadd@f2+1)),c
	rlcf	((c:___ftadd@f2+2)),c
	line	111
	decf	((c:___ftadd@exp2)),c
	line	112
	
l2792:
	movf	((c:___ftadd@exp2)),c,w
	xorwf	((c:___ftadd@exp1)),c,w
	btfsc	status,2
	goto	u2821
	goto	u2820
u2821:
	goto	l2798
u2820:
	
l2794:
	decf	((c:___ftadd@sign)),c
	movff	(c:___ftadd@sign),??___ftadd+0+0
	movlw	07h
	andwf	(??___ftadd+0+0),c
	btfss	status,2
	goto	u2831
	goto	u2830
u2831:
	goto	l2790
u2830:
	goto	l2798
	
l807:
	goto	l2798
	
l808:
	line	113
	goto	l2798
	
l810:
	line	114
	
l2796:
	bcf	status,0
	rrcf	((c:___ftadd@f1+2)),c
	rrcf	((c:___ftadd@f1+1)),c
	rrcf	((c:___ftadd@f1)),c
	line	115
	incf	((c:___ftadd@exp1)),c
	goto	l2798
	line	116
	
l809:
	line	113
	
l2798:
	movf	((c:___ftadd@exp2)),c,w
	cpfseq	((c:___ftadd@exp1)),c
	goto	u2841
	goto	u2840
u2841:
	goto	l2796
u2840:
	goto	l812
	
l811:
	line	117
	goto	l812
	
l804:
	
l2800:
	movf	((c:___ftadd@exp1)),c,w
	subwf	((c:___ftadd@exp2)),c,w
	btfsc	status,0
	goto	u2851
	goto	u2850
u2851:
	goto	l812
u2850:
	goto	l2802
	line	120
	
l814:
	line	121
	
l2802:
	bcf	status,0
	rlcf	((c:___ftadd@f1)),c
	rlcf	((c:___ftadd@f1+1)),c
	rlcf	((c:___ftadd@f1+2)),c
	line	122
	decf	((c:___ftadd@exp1)),c
	line	123
	
l2804:
	movf	((c:___ftadd@exp2)),c,w
	xorwf	((c:___ftadd@exp1)),c,w
	btfsc	status,2
	goto	u2861
	goto	u2860
u2861:
	goto	l2810
u2860:
	
l2806:
	decf	((c:___ftadd@sign)),c
	movff	(c:___ftadd@sign),??___ftadd+0+0
	movlw	07h
	andwf	(??___ftadd+0+0),c
	btfss	status,2
	goto	u2871
	goto	u2870
u2871:
	goto	l2802
u2870:
	goto	l2810
	
l816:
	goto	l2810
	
l817:
	line	124
	goto	l2810
	
l819:
	line	125
	
l2808:
	bcf	status,0
	rrcf	((c:___ftadd@f2+2)),c
	rrcf	((c:___ftadd@f2+1)),c
	rrcf	((c:___ftadd@f2)),c
	line	126
	incf	((c:___ftadd@exp2)),c
	goto	l2810
	line	127
	
l818:
	line	124
	
l2810:
	movf	((c:___ftadd@exp2)),c,w
	cpfseq	((c:___ftadd@exp1)),c
	goto	u2881
	goto	u2880
u2881:
	goto	l2808
u2880:
	goto	l812
	
l820:
	goto	l812
	line	128
	
l813:
	line	129
	
l812:
	
	btfss	((c:___ftadd@sign)),c,(7)&7
	goto	u2891
	goto	u2890
u2891:
	goto	l821
u2890:
	line	131
	
l2812:
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
	
l821:
	line	134
	
	btfss	((c:___ftadd@sign)),c,(6)&7
	goto	u2901
	goto	u2900
u2901:
	goto	l2816
u2900:
	line	136
	
l2814:
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

	goto	l2816
	line	138
	
l822:
	line	139
	
l2816:
	movlw	low(0)
	movwf	((c:___ftadd@sign)),c
	line	140
	
l2818:
	movf	((c:___ftadd@f1)),c,w
	addwf	((c:___ftadd@f2)),c
	movf	((c:___ftadd@f1+1)),c,w
	addwfc	((c:___ftadd@f2+1)),c
	movf	((c:___ftadd@f1+2)),c,w
	addwfc	((c:___ftadd@f2+2)),c

	line	141
	
l2820:
	
	btfss	((c:___ftadd@f2+2)),c,(23)&7
	goto	u2911
	goto	u2910
u2911:
	goto	l2826
u2910:
	line	142
	
l2822:
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
	
l2824:
	movlw	low(01h)
	movwf	((c:___ftadd@sign)),c
	goto	l2826
	line	145
	
l823:
	line	146
	
l2826:
	movff	(c:___ftadd@f2),(c:___ftpack@arg)
	movff	(c:___ftadd@f2+1),(c:___ftpack@arg+1)
	movff	(c:___ftadd@f2+2),(c:___ftpack@arg+2)
	movff	(c:___ftadd@exp1),(c:___ftpack@exp)
	movff	(c:___ftadd@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftadd)
	movff	1+?___ftpack,(c:?___ftadd+1)
	movff	2+?___ftpack,(c:?___ftadd+2)
	goto	l798
	
l2828:
	line	148
	
l798:
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
;;  f1              3   22[COMRAM] float 
;;  f2              3   25[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   32[COMRAM] unsigned um
;;  sign            1   36[COMRAM] unsigned char 
;;  cntr            1   35[COMRAM] unsigned char 
;;  exp             1   31[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   22[COMRAM] float 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_sqrt
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
global __ptext4
__ptext4:
psect	text4
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:
;incstack = 0
	opt	stack 27
	dw	0FFFFh
	line	67
	
l2830:
	movff	(c:___ftmul@f1+2),??___ftmul+0+0
	clrf	(??___ftmul+0+0+1)&0ffh,c
	clrf	(??___ftmul+0+0+2)&0ffh,c
	rlcf	((c:___ftmul@f1+1)),c,w
	rlcf	(??___ftmul+0+0)&0ffh,c
	bnc	u2921
	bsf	(??___ftmul+0+0+1)&0ffh,c,0
u2921:
	movf	(??___ftmul+0+0),c,w
	movwf	((c:___ftmul@exp)),c
	tstfsz	((c:___ftmul@exp))&0ffh
	goto	u2931
	goto	u2930
u2931:
	goto	l2836
u2930:
	line	68
	
l2832:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftmul)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftmul+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftmul+2)),c

	goto	l844
	
l2834:
	goto	l844
	
l843:
	line	69
	
l2836:
	movff	(c:___ftmul@f2+2),??___ftmul+0+0
	clrf	(??___ftmul+0+0+1)&0ffh,c
	clrf	(??___ftmul+0+0+2)&0ffh,c
	rlcf	((c:___ftmul@f2+1)),c,w
	rlcf	(??___ftmul+0+0)&0ffh,c
	bnc	u2941
	bsf	(??___ftmul+0+0+1)&0ffh,c,0
u2941:
	movf	(??___ftmul+0+0),c,w
	movwf	((c:___ftmul@sign)),c
	tstfsz	((c:___ftmul@sign))&0ffh
	goto	u2951
	goto	u2950
u2951:
	goto	l2842
u2950:
	line	70
	
l2838:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftmul)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftmul+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftmul+2)),c

	goto	l844
	
l2840:
	goto	l844
	
l845:
	line	71
	
l2842:
	movf	((c:___ftmul@sign)),c,w
	addlw	low(07Bh)
	addwf	((c:___ftmul@exp)),c
	line	72
	
l2844:
	movff	0+2+(c:___ftmul@f1),(c:___ftmul@sign)
	line	73
	movf	(0+2+(c:___ftmul@f2)),c,w
	xorwf	((c:___ftmul@sign)),c
	line	74
	movlw	(080h)&0ffh
	andwf	((c:___ftmul@sign)),c
	line	75
	
l2846:
	bsf	(0+(15/8)+(c:___ftmul@f1)),c,(15)&7
	line	77
	
l2848:
	bsf	(0+(15/8)+(c:___ftmul@f2)),c,(15)&7
	line	78
	
l2850:
	movlw	low(0FFFFh)
	andwf	((c:___ftmul@f2)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftmul@f2+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftmul@f2+2)),c

	line	79
	
l2852:
	movlw	low(0)
	movwf	((c:___ftmul@f3_as_product)),c
	movlw	high(0)
	movwf	((c:___ftmul@f3_as_product+1)),c
	movlw	low highword(0)
	movwf	((c:___ftmul@f3_as_product+2)),c

	line	134
	
l2854:
	movlw	low(07h)
	movwf	((c:___ftmul@cntr)),c
	goto	l2856
	line	135
	
l846:
	line	136
	
l2856:
	
	btfss	((c:___ftmul@f1)),c,(0)&7
	goto	u2961
	goto	u2960
u2961:
	goto	l2860
u2960:
	line	137
	
l2858:
	movf	((c:___ftmul@f2)),c,w
	addwf	((c:___ftmul@f3_as_product)),c
	movf	((c:___ftmul@f2+1)),c,w
	addwfc	((c:___ftmul@f3_as_product+1)),c
	movf	((c:___ftmul@f2+2)),c,w
	addwfc	((c:___ftmul@f3_as_product+2)),c

	goto	l2860
	
l847:
	line	138
	
l2860:
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
	
l2862:
	decfsz	((c:___ftmul@cntr)),c
	
	goto	l2856
	goto	l2864
	
l848:
	line	143
	
l2864:
	movlw	low(09h)
	movwf	((c:___ftmul@cntr)),c
	goto	l2866
	line	144
	
l849:
	line	145
	
l2866:
	
	btfss	((c:___ftmul@f1)),c,(0)&7
	goto	u2971
	goto	u2970
u2971:
	goto	l2870
u2970:
	line	146
	
l2868:
	movf	((c:___ftmul@f2)),c,w
	addwf	((c:___ftmul@f3_as_product)),c
	movf	((c:___ftmul@f2+1)),c,w
	addwfc	((c:___ftmul@f3_as_product+1)),c
	movf	((c:___ftmul@f2+2)),c,w
	addwfc	((c:___ftmul@f3_as_product+2)),c

	goto	l2870
	
l850:
	line	147
	
l2870:
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
	
l2872:
	decfsz	((c:___ftmul@cntr)),c
	
	goto	l2866
	goto	l2874
	
l851:
	line	156
	
l2874:
	movff	(c:___ftmul@f3_as_product),(c:___ftpack@arg)
	movff	(c:___ftmul@f3_as_product+1),(c:___ftpack@arg+1)
	movff	(c:___ftmul@f3_as_product+2),(c:___ftpack@arg+2)
	movff	(c:___ftmul@exp),(c:___ftpack@exp)
	movff	(c:___ftmul@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftmul)
	movff	1+?___ftpack,(c:?___ftmul+1)
	movff	2+?___ftpack,(c:?___ftmul+2)
	goto	l844
	
l2876:
	line	157
	
l844:
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
;;  ff1             3   14[COMRAM] float 
;;  ff2             3   17[COMRAM] float 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sqrt
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
	line	4
global __ptext5
__ptext5:
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
	line	4
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:
;incstack = 0
	opt	stack 28
	dw	0FFFFh
	line	6
	
l2884:
	
	btfss	((c:___ftge@ff1+2)),c,(23)&7
	goto	u2981
	goto	u2980
u2981:
	goto	l2888
u2980:
	line	7
	
l2886:
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
	goto	l2888
	
l836:
	line	8
	
l2888:
	
	btfss	((c:___ftge@ff2+2)),c,(23)&7
	goto	u2991
	goto	u2990
u2991:
	goto	l2892
u2990:
	line	9
	
l2890:
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
	goto	l2892
	
l837:
	line	10
	
l2892:
	movlw	low(0800000h)
	xorwf	((c:___ftge@ff1)),c
	movlw	high(0800000h)
	xorwf	((c:___ftge@ff1+1)),c
	movlw	low highword(0800000h)
	xorwf	((c:___ftge@ff1+2)),c

	line	11
	
l2894:
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
	goto	u3001
	goto	u3000
u3001:
	goto	l2898
u3000:
	
l2896:
	bcf	status,0
	goto	l838
	
l2722:
	
l2898:
	bsf	status,0
	goto	l838
	
l2724:
	goto	l838
	
l2900:
	line	13
	
l838:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
	global	___lwtoft

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 28 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2   22[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   22[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         3       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
	line	28
global __ptext6
__ptext6:
psect	text6
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
	line	28
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:
;incstack = 0
	opt	stack 28
	dw	0FFFFh
	line	30
	
l3118:
	movff	(c:___lwtoft@c),(c:___ftpack@arg)
	movff	(c:___lwtoft@c+1),(c:___ftpack@arg+1)
	clrf	((c:___ftpack@arg+2)),c
	movlw	low(08Eh)
	movwf	((c:___ftpack@exp)),c
	movlw	low(0)
	movwf	((c:___ftpack@sign)),c
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___lwtoft)
	movff	1+?___ftpack,(c:?___lwtoft+1)
	movff	2+?___ftpack,(c:?___lwtoft+2)
	goto	l993
	
l3120:
	line	31
	
l993:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
	signat	___lwtoft,4219
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        2   14[COMRAM] unsigned int 
;;  divisor         2   16[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   18[COMRAM] unsigned int 
;;  counter         1   20[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   14[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	8
global __ptext7
__ptext7:
psect	text7
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	8
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:
;incstack = 0
	opt	stack 29
	dw	0FFFFh
	line	14
	
l3096:
	movlw	high(0)
	movwf	((c:___lwdiv@quotient+1)),c
	movlw	low(0)
	movwf	((c:___lwdiv@quotient)),c
	line	15
	
l3098:
	movf	((c:___lwdiv@divisor+1)),c,w
	iorwf ((c:___lwdiv@divisor)),c,w

	btfsc	status,2
	goto	u3261
	goto	u3260
u3261:
	goto	l966
u3260:
	line	16
	
l3100:
	movlw	low(01h)
	movwf	((c:___lwdiv@counter)),c
	line	17
	goto	l3104
	
l968:
	line	18
	
l3102:
	bcf	status,0
	rlcf	((c:___lwdiv@divisor)),c
	rlcf	((c:___lwdiv@divisor+1)),c
	line	19
	incf	((c:___lwdiv@counter)),c
	goto	l3104
	line	20
	
l967:
	line	17
	
l3104:
	
	btfss	((c:___lwdiv@divisor+1)),c,(15)&7
	goto	u3271
	goto	u3270
u3271:
	goto	l3102
u3270:
	goto	l3106
	
l969:
	goto	l3106
	line	21
	
l970:
	line	22
	
l3106:
	bcf	status,0
	rlcf	((c:___lwdiv@quotient)),c
	rlcf	((c:___lwdiv@quotient+1)),c
	line	23
	
l3108:
	movf	((c:___lwdiv@divisor)),c,w
	subwf	((c:___lwdiv@dividend)),c,w
	movf	((c:___lwdiv@divisor+1)),c,w
	subwfb	((c:___lwdiv@dividend+1)),c,w
	btfss	status,0
	goto	u3281
	goto	u3280
u3281:
	goto	l3114
u3280:
	line	24
	
l3110:
	movf	((c:___lwdiv@divisor)),c,w
	subwf	((c:___lwdiv@dividend)),c
	movf	((c:___lwdiv@divisor+1)),c,w
	subwfb	((c:___lwdiv@dividend+1)),c

	line	25
	
l3112:
	bsf	(0+(0/8)+(c:___lwdiv@quotient)),c,(0)&7
	goto	l3114
	line	26
	
l971:
	line	27
	
l3114:
	bcf	status,0
	rrcf	((c:___lwdiv@divisor+1)),c
	rrcf	((c:___lwdiv@divisor)),c
	line	28
	
l3116:
	decfsz	((c:___lwdiv@counter)),c
	
	goto	l3106
	goto	l966
	
l972:
	line	29
	
l966:
	line	30
	movff	(c:___lwdiv@quotient),(c:?___lwdiv)
	movff	(c:___lwdiv@quotient+1),(c:?___lwdiv+1)
	line	31
	
l973:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	___lbtoft

;; *************** function ___lbtoft *****************
;; Defined at:
;;		line 27 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lbtoft.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   25[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   22[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lbtoft.c"
	line	27
global __ptext8
__ptext8:
psect	text8
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lbtoft.c"
	line	27
	global	__size_of___lbtoft
	__size_of___lbtoft	equ	__end_of___lbtoft-___lbtoft
	
___lbtoft:
;incstack = 0
	opt	stack 28
	dw	0FFFFh
;___lbtoft@c stored from wreg
	movwf	((c:___lbtoft@c)),c
	line	29
	
l3092:
	movf	((c:___lbtoft@c)),c,w
	movwf	((c:___ftpack@arg)),c
	clrf	((c:___ftpack@arg+1)),c
	clrf	((c:___ftpack@arg+2)),c
	movlw	low(08Eh)
	movwf	((c:___ftpack@exp)),c
	movlw	low(0)
	movwf	((c:___ftpack@sign)),c
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___lbtoft)
	movff	1+?___ftpack,(c:?___lbtoft+1)
	movff	2+?___ftpack,(c:?___lbtoft+2)
	goto	l900
	
l3094:
	line	30
	
l900:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___lbtoft
	__end_of___lbtoft:
	signat	___lbtoft,4219
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3   14[COMRAM] unsigned um
;;  exp             1   17[COMRAM] unsigned char 
;;  sign            1   18[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   14[COMRAM] float 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftadd
;;		___ftmul
;;		___lbtoft
;;		___lwtoft
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
global __ptext9
__ptext9:
psect	text9
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:
;incstack = 0
	opt	stack 26
	dw	0FFFFh
	line	64
	
l2726:
	movf	((c:___ftpack@exp)),c,w
	btfsc	status,2
	goto	u2641
	goto	u2640
u2641:
	goto	l2730
u2640:
	
l2728:
	movf	((c:___ftpack@arg)),c,w
	iorwf	((c:___ftpack@arg+1)),c,w
	iorwf	((c:___ftpack@arg+2)),c,w
	btfss	status,2
	goto	u2651
	goto	u2650
u2651:
	goto	l2736
u2650:
	goto	l2730
	
l759:
	line	65
	
l2730:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftpack)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftpack+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftpack+2)),c

	goto	l760
	
l2732:
	goto	l760
	
l757:
	line	66
	goto	l2736
	
l762:
	line	67
	
l2734:
	incf	((c:___ftpack@exp)),c
	line	68
	bcf	status,0
	rrcf	((c:___ftpack@arg+2)),c
	rrcf	((c:___ftpack@arg+1)),c
	rrcf	((c:___ftpack@arg)),c
	goto	l2736
	line	69
	
l761:
	line	66
	
l2736:
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
	goto	u2661
	goto	u2660
u2661:
	goto	l2734
u2660:
	goto	l2742
	
l763:
	line	70
	goto	l2742
	
l765:
	line	71
	
l2738:
	incf	((c:___ftpack@exp)),c
	line	72
	
l2740:
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
	goto	l2742
	line	74
	
l764:
	line	70
	
l2742:
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
	goto	u2671
	goto	u2670
u2671:
	goto	l2738
u2670:
	goto	l2746
	
l766:
	line	75
	goto	l2746
	
l768:
	line	76
	
l2744:
	decf	((c:___ftpack@exp)),c
	line	77
	bcf	status,0
	rlcf	((c:___ftpack@arg)),c
	rlcf	((c:___ftpack@arg+1)),c
	rlcf	((c:___ftpack@arg+2)),c
	goto	l2746
	line	78
	
l767:
	line	75
	
l2746:
	
	btfss	((c:___ftpack@arg+1)),c,(15)&7
	goto	u2681
	goto	u2680
u2681:
	goto	l2744
u2680:
	
l769:
	line	79
	
	btfsc	((c:___ftpack@exp)),c,(0)&7
	goto	u2691
	goto	u2690
u2691:
	goto	l2750
u2690:
	line	80
	
l2748:
	bcf	(0+(15/8)+(c:___ftpack@arg)),c,(15)&7
	goto	l2750
	
l770:
	line	81
	
l2750:
	bcf status,0
	rrcf	((c:___ftpack@exp)),c

	line	82
	movf	((c:___ftpack@exp)),c,w
	iorwf	((c:___ftpack@arg+2)),c

	line	83
	
l2752:
	movf	((c:___ftpack@sign)),c,w
	btfsc	status,2
	goto	u2701
	goto	u2700
u2701:
	goto	l2756
u2700:
	line	84
	
l2754:
	bsf	(0+(23/8)+(c:___ftpack@arg)),c,(23)&7
	goto	l2756
	
l771:
	line	85
	
l2756:
	movff	(c:___ftpack@arg),(c:?___ftpack)
	movff	(c:___ftpack@arg+1),(c:?___ftpack+1)
	movff	(c:___ftpack@arg+2),(c:?___ftpack+2)
	goto	l760
	
l2758:
	line	86
	
l760:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   59[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  lval            4    6[BANK0 ] unsigned long 
;;  exp1            1   10[BANK0 ] unsigned char 
;;  sign1           1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   59[COMRAM] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         0       6       0       0       0       0       0
;;      Temps:          0       5       0       0       0       0       0
;;      Totals:         4      11       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
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
	
l4370:
	movff	(c:___fttol@f1+2),??___fttol+0+0
	movlb	0	; () banked
	clrf	(??___fttol+0+0+1)&0ffh
	clrf	(??___fttol+0+0+2)&0ffh
	movlb	0	; () banked
	rlcf	((c:___fttol@f1+1)),c,w
	movlb	0	; () banked
	rlcf	(??___fttol+0+0)&0ffh
	bnc	u5251
	bsf	(??___fttol+0+0+1)&0ffh,0
u5251:
	movlb	0	; () banked
	movf	(??___fttol+0+0)&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___fttol@exp1))&0ffh
	movlb	0	; () banked
	tstfsz	((___fttol@exp1))&0ffh
	goto	u5261
	goto	u5260
u5261:
	goto	l4376
u5260:
	line	50
	
l4372:; BSR set to: 0

	movlw	low(0)
	movwf	((c:?___fttol)),c
	movlw	high(0)
	movwf	((c:?___fttol+1)),c
	movlw	low highword(0)
	movwf	((c:?___fttol+2)),c
	movlw	high highword(0)
	movwf	((c:?___fttol+3)),c
	goto	l864
	
l4374:; BSR set to: 0

	goto	l864
	
l863:; BSR set to: 0

	line	51
	
l4376:; BSR set to: 0

	movlw	(017h)&0ffh
	movlb	0	; () banked
	movwf	(??___fttol+0+0)&0ffh
	movff	(c:___fttol@f1),??___fttol+1+0
	movff	(c:___fttol@f1+1),??___fttol+1+0+1
	movff	(c:___fttol@f1+2),??___fttol+1+0+2
	movlb	0	; () banked
	incf	((??___fttol+0+0))&0ffh,w
	movlb	0	; () banked
	movwf	(??___fttol+4+0)&0ffh
	goto	u5270
u5275:
	movlb	0	; () banked
	bcf	status,0
	rrcf	(??___fttol+1+2)&0ffh
	rrcf	(??___fttol+1+1)&0ffh
	rrcf	(??___fttol+1+0)&0ffh
u5270:
	movlb	0	; () banked
	decfsz	(??___fttol+4+0)&0ffh
	goto	u5275
	movlb	0	; () banked
	movf	(??___fttol+1+0)&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___fttol@sign1))&0ffh
	line	52
	
l4378:; BSR set to: 0

	bsf	(0+(15/8)+(c:___fttol@f1)),c,(15)&7
	line	53
	
l4380:; BSR set to: 0

	movlw	low(0FFFFh)
	andwf	((c:___fttol@f1)),c
	movlw	high(0FFFFh)
	andwf	((c:___fttol@f1+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___fttol@f1+2)),c

	line	54
	
l4382:; BSR set to: 0

	movf	((c:___fttol@f1)),c,w
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((___fttol@lval))&0ffh
	movf	((c:___fttol@f1+1)),c,w
	movlb	0	; () banked
	movwf	1+((___fttol@lval))&0ffh
	
	movf	((c:___fttol@f1+2)),c,w
	movlb	0	; () banked
	movwf	2+((___fttol@lval))&0ffh
	
	movlb	0	; () banked
	clrf	3+((___fttol@lval))&0ffh
	line	55
	
l4384:; BSR set to: 0

	movlw	(08Eh)&0ffh
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	((___fttol@exp1))&0ffh
	line	56
	
l4386:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	btfss	((___fttol@exp1))&0ffh,7
	goto	u5281
	goto	u5280
u5281:
	goto	l4398
u5280:
	line	57
	
l4388:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___fttol@exp1))&0ffh,w
	xorlw	80h
	movlb	0	; () banked
	movwf	(??___fttol+0+0)&0ffh
	movlw	(-15)&0ffh
	xorlw	80h
	movlb	0	; () banked
	subwf	(??___fttol+0+0)&0ffh,w
	btfsc	status,0
	goto	u5291
	goto	u5290
u5291:
	goto	l4394
u5290:
	line	58
	
l4390:; BSR set to: 0

	movlw	low(0)
	movwf	((c:?___fttol)),c
	movlw	high(0)
	movwf	((c:?___fttol+1)),c
	movlw	low highword(0)
	movwf	((c:?___fttol+2)),c
	movlw	high highword(0)
	movwf	((c:?___fttol+3)),c
	goto	l864
	
l4392:; BSR set to: 0

	goto	l864
	
l866:; BSR set to: 0

	goto	l4394
	line	59
	
l867:; BSR set to: 0

	line	60
	
l4394:; BSR set to: 0

	movlb	0	; () banked
	bcf	status,0
	movlb	0	; () banked
	rrcf	((___fttol@lval+3))&0ffh
	movlb	0	; () banked
	rrcf	((___fttol@lval+2))&0ffh
	movlb	0	; () banked
	rrcf	((___fttol@lval+1))&0ffh
	movlb	0	; () banked
	rrcf	((___fttol@lval))&0ffh
	line	61
	
l4396:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	incfsz	((___fttol@exp1))&0ffh
	
	goto	l4394
	goto	l4408
	
l868:; BSR set to: 0

	line	62
	goto	l4408
	
l865:; BSR set to: 0

	line	63
	
l4398:; BSR set to: 0

	movlw	(018h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((___fttol@exp1))&0ffh
	goto	u5301
	goto	u5300
u5301:
	goto	l4406
u5300:
	line	64
	
l4400:; BSR set to: 0

	movlw	low(0)
	movwf	((c:?___fttol)),c
	movlw	high(0)
	movwf	((c:?___fttol+1)),c
	movlw	low highword(0)
	movwf	((c:?___fttol+2)),c
	movlw	high highword(0)
	movwf	((c:?___fttol+3)),c
	goto	l864
	
l4402:; BSR set to: 0

	goto	l864
	
l870:; BSR set to: 0

	line	65
	goto	l4406
	
l872:; BSR set to: 0

	line	66
	
l4404:; BSR set to: 0

	movlb	0	; () banked
	bcf	status,0
	movlb	0	; () banked
	rlcf	((___fttol@lval))&0ffh
	movlb	0	; () banked
	rlcf	((___fttol@lval+1))&0ffh
	movlb	0	; () banked
	rlcf	((___fttol@lval+2))&0ffh
	movlb	0	; () banked
	rlcf	((___fttol@lval+3))&0ffh
	line	67
	movlb	0	; () banked
	movlb	0	; () banked
	decf	((___fttol@exp1))&0ffh
	goto	l4406
	line	68
	
l871:; BSR set to: 0

	line	65
	
l4406:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	tstfsz	((___fttol@exp1))&0ffh
	goto	u5311
	goto	u5310
u5311:
	goto	l4404
u5310:
	goto	l4408
	
l873:; BSR set to: 0

	goto	l4408
	line	69
	
l869:; BSR set to: 0

	line	70
	
l4408:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((___fttol@sign1))&0ffh,w
	btfsc	status,2
	goto	u5321
	goto	u5320
u5321:
	goto	l4412
u5320:
	line	71
	
l4410:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	comf	((___fttol@lval+3))&0ffh
	movlb	0	; () banked
	comf	((___fttol@lval+2))&0ffh
	movlb	0	; () banked
	comf	((___fttol@lval+1))&0ffh
	movlb	0	; () banked
	negf	((___fttol@lval))&0ffh
	movlw	0
	movlb	0	; () banked
	addwfc	((___fttol@lval+1))&0ffh
	movlb	0	; () banked
	addwfc	((___fttol@lval+2))&0ffh
	movlb	0	; () banked
	addwfc	((___fttol@lval+3))&0ffh
	goto	l4412
	
l874:; BSR set to: 0

	line	72
	
l4412:; BSR set to: 0

	movff	(___fttol@lval),(c:?___fttol)
	movff	(___fttol@lval+1),(c:?___fttol+1)
	movff	(___fttol@lval+2),(c:?___fttol+2)
	movff	(___fttol@lval+3),(c:?___fttol+3)
	goto	l864
	
l4414:; BSR set to: 0

	line	73
	
l864:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
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
psect	text11,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	8
global __ptext11
__ptext11:
psect	text11
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	8
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:; BSR set to: 0

;incstack = 0
	opt	stack 29
	dw	0FFFFh
	line	13
	
l3010:
	movlw	low(0)
	movwf	((c:___awmod@sign)),c
	line	14
	
l3012:
	movf	((c:___awmod@dividend+1)),c,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	0
	btfsc	status,2
	subwf	((c:___awmod@dividend)),c,w
	btfsc	status,0
	goto	u3121
	goto	u3120
u3121:
	goto	l3018
u3120:
	line	15
	
l3014:
	negf	((c:___awmod@dividend)),c
	comf	((c:___awmod@dividend+1)),c
	btfsc	status,0
	incf	((c:___awmod@dividend+1)),c
	line	16
	
l3016:
	movlw	low(01h)
	movwf	((c:___awmod@sign)),c
	goto	l3018
	line	17
	
l650:
	line	18
	
l3018:
	movf	((c:___awmod@divisor+1)),c,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	0
	btfsc	status,2
	subwf	((c:___awmod@divisor)),c,w
	btfsc	status,0
	goto	u3131
	goto	u3130
u3131:
	goto	l3022
u3130:
	line	19
	
l3020:
	negf	((c:___awmod@divisor)),c
	comf	((c:___awmod@divisor+1)),c
	btfsc	status,0
	incf	((c:___awmod@divisor+1)),c
	goto	l3022
	
l651:
	line	20
	
l3022:
	movf	((c:___awmod@divisor+1)),c,w
	iorwf ((c:___awmod@divisor)),c,w

	btfsc	status,2
	goto	u3141
	goto	u3140
u3141:
	goto	l3038
u3140:
	line	21
	
l3024:
	movlw	low(01h)
	movwf	((c:___awmod@counter)),c
	line	22
	goto	l3028
	
l654:
	line	23
	
l3026:
	bcf	status,0
	rlcf	((c:___awmod@divisor)),c
	rlcf	((c:___awmod@divisor+1)),c
	line	24
	incf	((c:___awmod@counter)),c
	goto	l3028
	line	25
	
l653:
	line	22
	
l3028:
	
	btfss	((c:___awmod@divisor+1)),c,(15)&7
	goto	u3151
	goto	u3150
u3151:
	goto	l3026
u3150:
	goto	l3030
	
l655:
	goto	l3030
	line	26
	
l656:
	line	27
	
l3030:
	movf	((c:___awmod@divisor)),c,w
	subwf	((c:___awmod@dividend)),c,w
	movf	((c:___awmod@divisor+1)),c,w
	subwfb	((c:___awmod@dividend+1)),c,w
	btfss	status,0
	goto	u3161
	goto	u3160
u3161:
	goto	l3034
u3160:
	line	28
	
l3032:
	movf	((c:___awmod@divisor)),c,w
	subwf	((c:___awmod@dividend)),c
	movf	((c:___awmod@divisor+1)),c,w
	subwfb	((c:___awmod@dividend+1)),c

	goto	l3034
	
l657:
	line	29
	
l3034:
	bcf	status,0
	rrcf	((c:___awmod@divisor+1)),c
	rrcf	((c:___awmod@divisor)),c
	line	30
	
l3036:
	decfsz	((c:___awmod@counter)),c
	
	goto	l3030
	goto	l3038
	
l658:
	goto	l3038
	line	31
	
l652:
	line	32
	
l3038:
	movf	((c:___awmod@sign)),c,w
	btfsc	status,2
	goto	u3171
	goto	u3170
u3171:
	goto	l3042
u3170:
	line	33
	
l3040:
	negf	((c:___awmod@dividend)),c
	comf	((c:___awmod@dividend+1)),c
	btfsc	status,0
	incf	((c:___awmod@dividend+1)),c
	goto	l3042
	
l659:
	line	34
	
l3042:
	movff	(c:___awmod@dividend),(c:?___awmod)
	movff	(c:___awmod@dividend+1),(c:?___awmod+1)
	goto	l660
	
l3044:
	line	35
	
l660:
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
psect	text12,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	8
global __ptext12
__ptext12:
psect	text12
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	8
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:
;incstack = 0
	opt	stack 29
	dw	0FFFFh
	line	14
	
l2966:
	movlw	low(0)
	movwf	((c:___awdiv@sign)),c
	line	15
	
l2968:
	movf	((c:___awdiv@divisor+1)),c,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	0
	btfsc	status,2
	subwf	((c:___awdiv@divisor)),c,w
	btfsc	status,0
	goto	u3061
	goto	u3060
u3061:
	goto	l2974
u3060:
	line	16
	
l2970:
	negf	((c:___awdiv@divisor)),c
	comf	((c:___awdiv@divisor+1)),c
	btfsc	status,0
	incf	((c:___awdiv@divisor+1)),c
	line	17
	
l2972:
	movlw	low(01h)
	movwf	((c:___awdiv@sign)),c
	goto	l2974
	line	18
	
l637:
	line	19
	
l2974:
	movf	((c:___awdiv@dividend+1)),c,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	0
	btfsc	status,2
	subwf	((c:___awdiv@dividend)),c,w
	btfsc	status,0
	goto	u3071
	goto	u3070
u3071:
	goto	l2980
u3070:
	line	20
	
l2976:
	negf	((c:___awdiv@dividend)),c
	comf	((c:___awdiv@dividend+1)),c
	btfsc	status,0
	incf	((c:___awdiv@dividend+1)),c
	line	21
	
l2978:
	movlw	(01h)&0ffh
	xorwf	((c:___awdiv@sign)),c
	goto	l2980
	line	22
	
l638:
	line	23
	
l2980:
	movlw	high(0)
	movwf	((c:___awdiv@quotient+1)),c
	movlw	low(0)
	movwf	((c:___awdiv@quotient)),c
	line	24
	
l2982:
	movf	((c:___awdiv@divisor+1)),c,w
	iorwf ((c:___awdiv@divisor)),c,w

	btfsc	status,2
	goto	u3081
	goto	u3080
u3081:
	goto	l3002
u3080:
	line	25
	
l2984:
	movlw	low(01h)
	movwf	((c:___awdiv@counter)),c
	line	26
	goto	l2988
	
l641:
	line	27
	
l2986:
	bcf	status,0
	rlcf	((c:___awdiv@divisor)),c
	rlcf	((c:___awdiv@divisor+1)),c
	line	28
	incf	((c:___awdiv@counter)),c
	goto	l2988
	line	29
	
l640:
	line	26
	
l2988:
	
	btfss	((c:___awdiv@divisor+1)),c,(15)&7
	goto	u3091
	goto	u3090
u3091:
	goto	l2986
u3090:
	goto	l2990
	
l642:
	goto	l2990
	line	30
	
l643:
	line	31
	
l2990:
	bcf	status,0
	rlcf	((c:___awdiv@quotient)),c
	rlcf	((c:___awdiv@quotient+1)),c
	line	32
	
l2992:
	movf	((c:___awdiv@divisor)),c,w
	subwf	((c:___awdiv@dividend)),c,w
	movf	((c:___awdiv@divisor+1)),c,w
	subwfb	((c:___awdiv@dividend+1)),c,w
	btfss	status,0
	goto	u3101
	goto	u3100
u3101:
	goto	l2998
u3100:
	line	33
	
l2994:
	movf	((c:___awdiv@divisor)),c,w
	subwf	((c:___awdiv@dividend)),c
	movf	((c:___awdiv@divisor+1)),c,w
	subwfb	((c:___awdiv@dividend+1)),c

	line	34
	
l2996:
	bsf	(0+(0/8)+(c:___awdiv@quotient)),c,(0)&7
	goto	l2998
	line	35
	
l644:
	line	36
	
l2998:
	bcf	status,0
	rrcf	((c:___awdiv@divisor+1)),c
	rrcf	((c:___awdiv@divisor)),c
	line	37
	
l3000:
	decfsz	((c:___awdiv@counter)),c
	
	goto	l2990
	goto	l3002
	
l645:
	goto	l3002
	line	38
	
l639:
	line	39
	
l3002:
	movf	((c:___awdiv@sign)),c,w
	btfsc	status,2
	goto	u3111
	goto	u3110
u3111:
	goto	l3006
u3110:
	line	40
	
l3004:
	negf	((c:___awdiv@quotient)),c
	comf	((c:___awdiv@quotient+1)),c
	btfsc	status,0
	incf	((c:___awdiv@quotient+1)),c
	goto	l3006
	
l646:
	line	41
	
l3006:
	movff	(c:___awdiv@quotient),(c:?___awdiv)
	movff	(c:___awdiv@quotient+1),(c:?___awdiv+1)
	goto	l647
	
l3008:
	line	42
	
l647:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_Write_b_eep

;; *************** function _Write_b_eep *****************
;; Defined at:
;;		line 30 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\EEP\write_B.c"
;; Parameters:    Size  Location     Type
;;  badd            2   14[COMRAM] unsigned int 
;;  bdat            1   16[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  GIE_BIT_VAL     1   17[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
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
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\EEP\write_B.c"
	line	30
global __ptext13
__ptext13:
psect	text13
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\EEP\write_B.c"
	line	30
	global	__size_of_Write_b_eep
	__size_of_Write_b_eep	equ	__end_of_Write_b_eep-_Write_b_eep
	
_Write_b_eep:
;incstack = 0
	opt	stack 29
	dw	0FFFFh
	line	32
	
l2942:
	movlw	low(0)
	movwf	((c:Write_b_eep@GIE_BIT_VAL)),c
	line	33
	
l2944:
	movff	(c:Write_b_eep@badd),(c:4009)	;volatile
	line	34
	
l2946:
	movff	(c:Write_b_eep@bdat),(c:4008)	;volatile
	line	35
	
l2948:
	bcf	((c:4006)),c,7	;volatile
	line	36
	
l2950:
	bcf	((c:4006)),c,6	;volatile
	line	37
	
l2952:
	bsf	((c:4006)),c,2	;volatile
	line	38
	
l2954:
	movlw	0
	btfsc	((c:4082)),c,7	;volatile
	movlw	1
	movwf	((c:Write_b_eep@GIE_BIT_VAL)),c
	line	39
	
l2956:
	bcf	((c:4082)),c,7	;volatile
	line	40
	
l2958:
	movlw	low(055h)
	movwf	((c:4007)),c	;volatile
	line	41
	
l2960:
	movlw	low(0AAh)
	movwf	((c:4007)),c	;volatile
	line	42
	
l2962:
	bsf	((c:4006)),c,1	;volatile
	line	43
	goto	l448
	
l449:
	
l448:
	btfsc	((c:4006)),c,1	;volatile
	goto	u3031
	goto	u3030
u3031:
	goto	l448
u3030:
	
l450:
	line	44
	btfsc	(c:Write_b_eep@GIE_BIT_VAL),c,0
	bra	u3045
	bcf	((c:4082)),c,7	;volatile
	bra	u3046
	u3045:
	bsf	((c:4082)),c,7	;volatile
	u3046:

	line	45
	bcf	((c:4006)),c,2	;volatile
	line	46
	
l451:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_Write_b_eep
	__end_of_Write_b_eep:
	signat	_Write_b_eep,8312
	global	_Read_b_eep

;; *************** function _Read_b_eep *****************
;; Defined at:
;;		line 23 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\EEP\read_B.c"
;; Parameters:    Size  Location     Type
;;  badd            2   14[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
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
psect	text14,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\EEP\read_B.c"
	line	23
global __ptext14
__ptext14:
psect	text14
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\EEP\read_B.c"
	line	23
	global	__size_of_Read_b_eep
	__size_of_Read_b_eep	equ	__end_of_Read_b_eep-_Read_b_eep
	
_Read_b_eep:
;incstack = 0
	opt	stack 29
	dw	0FFFFh
	line	25
	
l2902:
	movff	(c:Read_b_eep@badd),(c:4009)	;volatile
	line	26
	bcf	((c:4006)),c,6	;volatile
	line	27
	bcf	((c:4006)),c,7	;volatile
	line	28
	bsf	((c:4006)),c,0	;volatile
	line	29
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	30
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	31
	
l2904:
	movf	((c:4008)),c,w	;volatile
	goto	l435
	
l2906:
	line	32
	
l435:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_Read_b_eep
	__end_of_Read_b_eep:
	signat	_Read_b_eep,4217
	global	_Busy_eep

;; *************** function _Busy_eep *****************
;; Defined at:
;;		line 12 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\EEP\busy_eep.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\EEP\busy_eep.c"
	line	12
global __ptext15
__ptext15:
psect	text15
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\EEP\busy_eep.c"
	line	12
	global	__size_of_Busy_eep
	__size_of_Busy_eep	equ	__end_of_Busy_eep-_Busy_eep
	
_Busy_eep:
;incstack = 0
	opt	stack 29
	dw	0FFFFh
	line	14
	
l2964:
	goto	l421
	
l422:
	
l421:
	btfsc	((c:4006)),c,1	;volatile
	goto	u3051
	goto	u3050
u3051:
	goto	l421
u3050:
	goto	l424
	
l423:
	line	15
	
l424:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_Busy_eep
	__end_of_Busy_eep:
	signat	_Busy_eep,88
	global	_tmr_int

;; *************** function _tmr_int *****************
;; Defined at:
;;		line 1333 in file "E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
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
	file	"E:\Study Material\XC8 PROJECTS\Cautry Machine\digi.c"
	line	1333
	global	__size_of_tmr_int
	__size_of_tmr_int	equ	__end_of_tmr_int-_tmr_int
	
_tmr_int:
;incstack = 0
	opt	stack 26
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
	line	1335
	
i2l2694:
;digi.c: 1335: if(adr == 7)
	movf	((c:_adr)),c,w	;volatile
	xorlw	7

	btfss	status,2
	goto	i2u262_41
	goto	i2u262_40
i2u262_41:
	goto	i2l2700
i2u262_40:
	line	1337
	
i2l2696:
;digi.c: 1336: {
;digi.c: 1337: RB0 = ~(RB0);
	btg	c:(31752/8),(31752)&7	;volatile
	line	1338
	
i2l2698:
;digi.c: 1338: adr = 0;
	movlw	low(0)
	movwf	((c:_adr)),c	;volatile
	goto	i2l2700
	line	1339
	
i2l414:
	line	1340
	
i2l2700:
;digi.c: 1339: }
;digi.c: 1340: PORTE = adr;
	movff	(c:_adr),(c:3972)	;volatile
	line	1341
	
i2l2702:
;digi.c: 1341: PORTB = PORTB & 0x0F;
	movf	((c:3969)),c,w	;volatile
	andlw	low(0Fh)
	movwf	((c:3969)),c	;volatile
	line	1342
	
i2l2704:
;digi.c: 1342: PORTB = PORTB | values[count];
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
	line	1343
	
i2l2706:
;digi.c: 1343: adr = adr + 1;
	incf	((c:_adr)),c,w	;volatile
	movwf	((c:_adr)),c	;volatile
	line	1344
	
i2l2708:
;digi.c: 1344: count = count + 1;
	incf	((c:_count)),c,w	;volatile
	movwf	((c:_count)),c	;volatile
	line	1345
	
i2l2710:
;digi.c: 1345: if(count == 14)
	movf	((c:_count)),c,w	;volatile
	xorlw	14

	btfss	status,2
	goto	i2u263_41
	goto	i2u263_40
i2u263_41:
	goto	i2l2714
i2u263_40:
	line	1347
	
i2l2712:
;digi.c: 1346: {
;digi.c: 1347: count = 0;
	movlw	low(0)
	movwf	((c:_count)),c	;volatile
	goto	i2l2714
	line	1348
	
i2l415:
	line	1349
	
i2l2714:
;digi.c: 1348: }
;digi.c: 1349: hold = hold - 1;
	decf	((c:_hold)),c,w
	movwf	((c:_hold)),c	;volatile
	line	1351
	
i2l2716:
;digi.c: 1351: T0IF = 0;
	bcf	c:(32658/8),(32658)&7	;volatile
	line	1352
	
i2l2718:
;digi.c: 1352: TMR0 = 0;
	movlw	high(0)
	movwf	((c:4054+1)),c	;volatile
	movlw	low(0)
	movwf	((c:4054)),c	;volatile
	goto	i2l416
	line	1353
	
i2l2720:
	line	1355
;digi.c: 1353: return;
	
i2l416:
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

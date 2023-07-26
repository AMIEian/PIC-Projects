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
	FNCALL	_main,_USARTWriteChar
	FNCALL	_main,_USART_initialize
	FNCALL	_main,_WriteUSART
	FNCALL	_USARTWriteChar,_MY_DELAY
	FNROOT	_main
	FNCALL	_SerialRx,_ReadUSART
	FNCALL	intlevel2,_SerialRx
	global	intlevel2
	FNROOT	intlevel2
	global	_digits
	global	_Command
psect	idataCOMRAM,class=CODE,space=0,delta=1,noexec
global __pidataCOMRAM
__pidataCOMRAM:
	file	"E:\Study Material\XC8 PROJECTS\Cautry\TEST2.c"
	line	28

;initializer for _digits
	db	low(01h)
	db	low(02h)
	db	low(03h)
	line	25

;initializer for _Command
	db	low(02h)
	global	_count
	global	_USART_Status
	global	_ch
	global	_data
	global	_foot
	global	_rx
	global	_ADCON1
_ADCON1	set	0xFC1
	global	_INTCONbits
_INTCONbits	set	0xFF2
	global	_PIE1
_PIE1	set	0xF9D
	global	_PIE1bits
_PIE1bits	set	0xF9D
	global	_PIR1bits
_PIR1bits	set	0xF9E
	global	_PORTE
_PORTE	set	0xF84
	global	_RCREG
_RCREG	set	0xFAE
	global	_RCSTA
_RCSTA	set	0xFAB
	global	_RCSTAbits
_RCSTAbits	set	0xFAB
	global	_SPBRG
_SPBRG	set	0xFAF
	global	_TRISA
_TRISA	set	0xF92
	global	_TRISB
_TRISB	set	0xF93
	global	_TRISCbits
_TRISCbits	set	0xF94
	global	_TRISD
_TRISD	set	0xF95
	global	_TRISE
_TRISE	set	0xF96
	global	_TXREG
_TXREG	set	0xFAD
	global	_TXSTAbits
_TXSTAbits	set	0xFAC
	global	_RCIE
_RCIE	set	0x7CED
	global	_RCIF
_RCIF	set	0x7CF5
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
	file	"Cautry.as"
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
	global	_count
_count:
       ds      2
	global	_USART_Status
_USART_Status:
       ds      1
	global	_ch
	global	_ch
_ch:
       ds      1
	global	_data
_data:
       ds      1
	global	_foot
_foot:
       ds      1
	global	_rx
_rx:
       ds      1
psect	dataCOMRAM,class=COMRAM,space=1,noexec
global __pdataCOMRAM
__pdataCOMRAM:
	file	"E:\Study Material\XC8 PROJECTS\Cautry\TEST2.c"
	line	28
	global	_digits
_digits:
       ds      3
psect	dataCOMRAM
	file	"E:\Study Material\XC8 PROJECTS\Cautry\TEST2.c"
	line	25
	global	_Command
_Command:
       ds      1
	file	"Cautry.as"
	line	#
psect	cinit
; Clear objects allocated to COMRAM (7 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	7
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
	line	#
; Initialize objects allocated to COMRAM (4 bytes)
	global __pidataCOMRAM
	; load TBLPTR registers with __pidataCOMRAM
	movlw	low (__pidataCOMRAM)
	movwf	tblptrl
	movlw	high(__pidataCOMRAM)
	movwf	tblptrh
	movlw	low highword(__pidataCOMRAM)
	movwf	tblptru
	lfsr	0,__pdataCOMRAM
	lfsr	1,4
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
?_USART_initialize:	; 0 bytes @ 0x0
?_WriteUSART:	; 0 bytes @ 0x0
?_USARTWriteChar:	; 0 bytes @ 0x0
??_ReadUSART:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_SerialRx:	; 0 bytes @ 0x0
?_ReadUSART:	; 1 bytes @ 0x0
	global	ReadUSART@data
ReadUSART@data:	; 1 bytes @ 0x0
	ds   1
??_SerialRx:	; 0 bytes @ 0x1
	ds   14
??_USART_initialize:	; 0 bytes @ 0xF
??_WriteUSART:	; 0 bytes @ 0xF
?_MY_DELAY:	; 0 bytes @ 0xF
	global	WriteUSART@data
WriteUSART@data:	; 1 bytes @ 0xF
	global	MY_DELAY@ms
MY_DELAY@ms:	; 2 bytes @ 0xF
	ds   2
??_MY_DELAY:	; 0 bytes @ 0x11
	ds   1
??_USARTWriteChar:	; 0 bytes @ 0x12
	global	USARTWriteChar@ch
USARTWriteChar@ch:	; 1 bytes @ 0x12
	ds   1
??_main:	; 0 bytes @ 0x13
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        4
;!    BSS         7
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM          127     19      30
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
;!    _main->_USARTWriteChar
;!    _USARTWriteChar->_MY_DELAY
;!
;!Critical Paths under _SerialRx in COMRAM
;!
;!    _SerialRx->_ReadUSART
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _SerialRx in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _SerialRx in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _SerialRx in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _SerialRx in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _SerialRx in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _SerialRx in BANK5
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
;! (0) _main                                                 0     0      0     536
;!                           _MY_DELAY
;!                     _USARTWriteChar
;!                   _USART_initialize
;!                         _WriteUSART
;! ---------------------------------------------------------------------------------
;! (1) _WriteUSART                                           1     1      0      15
;!                                             15 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _USART_initialize                                     0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _USARTWriteChar                                       1     1      0     268
;!                                             18 COMRAM     1     1      0
;!                           _MY_DELAY
;! ---------------------------------------------------------------------------------
;! (2) _MY_DELAY                                             3     1      2     253
;!                                             15 COMRAM     3     1      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (3) _SerialRx                                            14    14      0      15
;!                                              1 COMRAM    14    14      0
;!                          _ReadUSART
;! ---------------------------------------------------------------------------------
;! (4) _ReadUSART                                            1     1      0      15
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _MY_DELAY
;!   _USARTWriteChar
;!     _MY_DELAY
;!   _USART_initialize
;!   _WriteUSART
;!
;! _SerialRx (ROOT)
;!   _ReadUSART
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
;!COMRAM              7F     13      1E       1       23.6%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      1E      15        0.0%
;!DATA                 0      0      1E       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 32 in file "E:\Study Material\XC8 PROJECTS\Cautry\TEST2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_MY_DELAY
;;		_USARTWriteChar
;;		_USART_initialize
;;		_WriteUSART
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Cautry\TEST2.c"
	line	32
global __ptext0
__ptext0:
psect	text0
	file	"E:\Study Material\XC8 PROJECTS\Cautry\TEST2.c"
	line	32
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 27
	dw	0FFFFh
	line	34
	
l774:
;TEST2.c: 34: TRISA = 0x00;
	movlw	low(0)
	movwf	((c:3986)),c	;volatile
	line	35
	
l776:
;TEST2.c: 35: TRISB = 0xFF;
	setf	((c:3987)),c	;volatile
	line	36
;TEST2.c: 36: TRISD = 0x00;
	movlw	low(0)
	movwf	((c:3989)),c	;volatile
	line	37
;TEST2.c: 37: TRISE = 0x00;
	movlw	low(0)
	movwf	((c:3990)),c	;volatile
	line	38
;TEST2.c: 38: ADCON1 = 0x06;
	movlw	low(06h)
	movwf	((c:4033)),c	;volatile
	line	40
	
l778:
;TEST2.c: 40: RCSTA&=0b01001111,TXSTAbits.TXEN=0,PIE1&=0b11001111;
	movlw	(04Fh)&0ffh
	andwf	((c:4011)),c	;volatile
	
l780:
	bcf	((c:4012)),c,5	;volatile
	
l782:
	movlw	(0CFh)&0ffh
	andwf	((c:3997)),c	;volatile
	line	42
	
l784:
;TEST2.c: 42: USART_initialize();
	call	_USART_initialize	;wreg free
	line	44
	
l786:
;TEST2.c: 44: for(count = 0; count <= 5; count++)
	movlw	high(0)
	movwf	((c:_count+1)),c
	movlw	low(0)
	movwf	((c:_count)),c
	
l788:
	movf	((c:_count+1)),c,w
	xorlw	80h
	addlw	-((0)^80h)
	movlw	06h
	btfsc	status,2
	subwf	((c:_count)),c,w
	btfss	status,0
	goto	u91
	goto	u90
u91:
	goto	l65
u90:
	goto	l804
	
l790:
	goto	l804
	line	45
	
l65:
	line	46
;TEST2.c: 45: {
;TEST2.c: 46: PORTE = 0xFF;
	setf	((c:3972)),c	;volatile
	line	47
	
l792:
;TEST2.c: 47: WriteUSART('Z');
	movlw	(05Ah)&0ffh
	
	call	_WriteUSART
	line	48
	
l794:
;TEST2.c: 48: MY_DELAY(1000);
	movlw	high(03E8h)
	movwf	((c:MY_DELAY@ms+1)),c
	movlw	low(03E8h)
	movwf	((c:MY_DELAY@ms)),c
	call	_MY_DELAY	;wreg free
	line	49
	
l796:
;TEST2.c: 49: PORTE = 0x00;
	movlw	low(0)
	movwf	((c:3972)),c	;volatile
	line	50
	
l798:
;TEST2.c: 50: MY_DELAY(1000);
	movlw	high(03E8h)
	movwf	((c:MY_DELAY@ms+1)),c
	movlw	low(03E8h)
	movwf	((c:MY_DELAY@ms)),c
	call	_MY_DELAY	;wreg free
	line	44
	
l800:
	infsnz	((c:_count)),c
	incf	((c:_count+1)),c
	
l802:
	movf	((c:_count+1)),c,w
	xorlw	80h
	addlw	-((0)^80h)
	movlw	06h
	btfsc	status,2
	subwf	((c:_count)),c,w
	btfss	status,0
	goto	u101
	goto	u100
u101:
	goto	l65
u100:
	goto	l804
	
l66:
	line	52
	
l804:
;TEST2.c: 51: }
;TEST2.c: 52: count = 0;
	movlw	high(0)
	movwf	((c:_count+1)),c
	movlw	low(0)
	movwf	((c:_count)),c
	goto	l806
	line	54
;TEST2.c: 54: while(1)
	
l67:
	line	56
	
l806:
;TEST2.c: 55: {
;TEST2.c: 56: _delay(1000);
	movlw	250
u307:
decfsz	wreg,f
	goto	u307

	line	57
	
l808:
;TEST2.c: 57: count++;
	infsnz	((c:_count)),c
	incf	((c:_count+1)),c
	line	58
	
l810:
;TEST2.c: 58: if(count > 10000)
	movf	((c:_count+1)),c,w
	xorlw	80h
	addlw	-((027h)^80h)
	movlw	011h
	btfsc	status,2
	subwf	((c:_count)),c,w
	btfss	status,0
	goto	u111
	goto	u110
u111:
	goto	l986
u110:
	line	60
	
l812:
;TEST2.c: 59: {
;TEST2.c: 60: if(foot == 1)
	decf	((c:_foot)),c,w

	btfss	status,2
	goto	u121
	goto	u120
u121:
	goto	l69
u120:
	line	62
	
l814:
;TEST2.c: 61: {
;TEST2.c: 62: PORTE = 0xFF;
	setf	((c:3972)),c	;volatile
	line	63
	
l69:
	line	64
;TEST2.c: 63: }
;TEST2.c: 64: if(foot == 0)
	tstfsz	((c:_foot)),c
	goto	u131
	goto	u130
u131:
	goto	l818
u130:
	line	66
	
l816:
;TEST2.c: 65: {
;TEST2.c: 66: PORTE = 0x00;
	movlw	low(0)
	movwf	((c:3972)),c	;volatile
	goto	l818
	line	67
	
l70:
	line	68
	
l818:
;TEST2.c: 67: }
;TEST2.c: 68: foot = foot ^ 0x01;
	movf	((c:_foot)),c,w
	xorlw	low(01h)
	movwf	((c:_foot)),c
	line	69
	
l820:
;TEST2.c: 69: count = 0;
	movlw	high(0)
	movwf	((c:_count+1)),c
	movlw	low(0)
	movwf	((c:_count)),c
	goto	l986
	line	70
	
l68:
	line	72
;TEST2.c: 70: }
;TEST2.c: 72: switch(Command)
	goto	l986
	line	74
;TEST2.c: 73: {
;TEST2.c: 74: case Increase:
	
l72:
	line	75
	
l822:
;TEST2.c: 75: digits[0] = digits[0] + 1;
	incf	((c:_digits)),c,w
	movwf	((c:_digits)),c
	line	76
;TEST2.c: 76: if(digits[0] > 9)
	movf	((c:_digits)),c,w
	xorlw	80h
	addlw	-((0Ah)^80h)
	btfss	status,0
	goto	u141
	goto	u140
u141:
	goto	l838
u140:
	line	78
	
l824:
;TEST2.c: 77: {
;TEST2.c: 78: digits[0] = 0;
	movlw	low(0)
	movwf	((c:_digits)),c
	line	79
	
l826:
;TEST2.c: 79: digits[1] = digits[1] + 1;
	incf	(0+((c:_digits)+01h)),c,w
	movwf	(0+((c:_digits)+01h)),c
	line	80
	
l828:
;TEST2.c: 80: if(digits[1] > 9)
	movf	(0+((c:_digits)+01h)),c,w
	xorlw	80h
	addlw	-((0Ah)^80h)
	btfss	status,0
	goto	u151
	goto	u150
u151:
	goto	l838
u150:
	line	82
	
l830:
;TEST2.c: 81: {
;TEST2.c: 82: digits[1] = 0;
	movlw	low(0)
	movwf	(0+((c:_digits)+01h)),c
	line	83
	
l832:
;TEST2.c: 83: digits[2] = digits[2] + 1;
	incf	(0+((c:_digits)+02h)),c,w
	movwf	(0+((c:_digits)+02h)),c
	line	84
	
l834:
;TEST2.c: 84: if(digits[2] > 9)
	movf	(0+((c:_digits)+02h)),c,w
	xorlw	80h
	addlw	-((0Ah)^80h)
	btfss	status,0
	goto	u161
	goto	u160
u161:
	goto	l838
u160:
	line	86
	
l836:
;TEST2.c: 85: {
;TEST2.c: 86: digits[2] = 9;
	movlw	low(09h)
	movwf	(0+((c:_digits)+02h)),c
	line	87
;TEST2.c: 87: digits[1] = 9;
	movlw	low(09h)
	movwf	(0+((c:_digits)+01h)),c
	line	88
;TEST2.c: 88: digits[0] = 9;
	movlw	low(09h)
	movwf	((c:_digits)),c
	goto	l838
	line	89
	
l75:
	goto	l838
	line	90
	
l74:
	goto	l838
	line	91
	
l73:
	line	93
	
l838:
;TEST2.c: 89: }
;TEST2.c: 90: }
;TEST2.c: 91: }
;TEST2.c: 93: USARTWriteChar('A');
	movlw	(041h)&0ffh
	
	call	_USARTWriteChar
	line	95
	
l840:
;TEST2.c: 95: data = digits[0] + 48;
	movf	((c:_digits)),c,w
	addlw	low(030h)
	movwf	((c:_data)),c
	line	96
	
l842:
;TEST2.c: 96: USARTWriteChar(data);
	movf	((c:_data)),c,w
	
	call	_USARTWriteChar
	line	97
	
l844:
;TEST2.c: 97: USARTWriteChar('B');
	movlw	(042h)&0ffh
	
	call	_USARTWriteChar
	line	99
	
l846:
;TEST2.c: 99: data = digits[1] + 48;
	movf	(0+((c:_digits)+01h)),c,w
	addlw	low(030h)
	movwf	((c:_data)),c
	line	100
	
l848:
;TEST2.c: 100: USARTWriteChar(data);
	movf	((c:_data)),c,w
	
	call	_USARTWriteChar
	line	101
	
l850:
;TEST2.c: 101: USARTWriteChar('C');
	movlw	(043h)&0ffh
	
	call	_USARTWriteChar
	line	103
	
l852:
;TEST2.c: 103: data = digits[2] + 48;
	movf	(0+((c:_digits)+02h)),c,w
	addlw	low(030h)
	movwf	((c:_data)),c
	line	104
	
l854:
;TEST2.c: 104: USARTWriteChar(data);
	movf	((c:_data)),c,w
	
	call	_USARTWriteChar
	line	105
	
l856:
;TEST2.c: 105: MY_DELAY(10);
	movlw	high(0Ah)
	movwf	((c:MY_DELAY@ms+1)),c
	movlw	low(0Ah)
	movwf	((c:MY_DELAY@ms)),c
	call	_MY_DELAY	;wreg free
	line	106
	
l858:
;TEST2.c: 106: Command = Stop;
	movlw	low(02h)
	movwf	((c:_Command)),c
	line	107
;TEST2.c: 107: break;
	goto	l806
	line	109
;TEST2.c: 109: case Decrease:
	
l77:
	line	110
	
l860:
;TEST2.c: 110: digits[0] = digits[0] - 1;
	decf	((c:_digits)),c,w
	movwf	((c:_digits)),c
	line	111
	
l862:
;TEST2.c: 111: if(digits[0] < 0)
	btfss	((c:_digits)),c,7
	goto	u171
	goto	u170
u171:
	goto	l878
u170:
	line	113
	
l864:
;TEST2.c: 112: {
;TEST2.c: 113: digits[0] = 9;
	movlw	low(09h)
	movwf	((c:_digits)),c
	line	114
	
l866:
;TEST2.c: 114: digits[1] = digits[1] - 1;
	decf	(0+((c:_digits)+01h)),c,w
	movwf	(0+((c:_digits)+01h)),c
	line	115
	
l868:
;TEST2.c: 115: if(digits[1] < 0)
	btfss	(0+((c:_digits)+01h)),c,7
	goto	u181
	goto	u180
u181:
	goto	l878
u180:
	line	117
	
l870:
;TEST2.c: 116: {
;TEST2.c: 117: digits[1] = 9;
	movlw	low(09h)
	movwf	(0+((c:_digits)+01h)),c
	line	118
	
l872:
;TEST2.c: 118: digits[2] = digits[2] - 1;
	decf	(0+((c:_digits)+02h)),c,w
	movwf	(0+((c:_digits)+02h)),c
	line	119
	
l874:
;TEST2.c: 119: if(digits[2] < 0)
	btfss	(0+((c:_digits)+02h)),c,7
	goto	u191
	goto	u190
u191:
	goto	l878
u190:
	line	121
	
l876:
;TEST2.c: 120: {
;TEST2.c: 121: digits[2] = 0;
	movlw	low(0)
	movwf	(0+((c:_digits)+02h)),c
	line	122
;TEST2.c: 122: digits[1] = 0;
	movlw	low(0)
	movwf	(0+((c:_digits)+01h)),c
	line	123
;TEST2.c: 123: digits[0] = 0;
	movlw	low(0)
	movwf	((c:_digits)),c
	goto	l878
	line	124
	
l80:
	goto	l878
	line	125
	
l79:
	goto	l878
	line	126
	
l78:
	line	128
	
l878:
;TEST2.c: 124: }
;TEST2.c: 125: }
;TEST2.c: 126: }
;TEST2.c: 128: USARTWriteChar('A');
	movlw	(041h)&0ffh
	
	call	_USARTWriteChar
	line	130
	
l880:
;TEST2.c: 130: data = digits[0] + 48;
	movf	((c:_digits)),c,w
	addlw	low(030h)
	movwf	((c:_data)),c
	line	131
	
l882:
;TEST2.c: 131: USARTWriteChar(data);
	movf	((c:_data)),c,w
	
	call	_USARTWriteChar
	line	132
	
l884:
;TEST2.c: 132: USARTWriteChar('B');
	movlw	(042h)&0ffh
	
	call	_USARTWriteChar
	line	134
	
l886:
;TEST2.c: 134: data = digits[1] + 48;
	movf	(0+((c:_digits)+01h)),c,w
	addlw	low(030h)
	movwf	((c:_data)),c
	line	135
	
l888:
;TEST2.c: 135: USARTWriteChar(data);
	movf	((c:_data)),c,w
	
	call	_USARTWriteChar
	line	136
	
l890:
;TEST2.c: 136: USARTWriteChar('C');
	movlw	(043h)&0ffh
	
	call	_USARTWriteChar
	line	138
	
l892:
;TEST2.c: 138: data = digits[2] + 48;
	movf	(0+((c:_digits)+02h)),c,w
	addlw	low(030h)
	movwf	((c:_data)),c
	line	139
	
l894:
;TEST2.c: 139: USARTWriteChar(data);
	movf	((c:_data)),c,w
	
	call	_USARTWriteChar
	line	140
	
l896:
;TEST2.c: 140: MY_DELAY(10);
	movlw	high(0Ah)
	movwf	((c:MY_DELAY@ms+1)),c
	movlw	low(0Ah)
	movwf	((c:MY_DELAY@ms)),c
	call	_MY_DELAY	;wreg free
	line	141
	
l898:
;TEST2.c: 141: Command = Stop;
	movlw	low(02h)
	movwf	((c:_Command)),c
	line	142
;TEST2.c: 142: break;
	goto	l806
	line	144
;TEST2.c: 144: case FastIncrease:
	
l81:
	line	145
	
l900:
;TEST2.c: 145: digits[0] = digits[0] + 1;
	incf	((c:_digits)),c,w
	movwf	((c:_digits)),c
	line	146
;TEST2.c: 146: if(digits[0] > 9)
	movf	((c:_digits)),c,w
	xorlw	80h
	addlw	-((0Ah)^80h)
	btfss	status,0
	goto	u201
	goto	u200
u201:
	goto	l916
u200:
	line	148
	
l902:
;TEST2.c: 147: {
;TEST2.c: 148: digits[0] = 0;
	movlw	low(0)
	movwf	((c:_digits)),c
	line	149
	
l904:
;TEST2.c: 149: digits[1] = digits[1] + 1;
	incf	(0+((c:_digits)+01h)),c,w
	movwf	(0+((c:_digits)+01h)),c
	line	150
	
l906:
;TEST2.c: 150: if(digits[1] > 9)
	movf	(0+((c:_digits)+01h)),c,w
	xorlw	80h
	addlw	-((0Ah)^80h)
	btfss	status,0
	goto	u211
	goto	u210
u211:
	goto	l916
u210:
	line	152
	
l908:
;TEST2.c: 151: {
;TEST2.c: 152: digits[1] = 0;
	movlw	low(0)
	movwf	(0+((c:_digits)+01h)),c
	line	153
	
l910:
;TEST2.c: 153: digits[2] = digits[2] + 1;
	incf	(0+((c:_digits)+02h)),c,w
	movwf	(0+((c:_digits)+02h)),c
	line	154
	
l912:
;TEST2.c: 154: if(digits[2] > 9)
	movf	(0+((c:_digits)+02h)),c,w
	xorlw	80h
	addlw	-((0Ah)^80h)
	btfss	status,0
	goto	u221
	goto	u220
u221:
	goto	l916
u220:
	line	156
	
l914:
;TEST2.c: 155: {
;TEST2.c: 156: digits[2] = 9;
	movlw	low(09h)
	movwf	(0+((c:_digits)+02h)),c
	line	157
;TEST2.c: 157: digits[1] = 9;
	movlw	low(09h)
	movwf	(0+((c:_digits)+01h)),c
	line	158
;TEST2.c: 158: digits[0] = 9;
	movlw	low(09h)
	movwf	((c:_digits)),c
	goto	l916
	line	159
	
l84:
	goto	l916
	line	160
	
l83:
	goto	l916
	line	161
	
l82:
	line	163
	
l916:
;TEST2.c: 159: }
;TEST2.c: 160: }
;TEST2.c: 161: }
;TEST2.c: 163: USARTWriteChar('A');
	movlw	(041h)&0ffh
	
	call	_USARTWriteChar
	line	165
	
l918:
;TEST2.c: 165: data = digits[0] + 48;
	movf	((c:_digits)),c,w
	addlw	low(030h)
	movwf	((c:_data)),c
	line	166
	
l920:
;TEST2.c: 166: USARTWriteChar(data);
	movf	((c:_data)),c,w
	
	call	_USARTWriteChar
	line	167
	
l922:
;TEST2.c: 167: USARTWriteChar('B');
	movlw	(042h)&0ffh
	
	call	_USARTWriteChar
	line	169
	
l924:
;TEST2.c: 169: data = digits[1] + 48;
	movf	(0+((c:_digits)+01h)),c,w
	addlw	low(030h)
	movwf	((c:_data)),c
	line	170
	
l926:
;TEST2.c: 170: USARTWriteChar(data);
	movf	((c:_data)),c,w
	
	call	_USARTWriteChar
	line	171
	
l928:
;TEST2.c: 171: USARTWriteChar('C');
	movlw	(043h)&0ffh
	
	call	_USARTWriteChar
	line	173
	
l930:
;TEST2.c: 173: data = digits[2] + 48;
	movf	(0+((c:_digits)+02h)),c,w
	addlw	low(030h)
	movwf	((c:_data)),c
	line	174
	
l932:
;TEST2.c: 174: USARTWriteChar(data);
	movf	((c:_data)),c,w
	
	call	_USARTWriteChar
	line	175
	
l934:
;TEST2.c: 175: MY_DELAY(500);
	movlw	high(01F4h)
	movwf	((c:MY_DELAY@ms+1)),c
	movlw	low(01F4h)
	movwf	((c:MY_DELAY@ms)),c
	call	_MY_DELAY	;wreg free
	line	176
;TEST2.c: 176: break;
	goto	l806
	line	178
;TEST2.c: 178: case FastDecrease:
	
l85:
	line	179
	
l936:
;TEST2.c: 179: digits[0] = digits[0] - 1;
	decf	((c:_digits)),c,w
	movwf	((c:_digits)),c
	line	180
	
l938:
;TEST2.c: 180: if(digits[0] < 0)
	btfss	((c:_digits)),c,7
	goto	u231
	goto	u230
u231:
	goto	l954
u230:
	line	182
	
l940:
;TEST2.c: 181: {
;TEST2.c: 182: digits[0] = 9;
	movlw	low(09h)
	movwf	((c:_digits)),c
	line	183
	
l942:
;TEST2.c: 183: digits[1] = digits[1] - 1;
	decf	(0+((c:_digits)+01h)),c,w
	movwf	(0+((c:_digits)+01h)),c
	line	184
	
l944:
;TEST2.c: 184: if(digits[1] < 0)
	btfss	(0+((c:_digits)+01h)),c,7
	goto	u241
	goto	u240
u241:
	goto	l954
u240:
	line	186
	
l946:
;TEST2.c: 185: {
;TEST2.c: 186: digits[1] = 9;
	movlw	low(09h)
	movwf	(0+((c:_digits)+01h)),c
	line	187
	
l948:
;TEST2.c: 187: digits[2] = digits[2] - 1;
	decf	(0+((c:_digits)+02h)),c,w
	movwf	(0+((c:_digits)+02h)),c
	line	188
	
l950:
;TEST2.c: 188: if(digits[2] < 0)
	btfss	(0+((c:_digits)+02h)),c,7
	goto	u251
	goto	u250
u251:
	goto	l954
u250:
	line	190
	
l952:
;TEST2.c: 189: {
;TEST2.c: 190: digits[2] = 0;
	movlw	low(0)
	movwf	(0+((c:_digits)+02h)),c
	line	191
;TEST2.c: 191: digits[1] = 0;
	movlw	low(0)
	movwf	(0+((c:_digits)+01h)),c
	line	192
;TEST2.c: 192: digits[0] = 0;
	movlw	low(0)
	movwf	((c:_digits)),c
	goto	l954
	line	193
	
l88:
	goto	l954
	line	194
	
l87:
	goto	l954
	line	195
	
l86:
	line	197
	
l954:
;TEST2.c: 193: }
;TEST2.c: 194: }
;TEST2.c: 195: }
;TEST2.c: 197: USARTWriteChar('A');
	movlw	(041h)&0ffh
	
	call	_USARTWriteChar
	line	199
	
l956:
;TEST2.c: 199: data = digits[0] + 48;
	movf	((c:_digits)),c,w
	addlw	low(030h)
	movwf	((c:_data)),c
	line	200
	
l958:
;TEST2.c: 200: USARTWriteChar(data);
	movf	((c:_data)),c,w
	
	call	_USARTWriteChar
	line	201
	
l960:
;TEST2.c: 201: USARTWriteChar('B');
	movlw	(042h)&0ffh
	
	call	_USARTWriteChar
	line	203
	
l962:
;TEST2.c: 203: data = digits[1] + 48;
	movf	(0+((c:_digits)+01h)),c,w
	addlw	low(030h)
	movwf	((c:_data)),c
	line	204
	
l964:
;TEST2.c: 204: USARTWriteChar(data);
	movf	((c:_data)),c,w
	
	call	_USARTWriteChar
	line	205
	
l966:
;TEST2.c: 205: USARTWriteChar('C');
	movlw	(043h)&0ffh
	
	call	_USARTWriteChar
	line	207
	
l968:
;TEST2.c: 207: data = digits[2] + 48;
	movf	(0+((c:_digits)+02h)),c,w
	addlw	low(030h)
	movwf	((c:_data)),c
	line	208
	
l970:
;TEST2.c: 208: USARTWriteChar(data);
	movf	((c:_data)),c,w
	
	call	_USARTWriteChar
	line	209
	
l972:
;TEST2.c: 209: MY_DELAY(500);
	movlw	high(01F4h)
	movwf	((c:MY_DELAY@ms+1)),c
	movlw	low(01F4h)
	movwf	((c:MY_DELAY@ms)),c
	call	_MY_DELAY	;wreg free
	line	210
;TEST2.c: 210: break;
	goto	l806
	line	212
;TEST2.c: 212: case Switch_Value:
	
l89:
	line	213
	
l974:
;TEST2.c: 213: if(foot == 1)
	decf	((c:_foot)),c,w

	btfss	status,2
	goto	u261
	goto	u260
u261:
	goto	l978
u260:
	line	215
	
l976:
;TEST2.c: 214: {
;TEST2.c: 215: USARTWriteChar('R');
	movlw	(052h)&0ffh
	
	call	_USARTWriteChar
	line	216
;TEST2.c: 216: USARTWriteChar('1');
	movlw	(031h)&0ffh
	
	call	_USARTWriteChar
	goto	l978
	line	217
	
l90:
	line	218
	
l978:
;TEST2.c: 217: }
;TEST2.c: 218: if(foot == 0)
	tstfsz	((c:_foot)),c
	goto	u271
	goto	u270
u271:
	goto	l982
u270:
	line	220
	
l980:
;TEST2.c: 219: {
;TEST2.c: 220: USARTWriteChar('F');
	movlw	(046h)&0ffh
	
	call	_USARTWriteChar
	line	221
;TEST2.c: 221: USARTWriteChar('1');
	movlw	(031h)&0ffh
	
	call	_USARTWriteChar
	goto	l982
	line	222
	
l91:
	line	223
	
l982:
;TEST2.c: 222: }
;TEST2.c: 223: Command = Stop;
	movlw	low(02h)
	movwf	((c:_Command)),c
	line	224
;TEST2.c: 224: break;
	goto	l806
	line	226
;TEST2.c: 226: case Stop:
	
l92:
	line	227
;TEST2.c: 227: break;
	goto	l806
	line	229
;TEST2.c: 229: default:
	
l93:
	line	230
;TEST2.c: 230: break;
	goto	l806
	line	231
	
l984:
;TEST2.c: 231: }
	goto	l806
	line	72
	
l71:
	
l986:
	movf	((c:_Command)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 6, Range of values is 0 to 5
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           19    10 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l822
	xorlw	1^0	; case 1
	skipnz
	goto	l900
	xorlw	2^1	; case 2
	skipnz
	goto	l806
	xorlw	3^2	; case 3
	skipnz
	goto	l860
	xorlw	4^3	; case 4
	skipnz
	goto	l936
	xorlw	5^4	; case 5
	skipnz
	goto	l974
	goto	l806

	line	231
	
l76:
	goto	l806
	line	232
	
l94:
	line	54
	goto	l806
	
l95:
	line	233
	
l96:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_WriteUSART

;; *************** function _WriteUSART *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\USART\uwrite.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1   15[COMRAM] unsigned char 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\USART\uwrite.c"
	line	13
global __ptext1
__ptext1:
psect	text1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\USART\uwrite.c"
	line	13
	global	__size_of_WriteUSART
	__size_of_WriteUSART	equ	__end_of_WriteUSART-_WriteUSART
	
_WriteUSART:
;incstack = 0
	opt	stack 28
	dw	0FFFFh
;WriteUSART@data stored from wreg
	movwf	((c:WriteUSART@data)),c
	line	15
	
l744:
	btfss	((c:4012)),c,6	;volatile
	goto	u21
	goto	u20
u21:
	goto	l750
u20:
	line	17
	
l746:
	bcf	((c:4012)),c,0	;volatile
	line	18
	btfss	((c:_USART_Status)),c,1
	goto	u31
	goto	u30
u31:
	goto	l750
u30:
	line	19
	
l748:
	bsf	((c:4012)),c,0	;volatile
	goto	l750
	
l147:
	goto	l750
	line	20
	
l146:
	line	22
	
l750:
	movff	(c:WriteUSART@data),(c:4013)	;volatile
	line	23
	
l148:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_WriteUSART
	__end_of_WriteUSART:
	signat	_WriteUSART,4216
	global	_USART_initialize

;; *************** function _USART_initialize *****************
;; Defined at:
;;		line 280 in file "E:\Study Material\XC8 PROJECTS\Cautry\TEST2.c"
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
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Cautry\TEST2.c"
	line	280
global __ptext2
__ptext2:
psect	text2
	file	"E:\Study Material\XC8 PROJECTS\Cautry\TEST2.c"
	line	280
	global	__size_of_USART_initialize
	__size_of_USART_initialize	equ	__end_of_USART_initialize-_USART_initialize
	
_USART_initialize:
;incstack = 0
	opt	stack 28
	dw	0FFFFh
	line	283
	
l734:
;TEST2.c: 283: TRISCbits.RC6 = 0;
	bcf	((c:3988)),c,6	;volatile
	line	284
;TEST2.c: 284: TRISCbits.RC7 = 1;
	bsf	((c:3988)),c,7	;volatile
	line	287
;TEST2.c: 287: TXSTAbits.SYNC = 0;
	bcf	((c:4012)),c,4	;volatile
	line	288
;TEST2.c: 288: TXSTAbits.TX9 = 0;
	bcf	((c:4012)),c,6	;volatile
	line	289
;TEST2.c: 289: TXSTAbits.BRGH = 1;
	bsf	((c:4012)),c,2	;volatile
	line	290
;TEST2.c: 290: TXSTAbits.TXEN = 1;
	bsf	((c:4012)),c,5	;volatile
	line	294
;TEST2.c: 294: RCSTAbits.SPEN = 1;
	bsf	((c:4011)),c,7	;volatile
	line	295
;TEST2.c: 295: RCSTAbits.RX9 = 0;
	bcf	((c:4011)),c,6	;volatile
	line	296
;TEST2.c: 296: RCSTAbits.CREN = 1;
	bsf	((c:4011)),c,4	;volatile
	line	298
	
l736:
;TEST2.c: 298: SPBRG = 64;
	movlw	low(040h)
	movwf	((c:4015)),c	;volatile
	line	302
	
l738:
;TEST2.c: 302: INTCONbits.GIE = 1;
	bsf	((c:4082)),c,7	;volatile
	line	303
	
l740:
;TEST2.c: 303: INTCONbits.PEIE = 1;
	bsf	((c:4082)),c,6	;volatile
	line	304
	
l742:
;TEST2.c: 304: PIE1bits.RCIE = 1;
	bsf	((c:3997)),c,5	;volatile
	line	307
	
l118:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_USART_initialize
	__end_of_USART_initialize:
	signat	_USART_initialize,88
	global	_USARTWriteChar

;; *************** function _USARTWriteChar *****************
;; Defined at:
;;		line 310 in file "E:\Study Material\XC8 PROJECTS\Cautry\TEST2.c"
;; Parameters:    Size  Location     Type
;;  ch              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch              1   18[COMRAM] unsigned char 
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
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_MY_DELAY
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
	line	310
global __ptext3
__ptext3:
psect	text3
	file	"E:\Study Material\XC8 PROJECTS\Cautry\TEST2.c"
	line	310
	global	__size_of_USARTWriteChar
	__size_of_USARTWriteChar	equ	__end_of_USARTWriteChar-_USARTWriteChar
	
_USARTWriteChar:
;incstack = 0
	opt	stack 27
	dw	0FFFFh
;USARTWriteChar@ch stored from wreg
	line	311
	movwf	((c:USARTWriteChar@ch)),c
	line	312
	
l752:
;TEST2.c: 312: while(!PIR1bits.TXIF);
	goto	l121
	
l122:
	
l121:
	btfss	((c:3998)),c,4	;volatile
	goto	u41
	goto	u40
u41:
	goto	l121
u40:
	goto	l754
	
l123:
	line	313
	
l754:
;TEST2.c: 313: TXREG=ch;
	movff	(c:USARTWriteChar@ch),(c:4013)	;volatile
	line	314
	
l756:
;TEST2.c: 314: MY_DELAY(10);
	movlw	high(0Ah)
	movwf	((c:MY_DELAY@ms+1)),c
	movlw	low(0Ah)
	movwf	((c:MY_DELAY@ms)),c
	call	_MY_DELAY	;wreg free
	line	315
	
l124:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_USARTWriteChar
	__end_of_USARTWriteChar:
	signat	_USARTWriteChar,4216
	global	_MY_DELAY

;; *************** function _MY_DELAY *****************
;; Defined at:
;;		line 270 in file "E:\Study Material\XC8 PROJECTS\Cautry\TEST2.c"
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
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_USARTWriteChar
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
	line	270
global __ptext4
__ptext4:
psect	text4
	file	"E:\Study Material\XC8 PROJECTS\Cautry\TEST2.c"
	line	270
	global	__size_of_MY_DELAY
	__size_of_MY_DELAY	equ	__end_of_MY_DELAY-_MY_DELAY
	
_MY_DELAY:
;incstack = 0
	opt	stack 27
	dw	0FFFFh
	line	272
	
l726:
;TEST2.c: 272: while(ms > 0)
	goto	l732
	
l113:
	line	274
	
l728:
;TEST2.c: 273: {
;TEST2.c: 274: _delay((unsigned long)((1)*(10000000/4000.0)));
	movlw	3
movwf	(??_MY_DELAY+0+0)&0ffh,c,f
	movlw	111
u317:
	decfsz	wreg,f
	goto	u317
	decfsz	(??_MY_DELAY+0+0)&0ffh,c,f
	goto	u317

	line	275
	
l730:
;TEST2.c: 275: ms--;
	decf	((c:MY_DELAY@ms)),c
	btfss	status,0
	decf	((c:MY_DELAY@ms+1)),c
	goto	l732
	line	276
	
l112:
	line	272
	
l732:
	movf	((c:MY_DELAY@ms+1)),c,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	01h
	btfsc	status,2
	subwf	((c:MY_DELAY@ms)),c,w
	btfsc	status,0
	goto	u11
	goto	u10
u11:
	goto	l728
u10:
	goto	l115
	
l114:
	line	278
;TEST2.c: 276: }
;TEST2.c: 277: return;
	
l115:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_MY_DELAY
	__end_of_MY_DELAY:
	signat	_MY_DELAY,4216
	global	_SerialRx

;; *************** function _SerialRx *****************
;; Defined at:
;;		line 235 in file "E:\Study Material\XC8 PROJECTS\Cautry\TEST2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:         14       0       0       0       0       0       0
;;      Totals:        14       0       0       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_ReadUSART
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	intcode,class=CODE,space=0,reloc=2
global __pintcode
__pintcode:
psect	intcode
	file	"E:\Study Material\XC8 PROJECTS\Cautry\TEST2.c"
	line	235
	global	__size_of_SerialRx
	__size_of_SerialRx	equ	__end_of_SerialRx-_SerialRx
	
_SerialRx:
;incstack = 0
	opt	stack 27
	dw	0FFFFh; errata NOP
	movff	pclat+0,??_SerialRx+0
	movff	pclat+1,??_SerialRx+1
	movff	fsr0l+0,??_SerialRx+2
	movff	fsr0h+0,??_SerialRx+3
	movff	fsr1l+0,??_SerialRx+4
	movff	fsr1h+0,??_SerialRx+5
	movff	fsr2l+0,??_SerialRx+6
	movff	fsr2h+0,??_SerialRx+7
	movff	prodl+0,??_SerialRx+8
	movff	prodh+0,??_SerialRx+9
	movff	tblptrl+0,??_SerialRx+10
	movff	tblptrh+0,??_SerialRx+11
	movff	tblptru+0,??_SerialRx+12
	movff	tablat+0,??_SerialRx+13
	line	238
	
i2l988:
;TEST2.c: 238: if(RCIE && RCIF)
	btfss	c:(31981/8),(31981)&7	;volatile
	goto	i2u28_41
	goto	i2u28_40
i2u28_41:
	goto	i2l109
i2u28_40:
	
i2l990:
	btfss	c:(31989/8),(31989)&7	;volatile
	goto	i2u29_41
	goto	i2u29_40
i2u29_41:
	goto	i2l109
i2u29_40:
	line	240
	
i2l992:
;TEST2.c: 239: {
;TEST2.c: 240: rx = ReadUSART();
	call	_ReadUSART	;wreg free
	movwf	((c:_rx)),c
	line	242
;TEST2.c: 242: switch(rx)
	goto	i2l1010
	line	244
;TEST2.c: 243: {
;TEST2.c: 244: case '1':
	
i2l101:
	line	245
	
i2l994:
;TEST2.c: 245: Command = Increase;
	movlw	low(0)
	movwf	((c:_Command)),c
	line	246
;TEST2.c: 246: break;
	goto	i2l102
	line	247
;TEST2.c: 247: case '2':
	
i2l103:
	line	248
	
i2l996:
;TEST2.c: 248: Command = FastIncrease;
	movlw	low(01h)
	movwf	((c:_Command)),c
	line	249
;TEST2.c: 249: break;
	goto	i2l102
	line	250
;TEST2.c: 250: case '3':
	
i2l104:
	line	251
	
i2l998:
;TEST2.c: 251: Command = Stop;
	movlw	low(02h)
	movwf	((c:_Command)),c
	line	252
;TEST2.c: 252: break;
	goto	i2l102
	line	253
;TEST2.c: 253: case '4':
	
i2l105:
	line	254
	
i2l1000:
;TEST2.c: 254: Command = Decrease;
	movlw	low(03h)
	movwf	((c:_Command)),c
	line	255
;TEST2.c: 255: break;
	goto	i2l102
	line	256
;TEST2.c: 256: case '5':
	
i2l106:
	line	257
	
i2l1002:
;TEST2.c: 257: Command = FastDecrease;
	movlw	low(04h)
	movwf	((c:_Command)),c
	line	258
;TEST2.c: 258: break;
	goto	i2l102
	line	259
;TEST2.c: 259: case '6':
	
i2l107:
	line	260
	
i2l1004:
;TEST2.c: 260: Command = Switch_Value;
	movlw	low(05h)
	movwf	((c:_Command)),c
	line	261
;TEST2.c: 261: break;
	goto	i2l102
	line	262
;TEST2.c: 262: default:
	
i2l108:
	line	263
	
i2l1006:
;TEST2.c: 263: Command = Stop;
	movlw	low(02h)
	movwf	((c:_Command)),c
	line	264
;TEST2.c: 264: break;
	goto	i2l102
	line	265
	
i2l1008:
;TEST2.c: 265: }
	goto	i2l102
	line	242
	
i2l100:
	
i2l1010:
	movf	((c:_rx)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 6, Range of values is 49 to 54
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           19    10 (average)
;	Chosen strategy is simple_byte

	xorlw	49^0	; case 49
	skipnz
	goto	i2l994
	xorlw	50^49	; case 50
	skipnz
	goto	i2l996
	xorlw	51^50	; case 51
	skipnz
	goto	i2l998
	xorlw	52^51	; case 52
	skipnz
	goto	i2l1000
	xorlw	53^52	; case 53
	skipnz
	goto	i2l1002
	xorlw	54^53	; case 54
	skipnz
	goto	i2l1004
	goto	i2l1006

	line	265
	
i2l102:
	line	266
;TEST2.c: 266: RCIF = 0;
	bcf	c:(31989/8),(31989)&7	;volatile
	goto	i2l109
	line	267
	
i2l99:
	line	268
	
i2l109:
	movff	??_SerialRx+13,tablat+0
	movff	??_SerialRx+12,tblptru+0
	movff	??_SerialRx+11,tblptrh+0
	movff	??_SerialRx+10,tblptrl+0
	movff	??_SerialRx+9,prodh+0
	movff	??_SerialRx+8,prodl+0
	movff	??_SerialRx+7,fsr2h+0
	movff	??_SerialRx+6,fsr2l+0
	movff	??_SerialRx+5,fsr1h+0
	movff	??_SerialRx+4,fsr1l+0
	movff	??_SerialRx+3,fsr0h+0
	movff	??_SerialRx+2,fsr0l+0
	movff	??_SerialRx+1,pclat+1
	movff	??_SerialRx+0,pclat+0
	retfie f
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_SerialRx
	__end_of_SerialRx:
	signat	_SerialRx,88
	global	_ReadUSART

;; *************** function _ReadUSART *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\USART\uread.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
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
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SerialRx
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\USART\uread.c"
	line	15
global __ptext6
__ptext6:
psect	text6
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\USART\uread.c"
	line	15
	global	__size_of_ReadUSART
	__size_of_ReadUSART	equ	__end_of_ReadUSART-_ReadUSART
	
_ReadUSART:
;incstack = 0
	opt	stack 27
	dw	0FFFFh
	line	19
	
i2l758:
	movlw	(0F2h)&0ffh
	andwf	((c:_USART_Status)),c
	line	21
	
i2l760:
	btfss	((c:4011)),c,6	;volatile
	goto	i2u5_41
	goto	i2u5_40
i2u5_41:
	goto	i2l133
i2u5_40:
	line	23
	
i2l762:
	bcf	((c:_USART_Status)),c,0
	line	24
	btfss	((c:4011)),c,0	;volatile
	goto	i2u6_41
	goto	i2u6_40
i2u6_41:
	goto	i2l133
i2u6_40:
	line	25
	
i2l764:
	bsf	((c:_USART_Status)),c,0
	goto	i2l133
	
i2l134:
	line	26
	
i2l133:
	line	28
	btfss	((c:4011)),c,2	;volatile
	goto	i2u7_41
	goto	i2u7_40
i2u7_41:
	goto	i2l135
i2u7_40:
	line	29
	
i2l766:
	bsf	((c:_USART_Status)),c,2
	
i2l135:
	line	31
	btfss	((c:4011)),c,1	;volatile
	goto	i2u8_41
	goto	i2u8_40
i2u8_41:
	goto	i2l136
i2u8_40:
	line	32
	
i2l768:
	bsf	((c:_USART_Status)),c,3
	
i2l136:
	line	34
	movff	(c:4014),(c:ReadUSART@data)	;volatile
	line	36
	
i2l770:
	movf	((c:ReadUSART@data)),c,w
	goto	i2l137
	
i2l772:
	line	37
	
i2l137:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_ReadUSART
	__end_of_ReadUSART:
	signat	_ReadUSART,89
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

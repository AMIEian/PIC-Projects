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
	FNCALL	_main,_LCDByte
	FNCALL	_main,_LCDGotoXY
	FNCALL	_main,_LCDInit
	FNCALL	_main,_LCDWriteString
	FNCALL	_main,_OpenI2C
	FNCALL	_main,_eeprom_read_byte
	FNCALL	_main,_eeprom_write_byte
	FNCALL	_eeprom_write_byte,_IdleI2C
	FNCALL	_eeprom_write_byte,_WriteI2C
	FNCALL	_eeprom_read_byte,_IdleI2C
	FNCALL	_eeprom_read_byte,_ReadI2C
	FNCALL	_eeprom_read_byte,_WriteI2C
	FNCALL	_WriteI2C,_IdleI2C
	FNCALL	_LCDWriteString,_LCDByte
	FNCALL	_LCDInit,_LCDBusyLoop
	FNCALL	_LCDInit,_LCDByte
	FNCALL	_LCDGotoXY,_LCDByte
	FNCALL	_LCDByte,_LCDBusyLoop
	FNROOT	_main
	global	___cgram
	global	main@F3765
psect	idataCOMRAM,class=CODE,space=0,delta=1,noexec
global __pidataCOMRAM
__pidataCOMRAM:
	file	"E:\Study Material\XC8 PROJECTS\EEPROM Library\custom_char.h"
	line	15

;initializer for ___cgram
	db	low(0)
	db	low(01h)
	db	low(03h)
	db	low(016h)
	db	low(01Ch)
	db	low(08h)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(01Bh)
	db	low(0Eh)
	db	low(04h)
	db	low(0Eh)
	db	low(01Bh)
	db	low(0)
	db	low(0)
	file	"E:\Study Material\XC8 PROJECTS\EEPROM Library\Test.c"
	line	12

;initializer for main@F3765
	db	low(04Eh)
	db	low(069h)
	db	low(074h)
	db	low(069h)
	db	low(06Eh)
	db	low(0)
	db   0
	db   0
	db   0
	db   0
	global	LCDWriteInt@F3701
	global	_PIR1bits
_PIR1bits	set	0xF9E
	global	_PORTB
_PORTB	set	0xF81
	global	_SSPADD
_SSPADD	set	0xFC8
	global	_SSPBUF
_SSPBUF	set	0xFC9
	global	_SSPCON1
_SSPCON1	set	0xFC6
	global	_SSPCON1bits
_SSPCON1bits	set	0xFC6
	global	_SSPCON2
_SSPCON2	set	0xFC5
	global	_SSPCON2bits
_SSPCON2bits	set	0xFC5
	global	_SSPSTAT
_SSPSTAT	set	0xFC7
	global	_SSPSTATbits
_SSPSTATbits	set	0xFC7
	global	_TRISB
_TRISB	set	0xF93
	global	_TRISBbits
_TRISBbits	set	0xF93
	global	_TRISC
_TRISC	set	0xF94
	global	_TRISCbits
_TRISCbits	set	0xF94
	global	_RB1
_RB1	set	0x7C09
	global	_RB2
_RB2	set	0x7C0A
	global	_RB3
_RB3	set	0x7C0B
; #config settings
global __CFG_OSCS$OFF
__CFG_OSCS$OFF equ 0x0
global __CFG_OSC$XT
__CFG_OSC$XT equ 0x0
global __CFG_PWRT$OFF
__CFG_PWRT$OFF equ 0x0
global __CFG_BOR$OFF
__CFG_BOR$OFF equ 0x0
global __CFG_WDT$OFF
__CFG_WDT$OFF equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
	file	"EEPROM.as"
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
LCDWriteInt@F3701:
       ds      5
psect	dataCOMRAM,class=COMRAM,space=1,noexec
global __pdataCOMRAM
__pdataCOMRAM:
	file	"E:\Study Material\XC8 PROJECTS\EEPROM Library\custom_char.h"
	line	15
	global	___cgram
___cgram:
       ds      16
psect	dataCOMRAM
	file	"E:\Study Material\XC8 PROJECTS\EEPROM Library\Test.c"
	line	12
main@F3765:
       ds      10
	file	"EEPROM.as"
	line	#
psect	cinit
; Clear objects allocated to COMRAM (5 bytes)
	global __pbssCOMRAM
clrf	(__pbssCOMRAM+4)&0xffh,c
clrf	(__pbssCOMRAM+3)&0xffh,c
clrf	(__pbssCOMRAM+2)&0xffh,c
clrf	(__pbssCOMRAM+1)&0xffh,c
clrf	(__pbssCOMRAM+0)&0xffh,c
	line	#
; Initialize objects allocated to COMRAM (26 bytes)
	global __pidataCOMRAM
	; load TBLPTR registers with __pidataCOMRAM
	movlw	low (__pidataCOMRAM)
	movwf	tblptrl
	movlw	high(__pidataCOMRAM)
	movwf	tblptrh
	movlw	low highword(__pidataCOMRAM)
	movwf	tblptru
	lfsr	0,__pdataCOMRAM
	lfsr	1,26
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
?_LCDBusyLoop:	; 0 bytes @ 0x0
??_LCDBusyLoop:	; 0 bytes @ 0x0
?_IdleI2C:	; 0 bytes @ 0x0
??_IdleI2C:	; 0 bytes @ 0x0
??_ReadI2C:	; 0 bytes @ 0x0
?_OpenI2C:	; 0 bytes @ 0x0
?_LCDInit:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_WriteI2C:	; 1 bytes @ 0x0
?_ReadI2C:	; 1 bytes @ 0x0
	global	LCDBusyLoop@busy
LCDBusyLoop@busy:	; 1 bytes @ 0x0
eeprom_write_byte@device:	; 1 bytes @ 0x0
eeprom_read_byte@device:	; 1 bytes @ 0x0
	global	OpenI2C@slew
OpenI2C@slew:	; 1 bytes @ 0x0
	ds   1
??_WriteI2C:	; 0 bytes @ 0x1
??_OpenI2C:	; 0 bytes @ 0x1
	global	LCDBusyLoop@temp
LCDBusyLoop@temp:	; 1 bytes @ 0x1
	global	OpenI2C@sync_mode
OpenI2C@sync_mode:	; 1 bytes @ 0x1
	ds   1
	global	LCDBusyLoop@status
LCDBusyLoop@status:	; 1 bytes @ 0x2
	global	WriteI2C@data_out
WriteI2C@data_out:	; 1 bytes @ 0x2
	ds   1
?_LCDByte:	; 0 bytes @ 0x3
?_eeprom_write_byte:	; 0 bytes @ 0x3
?_eeprom_read_byte:	; 1 bytes @ 0x3
	global	LCDByte@isdata
LCDByte@isdata:	; 1 bytes @ 0x3
	global	eeprom_write_byte@address
eeprom_write_byte@address:	; 2 bytes @ 0x3
	global	eeprom_read_byte@address
eeprom_read_byte@address:	; 2 bytes @ 0x3
	ds   1
??_LCDByte:	; 0 bytes @ 0x4
	ds   1
??_eeprom_read_byte:	; 0 bytes @ 0x5
	global	LCDByte@hn
LCDByte@hn:	; 1 bytes @ 0x5
	global	eeprom_write_byte@byte
eeprom_write_byte@byte:	; 1 bytes @ 0x5
	ds   1
??_eeprom_write_byte:	; 0 bytes @ 0x6
	global	LCDByte@ln
LCDByte@ln:	; 1 bytes @ 0x6
	ds   1
	global	LCDByte@c
LCDByte@c:	; 1 bytes @ 0x7
	global	eeprom_read_byte@msb
eeprom_read_byte@msb:	; 1 bytes @ 0x7
	ds   1
	global	LCDByte@temp
LCDByte@temp:	; 1 bytes @ 0x8
	global	eeprom_write_byte@msb
eeprom_write_byte@msb:	; 1 bytes @ 0x8
	global	eeprom_read_byte@lsb
eeprom_read_byte@lsb:	; 1 bytes @ 0x8
	ds   1
??_LCDInit:	; 0 bytes @ 0x9
?_LCDWriteString:	; 0 bytes @ 0x9
?_LCDGotoXY:	; 0 bytes @ 0x9
	global	LCDGotoXY@y
LCDGotoXY@y:	; 1 bytes @ 0x9
	global	eeprom_write_byte@lsb
eeprom_write_byte@lsb:	; 1 bytes @ 0x9
	global	eeprom_read_byte@data
eeprom_read_byte@data:	; 1 bytes @ 0x9
	global	LCDWriteString@msg
LCDWriteString@msg:	; 2 bytes @ 0x9
	ds   1
??_LCDGotoXY:	; 0 bytes @ 0xA
	global	LCDInit@style
LCDInit@style:	; 1 bytes @ 0xA
	global	LCDGotoXY@x
LCDGotoXY@x:	; 1 bytes @ 0xA
	ds   1
??_LCDWriteString:	; 0 bytes @ 0xB
	global	LCDInit@__i
LCDInit@__i:	; 1 bytes @ 0xB
	ds   1
	global	LCDWriteString@cc
LCDWriteString@cc:	; 1 bytes @ 0xC
	ds   1
??_main:	; 0 bytes @ 0xD
	global	main@message
main@message:	; 10 bytes @ 0xD
	ds   10
	global	main@c
main@c:	; 1 bytes @ 0x17
	ds   1
	global	main@ptr
main@ptr:	; 2 bytes @ 0x18
	ds   2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        26
;!    BSS         5
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM          127     26      57
;!    BANK0           128      0       0
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0

;!
;!Pointer List with Targets:
;!
;!    main@ptr	PTR unsigned char  size(2) Largest target is 10
;!		 -> main@message(COMRAM[10]), 
;!
;!    LCDWriteString@msg	PTR const unsigned char  size(2) Largest target is 10
;!		 -> main@message(COMRAM[10]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_LCDWriteString
;!    _eeprom_write_byte->_WriteI2C
;!    _eeprom_read_byte->_WriteI2C
;!    _WriteI2C->_IdleI2C
;!    _LCDWriteString->_LCDByte
;!    _LCDInit->_LCDByte
;!    _LCDGotoXY->_LCDByte
;!    _LCDByte->_LCDBusyLoop
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                13    13      0    3567
;!                                             13 COMRAM    13    13      0
;!                            _LCDByte
;!                          _LCDGotoXY
;!                            _LCDInit
;!                     _LCDWriteString
;!                            _OpenI2C
;!                   _eeprom_read_byte
;!                  _eeprom_write_byte
;! ---------------------------------------------------------------------------------
;! (1) _eeprom_write_byte                                    8     5      3     131
;!                                              3 COMRAM     7     4      3
;!                            _IdleI2C
;!                           _WriteI2C
;! ---------------------------------------------------------------------------------
;! (1) _eeprom_read_byte                                     8     6      2     103
;!                                              3 COMRAM     7     5      2
;!                            _IdleI2C
;!                            _ReadI2C
;!                           _WriteI2C
;! ---------------------------------------------------------------------------------
;! (2) _WriteI2C                                             2     2      0      15
;!                                              1 COMRAM     2     2      0
;!                            _IdleI2C
;! ---------------------------------------------------------------------------------
;! (3) _IdleI2C                                              1     1      0       0
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _ReadI2C                                              1     1      0       0
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _OpenI2C                                              2     1      1      73
;!                                              0 COMRAM     2     1      1
;! ---------------------------------------------------------------------------------
;! (1) _LCDWriteString                                       4     2      2     859
;!                                              9 COMRAM     4     2      2
;!                            _LCDByte
;! ---------------------------------------------------------------------------------
;! (1) _LCDInit                                              3     3      0     831
;!                                              9 COMRAM     3     3      0
;!                        _LCDBusyLoop
;!                            _LCDByte
;! ---------------------------------------------------------------------------------
;! (1) _LCDGotoXY                                            2     1      1     784
;!                                              9 COMRAM     2     1      1
;!                            _LCDByte
;! ---------------------------------------------------------------------------------
;! (2) _LCDByte                                              6     5      1     696
;!                                              3 COMRAM     6     5      1
;!                        _LCDBusyLoop
;! ---------------------------------------------------------------------------------
;! (3) _LCDBusyLoop                                          3     3      0      75
;!                                              0 COMRAM     3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _LCDByte
;!     _LCDBusyLoop
;!   _LCDGotoXY
;!     _LCDByte
;!       _LCDBusyLoop
;!   _LCDInit
;!     _LCDBusyLoop
;!     _LCDByte
;!       _LCDBusyLoop
;!   _LCDWriteString
;!     _LCDByte
;!       _LCDBusyLoop
;!   _OpenI2C
;!   _eeprom_read_byte
;!     _IdleI2C
;!     _ReadI2C
;!     _WriteI2C
;!       _IdleI2C
;!   _eeprom_write_byte
;!     _IdleI2C
;!     _WriteI2C
;!       _IdleI2C
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
;!COMRAM              7F     1A      39       1       44.9%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      39      15        0.0%
;!DATA                 0      0      39       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 9 in file "E:\Study Material\XC8 PROJECTS\EEPROM Library\Test.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  message        10   13[COMRAM] unsigned char [10]
;;  ptr             2   24[COMRAM] PTR unsigned char 
;;		 -> main@message(10), 
;;  c               1   23[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:        13       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:        13       0       0       0       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LCDByte
;;		_LCDGotoXY
;;		_LCDInit
;;		_LCDWriteString
;;		_OpenI2C
;;		_eeprom_read_byte
;;		_eeprom_write_byte
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\EEPROM Library\Test.c"
	line	9
global __ptext0
__ptext0:
psect	text0
	file	"E:\Study Material\XC8 PROJECTS\EEPROM Library\Test.c"
	line	9
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 28
	dw	0FFFFh
	line	13
	
l1092:
;Test.c: 11: unsigned char c;
;Test.c: 12: unsigned char *ptr;
;Test.c: 13: unsigned char message[10] = "Nitin";
	lfsr	2,(main@F3765)
	lfsr	1,(main@message)
	movlw	10
u361:
	movff	postinc2,postinc1
	decfsz	wreg
	goto	u361
	line	14
	
l1094:
;Test.c: 14: TRISB = 0x00;
	movlw	low(0)
	movwf	((c:3987)),c	;volatile
	line	15
	
l1096:
;Test.c: 15: PORTB = 0;
	movlw	low(0)
	movwf	((c:3969)),c	;volatile
	line	16
	
l1098:
;Test.c: 16: TRISC = 0xFF;
	setf	((c:3988)),c	;volatile
	line	19
	
l1100:
;Test.c: 19: LCDInit(0B00000000);
	movlw	(0)&0ffh
	
	call	_LCDInit
	line	27
	
l1102:
;Test.c: 27: OpenI2C(0b00001000,0b10000000);
	movlw	low(080h)
	movwf	((c:OpenI2C@slew)),c
	movlw	(08h)&0ffh
	
	call	_OpenI2C
	line	28
	
l1104:
;Test.c: 28: SSPADD = 0x28;
	movlw	low(028h)
	movwf	((c:4040)),c	;volatile
	line	30
	
l1106:
;Test.c: 30: eeprom_write_byte(0xA0,0x0000, 'A');
	movlw	high(0)
	movwf	((c:eeprom_write_byte@address+1)),c
	movlw	low(0)
	movwf	((c:eeprom_write_byte@address)),c
	movlw	low(041h)
	movwf	((c:eeprom_write_byte@byte)),c
	movlw	(0A0h)&0ffh
	
	call	_eeprom_write_byte
	line	31
	
l1108:
;Test.c: 31: c = eeprom_read_byte(0xA0, 0x0000);
	movlw	high(0)
	movwf	((c:eeprom_read_byte@address+1)),c
	movlw	low(0)
	movwf	((c:eeprom_read_byte@address)),c
	movlw	(0A0h)&0ffh
	
	call	_eeprom_read_byte
	movwf	((c:main@c)),c
	line	34
	
l1110:
;Test.c: 34: ptr = message;
		movlw	high((c:main@message))
	movwf	((c:main@ptr+1)),c
	movlw	low((c:main@message))
	movwf	((c:main@ptr)),c

	line	35
;Test.c: 35: while(*ptr != '\0')
	goto	l1114
	
l133:
	line	36
	
l1112:
;Test.c: 36: ptr++;
	infsnz	((c:main@ptr)),c
	incf	((c:main@ptr+1)),c
	goto	l1114
	
l132:
	line	35
	
l1114:
	movff	(c:main@ptr),fsr2l
	movff	(c:main@ptr+1),fsr2h
	movf	indf2,w
	btfss	status,2
	goto	u371
	goto	u370
u371:
	goto	l1112
u370:
	goto	l1116
	
l134:
	line	37
	
l1116:
;Test.c: 37: *ptr = c;
	movff	(c:main@ptr),fsr2l
	movff	(c:main@ptr+1),fsr2h
	movff	(c:main@c),indf2

	line	38
	
l1118:
;Test.c: 38: ptr++;
	infsnz	((c:main@ptr)),c
	incf	((c:main@ptr+1)),c
	line	39
	
l1120:
;Test.c: 39: *ptr = '\0';
	movff	(c:main@ptr),fsr2l
	movff	(c:main@ptr+1),fsr2h
	movlw	low(0)
	movwf	indf2
	line	42
	
l1122:
;Test.c: 42: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	43
	
l1124:
;Test.c: 43: _delay(100);
	movlw	25
u387:
decfsz	wreg,f
	goto	u387

	line	44
	
l1126:
;Test.c: 44: LCDGotoXY(0,0);
	movlw	low(0)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(0)&0ffh
	
	call	_LCDGotoXY
	line	45
	
l1128:
;Test.c: 45: _delay(100);
	movlw	25
u397:
decfsz	wreg,f
	goto	u397

	line	46
	
l1130:
;Test.c: 46: LCDWriteString(message);
		movlw	high((c:main@message))
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low((c:main@message))
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	47
	
l1132:
;Test.c: 47: _delay(100);
	movlw	25
u407:
decfsz	wreg,f
	goto	u407

	line	49
;Test.c: 49: while(1)
	
l135:
	line	52
;Test.c: 50: {
	
l136:
	line	49
	goto	l135
	
l137:
	line	54
	
l138:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_eeprom_write_byte

;; *************** function _eeprom_write_byte *****************
;; Defined at:
;;		line 4 in file "E:\Study Material\XC8 PROJECTS\EEPROM Library\myeeprom.c"
;; Parameters:    Size  Location     Type
;;  device          1    wreg     unsigned char 
;;  address         2    3[COMRAM] int 
;;  byte            1    5[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  device          1    0[COMRAM] unsigned char 
;;  lsb             1    9[COMRAM] unsigned char 
;;  msb             1    8[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         3       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_IdleI2C
;;		_WriteI2C
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\EEPROM Library\myeeprom.c"
	line	4
global __ptext1
__ptext1:
psect	text1
	file	"E:\Study Material\XC8 PROJECTS\EEPROM Library\myeeprom.c"
	line	4
	global	__size_of_eeprom_write_byte
	__size_of_eeprom_write_byte	equ	__end_of_eeprom_write_byte-_eeprom_write_byte
	
_eeprom_write_byte:
;incstack = 0
	opt	stack 28
	dw	0FFFFh
	line	7
	
l1006:
;myeeprom.c: 6: unsigned char msb, lsb;
;myeeprom.c: 7: msb = address >> 8;
	movff	(c:eeprom_write_byte@address+1),??_eeprom_write_byte+0+0
	clrf	(??_eeprom_write_byte+0+0+1)&0ffh,c
	btfsc	(??_eeprom_write_byte+0+0)&0ffh,c,7
	setf	(??_eeprom_write_byte+0+0+1)&0ffh,c
	movf	(??_eeprom_write_byte+0+0),c,w
	movwf	((c:eeprom_write_byte@msb)),c
	line	8
	
l1008:
;myeeprom.c: 8: lsb = address & 0x00FF;
	movff	(c:eeprom_write_byte@address),(c:eeprom_write_byte@lsb)
	line	10
	
l1010:
;myeeprom.c: 10: IdleI2C();
	call	_IdleI2C	;wreg free
	line	11
	
l1012:
;myeeprom.c: 11: SSPCON2bits.SEN=1;while(SSPCON2bits.SEN);
	bsf	((c:4037)),c,0	;volatile
	goto	l82
	
l83:
	
l82:
	btfsc	((c:4037)),c,0	;volatile
	goto	u231
	goto	u230
u231:
	goto	l82
u230:
	goto	l1014
	
l84:
	line	12
	
l1014:
;myeeprom.c: 12: WriteI2C(0xA0 & 0xfe);
	movlw	(0A0h)&0ffh
	
	call	_WriteI2C
	line	13
;myeeprom.c: 13: IdleI2C();
	call	_IdleI2C	;wreg free
	line	14
;myeeprom.c: 14: WriteI2C(0x00);
	movlw	(0)&0ffh
	
	call	_WriteI2C
	line	15
;myeeprom.c: 15: IdleI2C();
	call	_IdleI2C	;wreg free
	line	16
;myeeprom.c: 16: WriteI2C(0x01);
	movlw	(01h)&0ffh
	
	call	_WriteI2C
	line	17
;myeeprom.c: 17: IdleI2C();
	call	_IdleI2C	;wreg free
	line	18
;myeeprom.c: 18: WriteI2C(0x01);
	movlw	(01h)&0ffh
	
	call	_WriteI2C
	line	19
;myeeprom.c: 19: IdleI2C();
	call	_IdleI2C	;wreg free
	line	20
	
l1016:
;myeeprom.c: 20: SSPCON2bits.PEN=1;while(SSPCON2bits.PEN);
	bsf	((c:4037)),c,2	;volatile
	goto	l85
	
l86:
	
l85:
	btfsc	((c:4037)),c,2	;volatile
	goto	u241
	goto	u240
u241:
	goto	l85
u240:
	goto	l1018
	
l87:
	line	21
	
l1018:
;myeeprom.c: 21: _delay(100);
	movlw	25
u417:
decfsz	wreg,f
	goto	u417

	line	22
	
l88:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_eeprom_write_byte
	__end_of_eeprom_write_byte:
	signat	_eeprom_write_byte,12408
	global	_eeprom_read_byte

;; *************** function _eeprom_read_byte *****************
;; Defined at:
;;		line 24 in file "E:\Study Material\XC8 PROJECTS\EEPROM Library\myeeprom.c"
;; Parameters:    Size  Location     Type
;;  device          1    wreg     unsigned char 
;;  address         2    3[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  device          1    0[COMRAM] unsigned char 
;;  data            1    9[COMRAM] unsigned char 
;;  lsb             1    8[COMRAM] unsigned char 
;;  msb             1    7[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_IdleI2C
;;		_ReadI2C
;;		_WriteI2C
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
	line	24
global __ptext2
__ptext2:
psect	text2
	file	"E:\Study Material\XC8 PROJECTS\EEPROM Library\myeeprom.c"
	line	24
	global	__size_of_eeprom_read_byte
	__size_of_eeprom_read_byte	equ	__end_of_eeprom_read_byte-_eeprom_read_byte
	
_eeprom_read_byte:
;incstack = 0
	opt	stack 28
	dw	0FFFFh
	line	28
	
l1020:
;myeeprom.c: 26: unsigned char data;
;myeeprom.c: 27: unsigned char msb, lsb;
;myeeprom.c: 28: msb = address >> 8;
	movff	(c:eeprom_read_byte@address+1),??_eeprom_read_byte+0+0
	clrf	(??_eeprom_read_byte+0+0+1)&0ffh,c
	btfsc	(??_eeprom_read_byte+0+0)&0ffh,c,7
	setf	(??_eeprom_read_byte+0+0+1)&0ffh,c
	movf	(??_eeprom_read_byte+0+0),c,w
	movwf	((c:eeprom_read_byte@msb)),c
	line	29
	
l1022:
;myeeprom.c: 29: lsb = address & 0x00FF;
	movff	(c:eeprom_read_byte@address),(c:eeprom_read_byte@lsb)
	line	31
	
l1024:
;myeeprom.c: 31: IdleI2C();
	call	_IdleI2C	;wreg free
	line	32
	
l1026:
;myeeprom.c: 32: SSPCON2bits.SEN=1;while(SSPCON2bits.SEN);
	bsf	((c:4037)),c,0	;volatile
	goto	l91
	
l92:
	
l91:
	btfsc	((c:4037)),c,0	;volatile
	goto	u251
	goto	u250
u251:
	goto	l91
u250:
	goto	l1028
	
l93:
	line	33
	
l1028:
;myeeprom.c: 33: WriteI2C(0xA0 & 0xfe);
	movlw	(0A0h)&0ffh
	
	call	_WriteI2C
	line	34
;myeeprom.c: 34: IdleI2C();
	call	_IdleI2C	;wreg free
	line	35
;myeeprom.c: 35: WriteI2C(0x00);
	movlw	(0)&0ffh
	
	call	_WriteI2C
	line	36
;myeeprom.c: 36: IdleI2C();
	call	_IdleI2C	;wreg free
	line	37
;myeeprom.c: 37: WriteI2C(0x01);
	movlw	(01h)&0ffh
	
	call	_WriteI2C
	line	38
;myeeprom.c: 38: IdleI2C();
	call	_IdleI2C	;wreg free
	line	40
	
l1030:
;myeeprom.c: 40: SSPCON2bits.RSEN=1;while(SSPCON2bits.RSEN);
	bsf	((c:4037)),c,1	;volatile
	goto	l94
	
l95:
	
l94:
	btfsc	((c:4037)),c,1	;volatile
	goto	u261
	goto	u260
u261:
	goto	l94
u260:
	goto	l1032
	
l96:
	line	41
	
l1032:
;myeeprom.c: 41: WriteI2C(0xA0 | 0x01);
	movlw	(0A1h)&0ffh
	
	call	_WriteI2C
	line	42
;myeeprom.c: 42: IdleI2C();
	call	_IdleI2C	;wreg free
	line	43
;myeeprom.c: 43: data = ReadI2C();
	call	_ReadI2C	;wreg free
	movwf	((c:eeprom_read_byte@data)),c
	line	44
	
l1034:
;myeeprom.c: 44: SSPCON2bits.ACKDT=1;SSPCON2bits.ACKEN=1;while(SSPCON2bits.ACKEN);
	bsf	((c:4037)),c,5	;volatile
	
l1036:
	bsf	((c:4037)),c,4	;volatile
	goto	l97
	
l98:
	
l97:
	btfsc	((c:4037)),c,4	;volatile
	goto	u271
	goto	u270
u271:
	goto	l97
u270:
	
l99:
	line	45
;myeeprom.c: 45: SSPCON2bits.PEN=1;while(SSPCON2bits.PEN);
	bsf	((c:4037)),c,2	;volatile
	goto	l100
	
l101:
	
l100:
	btfsc	((c:4037)),c,2	;volatile
	goto	u281
	goto	u280
u281:
	goto	l100
u280:
	goto	l1038
	
l102:
	line	46
	
l1038:
;myeeprom.c: 46: return data;
	movf	((c:eeprom_read_byte@data)),c,w
	goto	l103
	
l1040:
	line	47
	
l103:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_eeprom_read_byte
	__end_of_eeprom_read_byte:
	signat	_eeprom_read_byte,8313
	global	_WriteI2C

;; *************** function _WriteI2C *****************
;; Defined at:
;;		line 12 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\i2c\i2c_writ.c"
;; Parameters:    Size  Location     Type
;;  data_out        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data_out        1    2[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_IdleI2C
;; This function is called by:
;;		_eeprom_write_byte
;;		_eeprom_read_byte
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\i2c\i2c_writ.c"
	line	12
global __ptext3
__ptext3:
psect	text3
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\i2c\i2c_writ.c"
	line	12
	global	__size_of_WriteI2C
	__size_of_WriteI2C	equ	__end_of_WriteI2C-_WriteI2C
	
_WriteI2C:
;incstack = 0
	opt	stack 28
	dw	0FFFFh
;WriteI2C@data_out stored from wreg
	movwf	((c:WriteI2C@data_out)),c
	line	14
	
l874:
	movff	(c:WriteI2C@data_out),(c:4041)	;volatile
	line	15
	
l876:
	btfss	((c:4038)),c,7	;volatile
	goto	u51
	goto	u50
u51:
	goto	l882
u50:
	goto	l194
	line	16
	
l878:
;	Return value of _WriteI2C is never used
	goto	l194
	
l880:
	goto	l194
	line	17
	
l193:
	line	19
	
l882:
	movff	(c:4038),??_WriteI2C+0+0	;volatile
	movlw	0Fh
	andwf	(??_WriteI2C+0+0),c
	movf	(??_WriteI2C+0+0),c,w
	xorlw	08h

	btfsc	status,2
	goto	u61
	goto	u60
u61:
	goto	l894
u60:
	
l884:
	movff	(c:4038),??_WriteI2C+0+0	;volatile
	movlw	0Fh
	andwf	(??_WriteI2C+0+0),c
	movf	(??_WriteI2C+0+0),c,w
	xorlw	0Bh

	btfsc	status,2
	goto	u71
	goto	u70
u71:
	goto	l894
u70:
	line	21
	
l886:
	bsf	((c:4038)),c,4	;volatile
	line	22
	goto	l197
	
l198:
	
l197:
	btfss	((c:3998)),c,3	;volatile
	goto	u81
	goto	u80
u81:
	goto	l197
u80:
	
l199:
	line	24
	btfsc	((c:4039)),c,2	;volatile
	goto	u91
	goto	u90
u91:
	goto	l194
u90:
	
l888:
	movf	((c:4039)),c,w	;volatile
	goto	l194
	line	26
	
l890:
;	Return value of _WriteI2C is never used
	goto	l194
	line	27
	
l892:
	goto	l194
	line	28
	
l200:
	line	30
;	Return value of _WriteI2C is never used
	goto	l194
	line	31
	
l201:
	line	32
	goto	l194
	line	33
	
l196:
	
l894:
	movff	(c:4038),??_WriteI2C+0+0	;volatile
	movlw	0Fh
	andwf	(??_WriteI2C+0+0),c
	movf	(??_WriteI2C+0+0),c,w
	xorlw	08h

	btfsc	status,2
	goto	u101
	goto	u100
u101:
	goto	l206
u100:
	
l896:
	movff	(c:4038),??_WriteI2C+0+0	;volatile
	movlw	0Fh
	andwf	(??_WriteI2C+0+0),c
	movf	(??_WriteI2C+0+0),c,w
	xorlw	0Bh

	btfss	status,2
	goto	u111
	goto	u110
u111:
	goto	l194
u110:
	goto	l206
	
l205:
	line	35
	goto	l206
	
l207:
	
l206:
	btfsc	((c:4039)),c,0	;volatile
	goto	u121
	goto	u120
u121:
	goto	l206
u120:
	goto	l898
	
l208:
	line	36
	
l898:
	call	_IdleI2C	;wreg free
	line	37
	
l900:
	movf	((c:4037)),c,w	;volatile
	goto	l194
	line	38
	
l902:
;	Return value of _WriteI2C is never used
	goto	l194
	
l904:
	goto	l194
	line	39
	
l209:
;	Return value of _WriteI2C is never used
	goto	l194
	
l210:
	goto	l194
	line	40
	
l203:
	goto	l194
	line	42
	
l202:
	goto	l194
	
l195:
	line	43
	
l194:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_WriteI2C
	__end_of_WriteI2C:
	signat	_WriteI2C,4217
	global	_IdleI2C

;; *************** function _IdleI2C *****************
;; Defined at:
;;		line 24 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\i2c\i2c_idle.c"
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
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_eeprom_write_byte
;;		_eeprom_read_byte
;;		_WriteI2C
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\i2c\i2c_idle.c"
	line	24
global __ptext4
__ptext4:
psect	text4
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\i2c\i2c_idle.c"
	line	24
	global	__size_of_IdleI2C
	__size_of_IdleI2C	equ	__end_of_IdleI2C-_IdleI2C
	
_IdleI2C:
;incstack = 0
	opt	stack 28
	dw	0FFFFh
	line	26
	
l840:
	goto	l842
	
l146:
	line	27
	goto	l842
	
l145:
	line	26
	
l842:
	movff	(c:4037),??_IdleI2C+0+0	;volatile
	movlw	01Fh
	andwf	(??_IdleI2C+0+0),c
	btfss	status,2
	goto	u21
	goto	u20
u21:
	goto	l842
u20:
	
l844:
	btfsc	((c:4039)),c,2	;volatile
	goto	u31
	goto	u30
u31:
	goto	l842
u30:
	goto	l148
	
l147:
	line	28
	
l148:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_IdleI2C
	__end_of_IdleI2C:
	signat	_IdleI2C,88
	global	_ReadI2C

;; *************** function _ReadI2C *****************
;; Defined at:
;;		line 11 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\i2c\i2c_read.c"
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
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_eeprom_read_byte
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\i2c\i2c_read.c"
	line	11
global __ptext5
__ptext5:
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\i2c\i2c_read.c"
	line	11
	global	__size_of_ReadI2C
	__size_of_ReadI2C	equ	__end_of_ReadI2C-_ReadI2C
	
_ReadI2C:
;incstack = 0
	opt	stack 29
	dw	0FFFFh
	line	13
	
l906:
	movff	(c:4038),??_ReadI2C+0+0	;volatile
	movlw	0Fh
	andwf	(??_ReadI2C+0+0),c
	movf	(??_ReadI2C+0+0),c,w
	xorlw	08h

	btfsc	status,2
	goto	u131
	goto	u130
u131:
	goto	l172
u130:
	
l908:
	movff	(c:4038),??_ReadI2C+0+0	;volatile
	movlw	0Fh
	andwf	(??_ReadI2C+0+0),c
	movf	(??_ReadI2C+0+0),c,w
	xorlw	0Bh

	btfss	status,2
	goto	u141
	goto	u140
u141:
	goto	l173
u140:
	
l172:
	line	14
	bsf	((c:4037)),c,3	;volatile
	goto	l173
	
l170:
	line	15
	goto	l173
	
l174:
	
l173:
	btfss	((c:4039)),c,0	;volatile
	goto	u151
	goto	u150
u151:
	goto	l173
u150:
	goto	l910
	
l175:
	line	16
	
l910:
	movf	((c:4041)),c,w	;volatile
	goto	l176
	
l912:
	line	17
	
l176:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_ReadI2C
	__end_of_ReadI2C:
	signat	_ReadI2C,89
	global	_OpenI2C

;; *************** function _OpenI2C *****************
;; Defined at:
;;		line 14 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\i2c\i2c_open.c"
;; Parameters:    Size  Location     Type
;;  sync_mode       1    wreg     unsigned char 
;;  slew            1    0[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  sync_mode       1    1[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\i2c\i2c_open.c"
	line	14
global __ptext6
__ptext6:
psect	text6
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\i2c\i2c_open.c"
	line	14
	global	__size_of_OpenI2C
	__size_of_OpenI2C	equ	__end_of_OpenI2C-_OpenI2C
	
_OpenI2C:
;incstack = 0
	opt	stack 30
	dw	0FFFFh
;OpenI2C@sync_mode stored from wreg
	movwf	((c:OpenI2C@sync_mode)),c
	line	16
	
l1042:
	movlw	(03Fh)&0ffh
	andwf	((c:4039)),c	;volatile
	line	17
	
l1044:
	movlw	low(0)
	movwf	((c:4038)),c	;volatile
	line	18
	
l1046:
	movlw	low(0)
	movwf	((c:4037)),c	;volatile
	line	19
	movf	((c:OpenI2C@sync_mode)),c,w
	iorwf	((c:4038)),c	;volatile
	line	20
	movf	((c:OpenI2C@slew)),c,w
	iorwf	((c:4039)),c	;volatile
	line	22
	
l1048:
	bsf	((c:3988)),c,3	;volatile
	line	23
	
l1050:
	bsf	((c:3988)),c,4	;volatile
	line	24
	
l1052:
	bsf	(0+(5/8)+(c:4038)),c,(5)&7	;volatile
	line	26
	
l159:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_OpenI2C
	__end_of_OpenI2C:
	signat	_OpenI2C,8312
	global	_LCDWriteString

;; *************** function _LCDWriteString *****************
;; Defined at:
;;		line 252 in file "E:\Study Material\XC8 PROJECTS\EEPROM Library\lcd_hd44780_pic16.c"
;; Parameters:    Size  Location     Type
;;  msg             2    9[COMRAM] PTR const unsigned char 
;;		 -> main@message(10), 
;; Auto vars:     Size  Location     Type
;;  cc              1   12[COMRAM] char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_LCDByte
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\EEPROM Library\lcd_hd44780_pic16.c"
	line	252
global __ptext7
__ptext7:
psect	text7
	file	"E:\Study Material\XC8 PROJECTS\EEPROM Library\lcd_hd44780_pic16.c"
	line	252
	global	__size_of_LCDWriteString
	__size_of_LCDWriteString	equ	__end_of_LCDWriteString-_LCDWriteString
	
_LCDWriteString:
;incstack = 0
	opt	stack 28
	dw	0FFFFh
	line	282
	
l964:
;lcd_hd44780_pic16.c: 282: while(*msg!='\0')
	goto	l986
	
l37:
	line	285
	
l966:
;lcd_hd44780_pic16.c: 283: {
;lcd_hd44780_pic16.c: 285: if(*msg=='%')
	movlw	(025h)&0ffh
	movff	(c:LCDWriteString@msg),fsr2l
	movff	(c:LCDWriteString@msg+1),fsr2h
	cpfseq	indf2
	goto	u181
	goto	u180
u181:
	goto	l982
u180:
	line	287
	
l968:
;lcd_hd44780_pic16.c: 286: {
;lcd_hd44780_pic16.c: 287: msg++;
	infsnz	((c:LCDWriteString@msg)),c
	incf	((c:LCDWriteString@msg+1)),c
	line	288
	
l970:
;lcd_hd44780_pic16.c: 288: int8_t cc=*msg-'0';
	movff	(c:LCDWriteString@msg),fsr2l
	movff	(c:LCDWriteString@msg+1),fsr2h
	movf	indf2,w
	addlw	low(-48)
	movwf	((c:LCDWriteString@cc)),c
	line	290
	
l972:
;lcd_hd44780_pic16.c: 290: if(cc>=0 && cc<=7)
	btfsc	((c:LCDWriteString@cc)),c,7
	goto	u191
	goto	u190
u191:
	goto	l978
u190:
	
l974:
	movf	((c:LCDWriteString@cc)),c,w
	xorlw	80h
	movwf	(??_LCDWriteString+0+0)&0ffh,c
	movlw	(08h)&0ffh
	xorlw	80h
	subwf	(??_LCDWriteString+0+0),c,w
	btfsc	status,0
	goto	u201
	goto	u200
u201:
	goto	l978
u200:
	line	292
	
l976:
;lcd_hd44780_pic16.c: 291: {
;lcd_hd44780_pic16.c: 292: (LCDByte(cc,1));
	movlw	low(01h)
	movwf	((c:LCDByte@isdata)),c
	movf	((c:LCDWriteString@cc)),c,w
	
	call	_LCDByte
	line	293
;lcd_hd44780_pic16.c: 293: }
	goto	l984
	line	294
	
l39:
	line	296
	
l978:
;lcd_hd44780_pic16.c: 294: else
;lcd_hd44780_pic16.c: 295: {
;lcd_hd44780_pic16.c: 296: (LCDByte('%',1));
	movlw	low(01h)
	movwf	((c:LCDByte@isdata)),c
	movlw	(025h)&0ffh
	
	call	_LCDByte
	line	297
	
l980:
;lcd_hd44780_pic16.c: 297: (LCDByte(*msg,1));
	movlw	low(01h)
	movwf	((c:LCDByte@isdata)),c
	movff	(c:LCDWriteString@msg),fsr2l
	movff	(c:LCDWriteString@msg+1),fsr2h
	movf	indf2,w
	
	call	_LCDByte
	goto	l984
	line	298
	
l40:
	line	299
;lcd_hd44780_pic16.c: 298: }
;lcd_hd44780_pic16.c: 299: }
	goto	l984
	line	300
	
l38:
	line	302
	
l982:
;lcd_hd44780_pic16.c: 300: else
;lcd_hd44780_pic16.c: 301: {
;lcd_hd44780_pic16.c: 302: (LCDByte(*msg,1));
	movlw	low(01h)
	movwf	((c:LCDByte@isdata)),c
	movff	(c:LCDWriteString@msg),fsr2l
	movff	(c:LCDWriteString@msg+1),fsr2h
	movf	indf2,w
	
	call	_LCDByte
	goto	l984
	line	303
	
l41:
	line	304
	
l984:
;lcd_hd44780_pic16.c: 303: }
;lcd_hd44780_pic16.c: 304: msg++;
	infsnz	((c:LCDWriteString@msg)),c
	incf	((c:LCDWriteString@msg+1)),c
	goto	l986
	line	305
	
l36:
	line	282
	
l986:
	movff	(c:LCDWriteString@msg),fsr2l
	movff	(c:LCDWriteString@msg+1),fsr2h
	movf	indf2,w
	btfss	status,2
	goto	u211
	goto	u210
u211:
	goto	l966
u210:
	goto	l43
	
l42:
	line	306
	
l43:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_LCDWriteString
	__end_of_LCDWriteString:
	signat	_LCDWriteString,4216
	global	_LCDInit

;; *************** function _LCDInit *****************
;; Defined at:
;;		line 194 in file "E:\Study Material\XC8 PROJECTS\EEPROM Library\lcd_hd44780_pic16.c"
;; Parameters:    Size  Location     Type
;;  style           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  style           1   10[COMRAM] unsigned char 
;;  __i             1   11[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_LCDBusyLoop
;;		_LCDByte
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2
	line	194
global __ptext8
__ptext8:
psect	text8
	file	"E:\Study Material\XC8 PROJECTS\EEPROM Library\lcd_hd44780_pic16.c"
	line	194
	global	__size_of_LCDInit
	__size_of_LCDInit	equ	__end_of_LCDInit-_LCDInit
	
_LCDInit:
;incstack = 0
	opt	stack 28
	dw	0FFFFh
;LCDInit@style stored from wreg
	movwf	((c:LCDInit@style)),c
	line	210
	
l914:
;lcd_hd44780_pic16.c: 210: _delay((unsigned long)((30)*(10000000/4000.0)));
	movlw	74
movwf	(??_LCDInit+0+0)&0ffh,c,f
	movlw	24
u427:
	decfsz	wreg,f
	goto	u427
	decfsz	(??_LCDInit+0+0)&0ffh,c,f
	goto	u427
	nop2

	line	213
	
l916:
;lcd_hd44780_pic16.c: 213: TRISB&=(~(0x0F<<4));
	movlw	(0Fh)&0ffh
	andwf	((c:3987)),c	;volatile
	line	215
	
l918:
;lcd_hd44780_pic16.c: 215: TRISBbits.TRISB3=0;
	bcf	((c:3987)),c,3	;volatile
	line	216
	
l920:
;lcd_hd44780_pic16.c: 216: TRISBbits.TRISB1=0;
	bcf	((c:3987)),c,1	;volatile
	line	217
	
l922:
;lcd_hd44780_pic16.c: 217: TRISBbits.TRISB2=0;
	bcf	((c:3987)),c,2	;volatile
	line	219
	
l924:
;lcd_hd44780_pic16.c: 219: PORTB&=(~(0x0F<<4));
	movlw	(0Fh)&0ffh
	andwf	((c:3969)),c	;volatile
	line	221
	
l926:
;lcd_hd44780_pic16.c: 221: (RB3=0);
	bcf	c:(31755/8),(31755)&7	;volatile
	line	222
	
l928:
;lcd_hd44780_pic16.c: 222: (RB2=0);
	bcf	c:(31754/8),(31754)&7	;volatile
	line	223
	
l930:
;lcd_hd44780_pic16.c: 223: (RB1=0);
	bcf	c:(31753/8),(31753)&7	;volatile
	line	226
	
l932:
;lcd_hd44780_pic16.c: 226: _delay((unsigned long)((0.5)*(10000000/4000000.0)));
	nop
	line	228
	
l934:
;lcd_hd44780_pic16.c: 228: (RB3=1);
	bsf	c:(31755/8),(31755)&7	;volatile
	line	229
	
l936:
;lcd_hd44780_pic16.c: 229: PORTB|=((0b00000010)<<4);
	bsf	(0+(5/8)+(c:3969)),c,(5)&7	;volatile
	line	230
	
l938:
;lcd_hd44780_pic16.c: 230: _delay((unsigned long)((1)*(10000000/4000000.0)));
		nop2	;2 cycle nop

	line	231
	
l940:
;lcd_hd44780_pic16.c: 231: (RB3=0);
	bcf	c:(31755/8),(31755)&7	;volatile
	line	232
	
l942:
;lcd_hd44780_pic16.c: 232: _delay((unsigned long)((1)*(10000000/4000000.0)));
		nop2	;2 cycle nop

	line	235
	
l944:
;lcd_hd44780_pic16.c: 235: LCDBusyLoop();
	call	_LCDBusyLoop	;wreg free
	line	240
	
l946:
;lcd_hd44780_pic16.c: 240: (LCDByte(0b00101000,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(028h)&0ffh
	
	call	_LCDByte
	line	241
	
l948:
;lcd_hd44780_pic16.c: 241: (LCDByte(0b00001100|style,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movf	((c:LCDInit@style)),c,w
	iorlw	low(0Ch)
	
	call	_LCDByte
	line	244
	
l950:
;lcd_hd44780_pic16.c: 244: (LCDByte(0b01000000,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(040h)&0ffh
	
	call	_LCDByte
	line	247
	
l952:
;lcd_hd44780_pic16.c: 246: uint8_t __i;
;lcd_hd44780_pic16.c: 247: for(__i=0;__i<sizeof(__cgram);__i++)
	movlw	low(0)
	movwf	((c:LCDInit@__i)),c
	
l954:
	movlw	(010h-1)
	cpfsgt	((c:LCDInit@__i)),c
	goto	u161
	goto	u160
u161:
	goto	l958
u160:
	goto	l33
	
l956:
	goto	l33
	line	248
	
l31:
	
l958:
;lcd_hd44780_pic16.c: 248: (LCDByte(__cgram[__i],1));
	movlw	low(01h)
	movwf	((c:LCDByte@isdata)),c
	movf	((c:LCDInit@__i)),c,w
	mullw	01h
	movlw	low((c:___cgram))
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high((c:___cgram))
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	
	call	_LCDByte
	line	247
	
l960:
	incf	((c:LCDInit@__i)),c
	
l962:
	movlw	(010h-1)
	cpfsgt	((c:LCDInit@__i)),c
	goto	u171
	goto	u170
u171:
	goto	l958
u170:
	goto	l33
	
l32:
	line	251
	
l33:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_LCDInit
	__end_of_LCDInit:
	signat	_LCDInit,4216
	global	_LCDGotoXY

;; *************** function _LCDGotoXY *****************
;; Defined at:
;;		line 353 in file "E:\Study Material\XC8 PROJECTS\EEPROM Library\lcd_hd44780_pic16.c"
;; Parameters:    Size  Location     Type
;;  x               1    wreg     unsigned char 
;;  y               1    9[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  x               1   10[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_LCDByte
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2
	line	353
global __ptext9
__ptext9:
psect	text9
	file	"E:\Study Material\XC8 PROJECTS\EEPROM Library\lcd_hd44780_pic16.c"
	line	353
	global	__size_of_LCDGotoXY
	__size_of_LCDGotoXY	equ	__end_of_LCDGotoXY-_LCDGotoXY
	
_LCDGotoXY:
;incstack = 0
	opt	stack 28
	dw	0FFFFh
;LCDGotoXY@x stored from wreg
	movwf	((c:LCDGotoXY@x)),c
	line	355
	
l988:
;lcd_hd44780_pic16.c: 355: if(x>=20) return;
	movlw	(014h-1)
	cpfsgt	((c:LCDGotoXY@x)),c
	goto	u221
	goto	u220
u221:
	goto	l1000
u220:
	goto	l63
	
l990:
	goto	l63
	
l62:
	line	359
;lcd_hd44780_pic16.c: 359: switch(y)
	goto	l1000
	line	361
;lcd_hd44780_pic16.c: 360: {
;lcd_hd44780_pic16.c: 361: case 0:
	
l65:
	line	362
;lcd_hd44780_pic16.c: 362: break;
	goto	l1002
	line	363
;lcd_hd44780_pic16.c: 363: case 1:
	
l67:
	line	364
	
l992:
;lcd_hd44780_pic16.c: 364: x|=0b01000000;
	bsf	(0+(6/8)+(c:LCDGotoXY@x)),c,(6)&7
	line	365
;lcd_hd44780_pic16.c: 365: break;
	goto	l1002
	line	366
;lcd_hd44780_pic16.c: 366: case 2:
	
l68:
	line	367
	
l994:
;lcd_hd44780_pic16.c: 367: x+=0x14;
	movlw	(014h)&0ffh
	addwf	((c:LCDGotoXY@x)),c
	line	368
;lcd_hd44780_pic16.c: 368: break;
	goto	l1002
	line	369
;lcd_hd44780_pic16.c: 369: case 3:
	
l69:
	line	370
	
l996:
;lcd_hd44780_pic16.c: 370: x+=0x54;
	movlw	(054h)&0ffh
	addwf	((c:LCDGotoXY@x)),c
	line	371
;lcd_hd44780_pic16.c: 371: break;
	goto	l1002
	line	372
	
l998:
;lcd_hd44780_pic16.c: 372: }
	goto	l1002
	line	359
	
l64:
	
l1000:
	movf	((c:LCDGotoXY@y)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l1002
	xorlw	1^0	; case 1
	skipnz
	goto	l992
	xorlw	2^1	; case 2
	skipnz
	goto	l994
	xorlw	3^2	; case 3
	skipnz
	goto	l996
	goto	l1002

	line	372
	
l66:
	line	394
	
l1002:
;lcd_hd44780_pic16.c: 394: x|=0b10000000;
	bsf	(0+(7/8)+(c:LCDGotoXY@x)),c,(7)&7
	line	395
	
l1004:
;lcd_hd44780_pic16.c: 395: (LCDByte(x,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movf	((c:LCDGotoXY@x)),c,w
	
	call	_LCDByte
	line	396
	
l63:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_LCDGotoXY
	__end_of_LCDGotoXY:
	signat	_LCDGotoXY,8312
	global	_LCDByte

;; *************** function _LCDByte *****************
;; Defined at:
;;		line 81 in file "E:\Study Material\XC8 PROJECTS\EEPROM Library\lcd_hd44780_pic16.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;;  isdata          1    3[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    7[COMRAM] unsigned char 
;;  temp            1    8[COMRAM] unsigned char 
;;  ln              1    6[COMRAM] unsigned char 
;;  hn              1    5[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_LCDBusyLoop
;; This function is called by:
;;		_LCDInit
;;		_LCDWriteString
;;		_LCDGotoXY
;;		_main
;;		_LCDWriteInt
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2
	line	81
global __ptext10
__ptext10:
psect	text10
	file	"E:\Study Material\XC8 PROJECTS\EEPROM Library\lcd_hd44780_pic16.c"
	line	81
	global	__size_of_LCDByte
	__size_of_LCDByte	equ	__end_of_LCDByte-_LCDByte
	
_LCDByte:
;incstack = 0
	opt	stack 28
	dw	0FFFFh
;LCDByte@c stored from wreg
	movwf	((c:LCDByte@c)),c
	line	93
	
l846:
;lcd_hd44780_pic16.c: 90: uint8_t hn,ln;
;lcd_hd44780_pic16.c: 91: uint8_t temp;
;lcd_hd44780_pic16.c: 93: hn=c>>4;
	swapf	((c:LCDByte@c)),c,w
	andlw	(0ffh shr 4) & 0ffh
	movwf	((c:LCDByte@hn)),c
	line	94
;lcd_hd44780_pic16.c: 94: ln=(c & 0x0F);
	movf	((c:LCDByte@c)),c,w
	andlw	low(0Fh)
	movwf	((c:LCDByte@ln)),c
	line	96
	
l848:
;lcd_hd44780_pic16.c: 96: if(isdata==0)
	tstfsz	((c:LCDByte@isdata)),c
	goto	u41
	goto	u40
u41:
	goto	l21
u40:
	line	97
	
l850:
;lcd_hd44780_pic16.c: 97: (RB1=0);
	bcf	c:(31753/8),(31753)&7	;volatile
	goto	l22
	line	98
	
l21:
	line	99
;lcd_hd44780_pic16.c: 98: else
;lcd_hd44780_pic16.c: 99: (RB1=1);
	bsf	c:(31753/8),(31753)&7	;volatile
	
l22:
	line	101
;lcd_hd44780_pic16.c: 101: _delay((unsigned long)((0.5)*(10000000/4000000.0)));
	nop
	line	103
;lcd_hd44780_pic16.c: 103: (RB3=1);
	bsf	c:(31755/8),(31755)&7	;volatile
	line	107
	
l852:
;lcd_hd44780_pic16.c: 107: temp=(PORTB & (~(0X0F<<4)))|((hn<<4));
	movff	(c:LCDByte@hn),??_LCDByte+0+0
	swapf	(??_LCDByte+0+0),c
	movlw	(0ffh shl 4) & 0ffh
	andwf	(??_LCDByte+0+0),c
	movf	((c:3969)),c,w	;volatile
	andlw	low(0Fh)
	iorwf	(??_LCDByte+0+0),c,w
	movwf	((c:LCDByte@temp)),c
	line	108
	
l854:
;lcd_hd44780_pic16.c: 108: PORTB=temp;
	movff	(c:LCDByte@temp),(c:3969)	;volatile
	line	110
	
l856:
;lcd_hd44780_pic16.c: 110: _delay((unsigned long)((1)*(10000000/4000000.0)));
		nop2	;2 cycle nop

	line	114
	
l858:
;lcd_hd44780_pic16.c: 114: (RB3=0);
	bcf	c:(31755/8),(31755)&7	;volatile
	line	116
	
l860:
;lcd_hd44780_pic16.c: 116: _delay((unsigned long)((1)*(10000000/4000000.0)));
		nop2	;2 cycle nop

	line	119
	
l862:
;lcd_hd44780_pic16.c: 119: (RB3=1);
	bsf	c:(31755/8),(31755)&7	;volatile
	line	121
;lcd_hd44780_pic16.c: 121: temp=(PORTB & (~(0X0F<<4)))|((ln<<4));
	movff	(c:LCDByte@ln),??_LCDByte+0+0
	swapf	(??_LCDByte+0+0),c
	movlw	(0ffh shl 4) & 0ffh
	andwf	(??_LCDByte+0+0),c
	movf	((c:3969)),c,w	;volatile
	andlw	low(0Fh)
	iorwf	(??_LCDByte+0+0),c,w
	movwf	((c:LCDByte@temp)),c
	line	123
	
l864:
;lcd_hd44780_pic16.c: 123: PORTB=temp;
	movff	(c:LCDByte@temp),(c:3969)	;volatile
	line	125
	
l866:
;lcd_hd44780_pic16.c: 125: _delay((unsigned long)((1)*(10000000/4000000.0)));
		nop2	;2 cycle nop

	line	129
	
l868:
;lcd_hd44780_pic16.c: 129: (RB3=0);
	bcf	c:(31755/8),(31755)&7	;volatile
	line	131
	
l870:
;lcd_hd44780_pic16.c: 131: _delay((unsigned long)((1)*(10000000/4000000.0)));
		nop2	;2 cycle nop

	line	133
	
l872:
;lcd_hd44780_pic16.c: 133: LCDBusyLoop();
	call	_LCDBusyLoop	;wreg free
	line	134
	
l23:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_LCDByte
	__end_of_LCDByte:
	signat	_LCDByte,8312
	global	_LCDBusyLoop

;; *************** function _LCDBusyLoop *****************
;; Defined at:
;;		line 136 in file "E:\Study Material\XC8 PROJECTS\EEPROM Library\lcd_hd44780_pic16.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  status          1    2[COMRAM] unsigned char 
;;  temp            1    1[COMRAM] unsigned char 
;;  busy            1    0[COMRAM] unsigned char 
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
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCDByte
;;		_LCDInit
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2
	line	136
global __ptext11
__ptext11:
psect	text11
	file	"E:\Study Material\XC8 PROJECTS\EEPROM Library\lcd_hd44780_pic16.c"
	line	136
	global	__size_of_LCDBusyLoop
	__size_of_LCDBusyLoop	equ	__end_of_LCDBusyLoop-_LCDBusyLoop
	
_LCDBusyLoop:
;incstack = 0
	opt	stack 28
	dw	0FFFFh
	line	140
	
l794:
;lcd_hd44780_pic16.c: 140: uint8_t busy,status=0x00,temp;
	movlw	low(0)
	movwf	((c:LCDBusyLoop@status)),c
	line	143
	
l796:
;lcd_hd44780_pic16.c: 143: TRISB|=(0x0f<<4);
	movlw	(0F0h)&0ffh
	iorwf	((c:3987)),c	;volatile
	line	146
	
l798:
;lcd_hd44780_pic16.c: 146: (RB2=1);
	bsf	c:(31754/8),(31754)&7	;volatile
	line	147
	
l800:
;lcd_hd44780_pic16.c: 147: (RB1=0);
	bcf	c:(31753/8),(31753)&7	;volatile
	line	151
	
l802:
;lcd_hd44780_pic16.c: 151: _delay((unsigned long)((0.5)*(10000000/4000000.0)));
	nop
	goto	l804
	line	154
;lcd_hd44780_pic16.c: 154: do
	
l26:
	line	157
	
l804:
;lcd_hd44780_pic16.c: 155: {
;lcd_hd44780_pic16.c: 157: (RB3=1);
	bsf	c:(31755/8),(31755)&7	;volatile
	line	160
	
l806:
;lcd_hd44780_pic16.c: 160: _delay((unsigned long)((0.5)*(10000000/4000000.0)));
	nop
	line	162
	
l808:
;lcd_hd44780_pic16.c: 162: status=(PORTB>>4);
	swapf	((c:3969)),c,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	movwf	((c:LCDBusyLoop@status)),c
	line	163
	
l810:
;lcd_hd44780_pic16.c: 163: status=status<<4;
	swapf	((c:LCDBusyLoop@status)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:LCDBusyLoop@status)),c
	line	165
	
l812:
;lcd_hd44780_pic16.c: 165: _delay((unsigned long)((0.5)*(10000000/4000000.0)));
	nop
	line	168
	
l814:
;lcd_hd44780_pic16.c: 168: (RB3=0);
	bcf	c:(31755/8),(31755)&7	;volatile
	line	169
	
l816:
;lcd_hd44780_pic16.c: 169: _delay((unsigned long)((1)*(10000000/4000000.0)));
		nop2	;2 cycle nop

	line	171
	
l818:
;lcd_hd44780_pic16.c: 171: (RB3=1);
	bsf	c:(31755/8),(31755)&7	;volatile
	line	172
	
l820:
;lcd_hd44780_pic16.c: 172: _delay((unsigned long)((0.5)*(10000000/4000000.0)));
	nop
	line	174
	
l822:
;lcd_hd44780_pic16.c: 174: temp=(PORTB>>4);
	swapf	((c:3969)),c,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	movwf	((c:LCDBusyLoop@temp)),c
	line	175
	
l824:
;lcd_hd44780_pic16.c: 175: temp&=0x0F;
	movlw	(0Fh)&0ffh
	andwf	((c:LCDBusyLoop@temp)),c
	line	177
	
l826:
;lcd_hd44780_pic16.c: 177: status=status|temp;
	movf	((c:LCDBusyLoop@status)),c,w
	iorwf	((c:LCDBusyLoop@temp)),c,w
	movwf	((c:LCDBusyLoop@status)),c
	line	179
	
l828:
;lcd_hd44780_pic16.c: 179: busy=status & 0b10000000;
	movf	((c:LCDBusyLoop@status)),c,w
	andlw	low(080h)
	movwf	((c:LCDBusyLoop@busy)),c
	line	181
	
l830:
;lcd_hd44780_pic16.c: 181: _delay((unsigned long)((0.5)*(10000000/4000000.0)));
	nop
	line	183
	
l832:
;lcd_hd44780_pic16.c: 183: (RB3=0);
	bcf	c:(31755/8),(31755)&7	;volatile
	line	184
	
l834:
;lcd_hd44780_pic16.c: 184: _delay((unsigned long)((1)*(10000000/4000000.0)));
		nop2	;2 cycle nop

	line	185
	
l836:
;lcd_hd44780_pic16.c: 185: }while(busy);
	tstfsz	((c:LCDBusyLoop@busy)),c
	goto	u11
	goto	u10
u11:
	goto	l804
u10:
	
l27:
	line	187
;lcd_hd44780_pic16.c: 187: (RB2=0);
	bcf	c:(31754/8),(31754)&7	;volatile
	line	190
	
l838:
;lcd_hd44780_pic16.c: 190: TRISB&=(~(0x0F<<4));
	movlw	(0Fh)&0ffh
	andwf	((c:3987)),c	;volatile
	line	192
	
l28:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_LCDBusyLoop
	__end_of_LCDBusyLoop:
	signat	_LCDBusyLoop,88
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

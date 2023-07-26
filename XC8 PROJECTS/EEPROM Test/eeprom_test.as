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
	FNCALL	_main,_I2CInit
	FNCALL	_main,_I2CNak
	FNCALL	_main,_I2CRead
	FNCALL	_main,_I2CRestart
	FNCALL	_main,_I2CSend
	FNCALL	_main,_I2CStart
	FNCALL	_main,_I2CStop
	FNCALL	_main,_LCD_CLEAR
	FNCALL	_main,_LCD_INIT
	FNCALL	_main,_LCD_OUT
	FNCALL	_LCD_OUT,_LCD_CHR
	FNCALL	_LCD_OUT,_LCD_CMD
	FNCALL	_LCD_CHR,_LCD_DATA
	FNCALL	_LCD_INIT,_LCD_CMD
	FNCALL	_LCD_INIT,_LCD_DATA
	FNCALL	_LCD_CLEAR,_LCD_CMD
	FNCALL	_LCD_CMD,_LCD_DATA
	FNCALL	_I2CSend,_I2CWait
	FNCALL	_I2CRead,_I2CWait
	FNROOT	_main
	global	_I2CData
psect	idataCOMRAM,class=CODE,space=0,delta=1,noexec
global __pidataCOMRAM
__pidataCOMRAM:
	file	"E:\Study Material\XC8 PROJECTS\EEPROM Test\test.c"
	line	219

;initializer for _I2CData
	db	low(053h)
	db	low(068h)
	db	low(072h)
	db	low(065h)
	db	low(079h)
	db	low(061h)
	db	low(0)
	global	_I2CInitval
	global	_rdaddr
	global	_i
	global	_j
	global	_rcdata
	global	_SSPADD
_SSPADD	set	0xFC8
	global	_SSPBUF
_SSPBUF	set	0xFC9
	global	_SSPCON1
_SSPCON1	set	0xFC6
	global	_SSPCON2
_SSPCON2	set	0xFC5
	global	_SSPSTAT
_SSPSTAT	set	0xFC7
	global	_TRISB
_TRISB	set	0xF93
	global	_ACKDT
_ACKDT	set	0x7E2D
	global	_ACKEN
_ACKEN	set	0x7E2C
	global	_BF
_BF	set	0x7E38
	global	_PEN
_PEN	set	0x7E2A
	global	_RB0
_RB0	set	0x7C08
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
	global	_RCEN
_RCEN	set	0x7E2B
	global	_RSEN
_RSEN	set	0x7E29
	global	_SEN
_SEN	set	0x7E28
	global	_TRISC3
_TRISC3	set	0x7CA3
	global	_TRISC4
_TRISC4	set	0x7CA4
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	global __stringdata
__stringdata:
	
STR_2:
	db	82	;'R'
	db	69	;'E'
	db	65	;'A'
	db	68	;'D'
	db	32
	db	58	;':'
	db	0
	
STR_1:
	db	87	;'W'
	db	82	;'R'
	db	73	;'I'
	db	84	;'T'
	db	69	;'E'
	db	58	;':'
	db	0
	global __end_of__stringdata
__end_of__stringdata:
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
	file	"eeprom_test.as"
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
	global	_I2CInitval
	global	_I2CInitval
_I2CInitval:
       ds      10
	global	_rdaddr
	global	_rdaddr
_rdaddr:
       ds      3
	global	_i
	global	_i
_i:
       ds      1
	global	_j
_j:
       ds      1
	global	_rcdata
_rcdata:
       ds      30
psect	dataCOMRAM,class=COMRAM,space=1,noexec
global __pdataCOMRAM
__pdataCOMRAM:
	file	"E:\Study Material\XC8 PROJECTS\EEPROM Test\test.c"
	line	219
	global	_I2CData
_I2CData:
       ds      7
	file	"eeprom_test.as"
	line	#
psect	cinit
; Clear objects allocated to COMRAM (45 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	45
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
	line	#
; Initialize objects allocated to COMRAM (7 bytes)
	global __pidataCOMRAM
	; load TBLPTR registers with __pidataCOMRAM
	movlw	low (__pidataCOMRAM)
	movwf	tblptrl
	movlw	high(__pidataCOMRAM)
	movwf	tblptrh
	movlw	low highword(__pidataCOMRAM)
	movwf	tblptru
	lfsr	0,__pdataCOMRAM
	lfsr	1,7
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
?_LCD_CHR:	; 0 bytes @ 0x0
?_LCD_DATA:	; 0 bytes @ 0x0
??_LCD_DATA:	; 0 bytes @ 0x0
?_LCD_CMD:	; 0 bytes @ 0x0
?_LCD_INIT:	; 0 bytes @ 0x0
?_I2CInit:	; 0 bytes @ 0x0
??_I2CInit:	; 0 bytes @ 0x0
?_I2CStart:	; 0 bytes @ 0x0
??_I2CStart:	; 0 bytes @ 0x0
?_I2CStop:	; 0 bytes @ 0x0
??_I2CStop:	; 0 bytes @ 0x0
?_I2CRestart:	; 0 bytes @ 0x0
??_I2CRestart:	; 0 bytes @ 0x0
?_I2CNak:	; 0 bytes @ 0x0
??_I2CNak:	; 0 bytes @ 0x0
?_I2CWait:	; 0 bytes @ 0x0
??_I2CWait:	; 0 bytes @ 0x0
?_I2CSend:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_I2CRead:	; 1 bytes @ 0x0
?_LCD_CLEAR:	; 2 bytes @ 0x0
	global	LCD_DATA@m
LCD_DATA@m:	; 1 bytes @ 0x0
	ds   1
??_LCD_CHR:	; 0 bytes @ 0x1
??_LCD_CMD:	; 0 bytes @ 0x1
??_I2CSend:	; 0 bytes @ 0x1
??_I2CRead:	; 0 bytes @ 0x1
	global	I2CSend@dat
I2CSend@dat:	; 1 bytes @ 0x1
	global	I2CRead@temp
I2CRead@temp:	; 1 bytes @ 0x1
	ds   1
	global	LCD_CMD@m
LCD_CMD@m:	; 1 bytes @ 0x2
	global	LCD_CHR@T1
LCD_CHR@T1:	; 1 bytes @ 0x2
	ds   1
??_LCD_CLEAR:	; 0 bytes @ 0x3
??_LCD_INIT:	; 0 bytes @ 0x3
	global	LCD_CHR@T2
LCD_CHR@T2:	; 1 bytes @ 0x3
	ds   1
	global	LCD_CHR@m
LCD_CHR@m:	; 1 bytes @ 0x4
	ds   1
?_LCD_OUT:	; 0 bytes @ 0x5
	global	LCD_OUT@b
LCD_OUT@b:	; 1 bytes @ 0x5
	ds   1
	global	LCD_OUT@n
LCD_OUT@n:	; 2 bytes @ 0x6
	ds   2
??_LCD_OUT:	; 0 bytes @ 0x8
	ds   2
	global	LCD_OUT@i
LCD_OUT@i:	; 2 bytes @ 0xA
	ds   2
	global	LCD_OUT@a
LCD_OUT@a:	; 1 bytes @ 0xC
	ds   1
	global	LCD_OUT@p
LCD_OUT@p:	; 1 bytes @ 0xD
	ds   1
	global	LCD_OUT@q
LCD_OUT@q:	; 1 bytes @ 0xE
	ds   1
	global	LCD_OUT@r
LCD_OUT@r:	; 1 bytes @ 0xF
	ds   1
??_main:	; 0 bytes @ 0x10
	ds   1
;!
;!Data Sizes:
;!    Strings     14
;!    Constant    0
;!    Data        7
;!    BSS         45
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM          127     17      69
;!    BANK0           128      0       0
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0

;!
;!Pointer List with Targets:
;!
;!    LCD_OUT@n	PTR unsigned char  size(2) Largest target is 30
;!		 -> rcdata(COMRAM[30]), I2CData(COMRAM[7]), STR_2(CODE[7]), STR_1(CODE[7]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_LCD_OUT
;!    _LCD_OUT->_LCD_CHR
;!    _LCD_CHR->_LCD_DATA
;!    _LCD_INIT->_LCD_CMD
;!    _LCD_CLEAR->_LCD_CMD
;!    _LCD_CMD->_LCD_DATA
;!    _I2CSend->_I2CWait
;!    _I2CRead->_I2CWait
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
;! (0) _main                                                 3     3      0    1019
;!                                             16 COMRAM     1     1      0
;!                            _I2CInit
;!                             _I2CNak
;!                            _I2CRead
;!                         _I2CRestart
;!                            _I2CSend
;!                           _I2CStart
;!                            _I2CStop
;!                          _LCD_CLEAR
;!                           _LCD_INIT
;!                            _LCD_OUT
;! ---------------------------------------------------------------------------------
;! (1) _LCD_OUT                                             11     8      3     779
;!                                              5 COMRAM    11     8      3
;!                            _LCD_CHR
;!                            _LCD_CMD
;! ---------------------------------------------------------------------------------
;! (2) _LCD_CHR                                              4     4      0     120
;!                                              1 COMRAM     4     4      0
;!                           _LCD_DATA
;! ---------------------------------------------------------------------------------
;! (1) _LCD_INIT                                             1     1      0     135
;!                                              3 COMRAM     1     1      0
;!                            _LCD_CMD
;!                           _LCD_DATA
;! ---------------------------------------------------------------------------------
;! (1) _LCD_CLEAR                                            0     0      0      75
;!                            _LCD_CMD
;! ---------------------------------------------------------------------------------
;! (2) _LCD_CMD                                              2     2      0      75
;!                                              1 COMRAM     2     2      0
;!                           _LCD_DATA
;! ---------------------------------------------------------------------------------
;! (3) _LCD_DATA                                             1     1      0      60
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _I2CStop                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _I2CStart                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _I2CSend                                              1     1      0      15
;!                                              1 COMRAM     1     1      0
;!                            _I2CWait
;! ---------------------------------------------------------------------------------
;! (1) _I2CRestart                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _I2CRead                                              1     1      0      15
;!                                              1 COMRAM     1     1      0
;!                            _I2CWait
;! ---------------------------------------------------------------------------------
;! (2) _I2CWait                                              1     1      0       0
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _I2CNak                                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _I2CInit                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _I2CInit
;!   _I2CNak
;!   _I2CRead
;!     _I2CWait
;!   _I2CRestart
;!   _I2CSend
;!     _I2CWait
;!   _I2CStart
;!   _I2CStop
;!   _LCD_CLEAR
;!     _LCD_CMD
;!       _LCD_DATA
;!   _LCD_INIT
;!     _LCD_CMD
;!       _LCD_DATA
;!     _LCD_DATA
;!   _LCD_OUT
;!     _LCD_CHR
;!       _LCD_DATA
;!     _LCD_CMD
;!       _LCD_DATA
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
;!COMRAM              7F     11      45       1       54.3%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      45      15        0.0%
;!DATA                 0      0      45       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 341 in file "E:\Study Material\XC8 PROJECTS\EEPROM Test\test.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    0        int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_I2CInit
;;		_I2CNak
;;		_I2CRead
;;		_I2CRestart
;;		_I2CSend
;;		_I2CStart
;;		_I2CStop
;;		_LCD_CLEAR
;;		_LCD_INIT
;;		_LCD_OUT
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\EEPROM Test\test.c"
	line	341
global __ptext0
__ptext0:
psect	text0
	file	"E:\Study Material\XC8 PROJECTS\EEPROM Test\test.c"
	line	341
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 28
	dw	0FFFFh
	line	345
	
l867:
;test.c: 343: int i;
;test.c: 345: TRISB = 0x00;
	movlw	low(0)
	movwf	((c:3987)),c	;volatile
	line	347
	
l869:
;test.c: 347: LCD_INIT();
	call	_LCD_INIT	;wreg free
	line	349
	
l871:
;test.c: 349: LCD_CLEAR();
	call	_LCD_CLEAR	;wreg free
	line	351
	
l873:
;test.c: 351: LCD_OUT(1,1,"WRITE:");
	movlw	low(01h)
	movwf	((c:LCD_OUT@b)),c
		movlw	high(STR_1)
	movwf	((c:LCD_OUT@n+1)),c
	movlw	low(STR_1)
	movwf	((c:LCD_OUT@n)),c

	movlw	(01h)&0ffh
	
	call	_LCD_OUT
	line	353
	
l875:
;test.c: 353: LCD_OUT(2,1,"READ :");
	movlw	low(01h)
	movwf	((c:LCD_OUT@b)),c
		movlw	high(STR_2)
	movwf	((c:LCD_OUT@n+1)),c
	movlw	low(STR_2)
	movwf	((c:LCD_OUT@n)),c

	movlw	(02h)&0ffh
	
	call	_LCD_OUT
	line	355
	
l877:
;test.c: 355: LCD_OUT(1,7,I2CData);
	movlw	low(07h)
	movwf	((c:LCD_OUT@b)),c
		movlw	high((c:_I2CData))
	movwf	((c:LCD_OUT@n+1)),c
	movlw	low((c:_I2CData))
	movwf	((c:LCD_OUT@n)),c

	movlw	(01h)&0ffh
	
	call	_LCD_OUT
	line	360
	
l879:
;test.c: 360: I2CInit();
	call	_I2CInit	;wreg free
	line	362
	
l881:
;test.c: 362: I2CStart();
	call	_I2CStart	;wreg free
	line	364
	
l883:
;test.c: 364: I2CSend(0xA0);
	movlw	(0A0h)&0ffh
	
	call	_I2CSend
	line	366
	
l885:
;test.c: 366: I2CSend(0x00);
	movlw	(0)&0ffh
	
	call	_I2CSend
	line	368
	
l887:
;test.c: 368: I2CSend(0x00);
	movlw	(0)&0ffh
	
	call	_I2CSend
	line	372
	
l889:
;test.c: 372: I2CSend('A');
	movlw	(041h)&0ffh
	
	call	_I2CSend
	line	376
	
l891:
;test.c: 376: I2CStop();
	call	_I2CStop	;wreg free
	line	378
	
l893:
;test.c: 378: _delay((unsigned long)((100)*(4000000/4000.0)));
	movlw	98
movwf	(??_main+0+0)&0ffh,c,f
	movlw	118
u197:
	decfsz	wreg,f
	goto	u197
	decfsz	(??_main+0+0)&0ffh,c,f
	goto	u197
	nop2

	line	380
	
l895:
;test.c: 380: I2CStart();
	call	_I2CStart	;wreg free
	line	382
	
l897:
;test.c: 382: I2CSend(0xA0);
	movlw	(0A0h)&0ffh
	
	call	_I2CSend
	line	384
	
l899:
;test.c: 384: I2CSend(0x00);
	movlw	(0)&0ffh
	
	call	_I2CSend
	line	386
	
l901:
;test.c: 386: I2CSend(0x00);
	movlw	(0)&0ffh
	
	call	_I2CSend
	line	388
	
l903:
;test.c: 388: I2CRestart();
	call	_I2CRestart	;wreg free
	line	390
	
l905:
;test.c: 390: I2CSend(0xA1);
	movlw	(0A1h)&0ffh
	
	call	_I2CSend
	line	391
	
l907:
;test.c: 391: j=0;
	movlw	low(0)
	movwf	((c:_j)),c
	line	396
	
l909:
;test.c: 396: rcdata[j]= I2CRead();
	movf	((c:_j)),c,w
	mullw	01h
	movlw	low((c:_rcdata))
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high((c:_rcdata))
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	call	_I2CRead	;wreg free
	movwf	indf2,c

	line	407
	
l911:
;test.c: 407: I2CNak();
	call	_I2CNak	;wreg free
	line	409
	
l913:
;test.c: 409: I2CStop();
	call	_I2CStop	;wreg free
	line	411
	
l915:
;test.c: 411: LCD_OUT(2,7,rcdata);
	movlw	low(07h)
	movwf	((c:LCD_OUT@b)),c
		movlw	high((c:_rcdata))
	movwf	((c:LCD_OUT@n+1)),c
	movlw	low((c:_rcdata))
	movwf	((c:LCD_OUT@n)),c

	movlw	(02h)&0ffh
	
	call	_LCD_OUT
	line	413
;test.c: 413: while(1);
	
l144:
	
l145:
	goto	l144
	
l146:
	line	415
	
l147:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_LCD_OUT

;; *************** function _LCD_OUT *****************
;; Defined at:
;;		line 83 in file "E:\Study Material\XC8 PROJECTS\EEPROM Test\test.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;;  b               1    5[COMRAM] unsigned char 
;;  n               2    6[COMRAM] PTR unsigned char 
;;		 -> rcdata(30), I2CData(7), STR_2(7), STR_1(7), 
;; Auto vars:     Size  Location     Type
;;  a               1   12[COMRAM] unsigned char 
;;  i               2   10[COMRAM] int 
;;  r               1   15[COMRAM] unsigned char 
;;  q               1   14[COMRAM] unsigned char 
;;  p               1   13[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         3       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:        11       0       0       0       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_LCD_CHR
;;		_LCD_CMD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	line	83
global __ptext1
__ptext1:
psect	text1
	file	"E:\Study Material\XC8 PROJECTS\EEPROM Test\test.c"
	line	83
	global	__size_of_LCD_OUT
	__size_of_LCD_OUT	equ	__end_of_LCD_OUT-_LCD_OUT
	
_LCD_OUT:
;incstack = 0
	opt	stack 28
	dw	0FFFFh
;LCD_OUT@a stored from wreg
	movwf	((c:LCD_OUT@a)),c
	line	88
	
l785:
;test.c: 86: char p,q,r;
;test.c: 88: if(a == 1)
	decf	((c:LCD_OUT@a)),c,w

	btfss	status,2
	goto	u71
	goto	u70
u71:
	goto	l793
u70:
	line	91
	
l787:
;test.c: 89: {
;test.c: 91: p = 0x80 + b;
	movf	((c:LCD_OUT@b)),c,w
	addlw	low(080h)
	movwf	((c:LCD_OUT@p)),c
	line	93
;test.c: 93: r = p>>4;
	swapf	((c:LCD_OUT@p)),c,w
	andlw	(0ffh shr 4) & 0ffh
	movwf	((c:LCD_OUT@r)),c
	line	95
;test.c: 95: q = (0x80+b) & 0x0F;
	movf	((c:LCD_OUT@b)),c,w
	addlw	low(080h)
	andlw	low(0Fh)
	movwf	((c:LCD_OUT@q)),c
	line	97
	
l789:
;test.c: 97: LCD_CMD(r);
	movf	((c:LCD_OUT@r)),c,w
	
	call	_LCD_CMD
	line	99
	
l791:
;test.c: 99: LCD_CMD(q);
	movf	((c:LCD_OUT@q)),c,w
	
	call	_LCD_CMD
	line	101
;test.c: 101: }
	goto	l801
	line	103
	
l66:
	
l793:
;test.c: 103: else if(a == 2)
	movf	((c:LCD_OUT@a)),c,w
	xorlw	2

	btfss	status,2
	goto	u81
	goto	u80
u81:
	goto	l801
u80:
	line	105
	
l795:
;test.c: 104: {
;test.c: 105: p = 0xC0 + b;
	movf	((c:LCD_OUT@b)),c,w
	addlw	low(0C0h)
	movwf	((c:LCD_OUT@p)),c
	line	107
;test.c: 107: r = p>>4;
	swapf	((c:LCD_OUT@p)),c,w
	andlw	(0ffh shr 4) & 0ffh
	movwf	((c:LCD_OUT@r)),c
	line	109
;test.c: 109: q = (0xC0+b) & 0x0F;
	movf	((c:LCD_OUT@b)),c,w
	addlw	low(0C0h)
	andlw	low(0Fh)
	movwf	((c:LCD_OUT@q)),c
	line	111
	
l797:
;test.c: 111: LCD_CMD(r);
	movf	((c:LCD_OUT@r)),c,w
	
	call	_LCD_CMD
	line	113
	
l799:
;test.c: 113: LCD_CMD(q);
	movf	((c:LCD_OUT@q)),c,w
	
	call	_LCD_CMD
	goto	l801
	line	115
	
l68:
	goto	l801
	line	118
	
l67:
	line	120
	
l801:
;test.c: 115: }
;test.c: 118: int i;
;test.c: 120: for(i=0;n[i]!='\0';i++)
	movlw	high(0)
	movwf	((c:LCD_OUT@i+1)),c
	movlw	low(0)
	movwf	((c:LCD_OUT@i)),c
	goto	l807
	line	122
	
l70:
	
l803:
;test.c: 122: LCD_CHR(n[i]);
	movff	(c:LCD_OUT@n),??_LCD_OUT+0+0
	movff	(c:LCD_OUT@n+1),??_LCD_OUT+0+0+1
	movf	((c:LCD_OUT@i)),c,w
	addwf	(??_LCD_OUT+0+0),c
	movf	((c:LCD_OUT@i+1)),c,w
	addwfc	(??_LCD_OUT+0+1),c
	movff	??_LCD_OUT+0+0,tblptrl
	movff	??_LCD_OUT+0+1,tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u97
	tblrd	*
		dw	0FFFFh; errata NOP

	movf	tablat,w
	bra	u90
u97:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
u90:
	
	call	_LCD_CHR
	line	120
	
l805:
	infsnz	((c:LCD_OUT@i)),c
	incf	((c:LCD_OUT@i+1)),c
	goto	l807
	
l69:
	
l807:
	movff	(c:LCD_OUT@n),??_LCD_OUT+0+0
	movff	(c:LCD_OUT@n+1),??_LCD_OUT+0+0+1
	movf	((c:LCD_OUT@i)),c,w
	addwf	(??_LCD_OUT+0+0),c
	movf	((c:LCD_OUT@i+1)),c,w
	addwfc	(??_LCD_OUT+0+1),c
	movff	??_LCD_OUT+0+0,tblptrl
	movff	??_LCD_OUT+0+1,tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u107
	tblrd	*
		dw	0FFFFh; errata NOP

	movf	tablat,w
	bra	u100
u107:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
u100:
	iorlw	0
	btfss	status,2
	goto	u111
	goto	u110
u111:
	goto	l803
u110:
	goto	l72
	
l71:
	line	124
	
l72:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_LCD_OUT
	__end_of_LCD_OUT:
	signat	_LCD_OUT,12408
	global	_LCD_CHR

;; *************** function _LCD_CHR *****************
;; Defined at:
;;		line 161 in file "E:\Study Material\XC8 PROJECTS\EEPROM Test\test.c"
;; Parameters:    Size  Location     Type
;;  m               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  m               1    4[COMRAM] unsigned char 
;;  T2              1    3[COMRAM] unsigned char 
;;  T1              1    2[COMRAM] unsigned char 
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
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_LCD_DATA
;; This function is called by:
;;		_LCD_OUT
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
	line	161
global __ptext2
__ptext2:
psect	text2
	file	"E:\Study Material\XC8 PROJECTS\EEPROM Test\test.c"
	line	161
	global	__size_of_LCD_CHR
	__size_of_LCD_CHR	equ	__end_of_LCD_CHR-_LCD_CHR
	
_LCD_CHR:
;incstack = 0
	opt	stack 28
	dw	0FFFFh
;LCD_CHR@m stored from wreg
	movwf	((c:LCD_CHR@m)),c
	line	165
	
l757:
;test.c: 163: char T1,T2;
;test.c: 165: T1 = m&0x0F;
	movf	((c:LCD_CHR@m)),c,w
	andlw	low(0Fh)
	movwf	((c:LCD_CHR@T1)),c
	line	167
;test.c: 167: T2 = m&0xF0;
	movf	((c:LCD_CHR@m)),c,w
	andlw	low(0F0h)
	movwf	((c:LCD_CHR@T2)),c
	line	169
	
l759:
;test.c: 169: RB0 = 1;
	bsf	c:(31752/8),(31752)&7	;volatile
	line	171
	
l761:
;test.c: 171: LCD_DATA(T2>>4);
	swapf	((c:LCD_CHR@T2)),c,w
	andlw	(0ffh shr 4) & 0ffh
	
	call	_LCD_DATA
	line	173
	
l763:
;test.c: 173: RB1 = 1;
	bsf	c:(31753/8),(31753)&7	;volatile
	line	175
	
l765:
;test.c: 175: _delay((unsigned long)((5)*(4000000/4000.0)));
	movlw	5
movwf	(??_LCD_CHR+0+0)&0ffh,c,f
	movlw	223
u207:
	decfsz	wreg,f
	goto	u207
	decfsz	(??_LCD_CHR+0+0)&0ffh,c,f
	goto	u207

	line	177
	
l767:
;test.c: 177: RB1 = 0;
	bcf	c:(31753/8),(31753)&7	;volatile
	line	179
	
l769:
;test.c: 179: LCD_DATA(T1);
	movf	((c:LCD_CHR@T1)),c,w
	
	call	_LCD_DATA
	line	181
	
l771:
;test.c: 181: RB1 = 1;
	bsf	c:(31753/8),(31753)&7	;volatile
	line	183
	
l773:
;test.c: 183: _delay((unsigned long)((5)*(4000000/4000.0)));
	movlw	5
movwf	(??_LCD_CHR+0+0)&0ffh,c,f
	movlw	223
u217:
	decfsz	wreg,f
	goto	u217
	decfsz	(??_LCD_CHR+0+0)&0ffh,c,f
	goto	u217

	line	185
	
l775:
;test.c: 185: RB1 = 0;
	bcf	c:(31753/8),(31753)&7	;volatile
	line	186
	
l78:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_LCD_CHR
	__end_of_LCD_CHR:
	signat	_LCD_CHR,4216
	global	_LCD_INIT

;; *************** function _LCD_INIT *****************
;; Defined at:
;;		line 128 in file "E:\Study Material\XC8 PROJECTS\EEPROM Test\test.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, cstack
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_LCD_CMD
;;		_LCD_DATA
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
	line	128
global __ptext3
__ptext3:
psect	text3
	file	"E:\Study Material\XC8 PROJECTS\EEPROM Test\test.c"
	line	128
	global	__size_of_LCD_INIT
	__size_of_LCD_INIT	equ	__end_of_LCD_INIT-_LCD_INIT
	
_LCD_INIT:
;incstack = 0
	opt	stack 28
	dw	0FFFFh
	line	130
	
l809:
;test.c: 130: LCD_DATA(0x00);
	movlw	(0)&0ffh
	
	call	_LCD_DATA
	line	132
	
l811:
;test.c: 132: _delay((unsigned long)((20)*(4000000/4000.0)));
	movlw	20
movwf	(??_LCD_INIT+0+0)&0ffh,c,f
	movlw	125
u227:
	decfsz	wreg,f
	goto	u227
	decfsz	(??_LCD_INIT+0+0)&0ffh,c,f
	goto	u227
	nop2

	line	134
	
l813:
;test.c: 134: LCD_CMD(0x03);
	movlw	(03h)&0ffh
	
	call	_LCD_CMD
	line	136
	
l815:
;test.c: 136: _delay((unsigned long)((5)*(4000000/4000.0)));
	movlw	5
movwf	(??_LCD_INIT+0+0)&0ffh,c,f
	movlw	223
u237:
	decfsz	wreg,f
	goto	u237
	decfsz	(??_LCD_INIT+0+0)&0ffh,c,f
	goto	u237

	line	138
	
l817:
;test.c: 138: LCD_CMD(0x03);
	movlw	(03h)&0ffh
	
	call	_LCD_CMD
	line	140
	
l819:
;test.c: 140: _delay((unsigned long)((11)*(4000000/4000.0)));
	movlw	11
movwf	(??_LCD_INIT+0+0)&0ffh,c,f
	movlw	184
u247:
	decfsz	wreg,f
	goto	u247
	decfsz	(??_LCD_INIT+0+0)&0ffh,c,f
	goto	u247

	line	142
	
l821:
;test.c: 142: LCD_CMD(0x03);
	movlw	(03h)&0ffh
	
	call	_LCD_CMD
	line	144
	
l823:
;test.c: 144: LCD_CMD(0x02);
	movlw	(02h)&0ffh
	
	call	_LCD_CMD
	line	146
	
l825:
;test.c: 146: LCD_CMD(0x02);
	movlw	(02h)&0ffh
	
	call	_LCD_CMD
	line	148
	
l827:
;test.c: 148: LCD_CMD(0x08);
	movlw	(08h)&0ffh
	
	call	_LCD_CMD
	line	150
	
l829:
;test.c: 150: LCD_CMD(0x00);
	movlw	(0)&0ffh
	
	call	_LCD_CMD
	line	152
	
l831:
;test.c: 152: LCD_CMD(0x0C);
	movlw	(0Ch)&0ffh
	
	call	_LCD_CMD
	line	154
	
l833:
;test.c: 154: LCD_CMD(0x00);
	movlw	(0)&0ffh
	
	call	_LCD_CMD
	line	156
	
l835:
;test.c: 156: LCD_CMD(0x06);
	movlw	(06h)&0ffh
	
	call	_LCD_CMD
	line	157
	
l75:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_LCD_INIT
	__end_of_LCD_INIT:
	signat	_LCD_INIT,88
	global	_LCD_CLEAR

;; *************** function _LCD_CLEAR *****************
;; Defined at:
;;		line 72 in file "E:\Study Material\XC8 PROJECTS\EEPROM Test\test.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   62[COMRAM] int 
;; Registers used:
;;		wreg, status,2, cstack
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
;;		_LCD_CMD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
	line	72
global __ptext4
__ptext4:
psect	text4
	file	"E:\Study Material\XC8 PROJECTS\EEPROM Test\test.c"
	line	72
	global	__size_of_LCD_CLEAR
	__size_of_LCD_CLEAR	equ	__end_of_LCD_CLEAR-_LCD_CLEAR
	
_LCD_CLEAR:
;incstack = 0
	opt	stack 28
	dw	0FFFFh
	line	75
	
l783:
;test.c: 75: LCD_CMD(0);
	movlw	(0)&0ffh
	
	call	_LCD_CMD
	line	77
;test.c: 77: LCD_CMD(1);
	movlw	(01h)&0ffh
	
	call	_LCD_CMD
	line	79
	
l63:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_LCD_CLEAR
	__end_of_LCD_CLEAR:
	signat	_LCD_CLEAR,90
	global	_LCD_CMD

;; *************** function _LCD_CMD *****************
;; Defined at:
;;		line 56 in file "E:\Study Material\XC8 PROJECTS\EEPROM Test\test.c"
;; Parameters:    Size  Location     Type
;;  m               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  m               1    2[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, cstack
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
;;		_LCD_DATA
;; This function is called by:
;;		_LCD_CLEAR
;;		_LCD_OUT
;;		_LCD_INIT
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2
	line	56
global __ptext5
__ptext5:
psect	text5
	file	"E:\Study Material\XC8 PROJECTS\EEPROM Test\test.c"
	line	56
	global	__size_of_LCD_CMD
	__size_of_LCD_CMD	equ	__end_of_LCD_CMD-_LCD_CMD
	
_LCD_CMD:
;incstack = 0
	opt	stack 28
	dw	0FFFFh
;LCD_CMD@m stored from wreg
	movwf	((c:LCD_CMD@m)),c
	line	59
	
l747:
;test.c: 59: RB0 = 0;
	bcf	c:(31752/8),(31752)&7	;volatile
	line	61
	
l749:
;test.c: 61: LCD_DATA(m);
	movf	((c:LCD_CMD@m)),c,w
	
	call	_LCD_DATA
	line	63
	
l751:
;test.c: 63: RB1 = 1;
	bsf	c:(31753/8),(31753)&7	;volatile
	line	65
	
l753:
;test.c: 65: _delay((unsigned long)((4)*(4000000/4000.0)));
	movlw	4
movwf	(??_LCD_CMD+0+0)&0ffh,c,f
	movlw	229
u257:
	decfsz	wreg,f
	goto	u257
	decfsz	(??_LCD_CMD+0+0)&0ffh,c,f
	goto	u257
	nop2

	line	67
	
l755:
;test.c: 67: RB1 = 0;
	bcf	c:(31753/8),(31753)&7	;volatile
	line	68
	
l60:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_LCD_CMD
	__end_of_LCD_CMD:
	signat	_LCD_CMD,4216
	global	_LCD_DATA

;; *************** function _LCD_DATA *****************
;; Defined at:
;;		line 33 in file "E:\Study Material\XC8 PROJECTS\EEPROM Test\test.c"
;; Parameters:    Size  Location     Type
;;  m               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  m               1    0[COMRAM] unsigned char 
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
;;		_LCD_CMD
;;		_LCD_INIT
;;		_LCD_CHR
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2
	line	33
global __ptext6
__ptext6:
psect	text6
	file	"E:\Study Material\XC8 PROJECTS\EEPROM Test\test.c"
	line	33
	global	__size_of_LCD_DATA
	__size_of_LCD_DATA	equ	__end_of_LCD_DATA-_LCD_DATA
	
_LCD_DATA:
;incstack = 0
	opt	stack 28
	dw	0FFFFh
;LCD_DATA@m stored from wreg
	movwf	((c:LCD_DATA@m)),c
	line	35
	
l731:
;test.c: 35: if(m & 1)RB2 = 1;
	
	btfss	((c:LCD_DATA@m)),c,(0)&7
	goto	u11
	goto	u10
u11:
	goto	l49
u10:
	
l733:
	bsf	c:(31754/8),(31754)&7	;volatile
	goto	l735
	line	37
	
l49:
;test.c: 37: else RB2 = 0;
	bcf	c:(31754/8),(31754)&7	;volatile
	goto	l735
	
l50:
	line	40
	
l735:
;test.c: 40: if(m & 2)RB3 = 1;
	
	btfss	((c:LCD_DATA@m)),c,(1)&7
	goto	u21
	goto	u20
u21:
	goto	l51
u20:
	
l737:
	bsf	c:(31755/8),(31755)&7	;volatile
	goto	l739
	line	42
	
l51:
;test.c: 42: else RB3 = 0;
	bcf	c:(31755/8),(31755)&7	;volatile
	goto	l739
	
l52:
	line	45
	
l739:
;test.c: 45: if(m & 4)RB4 = 1;
	
	btfss	((c:LCD_DATA@m)),c,(2)&7
	goto	u31
	goto	u30
u31:
	goto	l53
u30:
	
l741:
	bsf	c:(31756/8),(31756)&7	;volatile
	goto	l743
	line	47
	
l53:
;test.c: 47: else RB4 = 0;
	bcf	c:(31756/8),(31756)&7	;volatile
	goto	l743
	
l54:
	line	49
	
l743:
;test.c: 49: if(m & 8)RB5 = 1;
	
	btfss	((c:LCD_DATA@m)),c,(3)&7
	goto	u41
	goto	u40
u41:
	goto	l55
u40:
	
l745:
	bsf	c:(31757/8),(31757)&7	;volatile
	goto	l57
	line	51
	
l55:
;test.c: 51: else RB5 = 0;
	bcf	c:(31757/8),(31757)&7	;volatile
	goto	l57
	
l56:
	line	52
	
l57:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_LCD_DATA
	__end_of_LCD_DATA:
	signat	_LCD_DATA,4216
	global	_I2CStop

;; *************** function _I2CStop *****************
;; Defined at:
;;		line 250 in file "E:\Study Material\XC8 PROJECTS\EEPROM Test\test.c"
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
psect	text7,class=CODE,space=0,reloc=2
	line	250
global __ptext7
__ptext7:
psect	text7
	file	"E:\Study Material\XC8 PROJECTS\EEPROM Test\test.c"
	line	250
	global	__size_of_I2CStop
	__size_of_I2CStop	equ	__end_of_I2CStop-_I2CStop
	
_I2CStop:
;incstack = 0
	opt	stack 30
	dw	0FFFFh
	line	253
	
l847:
;test.c: 253: PEN = 1;
	bsf	c:(32298/8),(32298)&7	;volatile
	line	255
;test.c: 255: while(PEN);
	goto	l102
	
l103:
	
l102:
	btfsc	c:(32298/8),(32298)&7	;volatile
	goto	u131
	goto	u130
u131:
	goto	l102
u130:
	goto	l105
	
l104:
	line	257
	
l105:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_I2CStop
	__end_of_I2CStop:
	signat	_I2CStop,88
	global	_I2CStart

;; *************** function _I2CStart *****************
;; Defined at:
;;		line 240 in file "E:\Study Material\XC8 PROJECTS\EEPROM Test\test.c"
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
psect	text8,class=CODE,space=0,reloc=2
	line	240
global __ptext8
__ptext8:
psect	text8
	file	"E:\Study Material\XC8 PROJECTS\EEPROM Test\test.c"
	line	240
	global	__size_of_I2CStart
	__size_of_I2CStart	equ	__end_of_I2CStart-_I2CStart
	
_I2CStart:
;incstack = 0
	opt	stack 30
	dw	0FFFFh
	line	243
	
l845:
;test.c: 243: SEN = 1;
	bsf	c:(32296/8),(32296)&7	;volatile
	line	245
;test.c: 245: while(SEN);
	goto	l96
	
l97:
	
l96:
	btfsc	c:(32296/8),(32296)&7	;volatile
	goto	u121
	goto	u120
u121:
	goto	l96
u120:
	goto	l99
	
l98:
	line	247
	
l99:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_I2CStart
	__end_of_I2CStart:
	signat	_I2CStart,88
	global	_I2CSend

;; *************** function _I2CSend *****************
;; Defined at:
;;		line 301 in file "E:\Study Material\XC8 PROJECTS\EEPROM Test\test.c"
;; Parameters:    Size  Location     Type
;;  dat             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dat             1    1[COMRAM] unsigned char 
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
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_I2CWait
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2
	line	301
global __ptext9
__ptext9:
psect	text9
	file	"E:\Study Material\XC8 PROJECTS\EEPROM Test\test.c"
	line	301
	global	__size_of_I2CSend
	__size_of_I2CSend	equ	__end_of_I2CSend-_I2CSend
	
_I2CSend:
;incstack = 0
	opt	stack 29
	dw	0FFFFh
;I2CSend@dat stored from wreg
	movwf	((c:I2CSend@dat)),c
	line	304
	
l853:
;test.c: 304: SSPBUF = dat;
	movff	(c:I2CSend@dat),(c:4041)	;volatile
	line	306
;test.c: 306: while(BF);
	goto	l132
	
l133:
	
l132:
	btfsc	c:(32312/8),(32312)&7	;volatile
	goto	u161
	goto	u160
u161:
	goto	l132
u160:
	goto	l855
	
l134:
	line	308
	
l855:
;test.c: 308: I2CWait();
	call	_I2CWait	;wreg free
	line	310
	
l135:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_I2CSend
	__end_of_I2CSend:
	signat	_I2CSend,4216
	global	_I2CRestart

;; *************** function _I2CRestart *****************
;; Defined at:
;;		line 260 in file "E:\Study Material\XC8 PROJECTS\EEPROM Test\test.c"
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
psect	text10,class=CODE,space=0,reloc=2
	line	260
global __ptext10
__ptext10:
psect	text10
	file	"E:\Study Material\XC8 PROJECTS\EEPROM Test\test.c"
	line	260
	global	__size_of_I2CRestart
	__size_of_I2CRestart	equ	__end_of_I2CRestart-_I2CRestart
	
_I2CRestart:
;incstack = 0
	opt	stack 30
	dw	0FFFFh
	line	263
	
l849:
;test.c: 263: RSEN = 1;
	bsf	c:(32297/8),(32297)&7	;volatile
	line	265
;test.c: 265: while(RSEN);
	goto	l108
	
l109:
	
l108:
	btfsc	c:(32297/8),(32297)&7	;volatile
	goto	u141
	goto	u140
u141:
	goto	l108
u140:
	goto	l111
	
l110:
	line	267
	
l111:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_I2CRestart
	__end_of_I2CRestart:
	signat	_I2CRestart,88
	global	_I2CRead

;; *************** function _I2CRead *****************
;; Defined at:
;;		line 314 in file "E:\Study Material\XC8 PROJECTS\EEPROM Test\test.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp            1    1[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_I2CWait
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2
	line	314
global __ptext11
__ptext11:
psect	text11
	file	"E:\Study Material\XC8 PROJECTS\EEPROM Test\test.c"
	line	314
	global	__size_of_I2CRead
	__size_of_I2CRead	equ	__end_of_I2CRead-_I2CRead
	
_I2CRead:
;incstack = 0
	opt	stack 29
	dw	0FFFFh
	line	319
	
l857:
;test.c: 317: unsigned char temp;
;test.c: 319: RCEN = 1;
	bsf	c:(32299/8),(32299)&7	;volatile
	line	321
;test.c: 321: while(!BF);
	goto	l138
	
l139:
	
l138:
	btfss	c:(32312/8),(32312)&7	;volatile
	goto	u171
	goto	u170
u171:
	goto	l138
u170:
	
l140:
	line	323
;test.c: 323: temp = SSPBUF;
	movff	(c:4041),(c:I2CRead@temp)	;volatile
	line	325
	
l859:
;test.c: 325: I2CWait();
	call	_I2CWait	;wreg free
	line	327
	
l861:
;test.c: 327: return temp;
	movf	((c:I2CRead@temp)),c,w
	goto	l141
	
l863:
	line	329
	
l141:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_I2CRead
	__end_of_I2CRead:
	signat	_I2CRead,89
	global	_I2CWait

;; *************** function _I2CWait *****************
;; Defined at:
;;		line 293 in file "E:\Study Material\XC8 PROJECTS\EEPROM Test\test.c"
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
;;		_I2CSend
;;		_I2CRead
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2
	line	293
global __ptext12
__ptext12:
psect	text12
	file	"E:\Study Material\XC8 PROJECTS\EEPROM Test\test.c"
	line	293
	global	__size_of_I2CWait
	__size_of_I2CWait	equ	__end_of_I2CWait-_I2CWait
	
_I2CWait:
;incstack = 0
	opt	stack 29
	dw	0FFFFh
	line	296
	
l777:
;test.c: 296: while ((SSPCON2 & 0x1F ) || ( SSPSTAT & 0x04 ) );
	goto	l779
	
l127:
	goto	l779
	
l126:
	
l779:
	movff	(c:4037),??_I2CWait+0+0	;volatile
	movlw	01Fh
	andwf	(??_I2CWait+0+0),c
	btfss	status,2
	goto	u51
	goto	u50
u51:
	goto	l779
u50:
	
l781:
	
	btfsc	((c:4039)),c,(2)&7	;volatile
	goto	u61
	goto	u60
u61:
	goto	l779
u60:
	goto	l129
	
l128:
	line	298
	
l129:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_I2CWait
	__end_of_I2CWait:
	signat	_I2CWait,88
	global	_I2CNak

;; *************** function _I2CNak *****************
;; Defined at:
;;		line 282 in file "E:\Study Material\XC8 PROJECTS\EEPROM Test\test.c"
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
psect	text13,class=CODE,space=0,reloc=2
	line	282
global __ptext13
__ptext13:
psect	text13
	file	"E:\Study Material\XC8 PROJECTS\EEPROM Test\test.c"
	line	282
	global	__size_of_I2CNak
	__size_of_I2CNak	equ	__end_of_I2CNak-_I2CNak
	
_I2CNak:
;incstack = 0
	opt	stack 30
	dw	0FFFFh
	line	284
	
l851:
;test.c: 284: ACKDT = 1;
	bsf	c:(32301/8),(32301)&7	;volatile
	line	286
;test.c: 286: ACKEN = 1;
	bsf	c:(32300/8),(32300)&7	;volatile
	line	288
;test.c: 288: while(ACKEN);
	goto	l120
	
l121:
	
l120:
	btfsc	c:(32300/8),(32300)&7	;volatile
	goto	u151
	goto	u150
u151:
	goto	l120
u150:
	goto	l123
	
l122:
	line	290
	
l123:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_I2CNak
	__end_of_I2CNak:
	signat	_I2CNak,88
	global	_I2CInit

;; *************** function _I2CInit *****************
;; Defined at:
;;		line 224 in file "E:\Study Material\XC8 PROJECTS\EEPROM Test\test.c"
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
	line	224
global __ptext14
__ptext14:
psect	text14
	file	"E:\Study Material\XC8 PROJECTS\EEPROM Test\test.c"
	line	224
	global	__size_of_I2CInit
	__size_of_I2CInit	equ	__end_of_I2CInit-_I2CInit
	
_I2CInit:
;incstack = 0
	opt	stack 30
	dw	0FFFFh
	line	227
	
l837:
;test.c: 227: TRISC3 = 1;
	bsf	c:(31907/8),(31907)&7	;volatile
	line	229
;test.c: 229: TRISC4 = 1;
	bsf	c:(31908/8),(31908)&7	;volatile
	line	231
	
l839:
;test.c: 231: SSPSTAT |= 0x80;
	bsf	(0+(7/8)+(c:4039)),c,(7)&7	;volatile
	line	233
	
l841:
;test.c: 233: SSPCON1 = 0x28;
	movlw	low(028h)
	movwf	((c:4038)),c	;volatile
	line	235
	
l843:
;test.c: 235: SSPADD = 0x28;
	movlw	low(028h)
	movwf	((c:4040)),c	;volatile
	line	236
	
l93:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_I2CInit
	__end_of_I2CInit:
	signat	_I2CInit,88
psect	smallconst
	db 0	; dummy byte at the end
	global	__smallconst
	global	__mediumconst
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

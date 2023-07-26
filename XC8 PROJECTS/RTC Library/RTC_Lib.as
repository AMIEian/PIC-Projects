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
	FNCALL	_main,_LCDInit
	FNCALL	_main,_LCDWriteString
	FNCALL	_main,_OpenI2C
	FNCALL	_main,_ds1307_init
	FNCALL	_main,_ds1307_set_date_time
	FNCALL	_ds1307_set_date_time,_IdleI2C
	FNCALL	_ds1307_set_date_time,_WriteI2C
	FNCALL	_ds1307_set_date_time,_bin2bcd
	FNCALL	_ds1307_init,_IdleI2C
	FNCALL	_ds1307_init,_ReadI2C
	FNCALL	_ds1307_init,_WriteI2C
	FNCALL	_ds1307_init,_bcd2bin
	FNCALL	_ds1307_init,_bin2bcd
	FNCALL	_WriteI2C,_IdleI2C
	FNCALL	_LCDWriteString,_LCDByte
	FNCALL	_LCDInit,_LCDBusyLoop
	FNCALL	_LCDInit,_LCDByte
	FNCALL	_LCDByte,_LCDBusyLoop
	FNROOT	_main
	FNCALL	_One_Sec,_LCDGotoXY
	FNCALL	_One_Sec,_LCDWriteInt
	FNCALL	_One_Sec,_ds1307_get_time
	FNCALL	_One_Sec,i2_LCDByte
	FNCALL	_One_Sec,i2_LCDWriteString
	FNCALL	i2_LCDWriteString,i2_LCDByte
	FNCALL	_ds1307_get_time,i2_IdleI2C
	FNCALL	_ds1307_get_time,i2_ReadI2C
	FNCALL	_ds1307_get_time,i2_WriteI2C
	FNCALL	_ds1307_get_time,i2_bcd2bin
	FNCALL	i2_WriteI2C,i2_IdleI2C
	FNCALL	_LCDWriteInt,___awdiv
	FNCALL	_LCDWriteInt,___awmod
	FNCALL	_LCDWriteInt,i2_LCDByte
	FNCALL	_LCDGotoXY,i2_LCDByte
	FNCALL	i2_LCDByte,i2_LCDBusyLoop
	FNCALL	intlevel2,_One_Sec
	global	intlevel2
	FNROOT	intlevel2
	global	___cgram
psect	idataCOMRAM,class=CODE,space=0,delta=1,noexec
global __pidataCOMRAM
__pidataCOMRAM:
	file	"E:\Study Material\XC8 PROJECTS\RTC Library\custom_char.h"
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
	global	LCDWriteInt@F3701
	global	_day
	global	_dow
	global	_hr
	global	_min
	global	_month
	global	_sec
	global	_year
	global	_INTCONbits
_INTCONbits	set	0xFF2
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
	global	_TRISCbits
_TRISCbits	set	0xF94
	global	_INT0IE
_INT0IE	set	0x7F94
	global	_INT0IF
_INT0IF	set	0x7F91
	global	_INTEDG0
_INTEDG0	set	0x7F8E
	global	_RB1
_RB1	set	0x7C09
	global	_RB2
_RB2	set	0x7C0A
	global	_RB3
_RB3	set	0x7C0B
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	global __stringdata
__stringdata:
	
STR_2:
	db	78	;'N'
	db	73	;'I'
	db	84	;'T'
	db	73	;'I'
	db	78	;'N'
	db	32
	db	78	;'N'
	db	46
	db	32
	db	83	;'S'
	db	65	;'A'
	db	78	;'N'
	db	71	;'G'
	db	65	;'A'
	db	76	;'L'
	db	69	;'E'
	db	0
	
STR_1:
	db	72	;'H'
	db	101	;'e'
	db	108	;'l'
	db	108	;'l'
	db	111	;'o'
	db	32
	db	87	;'W'
	db	111	;'o'
	db	114	;'r'
	db	108	;'l'
	db	100	;'d'
	db	32
	db	33
	db	0
	
STR_3:
	db	58	;':'
	db	0
STR_4	equ	STR_3+0
	global __end_of__stringdata
__end_of__stringdata:
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
	file	"RTC_Lib.as"
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
	global	_day
_day:
       ds      1
	global	_dow
_dow:
       ds      1
	global	_hr
_hr:
       ds      1
	global	_min
_min:
       ds      1
	global	_month
_month:
       ds      1
	global	_sec
_sec:
       ds      1
	global	_year
_year:
       ds      1
psect	dataCOMRAM,class=COMRAM,space=1,noexec
global __pdataCOMRAM
__pdataCOMRAM:
	file	"E:\Study Material\XC8 PROJECTS\RTC Library\custom_char.h"
	line	15
	global	___cgram
___cgram:
       ds      16
	file	"RTC_Lib.as"
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
	line	#
; Initialize objects allocated to COMRAM (16 bytes)
	global __pidataCOMRAM
	; load TBLPTR registers with __pidataCOMRAM
	movlw	low (__pidataCOMRAM)
	movwf	tblptrl
	movlw	high(__pidataCOMRAM)
	movwf	tblptrh
	movlw	low highword(__pidataCOMRAM)
	movwf	tblptru
	lfsr	0,__pdataCOMRAM
	lfsr	1,16
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
?_IdleI2C:	; 0 bytes @ 0x0
?_LCDInit:	; 0 bytes @ 0x0
?_ds1307_init:	; 0 bytes @ 0x0
?_ds1307_set_date_time:	; 0 bytes @ 0x0
?_ds1307_get_time:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_One_Sec:	; 0 bytes @ 0x0
?i2_LCDBusyLoop:	; 0 bytes @ 0x0
??i2_LCDBusyLoop:	; 0 bytes @ 0x0
??i2_bcd2bin:	; 0 bytes @ 0x0
?i2_IdleI2C:	; 0 bytes @ 0x0
??i2_IdleI2C:	; 0 bytes @ 0x0
??i2_ReadI2C:	; 0 bytes @ 0x0
?_WriteI2C:	; 1 bytes @ 0x0
?_ReadI2C:	; 1 bytes @ 0x0
?_bcd2bin:	; 1 bytes @ 0x0
?_bin2bcd:	; 1 bytes @ 0x0
?i2_bcd2bin:	; 1 bytes @ 0x0
?i2_ReadI2C:	; 1 bytes @ 0x0
?i2_WriteI2C:	; 1 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	i2LCDBusyLoop@busy
i2LCDBusyLoop@busy:	; 1 bytes @ 0x0
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x0
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x0
	ds   1
??i2_WriteI2C:	; 0 bytes @ 0x1
	global	i2LCDBusyLoop@temp
i2LCDBusyLoop@temp:	; 1 bytes @ 0x1
	global	i2bcd2bin@bcd_value
i2bcd2bin@bcd_value:	; 1 bytes @ 0x1
	ds   1
	global	i2LCDBusyLoop@status
i2LCDBusyLoop@status:	; 1 bytes @ 0x2
	global	i2bcd2bin@temp
i2bcd2bin@temp:	; 1 bytes @ 0x2
	global	i2WriteI2C@data_out
i2WriteI2C@data_out:	; 1 bytes @ 0x2
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x2
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x2
	ds   1
??_ds1307_get_time:	; 0 bytes @ 0x3
?i2_LCDByte:	; 0 bytes @ 0x3
	global	i2LCDByte@isdata
i2LCDByte@isdata:	; 1 bytes @ 0x3
	ds   1
??___awdiv:	; 0 bytes @ 0x4
??___awmod:	; 0 bytes @ 0x4
??i2_LCDByte:	; 0 bytes @ 0x4
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x4
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x4
	ds   1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x5
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x5
	global	i2LCDByte@c
i2LCDByte@c:	; 1 bytes @ 0x5
	ds   1
	global	i2LCDByte@hn
i2LCDByte@hn:	; 1 bytes @ 0x6
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x6
	ds   1
	global	i2LCDByte@ln
i2LCDByte@ln:	; 1 bytes @ 0x7
	ds   1
	global	i2LCDByte@temp
i2LCDByte@temp:	; 1 bytes @ 0x8
	ds   1
?_LCDWriteInt:	; 0 bytes @ 0x9
?_LCDGotoXY:	; 0 bytes @ 0x9
?i2_LCDWriteString:	; 0 bytes @ 0x9
	global	LCDGotoXY@y
LCDGotoXY@y:	; 1 bytes @ 0x9
	global	LCDWriteInt@val
LCDWriteInt@val:	; 2 bytes @ 0x9
	global	i2LCDWriteString@msg
i2LCDWriteString@msg:	; 2 bytes @ 0x9
	ds   1
??_LCDGotoXY:	; 0 bytes @ 0xA
	global	LCDGotoXY@x
LCDGotoXY@x:	; 1 bytes @ 0xA
	ds   1
??i2_LCDWriteString:	; 0 bytes @ 0xB
	global	LCDWriteInt@field_length
LCDWriteInt@field_length:	; 1 bytes @ 0xB
	ds   1
??_LCDWriteInt:	; 0 bytes @ 0xC
	global	i2LCDWriteString@cc
i2LCDWriteString@cc:	; 1 bytes @ 0xC
	ds   2
	global	LCDWriteInt@str
LCDWriteInt@str:	; 5 bytes @ 0xE
	ds   5
	global	LCDWriteInt@j
LCDWriteInt@j:	; 2 bytes @ 0x13
	ds   2
	global	LCDWriteInt@i
LCDWriteInt@i:	; 2 bytes @ 0x15
	ds   2
??_One_Sec:	; 0 bytes @ 0x17
	ds   14
??_LCDBusyLoop:	; 0 bytes @ 0x25
??_IdleI2C:	; 0 bytes @ 0x25
??_ReadI2C:	; 0 bytes @ 0x25
??_bcd2bin:	; 0 bytes @ 0x25
??_bin2bcd:	; 0 bytes @ 0x25
?_OpenI2C:	; 0 bytes @ 0x25
	global	LCDBusyLoop@busy
LCDBusyLoop@busy:	; 1 bytes @ 0x25
	global	bin2bcd@binary_value
bin2bcd@binary_value:	; 1 bytes @ 0x25
	global	OpenI2C@slew
OpenI2C@slew:	; 1 bytes @ 0x25
	ds   1
??_WriteI2C:	; 0 bytes @ 0x26
??_OpenI2C:	; 0 bytes @ 0x26
	global	LCDBusyLoop@temp
LCDBusyLoop@temp:	; 1 bytes @ 0x26
	global	bin2bcd@retval
bin2bcd@retval:	; 1 bytes @ 0x26
	global	bcd2bin@bcd_value
bcd2bin@bcd_value:	; 1 bytes @ 0x26
	global	OpenI2C@sync_mode
OpenI2C@sync_mode:	; 1 bytes @ 0x26
	ds   1
	global	LCDBusyLoop@status
LCDBusyLoop@status:	; 1 bytes @ 0x27
	global	bin2bcd@temp
bin2bcd@temp:	; 1 bytes @ 0x27
	global	bcd2bin@temp
bcd2bin@temp:	; 1 bytes @ 0x27
	global	WriteI2C@data_out
WriteI2C@data_out:	; 1 bytes @ 0x27
	ds   1
?_LCDByte:	; 0 bytes @ 0x28
??_ds1307_init:	; 0 bytes @ 0x28
??_ds1307_set_date_time:	; 0 bytes @ 0x28
	global	LCDByte@isdata
LCDByte@isdata:	; 1 bytes @ 0x28
	global	ds1307_init@seconds
ds1307_init@seconds:	; 1 bytes @ 0x28
	ds   1
??_LCDByte:	; 0 bytes @ 0x29
	ds   1
	global	LCDByte@hn
LCDByte@hn:	; 1 bytes @ 0x2A
	ds   1
	global	LCDByte@ln
LCDByte@ln:	; 1 bytes @ 0x2B
	ds   1
	global	LCDByte@c
LCDByte@c:	; 1 bytes @ 0x2C
	ds   1
	global	LCDByte@temp
LCDByte@temp:	; 1 bytes @ 0x2D
	ds   1
??_LCDInit:	; 0 bytes @ 0x2E
?_LCDWriteString:	; 0 bytes @ 0x2E
	global	LCDWriteString@msg
LCDWriteString@msg:	; 2 bytes @ 0x2E
	ds   1
	global	LCDInit@style
LCDInit@style:	; 1 bytes @ 0x2F
	ds   1
??_LCDWriteString:	; 0 bytes @ 0x30
	global	LCDInit@__i
LCDInit@__i:	; 1 bytes @ 0x30
	ds   1
	global	LCDWriteString@cc
LCDWriteString@cc:	; 1 bytes @ 0x31
	ds   1
??_main:	; 0 bytes @ 0x32
	global	main@count
main@count:	; 1 bytes @ 0x32
	ds   1
;!
;!Data Sizes:
;!    Strings     33
;!    Constant    0
;!    Data        16
;!    BSS         12
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM          127     51      79
;!    BANK0           128      0       0
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0

;!
;!Pointer List with Targets:
;!
;!    LCDWriteString@msg	PTR const unsigned char  size(2) Largest target is 17
;!		 -> STR_4(CODE[2]), STR_3(CODE[2]), STR_2(CODE[17]), STR_1(CODE[14]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_LCDWriteString
;!    _ds1307_set_date_time->_WriteI2C
;!    _ds1307_set_date_time->_bin2bcd
;!    _ds1307_init->_WriteI2C
;!    _ds1307_init->_bcd2bin
;!    _ds1307_init->_bin2bcd
;!    _WriteI2C->_IdleI2C
;!    _LCDWriteString->_LCDByte
;!    _LCDInit->_LCDByte
;!    _LCDByte->_LCDBusyLoop
;!
;!Critical Paths under _One_Sec in COMRAM
;!
;!    _One_Sec->_LCDWriteInt
;!    i2_LCDWriteString->i2_LCDByte
;!    _ds1307_get_time->i2_WriteI2C
;!    _ds1307_get_time->i2_bcd2bin
;!    i2_WriteI2C->i2_IdleI2C
;!    _LCDWriteInt->i2_LCDByte
;!    _LCDGotoXY->i2_LCDByte
;!    i2_LCDByte->i2_LCDBusyLoop
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _One_Sec in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _One_Sec in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _One_Sec in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _One_Sec in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _One_Sec in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _One_Sec in BANK5
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
;! (0) _main                                                 2     2      0    2687
;!                                             50 COMRAM     1     1      0
;!                            _LCDByte
;!                            _LCDInit
;!                     _LCDWriteString
;!                            _OpenI2C
;!                        _ds1307_init
;!               _ds1307_set_date_time
;! ---------------------------------------------------------------------------------
;! (1) _ds1307_set_date_time                                 0     0      0      75
;!                            _IdleI2C
;!                           _WriteI2C
;!                            _bin2bcd
;! ---------------------------------------------------------------------------------
;! (1) _ds1307_init                                          1     1      0     180
;!                                             40 COMRAM     1     1      0
;!                            _IdleI2C
;!                            _ReadI2C
;!                           _WriteI2C
;!                            _bcd2bin
;!                            _bin2bcd
;! ---------------------------------------------------------------------------------
;! (2) _bin2bcd                                              3     3      0      60
;!                                             37 COMRAM     3     3      0
;! ---------------------------------------------------------------------------------
;! (2) _bcd2bin                                              3     3      0      60
;!                                             37 COMRAM     3     3      0
;! ---------------------------------------------------------------------------------
;! (2) _WriteI2C                                             2     2      0      15
;!                                             38 COMRAM     2     2      0
;!                            _IdleI2C
;! ---------------------------------------------------------------------------------
;! (3) _IdleI2C                                              1     1      0       0
;!                                             37 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _ReadI2C                                              1     1      0       0
;!                                             37 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _OpenI2C                                              2     1      1      73
;!                                             37 COMRAM     2     1      1
;! ---------------------------------------------------------------------------------
;! (1) _LCDWriteString                                       4     2      2     898
;!                                             46 COMRAM     4     2      2
;!                            _LCDByte
;! ---------------------------------------------------------------------------------
;! (1) _LCDInit                                              3     3      0     798
;!                                             46 COMRAM     3     3      0
;!                        _LCDBusyLoop
;!                            _LCDByte
;! ---------------------------------------------------------------------------------
;! (2) _LCDByte                                              6     5      1     663
;!                                             40 COMRAM     6     5      1
;!                        _LCDBusyLoop
;! ---------------------------------------------------------------------------------
;! (3) _LCDBusyLoop                                          3     3      0      75
;!                                             37 COMRAM     3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _One_Sec                                             14    14      0    3883
;!                                             23 COMRAM    14    14      0
;!                          _LCDGotoXY
;!                        _LCDWriteInt
;!                    _ds1307_get_time
;!                          i2_LCDByte
;!                   i2_LCDWriteString
;! ---------------------------------------------------------------------------------
;! (5) i2_LCDWriteString                                     4     2      2     740
;!                                              9 COMRAM     4     2      2
;!                          i2_LCDByte
;! ---------------------------------------------------------------------------------
;! (5) _ds1307_get_time                                      0     0      0     113
;!                          i2_IdleI2C
;!                          i2_ReadI2C
;!                         i2_WriteI2C
;!                          i2_bcd2bin
;! ---------------------------------------------------------------------------------
;! (6) i2_bcd2bin                                            3     3      0      91
;!                                              0 COMRAM     3     3      0
;! ---------------------------------------------------------------------------------
;! (6) i2_WriteI2C                                           2     2      0      22
;!                                              1 COMRAM     2     2      0
;!                          i2_IdleI2C
;! ---------------------------------------------------------------------------------
;! (7) i2_IdleI2C                                            1     1      0       0
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (6) i2_ReadI2C                                            1     1      0       0
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (5) _LCDWriteInt                                         14    11      3    1729
;!                                              9 COMRAM    14    11      3
;!                            ___awdiv
;!                            ___awmod
;!                          i2_LCDByte
;! ---------------------------------------------------------------------------------
;! (6) ___awmod                                              6     2      4     281
;!                                              0 COMRAM     6     2      4
;! ---------------------------------------------------------------------------------
;! (6) ___awdiv                                              8     4      4     281
;!                                              0 COMRAM     8     4      4
;! ---------------------------------------------------------------------------------
;! (5) _LCDGotoXY                                            2     1      1     818
;!                                              9 COMRAM     2     1      1
;!                          i2_LCDByte
;! ---------------------------------------------------------------------------------
;! (6) i2_LCDByte                                            6     5      1     483
;!                                              3 COMRAM     6     5      1
;!                      i2_LCDBusyLoop
;! ---------------------------------------------------------------------------------
;! (7) i2_LCDBusyLoop                                        3     3      0     117
;!                                              0 COMRAM     3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 7
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _LCDByte
;!     _LCDBusyLoop
;!   _LCDInit
;!     _LCDBusyLoop
;!     _LCDByte
;!       _LCDBusyLoop
;!   _LCDWriteString
;!     _LCDByte
;!       _LCDBusyLoop
;!   _OpenI2C
;!   _ds1307_init
;!     _IdleI2C
;!     _ReadI2C
;!     _WriteI2C
;!       _IdleI2C
;!     _bcd2bin
;!     _bin2bcd
;!   _ds1307_set_date_time
;!     _IdleI2C
;!     _WriteI2C
;!       _IdleI2C
;!     _bin2bcd
;!
;! _One_Sec (ROOT)
;!   _LCDGotoXY
;!     i2_LCDByte
;!       i2_LCDBusyLoop
;!   _LCDWriteInt
;!     ___awdiv
;!     ___awmod
;!     i2_LCDByte
;!       i2_LCDBusyLoop
;!   _ds1307_get_time
;!     i2_IdleI2C
;!     i2_ReadI2C
;!     i2_WriteI2C
;!       i2_IdleI2C
;!     i2_bcd2bin
;!   i2_LCDByte
;!     i2_LCDBusyLoop
;!   i2_LCDWriteString
;!     i2_LCDByte
;!       i2_LCDBusyLoop
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
;!COMRAM              7F     33      4F       1       62.2%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      4F      15        0.0%
;!DATA                 0      0      4F       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 9 in file "E:\Study Material\XC8 PROJECTS\RTC Library\test.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           1   50[COMRAM] unsigned char 
;;  data            1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
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
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_LCDByte
;;		_LCDInit
;;		_LCDWriteString
;;		_OpenI2C
;;		_ds1307_init
;;		_ds1307_set_date_time
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\RTC Library\test.C"
	line	9
global __ptext0
__ptext0:
psect	text0
	file	"E:\Study Material\XC8 PROJECTS\RTC Library\test.C"
	line	9
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	11
	
l1543:
;test.C: 11: unsigned char data, count = 0;
	movlw	low(0)
	movwf	((c:main@count)),c
	line	13
;test.C: 13: TRISB = 0x01;
	movlw	low(01h)
	movwf	((c:3987)),c	;volatile
	line	14
;test.C: 14: PORTB = 0;
	movlw	low(0)
	movwf	((c:3969)),c	;volatile
	line	17
	
l1545:
;test.C: 17: LCDInit(0B00000000);
	movlw	(0)&0ffh
	
	call	_LCDInit
	line	20
	
l1547:
;test.C: 20: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	23
	
l1549:
;test.C: 23: LCDWriteString("Hello World !");
		movlw	high(STR_1)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_1)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	26
	
l1551:
;test.C: 26: OpenI2C(0b00001000,0b10000000);
	movlw	low(080h)
	movwf	((c:OpenI2C@slew)),c
	movlw	(08h)&0ffh
	
	call	_OpenI2C
	line	27
	
l1553:
;test.C: 27: SSPADD = 0x19;
	movlw	low(019h)
	movwf	((c:4040)),c	;volatile
	line	29
	
l1555:
;test.C: 29: ds1307_init();
	call	_ds1307_init	;wreg free
	line	34
	
l1557:
;test.C: 34: day = 1;
	movlw	low(01h)
	movwf	((c:_day)),c
	line	35
	
l1559:
;test.C: 35: month = 1;
	movlw	low(01h)
	movwf	((c:_month)),c
	line	36
	
l1561:
;test.C: 36: year = 15;
	movlw	low(0Fh)
	movwf	((c:_year)),c
	line	37
	
l1563:
;test.C: 37: dow = 2;
	movlw	low(02h)
	movwf	((c:_dow)),c
	line	38
	
l1565:
;test.C: 38: hr = 12;
	movlw	low(0Ch)
	movwf	((c:_hr)),c
	line	39
	
l1567:
;test.C: 39: min = 0;
	movlw	low(0)
	movwf	((c:_min)),c
	line	40
	
l1569:
;test.C: 40: sec = 0;
	movlw	low(0)
	movwf	((c:_sec)),c
	line	42
	
l1571:
;test.C: 42: ds1307_set_date_time();
	call	_ds1307_set_date_time	;wreg free
	line	44
	
l1573:
;test.C: 44: INTEDG0 = 1;
	bsf	c:(32654/8),(32654)&7	;volatile
	line	45
	
l1575:
;test.C: 45: INT0IE = 1;
	bsf	c:(32660/8),(32660)&7	;volatile
	line	46
	
l1577:
;test.C: 46: (INTCONbits.GIE = 1);
	bsf	((c:4082)),c,7	;volatile
	line	48
;test.C: 48: while(1);
	
l235:
	
l236:
	goto	l235
	
l237:
	line	49
	
l238:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_ds1307_set_date_time

;; *************** function _ds1307_set_date_time *****************
;; Defined at:
;;		line 45 in file "E:\Study Material\XC8 PROJECTS\RTC Library\myrtc.C"
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
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_IdleI2C
;;		_WriteI2C
;;		_bin2bcd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\RTC Library\myrtc.C"
	line	45
global __ptext1
__ptext1:
psect	text1
	file	"E:\Study Material\XC8 PROJECTS\RTC Library\myrtc.C"
	line	45
	global	__size_of_ds1307_set_date_time
	__size_of_ds1307_set_date_time	equ	__end_of_ds1307_set_date_time-_ds1307_set_date_time
	
_ds1307_set_date_time:
;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	47
	
l1419:
;myrtc.C: 47: sec &= 0x7F;
	bcf	(0+(7/8)+(c:_sec)),c,(7)&7
	line	48
	
l1421:
;myrtc.C: 48: hr &= 0x3F;
	movlw	(03Fh)&0ffh
	andwf	((c:_hr)),c
	line	50
	
l1423:
;myrtc.C: 50: sec = bin2bcd(sec);
	movf	((c:_sec)),c,w
	
	call	_bin2bcd
	movwf	((c:_sec)),c
	line	51
	
l1425:
;myrtc.C: 51: min = bin2bcd(min);
	movf	((c:_min)),c,w
	
	call	_bin2bcd
	movwf	((c:_min)),c
	line	52
	
l1427:
;myrtc.C: 52: hr = bin2bcd(hr);
	movf	((c:_hr)),c,w
	
	call	_bin2bcd
	movwf	((c:_hr)),c
	line	53
	
l1429:
;myrtc.C: 53: dow = bin2bcd(dow);
	movf	((c:_dow)),c,w
	
	call	_bin2bcd
	movwf	((c:_dow)),c
	line	54
	
l1431:
;myrtc.C: 54: day = bin2bcd(day);
	movf	((c:_day)),c,w
	
	call	_bin2bcd
	movwf	((c:_day)),c
	line	55
	
l1433:
;myrtc.C: 55: month = bin2bcd(month);
	movf	((c:_month)),c,w
	
	call	_bin2bcd
	movwf	((c:_month)),c
	line	56
	
l1435:
;myrtc.C: 56: year = bin2bcd(year);
	movf	((c:_year)),c,w
	
	call	_bin2bcd
	movwf	((c:_year)),c
	line	58
	
l1437:
;myrtc.C: 58: IdleI2C();
	call	_IdleI2C	;wreg free
	line	59
	
l1439:
;myrtc.C: 59: SSPCON2bits.SEN=1;while(SSPCON2bits.SEN);
	bsf	((c:4037)),c,0	;volatile
	goto	l124
	
l125:
	
l124:
	btfsc	((c:4037)),c,0	;volatile
	goto	u651
	goto	u650
u651:
	goto	l124
u650:
	goto	l1441
	
l126:
	line	60
	
l1441:
;myrtc.C: 60: WriteI2C(0xD0);
	movlw	(0D0h)&0ffh
	
	call	_WriteI2C
	line	61
;myrtc.C: 61: IdleI2C();
	call	_IdleI2C	;wreg free
	line	62
;myrtc.C: 62: WriteI2C(0x00);
	movlw	(0)&0ffh
	
	call	_WriteI2C
	line	63
;myrtc.C: 63: IdleI2C();
	call	_IdleI2C	;wreg free
	line	64
;myrtc.C: 64: WriteI2C(sec);
	movf	((c:_sec)),c,w
	
	call	_WriteI2C
	line	65
;myrtc.C: 65: IdleI2C();
	call	_IdleI2C	;wreg free
	line	66
;myrtc.C: 66: WriteI2C(min);
	movf	((c:_min)),c,w
	
	call	_WriteI2C
	line	67
;myrtc.C: 67: IdleI2C();
	call	_IdleI2C	;wreg free
	line	68
;myrtc.C: 68: WriteI2C(hr);
	movf	((c:_hr)),c,w
	
	call	_WriteI2C
	line	69
;myrtc.C: 69: IdleI2C();
	call	_IdleI2C	;wreg free
	line	70
;myrtc.C: 70: WriteI2C(dow);
	movf	((c:_dow)),c,w
	
	call	_WriteI2C
	line	71
;myrtc.C: 71: IdleI2C();
	call	_IdleI2C	;wreg free
	line	72
;myrtc.C: 72: WriteI2C(day);
	movf	((c:_day)),c,w
	
	call	_WriteI2C
	line	73
;myrtc.C: 73: IdleI2C();
	call	_IdleI2C	;wreg free
	line	74
;myrtc.C: 74: WriteI2C(month);
	movf	((c:_month)),c,w
	
	call	_WriteI2C
	line	75
;myrtc.C: 75: IdleI2C();
	call	_IdleI2C	;wreg free
	line	76
;myrtc.C: 76: WriteI2C(year);
	movf	((c:_year)),c,w
	
	call	_WriteI2C
	line	77
;myrtc.C: 77: IdleI2C();
	call	_IdleI2C	;wreg free
	line	78
;myrtc.C: 78: WriteI2C(0x10);
	movlw	(010h)&0ffh
	
	call	_WriteI2C
	line	79
;myrtc.C: 79: IdleI2C();
	call	_IdleI2C	;wreg free
	line	80
	
l1443:
;myrtc.C: 80: SSPCON2bits.PEN=1;while(SSPCON2bits.PEN);
	bsf	((c:4037)),c,2	;volatile
	goto	l127
	
l128:
	
l127:
	btfsc	((c:4037)),c,2	;volatile
	goto	u661
	goto	u660
u661:
	goto	l127
u660:
	goto	l130
	
l129:
	line	81
	
l130:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_ds1307_set_date_time
	__end_of_ds1307_set_date_time:
	signat	_ds1307_set_date_time,88
	global	_ds1307_init

;; *************** function _ds1307_init *****************
;; Defined at:
;;		line 4 in file "E:\Study Material\XC8 PROJECTS\RTC Library\myrtc.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  seconds         1   40[COMRAM] unsigned char 
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
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_IdleI2C
;;		_ReadI2C
;;		_WriteI2C
;;		_bcd2bin
;;		_bin2bcd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
	line	4
global __ptext2
__ptext2:
psect	text2
	file	"E:\Study Material\XC8 PROJECTS\RTC Library\myrtc.C"
	line	4
	global	__size_of_ds1307_init
	__size_of_ds1307_init	equ	__end_of_ds1307_init-_ds1307_init
	
_ds1307_init:
;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	6
	
l1383:
;myrtc.C: 6: unsigned char seconds = 0;
	movlw	low(0)
	movwf	((c:ds1307_init@seconds)),c
	line	8
	
l1385:
;myrtc.C: 8: IdleI2C();
	call	_IdleI2C	;wreg free
	line	9
	
l1387:
;myrtc.C: 9: SSPCON2bits.SEN=1;while(SSPCON2bits.SEN);
	bsf	((c:4037)),c,0	;volatile
	goto	l100
	
l101:
	
l100:
	btfsc	((c:4037)),c,0	;volatile
	goto	u581
	goto	u580
u581:
	goto	l100
u580:
	goto	l1389
	
l102:
	line	10
	
l1389:
;myrtc.C: 10: WriteI2C(0xD0);
	movlw	(0D0h)&0ffh
	
	call	_WriteI2C
	line	11
;myrtc.C: 11: IdleI2C();
	call	_IdleI2C	;wreg free
	line	12
;myrtc.C: 12: WriteI2C(0x00);
	movlw	(0)&0ffh
	
	call	_WriteI2C
	line	13
;myrtc.C: 13: IdleI2C();
	call	_IdleI2C	;wreg free
	line	14
	
l1391:
;myrtc.C: 14: SSPCON2bits.RSEN=1;while(SSPCON2bits.RSEN);
	bsf	((c:4037)),c,1	;volatile
	goto	l103
	
l104:
	
l103:
	btfsc	((c:4037)),c,1	;volatile
	goto	u591
	goto	u590
u591:
	goto	l103
u590:
	goto	l1393
	
l105:
	line	15
	
l1393:
;myrtc.C: 15: WriteI2C(0xD1);
	movlw	(0D1h)&0ffh
	
	call	_WriteI2C
	line	16
;myrtc.C: 16: seconds = ReadI2C();
	call	_ReadI2C	;wreg free
	movwf	((c:ds1307_init@seconds)),c
	line	17
	
l1395:
;myrtc.C: 17: SSPCON2bits.ACKDT=1;SSPCON2bits.ACKEN=1;while(SSPCON2bits.ACKEN);
	bsf	((c:4037)),c,5	;volatile
	
l1397:
	bsf	((c:4037)),c,4	;volatile
	goto	l106
	
l107:
	
l106:
	btfsc	((c:4037)),c,4	;volatile
	goto	u601
	goto	u600
u601:
	goto	l106
u600:
	
l108:
	line	18
;myrtc.C: 18: SSPCON2bits.PEN=1;while(SSPCON2bits.PEN);
	bsf	((c:4037)),c,2	;volatile
	goto	l109
	
l110:
	
l109:
	btfsc	((c:4037)),c,2	;volatile
	goto	u611
	goto	u610
u611:
	goto	l109
u610:
	goto	l1399
	
l111:
	line	20
	
l1399:
;myrtc.C: 20: seconds = bcd2bin(seconds);
	movf	((c:ds1307_init@seconds)),c,w
	
	call	_bcd2bin
	movwf	((c:ds1307_init@seconds)),c
	line	21
	
l1401:
;myrtc.C: 21: seconds &= 0x7F;
	bcf	(0+(7/8)+(c:ds1307_init@seconds)),c,(7)&7
	line	22
	
l1403:
;myrtc.C: 22: seconds = bin2bcd(seconds);
	movf	((c:ds1307_init@seconds)),c,w
	
	call	_bin2bcd
	movwf	((c:ds1307_init@seconds)),c
	line	24
	
l1405:
;myrtc.C: 24: _delay(10);
	movlw	2
u1147:
	nop
decfsz	wreg,f
	goto	u1147

	line	26
	
l1407:
;myrtc.C: 26: IdleI2C();
	call	_IdleI2C	;wreg free
	line	27
	
l1409:
;myrtc.C: 27: SSPCON2bits.SEN=1;while(SSPCON2bits.SEN);
	bsf	((c:4037)),c,0	;volatile
	goto	l112
	
l113:
	
l112:
	btfsc	((c:4037)),c,0	;volatile
	goto	u621
	goto	u620
u621:
	goto	l112
u620:
	goto	l1411
	
l114:
	line	28
	
l1411:
;myrtc.C: 28: WriteI2C(0xD0);
	movlw	(0D0h)&0ffh
	
	call	_WriteI2C
	line	29
;myrtc.C: 29: IdleI2C();
	call	_IdleI2C	;wreg free
	line	30
;myrtc.C: 30: WriteI2C(0x00);
	movlw	(0)&0ffh
	
	call	_WriteI2C
	line	31
;myrtc.C: 31: IdleI2C();
	call	_IdleI2C	;wreg free
	line	32
;myrtc.C: 32: WriteI2C(seconds);
	movf	((c:ds1307_init@seconds)),c,w
	
	call	_WriteI2C
	line	33
;myrtc.C: 33: IdleI2C();
	call	_IdleI2C	;wreg free
	line	34
	
l1413:
;myrtc.C: 34: SSPCON2bits.RSEN=1;while(SSPCON2bits.RSEN);
	bsf	((c:4037)),c,1	;volatile
	goto	l115
	
l116:
	
l115:
	btfsc	((c:4037)),c,1	;volatile
	goto	u631
	goto	u630
u631:
	goto	l115
u630:
	goto	l1415
	
l117:
	line	35
	
l1415:
;myrtc.C: 35: WriteI2C(0xD0);
	movlw	(0D0h)&0ffh
	
	call	_WriteI2C
	line	36
;myrtc.C: 36: IdleI2C();
	call	_IdleI2C	;wreg free
	line	37
;myrtc.C: 37: WriteI2C(0x07);
	movlw	(07h)&0ffh
	
	call	_WriteI2C
	line	38
;myrtc.C: 38: IdleI2C();
	call	_IdleI2C	;wreg free
	line	39
;myrtc.C: 39: WriteI2C(0x10);
	movlw	(010h)&0ffh
	
	call	_WriteI2C
	line	40
;myrtc.C: 40: IdleI2C();
	call	_IdleI2C	;wreg free
	line	41
	
l1417:
;myrtc.C: 41: SSPCON2bits.PEN=1;while(SSPCON2bits.PEN);
	bsf	((c:4037)),c,2	;volatile
	goto	l118
	
l119:
	
l118:
	btfsc	((c:4037)),c,2	;volatile
	goto	u641
	goto	u640
u641:
	goto	l118
u640:
	goto	l121
	
l120:
	line	43
	
l121:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_ds1307_init
	__end_of_ds1307_init:
	signat	_ds1307_init,88
	global	_bin2bcd

;; *************** function _bin2bcd *****************
;; Defined at:
;;		line 135 in file "E:\Study Material\XC8 PROJECTS\RTC Library\myrtc.C"
;; Parameters:    Size  Location     Type
;;  binary_value    1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  binary_value    1   37[COMRAM] unsigned char 
;;  temp            1   39[COMRAM] unsigned char 
;;  retval          1   38[COMRAM] unsigned char 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ds1307_init
;;		_ds1307_set_date_time
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
	line	135
global __ptext3
__ptext3:
psect	text3
	file	"E:\Study Material\XC8 PROJECTS\RTC Library\myrtc.C"
	line	135
	global	__size_of_bin2bcd
	__size_of_bin2bcd	equ	__end_of_bin2bcd-_bin2bcd
	
_bin2bcd:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
;bin2bcd@binary_value stored from wreg
	movwf	((c:bin2bcd@binary_value)),c
	line	140
	
l1079:
;myrtc.C: 137: unsigned char temp;
;myrtc.C: 138: unsigned char retval;
;myrtc.C: 140: temp = binary_value;
	movff	(c:bin2bcd@binary_value),(c:bin2bcd@temp)
	line	141
	
l1081:
;myrtc.C: 141: retval = 0;
	movlw	low(0)
	movwf	((c:bin2bcd@retval)),c
	goto	l1083
	line	143
;myrtc.C: 143: while(1)
	
l178:
	line	147
	
l1083:
;myrtc.C: 144: {
;myrtc.C: 147: if(temp >= 10)
	movlw	(0Ah-1)
	cpfsgt	((c:bin2bcd@temp)),c
	goto	u191
	goto	u190
u191:
	goto	l1087
u190:
	line	149
	
l1085:
;myrtc.C: 148: {
;myrtc.C: 149: temp -= 10;
	movlw	(0Ah)&0ffh
	subwf	((c:bin2bcd@temp)),c
	line	150
;myrtc.C: 150: retval += 0x10;
	movlw	(010h)&0ffh
	addwf	((c:bin2bcd@retval)),c
	line	151
;myrtc.C: 151: }
	goto	l1083
	line	152
	
l179:
	line	154
	
l1087:
;myrtc.C: 152: else
;myrtc.C: 153: {
;myrtc.C: 154: retval += temp;
	movf	((c:bin2bcd@temp)),c,w
	addwf	((c:bin2bcd@retval)),c
	line	155
;myrtc.C: 155: break;
	goto	l1089
	line	156
	
l180:
	goto	l1083
	line	157
	
l182:
	line	143
	goto	l1083
	
l181:
	line	159
	
l1089:
;myrtc.C: 156: }
;myrtc.C: 157: }
;myrtc.C: 159: return(retval);
	movf	((c:bin2bcd@retval)),c,w
	goto	l183
	
l1091:
	line	160
	
l183:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_bin2bcd
	__end_of_bin2bcd:
	signat	_bin2bcd,4217
	global	_bcd2bin

;; *************** function _bcd2bin *****************
;; Defined at:
;;		line 164 in file "E:\Study Material\XC8 PROJECTS\RTC Library\myrtc.C"
;; Parameters:    Size  Location     Type
;;  bcd_value       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  bcd_value       1   38[COMRAM] unsigned char 
;;  temp            1   39[COMRAM] unsigned char 
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
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ds1307_init
;;		_ds1307_get_date
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
	line	164
global __ptext4
__ptext4:
psect	text4
	file	"E:\Study Material\XC8 PROJECTS\RTC Library\myrtc.C"
	line	164
	global	__size_of_bcd2bin
	__size_of_bcd2bin	equ	__end_of_bcd2bin-_bcd2bin
	
_bcd2bin:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
;bcd2bin@bcd_value stored from wreg
	movwf	((c:bcd2bin@bcd_value)),c
	line	168
	
l1069:
;myrtc.C: 166: unsigned char temp;
;myrtc.C: 168: temp = bcd_value;
	movff	(c:bcd2bin@bcd_value),(c:bcd2bin@temp)
	line	170
	
l1071:
;myrtc.C: 170: temp >>= 1;
	bcf status,0
	rrcf	((c:bcd2bin@temp)),c

	line	172
	
l1073:
;myrtc.C: 172: temp &= 0x78;
	movlw	(078h)&0ffh
	andwf	((c:bcd2bin@temp)),c
	line	176
	
l1075:
;myrtc.C: 176: return(temp + (temp >> 2) + (bcd_value & 0x0f));
	movff	(c:bcd2bin@bcd_value),??_bcd2bin+0+0
	movlw	0Fh
	andwf	(??_bcd2bin+0+0),c
	rrncf	((c:bcd2bin@temp)),c,w
	rrncf	wreg
	andlw	(0ffh shr 2) & 0ffh
	addwf	(??_bcd2bin+0+0),c,w
	addwf	((c:bcd2bin@temp)),c,w
	goto	l186
	
l1077:
	line	177
	
l186:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_bcd2bin
	__end_of_bcd2bin:
	signat	_bcd2bin,4217
	global	_WriteI2C

;; *************** function _WriteI2C *****************
;; Defined at:
;;		line 12 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\i2c\i2c_writ.c"
;; Parameters:    Size  Location     Type
;;  data_out        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data_out        1   39[COMRAM] unsigned char 
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_IdleI2C
;; This function is called by:
;;		_ds1307_init
;;		_ds1307_set_date_time
;;		_ds1307_get_date
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\i2c\i2c_writ.c"
	line	12
global __ptext5
__ptext5:
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\i2c\i2c_writ.c"
	line	12
	global	__size_of_WriteI2C
	__size_of_WriteI2C	equ	__end_of_WriteI2C-_WriteI2C
	
_WriteI2C:
;incstack = 0
	opt	stack 24
	dw	0FFFFh
;WriteI2C@data_out stored from wreg
	movwf	((c:WriteI2C@data_out)),c
	line	14
	
l1029:
	movff	(c:WriteI2C@data_out),(c:4041)	;volatile
	line	15
	
l1031:
	btfss	((c:4038)),c,7	;volatile
	goto	u81
	goto	u80
u81:
	goto	l1037
u80:
	goto	l297
	line	16
	
l1033:
;	Return value of _WriteI2C is never used
	goto	l297
	
l1035:
	goto	l297
	line	17
	
l296:
	line	19
	
l1037:
	movff	(c:4038),??_WriteI2C+0+0	;volatile
	movlw	0Fh
	andwf	(??_WriteI2C+0+0),c
	movf	(??_WriteI2C+0+0),c,w
	xorlw	08h

	btfsc	status,2
	goto	u91
	goto	u90
u91:
	goto	l1049
u90:
	
l1039:
	movff	(c:4038),??_WriteI2C+0+0	;volatile
	movlw	0Fh
	andwf	(??_WriteI2C+0+0),c
	movf	(??_WriteI2C+0+0),c,w
	xorlw	0Bh

	btfsc	status,2
	goto	u101
	goto	u100
u101:
	goto	l1049
u100:
	line	21
	
l1041:
	bsf	((c:4038)),c,4	;volatile
	line	22
	goto	l300
	
l301:
	
l300:
	btfss	((c:3998)),c,3	;volatile
	goto	u111
	goto	u110
u111:
	goto	l300
u110:
	
l302:
	line	24
	btfsc	((c:4039)),c,2	;volatile
	goto	u121
	goto	u120
u121:
	goto	l297
u120:
	
l1043:
	movf	((c:4039)),c,w	;volatile
	goto	l297
	line	26
	
l1045:
;	Return value of _WriteI2C is never used
	goto	l297
	line	27
	
l1047:
	goto	l297
	line	28
	
l303:
	line	30
;	Return value of _WriteI2C is never used
	goto	l297
	line	31
	
l304:
	line	32
	goto	l297
	line	33
	
l299:
	
l1049:
	movff	(c:4038),??_WriteI2C+0+0	;volatile
	movlw	0Fh
	andwf	(??_WriteI2C+0+0),c
	movf	(??_WriteI2C+0+0),c,w
	xorlw	08h

	btfsc	status,2
	goto	u131
	goto	u130
u131:
	goto	l309
u130:
	
l1051:
	movff	(c:4038),??_WriteI2C+0+0	;volatile
	movlw	0Fh
	andwf	(??_WriteI2C+0+0),c
	movf	(??_WriteI2C+0+0),c,w
	xorlw	0Bh

	btfss	status,2
	goto	u141
	goto	u140
u141:
	goto	l297
u140:
	goto	l309
	
l308:
	line	35
	goto	l309
	
l310:
	
l309:
	btfsc	((c:4039)),c,0	;volatile
	goto	u151
	goto	u150
u151:
	goto	l309
u150:
	goto	l1053
	
l311:
	line	36
	
l1053:
	call	_IdleI2C	;wreg free
	line	37
	
l1055:
	movf	((c:4037)),c,w	;volatile
	goto	l297
	line	38
	
l1057:
;	Return value of _WriteI2C is never used
	goto	l297
	
l1059:
	goto	l297
	line	39
	
l312:
;	Return value of _WriteI2C is never used
	goto	l297
	
l313:
	goto	l297
	line	40
	
l306:
	goto	l297
	line	42
	
l305:
	goto	l297
	
l298:
	line	43
	
l297:
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ds1307_init
;;		_ds1307_set_date_time
;;		_WriteI2C
;;		_ds1307_get_date
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\i2c\i2c_idle.c"
	line	24
global __ptext6
__ptext6:
psect	text6
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\i2c\i2c_idle.c"
	line	24
	global	__size_of_IdleI2C
	__size_of_IdleI2C	equ	__end_of_IdleI2C-_IdleI2C
	
_IdleI2C:
;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	26
	
l943:
	goto	l945
	
l249:
	line	27
	goto	l945
	
l248:
	line	26
	
l945:
	movff	(c:4037),??_IdleI2C+0+0	;volatile
	movlw	01Fh
	andwf	(??_IdleI2C+0+0),c
	btfss	status,2
	goto	u21
	goto	u20
u21:
	goto	l945
u20:
	
l947:
	btfsc	((c:4039)),c,2	;volatile
	goto	u31
	goto	u30
u31:
	goto	l945
u30:
	goto	l251
	
l250:
	line	28
	
l251:
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ds1307_init
;;		_ds1307_get_date
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\i2c\i2c_read.c"
	line	11
global __ptext7
__ptext7:
psect	text7
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\i2c\i2c_read.c"
	line	11
	global	__size_of_ReadI2C
	__size_of_ReadI2C	equ	__end_of_ReadI2C-_ReadI2C
	
_ReadI2C:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
	line	13
	
l1061:
	movff	(c:4038),??_ReadI2C+0+0	;volatile
	movlw	0Fh
	andwf	(??_ReadI2C+0+0),c
	movf	(??_ReadI2C+0+0),c,w
	xorlw	08h

	btfsc	status,2
	goto	u161
	goto	u160
u161:
	goto	l275
u160:
	
l1063:
	movff	(c:4038),??_ReadI2C+0+0	;volatile
	movlw	0Fh
	andwf	(??_ReadI2C+0+0),c
	movf	(??_ReadI2C+0+0),c,w
	xorlw	0Bh

	btfss	status,2
	goto	u171
	goto	u170
u171:
	goto	l276
u170:
	
l275:
	line	14
	bsf	((c:4037)),c,3	;volatile
	goto	l276
	
l273:
	line	15
	goto	l276
	
l277:
	
l276:
	btfss	((c:4039)),c,0	;volatile
	goto	u181
	goto	u180
u181:
	goto	l276
u180:
	goto	l1065
	
l278:
	line	16
	
l1065:
	movf	((c:4041)),c,w	;volatile
	goto	l279
	
l1067:
	line	17
	
l279:
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
;;  slew            1   37[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  sync_mode       1   38[COMRAM] unsigned char 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\i2c\i2c_open.c"
	line	14
global __ptext8
__ptext8:
psect	text8
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\i2c\i2c_open.c"
	line	14
	global	__size_of_OpenI2C
	__size_of_OpenI2C	equ	__end_of_OpenI2C-_OpenI2C
	
_OpenI2C:
;incstack = 0
	opt	stack 26
	dw	0FFFFh
;OpenI2C@sync_mode stored from wreg
	movwf	((c:OpenI2C@sync_mode)),c
	line	16
	
l1473:
	movlw	(03Fh)&0ffh
	andwf	((c:4039)),c	;volatile
	line	17
	
l1475:
	movlw	low(0)
	movwf	((c:4038)),c	;volatile
	line	18
	
l1477:
	movlw	low(0)
	movwf	((c:4037)),c	;volatile
	line	19
	movf	((c:OpenI2C@sync_mode)),c,w
	iorwf	((c:4038)),c	;volatile
	line	20
	movf	((c:OpenI2C@slew)),c,w
	iorwf	((c:4039)),c	;volatile
	line	22
	
l1479:
	bsf	((c:3988)),c,3	;volatile
	line	23
	
l1481:
	bsf	((c:3988)),c,4	;volatile
	line	24
	
l1483:
	bsf	(0+(5/8)+(c:4038)),c,(5)&7	;volatile
	line	26
	
l262:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_OpenI2C
	__end_of_OpenI2C:
	signat	_OpenI2C,8312
	global	_LCDWriteString

;; *************** function _LCDWriteString *****************
;; Defined at:
;;		line 252 in file "E:\Study Material\XC8 PROJECTS\RTC Library\lcd_hd44780_pic16.c"
;; Parameters:    Size  Location     Type
;;  msg             2   46[COMRAM] PTR const unsigned char 
;;		 -> STR_4(2), STR_3(2), STR_2(17), STR_1(14), 
;; Auto vars:     Size  Location     Type
;;  cc              1   49[COMRAM] char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
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
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_LCDByte
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\RTC Library\lcd_hd44780_pic16.c"
	line	252
global __ptext9
__ptext9:
psect	text9
	file	"E:\Study Material\XC8 PROJECTS\RTC Library\lcd_hd44780_pic16.c"
	line	252
	global	__size_of_LCDWriteString
	__size_of_LCDWriteString	equ	__end_of_LCDWriteString-_LCDWriteString
	
_LCDWriteString:
;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	282
	
l1301:
;lcd_hd44780_pic16.c: 282: while(*msg!='\0')
	goto	l1323
	
l37:
	line	285
	
l1303:
;lcd_hd44780_pic16.c: 283: {
;lcd_hd44780_pic16.c: 285: if(*msg=='%')
	movff	(c:LCDWriteString@msg),tblptrl
	movff	(c:LCDWriteString@msg+1),tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
		dw	0FFFFh; errata NOP

	movf	tablat,w

	xorlw	025h
	btfss	status,2
	goto	u461
	goto	u460
u461:
	goto	l1319
u460:
	line	287
	
l1305:
;lcd_hd44780_pic16.c: 286: {
;lcd_hd44780_pic16.c: 287: msg++;
	infsnz	((c:LCDWriteString@msg)),c
	incf	((c:LCDWriteString@msg+1)),c
	line	288
	
l1307:
;lcd_hd44780_pic16.c: 288: int8_t cc=*msg-'0';
	movff	(c:LCDWriteString@msg),tblptrl
	movff	(c:LCDWriteString@msg+1),tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
		dw	0FFFFh; errata NOP

	movf	tablat,w

	addlw	low(-48)
	movwf	((c:LCDWriteString@cc)),c
	line	290
	
l1309:
;lcd_hd44780_pic16.c: 290: if(cc>=0 && cc<=7)
	btfsc	((c:LCDWriteString@cc)),c,7
	goto	u471
	goto	u470
u471:
	goto	l1315
u470:
	
l1311:
	movf	((c:LCDWriteString@cc)),c,w
	xorlw	80h
	movwf	(??_LCDWriteString+0+0)&0ffh,c
	movlw	(08h)&0ffh
	xorlw	80h
	subwf	(??_LCDWriteString+0+0),c,w
	btfsc	status,0
	goto	u481
	goto	u480
u481:
	goto	l1315
u480:
	line	292
	
l1313:
;lcd_hd44780_pic16.c: 291: {
;lcd_hd44780_pic16.c: 292: (LCDByte(cc,1));
	movlw	low(01h)
	movwf	((c:LCDByte@isdata)),c
	movf	((c:LCDWriteString@cc)),c,w
	
	call	_LCDByte
	line	293
;lcd_hd44780_pic16.c: 293: }
	goto	l1321
	line	294
	
l39:
	line	296
	
l1315:
;lcd_hd44780_pic16.c: 294: else
;lcd_hd44780_pic16.c: 295: {
;lcd_hd44780_pic16.c: 296: (LCDByte('%',1));
	movlw	low(01h)
	movwf	((c:LCDByte@isdata)),c
	movlw	(025h)&0ffh
	
	call	_LCDByte
	line	297
	
l1317:
;lcd_hd44780_pic16.c: 297: (LCDByte(*msg,1));
	movlw	low(01h)
	movwf	((c:LCDByte@isdata)),c
	movff	(c:LCDWriteString@msg),tblptrl
	movff	(c:LCDWriteString@msg+1),tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
		dw	0FFFFh; errata NOP

	movf	tablat,w

	
	call	_LCDByte
	goto	l1321
	line	298
	
l40:
	line	299
;lcd_hd44780_pic16.c: 298: }
;lcd_hd44780_pic16.c: 299: }
	goto	l1321
	line	300
	
l38:
	line	302
	
l1319:
;lcd_hd44780_pic16.c: 300: else
;lcd_hd44780_pic16.c: 301: {
;lcd_hd44780_pic16.c: 302: (LCDByte(*msg,1));
	movlw	low(01h)
	movwf	((c:LCDByte@isdata)),c
	movff	(c:LCDWriteString@msg),tblptrl
	movff	(c:LCDWriteString@msg+1),tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
		dw	0FFFFh; errata NOP

	movf	tablat,w

	
	call	_LCDByte
	goto	l1321
	line	303
	
l41:
	line	304
	
l1321:
;lcd_hd44780_pic16.c: 303: }
;lcd_hd44780_pic16.c: 304: msg++;
	infsnz	((c:LCDWriteString@msg)),c
	incf	((c:LCDWriteString@msg+1)),c
	goto	l1323
	line	305
	
l36:
	line	282
	
l1323:
	movff	(c:LCDWriteString@msg),tblptrl
	movff	(c:LCDWriteString@msg+1),tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
		dw	0FFFFh; errata NOP

	movf	tablat,w

	iorlw	0
	btfss	status,2
	goto	u491
	goto	u490
u491:
	goto	l1303
u490:
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
;;		line 194 in file "E:\Study Material\XC8 PROJECTS\RTC Library\lcd_hd44780_pic16.c"
;; Parameters:    Size  Location     Type
;;  style           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  style           1   47[COMRAM] unsigned char 
;;  __i             1   48[COMRAM] unsigned char 
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
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_LCDBusyLoop
;;		_LCDByte
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2
	line	194
global __ptext10
__ptext10:
psect	text10
	file	"E:\Study Material\XC8 PROJECTS\RTC Library\lcd_hd44780_pic16.c"
	line	194
	global	__size_of_LCDInit
	__size_of_LCDInit	equ	__end_of_LCDInit-_LCDInit
	
_LCDInit:
;incstack = 0
	opt	stack 24
	dw	0FFFFh
;LCDInit@style stored from wreg
	movwf	((c:LCDInit@style)),c
	line	210
	
l1251:
;lcd_hd44780_pic16.c: 210: _delay((unsigned long)((30)*(10000000/4000.0)));
	movlw	74
movwf	(??_LCDInit+0+0)&0ffh,c,f
	movlw	24
u1157:
	decfsz	wreg,f
	goto	u1157
	decfsz	(??_LCDInit+0+0)&0ffh,c,f
	goto	u1157
	nop2

	line	213
	
l1253:
;lcd_hd44780_pic16.c: 213: TRISB&=(~(0x0F<<4));
	movlw	(0Fh)&0ffh
	andwf	((c:3987)),c	;volatile
	line	215
	
l1255:
;lcd_hd44780_pic16.c: 215: TRISBbits.TRISB3=0;
	bcf	((c:3987)),c,3	;volatile
	line	216
	
l1257:
;lcd_hd44780_pic16.c: 216: TRISBbits.TRISB1=0;
	bcf	((c:3987)),c,1	;volatile
	line	217
	
l1259:
;lcd_hd44780_pic16.c: 217: TRISBbits.TRISB2=0;
	bcf	((c:3987)),c,2	;volatile
	line	219
	
l1261:
;lcd_hd44780_pic16.c: 219: PORTB&=(~(0x0F<<4));
	movlw	(0Fh)&0ffh
	andwf	((c:3969)),c	;volatile
	line	221
	
l1263:
;lcd_hd44780_pic16.c: 221: (RB3=0);
	bcf	c:(31755/8),(31755)&7	;volatile
	line	222
	
l1265:
;lcd_hd44780_pic16.c: 222: (RB2=0);
	bcf	c:(31754/8),(31754)&7	;volatile
	line	223
	
l1267:
;lcd_hd44780_pic16.c: 223: (RB1=0);
	bcf	c:(31753/8),(31753)&7	;volatile
	line	226
	
l1269:
;lcd_hd44780_pic16.c: 226: _delay((unsigned long)((0.5)*(10000000/4000000.0)));
	nop
	line	228
	
l1271:
;lcd_hd44780_pic16.c: 228: (RB3=1);
	bsf	c:(31755/8),(31755)&7	;volatile
	line	229
	
l1273:
;lcd_hd44780_pic16.c: 229: PORTB|=((0b00000010)<<4);
	bsf	(0+(5/8)+(c:3969)),c,(5)&7	;volatile
	line	230
	
l1275:
;lcd_hd44780_pic16.c: 230: _delay((unsigned long)((1)*(10000000/4000000.0)));
		nop2	;2 cycle nop

	line	231
	
l1277:
;lcd_hd44780_pic16.c: 231: (RB3=0);
	bcf	c:(31755/8),(31755)&7	;volatile
	line	232
	
l1279:
;lcd_hd44780_pic16.c: 232: _delay((unsigned long)((1)*(10000000/4000000.0)));
		nop2	;2 cycle nop

	line	235
	
l1281:
;lcd_hd44780_pic16.c: 235: LCDBusyLoop();
	call	_LCDBusyLoop	;wreg free
	line	240
	
l1283:
;lcd_hd44780_pic16.c: 240: (LCDByte(0b00101000,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(028h)&0ffh
	
	call	_LCDByte
	line	241
	
l1285:
;lcd_hd44780_pic16.c: 241: (LCDByte(0b00001100|style,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movf	((c:LCDInit@style)),c,w
	iorlw	low(0Ch)
	
	call	_LCDByte
	line	244
	
l1287:
;lcd_hd44780_pic16.c: 244: (LCDByte(0b01000000,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(040h)&0ffh
	
	call	_LCDByte
	line	247
	
l1289:
;lcd_hd44780_pic16.c: 246: uint8_t __i;
;lcd_hd44780_pic16.c: 247: for(__i=0;__i<sizeof(__cgram);__i++)
	movlw	low(0)
	movwf	((c:LCDInit@__i)),c
	
l1291:
	movlw	(010h-1)
	cpfsgt	((c:LCDInit@__i)),c
	goto	u441
	goto	u440
u441:
	goto	l1295
u440:
	goto	l33
	
l1293:
	goto	l33
	line	248
	
l31:
	
l1295:
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
	
l1297:
	incf	((c:LCDInit@__i)),c
	
l1299:
	movlw	(010h-1)
	cpfsgt	((c:LCDInit@__i)),c
	goto	u451
	goto	u450
u451:
	goto	l1295
u450:
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
	global	_LCDByte

;; *************** function _LCDByte *****************
;; Defined at:
;;		line 81 in file "E:\Study Material\XC8 PROJECTS\RTC Library\lcd_hd44780_pic16.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;;  isdata          1   40[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   44[COMRAM] unsigned char 
;;  temp            1   45[COMRAM] unsigned char 
;;  ln              1   43[COMRAM] unsigned char 
;;  hn              1   42[COMRAM] unsigned char 
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_LCDBusyLoop
;; This function is called by:
;;		_LCDInit
;;		_LCDWriteString
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2
	line	81
global __ptext11
__ptext11:
psect	text11
	file	"E:\Study Material\XC8 PROJECTS\RTC Library\lcd_hd44780_pic16.c"
	line	81
	global	__size_of_LCDByte
	__size_of_LCDByte	equ	__end_of_LCDByte-_LCDByte
	
_LCDByte:
;incstack = 0
	opt	stack 24
	dw	0FFFFh
;LCDByte@c stored from wreg
	movwf	((c:LCDByte@c)),c
	line	93
	
l1001:
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
	
l1003:
;lcd_hd44780_pic16.c: 96: if(isdata==0)
	tstfsz	((c:LCDByte@isdata)),c
	goto	u71
	goto	u70
u71:
	goto	l21
u70:
	line	97
	
l1005:
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
	
l1007:
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
	
l1009:
;lcd_hd44780_pic16.c: 108: PORTB=temp;
	movff	(c:LCDByte@temp),(c:3969)	;volatile
	line	110
	
l1011:
;lcd_hd44780_pic16.c: 110: _delay((unsigned long)((1)*(10000000/4000000.0)));
		nop2	;2 cycle nop

	line	114
	
l1013:
;lcd_hd44780_pic16.c: 114: (RB3=0);
	bcf	c:(31755/8),(31755)&7	;volatile
	line	116
	
l1015:
;lcd_hd44780_pic16.c: 116: _delay((unsigned long)((1)*(10000000/4000000.0)));
		nop2	;2 cycle nop

	line	119
	
l1017:
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
	
l1019:
;lcd_hd44780_pic16.c: 123: PORTB=temp;
	movff	(c:LCDByte@temp),(c:3969)	;volatile
	line	125
	
l1021:
;lcd_hd44780_pic16.c: 125: _delay((unsigned long)((1)*(10000000/4000000.0)));
		nop2	;2 cycle nop

	line	129
	
l1023:
;lcd_hd44780_pic16.c: 129: (RB3=0);
	bcf	c:(31755/8),(31755)&7	;volatile
	line	131
	
l1025:
;lcd_hd44780_pic16.c: 131: _delay((unsigned long)((1)*(10000000/4000000.0)));
		nop2	;2 cycle nop

	line	133
	
l1027:
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
;;		line 136 in file "E:\Study Material\XC8 PROJECTS\RTC Library\lcd_hd44780_pic16.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  status          1   39[COMRAM] unsigned char 
;;  temp            1   38[COMRAM] unsigned char 
;;  busy            1   37[COMRAM] unsigned char 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCDByte
;;		_LCDInit
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2
	line	136
global __ptext12
__ptext12:
psect	text12
	file	"E:\Study Material\XC8 PROJECTS\RTC Library\lcd_hd44780_pic16.c"
	line	136
	global	__size_of_LCDBusyLoop
	__size_of_LCDBusyLoop	equ	__end_of_LCDBusyLoop-_LCDBusyLoop
	
_LCDBusyLoop:
;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	140
	
l897:
;lcd_hd44780_pic16.c: 140: uint8_t busy,status=0x00,temp;
	movlw	low(0)
	movwf	((c:LCDBusyLoop@status)),c
	line	143
	
l899:
;lcd_hd44780_pic16.c: 143: TRISB|=(0x0f<<4);
	movlw	(0F0h)&0ffh
	iorwf	((c:3987)),c	;volatile
	line	146
	
l901:
;lcd_hd44780_pic16.c: 146: (RB2=1);
	bsf	c:(31754/8),(31754)&7	;volatile
	line	147
	
l903:
;lcd_hd44780_pic16.c: 147: (RB1=0);
	bcf	c:(31753/8),(31753)&7	;volatile
	line	151
	
l905:
;lcd_hd44780_pic16.c: 151: _delay((unsigned long)((0.5)*(10000000/4000000.0)));
	nop
	goto	l907
	line	154
;lcd_hd44780_pic16.c: 154: do
	
l26:
	line	157
	
l907:
;lcd_hd44780_pic16.c: 155: {
;lcd_hd44780_pic16.c: 157: (RB3=1);
	bsf	c:(31755/8),(31755)&7	;volatile
	line	160
	
l909:
;lcd_hd44780_pic16.c: 160: _delay((unsigned long)((0.5)*(10000000/4000000.0)));
	nop
	line	162
	
l911:
;lcd_hd44780_pic16.c: 162: status=(PORTB>>4);
	swapf	((c:3969)),c,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	movwf	((c:LCDBusyLoop@status)),c
	line	163
	
l913:
;lcd_hd44780_pic16.c: 163: status=status<<4;
	swapf	((c:LCDBusyLoop@status)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:LCDBusyLoop@status)),c
	line	165
	
l915:
;lcd_hd44780_pic16.c: 165: _delay((unsigned long)((0.5)*(10000000/4000000.0)));
	nop
	line	168
	
l917:
;lcd_hd44780_pic16.c: 168: (RB3=0);
	bcf	c:(31755/8),(31755)&7	;volatile
	line	169
	
l919:
;lcd_hd44780_pic16.c: 169: _delay((unsigned long)((1)*(10000000/4000000.0)));
		nop2	;2 cycle nop

	line	171
	
l921:
;lcd_hd44780_pic16.c: 171: (RB3=1);
	bsf	c:(31755/8),(31755)&7	;volatile
	line	172
	
l923:
;lcd_hd44780_pic16.c: 172: _delay((unsigned long)((0.5)*(10000000/4000000.0)));
	nop
	line	174
	
l925:
;lcd_hd44780_pic16.c: 174: temp=(PORTB>>4);
	swapf	((c:3969)),c,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	movwf	((c:LCDBusyLoop@temp)),c
	line	175
	
l927:
;lcd_hd44780_pic16.c: 175: temp&=0x0F;
	movlw	(0Fh)&0ffh
	andwf	((c:LCDBusyLoop@temp)),c
	line	177
	
l929:
;lcd_hd44780_pic16.c: 177: status=status|temp;
	movf	((c:LCDBusyLoop@status)),c,w
	iorwf	((c:LCDBusyLoop@temp)),c,w
	movwf	((c:LCDBusyLoop@status)),c
	line	179
	
l931:
;lcd_hd44780_pic16.c: 179: busy=status & 0b10000000;
	movf	((c:LCDBusyLoop@status)),c,w
	andlw	low(080h)
	movwf	((c:LCDBusyLoop@busy)),c
	line	181
	
l933:
;lcd_hd44780_pic16.c: 181: _delay((unsigned long)((0.5)*(10000000/4000000.0)));
	nop
	line	183
	
l935:
;lcd_hd44780_pic16.c: 183: (RB3=0);
	bcf	c:(31755/8),(31755)&7	;volatile
	line	184
	
l937:
;lcd_hd44780_pic16.c: 184: _delay((unsigned long)((1)*(10000000/4000000.0)));
		nop2	;2 cycle nop

	line	185
	
l939:
;lcd_hd44780_pic16.c: 185: }while(busy);
	tstfsz	((c:LCDBusyLoop@busy)),c
	goto	u11
	goto	u10
u11:
	goto	l907
u10:
	
l27:
	line	187
;lcd_hd44780_pic16.c: 187: (RB2=0);
	bcf	c:(31754/8),(31754)&7	;volatile
	line	190
	
l941:
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
	global	_One_Sec

;; *************** function _One_Sec *****************
;; Defined at:
;;		line 52 in file "E:\Study Material\XC8 PROJECTS\RTC Library\test.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, cstack
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LCDGotoXY
;;		_LCDWriteInt
;;		_ds1307_get_time
;;		i2_LCDByte
;;		i2_LCDWriteString
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	intcode,class=CODE,space=0,reloc=2
global __pintcode
__pintcode:
psect	intcode
	file	"E:\Study Material\XC8 PROJECTS\RTC Library\test.C"
	line	52
	global	__size_of_One_Sec
	__size_of_One_Sec	equ	__end_of_One_Sec-_One_Sec
	
_One_Sec:
;incstack = 0
	opt	stack 24
	dw	0FFFFh; errata NOP
	movff	pclat+0,??_One_Sec+0
	movff	pclat+1,??_One_Sec+1
	movff	fsr0l+0,??_One_Sec+2
	movff	fsr0h+0,??_One_Sec+3
	movff	fsr1l+0,??_One_Sec+4
	movff	fsr1h+0,??_One_Sec+5
	movff	fsr2l+0,??_One_Sec+6
	movff	fsr2h+0,??_One_Sec+7
	movff	prodl+0,??_One_Sec+8
	movff	prodh+0,??_One_Sec+9
	movff	tblptrl+0,??_One_Sec+10
	movff	tblptrh+0,??_One_Sec+11
	movff	tblptru+0,??_One_Sec+12
	movff	tablat+0,??_One_Sec+13
	line	54
	
i2l1837:
;test.C: 54: ds1307_get_time();
	call	_ds1307_get_time	;wreg free
	line	57
;test.C: 57: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:i2LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	i2_LCDByte
	line	60
	
i2l1839:
;test.C: 60: LCDWriteString("NITIN N. SANGALE");
		movlw	high(STR_2)
	movwf	((c:i2LCDWriteString@msg+1)),c
	movlw	low(STR_2)
	movwf	((c:i2LCDWriteString@msg)),c

	call	i2_LCDWriteString	;wreg free
	line	61
	
i2l1841:
;test.C: 61: LCDGotoXY(4,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(04h)&0ffh
	
	call	_LCDGotoXY
	line	62
	
i2l1843:
;test.C: 62: LCDWriteInt(hr,2);
	movff	(c:_hr),(c:LCDWriteInt@val)
	clrf	((c:LCDWriteInt@val+1)),c
	movlw	low(02h)
	movwf	((c:LCDWriteInt@field_length)),c
	call	_LCDWriteInt	;wreg free
	line	63
	
i2l1845:
;test.C: 63: LCDGotoXY(6,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(06h)&0ffh
	
	call	_LCDGotoXY
	line	64
	
i2l1847:
;test.C: 64: LCDWriteString(":");
		movlw	high(STR_3)
	movwf	((c:i2LCDWriteString@msg+1)),c
	movlw	low(STR_3)
	movwf	((c:i2LCDWriteString@msg)),c

	call	i2_LCDWriteString	;wreg free
	line	65
	
i2l1849:
;test.C: 65: LCDGotoXY(7,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(07h)&0ffh
	
	call	_LCDGotoXY
	line	66
;test.C: 66: LCDWriteInt(min,2);
	movff	(c:_min),(c:LCDWriteInt@val)
	clrf	((c:LCDWriteInt@val+1)),c
	movlw	low(02h)
	movwf	((c:LCDWriteInt@field_length)),c
	call	_LCDWriteInt	;wreg free
	line	67
	
i2l1851:
;test.C: 67: LCDGotoXY(9,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(09h)&0ffh
	
	call	_LCDGotoXY
	line	68
	
i2l1853:
;test.C: 68: LCDWriteString(":");
		movlw	high(STR_4)
	movwf	((c:i2LCDWriteString@msg+1)),c
	movlw	low(STR_4)
	movwf	((c:i2LCDWriteString@msg)),c

	call	i2_LCDWriteString	;wreg free
	line	69
	
i2l1855:
;test.C: 69: LCDGotoXY(10,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(0Ah)&0ffh
	
	call	_LCDGotoXY
	line	70
	
i2l1857:
;test.C: 70: LCDWriteInt(sec,2);
	movff	(c:_sec),(c:LCDWriteInt@val)
	clrf	((c:LCDWriteInt@val+1)),c
	movlw	low(02h)
	movwf	((c:LCDWriteInt@field_length)),c
	call	_LCDWriteInt	;wreg free
	line	72
	
i2l1859:
;test.C: 72: INT0IF = 0;
	bcf	c:(32657/8),(32657)&7	;volatile
	goto	i2l241
	line	73
	
i2l1861:
	line	74
;test.C: 73: return;
	
i2l241:
	movff	??_One_Sec+13,tablat+0
	movff	??_One_Sec+12,tblptru+0
	movff	??_One_Sec+11,tblptrh+0
	movff	??_One_Sec+10,tblptrl+0
	movff	??_One_Sec+9,prodh+0
	movff	??_One_Sec+8,prodl+0
	movff	??_One_Sec+7,fsr2h+0
	movff	??_One_Sec+6,fsr2l+0
	movff	??_One_Sec+5,fsr1h+0
	movff	??_One_Sec+4,fsr1l+0
	movff	??_One_Sec+3,fsr0h+0
	movff	??_One_Sec+2,fsr0l+0
	movff	??_One_Sec+1,pclat+1
	movff	??_One_Sec+0,pclat+0
	retfie f
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_One_Sec
	__end_of_One_Sec:
	signat	_One_Sec,88
	global	i2_LCDWriteString

;; *************** function i2_LCDWriteString *****************
;; Defined at:
;;		line 252 in file "E:\Study Material\XC8 PROJECTS\RTC Library\lcd_hd44780_pic16.c"
;; Parameters:    Size  Location     Type
;;  msg             2    9[COMRAM] PTR const unsigned char 
;;		 -> STR_4(2), STR_3(2), STR_2(17), STR_1(14), 
;; Auto vars:     Size  Location     Type
;;  LCDWriteStri    1   12[COMRAM] char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
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
;;		i2_LCDByte
;; This function is called by:
;;		_One_Sec
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\RTC Library\lcd_hd44780_pic16.c"
	line	252
global __ptext14
__ptext14:
psect	text14
	file	"E:\Study Material\XC8 PROJECTS\RTC Library\lcd_hd44780_pic16.c"
	line	252
	global	__size_ofi2_LCDWriteString
	__size_ofi2_LCDWriteString	equ	__end_ofi2_LCDWriteString-i2_LCDWriteString
	
i2_LCDWriteString:
;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	282
	
i2l1813:
;lcd_hd44780_pic16.c: 282: while(*msg!='\0')
	goto	i2l1835
	
i2l37:
	line	285
	
i2l1815:
;lcd_hd44780_pic16.c: 283: {
;lcd_hd44780_pic16.c: 285: if(*msg=='%')
	movff	(c:i2LCDWriteString@msg),tblptrl
	movff	(c:i2LCDWriteString@msg+1),tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
		dw	0FFFFh; errata NOP

	movf	tablat,w

	xorlw	025h
	btfss	status,2
	goto	i2u110_41
	goto	i2u110_40
i2u110_41:
	goto	i2l1831
i2u110_40:
	line	287
	
i2l1817:
;lcd_hd44780_pic16.c: 286: {
;lcd_hd44780_pic16.c: 287: msg++;
	infsnz	((c:i2LCDWriteString@msg)),c
	incf	((c:i2LCDWriteString@msg+1)),c
	line	288
	
i2l1819:
;lcd_hd44780_pic16.c: 288: int8_t cc=*msg-'0';
	movff	(c:i2LCDWriteString@msg),tblptrl
	movff	(c:i2LCDWriteString@msg+1),tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
		dw	0FFFFh; errata NOP

	movf	tablat,w

	addlw	low(-48)
	movwf	((c:i2LCDWriteString@cc)),c
	line	290
	
i2l1821:
;lcd_hd44780_pic16.c: 290: if(cc>=0 && cc<=7)
	btfsc	((c:i2LCDWriteString@cc)),c,7
	goto	i2u111_41
	goto	i2u111_40
i2u111_41:
	goto	i2l1827
i2u111_40:
	
i2l1823:
	movf	((c:i2LCDWriteString@cc)),c,w
	xorlw	80h
	movwf	(??i2_LCDWriteString+0+0)&0ffh,c
	movlw	(08h)&0ffh
	xorlw	80h
	subwf	(??i2_LCDWriteString+0+0),c,w
	btfsc	status,0
	goto	i2u112_41
	goto	i2u112_40
i2u112_41:
	goto	i2l1827
i2u112_40:
	line	292
	
i2l1825:
;lcd_hd44780_pic16.c: 291: {
;lcd_hd44780_pic16.c: 292: (LCDByte(cc,1));
	movlw	low(01h)
	movwf	((c:i2LCDByte@isdata)),c
	movf	((c:i2LCDWriteString@cc)),c,w
	
	call	i2_LCDByte
	line	293
;lcd_hd44780_pic16.c: 293: }
	goto	i2l1833
	line	294
	
i2l39:
	line	296
	
i2l1827:
;lcd_hd44780_pic16.c: 294: else
;lcd_hd44780_pic16.c: 295: {
;lcd_hd44780_pic16.c: 296: (LCDByte('%',1));
	movlw	low(01h)
	movwf	((c:i2LCDByte@isdata)),c
	movlw	(025h)&0ffh
	
	call	i2_LCDByte
	line	297
	
i2l1829:
;lcd_hd44780_pic16.c: 297: (LCDByte(*msg,1));
	movlw	low(01h)
	movwf	((c:i2LCDByte@isdata)),c
	movff	(c:i2LCDWriteString@msg),tblptrl
	movff	(c:i2LCDWriteString@msg+1),tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
		dw	0FFFFh; errata NOP

	movf	tablat,w

	
	call	i2_LCDByte
	goto	i2l1833
	line	298
	
i2l40:
	line	299
;lcd_hd44780_pic16.c: 298: }
;lcd_hd44780_pic16.c: 299: }
	goto	i2l1833
	line	300
	
i2l38:
	line	302
	
i2l1831:
;lcd_hd44780_pic16.c: 300: else
;lcd_hd44780_pic16.c: 301: {
;lcd_hd44780_pic16.c: 302: (LCDByte(*msg,1));
	movlw	low(01h)
	movwf	((c:i2LCDByte@isdata)),c
	movff	(c:i2LCDWriteString@msg),tblptrl
	movff	(c:i2LCDWriteString@msg+1),tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
		dw	0FFFFh; errata NOP

	movf	tablat,w

	
	call	i2_LCDByte
	goto	i2l1833
	line	303
	
i2l41:
	line	304
	
i2l1833:
;lcd_hd44780_pic16.c: 303: }
;lcd_hd44780_pic16.c: 304: msg++;
	infsnz	((c:i2LCDWriteString@msg)),c
	incf	((c:i2LCDWriteString@msg+1)),c
	goto	i2l1835
	line	305
	
i2l36:
	line	282
	
i2l1835:
	movff	(c:i2LCDWriteString@msg),tblptrl
	movff	(c:i2LCDWriteString@msg+1),tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
		dw	0FFFFh; errata NOP

	movf	tablat,w

	iorlw	0
	btfss	status,2
	goto	i2u113_41
	goto	i2u113_40
i2u113_41:
	goto	i2l1815
i2u113_40:
	goto	i2l43
	
i2l42:
	line	306
	
i2l43:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_ofi2_LCDWriteString
	__end_ofi2_LCDWriteString:
	signat	i2_LCDWriteString,88
	global	_ds1307_get_time

;; *************** function _ds1307_get_time *****************
;; Defined at:
;;		line 111 in file "E:\Study Material\XC8 PROJECTS\RTC Library\myrtc.C"
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
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		i2_IdleI2C
;;		i2_ReadI2C
;;		i2_WriteI2C
;;		i2_bcd2bin
;; This function is called by:
;;		_One_Sec
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\RTC Library\myrtc.C"
	line	111
global __ptext15
__ptext15:
psect	text15
	file	"E:\Study Material\XC8 PROJECTS\RTC Library\myrtc.C"
	line	111
	global	__size_of_ds1307_get_time
	__size_of_ds1307_get_time	equ	__end_of_ds1307_get_time-_ds1307_get_time
	
_ds1307_get_time:
;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	113
	
i2l1785:
;myrtc.C: 113: IdleI2C();
	call	i2_IdleI2C	;wreg free
	line	114
	
i2l1787:
;myrtc.C: 114: SSPCON2bits.SEN=1;while(SSPCON2bits.SEN);
	bsf	((c:4037)),c,0	;volatile
	goto	i2l157
	
i2l158:
	
i2l157:
	btfsc	((c:4037)),c,0	;volatile
	goto	i2u104_41
	goto	i2u104_40
i2u104_41:
	goto	i2l157
i2u104_40:
	goto	i2l1789
	
i2l159:
	line	115
	
i2l1789:
;myrtc.C: 115: WriteI2C(0xD0);
	movlw	(0D0h)&0ffh
	
	call	i2_WriteI2C
	line	116
;myrtc.C: 116: IdleI2C();
	call	i2_IdleI2C	;wreg free
	line	117
;myrtc.C: 117: WriteI2C(0x00);
	movlw	(0)&0ffh
	
	call	i2_WriteI2C
	line	118
;myrtc.C: 118: IdleI2C();
	call	i2_IdleI2C	;wreg free
	line	119
	
i2l1791:
;myrtc.C: 119: SSPCON2bits.RSEN=1;while(SSPCON2bits.RSEN);
	bsf	((c:4037)),c,1	;volatile
	goto	i2l160
	
i2l161:
	
i2l160:
	btfsc	((c:4037)),c,1	;volatile
	goto	i2u105_41
	goto	i2u105_40
i2u105_41:
	goto	i2l160
i2u105_40:
	goto	i2l1793
	
i2l162:
	line	120
	
i2l1793:
;myrtc.C: 120: WriteI2C(0xD1);
	movlw	(0D1h)&0ffh
	
	call	i2_WriteI2C
	line	121
;myrtc.C: 121: sec = ReadI2C();
	call	i2_ReadI2C	;wreg free
	movwf	((c:_sec)),c
	line	122
	
i2l1795:
;myrtc.C: 122: SSPCON2bits.ACKDT=0;SSPCON2bits.ACKEN=1;while(SSPCON2bits.ACKEN);
	bcf	((c:4037)),c,5	;volatile
	
i2l1797:
	bsf	((c:4037)),c,4	;volatile
	goto	i2l163
	
i2l164:
	
i2l163:
	btfsc	((c:4037)),c,4	;volatile
	goto	i2u106_41
	goto	i2u106_40
i2u106_41:
	goto	i2l163
i2u106_40:
	goto	i2l1799
	
i2l165:
	line	123
	
i2l1799:
;myrtc.C: 123: min = ReadI2C();
	call	i2_ReadI2C	;wreg free
	movwf	((c:_min)),c
	line	124
	
i2l1801:
;myrtc.C: 124: SSPCON2bits.ACKDT=0;SSPCON2bits.ACKEN=1;while(SSPCON2bits.ACKEN);
	bcf	((c:4037)),c,5	;volatile
	
i2l1803:
	bsf	((c:4037)),c,4	;volatile
	goto	i2l166
	
i2l167:
	
i2l166:
	btfsc	((c:4037)),c,4	;volatile
	goto	i2u107_41
	goto	i2u107_40
i2u107_41:
	goto	i2l166
i2u107_40:
	goto	i2l1805
	
i2l168:
	line	125
	
i2l1805:
;myrtc.C: 125: hr = ReadI2C();
	call	i2_ReadI2C	;wreg free
	movwf	((c:_hr)),c
	line	126
	
i2l1807:
;myrtc.C: 126: SSPCON2bits.ACKDT=1;SSPCON2bits.ACKEN=1;while(SSPCON2bits.ACKEN);
	bsf	((c:4037)),c,5	;volatile
	
i2l1809:
	bsf	((c:4037)),c,4	;volatile
	goto	i2l169
	
i2l170:
	
i2l169:
	btfsc	((c:4037)),c,4	;volatile
	goto	i2u108_41
	goto	i2u108_40
i2u108_41:
	goto	i2l169
i2u108_40:
	
i2l171:
	line	127
;myrtc.C: 127: SSPCON2bits.PEN=1;while(SSPCON2bits.PEN);
	bsf	((c:4037)),c,2	;volatile
	goto	i2l172
	
i2l173:
	
i2l172:
	btfsc	((c:4037)),c,2	;volatile
	goto	i2u109_41
	goto	i2u109_40
i2u109_41:
	goto	i2l172
i2u109_40:
	goto	i2l1811
	
i2l174:
	line	130
	
i2l1811:
;myrtc.C: 130: sec = bcd2bin(sec & 0x7f);
	movf	((c:_sec)),c,w
	andlw	low(07Fh)
	
	call	i2_bcd2bin
	movwf	((c:_sec)),c
	line	131
;myrtc.C: 131: min = bcd2bin(min & 0x7f);
	movf	((c:_min)),c,w
	andlw	low(07Fh)
	
	call	i2_bcd2bin
	movwf	((c:_min)),c
	line	132
;myrtc.C: 132: hr = bcd2bin(hr & 0x3f);
	movf	((c:_hr)),c,w
	andlw	low(03Fh)
	
	call	i2_bcd2bin
	movwf	((c:_hr)),c
	line	133
	
i2l175:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_ds1307_get_time
	__end_of_ds1307_get_time:
	signat	_ds1307_get_time,88
	global	i2_bcd2bin

;; *************** function i2_bcd2bin *****************
;; Defined at:
;;		line 164 in file "E:\Study Material\XC8 PROJECTS\RTC Library\myrtc.C"
;; Parameters:    Size  Location     Type
;;  bcd_value       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  bcd_value       1    1[COMRAM] unsigned char 
;;  bcd2bin         1    2[COMRAM] unsigned char 
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
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ds1307_get_time
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2
	line	164
global __ptext16
__ptext16:
psect	text16
	file	"E:\Study Material\XC8 PROJECTS\RTC Library\myrtc.C"
	line	164
	global	__size_ofi2_bcd2bin
	__size_ofi2_bcd2bin	equ	__end_ofi2_bcd2bin-i2_bcd2bin
	
i2_bcd2bin:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
;i2bcd2bin@bcd_value stored from wreg
	movwf	((c:i2bcd2bin@bcd_value)),c
	line	168
	
i2l1685:
;myrtc.C: 166: unsigned char temp;
;myrtc.C: 168: temp = bcd_value;
	movff	(c:i2bcd2bin@bcd_value),(c:i2bcd2bin@temp)
	line	170
	
i2l1687:
;myrtc.C: 170: temp >>= 1;
	bcf status,0
	rrcf	((c:i2bcd2bin@temp)),c

	line	172
	
i2l1689:
;myrtc.C: 172: temp &= 0x78;
	movlw	(078h)&0ffh
	andwf	((c:i2bcd2bin@temp)),c
	line	176
	
i2l1691:
;myrtc.C: 176: return(temp + (temp >> 2) + (bcd_value & 0x0f));
	movff	(c:i2bcd2bin@bcd_value),??i2_bcd2bin+0+0
	movlw	0Fh
	andwf	(??i2_bcd2bin+0+0),c
	rrncf	((c:i2bcd2bin@temp)),c,w
	rrncf	wreg
	andlw	(0ffh shr 2) & 0ffh
	addwf	(??i2_bcd2bin+0+0),c,w
	addwf	((c:i2bcd2bin@temp)),c,w
	goto	i2l186
	
i2l1693:
	line	177
	
i2l186:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_ofi2_bcd2bin
	__end_ofi2_bcd2bin:
	signat	i2_bcd2bin,89
	global	i2_WriteI2C

;; *************** function i2_WriteI2C *****************
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
;;		i2_IdleI2C
;; This function is called by:
;;		_ds1307_get_time
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\i2c\i2c_writ.c"
	line	12
global __ptext17
__ptext17:
psect	text17
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\i2c\i2c_writ.c"
	line	12
	global	__size_ofi2_WriteI2C
	__size_ofi2_WriteI2C	equ	__end_ofi2_WriteI2C-i2_WriteI2C
	
i2_WriteI2C:
;incstack = 0
	opt	stack 24
	dw	0FFFFh
;i2WriteI2C@data_out stored from wreg
	movwf	((c:i2WriteI2C@data_out)),c
	line	14
	
i2l1695:
	movff	(c:i2WriteI2C@data_out),(c:4041)	;volatile
	line	15
	
i2l1697:
	btfss	((c:4038)),c,7	;volatile
	goto	i2u88_41
	goto	i2u88_40
i2u88_41:
	goto	i2l1703
i2u88_40:
	goto	i2l297
	line	16
	
i2l1699:
;	Return value of i2_WriteI2C is never used
	goto	i2l297
	
i2l1701:
	goto	i2l297
	line	17
	
i2l296:
	line	19
	
i2l1703:
	movff	(c:4038),??i2_WriteI2C+0+0	;volatile
	movlw	0Fh
	andwf	(??i2_WriteI2C+0+0),c
	movf	(??i2_WriteI2C+0+0),c,w
	xorlw	08h

	btfsc	status,2
	goto	i2u89_41
	goto	i2u89_40
i2u89_41:
	goto	i2l1715
i2u89_40:
	
i2l1705:
	movff	(c:4038),??i2_WriteI2C+0+0	;volatile
	movlw	0Fh
	andwf	(??i2_WriteI2C+0+0),c
	movf	(??i2_WriteI2C+0+0),c,w
	xorlw	0Bh

	btfsc	status,2
	goto	i2u90_41
	goto	i2u90_40
i2u90_41:
	goto	i2l1715
i2u90_40:
	line	21
	
i2l1707:
	bsf	((c:4038)),c,4	;volatile
	line	22
	goto	i2l300
	
i2l301:
	
i2l300:
	btfss	((c:3998)),c,3	;volatile
	goto	i2u91_41
	goto	i2u91_40
i2u91_41:
	goto	i2l300
i2u91_40:
	
i2l302:
	line	24
	btfsc	((c:4039)),c,2	;volatile
	goto	i2u92_41
	goto	i2u92_40
i2u92_41:
	goto	i2l297
i2u92_40:
	
i2l1709:
	movf	((c:4039)),c,w	;volatile
	goto	i2l297
	line	26
	
i2l1711:
;	Return value of i2_WriteI2C is never used
	goto	i2l297
	line	27
	
i2l1713:
	goto	i2l297
	line	28
	
i2l303:
	line	30
;	Return value of i2_WriteI2C is never used
	goto	i2l297
	line	31
	
i2l304:
	line	32
	goto	i2l297
	line	33
	
i2l299:
	
i2l1715:
	movff	(c:4038),??i2_WriteI2C+0+0	;volatile
	movlw	0Fh
	andwf	(??i2_WriteI2C+0+0),c
	movf	(??i2_WriteI2C+0+0),c,w
	xorlw	08h

	btfsc	status,2
	goto	i2u93_41
	goto	i2u93_40
i2u93_41:
	goto	i2l309
i2u93_40:
	
i2l1717:
	movff	(c:4038),??i2_WriteI2C+0+0	;volatile
	movlw	0Fh
	andwf	(??i2_WriteI2C+0+0),c
	movf	(??i2_WriteI2C+0+0),c,w
	xorlw	0Bh

	btfss	status,2
	goto	i2u94_41
	goto	i2u94_40
i2u94_41:
	goto	i2l297
i2u94_40:
	goto	i2l309
	
i2l308:
	line	35
	goto	i2l309
	
i2l310:
	
i2l309:
	btfsc	((c:4039)),c,0	;volatile
	goto	i2u95_41
	goto	i2u95_40
i2u95_41:
	goto	i2l309
i2u95_40:
	goto	i2l1719
	
i2l311:
	line	36
	
i2l1719:
	call	i2_IdleI2C	;wreg free
	line	37
	
i2l1721:
	movf	((c:4037)),c,w	;volatile
	goto	i2l297
	line	38
	
i2l1723:
;	Return value of i2_WriteI2C is never used
	goto	i2l297
	
i2l1725:
	goto	i2l297
	line	39
	
i2l312:
;	Return value of i2_WriteI2C is never used
	goto	i2l297
	
i2l313:
	goto	i2l297
	line	40
	
i2l306:
	goto	i2l297
	line	42
	
i2l305:
	goto	i2l297
	
i2l298:
	line	43
	
i2l297:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_ofi2_WriteI2C
	__end_ofi2_WriteI2C:
	signat	i2_WriteI2C,89
	global	i2_IdleI2C

;; *************** function i2_IdleI2C *****************
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
;;		_ds1307_get_time
;;		i2_WriteI2C
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\i2c\i2c_idle.c"
	line	24
global __ptext18
__ptext18:
psect	text18
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\i2c\i2c_idle.c"
	line	24
	global	__size_ofi2_IdleI2C
	__size_ofi2_IdleI2C	equ	__end_ofi2_IdleI2C-i2_IdleI2C
	
i2_IdleI2C:
;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	26
	
i2l1651:
	goto	i2l1653
	
i2l249:
	line	27
	goto	i2l1653
	
i2l248:
	line	26
	
i2l1653:
	movff	(c:4037),??i2_IdleI2C+0+0	;volatile
	movlw	01Fh
	andwf	(??i2_IdleI2C+0+0),c
	btfss	status,2
	goto	i2u85_41
	goto	i2u85_40
i2u85_41:
	goto	i2l1653
i2u85_40:
	
i2l1655:
	btfsc	((c:4039)),c,2	;volatile
	goto	i2u86_41
	goto	i2u86_40
i2u86_41:
	goto	i2l1653
i2u86_40:
	goto	i2l251
	
i2l250:
	line	28
	
i2l251:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_ofi2_IdleI2C
	__end_ofi2_IdleI2C:
	signat	i2_IdleI2C,88
	global	i2_ReadI2C

;; *************** function i2_ReadI2C *****************
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
;;		_ds1307_get_time
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\i2c\i2c_read.c"
	line	11
global __ptext19
__ptext19:
psect	text19
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\i2c\i2c_read.c"
	line	11
	global	__size_ofi2_ReadI2C
	__size_ofi2_ReadI2C	equ	__end_ofi2_ReadI2C-i2_ReadI2C
	
i2_ReadI2C:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
	line	13
	
i2l1211:
	movff	(c:4038),??i2_ReadI2C+0+0	;volatile
	movlw	0Fh
	andwf	(??i2_ReadI2C+0+0),c
	movf	(??i2_ReadI2C+0+0),c,w
	xorlw	08h

	btfsc	status,2
	goto	i2u33_41
	goto	i2u33_40
i2u33_41:
	goto	i2l275
i2u33_40:
	
i2l1213:
	movff	(c:4038),??i2_ReadI2C+0+0	;volatile
	movlw	0Fh
	andwf	(??i2_ReadI2C+0+0),c
	movf	(??i2_ReadI2C+0+0),c,w
	xorlw	0Bh

	btfss	status,2
	goto	i2u34_41
	goto	i2u34_40
i2u34_41:
	goto	i2l276
i2u34_40:
	
i2l275:
	line	14
	bsf	((c:4037)),c,3	;volatile
	goto	i2l276
	
i2l273:
	line	15
	goto	i2l276
	
i2l277:
	
i2l276:
	btfss	((c:4039)),c,0	;volatile
	goto	i2u35_41
	goto	i2u35_40
i2u35_41:
	goto	i2l276
i2u35_40:
	goto	i2l1215
	
i2l278:
	line	16
	
i2l1215:
	movf	((c:4041)),c,w	;volatile
	goto	i2l279
	
i2l1217:
	line	17
	
i2l279:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_ofi2_ReadI2C
	__end_ofi2_ReadI2C:
	signat	i2_ReadI2C,89
	global	_LCDWriteInt

;; *************** function _LCDWriteInt *****************
;; Defined at:
;;		line 308 in file "E:\Study Material\XC8 PROJECTS\RTC Library\lcd_hd44780_pic16.c"
;; Parameters:    Size  Location     Type
;;  val             2    9[COMRAM] int 
;;  field_length    1   11[COMRAM] char 
;; Auto vars:     Size  Location     Type
;;  str             5   14[COMRAM] unsigned char [5]
;;  i               2   21[COMRAM] int 
;;  j               2   19[COMRAM] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, prodl, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         3       0       0       0       0       0       0
;;      Locals:         9       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:        14       0       0       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awdiv
;;		___awmod
;;		i2_LCDByte
;; This function is called by:
;;		_One_Sec
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\RTC Library\lcd_hd44780_pic16.c"
	line	308
global __ptext20
__ptext20:
psect	text20
	file	"E:\Study Material\XC8 PROJECTS\RTC Library\lcd_hd44780_pic16.c"
	line	308
	global	__size_of_LCDWriteInt
	__size_of_LCDWriteInt	equ	__end_of_LCDWriteInt-_LCDWriteInt
	
_LCDWriteInt:
;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	321
	
i2l1727:
;lcd_hd44780_pic16.c: 321: char str[5]={0,0,0,0,0};
	lfsr	2,(LCDWriteInt@F3701)
	lfsr	1,(LCDWriteInt@str)
	movlw	5
i2u96_41:
	movff	postinc2,postinc1
	decfsz	wreg
	goto	i2u96_41
	line	322
	
i2l1729:
;lcd_hd44780_pic16.c: 322: int i=4,j=0;
	movlw	high(04h)
	movwf	((c:LCDWriteInt@i+1)),c
	movlw	low(04h)
	movwf	((c:LCDWriteInt@i)),c
	
i2l1731:
	movlw	high(0)
	movwf	((c:LCDWriteInt@j+1)),c
	movlw	low(0)
	movwf	((c:LCDWriteInt@j)),c
	line	325
	
i2l1733:
;lcd_hd44780_pic16.c: 325: if(val<0)
	movf	((c:LCDWriteInt@val+1)),c,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	0
	btfsc	status,2
	subwf	((c:LCDWriteInt@val)),c,w
	btfsc	status,0
	goto	i2u97_41
	goto	i2u97_40
i2u97_41:
	goto	i2l1745
i2u97_40:
	line	327
	
i2l1735:
;lcd_hd44780_pic16.c: 326: {
;lcd_hd44780_pic16.c: 327: (LCDByte('-',1));
	movlw	low(01h)
	movwf	((c:i2LCDByte@isdata)),c
	movlw	(02Dh)&0ffh
	
	call	i2_LCDByte
	line	328
	
i2l1737:
;lcd_hd44780_pic16.c: 328: val=val*-1;
	negf	((c:LCDWriteInt@val)),c
	comf	((c:LCDWriteInt@val+1)),c
	btfsc	status,0
	incf	((c:LCDWriteInt@val+1)),c
	goto	i2l1745
	line	329
	
i2l48:
	line	331
;lcd_hd44780_pic16.c: 329: }
;lcd_hd44780_pic16.c: 331: while(val)
	goto	i2l1745
	
i2l50:
	line	333
	
i2l1739:
;lcd_hd44780_pic16.c: 332: {
;lcd_hd44780_pic16.c: 333: str[i]=val%10;
	movlw	low((c:LCDWriteInt@str))
	addwf	((c:LCDWriteInt@i)),c,w
	movwf	c:fsr2l
	movlw	high((c:LCDWriteInt@str))
	addwfc	((c:LCDWriteInt@i+1)),c,w
	movwf	1+c:fsr2l
	movff	(c:LCDWriteInt@val),(c:___awmod@dividend)
	movff	(c:LCDWriteInt@val+1),(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	movwf	indf2,c

	line	334
	
i2l1741:
;lcd_hd44780_pic16.c: 334: val=val/10;
	movff	(c:LCDWriteInt@val),(c:___awdiv@dividend)
	movff	(c:LCDWriteInt@val+1),(c:___awdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movff	0+?___awdiv,(c:LCDWriteInt@val)
	movff	1+?___awdiv,(c:LCDWriteInt@val+1)
	line	335
	
i2l1743:
;lcd_hd44780_pic16.c: 335: i--;
	decf	((c:LCDWriteInt@i)),c
	btfss	status,0
	decf	((c:LCDWriteInt@i+1)),c
	goto	i2l1745
	line	336
	
i2l49:
	line	331
	
i2l1745:
	movf	((c:LCDWriteInt@val+1)),c,w
	iorwf ((c:LCDWriteInt@val)),c,w

	btfss	status,2
	goto	i2u98_41
	goto	i2u98_40
i2u98_41:
	goto	i2l1739
i2u98_40:
	goto	i2l1747
	
i2l51:
	line	337
	
i2l1747:
;lcd_hd44780_pic16.c: 336: }
;lcd_hd44780_pic16.c: 337: if(field_length==-1)
	incf	((c:LCDWriteInt@field_length)),c,w

	btfss	status,2
	goto	i2u99_41
	goto	i2u99_40
i2u99_41:
	goto	i2l1755
i2u99_40:
	goto	i2l1753
	line	338
	
i2l1749:
;lcd_hd44780_pic16.c: 338: while(str[j]==0) j++;
	goto	i2l1753
	
i2l54:
	
i2l1751:
	infsnz	((c:LCDWriteInt@j)),c
	incf	((c:LCDWriteInt@j+1)),c
	goto	i2l1753
	
i2l53:
	
i2l1753:
	movlw	low((c:LCDWriteInt@str))
	addwf	((c:LCDWriteInt@j)),c,w
	movwf	c:fsr2l
	movlw	high((c:LCDWriteInt@str))
	addwfc	((c:LCDWriteInt@j+1)),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	btfsc	status,2
	goto	i2u100_41
	goto	i2u100_40
i2u100_41:
	goto	i2l1751
i2u100_40:
	goto	i2l1757
	
i2l55:
	goto	i2l1757
	line	339
	
i2l52:
	line	340
	
i2l1755:
;lcd_hd44780_pic16.c: 339: else
;lcd_hd44780_pic16.c: 340: j=5-field_length;
	movff	(c:LCDWriteInt@field_length),??_LCDWriteInt+0+0
	clrf	(??_LCDWriteInt+0+0+1)&0ffh,c
	btfsc	(??_LCDWriteInt+0+0)&0ffh,c,7
	decf	(??_LCDWriteInt+0+0+1)&0ffh,c
	comf	(??_LCDWriteInt+0+0),c
	comf	(??_LCDWriteInt+0+1),c
	infsnz	(??_LCDWriteInt+0+0),c
	incf	(??_LCDWriteInt+0+1),c
	movlw	low(05h)
	addwf	(??_LCDWriteInt+0+0),c,w
	
	movwf	((c:LCDWriteInt@j)),c
	movlw	high(05h)
	addwfc	(??_LCDWriteInt+0+1),c,w
	movwf	1+((c:LCDWriteInt@j)),c
	goto	i2l1757
	
i2l56:
	line	343
	
i2l1757:
;lcd_hd44780_pic16.c: 343: for(i=j;i<5;i++)
	movff	(c:LCDWriteInt@j),(c:LCDWriteInt@i)
	movff	(c:LCDWriteInt@j+1),(c:LCDWriteInt@i+1)
	movf	((c:LCDWriteInt@i+1)),c,w
	xorlw	80h
	addlw	-((0)^80h)
	movlw	05h
	btfsc	status,2
	subwf	((c:LCDWriteInt@i)),c,w
	btfss	status,0
	goto	i2u101_41
	goto	i2u101_40
i2u101_41:
	goto	i2l1761
i2u101_40:
	goto	i2l59
	
i2l1759:
	goto	i2l59
	line	344
	
i2l57:
	line	345
	
i2l1761:
;lcd_hd44780_pic16.c: 344: {
;lcd_hd44780_pic16.c: 345: (LCDByte(48+str[i],1));
	movlw	low(01h)
	movwf	((c:i2LCDByte@isdata)),c
	movlw	low((c:LCDWriteInt@str))
	addwf	((c:LCDWriteInt@i)),c,w
	movwf	c:fsr2l
	movlw	high((c:LCDWriteInt@str))
	addwfc	((c:LCDWriteInt@i+1)),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	addlw	low(030h)
	
	call	i2_LCDByte
	line	343
	
i2l1763:
	infsnz	((c:LCDWriteInt@i)),c
	incf	((c:LCDWriteInt@i+1)),c
	
i2l1765:
	movf	((c:LCDWriteInt@i+1)),c,w
	xorlw	80h
	addlw	-((0)^80h)
	movlw	05h
	btfsc	status,2
	subwf	((c:LCDWriteInt@i)),c,w
	btfss	status,0
	goto	i2u102_41
	goto	i2u102_40
i2u102_41:
	goto	i2l1761
i2u102_40:
	goto	i2l59
	
i2l58:
	line	347
	
i2l59:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_LCDWriteInt
	__end_of_LCDWriteInt:
	signat	_LCDWriteInt,8312
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    0[COMRAM] int 
;;  divisor         2    2[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    5[COMRAM] unsigned char 
;;  counter         1    4[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] int 
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCDWriteInt
;; This function uses a non-reentrant model
;;
psect	text21,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	8
global __ptext21
__ptext21:
psect	text21
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	8
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
	line	13
	
i2l1137:
	movlw	low(0)
	movwf	((c:___awmod@sign)),c
	line	14
	
i2l1139:
	movf	((c:___awmod@dividend+1)),c,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	0
	btfsc	status,2
	subwf	((c:___awmod@dividend)),c,w
	btfsc	status,0
	goto	i2u26_41
	goto	i2u26_40
i2u26_41:
	goto	i2l1145
i2u26_40:
	line	15
	
i2l1141:
	negf	((c:___awmod@dividend)),c
	comf	((c:___awmod@dividend+1)),c
	btfsc	status,0
	incf	((c:___awmod@dividend+1)),c
	line	16
	
i2l1143:
	movlw	low(01h)
	movwf	((c:___awmod@sign)),c
	goto	i2l1145
	line	17
	
i2l512:
	line	18
	
i2l1145:
	movf	((c:___awmod@divisor+1)),c,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	0
	btfsc	status,2
	subwf	((c:___awmod@divisor)),c,w
	btfsc	status,0
	goto	i2u27_41
	goto	i2u27_40
i2u27_41:
	goto	i2l1149
i2u27_40:
	line	19
	
i2l1147:
	negf	((c:___awmod@divisor)),c
	comf	((c:___awmod@divisor+1)),c
	btfsc	status,0
	incf	((c:___awmod@divisor+1)),c
	goto	i2l1149
	
i2l513:
	line	20
	
i2l1149:
	movf	((c:___awmod@divisor+1)),c,w
	iorwf ((c:___awmod@divisor)),c,w

	btfsc	status,2
	goto	i2u28_41
	goto	i2u28_40
i2u28_41:
	goto	i2l1165
i2u28_40:
	line	21
	
i2l1151:
	movlw	low(01h)
	movwf	((c:___awmod@counter)),c
	line	22
	goto	i2l1155
	
i2l516:
	line	23
	
i2l1153:
	bcf	status,0
	rlcf	((c:___awmod@divisor)),c
	rlcf	((c:___awmod@divisor+1)),c
	line	24
	incf	((c:___awmod@counter)),c
	goto	i2l1155
	line	25
	
i2l515:
	line	22
	
i2l1155:
	
	btfss	((c:___awmod@divisor+1)),c,(15)&7
	goto	i2u29_41
	goto	i2u29_40
i2u29_41:
	goto	i2l1153
i2u29_40:
	goto	i2l1157
	
i2l517:
	goto	i2l1157
	line	26
	
i2l518:
	line	27
	
i2l1157:
	movf	((c:___awmod@divisor)),c,w
	subwf	((c:___awmod@dividend)),c,w
	movf	((c:___awmod@divisor+1)),c,w
	subwfb	((c:___awmod@dividend+1)),c,w
	btfss	status,0
	goto	i2u30_41
	goto	i2u30_40
i2u30_41:
	goto	i2l1161
i2u30_40:
	line	28
	
i2l1159:
	movf	((c:___awmod@divisor)),c,w
	subwf	((c:___awmod@dividend)),c
	movf	((c:___awmod@divisor+1)),c,w
	subwfb	((c:___awmod@dividend+1)),c

	goto	i2l1161
	
i2l519:
	line	29
	
i2l1161:
	bcf	status,0
	rrcf	((c:___awmod@divisor+1)),c
	rrcf	((c:___awmod@divisor)),c
	line	30
	
i2l1163:
	decfsz	((c:___awmod@counter)),c
	
	goto	i2l1157
	goto	i2l1165
	
i2l520:
	goto	i2l1165
	line	31
	
i2l514:
	line	32
	
i2l1165:
	movf	((c:___awmod@sign)),c,w
	btfsc	status,2
	goto	i2u31_41
	goto	i2u31_40
i2u31_41:
	goto	i2l1169
i2u31_40:
	line	33
	
i2l1167:
	negf	((c:___awmod@dividend)),c
	comf	((c:___awmod@dividend+1)),c
	btfsc	status,0
	incf	((c:___awmod@dividend+1)),c
	goto	i2l1169
	
i2l521:
	line	34
	
i2l1169:
	movff	(c:___awmod@dividend),(c:?___awmod)
	movff	(c:___awmod@dividend+1),(c:?___awmod+1)
	goto	i2l522
	
i2l1171:
	line	35
	
i2l522:
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
;;  dividend        2    0[COMRAM] int 
;;  divisor         2    2[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[COMRAM] int 
;;  sign            1    5[COMRAM] unsigned char 
;;  counter         1    4[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] int 
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCDWriteInt
;; This function uses a non-reentrant model
;;
psect	text22,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	8
global __ptext22
__ptext22:
psect	text22
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	8
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
	line	14
	
i2l1093:
	movlw	low(0)
	movwf	((c:___awdiv@sign)),c
	line	15
	
i2l1095:
	movf	((c:___awdiv@divisor+1)),c,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	0
	btfsc	status,2
	subwf	((c:___awdiv@divisor)),c,w
	btfsc	status,0
	goto	i2u20_41
	goto	i2u20_40
i2u20_41:
	goto	i2l1101
i2u20_40:
	line	16
	
i2l1097:
	negf	((c:___awdiv@divisor)),c
	comf	((c:___awdiv@divisor+1)),c
	btfsc	status,0
	incf	((c:___awdiv@divisor+1)),c
	line	17
	
i2l1099:
	movlw	low(01h)
	movwf	((c:___awdiv@sign)),c
	goto	i2l1101
	line	18
	
i2l499:
	line	19
	
i2l1101:
	movf	((c:___awdiv@dividend+1)),c,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	0
	btfsc	status,2
	subwf	((c:___awdiv@dividend)),c,w
	btfsc	status,0
	goto	i2u21_41
	goto	i2u21_40
i2u21_41:
	goto	i2l1107
i2u21_40:
	line	20
	
i2l1103:
	negf	((c:___awdiv@dividend)),c
	comf	((c:___awdiv@dividend+1)),c
	btfsc	status,0
	incf	((c:___awdiv@dividend+1)),c
	line	21
	
i2l1105:
	movlw	(01h)&0ffh
	xorwf	((c:___awdiv@sign)),c
	goto	i2l1107
	line	22
	
i2l500:
	line	23
	
i2l1107:
	movlw	high(0)
	movwf	((c:___awdiv@quotient+1)),c
	movlw	low(0)
	movwf	((c:___awdiv@quotient)),c
	line	24
	
i2l1109:
	movf	((c:___awdiv@divisor+1)),c,w
	iorwf ((c:___awdiv@divisor)),c,w

	btfsc	status,2
	goto	i2u22_41
	goto	i2u22_40
i2u22_41:
	goto	i2l1129
i2u22_40:
	line	25
	
i2l1111:
	movlw	low(01h)
	movwf	((c:___awdiv@counter)),c
	line	26
	goto	i2l1115
	
i2l503:
	line	27
	
i2l1113:
	bcf	status,0
	rlcf	((c:___awdiv@divisor)),c
	rlcf	((c:___awdiv@divisor+1)),c
	line	28
	incf	((c:___awdiv@counter)),c
	goto	i2l1115
	line	29
	
i2l502:
	line	26
	
i2l1115:
	
	btfss	((c:___awdiv@divisor+1)),c,(15)&7
	goto	i2u23_41
	goto	i2u23_40
i2u23_41:
	goto	i2l1113
i2u23_40:
	goto	i2l1117
	
i2l504:
	goto	i2l1117
	line	30
	
i2l505:
	line	31
	
i2l1117:
	bcf	status,0
	rlcf	((c:___awdiv@quotient)),c
	rlcf	((c:___awdiv@quotient+1)),c
	line	32
	
i2l1119:
	movf	((c:___awdiv@divisor)),c,w
	subwf	((c:___awdiv@dividend)),c,w
	movf	((c:___awdiv@divisor+1)),c,w
	subwfb	((c:___awdiv@dividend+1)),c,w
	btfss	status,0
	goto	i2u24_41
	goto	i2u24_40
i2u24_41:
	goto	i2l1125
i2u24_40:
	line	33
	
i2l1121:
	movf	((c:___awdiv@divisor)),c,w
	subwf	((c:___awdiv@dividend)),c
	movf	((c:___awdiv@divisor+1)),c,w
	subwfb	((c:___awdiv@dividend+1)),c

	line	34
	
i2l1123:
	bsf	(0+(0/8)+(c:___awdiv@quotient)),c,(0)&7
	goto	i2l1125
	line	35
	
i2l506:
	line	36
	
i2l1125:
	bcf	status,0
	rrcf	((c:___awdiv@divisor+1)),c
	rrcf	((c:___awdiv@divisor)),c
	line	37
	
i2l1127:
	decfsz	((c:___awdiv@counter)),c
	
	goto	i2l1117
	goto	i2l1129
	
i2l507:
	goto	i2l1129
	line	38
	
i2l501:
	line	39
	
i2l1129:
	movf	((c:___awdiv@sign)),c,w
	btfsc	status,2
	goto	i2u25_41
	goto	i2u25_40
i2u25_41:
	goto	i2l1133
i2u25_40:
	line	40
	
i2l1131:
	negf	((c:___awdiv@quotient)),c
	comf	((c:___awdiv@quotient+1)),c
	btfsc	status,0
	incf	((c:___awdiv@quotient+1)),c
	goto	i2l1133
	
i2l508:
	line	41
	
i2l1133:
	movff	(c:___awdiv@quotient),(c:?___awdiv)
	movff	(c:___awdiv@quotient+1),(c:?___awdiv+1)
	goto	i2l509
	
i2l1135:
	line	42
	
i2l509:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_LCDGotoXY

;; *************** function _LCDGotoXY *****************
;; Defined at:
;;		line 353 in file "E:\Study Material\XC8 PROJECTS\RTC Library\lcd_hd44780_pic16.c"
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
;;		i2_LCDByte
;; This function is called by:
;;		_One_Sec
;; This function uses a non-reentrant model
;;
psect	text23,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\RTC Library\lcd_hd44780_pic16.c"
	line	353
global __ptext23
__ptext23:
psect	text23
	file	"E:\Study Material\XC8 PROJECTS\RTC Library\lcd_hd44780_pic16.c"
	line	353
	global	__size_of_LCDGotoXY
	__size_of_LCDGotoXY	equ	__end_of_LCDGotoXY-_LCDGotoXY
	
_LCDGotoXY:
;incstack = 0
	opt	stack 24
	dw	0FFFFh
;LCDGotoXY@x stored from wreg
	movwf	((c:LCDGotoXY@x)),c
	line	355
	
i2l1767:
;lcd_hd44780_pic16.c: 355: if(x>=20) return;
	movlw	(014h-1)
	cpfsgt	((c:LCDGotoXY@x)),c
	goto	i2u103_41
	goto	i2u103_40
i2u103_41:
	goto	i2l1779
i2u103_40:
	goto	i2l63
	
i2l1769:
	goto	i2l63
	
i2l62:
	line	359
;lcd_hd44780_pic16.c: 359: switch(y)
	goto	i2l1779
	line	361
;lcd_hd44780_pic16.c: 360: {
;lcd_hd44780_pic16.c: 361: case 0:
	
i2l65:
	line	362
;lcd_hd44780_pic16.c: 362: break;
	goto	i2l1781
	line	363
;lcd_hd44780_pic16.c: 363: case 1:
	
i2l67:
	line	364
	
i2l1771:
;lcd_hd44780_pic16.c: 364: x|=0b01000000;
	bsf	(0+(6/8)+(c:LCDGotoXY@x)),c,(6)&7
	line	365
;lcd_hd44780_pic16.c: 365: break;
	goto	i2l1781
	line	366
;lcd_hd44780_pic16.c: 366: case 2:
	
i2l68:
	line	367
	
i2l1773:
;lcd_hd44780_pic16.c: 367: x+=0x14;
	movlw	(014h)&0ffh
	addwf	((c:LCDGotoXY@x)),c
	line	368
;lcd_hd44780_pic16.c: 368: break;
	goto	i2l1781
	line	369
;lcd_hd44780_pic16.c: 369: case 3:
	
i2l69:
	line	370
	
i2l1775:
;lcd_hd44780_pic16.c: 370: x+=0x54;
	movlw	(054h)&0ffh
	addwf	((c:LCDGotoXY@x)),c
	line	371
;lcd_hd44780_pic16.c: 371: break;
	goto	i2l1781
	line	372
	
i2l1777:
;lcd_hd44780_pic16.c: 372: }
	goto	i2l1781
	line	359
	
i2l64:
	
i2l1779:
	movf	((c:LCDGotoXY@y)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	i2l1781
	xorlw	1^0	; case 1
	skipnz
	goto	i2l1771
	xorlw	2^1	; case 2
	skipnz
	goto	i2l1773
	xorlw	3^2	; case 3
	skipnz
	goto	i2l1775
	goto	i2l1781

	line	372
	
i2l66:
	line	394
	
i2l1781:
;lcd_hd44780_pic16.c: 394: x|=0b10000000;
	bsf	(0+(7/8)+(c:LCDGotoXY@x)),c,(7)&7
	line	395
	
i2l1783:
;lcd_hd44780_pic16.c: 395: (LCDByte(x,0));
	movlw	low(0)
	movwf	((c:i2LCDByte@isdata)),c
	movf	((c:LCDGotoXY@x)),c,w
	
	call	i2_LCDByte
	line	396
	
i2l63:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_LCDGotoXY
	__end_of_LCDGotoXY:
	signat	_LCDGotoXY,8312
	global	i2_LCDByte

;; *************** function i2_LCDByte *****************
;; Defined at:
;;		line 81 in file "E:\Study Material\XC8 PROJECTS\RTC Library\lcd_hd44780_pic16.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;;  isdata          1    3[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    5[COMRAM] unsigned char 
;;  LCDByte         1    8[COMRAM] unsigned char 
;;  LCDByte         1    7[COMRAM] unsigned char 
;;  LCDByte         1    6[COMRAM] unsigned char 
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
;;		i2_LCDBusyLoop
;; This function is called by:
;;		_LCDWriteInt
;;		_LCDGotoXY
;;		_One_Sec
;;		i2_LCDWriteString
;; This function uses a non-reentrant model
;;
psect	text24,class=CODE,space=0,reloc=2
	line	81
global __ptext24
__ptext24:
psect	text24
	file	"E:\Study Material\XC8 PROJECTS\RTC Library\lcd_hd44780_pic16.c"
	line	81
	global	__size_ofi2_LCDByte
	__size_ofi2_LCDByte	equ	__end_ofi2_LCDByte-i2_LCDByte
	
i2_LCDByte:
;incstack = 0
	opt	stack 24
	dw	0FFFFh
;i2LCDByte@c stored from wreg
	movwf	((c:i2LCDByte@c)),c
	line	93
	
i2l1657:
;lcd_hd44780_pic16.c: 90: uint8_t hn,ln;
;lcd_hd44780_pic16.c: 91: uint8_t temp;
;lcd_hd44780_pic16.c: 93: hn=c>>4;
	swapf	((c:i2LCDByte@c)),c,w
	andlw	(0ffh shr 4) & 0ffh
	movwf	((c:i2LCDByte@hn)),c
	line	94
;lcd_hd44780_pic16.c: 94: ln=(c & 0x0F);
	movf	((c:i2LCDByte@c)),c,w
	andlw	low(0Fh)
	movwf	((c:i2LCDByte@ln)),c
	line	96
	
i2l1659:
;lcd_hd44780_pic16.c: 96: if(isdata==0)
	tstfsz	((c:i2LCDByte@isdata)),c
	goto	i2u87_41
	goto	i2u87_40
i2u87_41:
	goto	i2l21
i2u87_40:
	line	97
	
i2l1661:
;lcd_hd44780_pic16.c: 97: (RB1=0);
	bcf	c:(31753/8),(31753)&7	;volatile
	goto	i2l22
	line	98
	
i2l21:
	line	99
;lcd_hd44780_pic16.c: 98: else
;lcd_hd44780_pic16.c: 99: (RB1=1);
	bsf	c:(31753/8),(31753)&7	;volatile
	
i2l22:
	line	101
;lcd_hd44780_pic16.c: 101: _delay((unsigned long)((0.5)*(10000000/4000000.0)));
	nop
	line	103
;lcd_hd44780_pic16.c: 103: (RB3=1);
	bsf	c:(31755/8),(31755)&7	;volatile
	line	107
	
i2l1663:
;lcd_hd44780_pic16.c: 107: temp=(PORTB & (~(0X0F<<4)))|((hn<<4));
	movff	(c:i2LCDByte@hn),??i2_LCDByte+0+0
	swapf	(??i2_LCDByte+0+0),c
	movlw	(0ffh shl 4) & 0ffh
	andwf	(??i2_LCDByte+0+0),c
	movf	((c:3969)),c,w	;volatile
	andlw	low(0Fh)
	iorwf	(??i2_LCDByte+0+0),c,w
	movwf	((c:i2LCDByte@temp)),c
	line	108
	
i2l1665:
;lcd_hd44780_pic16.c: 108: PORTB=temp;
	movff	(c:i2LCDByte@temp),(c:3969)	;volatile
	line	110
	
i2l1667:
;lcd_hd44780_pic16.c: 110: _delay((unsigned long)((1)*(10000000/4000000.0)));
		nop2	;2 cycle nop

	line	114
	
i2l1669:
;lcd_hd44780_pic16.c: 114: (RB3=0);
	bcf	c:(31755/8),(31755)&7	;volatile
	line	116
	
i2l1671:
;lcd_hd44780_pic16.c: 116: _delay((unsigned long)((1)*(10000000/4000000.0)));
		nop2	;2 cycle nop

	line	119
	
i2l1673:
;lcd_hd44780_pic16.c: 119: (RB3=1);
	bsf	c:(31755/8),(31755)&7	;volatile
	line	121
;lcd_hd44780_pic16.c: 121: temp=(PORTB & (~(0X0F<<4)))|((ln<<4));
	movff	(c:i2LCDByte@ln),??i2_LCDByte+0+0
	swapf	(??i2_LCDByte+0+0),c
	movlw	(0ffh shl 4) & 0ffh
	andwf	(??i2_LCDByte+0+0),c
	movf	((c:3969)),c,w	;volatile
	andlw	low(0Fh)
	iorwf	(??i2_LCDByte+0+0),c,w
	movwf	((c:i2LCDByte@temp)),c
	line	123
	
i2l1675:
;lcd_hd44780_pic16.c: 123: PORTB=temp;
	movff	(c:i2LCDByte@temp),(c:3969)	;volatile
	line	125
	
i2l1677:
;lcd_hd44780_pic16.c: 125: _delay((unsigned long)((1)*(10000000/4000000.0)));
		nop2	;2 cycle nop

	line	129
	
i2l1679:
;lcd_hd44780_pic16.c: 129: (RB3=0);
	bcf	c:(31755/8),(31755)&7	;volatile
	line	131
	
i2l1681:
;lcd_hd44780_pic16.c: 131: _delay((unsigned long)((1)*(10000000/4000000.0)));
		nop2	;2 cycle nop

	line	133
	
i2l1683:
;lcd_hd44780_pic16.c: 133: LCDBusyLoop();
	call	i2_LCDBusyLoop	;wreg free
	line	134
	
i2l23:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_ofi2_LCDByte
	__end_ofi2_LCDByte:
	signat	i2_LCDByte,88
	global	i2_LCDBusyLoop

;; *************** function i2_LCDBusyLoop *****************
;; Defined at:
;;		line 136 in file "E:\Study Material\XC8 PROJECTS\RTC Library\lcd_hd44780_pic16.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  LCDBusyLoop     1    2[COMRAM] unsigned char 
;;  LCDBusyLoop     1    1[COMRAM] unsigned char 
;;  LCDBusyLoop     1    0[COMRAM] unsigned char 
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
;;		i2_LCDByte
;; This function uses a non-reentrant model
;;
psect	text25,class=CODE,space=0,reloc=2
	line	136
global __ptext25
__ptext25:
psect	text25
	file	"E:\Study Material\XC8 PROJECTS\RTC Library\lcd_hd44780_pic16.c"
	line	136
	global	__size_ofi2_LCDBusyLoop
	__size_ofi2_LCDBusyLoop	equ	__end_ofi2_LCDBusyLoop-i2_LCDBusyLoop
	
i2_LCDBusyLoop:
;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	140
	
i2l1605:
;lcd_hd44780_pic16.c: 140: uint8_t busy,status=0x00,temp;
	movlw	low(0)
	movwf	((c:i2LCDBusyLoop@status)),c
	line	143
	
i2l1607:
;lcd_hd44780_pic16.c: 143: TRISB|=(0x0f<<4);
	movlw	(0F0h)&0ffh
	iorwf	((c:3987)),c	;volatile
	line	146
	
i2l1609:
;lcd_hd44780_pic16.c: 146: (RB2=1);
	bsf	c:(31754/8),(31754)&7	;volatile
	line	147
	
i2l1611:
;lcd_hd44780_pic16.c: 147: (RB1=0);
	bcf	c:(31753/8),(31753)&7	;volatile
	line	151
	
i2l1613:
;lcd_hd44780_pic16.c: 151: _delay((unsigned long)((0.5)*(10000000/4000000.0)));
	nop
	goto	i2l1615
	line	154
;lcd_hd44780_pic16.c: 154: do
	
i2l26:
	line	157
	
i2l1615:
;lcd_hd44780_pic16.c: 155: {
;lcd_hd44780_pic16.c: 157: (RB3=1);
	bsf	c:(31755/8),(31755)&7	;volatile
	line	160
	
i2l1617:
;lcd_hd44780_pic16.c: 160: _delay((unsigned long)((0.5)*(10000000/4000000.0)));
	nop
	line	162
	
i2l1619:
;lcd_hd44780_pic16.c: 162: status=(PORTB>>4);
	swapf	((c:3969)),c,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	movwf	((c:i2LCDBusyLoop@status)),c
	line	163
	
i2l1621:
;lcd_hd44780_pic16.c: 163: status=status<<4;
	swapf	((c:i2LCDBusyLoop@status)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:i2LCDBusyLoop@status)),c
	line	165
	
i2l1623:
;lcd_hd44780_pic16.c: 165: _delay((unsigned long)((0.5)*(10000000/4000000.0)));
	nop
	line	168
	
i2l1625:
;lcd_hd44780_pic16.c: 168: (RB3=0);
	bcf	c:(31755/8),(31755)&7	;volatile
	line	169
	
i2l1627:
;lcd_hd44780_pic16.c: 169: _delay((unsigned long)((1)*(10000000/4000000.0)));
		nop2	;2 cycle nop

	line	171
	
i2l1629:
;lcd_hd44780_pic16.c: 171: (RB3=1);
	bsf	c:(31755/8),(31755)&7	;volatile
	line	172
	
i2l1631:
;lcd_hd44780_pic16.c: 172: _delay((unsigned long)((0.5)*(10000000/4000000.0)));
	nop
	line	174
	
i2l1633:
;lcd_hd44780_pic16.c: 174: temp=(PORTB>>4);
	swapf	((c:3969)),c,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	movwf	((c:i2LCDBusyLoop@temp)),c
	line	175
	
i2l1635:
;lcd_hd44780_pic16.c: 175: temp&=0x0F;
	movlw	(0Fh)&0ffh
	andwf	((c:i2LCDBusyLoop@temp)),c
	line	177
	
i2l1637:
;lcd_hd44780_pic16.c: 177: status=status|temp;
	movf	((c:i2LCDBusyLoop@status)),c,w
	iorwf	((c:i2LCDBusyLoop@temp)),c,w
	movwf	((c:i2LCDBusyLoop@status)),c
	line	179
	
i2l1639:
;lcd_hd44780_pic16.c: 179: busy=status & 0b10000000;
	movf	((c:i2LCDBusyLoop@status)),c,w
	andlw	low(080h)
	movwf	((c:i2LCDBusyLoop@busy)),c
	line	181
	
i2l1641:
;lcd_hd44780_pic16.c: 181: _delay((unsigned long)((0.5)*(10000000/4000000.0)));
	nop
	line	183
	
i2l1643:
;lcd_hd44780_pic16.c: 183: (RB3=0);
	bcf	c:(31755/8),(31755)&7	;volatile
	line	184
	
i2l1645:
;lcd_hd44780_pic16.c: 184: _delay((unsigned long)((1)*(10000000/4000000.0)));
		nop2	;2 cycle nop

	line	185
	
i2l1647:
;lcd_hd44780_pic16.c: 185: }while(busy);
	tstfsz	((c:i2LCDBusyLoop@busy)),c
	goto	i2u84_41
	goto	i2u84_40
i2u84_41:
	goto	i2l1615
i2u84_40:
	
i2l27:
	line	187
;lcd_hd44780_pic16.c: 187: (RB2=0);
	bcf	c:(31754/8),(31754)&7	;volatile
	line	190
	
i2l1649:
;lcd_hd44780_pic16.c: 190: TRISB&=(~(0x0F<<4));
	movlw	(0Fh)&0ffh
	andwf	((c:3987)),c	;volatile
	line	192
	
i2l28:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_ofi2_LCDBusyLoop
	__end_ofi2_LCDBusyLoop:
	signat	i2_LCDBusyLoop,88
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

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
	FNCALL	_main,_LCDWriteInt
	FNCALL	_main,_LCDWriteString
	FNCALL	_main,_MyDelay
	FNCALL	_main,_RTUInit
	FNCALL	_main,_beep
	FNCALL	_main,_data_to_center
	FNCALL	_main,_ds1307_get_time
	FNCALL	_main,_getkey
	FNCALL	_main,_getting_data
	FNCALL	_main,_local_display
	FNCALL	_main,_rtc_setting
	FNCALL	_rtc_setting,_Clear_Packet
	FNCALL	_rtc_setting,_Creat_RTC_Packet
	FNCALL	_rtc_setting,_LCDByte
	FNCALL	_rtc_setting,_LCDGotoXY
	FNCALL	_rtc_setting,_LCDWriteInt
	FNCALL	_rtc_setting,_LCDWriteString
	FNCALL	_rtc_setting,_MyDelay
	FNCALL	_rtc_setting,_Receive_Packet
	FNCALL	_rtc_setting,_Write_b_eep
	FNCALL	_rtc_setting,_ds1307_get_time
	FNCALL	_rtc_setting,_ds1307_set_date_time
	FNCALL	_rtc_setting,_tx_packet
	FNCALL	_local_display,_LCDByte
	FNCALL	_local_display,_LCDGotoXY
	FNCALL	_local_display,_LCDWriteInt
	FNCALL	_local_display,_LCDWriteString
	FNCALL	_LCDWriteInt,_LCDByte
	FNCALL	_LCDWriteInt,___awdiv
	FNCALL	_LCDWriteInt,___awmod
	FNCALL	_getting_data,_Clear_Packet
	FNCALL	_getting_data,_Creat_RTC_Packet
	FNCALL	_getting_data,_LCDByte
	FNCALL	_getting_data,_LCDGotoXY
	FNCALL	_getting_data,_LCDWriteString
	FNCALL	_getting_data,_MyDelay
	FNCALL	_getting_data,_Receive_Packet
	FNCALL	_getting_data,_Write_b_eep
	FNCALL	_getting_data,_tx_packet
	FNCALL	_getting_data,_write_packet_to_page
	FNCALL	_write_packet_to_page,_rom_byte_write
	FNCALL	_rom_byte_write,_IdleI2C
	FNCALL	_rom_byte_write,_WriteI2C
	FNCALL	_Receive_Packet,_Check_CRC
	FNCALL	_Receive_Packet,_Eco_Replay
	FNCALL	_Receive_Packet,_LCDByte
	FNCALL	_Receive_Packet,_LCDWriteString
	FNCALL	_Receive_Packet,_USARTDataAvailable
	FNCALL	_Receive_Packet,_USARTFlushBuffer
	FNCALL	_Receive_Packet,_USARTReadData
	FNCALL	_Receive_Packet,_USARTWriteChar
	FNCALL	_Eco_Replay,_LCDByte
	FNCALL	_Eco_Replay,_LCDWriteString
	FNCALL	_Eco_Replay,_USARTDataAvailable
	FNCALL	_Eco_Replay,_USARTFlushBuffer
	FNCALL	_Eco_Replay,_USARTReadData
	FNCALL	_Eco_Replay,_USARTWriteChar
	FNCALL	_LCDGotoXY,_LCDByte
	FNCALL	_Creat_RTC_Packet,_Calculate_CRC
	FNCALL	_Creat_RTC_Packet,_Clear_Packet
	FNCALL	_Creat_RTC_Packet,_Creat_Packet
	FNCALL	_Creat_RTC_Packet,_Read_b_eep
	FNCALL	_data_to_center,_Clear_Packet
	FNCALL	_data_to_center,_LCDByte
	FNCALL	_data_to_center,_LCDWriteString
	FNCALL	_data_to_center,_MyDelay
	FNCALL	_data_to_center,_Write_b_eep
	FNCALL	_data_to_center,_clear_rom
	FNCALL	_data_to_center,_read_packet_from_page
	FNCALL	_data_to_center,_tx_packet
	FNCALL	_tx_packet,_LCDByte
	FNCALL	_tx_packet,_LCDWriteString
	FNCALL	_tx_packet,_MyDelay
	FNCALL	_tx_packet,_Send_Packet
	FNCALL	_Send_Packet,_Eco_Test
	FNCALL	_Send_Packet,_LCDByte
	FNCALL	_Send_Packet,_LCDWriteString
	FNCALL	_Send_Packet,_USARTDataAvailable
	FNCALL	_Send_Packet,_USARTFlushBuffer
	FNCALL	_Send_Packet,_USARTReadData
	FNCALL	_Send_Packet,_USARTWriteChar
	FNCALL	_Eco_Test,_Check_Busy_Line
	FNCALL	_Eco_Test,_LCDByte
	FNCALL	_Eco_Test,_LCDWriteString
	FNCALL	_Eco_Test,_USARTDataAvailable
	FNCALL	_Eco_Test,_USARTFlushBuffer
	FNCALL	_Eco_Test,_USARTReadData
	FNCALL	_Eco_Test,_USARTWriteChar
	FNCALL	_LCDWriteString,_LCDByte
	FNCALL	_Check_Busy_Line,_USARTDataAvailable
	FNCALL	_Check_Busy_Line,_USARTFlushBuffer
	FNCALL	_USARTFlushBuffer,_USARTDataAvailable
	FNCALL	_USARTFlushBuffer,_USARTReadData
	FNCALL	_read_packet_from_page,_rom_byte_read
	FNCALL	_rom_byte_read,_IdleI2C
	FNCALL	_rom_byte_read,_ReadI2C
	FNCALL	_rom_byte_read,_WriteI2C
	FNCALL	_clear_rom,_IdleI2C
	FNCALL	_clear_rom,_WriteI2C
	FNCALL	_beep,_MyDelay
	FNCALL	_RTUInit,_LCDByte
	FNCALL	_RTUInit,_LCDInit
	FNCALL	_RTUInit,_MyDelay
	FNCALL	_RTUInit,_OpenI2C
	FNCALL	_RTUInit,_Read_b_eep
	FNCALL	_RTUInit,_USARTInit
	FNCALL	_RTUInit,_Write_b_eep
	FNCALL	_RTUInit,_ds1307_get_date
	FNCALL	_RTUInit,_ds1307_get_time
	FNCALL	_RTUInit,_ds1307_init
	FNCALL	_RTUInit,_ds1307_set_date_time
	FNCALL	_ds1307_set_date_time,_IdleI2C
	FNCALL	_ds1307_set_date_time,_WriteI2C
	FNCALL	_ds1307_set_date_time,_bin2bcd
	FNCALL	_ds1307_init,_IdleI2C
	FNCALL	_ds1307_init,_ReadI2C
	FNCALL	_ds1307_init,_WriteI2C
	FNCALL	_ds1307_init,_bcd2bin
	FNCALL	_ds1307_init,_bin2bcd
	FNCALL	_ds1307_get_time,_IdleI2C
	FNCALL	_ds1307_get_time,_ReadI2C
	FNCALL	_ds1307_get_time,_WriteI2C
	FNCALL	_ds1307_get_time,_bcd2bin
	FNCALL	_ds1307_get_date,_IdleI2C
	FNCALL	_ds1307_get_date,_ReadI2C
	FNCALL	_ds1307_get_date,_WriteI2C
	FNCALL	_ds1307_get_date,_bcd2bin
	FNCALL	_WriteI2C,_IdleI2C
	FNCALL	_LCDInit,_LCDBusyLoop
	FNCALL	_LCDInit,_LCDByte
	FNCALL	_LCDByte,_LCDBusyLoop
	FNROOT	_main
	FNCALL	_ISR,_SecondsInt
	FNCALL	_ISR,_USARTHandleRxInt
	FNCALL	intlevel2,_ISR
	global	intlevel2
	FNROOT	intlevel2
	global	___cgram
psect	idataCOMRAM,class=CODE,space=0,delta=1,noexec
global __pidataCOMRAM
__pidataCOMRAM:
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\custom_char.h"
	line	8

;initializer for ___cgram
	db	low(0Ch)
	db	low(012h)
	db	low(012h)
	db	low(0Ch)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
psect	mediumconst,class=MEDIUMCONST,space=0,reloc=2,noexec
global __pmediumconst
__pmediumconst:
	db	0
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\exp.c"
	line	17
exp@coeff:
	db	low(float24(1.0000000000000000))
	db	high(float24(1.0000000000000000))
	db	low highword(float24(1.0000000000000000))
	db	low(float24(0.69314718056000002))
	db	high(float24(0.69314718056000002))
	db	low highword(float24(0.69314718056000002))
	db	low(float24(0.24022650695000000))
	db	high(float24(0.24022650695000000))
	db	low highword(float24(0.24022650695000000))
	db	low(float24(0.055504108944999998))
	db	high(float24(0.055504108944999998))
	db	low highword(float24(0.055504108944999998))
	db	low(float24(0.0096181261778999997))
	db	high(float24(0.0096181261778999997))
	db	low highword(float24(0.0096181261778999997))
	db	low(float24(0.0013333710529000000))
	db	high(float24(0.0013333710529000000))
	db	low highword(float24(0.0013333710529000000))
	db	low(float24(0.00015399104432000000))
	db	high(float24(0.00015399104432000000))
	db	low highword(float24(0.00015399104432000000))
	db	low(float24(1.5327675256999998e-005))
	db	high(float24(1.5327675256999998e-005))
	db	low highword(float24(1.5327675256999998e-005))
	db	low(float24(1.2485143336000000e-006))
	db	high(float24(1.2485143336000000e-006))
	db	low highword(float24(1.2485143336000000e-006))
	db	low(float24(1.3908092220999999e-007))
	db	high(float24(1.3908092220999999e-007))
	db	low highword(float24(1.3908092220999999e-007))
	global __end_ofexp@coeff
__end_ofexp@coeff:
psect	mediumconst
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\log.c"
	line	9
log@coeff:
	db	low(float24(0.0000000000000000))
	db	high(float24(0.0000000000000000))
	db	low highword(float24(0.0000000000000000))
	db	low(float24(0.99999642389999999))
	db	high(float24(0.99999642389999999))
	db	low highword(float24(0.99999642389999999))
	db	low(float24(-0.49987412380000001))
	db	high(float24(-0.49987412380000001))
	db	low highword(float24(-0.49987412380000001))
	db	low(float24(0.33179902579999998))
	db	high(float24(0.33179902579999998))
	db	low highword(float24(0.33179902579999998))
	db	low(float24(-0.24073380840000000))
	db	high(float24(-0.24073380840000000))
	db	low highword(float24(-0.24073380840000000))
	db	low(float24(0.16765407110000000))
	db	high(float24(0.16765407110000000))
	db	low highword(float24(0.16765407110000000))
	db	low(float24(-0.095329389700000003))
	db	high(float24(-0.095329389700000003))
	db	low highword(float24(-0.095329389700000003))
	db	low(float24(0.036088493700000002))
	db	high(float24(0.036088493700000002))
	db	low highword(float24(0.036088493700000002))
	db	low(float24(-0.0064535442000000004))
	db	high(float24(-0.0064535442000000004))
	db	low highword(float24(-0.0064535442000000004))
	global __end_oflog@coeff
__end_oflog@coeff:
	global	LCDWriteInt@F3701
	global	USARTWriteInt@F3686
	global	_Current_Read_Page
	global	_Current_Write_Page
	global	_Hum1
	global	_Hum2
	global	_Read_Page1
	global	_Read_Page2
	global	_Temp1
	global	_Temp2
	global	_Write_Page1
	global	_Write_Page2
	global	_errno
	global	_Current_Pos
	global	_Data_End
	global	_Destination_ID
	global	_Destination_ID1
	global	_Destination_ID2
	global	_Master_ID
	global	_Source_ID
	global	_UQEnd
	global	_UQFront
	global	_c
	global	_day
	global	_device
	global	_dow
	global	_hr
	global	_min
	global	_min_flag
	global	_month
	global	_sec
	global	_sec_flag
	global	_seconds
	global	_year
	global	_PACKET
	global	_URBuff
	global	_ADCON0
_ADCON0	set	0xFC2
	global	_ADCON0bits
_ADCON0bits	set	0xFC2
	global	_ADCON1
_ADCON1	set	0xFC1
	global	_ADRESH
_ADRESH	set	0xFC4
	global	_ADRESL
_ADRESL	set	0xFC3
	global	_EEADR
_EEADR	set	0xFA9
	global	_EECON1bits
_EECON1bits	set	0xFA6
	global	_EECON2
_EECON2	set	0xFA7
	global	_EEDATA
_EEDATA	set	0xFA8
	global	_INTCONbits
_INTCONbits	set	0xFF2
	global	_PIE1bits
_PIE1bits	set	0xF9D
	global	_PIR1bits
_PIR1bits	set	0xF9E
	global	_PORTB
_PORTB	set	0xF81
	global	_RCREG
_RCREG	set	0xFAE
	global	_RCSTAbits
_RCSTAbits	set	0xFAB
	global	_SPBRG
_SPBRG	set	0xFAF
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
	global	_TRISA
_TRISA	set	0xF92
	global	_TRISB
_TRISB	set	0xF93
	global	_TRISC
_TRISC	set	0xF94
	global	_TRISCbits
_TRISCbits	set	0xF94
	global	_TRISD
_TRISD	set	0xF95
	global	_TRISDbits
_TRISDbits	set	0xF95
	global	_TRISE
_TRISE	set	0xF96
	global	_TXREG
_TXREG	set	0xFAD
	global	_TXSTAbits
_TXSTAbits	set	0xFAC
	global	_INT0IE
_INT0IE	set	0x7F94
	global	_INT0IF
_INT0IF	set	0x7F91
	global	_INTEDG0
_INTEDG0	set	0x7F8E
	global	_PEIE
_PEIE	set	0x7F96
	global	_RB1
_RB1	set	0x7C09
	global	_RC0
_RC0	set	0x7C10
	global	_RC1
_RC1	set	0x7C11
	global	_RC2
_RC2	set	0x7C12
	global	_RC5
_RC5	set	0x7C15
	global	_RCIE
_RCIE	set	0x7CED
	global	_RCIF
_RCIF	set	0x7CF5
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
	global	_RE0
_RE0	set	0x7C20
	global	_RE1
_RE1	set	0x7C21
	global	_RE2
_RE2	set	0x7C22
	global __stringdata
__stringdata:
	
STR_14:
	db	87	;'W'
	db	82	;'R'
	db	79	;'O'
	db	78	;'N'
	db	71	;'G'
	db	32
	db	80	;'P'
	db	65	;'A'
	db	67	;'C'
	db	75	;'K'
	db	69	;'E'
	db	84	;'T'
	db	32
	db	82	;'R'
	db	69	;'E'
	db	67	;'C'
	db	69	;'E'
	db	73	;'I'
	db	86	;'V'
	db	69	;'E'
	db	68	;'D'
	db	32
	db	0
	
STR_61:
	db	85	;'U'
	db	80	;'P'
	db	68	;'D'
	db	65	;'A'
	db	84	;'T'
	db	69	;'E'
	db	32
	db	67	;'C'
	db	79	;'O'
	db	77	;'M'
	db	80	;'P'
	db	76	;'L'
	db	69	;'E'
	db	84	;'T'
	db	69	;'E'
	db	68	;'D'
	db	46
	db	46
	db	46
	db	33
	db	0
	
STR_59:
	db	85	;'U'
	db	80	;'P'
	db	68	;'D'
	db	65	;'A'
	db	84	;'T'
	db	73	;'I'
	db	78	;'N'
	db	71	;'G'
	db	32
	db	84	;'T'
	db	72	;'H'
	db	82	;'R'
	db	69	;'E'
	db	83	;'S'
	db	72	;'H'
	db	79	;'O'
	db	76	;'L'
	db	68	;'D'
	db	83	;'S'
	db	0
	
STR_12:
	db	67	;'C'
	db	72	;'H'
	db	65	;'A'
	db	82	;'R'
	db	65	;'A'
	db	67	;'C'
	db	84	;'T'
	db	69	;'E'
	db	82	;'R'
	db	32
	db	82	;'R'
	db	69	;'E'
	db	67	;'C'
	db	69	;'E'
	db	73	;'I'
	db	86	;'V'
	db	69	;'E'
	db	68	;'D'
	db	32
	db	0
	
STR_76:
	db	87	;'W'
	db	73	;'I'
	db	82	;'R'
	db	69	;'E'
	db	76	;'L'
	db	69	;'E'
	db	83	;'S'
	db	83	;'S'
	db	32
	db	70	;'F'
	db	65	;'A'
	db	73	;'I'
	db	76	;'L'
	db	68	;'D'
	db	46
	db	46
	db	46
	db	33
	db	0
	
STR_54:
	db	82	;'R'
	db	69	;'E'
	db	81	;'Q'
	db	85	;'U'
	db	69	;'E'
	db	83	;'S'
	db	84	;'T'
	db	73	;'I'
	db	78	;'N'
	db	71	;'G'
	db	32
	db	82	;'R'
	db	84	;'T'
	db	67	;'C'
	db	46
	db	46
	db	46
	db	0
	
STR_66:
	db	82	;'R'
	db	69	;'E'
	db	65	;'A'
	db	68	;'D'
	db	73	;'I'
	db	78	;'N'
	db	71	;'G'
	db	32
	db	69	;'E'
	db	69	;'E'
	db	80	;'P'
	db	82	;'R'
	db	79	;'O'
	db	77	;'M'
	db	46
	db	46
	db	46
	db	0
	
STR_41:
	db	87	;'W'
	db	82	;'R'
	db	73	;'I'
	db	84	;'T'
	db	73	;'I'
	db	78	;'N'
	db	71	;'G'
	db	32
	db	69	;'E'
	db	69	;'E'
	db	80	;'P'
	db	82	;'R'
	db	79	;'O'
	db	77	;'M'
	db	46
	db	46
	db	46
	db	0
	
STR_18:
	db	80	;'P'
	db	114	;'r'
	db	101	;'e'
	db	115	;'s'
	db	115	;'s'
	db	32
	db	97	;'a'
	db	32
	db	83	;'S'
	db	119	;'w'
	db	105	;'i'
	db	116	;'t'
	db	99	;'c'
	db	104	;'h'
	db	46
	db	46
	db	46
	db	0
	
STR_7:
	db	69	;'E'
	db	67	;'C'
	db	79	;'O'
	db	32
	db	78	;'N'
	db	79	;'O'
	db	84	;'T'
	db	32
	db	82	;'R'
	db	69	;'E'
	db	67	;'C'
	db	69	;'E'
	db	73	;'I'
	db	86	;'V'
	db	69	;'E'
	db	68	;'D'
	db	32
	db	0
	
STR_15:
	db	67	;'C'
	db	72	;'H'
	db	65	;'A'
	db	82	;'R'
	db	65	;'A'
	db	67	;'C'
	db	84	;'T'
	db	69	;'E'
	db	82	;'R'
	db	32
	db	84	;'T'
	db	73	;'I'
	db	77	;'M'
	db	69	;'E'
	db	79	;'O'
	db	85	;'U'
	db	84	;'T'
	db	0
	
STR_51:
	db	82	;'R'
	db	69	;'E'
	db	83	;'S'
	db	69	;'E'
	db	84	;'T'
	db	32
	db	67	;'C'
	db	79	;'O'
	db	77	;'M'
	db	80	;'P'
	db	76	;'L'
	db	69	;'E'
	db	84	;'T'
	db	69	;'E'
	db	68	;'D'
	db	33
	db	0
	
STR_65:
	db	78	;'N'
	db	79	;'O'
	db	84	;'T'
	db	72	;'H'
	db	73	;'I'
	db	78	;'N'
	db	71	;'G'
	db	32
	db	84	;'T'
	db	79	;'O'
	db	32
	db	83	;'S'
	db	69	;'E'
	db	78	;'N'
	db	68	;'D'
	db	33
	db	0
	
STR_71:
	db	70	;'F'
	db	79	;'O'
	db	82	;'R'
	db	77	;'M'
	db	65	;'A'
	db	84	;'T'
	db	32
	db	67	;'C'
	db	79	;'O'
	db	77	;'M'
	db	80	;'P'
	db	76	;'L'
	db	69	;'E'
	db	84	;'T'
	db	69	;'E'
	db	33
	db	0
	
STR_33:
	db	87	;'W'
	db	65	;'A'
	db	73	;'I'
	db	84	;'T'
	db	73	;'I'
	db	78	;'N'
	db	71	;'G'
	db	32
	db	70	;'F'
	db	79	;'O'
	db	82	;'R'
	db	32
	db	68	;'D'
	db	65	;'A'
	db	84	;'T'
	db	65	;'A'
	db	0
	
STR_17:
	db	87	;'W'
	db	101	;'e'
	db	108	;'l'
	db	99	;'c'
	db	111	;'o'
	db	109	;'m'
	db	101	;'e'
	db	32
	db	116	;'t'
	db	111	;'o'
	db	32
	db	67	;'C'
	db	69	;'E'
	db	78	;'N'
	db	84	;'T'
	db	82	;'R'
	db	0
	
STR_36:
	db	83	;'S'
	db	69	;'E'
	db	78	;'N'
	db	68	;'D'
	db	73	;'I'
	db	78	;'N'
	db	71	;'G'
	db	32
	db	83	;'S'
	db	69	;'E'
	db	84	;'T'
	db	84	;'T'
	db	73	;'I'
	db	78	;'N'
	db	71	;'G'
	db	83	;'S'
	db	0
	
STR_60:
	db	85	;'U'
	db	80	;'P'
	db	68	;'D'
	db	65	;'A'
	db	84	;'T'
	db	73	;'I'
	db	78	;'N'
	db	71	;'G'
	db	32
	db	84	;'T'
	db	82	;'R'
	db	73	;'I'
	db	71	;'G'
	db	69	;'E'
	db	82	;'R'
	db	83	;'S'
	db	0
	
STR_70:
	db	70	;'F'
	db	79	;'O'
	db	82	;'R'
	db	77	;'M'
	db	65	;'A'
	db	84	;'T'
	db	73	;'I'
	db	78	;'N'
	db	71	;'G'
	db	32
	db	77	;'M'
	db	69	;'E'
	db	77	;'M'
	db	79	;'O'
	db	82	;'R'
	db	89	;'Y'
	db	0
	
STR_49:
	db	82	;'R'
	db	69	;'E'
	db	83	;'S'
	db	69	;'E'
	db	84	;'T'
	db	84	;'T'
	db	73	;'I'
	db	78	;'N'
	db	71	;'G'
	db	32
	db	77	;'M'
	db	69	;'E'
	db	77	;'M'
	db	79	;'O'
	db	82	;'R'
	db	89	;'Y'
	db	0
	
STR_5:
	db	87	;'W'
	db	65	;'A'
	db	73	;'I'
	db	84	;'T'
	db	73	;'I'
	db	78	;'N'
	db	71	;'G'
	db	32
	db	70	;'F'
	db	79	;'O'
	db	82	;'R'
	db	32
	db	69	;'E'
	db	67	;'C'
	db	79	;'O'
	db	32
	db	0
	
STR_10:
	db	80	;'P'
	db	65	;'A'
	db	67	;'C'
	db	75	;'K'
	db	69	;'E'
	db	84	;'T'
	db	32
	db	68	;'D'
	db	69	;'E'
	db	76	;'L'
	db	73	;'I'
	db	86	;'V'
	db	69	;'E'
	db	82	;'R'
	db	69	;'E'
	db	68	;'D'
	db	0
	
STR_42:
	db	77	;'M'
	db	69	;'E'
	db	77	;'M'
	db	79	;'O'
	db	82	;'R'
	db	89	;'Y'
	db	32
	db	70	;'F'
	db	85	;'U'
	db	76	;'L'
	db	76	;'L'
	db	46
	db	46
	db	46
	db	33
	db	0
	
STR_67:
	db	84	;'T'
	db	82	;'R'
	db	65	;'A'
	db	78	;'N'
	db	83	;'S'
	db	77	;'M'
	db	73	;'I'
	db	84	;'T'
	db	84	;'T'
	db	73	;'I'
	db	78	;'N'
	db	71	;'G'
	db	46
	db	46
	db	46
	db	0
	
STR_39:
	db	80	;'P'
	db	65	;'A'
	db	67	;'C'
	db	75	;'K'
	db	69	;'E'
	db	84	;'T'
	db	32
	db	82	;'R'
	db	69	;'E'
	db	67	;'C'
	db	69	;'E'
	db	73	;'I'
	db	86	;'V'
	db	69	;'E'
	db	68	;'D'
	db	0
	
STR_28:
	db	70	;'F'
	db	79	;'O'
	db	82	;'R'
	db	32
	db	82	;'R'
	db	84	;'T'
	db	85	;'U'
	db	46
	db	32
	db	80	;'P'
	db	65	;'A'
	db	67	;'C'
	db	75	;'K'
	db	69	;'E'
	db	84	;'T'
	db	0
	
STR_24:
	db	65	;'A'
	db	78	;'N'
	db	68	;'D'
	db	32
	db	82	;'R'
	db	84	;'T'
	db	67	;'C'
	db	32
	db	68	;'D'
	db	73	;'I'
	db	83	;'S'
	db	80	;'P'
	db	76	;'L'
	db	65	;'A'
	db	89	;'Y'
	db	0
	
STR_3:
	db	69	;'E'
	db	67	;'C'
	db	79	;'O'
	db	32
	db	83	;'S'
	db	85	;'U'
	db	67	;'C'
	db	67	;'C'
	db	69	;'E'
	db	83	;'S'
	db	83	;'S'
	db	70	;'F'
	db	85	;'U'
	db	76	;'L'
	db	32
	db	0
	
STR_8:
	db	83	;'S'
	db	69	;'E'
	db	78	;'N'
	db	68	;'D'
	db	73	;'I'
	db	78	;'N'
	db	71	;'G'
	db	32
	db	80	;'P'
	db	65	;'A'
	db	67	;'C'
	db	75	;'K'
	db	69	;'E'
	db	84	;'T'
	db	32
	db	0
	
STR_30:
	db	70	;'F'
	db	79	;'O'
	db	82	;'R'
	db	32
	db	70	;'F'
	db	85	;'U'
	db	84	;'T'
	db	85	;'U'
	db	82	;'R'
	db	69	;'E'
	db	32
	db	85	;'U'
	db	83	;'S'
	db	69	;'E'
	db	0
	
STR_27:
	db	77	;'M'
	db	79	;'O'
	db	68	;'D'
	db	69	;'E'
	db	32
	db	61	;'='
	db	32
	db	87	;'W'
	db	65	;'A'
	db	73	;'I'
	db	84	;'T'
	db	73	;'I'
	db	78	;'N'
	db	71	;'G'
	db	0
	
STR_22:
	db	68	;'D'
	db	65	;'A'
	db	84	;'T'
	db	65	;'A'
	db	32
	db	84	;'T'
	db	79	;'O'
	db	32
	db	67	;'C'
	db	69	;'E'
	db	78	;'N'
	db	84	;'T'
	db	69	;'E'
	db	82	;'R'
	db	0
	
STR_29:
	db	84	;'T'
	db	72	;'H'
	db	73	;'I'
	db	83	;'S'
	db	32
	db	83	;'S'
	db	87	;'W'
	db	73	;'I'
	db	84	;'T'
	db	67	;'C'
	db	72	;'H'
	db	32
	db	73	;'I'
	db	83	;'S'
	db	0
	
STR_16:
	db	80	;'P'
	db	65	;'A'
	db	67	;'C'
	db	75	;'K'
	db	69	;'E'
	db	84	;'T'
	db	32
	db	84	;'T'
	db	73	;'I'
	db	77	;'M'
	db	69	;'E'
	db	79	;'O'
	db	85	;'U'
	db	84	;'T'
	db	0
	
STR_55:
	db	82	;'R'
	db	69	;'E'
	db	81	;'Q'
	db	85	;'U'
	db	69	;'E'
	db	83	;'S'
	db	84	;'T'
	db	32
	db	83	;'S'
	db	69	;'E'
	db	78	;'N'
	db	84	;'T'
	db	33
	db	0
	
STR_43:
	db	67	;'C'
	db	79	;'O'
	db	78	;'N'
	db	78	;'N'
	db	69	;'E'
	db	67	;'C'
	db	84	;'T'
	db	32
	db	80	;'P'
	db	67	;'C'
	db	46
	db	46
	db	46
	db	0
	
STR_50:
	db	82	;'R'
	db	69	;'E'
	db	83	;'S'
	db	69	;'E'
	db	84	;'T'
	db	84	;'T'
	db	73	;'I'
	db	78	;'N'
	db	71	;'G'
	db	32
	db	82	;'R'
	db	84	;'T'
	db	67	;'C'
	db	0
	
STR_35:
	db	82	;'R'
	db	84	;'T'
	db	67	;'C'
	db	32
	db	82	;'R'
	db	69	;'E'
	db	81	;'Q'
	db	46
	db	32
	db	66	;'B'
	db	89	;'Y'
	db	32
	db	88	;'X'
	db	0
	
STR_37:
	db	82	;'R'
	db	84	;'T'
	db	67	;'C'
	db	32
	db	82	;'R'
	db	69	;'E'
	db	81	;'Q'
	db	46
	db	32
	db	66	;'B'
	db	89	;'Y'
	db	32
	db	89	;'Y'
	db	0
	
STR_23:
	db	77	;'M'
	db	79	;'O'
	db	68	;'D'
	db	69	;'E'
	db	32
	db	61	;'='
	db	32
	db	77	;'M'
	db	69	;'E'
	db	77	;'M'
	db	79	;'O'
	db	82	;'R'
	db	89	;'Y'
	db	0
	
STR_6:
	db	69	;'E'
	db	67	;'C'
	db	79	;'O'
	db	32
	db	82	;'R'
	db	69	;'E'
	db	67	;'C'
	db	69	;'E'
	db	73	;'I'
	db	86	;'V'
	db	69	;'E'
	db	68	;'D'
	db	32
	db	0
	
STR_58:
	db	85	;'U'
	db	80	;'P'
	db	68	;'D'
	db	65	;'A'
	db	84	;'T'
	db	73	;'I'
	db	78	;'N'
	db	71	;'G'
	db	32
	db	82	;'R'
	db	84	;'T'
	db	67	;'C'
	db	0
	
STR_26:
	db	82	;'R'
	db	84	;'T'
	db	67	;'C'
	db	32
	db	83	;'S'
	db	69	;'E'
	db	84	;'T'
	db	84	;'T'
	db	73	;'I'
	db	78	;'N'
	db	71	;'G'
	db	83	;'S'
	db	0
	
STR_56:
	db	83	;'S'
	db	69	;'E'
	db	84	;'T'
	db	84	;'T'
	db	73	;'I'
	db	78	;'N'
	db	71	;'G'
	db	83	;'S'
	db	32
	db	78	;'N'
	db	79	;'O'
	db	84	;'T'
	db	0
	
STR_57:
	db	82	;'R'
	db	69	;'E'
	db	67	;'C'
	db	69	;'E'
	db	73	;'I'
	db	86	;'V'
	db	69	;'E'
	db	68	;'D'
	db	46
	db	46
	db	46
	db	0
	
STR_21:
	db	77	;'M'
	db	79	;'O'
	db	68	;'D'
	db	69	;'E'
	db	32
	db	61	;'='
	db	32
	db	83	;'S'
	db	69	;'E'
	db	78	;'N'
	db	68	;'D'
	db	0
	
STR_9:
	db	80	;'P'
	db	65	;'A'
	db	67	;'C'
	db	75	;'K'
	db	69	;'E'
	db	84	;'T'
	db	32
	db	83	;'S'
	db	69	;'E'
	db	78	;'N'
	db	84	;'T'
	db	0
	
STR_40:
	db	70	;'F'
	db	82	;'R'
	db	79	;'O'
	db	77	;'M'
	db	32
	db	82	;'R'
	db	84	;'T'
	db	85	;'U'
	db	45
	db	49	;'1'
	db	0
	
STR_45:
	db	70	;'F'
	db	82	;'R'
	db	79	;'O'
	db	77	;'M'
	db	32
	db	82	;'R'
	db	84	;'T'
	db	85	;'U'
	db	45
	db	50	;'2'
	db	0
	
STR_25:
	db	77	;'M'
	db	79	;'O'
	db	68	;'D'
	db	69	;'E'
	db	32
	db	61	;'='
	db	32
	db	71	;'G'
	db	69	;'E'
	db	84	;'T'
	db	0
	
STR_11:
	db	71	;'G'
	db	79	;'O'
	db	84	;'T'
	db	32
	db	65	;'A'
	db	78	;'N'
	db	32
	db	69	;'E'
	db	67	;'C'
	db	79	;'O'
	db	0
	
STR_1:
	db	76	;'L'
	db	73	;'I'
	db	78	;'N'
	db	69	;'E'
	db	32
	db	70	;'F'
	db	82	;'R'
	db	69	;'E'
	db	69	;'E'
	db	0
	
STR_4:
	db	69	;'E'
	db	67	;'C'
	db	79	;'O'
	db	32
	db	70	;'F'
	db	65	;'A'
	db	73	;'I'
	db	76	;'L'
	db	0
	
STR_2:
	db	69	;'E'
	db	67	;'C'
	db	79	;'O'
	db	32
	db	83	;'S'
	db	69	;'E'
	db	78	;'N'
	db	84	;'T'
	db	0
	
STR_73:
	db	32
	db	77	;'M'
	db	69	;'E'
	db	77	;'M'
	db	50	;'2'
	db	61	;'='
	db	0
	
STR_72:
	db	77	;'M'
	db	69	;'E'
	db	77	;'M'
	db	49	;'1'
	db	61	;'='
	db	0
	
STR_19:
	db	58	;':'
	db	0
STR_32	equ	STR_28+0
STR_38	equ	STR_36+0
STR_31	equ	STR_27+0
STR_44	equ	STR_39+0
STR_34	equ	STR_33+0
STR_20	equ	STR_19+0
STR_52	equ	STR_19+0
STR_53	equ	STR_19+0
STR_63	equ	STR_19+0
STR_64	equ	STR_19+0
STR_74	equ	STR_19+0
STR_75	equ	STR_19+0
STR_46	equ	STR_41+0
STR_68	equ	STR_66+0
STR_69	equ	STR_67+0
STR_48	equ	STR_43+0
STR_47	equ	STR_42+0
STR_62	equ	STR_61+0
STR_13	equ	STR_14+6
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
	file	"Central_Unit.as"
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
USARTWriteInt@F3686:
       ds      5
	global	_Current_Read_Page
_Current_Read_Page:
       ds      2
	global	_Current_Write_Page
	global	_Current_Write_Page
_Current_Write_Page:
       ds      2
	global	_Hum1
_Hum1:
       ds      2
	global	_Hum2
_Hum2:
       ds      2
	global	_Read_Page1
_Read_Page1:
       ds      2
	global	_Read_Page2
_Read_Page2:
       ds      2
	global	_Temp1
_Temp1:
       ds      2
	global	_Temp2
_Temp2:
       ds      2
	global	_Write_Page1
_Write_Page1:
       ds      2
	global	_Write_Page2
_Write_Page2:
       ds      2
	global	_errno
_errno:
       ds      2
	global	_Current_Pos
_Current_Pos:
       ds      1
	global	_Data_End
_Data_End:
       ds      1
	global	_Destination_ID
_Destination_ID:
       ds      1
	global	_Destination_ID1
_Destination_ID1:
       ds      1
	global	_Destination_ID2
_Destination_ID2:
       ds      1
	global	_Master_ID
_Master_ID:
       ds      1
	global	_Source_ID
_Source_ID:
       ds      1
	global	_UQEnd
_UQEnd:
       ds      1
	global	_UQFront
_UQFront:
       ds      1
	global	_c
_c:
       ds      1
	global	_day
_day:
       ds      1
	global	_device
_device:
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
	global	_min_flag
_min_flag:
       ds      1
	global	_month
_month:
       ds      1
	global	_sec
_sec:
       ds      1
	global	_sec_flag
_sec_flag:
       ds      1
	global	_seconds
_seconds:
       ds      1
	global	_year
_year:
       ds      1
psect	dataCOMRAM,class=COMRAM,space=1,noexec
global __pdataCOMRAM
__pdataCOMRAM:
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\custom_char.h"
	line	8
	global	___cgram
___cgram:
       ds      8
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
	global	_PACKET
_PACKET:
       ds      128
psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
	global	_URBuff
_URBuff:
       ds      128
	file	"Central_Unit.as"
	line	#
psect	cinit
; Clear objects allocated to BANK1 (128 bytes)
	global __pbssBANK1
lfsr	0,__pbssBANK1
movlw	128
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
; Clear objects allocated to BANK0 (128 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	128
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
; Clear objects allocated to COMRAM (53 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	53
clear_2:
clrf	postinc0,c
decf	wreg
bnz	clear_2
	line	#
; Initialize objects allocated to COMRAM (8 bytes)
	global __pidataCOMRAM
	; load TBLPTR registers with __pidataCOMRAM
	movlw	low (__pidataCOMRAM)
	movwf	tblptrl
	movlw	high(__pidataCOMRAM)
	movwf	tblptrh
	movlw	low highword(__pidataCOMRAM)
	movwf	tblptru
	lfsr	0,__pdataCOMRAM
	lfsr	1,8
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
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
??_getting_data:	; 0 bytes @ 0x0
	global	rtc_setting@atm
rtc_setting@atm:	; 1 bytes @ 0x0
	global	data_to_center@msb
data_to_center@msb:	; 1 bytes @ 0x0
	ds   1
	global	rtc_setting@mem_loc
rtc_setting@mem_loc:	; 1 bytes @ 0x1
	global	data_to_center@lsb
data_to_center@lsb:	; 1 bytes @ 0x1
	ds   1
	global	rtc_setting@s
rtc_setting@s:	; 1 bytes @ 0x2
	ds   1
	global	getting_data@result
getting_data@result:	; 1 bytes @ 0x3
	global	rtc_setting@result
rtc_setting@result:	; 1 bytes @ 0x3
	ds   1
	global	getting_data@msb
getting_data@msb:	; 1 bytes @ 0x4
	global	rtc_setting@i
rtc_setting@i:	; 1 bytes @ 0x4
	ds   1
	global	getting_data@lsb
getting_data@lsb:	; 1 bytes @ 0x5
	ds   1
	global	main@choice
main@choice:	; 1 bytes @ 0x6
	ds   1
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_USARTFlushBuffer:	; 0 bytes @ 0x0
?_USARTWriteChar:	; 0 bytes @ 0x0
?_USARTHandleRxInt:	; 0 bytes @ 0x0
??_USARTHandleRxInt:	; 0 bytes @ 0x0
?_SecondsInt:	; 0 bytes @ 0x0
??_SecondsInt:	; 0 bytes @ 0x0
?_LCDBusyLoop:	; 0 bytes @ 0x0
?_IdleI2C:	; 0 bytes @ 0x0
?_Clear_Packet:	; 0 bytes @ 0x0
?_data_to_center:	; 0 bytes @ 0x0
?_local_display:	; 0 bytes @ 0x0
?_rtc_setting:	; 0 bytes @ 0x0
?_getting_data:	; 0 bytes @ 0x0
?_tx_packet:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
?_LCDInit:	; 0 bytes @ 0x0
?_clear_rom:	; 0 bytes @ 0x0
?_ds1307_init:	; 0 bytes @ 0x0
?_ds1307_set_date_time:	; 0 bytes @ 0x0
?_ds1307_get_date:	; 0 bytes @ 0x0
?_ds1307_get_time:	; 0 bytes @ 0x0
?_Creat_RTC_Packet:	; 0 bytes @ 0x0
?_RTUInit:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_USARTDataAvailable:	; 1 bytes @ 0x0
?_USARTReadData:	; 1 bytes @ 0x0
?_Check_CRC:	; 1 bytes @ 0x0
?_WriteI2C:	; 1 bytes @ 0x0
?_ReadI2C:	; 1 bytes @ 0x0
?_bcd2bin:	; 1 bytes @ 0x0
?_bin2bcd:	; 1 bytes @ 0x0
?_Check_Busy_Line:	; 1 bytes @ 0x0
?_Eco_Test:	; 1 bytes @ 0x0
?_Eco_Replay:	; 1 bytes @ 0x0
?_Send_Packet:	; 1 bytes @ 0x0
?_Receive_Packet:	; 1 bytes @ 0x0
	ds   4
	global	USARTHandleRxInt@data
USARTHandleRxInt@data:	; 1 bytes @ 0x4
	ds   1
??_ISR:	; 0 bytes @ 0x5
	ds   14
??_USARTDataAvailable:	; 0 bytes @ 0x13
??_USARTWriteChar:	; 0 bytes @ 0x13
??_USARTReadData:	; 0 bytes @ 0x13
??_Check_CRC:	; 0 bytes @ 0x13
??_LCDBusyLoop:	; 0 bytes @ 0x13
??_IdleI2C:	; 0 bytes @ 0x13
??_ReadI2C:	; 0 bytes @ 0x13
??_bcd2bin:	; 0 bytes @ 0x13
??_bin2bcd:	; 0 bytes @ 0x13
??_Clear_Packet:	; 0 bytes @ 0x13
?_MyDelay:	; 0 bytes @ 0x13
?_OpenI2C:	; 0 bytes @ 0x13
?_Write_b_eep:	; 0 bytes @ 0x13
?_USARTInit:	; 0 bytes @ 0x13
?_Creat_Packet:	; 0 bytes @ 0x13
?_Read_b_eep:	; 1 bytes @ 0x13
?_getkey:	; 1 bytes @ 0x13
	global	?_Calculate_CRC
?_Calculate_CRC:	; 2 bytes @ 0x13
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x13
	global	?___awmod
?___awmod:	; 2 bytes @ 0x13
	global	LCDBusyLoop@busy
LCDBusyLoop@busy:	; 1 bytes @ 0x13
	global	bin2bcd@binary_value
bin2bcd@binary_value:	; 1 bytes @ 0x13
	global	Creat_Packet@Readings
Creat_Packet@Readings:	; 1 bytes @ 0x13
	global	Clear_Packet@i
Clear_Packet@i:	; 1 bytes @ 0x13
	global	USARTWriteChar@ch
USARTWriteChar@ch:	; 1 bytes @ 0x13
	global	USARTReadData@data
USARTReadData@data:	; 1 bytes @ 0x13
	global	OpenI2C@slew
OpenI2C@slew:	; 1 bytes @ 0x13
	global	MyDelay@ms
MyDelay@ms:	; 2 bytes @ 0x13
	global	getkey@msecs
getkey@msecs:	; 2 bytes @ 0x13
	global	USARTInit@baud_rate
USARTInit@baud_rate:	; 2 bytes @ 0x13
	global	Read_b_eep@badd
Read_b_eep@badd:	; 2 bytes @ 0x13
	global	Write_b_eep@badd
Write_b_eep@badd:	; 2 bytes @ 0x13
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x13
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x13
	ds   1
??_USARTFlushBuffer:	; 0 bytes @ 0x14
??_WriteI2C:	; 0 bytes @ 0x14
??_OpenI2C:	; 0 bytes @ 0x14
??_Check_Busy_Line:	; 0 bytes @ 0x14
??_Creat_Packet:	; 0 bytes @ 0x14
	global	LCDBusyLoop@temp
LCDBusyLoop@temp:	; 1 bytes @ 0x14
	global	bin2bcd@retval
bin2bcd@retval:	; 1 bytes @ 0x14
	global	bcd2bin@bcd_value
bcd2bin@bcd_value:	; 1 bytes @ 0x14
	global	Creat_Packet@F_Code
Creat_Packet@F_Code:	; 1 bytes @ 0x14
	global	OpenI2C@sync_mode
OpenI2C@sync_mode:	; 1 bytes @ 0x14
	ds   1
??_Read_b_eep:	; 0 bytes @ 0x15
??_Calculate_CRC:	; 0 bytes @ 0x15
??_MyDelay:	; 0 bytes @ 0x15
??_USARTInit:	; 0 bytes @ 0x15
??_getkey:	; 0 bytes @ 0x15
	global	LCDBusyLoop@status
LCDBusyLoop@status:	; 1 bytes @ 0x15
	global	bin2bcd@temp
bin2bcd@temp:	; 1 bytes @ 0x15
	global	bcd2bin@temp
bcd2bin@temp:	; 1 bytes @ 0x15
	global	Write_b_eep@bdat
Write_b_eep@bdat:	; 1 bytes @ 0x15
	global	WriteI2C@data_out
WriteI2C@data_out:	; 1 bytes @ 0x15
	global	Check_Busy_Line@ms
Check_Busy_Line@ms:	; 2 bytes @ 0x15
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x15
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x15
	ds   1
?_LCDByte:	; 0 bytes @ 0x16
??_Write_b_eep:	; 0 bytes @ 0x16
?_rom_byte_write:	; 0 bytes @ 0x16
??_clear_rom:	; 0 bytes @ 0x16
??_ds1307_init:	; 0 bytes @ 0x16
??_ds1307_set_date_time:	; 0 bytes @ 0x16
??_ds1307_get_date:	; 0 bytes @ 0x16
??_ds1307_get_time:	; 0 bytes @ 0x16
?_beep:	; 0 bytes @ 0x16
?_rom_byte_read:	; 1 bytes @ 0x16
	global	LCDByte@isdata
LCDByte@isdata:	; 1 bytes @ 0x16
	global	ds1307_init@seconds
ds1307_init@seconds:	; 1 bytes @ 0x16
	global	Write_b_eep@GIE_BIT_VAL
Write_b_eep@GIE_BIT_VAL:	; 1 bytes @ 0x16
	global	rom_byte_write@address
rom_byte_write@address:	; 2 bytes @ 0x16
	global	rom_byte_read@address
rom_byte_read@address:	; 2 bytes @ 0x16
	global	beep@del
beep@del:	; 2 bytes @ 0x16
	ds   1
??_LCDByte:	; 0 bytes @ 0x17
??___awdiv:	; 0 bytes @ 0x17
??___awmod:	; 0 bytes @ 0x17
	global	Check_Busy_Line@n
Check_Busy_Line@n:	; 1 bytes @ 0x17
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x17
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x17
	global	clear_rom@page
clear_rom@page:	; 2 bytes @ 0x17
	ds   1
??_rom_byte_read:	; 0 bytes @ 0x18
??_beep:	; 0 bytes @ 0x18
	global	LCDByte@hn
LCDByte@hn:	; 1 bytes @ 0x18
	global	rom_byte_write@byte
rom_byte_write@byte:	; 1 bytes @ 0x18
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x18
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x18
	ds   1
??_rom_byte_write:	; 0 bytes @ 0x19
	global	LCDByte@ln
LCDByte@ln:	; 1 bytes @ 0x19
	global	clear_rom@word
clear_rom@word:	; 1 bytes @ 0x19
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x19
	ds   1
	global	LCDByte@c
LCDByte@c:	; 1 bytes @ 0x1A
	global	Check_CRC@CRC_HI
Check_CRC@CRC_HI:	; 1 bytes @ 0x1A
	ds   1
	global	LCDByte@temp
LCDByte@temp:	; 1 bytes @ 0x1B
	global	rom_byte_read@msb
rom_byte_read@msb:	; 1 bytes @ 0x1B
	global	Check_CRC@CRC_LOW
Check_CRC@CRC_LOW:	; 1 bytes @ 0x1B
	ds   1
?_LCDWriteString:	; 0 bytes @ 0x1C
??_LCDInit:	; 0 bytes @ 0x1C
?_LCDWriteInt:	; 0 bytes @ 0x1C
?_LCDGotoXY:	; 0 bytes @ 0x1C
	global	LCDGotoXY@y
LCDGotoXY@y:	; 1 bytes @ 0x1C
	global	rom_byte_write@msb
rom_byte_write@msb:	; 1 bytes @ 0x1C
	global	rom_byte_read@lsb
rom_byte_read@lsb:	; 1 bytes @ 0x1C
	global	LCDWriteString@msg
LCDWriteString@msg:	; 2 bytes @ 0x1C
	global	LCDWriteInt@val
LCDWriteInt@val:	; 2 bytes @ 0x1C
	global	Calculate_CRC@sum
Calculate_CRC@sum:	; 2 bytes @ 0x1C
	global	Check_CRC@sum
Check_CRC@sum:	; 2 bytes @ 0x1C
	ds   1
??_LCDGotoXY:	; 0 bytes @ 0x1D
	global	LCDInit@style
LCDInit@style:	; 1 bytes @ 0x1D
	global	LCDGotoXY@x
LCDGotoXY@x:	; 1 bytes @ 0x1D
	global	rom_byte_write@lsb
rom_byte_write@lsb:	; 1 bytes @ 0x1D
	global	rom_byte_read@data
rom_byte_read@data:	; 1 bytes @ 0x1D
	ds   1
??_LCDWriteString:	; 0 bytes @ 0x1E
?_write_packet_to_page:	; 0 bytes @ 0x1E
?_read_packet_from_page:	; 0 bytes @ 0x1E
	global	LCDInit@__i
LCDInit@__i:	; 1 bytes @ 0x1E
	global	LCDWriteInt@field_length
LCDWriteInt@field_length:	; 1 bytes @ 0x1E
	global	Calculate_CRC@count
Calculate_CRC@count:	; 1 bytes @ 0x1E
	global	Check_CRC@count
Check_CRC@count:	; 1 bytes @ 0x1E
	global	write_packet_to_page@page_no
write_packet_to_page@page_no:	; 2 bytes @ 0x1E
	global	read_packet_from_page@page_no
read_packet_from_page@page_no:	; 2 bytes @ 0x1E
	ds   1
??_LCDWriteInt:	; 0 bytes @ 0x1F
??_Creat_RTC_Packet:	; 0 bytes @ 0x1F
??_RTUInit:	; 0 bytes @ 0x1F
	global	LCDWriteString@cc
LCDWriteString@cc:	; 1 bytes @ 0x1F
	global	Check_CRC@length
Check_CRC@length:	; 1 bytes @ 0x1F
	global	RTUInit@high
RTUInit@high:	; 1 bytes @ 0x1F
	ds   1
??_Eco_Test:	; 0 bytes @ 0x20
??_Eco_Replay:	; 0 bytes @ 0x20
??_write_packet_to_page:	; 0 bytes @ 0x20
??_read_packet_from_page:	; 0 bytes @ 0x20
	global	RTUInit@low
RTUInit@low:	; 1 bytes @ 0x20
	global	Check_CRC@CRC
Check_CRC@CRC:	; 2 bytes @ 0x20
	ds   1
	global	Eco_Test@re
Eco_Test@re:	; 1 bytes @ 0x21
	global	Eco_Replay@ts
Eco_Replay@ts:	; 1 bytes @ 0x21
	global	RTUInit@adr
RTUInit@adr:	; 2 bytes @ 0x21
	global	LCDWriteInt@str
LCDWriteInt@str:	; 5 bytes @ 0x21
	ds   1
	global	Eco_Test@data
Eco_Test@data:	; 1 bytes @ 0x22
	global	Eco_Replay@n
Eco_Replay@n:	; 1 bytes @ 0x22
	global	write_packet_to_page@msb
write_packet_to_page@msb:	; 1 bytes @ 0x22
	global	read_packet_from_page@data
read_packet_from_page@data:	; 1 bytes @ 0x22
	global	Creat_RTC_Packet@crc_h
Creat_RTC_Packet@crc_h:	; 1 bytes @ 0x22
	ds   1
	global	Eco_Replay@data
Eco_Replay@data:	; 1 bytes @ 0x23
	global	write_packet_to_page@lsb
write_packet_to_page@lsb:	; 1 bytes @ 0x23
	global	read_packet_from_page@msb
read_packet_from_page@msb:	; 1 bytes @ 0x23
	global	Creat_RTC_Packet@crc_l
Creat_RTC_Packet@crc_l:	; 1 bytes @ 0x23
	global	Eco_Test@ts
Eco_Test@ts:	; 2 bytes @ 0x23
	ds   1
??_Receive_Packet:	; 0 bytes @ 0x24
	global	read_packet_from_page@lsb
read_packet_from_page@lsb:	; 1 bytes @ 0x24
	global	Creat_RTC_Packet@id
Creat_RTC_Packet@id:	; 1 bytes @ 0x24
	global	write_packet_to_page@address
write_packet_to_page@address:	; 2 bytes @ 0x24
	ds   1
	global	Eco_Test@n
Eco_Test@n:	; 1 bytes @ 0x25
	global	Creat_RTC_Packet@mem_loc
Creat_RTC_Packet@mem_loc:	; 1 bytes @ 0x25
	global	Receive_Packet@msecs
Receive_Packet@msecs:	; 2 bytes @ 0x25
	global	read_packet_from_page@address
read_packet_from_page@address:	; 2 bytes @ 0x25
	ds   1
??_Send_Packet:	; 0 bytes @ 0x26
	global	write_packet_to_page@count
write_packet_to_page@count:	; 1 bytes @ 0x26
	global	LCDWriteInt@j
LCDWriteInt@j:	; 2 bytes @ 0x26
	global	Creat_RTC_Packet@packet_crc
Creat_RTC_Packet@packet_crc:	; 2 bytes @ 0x26
	ds   1
	global	Receive_Packet@count
Receive_Packet@count:	; 1 bytes @ 0x27
	global	read_packet_from_page@count
read_packet_from_page@count:	; 1 bytes @ 0x27
	global	Send_Packet@ts
Send_Packet@ts:	; 2 bytes @ 0x27
	ds   1
	global	Receive_Packet@n
Receive_Packet@n:	; 1 bytes @ 0x28
	global	Creat_RTC_Packet@i
Creat_RTC_Packet@i:	; 1 bytes @ 0x28
	global	LCDWriteInt@i
LCDWriteInt@i:	; 2 bytes @ 0x28
	ds   1
	global	Send_Packet@count
Send_Packet@count:	; 1 bytes @ 0x29
	global	Receive_Packet@result
Receive_Packet@result:	; 1 bytes @ 0x29
	ds   1
??_local_display:	; 0 bytes @ 0x2A
	global	Send_Packet@result
Send_Packet@result:	; 1 bytes @ 0x2A
	global	local_display@s
local_display@s:	; 1 bytes @ 0x2A
	ds   1
	global	Send_Packet@n
Send_Packet@n:	; 1 bytes @ 0x2B
	ds   1
	global	Send_Packet@data
Send_Packet@data:	; 1 bytes @ 0x2C
	ds   1
??_tx_packet:	; 0 bytes @ 0x2D
	global	tx_packet@attempts
tx_packet@attempts:	; 1 bytes @ 0x2D
	ds   1
	global	tx_packet@res
tx_packet@res:	; 1 bytes @ 0x2E
	ds   1
??_data_to_center:	; 0 bytes @ 0x2F
??_rtc_setting:	; 0 bytes @ 0x2F
??_main:	; 0 bytes @ 0x2F
;!
;!Data Sizes:
;!    Strings     845
;!    Constant    57
;!    Data        8
;!    BSS         309
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM          127     47     108
;!    BANK0           128      0     128
;!    BANK1           256      7     135
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0

;!
;!Pointer List with Targets:
;!
;!    LCDWriteString@msg	PTR const unsigned char  size(2) Largest target is 23
;!		 -> STR_76(CODE[19]), STR_75(CODE[2]), STR_74(CODE[2]), STR_73(CODE[7]), 
;!		 -> STR_72(CODE[6]), STR_71(CODE[17]), STR_70(CODE[17]), STR_69(CODE[16]), 
;!		 -> STR_68(CODE[18]), STR_67(CODE[16]), STR_66(CODE[18]), STR_65(CODE[17]), 
;!		 -> STR_64(CODE[2]), STR_63(CODE[2]), STR_62(CODE[21]), STR_61(CODE[21]), 
;!		 -> STR_60(CODE[17]), STR_59(CODE[20]), STR_58(CODE[13]), STR_57(CODE[12]), 
;!		 -> STR_56(CODE[13]), STR_55(CODE[14]), STR_54(CODE[18]), STR_53(CODE[2]), 
;!		 -> STR_52(CODE[2]), STR_51(CODE[17]), STR_50(CODE[14]), STR_49(CODE[17]), 
;!		 -> STR_48(CODE[14]), STR_47(CODE[16]), STR_46(CODE[18]), STR_45(CODE[11]), 
;!		 -> STR_44(CODE[16]), STR_43(CODE[14]), STR_42(CODE[16]), STR_41(CODE[18]), 
;!		 -> STR_40(CODE[11]), STR_39(CODE[16]), STR_38(CODE[17]), STR_37(CODE[14]), 
;!		 -> STR_36(CODE[17]), STR_35(CODE[14]), STR_34(CODE[17]), STR_33(CODE[17]), 
;!		 -> STR_32(CODE[16]), STR_31(CODE[15]), STR_30(CODE[15]), STR_29(CODE[15]), 
;!		 -> STR_28(CODE[16]), STR_27(CODE[15]), STR_26(CODE[13]), STR_25(CODE[11]), 
;!		 -> STR_24(CODE[16]), STR_23(CODE[14]), STR_22(CODE[15]), STR_21(CODE[12]), 
;!		 -> STR_20(CODE[2]), STR_19(CODE[2]), STR_18(CODE[18]), STR_17(CODE[17]), 
;!		 -> STR_16(CODE[15]), STR_15(CODE[18]), STR_14(CODE[23]), STR_13(CODE[17]), 
;!		 -> STR_12(CODE[20]), STR_11(CODE[11]), STR_10(CODE[17]), STR_9(CODE[12]), 
;!		 -> STR_8(CODE[16]), STR_7(CODE[18]), STR_6(CODE[14]), STR_5(CODE[17]), 
;!		 -> STR_4(CODE[9]), STR_3(CODE[16]), STR_2(CODE[9]), STR_1(CODE[10]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _rtc_setting->_tx_packet
;!    _local_display->_LCDWriteInt
;!    _LCDWriteInt->_LCDByte
;!    _getting_data->_tx_packet
;!    _write_packet_to_page->_rom_byte_write
;!    _rom_byte_write->_WriteI2C
;!    _Receive_Packet->_Eco_Replay
;!    _Eco_Replay->_LCDWriteString
;!    _LCDGotoXY->_LCDByte
;!    _Creat_RTC_Packet->_Calculate_CRC
;!    _data_to_center->_tx_packet
;!    _tx_packet->_Send_Packet
;!    _Send_Packet->_Eco_Test
;!    _Eco_Test->_LCDWriteString
;!    _LCDWriteString->_LCDByte
;!    _Check_Busy_Line->_USARTDataAvailable
;!    _USARTFlushBuffer->_USARTDataAvailable
;!    _USARTFlushBuffer->_USARTReadData
;!    _read_packet_from_page->_rom_byte_read
;!    _rom_byte_read->_WriteI2C
;!    _clear_rom->_WriteI2C
;!    _beep->_MyDelay
;!    _RTUInit->_LCDInit
;!    _ds1307_set_date_time->_WriteI2C
;!    _ds1307_set_date_time->_bin2bcd
;!    _ds1307_init->_WriteI2C
;!    _ds1307_init->_bcd2bin
;!    _ds1307_init->_bin2bcd
;!    _ds1307_get_time->_WriteI2C
;!    _ds1307_get_time->_bcd2bin
;!    _ds1307_get_date->_WriteI2C
;!    _ds1307_get_date->_bcd2bin
;!    _WriteI2C->_IdleI2C
;!    _LCDInit->_LCDByte
;!    _LCDByte->_LCDBusyLoop
;!
;!Critical Paths under _ISR in COMRAM
;!
;!    _ISR->_USARTHandleRxInt
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
;!    _main->_getting_data
;!
;!Critical Paths under _ISR in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK5
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
;! (0) _main                                                 1     1      0  359905
;!                                              6 BANK1      1     1      0
;!                            _LCDByte
;!                          _LCDGotoXY
;!                        _LCDWriteInt
;!                     _LCDWriteString
;!                            _MyDelay
;!                            _RTUInit
;!                               _beep
;!                     _data_to_center
;!                    _ds1307_get_time
;!                             _getkey
;!                       _getting_data
;!                      _local_display
;!                        _rtc_setting
;! ---------------------------------------------------------------------------------
;! (1) _rtc_setting                                          5     5      0  110425
;!                                              0 BANK1      5     5      0
;!                       _Clear_Packet
;!                   _Creat_RTC_Packet
;!                            _LCDByte
;!                          _LCDGotoXY
;!                        _LCDWriteInt
;!                     _LCDWriteString
;!                            _MyDelay
;!                     _Receive_Packet
;!                        _Write_b_eep
;!                    _ds1307_get_time
;!               _ds1307_set_date_time
;!                          _tx_packet
;! ---------------------------------------------------------------------------------
;! (1) _local_display                                        1     1      0   27861
;!                                             42 COMRAM     1     1      0
;!                            _LCDByte
;!                          _LCDGotoXY
;!                        _LCDWriteInt
;!                     _LCDWriteString
;! ---------------------------------------------------------------------------------
;! (2) _LCDWriteInt                                         14    11      3    7559
;!                                             28 COMRAM    14    11      3
;!                            _LCDByte
;!                            ___awdiv
;!                            ___awmod
;! ---------------------------------------------------------------------------------
;! (3) ___awmod                                              6     2      4     552
;!                                             19 COMRAM     6     2      4
;! ---------------------------------------------------------------------------------
;! (3) ___awdiv                                              8     4      4     556
;!                                             19 COMRAM     8     4      4
;! ---------------------------------------------------------------------------------
;! (1) _getting_data                                         6     6      0  103201
;!                                              0 BANK1      6     6      0
;!                       _Clear_Packet
;!                   _Creat_RTC_Packet
;!                            _LCDByte
;!                          _LCDGotoXY
;!                     _LCDWriteString
;!                            _MyDelay
;!                     _Receive_Packet
;!                        _Write_b_eep
;!                          _tx_packet
;!               _write_packet_to_page
;! ---------------------------------------------------------------------------------
;! (2) _write_packet_to_page                                 9     7      2     662
;!                                             30 COMRAM     9     7      2
;!                     _rom_byte_write
;! ---------------------------------------------------------------------------------
;! (3) _rom_byte_write                                       8     5      3     390
;!                                             22 COMRAM     8     5      3
;!                            _IdleI2C
;!                           _WriteI2C
;! ---------------------------------------------------------------------------------
;! (2) _Receive_Packet                                       6     6      0   28379
;!                                             36 COMRAM     6     6      0
;!                          _Check_CRC
;!                         _Eco_Replay
;!                            _LCDByte
;!                     _LCDWriteString
;!                 _USARTDataAvailable
;!                   _USARTFlushBuffer
;!                      _USARTReadData
;!                     _USARTWriteChar
;! ---------------------------------------------------------------------------------
;! (3) _Eco_Replay                                           4     4      0   14006
;!                                             32 COMRAM     4     4      0
;!                            _LCDByte
;!                     _LCDWriteString
;!                 _USARTDataAvailable
;!                   _USARTFlushBuffer
;!                      _USARTReadData
;!                     _USARTWriteChar
;! ---------------------------------------------------------------------------------
;! (3) _Check_CRC                                           15    15      0     321
;!                                             19 COMRAM    15    15      0
;! ---------------------------------------------------------------------------------
;! (2) _LCDGotoXY                                            2     1      1    6563
;!                                             28 COMRAM     2     1      1
;!                            _LCDByte
;! ---------------------------------------------------------------------------------
;! (2) _Creat_RTC_Packet                                    10    10      0     930
;!                                             31 COMRAM    10    10      0
;!                      _Calculate_CRC
;!                       _Clear_Packet
;!                       _Creat_Packet
;!                         _Read_b_eep
;! ---------------------------------------------------------------------------------
;! (3) _Creat_Packet                                         2     1      1     152
;!                                             19 COMRAM     2     1      1
;! ---------------------------------------------------------------------------------
;! (3) _Calculate_CRC                                       12    10      2      92
;!                                             19 COMRAM    12    10      2
;! ---------------------------------------------------------------------------------
;! (1) _getkey                                               3     1      2     111
;!                                             19 COMRAM     3     1      2
;! ---------------------------------------------------------------------------------
;! (1) _data_to_center                                       2     2      0   67034
;!                                              0 BANK1      2     2      0
;!                       _Clear_Packet
;!                            _LCDByte
;!                     _LCDWriteString
;!                            _MyDelay
;!                        _Write_b_eep
;!                          _clear_rom
;!              _read_packet_from_page
;!                          _tx_packet
;! ---------------------------------------------------------------------------------
;! (2) _tx_packet                                            2     2      0   44328
;!                                             45 COMRAM     2     2      0
;!                            _LCDByte
;!                     _LCDWriteString
;!                            _MyDelay
;!                        _Send_Packet
;! ---------------------------------------------------------------------------------
;! (3) _Send_Packet                                          7     7      0   28221
;!                                             38 COMRAM     7     7      0
;!                           _Eco_Test
;!                            _LCDByte
;!                     _LCDWriteString
;!                 _USARTDataAvailable
;!                   _USARTFlushBuffer
;!                      _USARTReadData
;!                     _USARTWriteChar
;! ---------------------------------------------------------------------------------
;! (4) _Eco_Test                                             6     6      0   14092
;!                                             32 COMRAM     6     6      0
;!                    _Check_Busy_Line
;!                            _LCDByte
;!                     _LCDWriteString
;!                 _USARTDataAvailable
;!                   _USARTFlushBuffer
;!                      _USARTReadData
;!                     _USARTWriteChar
;! ---------------------------------------------------------------------------------
;! (4) _USARTWriteChar                                       1     1      0      22
;!                                             19 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _LCDWriteString                                       4     2      2    9446
;!                                             28 COMRAM     4     2      2
;!                            _LCDByte
;! ---------------------------------------------------------------------------------
;! (5) _Check_Busy_Line                                      4     4      0     139
;!                                             20 COMRAM     4     4      0
;!                 _USARTDataAvailable
;!                   _USARTFlushBuffer
;! ---------------------------------------------------------------------------------
;! (4) _USARTFlushBuffer                                     0     0      0      34
;!                 _USARTDataAvailable
;!                      _USARTReadData
;! ---------------------------------------------------------------------------------
;! (4) _USARTReadData                                        1     1      0      34
;!                                             19 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (5) _USARTDataAvailable                                   1     1      0       0
;!                                             19 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _read_packet_from_page                               10     8      2     429
;!                                             30 COMRAM    10     8      2
;!                      _rom_byte_read
;! ---------------------------------------------------------------------------------
;! (3) _rom_byte_read                                        8     6      2     200
;!                                             22 COMRAM     8     6      2
;!                            _IdleI2C
;!                            _ReadI2C
;!                           _WriteI2C
;! ---------------------------------------------------------------------------------
;! (2) _clear_rom                                            4     4      0     114
;!                                             22 COMRAM     4     4      0
;!                            _IdleI2C
;!                           _WriteI2C
;! ---------------------------------------------------------------------------------
;! (3) _Clear_Packet                                         1     1      0      69
;!                                             19 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _beep                                                 2     0      2    2341
;!                                             22 COMRAM     2     0      2
;!                            _MyDelay
;! ---------------------------------------------------------------------------------
;! (1) _RTUInit                                              5     5      0   18658
;!                                             31 COMRAM     4     4      0
;!                            _LCDByte
;!                            _LCDInit
;!                            _MyDelay
;!                            _OpenI2C
;!                         _Read_b_eep
;!                          _USARTInit
;!                        _Write_b_eep
;!                    _ds1307_get_date
;!                    _ds1307_get_time
;!                        _ds1307_init
;!               _ds1307_set_date_time
;! ---------------------------------------------------------------------------------
;! (2) _ds1307_set_date_time                                 0     0      0     115
;!                            _IdleI2C
;!                           _WriteI2C
;!                            _bin2bcd
;! ---------------------------------------------------------------------------------
;! (2) _ds1307_init                                          1     1      0     277
;!                                             22 COMRAM     1     1      0
;!                            _IdleI2C
;!                            _ReadI2C
;!                           _WriteI2C
;!                            _bcd2bin
;!                            _bin2bcd
;! ---------------------------------------------------------------------------------
;! (3) _bin2bcd                                              3     3      0      93
;!                                             19 COMRAM     3     3      0
;! ---------------------------------------------------------------------------------
;! (2) _ds1307_get_time                                      0     0      0     113
;!                            _IdleI2C
;!                            _ReadI2C
;!                           _WriteI2C
;!                            _bcd2bin
;! ---------------------------------------------------------------------------------
;! (2) _ds1307_get_date                                      0     0      0     113
;!                            _IdleI2C
;!                            _ReadI2C
;!                           _WriteI2C
;!                            _bcd2bin
;! ---------------------------------------------------------------------------------
;! (3) _bcd2bin                                              3     3      0      91
;!                                             19 COMRAM     3     3      0
;! ---------------------------------------------------------------------------------
;! (3) _WriteI2C                                             2     2      0      22
;!                                             20 COMRAM     2     2      0
;!                            _IdleI2C
;! ---------------------------------------------------------------------------------
;! (4) _IdleI2C                                              1     1      0       0
;!                                             19 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (3) _ReadI2C                                              1     1      0       0
;!                                             19 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _Write_b_eep                                          4     1      3    6120
;!                                             19 COMRAM     4     1      3
;! ---------------------------------------------------------------------------------
;! (2) _USARTInit                                            4     2      2      86
;!                                             19 COMRAM     4     2      2
;! ---------------------------------------------------------------------------------
;! (3) _Read_b_eep                                           2     0      2     406
;!                                             19 COMRAM     2     0      2
;! ---------------------------------------------------------------------------------
;! (2) _OpenI2C                                              2     1      1     108
;!                                             19 COMRAM     2     1      1
;! ---------------------------------------------------------------------------------
;! (3) _MyDelay                                              3     1      2    2253
;!                                             19 COMRAM     3     1      2
;! ---------------------------------------------------------------------------------
;! (2) _LCDInit                                              3     3      0    4476
;!                                             28 COMRAM     3     3      0
;!                        _LCDBusyLoop
;!                            _LCDByte
;! ---------------------------------------------------------------------------------
;! (5) _LCDByte                                              6     5      1    4269
;!                                             22 COMRAM     6     5      1
;!                        _LCDBusyLoop
;! ---------------------------------------------------------------------------------
;! (6) _LCDBusyLoop                                          3     3      0     117
;!                                             19 COMRAM     3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (8) _ISR                                                 14    14      0      23
;!                                              5 COMRAM    14    14      0
;!                         _SecondsInt
;!                   _USARTHandleRxInt
;! ---------------------------------------------------------------------------------
;! (9) _USARTHandleRxInt                                     5     5      0      23
;!                                              0 COMRAM     5     5      0
;! ---------------------------------------------------------------------------------
;! (9) _SecondsInt                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 9
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
;!   _LCDWriteInt
;!     _LCDByte
;!       _LCDBusyLoop
;!     ___awdiv
;!     ___awmod
;!   _LCDWriteString
;!     _LCDByte
;!       _LCDBusyLoop
;!   _MyDelay
;!   _RTUInit
;!     _LCDByte
;!       _LCDBusyLoop
;!     _LCDInit
;!       _LCDBusyLoop
;!       _LCDByte
;!         _LCDBusyLoop
;!     _MyDelay
;!     _OpenI2C
;!     _Read_b_eep
;!     _USARTInit
;!     _Write_b_eep
;!     _ds1307_get_date
;!       _IdleI2C
;!       _ReadI2C
;!       _WriteI2C
;!         _IdleI2C
;!       _bcd2bin
;!     _ds1307_get_time
;!       _IdleI2C
;!       _ReadI2C
;!       _WriteI2C
;!         _IdleI2C
;!       _bcd2bin
;!     _ds1307_init
;!       _IdleI2C
;!       _ReadI2C
;!       _WriteI2C
;!         _IdleI2C
;!       _bcd2bin
;!       _bin2bcd
;!     _ds1307_set_date_time
;!       _IdleI2C
;!       _WriteI2C
;!         _IdleI2C
;!       _bin2bcd
;!   _beep
;!     _MyDelay
;!   _data_to_center
;!     _Clear_Packet
;!     _LCDByte
;!       _LCDBusyLoop
;!     _LCDWriteString
;!       _LCDByte
;!         _LCDBusyLoop
;!     _MyDelay
;!     _Write_b_eep
;!     _clear_rom
;!       _IdleI2C
;!       _WriteI2C
;!         _IdleI2C
;!     _read_packet_from_page
;!       _rom_byte_read
;!         _IdleI2C
;!         _ReadI2C
;!         _WriteI2C
;!           _IdleI2C
;!     _tx_packet
;!       _LCDByte
;!         _LCDBusyLoop
;!       _LCDWriteString
;!         _LCDByte
;!           _LCDBusyLoop
;!       _MyDelay
;!       _Send_Packet
;!         _Eco_Test
;!           _Check_Busy_Line
;!             _USARTDataAvailable
;!             _USARTFlushBuffer
;!               _USARTDataAvailable
;!               _USARTReadData
;!           _LCDByte
;!             _LCDBusyLoop
;!           _LCDWriteString
;!             _LCDByte
;!               _LCDBusyLoop
;!           _USARTDataAvailable
;!           _USARTFlushBuffer
;!             _USARTDataAvailable
;!             _USARTReadData
;!           _USARTReadData
;!           _USARTWriteChar
;!         _LCDByte
;!           _LCDBusyLoop
;!         _LCDWriteString
;!           _LCDByte
;!             _LCDBusyLoop
;!         _USARTDataAvailable
;!         _USARTFlushBuffer
;!           _USARTDataAvailable
;!           _USARTReadData
;!         _USARTReadData
;!         _USARTWriteChar
;!   _ds1307_get_time
;!     _IdleI2C
;!     _ReadI2C
;!     _WriteI2C
;!       _IdleI2C
;!     _bcd2bin
;!   _getkey
;!   _getting_data
;!     _Clear_Packet
;!     _Creat_RTC_Packet
;!       _Calculate_CRC
;!       _Clear_Packet
;!       _Creat_Packet
;!       _Read_b_eep
;!     _LCDByte
;!       _LCDBusyLoop
;!     _LCDGotoXY
;!       _LCDByte
;!         _LCDBusyLoop
;!     _LCDWriteString
;!       _LCDByte
;!         _LCDBusyLoop
;!     _MyDelay
;!     _Receive_Packet
;!       _Check_CRC
;!       _Eco_Replay
;!         _LCDByte
;!           _LCDBusyLoop
;!         _LCDWriteString
;!           _LCDByte
;!             _LCDBusyLoop
;!         _USARTDataAvailable
;!         _USARTFlushBuffer
;!           _USARTDataAvailable
;!           _USARTReadData
;!         _USARTReadData
;!         _USARTWriteChar
;!       _LCDByte
;!         _LCDBusyLoop
;!       _LCDWriteString
;!         _LCDByte
;!           _LCDBusyLoop
;!       _USARTDataAvailable
;!       _USARTFlushBuffer
;!         _USARTDataAvailable
;!         _USARTReadData
;!       _USARTReadData
;!       _USARTWriteChar
;!     _Write_b_eep
;!     _tx_packet
;!       _LCDByte
;!         _LCDBusyLoop
;!       _LCDWriteString
;!         _LCDByte
;!           _LCDBusyLoop
;!       _MyDelay
;!       _Send_Packet
;!         _Eco_Test
;!           _Check_Busy_Line
;!             _USARTDataAvailable
;!             _USARTFlushBuffer
;!               _USARTDataAvailable
;!               _USARTReadData
;!           _LCDByte
;!             _LCDBusyLoop
;!           _LCDWriteString
;!             _LCDByte
;!               _LCDBusyLoop
;!           _USARTDataAvailable
;!           _USARTFlushBuffer
;!             _USARTDataAvailable
;!             _USARTReadData
;!           _USARTReadData
;!           _USARTWriteChar
;!         _LCDByte
;!           _LCDBusyLoop
;!         _LCDWriteString
;!           _LCDByte
;!             _LCDBusyLoop
;!         _USARTDataAvailable
;!         _USARTFlushBuffer
;!           _USARTDataAvailable
;!           _USARTReadData
;!         _USARTReadData
;!         _USARTWriteChar
;!     _write_packet_to_page
;!       _rom_byte_write
;!         _IdleI2C
;!         _WriteI2C
;!           _IdleI2C
;!   _local_display
;!     _LCDByte
;!       _LCDBusyLoop
;!     _LCDGotoXY
;!       _LCDByte
;!         _LCDBusyLoop
;!     _LCDWriteInt
;!       _LCDByte
;!         _LCDBusyLoop
;!       ___awdiv
;!       ___awmod
;!     _LCDWriteString
;!       _LCDByte
;!         _LCDBusyLoop
;!   _rtc_setting
;!     _Clear_Packet
;!     _Creat_RTC_Packet
;!       _Calculate_CRC
;!       _Clear_Packet
;!       _Creat_Packet
;!       _Read_b_eep
;!     _LCDByte
;!       _LCDBusyLoop
;!     _LCDGotoXY
;!       _LCDByte
;!         _LCDBusyLoop
;!     _LCDWriteInt
;!       _LCDByte
;!         _LCDBusyLoop
;!       ___awdiv
;!       ___awmod
;!     _LCDWriteString
;!       _LCDByte
;!         _LCDBusyLoop
;!     _MyDelay
;!     _Receive_Packet
;!       _Check_CRC
;!       _Eco_Replay
;!         _LCDByte
;!           _LCDBusyLoop
;!         _LCDWriteString
;!           _LCDByte
;!             _LCDBusyLoop
;!         _USARTDataAvailable
;!         _USARTFlushBuffer
;!           _USARTDataAvailable
;!           _USARTReadData
;!         _USARTReadData
;!         _USARTWriteChar
;!       _LCDByte
;!         _LCDBusyLoop
;!       _LCDWriteString
;!         _LCDByte
;!           _LCDBusyLoop
;!       _USARTDataAvailable
;!       _USARTFlushBuffer
;!         _USARTDataAvailable
;!         _USARTReadData
;!       _USARTReadData
;!       _USARTWriteChar
;!     _Write_b_eep
;!     _ds1307_get_time
;!       _IdleI2C
;!       _ReadI2C
;!       _WriteI2C
;!         _IdleI2C
;!       _bcd2bin
;!     _ds1307_set_date_time
;!       _IdleI2C
;!       _WriteI2C
;!         _IdleI2C
;!       _bin2bcd
;!     _tx_packet
;!       _LCDByte
;!         _LCDBusyLoop
;!       _LCDWriteString
;!         _LCDByte
;!           _LCDBusyLoop
;!       _MyDelay
;!       _Send_Packet
;!         _Eco_Test
;!           _Check_Busy_Line
;!             _USARTDataAvailable
;!             _USARTFlushBuffer
;!               _USARTDataAvailable
;!               _USARTReadData
;!           _LCDByte
;!             _LCDBusyLoop
;!           _LCDWriteString
;!             _LCDByte
;!               _LCDBusyLoop
;!           _USARTDataAvailable
;!           _USARTFlushBuffer
;!             _USARTDataAvailable
;!             _USARTReadData
;!           _USARTReadData
;!           _USARTWriteChar
;!         _LCDByte
;!           _LCDBusyLoop
;!         _LCDWriteString
;!           _LCDByte
;!             _LCDBusyLoop
;!         _USARTDataAvailable
;!         _USARTFlushBuffer
;!           _USARTDataAvailable
;!           _USARTReadData
;!         _USARTReadData
;!         _USARTWriteChar
;!
;! _ISR (ROOT)
;!   _SecondsInt
;!   _USARTHandleRxInt
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
;!BANK1              100      7      87       7       52.7%
;!BITBANK0            80      0       0       4        0.0%
;!BANK0               80      0      80       5      100.0%
;!BITCOMRAM           7F      0       0       0        0.0%
;!COMRAM              7F     2F      6C       1       85.0%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0     173      15        0.0%
;!DATA                 0      0     173       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 29 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\Test1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  choice          1    6[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       1       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_LCDByte
;;		_LCDGotoXY
;;		_LCDWriteInt
;;		_LCDWriteString
;;		_MyDelay
;;		_RTUInit
;;		_beep
;;		_data_to_center
;;		_ds1307_get_time
;;		_getkey
;;		_getting_data
;;		_local_display
;;		_rtc_setting
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\Test1.c"
	line	29
global __ptext0
__ptext0:
psect	text0
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\Test1.c"
	line	29
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 22
	dw	0FFFFh
	line	31
	
l7349:
;Test1.c: 31: unsigned char choice = 0;
	movlw	low(0)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((main@choice))&0ffh
	line	32
	
l7351:; BSR set to: 1

;Test1.c: 32: RTUInit();
	call	_RTUInit	;wreg free
	line	35
	
l7353:
;Test1.c: 35: LCDWriteString("Welcome to CENTR");
		movlw	high(STR_17)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_17)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	36
	
l7355:
;Test1.c: 36: MyDelay(1000);
	movlw	high(03E8h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(03E8h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	goto	l7357
	line	37
;Test1.c: 37: while(1)
	
l825:
	line	39
	
l7357:
;Test1.c: 38: {
;Test1.c: 39: choice = 0;
	movlw	low(0)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((main@choice))&0ffh
	line	40
;Test1.c: 40: while(choice == 0)
	goto	l7391
	
l827:; BSR set to: 1

	line	42
	
l7359:; BSR set to: 1

;Test1.c: 41: {
;Test1.c: 42: choice = getkey(5);
	movlw	high(05h)
	movwf	((c:getkey@msecs+1)),c
	movlw	low(05h)
	movwf	((c:getkey@msecs)),c
	call	_getkey	;wreg free
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((main@choice))&0ffh
	line	43
	
l7361:; BSR set to: 1

;Test1.c: 43: if(sec_flag == 1)
	decf	((c:_sec_flag)),c,w

	btfss	status,2
	goto	u4721
	goto	u4720
u4721:
	goto	l7391
u4720:
	line	45
	
l7363:; BSR set to: 1

;Test1.c: 44: {
;Test1.c: 45: sec_flag = 0;
	movlw	low(0)
	movwf	((c:_sec_flag)),c
	line	46
	
l7365:; BSR set to: 1

;Test1.c: 46: ds1307_get_time();
	call	_ds1307_get_time	;wreg free
	line	48
	
l7367:
;Test1.c: 48: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	50
	
l7369:
;Test1.c: 50: LCDWriteString("Press a Switch...");
		movlw	high(STR_18)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_18)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	51
	
l7371:
;Test1.c: 51: LCDGotoXY(4,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(04h)&0ffh
	
	call	_LCDGotoXY
	line	52
	
l7373:
;Test1.c: 52: LCDWriteInt(hr,2);
	movff	(c:_hr),(c:LCDWriteInt@val)
	clrf	((c:LCDWriteInt@val+1)),c
	movlw	low(02h)
	movwf	((c:LCDWriteInt@field_length)),c
	call	_LCDWriteInt	;wreg free
	line	53
	
l7375:
;Test1.c: 53: LCDGotoXY(6,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(06h)&0ffh
	
	call	_LCDGotoXY
	line	54
	
l7377:
;Test1.c: 54: LCDWriteString(":");
		movlw	high(STR_19)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_19)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	55
	
l7379:
;Test1.c: 55: LCDGotoXY(7,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(07h)&0ffh
	
	call	_LCDGotoXY
	line	56
	
l7381:
;Test1.c: 56: LCDWriteInt(min,2);
	movff	(c:_min),(c:LCDWriteInt@val)
	clrf	((c:LCDWriteInt@val+1)),c
	movlw	low(02h)
	movwf	((c:LCDWriteInt@field_length)),c
	call	_LCDWriteInt	;wreg free
	line	57
	
l7383:
;Test1.c: 57: LCDGotoXY(9,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(09h)&0ffh
	
	call	_LCDGotoXY
	line	58
	
l7385:
;Test1.c: 58: LCDWriteString(":");
		movlw	high(STR_20)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_20)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	59
	
l7387:
;Test1.c: 59: LCDGotoXY(10,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(0Ah)&0ffh
	
	call	_LCDGotoXY
	line	60
	
l7389:
;Test1.c: 60: LCDWriteInt(sec,2);
	movff	(c:_sec),(c:LCDWriteInt@val)
	clrf	((c:LCDWriteInt@val+1)),c
	movlw	low(02h)
	movwf	((c:LCDWriteInt@field_length)),c
	call	_LCDWriteInt	;wreg free
	goto	l7391
	line	61
	
l828:
	goto	l7391
	line	62
	
l826:
	line	40
	
l7391:
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@choice))&0ffh,w
	btfsc	status,2
	goto	u4731
	goto	u4730
u4731:
	goto	l7359
u4730:
	goto	l7393
	
l829:; BSR set to: 1

	line	63
	
l7393:; BSR set to: 1

;Test1.c: 61: }
;Test1.c: 62: }
;Test1.c: 63: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	64
;Test1.c: 64: beep(50);
	movlw	high(032h)
	movwf	((c:beep@del+1)),c
	movlw	low(032h)
	movwf	((c:beep@del)),c
	call	_beep	;wreg free
	line	65
;Test1.c: 65: switch(choice)
	goto	l7445
	line	67
;Test1.c: 66: {
;Test1.c: 67: case 1:
	
l831:
	line	68
	
l7395:
;Test1.c: 68: LCDWriteString("MODE = SEND");
		movlw	high(STR_21)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_21)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	69
	
l7397:
;Test1.c: 69: LCDGotoXY(0,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(0)&0ffh
	
	call	_LCDGotoXY
	line	70
	
l7399:
;Test1.c: 70: LCDWriteString("DATA TO CENTER");
		movlw	high(STR_22)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_22)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	71
;Test1.c: 71: MyDelay(100);
	movlw	high(064h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(064h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	72
;Test1.c: 72: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	73
	
l7401:
;Test1.c: 73: data_to_center();
	call	_data_to_center	;wreg free
	line	74
;Test1.c: 74: break;
	goto	l7357
	line	75
;Test1.c: 75: case 2:
	
l833:
	line	76
	
l7403:
;Test1.c: 76: LCDWriteString("MODE = MEMORY");
		movlw	high(STR_23)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_23)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	77
	
l7405:
;Test1.c: 77: LCDGotoXY(0,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(0)&0ffh
	
	call	_LCDGotoXY
	line	78
	
l7407:
;Test1.c: 78: LCDWriteString("AND RTC DISPLAY");
		movlw	high(STR_24)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_24)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	79
	
l7409:
;Test1.c: 79: local_display();
	call	_local_display	;wreg free
	line	80
	
l7411:
;Test1.c: 80: MyDelay(100);
	movlw	high(064h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(064h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	81
;Test1.c: 81: break;
	goto	l7357
	line	82
;Test1.c: 82: case 3:
	
l834:
	line	83
	
l7413:
;Test1.c: 83: LCDWriteString("MODE = GET");
		movlw	high(STR_25)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_25)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	84
	
l7415:
;Test1.c: 84: LCDGotoXY(0,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(0)&0ffh
	
	call	_LCDGotoXY
	line	85
	
l7417:
;Test1.c: 85: LCDWriteString("RTC SETTINGS");
		movlw	high(STR_26)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_26)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	86
;Test1.c: 86: MyDelay(100);
	movlw	high(064h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(064h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	87
	
l7419:
;Test1.c: 87: rtc_setting();
	call	_rtc_setting	;wreg free
	line	88
;Test1.c: 88: break;
	goto	l7357
	line	89
;Test1.c: 89: case 4:
	
l835:
	line	90
	
l7421:
;Test1.c: 90: LCDWriteString("MODE = WAITING");
		movlw	high(STR_27)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_27)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	91
	
l7423:
;Test1.c: 91: LCDGotoXY(0,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(0)&0ffh
	
	call	_LCDGotoXY
	line	92
	
l7425:
;Test1.c: 92: LCDWriteString("FOR RTU. PACKET");
		movlw	high(STR_28)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_28)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	93
;Test1.c: 93: MyDelay(100);
	movlw	high(064h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(064h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	94
	
l7427:
;Test1.c: 94: getting_data();
	call	_getting_data	;wreg free
	line	95
;Test1.c: 95: break;
	goto	l7357
	line	96
;Test1.c: 96: case 5:
	
l836:
	line	97
	
l7429:
;Test1.c: 97: LCDWriteString("THIS SWITCH IS");
		movlw	high(STR_29)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_29)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	98
	
l7431:
;Test1.c: 98: LCDGotoXY(0,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(0)&0ffh
	
	call	_LCDGotoXY
	line	99
	
l7433:
;Test1.c: 99: LCDWriteString("FOR FUTURE USE");
		movlw	high(STR_30)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_30)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	100
;Test1.c: 100: MyDelay(100);
	movlw	high(064h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(064h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	102
;Test1.c: 102: break;
	goto	l7357
	line	103
;Test1.c: 103: default :
	
l837:
	line	104
	
l7435:
;Test1.c: 104: LCDWriteString("MODE = WAITING");
		movlw	high(STR_31)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_31)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	105
	
l7437:
;Test1.c: 105: LCDGotoXY(0,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(0)&0ffh
	
	call	_LCDGotoXY
	line	106
	
l7439:
;Test1.c: 106: LCDWriteString("FOR RTU. PACKET");
		movlw	high(STR_32)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_32)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	107
;Test1.c: 107: MyDelay(100);
	movlw	high(064h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(064h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	108
	
l7441:
;Test1.c: 108: getting_data();
	call	_getting_data	;wreg free
	line	109
;Test1.c: 109: break;
	goto	l7357
	line	110
	
l7443:
;Test1.c: 110: }
	goto	l7357
	line	65
	
l830:
	
l7445:
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@choice))&0ffh,w
	; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 1 to 5
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	l7395
	xorlw	2^1	; case 2
	skipnz
	goto	l7403
	xorlw	3^2	; case 3
	skipnz
	goto	l7413
	xorlw	4^3	; case 4
	skipnz
	goto	l7421
	xorlw	5^4	; case 5
	skipnz
	goto	l7429
	goto	l7435

	line	110
	
l832:; BSR set to: 1

	goto	l7357
	line	112
	
l838:; BSR set to: 1

	line	37
	goto	l7357
	
l839:; BSR set to: 1

	line	113
	
l840:; BSR set to: 1

	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_rtc_setting

;; *************** function _rtc_setting *****************
;; Defined at:
;;		line 372 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\Test1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    4[BANK1 ] unsigned char 
;;  result          1    3[BANK1 ] unsigned char 
;;  s               1    2[BANK1 ] unsigned char 
;;  mem_loc         1    1[BANK1 ] unsigned char 
;;  atm             1    0[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       5       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_Clear_Packet
;;		_Creat_RTC_Packet
;;		_LCDByte
;;		_LCDGotoXY
;;		_LCDWriteInt
;;		_LCDWriteString
;;		_MyDelay
;;		_Receive_Packet
;;		_Write_b_eep
;;		_ds1307_get_time
;;		_ds1307_set_date_time
;;		_tx_packet
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	line	372
global __ptext1
__ptext1:
psect	text1
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\Test1.c"
	line	372
	global	__size_of_rtc_setting
	__size_of_rtc_setting	equ	__end_of_rtc_setting-_rtc_setting
	
_rtc_setting:; BSR set to: 1

;incstack = 0
	opt	stack 22
	dw	0FFFFh
	line	376
	
l6947:
;Test1.c: 376: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	377
	
l6949:
;Test1.c: 377: LCDWriteString("REQUESTING RTC...");
		movlw	high(STR_54)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_54)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	380
	
l6951:
;Test1.c: 380: unsigned char result = 0x00;
	movlw	low(0)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((rtc_setting@result))&0ffh
	line	381
	
l6953:; BSR set to: 1

;Test1.c: 381: unsigned char atm = 0;
	movlw	low(0)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((rtc_setting@atm))&0ffh
	line	383
	
l6955:; BSR set to: 1

;Test1.c: 383: Clear_Packet();
	call	_Clear_Packet	;wreg free
	line	384
	
l6957:
;Test1.c: 384: Creat_RTC_Packet('x');
	movlw	(078h)&0ffh
	
	call	_Creat_RTC_Packet
	line	385
	
l6959:
;Test1.c: 385: Destination_ID = Master_ID;
	movff	(c:_Master_ID),(c:_Destination_ID)
	line	386
	
l6961:
;Test1.c: 386: tx_packet();
	call	_tx_packet	;wreg free
	line	387
	
l6963:
;Test1.c: 387: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	388
	
l6965:
;Test1.c: 388: LCDWriteString("REQUEST SENT!");
		movlw	high(STR_55)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_55)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	391
;Test1.c: 391: while(result == 0x00 && atm < 10)
	goto	l6971
	
l872:
	line	393
	
l6967:
;Test1.c: 392: {
;Test1.c: 393: result = Receive_Packet();
	call	_Receive_Packet	;wreg free
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((rtc_setting@result))&0ffh
	line	394
	
l6969:; BSR set to: 1

;Test1.c: 394: atm++;
	movlb	1	; () banked
	movlb	1	; () banked
	incf	((rtc_setting@atm))&0ffh
	goto	l6971
	line	395
	
l871:; BSR set to: 1

	line	391
	
l6971:
	movlb	1	; () banked
	movlb	1	; () banked
	tstfsz	((rtc_setting@result))&0ffh
	goto	u4391
	goto	u4390
u4391:
	goto	l875
u4390:
	
l6973:; BSR set to: 1

	movlw	(0Ah-1)
	movlb	1	; () banked
	movlb	1	; () banked
	cpfsgt	((rtc_setting@atm))&0ffh
	goto	u4401
	goto	u4400
u4401:
	goto	l6967
u4400:
	goto	l875
	
l874:; BSR set to: 1

	
l875:; BSR set to: 1

	line	396
;Test1.c: 395: }
;Test1.c: 396: if(result == 0x00)
	movlb	1	; () banked
	movlb	1	; () banked
	tstfsz	((rtc_setting@result))&0ffh
	goto	u4411
	goto	u4410
u4411:
	goto	l6983
u4410:
	goto	l6975
	line	398
;Test1.c: 397: {
;Test1.c: 398: while(1)
	
l877:; BSR set to: 1

	line	400
	
l6975:
;Test1.c: 399: {
;Test1.c: 400: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	401
;Test1.c: 401: MyDelay(100);
	movlw	high(064h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(064h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	402
	
l6977:
;Test1.c: 402: LCDWriteString("SETTINGS NOT");
		movlw	high(STR_56)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_56)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	403
	
l6979:
;Test1.c: 403: LCDGotoXY(0,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(0)&0ffh
	
	call	_LCDGotoXY
	line	404
;Test1.c: 404: LCDWriteString("RECEIVED...");
		movlw	high(STR_57)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_57)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	405
	
l6981:
;Test1.c: 405: MyDelay(100);
	movlw	high(064h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(064h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	goto	l6975
	line	406
	
l878:
	line	398
	goto	l6975
	
l879:
	goto	l6983
	line	407
	
l876:
	line	409
	
l6983:
;Test1.c: 406: }
;Test1.c: 407: }
;Test1.c: 409: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	410
	
l6985:
;Test1.c: 410: LCDWriteString("UPDATING RTC");
		movlw	high(STR_58)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_58)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	411
	
l6987:
;Test1.c: 411: day = PACKET[8];
	movff	0+(_PACKET+08h),(c:_day)	;volatile
	line	412
	
l6989:
;Test1.c: 412: month = PACKET[7];
	movff	0+(_PACKET+07h),(c:_month)	;volatile
	line	413
	
l6991:
;Test1.c: 413: year = PACKET[6];
	movff	0+(_PACKET+06h),(c:_year)	;volatile
	line	414
	
l6993:
;Test1.c: 414: dow = PACKET[9];
	movff	0+(_PACKET+09h),(c:_dow)	;volatile
	line	415
	
l6995:
;Test1.c: 415: hr = PACKET[10];
	movff	0+(_PACKET+0Ah),(c:_hr)	;volatile
	line	416
	
l6997:
;Test1.c: 416: min = PACKET[11];
	movff	0+(_PACKET+0Bh),(c:_min)	;volatile
	line	417
	
l6999:
;Test1.c: 417: sec = PACKET[12];
	movff	0+(_PACKET+0Ch),(c:_sec)	;volatile
	line	419
	
l7001:
;Test1.c: 419: ds1307_set_date_time();
	call	_ds1307_set_date_time	;wreg free
	line	420
	
l7003:
;Test1.c: 420: MyDelay(100);
	movlw	high(064h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(064h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	423
	
l7005:
;Test1.c: 423: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	424
;Test1.c: 424: LCDWriteString("UPDATING THRESHOLDS");
		movlw	high(STR_59)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_59)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	425
	
l7007:
;Test1.c: 425: LCDGotoXY(0,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(0)&0ffh
	
	call	_LCDGotoXY
	line	426
	
l7009:
;Test1.c: 426: LCDWriteString("UPDATING TRIGERS");
		movlw	high(STR_60)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_60)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	428
	
l7011:
;Test1.c: 428: char mem_loc = 5;
	movlw	low(05h)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((rtc_setting@mem_loc))&0ffh
	line	429
	
l7013:; BSR set to: 1

;Test1.c: 429: char i = 13;
	movlw	low(0Dh)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((rtc_setting@i))&0ffh
	line	430
	
l7015:; BSR set to: 1

;Test1.c: 430: for(i = 13; i<(13+32);i++)
	movlw	low(0Dh)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((rtc_setting@i))&0ffh
	
l7017:; BSR set to: 1

	movlw	(02Dh-1)
	movlb	1	; () banked
	movlb	1	; () banked
	cpfsgt	((rtc_setting@i))&0ffh
	goto	u4421
	goto	u4420
u4421:
	goto	l7021
u4420:
	goto	l7031
	
l7019:; BSR set to: 1

	goto	l7031
	line	431
	
l880:; BSR set to: 1

	line	432
	
l7021:; BSR set to: 1

;Test1.c: 431: {
;Test1.c: 432: Write_b_eep(mem_loc,PACKET[i]);
	movlb	1	; () banked
	movff	(rtc_setting@mem_loc),(c:Write_b_eep@badd)
	clrf	((c:Write_b_eep@badd+1)),c
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((rtc_setting@i))&0ffh,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:Write_b_eep@bdat)),c
	call	_Write_b_eep	;wreg free
	line	433
	
l7023:
;Test1.c: 433: _delay(50);
	movlw	10
u4857:
	nop
decfsz	wreg,f
	goto	u4857

	line	434
	
l7025:
;Test1.c: 434: mem_loc++;
	movlb	1	; () banked
	movlb	1	; () banked
	incf	((rtc_setting@mem_loc))&0ffh
	line	430
	
l7027:; BSR set to: 1

	movlb	1	; () banked
	movlb	1	; () banked
	incf	((rtc_setting@i))&0ffh
	
l7029:; BSR set to: 1

	movlw	(02Dh-1)
	movlb	1	; () banked
	movlb	1	; () banked
	cpfsgt	((rtc_setting@i))&0ffh
	goto	u4431
	goto	u4430
u4431:
	goto	l7021
u4430:
	goto	l7031
	
l881:; BSR set to: 1

	line	437
	
l7031:; BSR set to: 1

;Test1.c: 435: }
;Test1.c: 437: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	438
	
l7033:
;Test1.c: 438: LCDWriteString("UPDATE COMPLETED...!");
		movlw	high(STR_61)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_61)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	440
	
l7035:
;Test1.c: 440: unsigned char s = 0;
	movlw	low(0)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((rtc_setting@s))&0ffh
	line	441
;Test1.c: 441: while(s < 60)
	goto	l7069
	
l883:; BSR set to: 1

	line	443
	
l7037:; BSR set to: 1

;Test1.c: 442: {
;Test1.c: 443: if(sec_flag == 1)
	decf	((c:_sec_flag)),c,w

	btfss	status,2
	goto	u4441
	goto	u4440
u4441:
	goto	l7069
u4440:
	line	445
	
l7039:; BSR set to: 1

;Test1.c: 444: {
;Test1.c: 445: sec_flag = 0;
	movlw	low(0)
	movwf	((c:_sec_flag)),c
	line	446
	
l7041:; BSR set to: 1

;Test1.c: 446: s++;
	movlb	1	; () banked
	movlb	1	; () banked
	incf	((rtc_setting@s))&0ffh
	line	447
	
l7043:; BSR set to: 1

;Test1.c: 447: ds1307_get_time();
	call	_ds1307_get_time	;wreg free
	line	449
	
l7045:
;Test1.c: 449: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	451
	
l7047:
;Test1.c: 451: LCDWriteString("UPDATE COMPLETED...!");
		movlw	high(STR_62)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_62)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	452
	
l7049:
;Test1.c: 452: LCDGotoXY(4,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(04h)&0ffh
	
	call	_LCDGotoXY
	line	453
	
l7051:
;Test1.c: 453: LCDWriteInt(hr,2);
	movff	(c:_hr),(c:LCDWriteInt@val)
	clrf	((c:LCDWriteInt@val+1)),c
	movlw	low(02h)
	movwf	((c:LCDWriteInt@field_length)),c
	call	_LCDWriteInt	;wreg free
	line	454
	
l7053:
;Test1.c: 454: LCDGotoXY(6,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(06h)&0ffh
	
	call	_LCDGotoXY
	line	455
	
l7055:
;Test1.c: 455: LCDWriteString(":");
		movlw	high(STR_63)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_63)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	456
	
l7057:
;Test1.c: 456: LCDGotoXY(7,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(07h)&0ffh
	
	call	_LCDGotoXY
	line	457
	
l7059:
;Test1.c: 457: LCDWriteInt(min,2);
	movff	(c:_min),(c:LCDWriteInt@val)
	clrf	((c:LCDWriteInt@val+1)),c
	movlw	low(02h)
	movwf	((c:LCDWriteInt@field_length)),c
	call	_LCDWriteInt	;wreg free
	line	458
	
l7061:
;Test1.c: 458: LCDGotoXY(9,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(09h)&0ffh
	
	call	_LCDGotoXY
	line	459
	
l7063:
;Test1.c: 459: LCDWriteString(":");
		movlw	high(STR_64)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_64)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	460
	
l7065:
;Test1.c: 460: LCDGotoXY(10,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(0Ah)&0ffh
	
	call	_LCDGotoXY
	line	461
	
l7067:
;Test1.c: 461: LCDWriteInt(sec,2);
	movff	(c:_sec),(c:LCDWriteInt@val)
	clrf	((c:LCDWriteInt@val+1)),c
	movlw	low(02h)
	movwf	((c:LCDWriteInt@field_length)),c
	call	_LCDWriteInt	;wreg free
	goto	l7069
	line	462
	
l884:
	goto	l7069
	line	463
	
l882:
	line	441
	
l7069:
	movlw	(03Ch-1)
	movlb	1	; () banked
	movlb	1	; () banked
	cpfsgt	((rtc_setting@s))&0ffh
	goto	u4451
	goto	u4450
u4451:
	goto	l7037
u4450:
	goto	l886
	
l885:; BSR set to: 1

	line	465
;Test1.c: 462: }
;Test1.c: 463: }
;Test1.c: 464: return;
	
l886:; BSR set to: 1

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_rtc_setting
	__end_of_rtc_setting:
	signat	_rtc_setting,88
	global	_local_display

;; *************** function _local_display *****************
;; Defined at:
;;		line 539 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\Test1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  s               1   42[COMRAM] unsigned char 
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
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_LCDByte
;;		_LCDGotoXY
;;		_LCDWriteInt
;;		_LCDWriteString
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
	line	539
global __ptext2
__ptext2:
psect	text2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\Test1.c"
	line	539
	global	__size_of_local_display
	__size_of_local_display	equ	__end_of_local_display-_local_display
	
_local_display:; BSR set to: 1

;incstack = 0
	opt	stack 25
	dw	0FFFFh
	line	541
	
l6907:
;Test1.c: 541: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	542
	
l6909:
;Test1.c: 542: LCDWriteString("MEM1=");
		movlw	high(STR_72)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_72)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	543
	
l6911:
;Test1.c: 543: LCDWriteInt(Write_Page1,3);
	movff	(c:_Write_Page1),(c:LCDWriteInt@val)
	movff	(c:_Write_Page1+1),(c:LCDWriteInt@val+1)
	movlw	low(03h)
	movwf	((c:LCDWriteInt@field_length)),c
	call	_LCDWriteInt	;wreg free
	line	544
	
l6913:
;Test1.c: 544: LCDWriteString(" MEM2=");
		movlw	high(STR_73)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_73)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	545
	
l6915:
;Test1.c: 545: LCDWriteInt(Write_Page2,3);
	movff	(c:_Write_Page2),(c:LCDWriteInt@val)
	movff	(c:_Write_Page2+1),(c:LCDWriteInt@val+1)
	movlw	low(03h)
	movwf	((c:LCDWriteInt@field_length)),c
	call	_LCDWriteInt	;wreg free
	line	547
	
l6917:
;Test1.c: 547: unsigned char s = 0;
	movlw	low(0)
	movwf	((c:local_display@s)),c
	line	548
;Test1.c: 548: while(s < 60)
	goto	l6945
	
l902:
	line	550
	
l6919:
;Test1.c: 549: {
;Test1.c: 550: if(sec_flag == 1)
	decf	((c:_sec_flag)),c,w

	btfss	status,2
	goto	u4371
	goto	u4370
u4371:
	goto	l6945
u4370:
	line	552
	
l6921:
;Test1.c: 551: {
;Test1.c: 552: sec_flag = 0;
	movlw	low(0)
	movwf	((c:_sec_flag)),c
	line	553
	
l6923:
;Test1.c: 553: s++;
	incf	((c:local_display@s)),c
	line	554
	
l6925:
;Test1.c: 554: LCDGotoXY(4,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(04h)&0ffh
	
	call	_LCDGotoXY
	line	555
	
l6927:
;Test1.c: 555: LCDWriteInt(hr,2);
	movff	(c:_hr),(c:LCDWriteInt@val)
	clrf	((c:LCDWriteInt@val+1)),c
	movlw	low(02h)
	movwf	((c:LCDWriteInt@field_length)),c
	call	_LCDWriteInt	;wreg free
	line	556
	
l6929:
;Test1.c: 556: LCDGotoXY(6,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(06h)&0ffh
	
	call	_LCDGotoXY
	line	557
	
l6931:
;Test1.c: 557: LCDWriteString(":");
		movlw	high(STR_74)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_74)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	558
	
l6933:
;Test1.c: 558: LCDGotoXY(7,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(07h)&0ffh
	
	call	_LCDGotoXY
	line	559
	
l6935:
;Test1.c: 559: LCDWriteInt(min,2);
	movff	(c:_min),(c:LCDWriteInt@val)
	clrf	((c:LCDWriteInt@val+1)),c
	movlw	low(02h)
	movwf	((c:LCDWriteInt@field_length)),c
	call	_LCDWriteInt	;wreg free
	line	560
	
l6937:
;Test1.c: 560: LCDGotoXY(9,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(09h)&0ffh
	
	call	_LCDGotoXY
	line	561
	
l6939:
;Test1.c: 561: LCDWriteString(":");
		movlw	high(STR_75)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_75)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	562
	
l6941:
;Test1.c: 562: LCDGotoXY(10,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(0Ah)&0ffh
	
	call	_LCDGotoXY
	line	563
	
l6943:
;Test1.c: 563: LCDWriteInt(sec,2);
	movff	(c:_sec),(c:LCDWriteInt@val)
	clrf	((c:LCDWriteInt@val+1)),c
	movlw	low(02h)
	movwf	((c:LCDWriteInt@field_length)),c
	call	_LCDWriteInt	;wreg free
	goto	l6945
	line	564
	
l903:
	goto	l6945
	line	565
	
l901:
	line	548
	
l6945:
	movlw	(03Ch-1)
	cpfsgt	((c:local_display@s)),c
	goto	u4381
	goto	u4380
u4381:
	goto	l6919
u4380:
	goto	l905
	
l904:
	line	567
;Test1.c: 564: }
;Test1.c: 565: }
;Test1.c: 566: return;
	
l905:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_local_display
	__end_of_local_display:
	signat	_local_display,88
	global	_LCDWriteInt

;; *************** function _LCDWriteInt *****************
;; Defined at:
;;		line 266 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\lcd_hd44780_pic18.c"
;; Parameters:    Size  Location     Type
;;  val             2   28[COMRAM] int 
;;  field_length    1   30[COMRAM] char 
;; Auto vars:     Size  Location     Type
;;  str             5   33[COMRAM] unsigned char [5]
;;  i               2   40[COMRAM] int 
;;  j               2   38[COMRAM] int 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_LCDByte
;;		___awdiv
;;		___awmod
;; This function is called by:
;;		_main
;;		_rtc_setting
;;		_local_display
;;		_reset_unit
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\lcd_hd44780_pic18.c"
	line	266
global __ptext3
__ptext3:
psect	text3
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\lcd_hd44780_pic18.c"
	line	266
	global	__size_of_LCDWriteInt
	__size_of_LCDWriteInt	equ	__end_of_LCDWriteInt-_LCDWriteInt
	
_LCDWriteInt:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
	line	279
	
l6257:
;lcd_hd44780_pic18.c: 279: char str[5]={0,0,0,0,0};
	lfsr	2,(LCDWriteInt@F3701)
	lfsr	1,(LCDWriteInt@str)
	movlw	5
u3641:
	movff	postinc2,postinc1
	decfsz	wreg
	goto	u3641
	line	280
	
l6259:
;lcd_hd44780_pic18.c: 280: int i=4,j=0;
	movlw	high(04h)
	movwf	((c:LCDWriteInt@i+1)),c
	movlw	low(04h)
	movwf	((c:LCDWriteInt@i)),c
	
l6261:
	movlw	high(0)
	movwf	((c:LCDWriteInt@j+1)),c
	movlw	low(0)
	movwf	((c:LCDWriteInt@j)),c
	line	283
	
l6263:
;lcd_hd44780_pic18.c: 283: if(val<0)
	movf	((c:LCDWriteInt@val+1)),c,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	0
	btfsc	status,2
	subwf	((c:LCDWriteInt@val)),c,w
	btfsc	status,0
	goto	u3651
	goto	u3650
u3651:
	goto	l6275
u3650:
	line	285
	
l6265:
;lcd_hd44780_pic18.c: 284: {
;lcd_hd44780_pic18.c: 285: (LCDByte('-',1));
	movlw	low(01h)
	movwf	((c:LCDByte@isdata)),c
	movlw	(02Dh)&0ffh
	
	call	_LCDByte
	line	286
	
l6267:
;lcd_hd44780_pic18.c: 286: val=val*-1;
	negf	((c:LCDWriteInt@val)),c
	comf	((c:LCDWriteInt@val+1)),c
	btfsc	status,0
	incf	((c:LCDWriteInt@val+1)),c
	goto	l6275
	line	287
	
l215:
	line	289
;lcd_hd44780_pic18.c: 287: }
;lcd_hd44780_pic18.c: 289: while(val)
	goto	l6275
	
l217:
	line	291
	
l6269:
;lcd_hd44780_pic18.c: 290: {
;lcd_hd44780_pic18.c: 291: str[i]=val%10;
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

	line	292
	
l6271:
;lcd_hd44780_pic18.c: 292: val=val/10;
	movff	(c:LCDWriteInt@val),(c:___awdiv@dividend)
	movff	(c:LCDWriteInt@val+1),(c:___awdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movff	0+?___awdiv,(c:LCDWriteInt@val)
	movff	1+?___awdiv,(c:LCDWriteInt@val+1)
	line	293
	
l6273:
;lcd_hd44780_pic18.c: 293: i--;
	decf	((c:LCDWriteInt@i)),c
	btfss	status,0
	decf	((c:LCDWriteInt@i+1)),c
	goto	l6275
	line	294
	
l216:
	line	289
	
l6275:
	movf	((c:LCDWriteInt@val+1)),c,w
	iorwf ((c:LCDWriteInt@val)),c,w

	btfss	status,2
	goto	u3661
	goto	u3660
u3661:
	goto	l6269
u3660:
	goto	l6277
	
l218:
	line	295
	
l6277:
;lcd_hd44780_pic18.c: 294: }
;lcd_hd44780_pic18.c: 295: if(field_length==-1)
	incf	((c:LCDWriteInt@field_length)),c,w

	btfss	status,2
	goto	u3671
	goto	u3670
u3671:
	goto	l6285
u3670:
	goto	l6283
	line	296
	
l6279:
;lcd_hd44780_pic18.c: 296: while(str[j]==0) j++;
	goto	l6283
	
l221:
	
l6281:
	infsnz	((c:LCDWriteInt@j)),c
	incf	((c:LCDWriteInt@j+1)),c
	goto	l6283
	
l220:
	
l6283:
	movlw	low((c:LCDWriteInt@str))
	addwf	((c:LCDWriteInt@j)),c,w
	movwf	c:fsr2l
	movlw	high((c:LCDWriteInt@str))
	addwfc	((c:LCDWriteInt@j+1)),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	btfsc	status,2
	goto	u3681
	goto	u3680
u3681:
	goto	l6281
u3680:
	goto	l6287
	
l222:
	goto	l6287
	line	297
	
l219:
	line	298
	
l6285:
;lcd_hd44780_pic18.c: 297: else
;lcd_hd44780_pic18.c: 298: j=5-field_length;
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
	goto	l6287
	
l223:
	line	301
	
l6287:
;lcd_hd44780_pic18.c: 301: for(i=j;i<5;i++)
	movff	(c:LCDWriteInt@j),(c:LCDWriteInt@i)
	movff	(c:LCDWriteInt@j+1),(c:LCDWriteInt@i+1)
	movf	((c:LCDWriteInt@i+1)),c,w
	xorlw	80h
	addlw	-((0)^80h)
	movlw	05h
	btfsc	status,2
	subwf	((c:LCDWriteInt@i)),c,w
	btfss	status,0
	goto	u3691
	goto	u3690
u3691:
	goto	l6291
u3690:
	goto	l226
	
l6289:
	goto	l226
	line	302
	
l224:
	line	303
	
l6291:
;lcd_hd44780_pic18.c: 302: {
;lcd_hd44780_pic18.c: 303: (LCDByte(48+str[i],1));
	movlw	low(01h)
	movwf	((c:LCDByte@isdata)),c
	movlw	low((c:LCDWriteInt@str))
	addwf	((c:LCDWriteInt@i)),c,w
	movwf	c:fsr2l
	movlw	high((c:LCDWriteInt@str))
	addwfc	((c:LCDWriteInt@i+1)),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	addlw	low(030h)
	
	call	_LCDByte
	line	301
	
l6293:
	infsnz	((c:LCDWriteInt@i)),c
	incf	((c:LCDWriteInt@i+1)),c
	
l6295:
	movf	((c:LCDWriteInt@i+1)),c,w
	xorlw	80h
	addlw	-((0)^80h)
	movlw	05h
	btfsc	status,2
	subwf	((c:LCDWriteInt@i)),c,w
	btfss	status,0
	goto	u3701
	goto	u3700
u3701:
	goto	l6291
u3700:
	goto	l226
	
l225:
	line	305
	
l226:
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
;;  dividend        2   19[COMRAM] int 
;;  divisor         2   21[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   24[COMRAM] unsigned char 
;;  counter         1   23[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   19[COMRAM] int 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCDWriteInt
;;		_USARTWriteInt
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	8
global __ptext4
__ptext4:
psect	text4
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	8
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:
;incstack = 0
	opt	stack 26
	dw	0FFFFh
	line	13
	
l6065:
	movlw	low(0)
	movwf	((c:___awmod@sign)),c
	line	14
	
l6067:
	movf	((c:___awmod@dividend+1)),c,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	0
	btfsc	status,2
	subwf	((c:___awmod@dividend)),c,w
	btfsc	status,0
	goto	u3501
	goto	u3500
u3501:
	goto	l6073
u3500:
	line	15
	
l6069:
	negf	((c:___awmod@dividend)),c
	comf	((c:___awmod@dividend+1)),c
	btfsc	status,0
	incf	((c:___awmod@dividend+1)),c
	line	16
	
l6071:
	movlw	low(01h)
	movwf	((c:___awmod@sign)),c
	goto	l6073
	line	17
	
l1432:
	line	18
	
l6073:
	movf	((c:___awmod@divisor+1)),c,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	0
	btfsc	status,2
	subwf	((c:___awmod@divisor)),c,w
	btfsc	status,0
	goto	u3511
	goto	u3510
u3511:
	goto	l6077
u3510:
	line	19
	
l6075:
	negf	((c:___awmod@divisor)),c
	comf	((c:___awmod@divisor+1)),c
	btfsc	status,0
	incf	((c:___awmod@divisor+1)),c
	goto	l6077
	
l1433:
	line	20
	
l6077:
	movf	((c:___awmod@divisor+1)),c,w
	iorwf ((c:___awmod@divisor)),c,w

	btfsc	status,2
	goto	u3521
	goto	u3520
u3521:
	goto	l6093
u3520:
	line	21
	
l6079:
	movlw	low(01h)
	movwf	((c:___awmod@counter)),c
	line	22
	goto	l6083
	
l1436:
	line	23
	
l6081:
	bcf	status,0
	rlcf	((c:___awmod@divisor)),c
	rlcf	((c:___awmod@divisor+1)),c
	line	24
	incf	((c:___awmod@counter)),c
	goto	l6083
	line	25
	
l1435:
	line	22
	
l6083:
	
	btfss	((c:___awmod@divisor+1)),c,(15)&7
	goto	u3531
	goto	u3530
u3531:
	goto	l6081
u3530:
	goto	l6085
	
l1437:
	goto	l6085
	line	26
	
l1438:
	line	27
	
l6085:
	movf	((c:___awmod@divisor)),c,w
	subwf	((c:___awmod@dividend)),c,w
	movf	((c:___awmod@divisor+1)),c,w
	subwfb	((c:___awmod@dividend+1)),c,w
	btfss	status,0
	goto	u3541
	goto	u3540
u3541:
	goto	l6089
u3540:
	line	28
	
l6087:
	movf	((c:___awmod@divisor)),c,w
	subwf	((c:___awmod@dividend)),c
	movf	((c:___awmod@divisor+1)),c,w
	subwfb	((c:___awmod@dividend+1)),c

	goto	l6089
	
l1439:
	line	29
	
l6089:
	bcf	status,0
	rrcf	((c:___awmod@divisor+1)),c
	rrcf	((c:___awmod@divisor)),c
	line	30
	
l6091:
	decfsz	((c:___awmod@counter)),c
	
	goto	l6085
	goto	l6093
	
l1440:
	goto	l6093
	line	31
	
l1434:
	line	32
	
l6093:
	movf	((c:___awmod@sign)),c,w
	btfsc	status,2
	goto	u3551
	goto	u3550
u3551:
	goto	l6097
u3550:
	line	33
	
l6095:
	negf	((c:___awmod@dividend)),c
	comf	((c:___awmod@dividend+1)),c
	btfsc	status,0
	incf	((c:___awmod@dividend+1)),c
	goto	l6097
	
l1441:
	line	34
	
l6097:
	movff	(c:___awmod@dividend),(c:?___awmod)
	movff	(c:___awmod@dividend+1),(c:?___awmod+1)
	goto	l1442
	
l6099:
	line	35
	
l1442:
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
;;  dividend        2   19[COMRAM] int 
;;  divisor         2   21[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   25[COMRAM] int 
;;  sign            1   24[COMRAM] unsigned char 
;;  counter         1   23[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   19[COMRAM] int 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCDWriteInt
;;		_USARTWriteInt
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	8
global __ptext5
__ptext5:
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	8
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:
;incstack = 0
	opt	stack 26
	dw	0FFFFh
	line	14
	
l6021:
	movlw	low(0)
	movwf	((c:___awdiv@sign)),c
	line	15
	
l6023:
	movf	((c:___awdiv@divisor+1)),c,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	0
	btfsc	status,2
	subwf	((c:___awdiv@divisor)),c,w
	btfsc	status,0
	goto	u3441
	goto	u3440
u3441:
	goto	l6029
u3440:
	line	16
	
l6025:
	negf	((c:___awdiv@divisor)),c
	comf	((c:___awdiv@divisor+1)),c
	btfsc	status,0
	incf	((c:___awdiv@divisor+1)),c
	line	17
	
l6027:
	movlw	low(01h)
	movwf	((c:___awdiv@sign)),c
	goto	l6029
	line	18
	
l1419:
	line	19
	
l6029:
	movf	((c:___awdiv@dividend+1)),c,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	0
	btfsc	status,2
	subwf	((c:___awdiv@dividend)),c,w
	btfsc	status,0
	goto	u3451
	goto	u3450
u3451:
	goto	l6035
u3450:
	line	20
	
l6031:
	negf	((c:___awdiv@dividend)),c
	comf	((c:___awdiv@dividend+1)),c
	btfsc	status,0
	incf	((c:___awdiv@dividend+1)),c
	line	21
	
l6033:
	movlw	(01h)&0ffh
	xorwf	((c:___awdiv@sign)),c
	goto	l6035
	line	22
	
l1420:
	line	23
	
l6035:
	movlw	high(0)
	movwf	((c:___awdiv@quotient+1)),c
	movlw	low(0)
	movwf	((c:___awdiv@quotient)),c
	line	24
	
l6037:
	movf	((c:___awdiv@divisor+1)),c,w
	iorwf ((c:___awdiv@divisor)),c,w

	btfsc	status,2
	goto	u3461
	goto	u3460
u3461:
	goto	l6057
u3460:
	line	25
	
l6039:
	movlw	low(01h)
	movwf	((c:___awdiv@counter)),c
	line	26
	goto	l6043
	
l1423:
	line	27
	
l6041:
	bcf	status,0
	rlcf	((c:___awdiv@divisor)),c
	rlcf	((c:___awdiv@divisor+1)),c
	line	28
	incf	((c:___awdiv@counter)),c
	goto	l6043
	line	29
	
l1422:
	line	26
	
l6043:
	
	btfss	((c:___awdiv@divisor+1)),c,(15)&7
	goto	u3471
	goto	u3470
u3471:
	goto	l6041
u3470:
	goto	l6045
	
l1424:
	goto	l6045
	line	30
	
l1425:
	line	31
	
l6045:
	bcf	status,0
	rlcf	((c:___awdiv@quotient)),c
	rlcf	((c:___awdiv@quotient+1)),c
	line	32
	
l6047:
	movf	((c:___awdiv@divisor)),c,w
	subwf	((c:___awdiv@dividend)),c,w
	movf	((c:___awdiv@divisor+1)),c,w
	subwfb	((c:___awdiv@dividend+1)),c,w
	btfss	status,0
	goto	u3481
	goto	u3480
u3481:
	goto	l6053
u3480:
	line	33
	
l6049:
	movf	((c:___awdiv@divisor)),c,w
	subwf	((c:___awdiv@dividend)),c
	movf	((c:___awdiv@divisor+1)),c,w
	subwfb	((c:___awdiv@dividend+1)),c

	line	34
	
l6051:
	bsf	(0+(0/8)+(c:___awdiv@quotient)),c,(0)&7
	goto	l6053
	line	35
	
l1426:
	line	36
	
l6053:
	bcf	status,0
	rrcf	((c:___awdiv@divisor+1)),c
	rrcf	((c:___awdiv@divisor)),c
	line	37
	
l6055:
	decfsz	((c:___awdiv@counter)),c
	
	goto	l6045
	goto	l6057
	
l1427:
	goto	l6057
	line	38
	
l1421:
	line	39
	
l6057:
	movf	((c:___awdiv@sign)),c,w
	btfsc	status,2
	goto	u3491
	goto	u3490
u3491:
	goto	l6061
u3490:
	line	40
	
l6059:
	negf	((c:___awdiv@quotient)),c
	comf	((c:___awdiv@quotient+1)),c
	btfsc	status,0
	incf	((c:___awdiv@quotient+1)),c
	goto	l6061
	
l1428:
	line	41
	
l6061:
	movff	(c:___awdiv@quotient),(c:?___awdiv)
	movff	(c:___awdiv@quotient+1),(c:?___awdiv+1)
	goto	l1429
	
l6063:
	line	42
	
l1429:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_getting_data

;; *************** function _getting_data *****************
;; Defined at:
;;		line 115 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\Test1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  lsb             1    5[BANK1 ] unsigned char 
;;  msb             1    4[BANK1 ] unsigned char 
;;  result          1    3[BANK1 ] unsigned char 
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
;;      Locals:         0       0       3       0       0       0       0
;;      Temps:          0       0       3       0       0       0       0
;;      Totals:         0       0       6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_Clear_Packet
;;		_Creat_RTC_Packet
;;		_LCDByte
;;		_LCDGotoXY
;;		_LCDWriteString
;;		_MyDelay
;;		_Receive_Packet
;;		_Write_b_eep
;;		_tx_packet
;;		_write_packet_to_page
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\Test1.c"
	line	115
global __ptext6
__ptext6:
psect	text6
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\Test1.c"
	line	115
	global	__size_of_getting_data
	__size_of_getting_data	equ	__end_of_getting_data-_getting_data
	
_getting_data:
;incstack = 0
	opt	stack 22
	dw	0FFFFh
	line	117
	
l7071:
;Test1.c: 117: unsigned char result = 0, msb = 0, lsb = 0;
	movlw	low(0)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((getting_data@result))&0ffh
	movlw	low(0)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((getting_data@msb))&0ffh
	movlw	low(0)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((getting_data@lsb))&0ffh
	goto	l7073
	line	119
;Test1.c: 119: while(1)
	
l843:; BSR set to: 1

	line	121
	
l7073:
;Test1.c: 120: {
;Test1.c: 121: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	122
	
l7075:
;Test1.c: 122: LCDWriteString("WAITING FOR DATA");
		movlw	high(STR_33)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_33)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	124
	
l7077:
;Test1.c: 124: result = 0x00;
	movlw	low(0)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((getting_data@result))&0ffh
	line	126
;Test1.c: 126: while(result == 0x00)
	goto	l7085
	
l845:; BSR set to: 1

	line	128
	
l7079:; BSR set to: 1

;Test1.c: 127: {
;Test1.c: 128: Clear_Packet();
	call	_Clear_Packet	;wreg free
	line	129
	
l7081:
;Test1.c: 129: result = Receive_Packet();
	call	_Receive_Packet	;wreg free
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((getting_data@result))&0ffh
	line	130
	
l7083:; BSR set to: 1

;Test1.c: 130: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	131
;Test1.c: 131: LCDWriteString("WAITING FOR DATA");
		movlw	high(STR_34)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_34)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	goto	l7085
	line	132
	
l844:
	line	126
	
l7085:
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((getting_data@result))&0ffh,w
	btfsc	status,2
	goto	u4461
	goto	u4460
u4461:
	goto	l7079
u4460:
	goto	l7087
	
l846:; BSR set to: 1

	line	135
	
l7087:; BSR set to: 1

;Test1.c: 132: }
;Test1.c: 135: if(PACKET[4] == 3 && PACKET[2] == 'x')
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+(_PACKET+04h))&0ffh,w	;volatile
	xorlw	3

	btfss	status,2
	goto	u4471
	goto	u4470
u4471:
	goto	l7105
u4470:
	
l7089:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+(_PACKET+02h))&0ffh,w	;volatile
	xorlw	120

	btfss	status,2
	goto	u4481
	goto	u4480
u4481:
	goto	l7105
u4480:
	line	138
	
l7091:; BSR set to: 0

;Test1.c: 136: {
;Test1.c: 138: Destination_ID = PACKET[2];
	movff	0+(_PACKET+02h),(c:_Destination_ID)	;volatile
	line	139
	
l7093:; BSR set to: 0

;Test1.c: 139: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	140
	
l7095:
;Test1.c: 140: LCDWriteString("RTC REQ. BY X");
		movlw	high(STR_35)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_35)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	142
	
l7097:
;Test1.c: 142: Creat_RTC_Packet('x');
	movlw	(078h)&0ffh
	
	call	_Creat_RTC_Packet
	line	143
	
l7099:
;Test1.c: 143: LCDGotoXY(0,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(0)&0ffh
	
	call	_LCDGotoXY
	line	144
	
l7101:
;Test1.c: 144: LCDWriteString("SENDING SETTINGS");
		movlw	high(STR_36)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_36)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	145
	
l7103:
;Test1.c: 145: tx_packet();
	call	_tx_packet	;wreg free
	goto	l7105
	line	146
	
l847:
	line	149
	
l7105:
;Test1.c: 146: }
;Test1.c: 149: if(PACKET[4] == 3 && PACKET[2] == 'y')
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+(_PACKET+04h))&0ffh,w	;volatile
	xorlw	3

	btfss	status,2
	goto	u4491
	goto	u4490
u4491:
	goto	l7123
u4490:
	
l7107:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+(_PACKET+02h))&0ffh,w	;volatile
	xorlw	121

	btfss	status,2
	goto	u4501
	goto	u4500
u4501:
	goto	l7123
u4500:
	line	152
	
l7109:; BSR set to: 0

;Test1.c: 150: {
;Test1.c: 152: Destination_ID = PACKET[2];
	movff	0+(_PACKET+02h),(c:_Destination_ID)	;volatile
	line	153
	
l7111:; BSR set to: 0

;Test1.c: 153: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	154
	
l7113:
;Test1.c: 154: LCDWriteString("RTC REQ. BY Y");
		movlw	high(STR_37)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_37)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	156
	
l7115:
;Test1.c: 156: Creat_RTC_Packet('y');
	movlw	(079h)&0ffh
	
	call	_Creat_RTC_Packet
	line	157
	
l7117:
;Test1.c: 157: LCDGotoXY(0,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(0)&0ffh
	
	call	_LCDGotoXY
	line	158
	
l7119:
;Test1.c: 158: LCDWriteString("SENDING SETTINGS");
		movlw	high(STR_38)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_38)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	159
	
l7121:
;Test1.c: 159: tx_packet();
	call	_tx_packet	;wreg free
	goto	l7123
	line	160
	
l848:
	line	162
	
l7123:
;Test1.c: 160: }
;Test1.c: 162: if(PACKET[4] != 3 && PACKET[2] == 'x')
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+(_PACKET+04h))&0ffh,w	;volatile
	xorlw	3

	btfsc	status,2
	goto	u4511
	goto	u4510
u4511:
	goto	l7165
u4510:
	
l7125:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+(_PACKET+02h))&0ffh,w	;volatile
	xorlw	120

	btfss	status,2
	goto	u4521
	goto	u4520
u4521:
	goto	l7165
u4520:
	line	164
	
l7127:; BSR set to: 0

;Test1.c: 163: {
;Test1.c: 164: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	165
	
l7129:
;Test1.c: 165: LCDWriteString("PACKET RECEIVED");
		movlw	high(STR_39)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_39)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	166
	
l7131:
;Test1.c: 166: LCDGotoXY(0,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(0)&0ffh
	
	call	_LCDGotoXY
	line	167
;Test1.c: 167: LCDWriteString("FROM RTU-1");
		movlw	high(STR_40)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_40)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	168
	
l7133:
;Test1.c: 168: MyDelay(100);
	movlw	high(064h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(064h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	171
	
l7135:
;Test1.c: 171: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	172
;Test1.c: 172: LCDWriteString("WRITING EEPROM...");
		movlw	high(STR_41)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_41)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	173
	
l7137:
;Test1.c: 173: device = 0xA0;
	movlw	low(0A0h)
	movwf	((c:_device)),c
	line	174
	
l7139:
;Test1.c: 174: write_packet_to_page(Write_Page1);
	movff	(c:_Write_Page1),(c:write_packet_to_page@page_no)
	movff	(c:_Write_Page1+1),(c:write_packet_to_page@page_no+1)
	call	_write_packet_to_page	;wreg free
	line	175
	
l7141:
;Test1.c: 175: Write_Page1++;
	infsnz	((c:_Write_Page1)),c
	incf	((c:_Write_Page1+1)),c
	line	177
	
l7143:
;Test1.c: 177: msb = Write_Page1 >> 8;
	movff	(c:_Write_Page1+1),??_getting_data+0+0
	movff	??_getting_data+0+0,??_getting_data+1+0
	movlb	1	; () banked
	clrf	(??_getting_data+1+0+1)&0ffh
	movlb	1	; () banked
	movf	(??_getting_data+1+0)&0ffh,w
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((getting_data@msb))&0ffh
	line	178
	
l7145:; BSR set to: 1

;Test1.c: 178: lsb = Write_Page1 & 0x00FF;
	movff	(c:_Write_Page1),(getting_data@lsb)
	line	180
	
l7147:; BSR set to: 1

;Test1.c: 180: Write_b_eep(0x00, msb);
	movlw	high(0)
	movwf	((c:Write_b_eep@badd+1)),c
	movlw	low(0)
	movwf	((c:Write_b_eep@badd)),c
	movff	(getting_data@msb),(c:Write_b_eep@bdat)
	call	_Write_b_eep	;wreg free
	line	181
	
l7149:
;Test1.c: 181: _delay(50);
	movlw	10
u4867:
	nop
decfsz	wreg,f
	goto	u4867

	line	182
	
l7151:
;Test1.c: 182: Write_b_eep(0x01, lsb);
	movlw	high(01h)
	movwf	((c:Write_b_eep@badd+1)),c
	movlw	low(01h)
	movwf	((c:Write_b_eep@badd)),c
	movff	(getting_data@lsb),(c:Write_b_eep@bdat)
	call	_Write_b_eep	;wreg free
	line	183
	
l7153:
;Test1.c: 183: _delay(50);
	movlw	10
u4877:
	nop
decfsz	wreg,f
	goto	u4877

	line	185
	
l7155:
;Test1.c: 185: if(Write_Page1 >= 4)
	movlw	04h
	subwf	((c:_Write_Page1)),c,w
	movlw	0
	subwfb	((c:_Write_Page1+1)),c,w
	btfss	status,0
	goto	u4531
	goto	u4530
u4531:
	goto	l7165
u4530:
	goto	l7157
	line	187
;Test1.c: 186: {
;Test1.c: 187: while(1)
	
l851:
	line	189
	
l7157:
;Test1.c: 188: {
;Test1.c: 189: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	190
;Test1.c: 190: MyDelay(1000);
	movlw	high(03E8h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(03E8h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	191
	
l7159:
;Test1.c: 191: LCDWriteString("MEMORY FULL...!");
		movlw	high(STR_42)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_42)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	192
	
l7161:
;Test1.c: 192: LCDGotoXY(0,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(0)&0ffh
	
	call	_LCDGotoXY
	line	193
;Test1.c: 193: LCDWriteString("CONNECT PC...");
		movlw	high(STR_43)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_43)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	194
	
l7163:
;Test1.c: 194: MyDelay(1000);
	movlw	high(03E8h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(03E8h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	goto	l7157
	line	195
	
l852:
	line	187
	goto	l7157
	
l853:
	goto	l7165
	line	196
	
l850:
	goto	l7165
	line	197
	
l849:
	line	198
	
l7165:
;Test1.c: 195: }
;Test1.c: 196: }
;Test1.c: 197: }
;Test1.c: 198: if(PACKET[4] != 3 && PACKET[2] == 'y')
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+(_PACKET+04h))&0ffh,w	;volatile
	xorlw	3

	btfsc	status,2
	goto	u4541
	goto	u4540
u4541:
	goto	l7073
u4540:
	
l7167:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+(_PACKET+02h))&0ffh,w	;volatile
	xorlw	121

	btfss	status,2
	goto	u4551
	goto	u4550
u4551:
	goto	l7073
u4550:
	line	200
	
l7169:; BSR set to: 0

;Test1.c: 199: {
;Test1.c: 200: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	201
	
l7171:
;Test1.c: 201: LCDWriteString("PACKET RECEIVED");
		movlw	high(STR_44)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_44)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	202
	
l7173:
;Test1.c: 202: LCDGotoXY(0,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(0)&0ffh
	
	call	_LCDGotoXY
	line	203
;Test1.c: 203: LCDWriteString("FROM RTU-2");
		movlw	high(STR_45)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_45)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	204
	
l7175:
;Test1.c: 204: MyDelay(100);
	movlw	high(064h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(064h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	207
	
l7177:
;Test1.c: 207: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	208
;Test1.c: 208: LCDWriteString("WRITING EEPROM...");
		movlw	high(STR_46)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_46)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	209
	
l7179:
;Test1.c: 209: device = 0xA2;
	movlw	low(0A2h)
	movwf	((c:_device)),c
	line	210
	
l7181:
;Test1.c: 210: write_packet_to_page(Write_Page2);
	movff	(c:_Write_Page2),(c:write_packet_to_page@page_no)
	movff	(c:_Write_Page2+1),(c:write_packet_to_page@page_no+1)
	call	_write_packet_to_page	;wreg free
	line	211
	
l7183:
;Test1.c: 211: Write_Page2++;
	infsnz	((c:_Write_Page2)),c
	incf	((c:_Write_Page2+1)),c
	line	213
	
l7185:
;Test1.c: 213: msb = Write_Page2 >> 8;
	movff	(c:_Write_Page2+1),??_getting_data+0+0
	movff	??_getting_data+0+0,??_getting_data+1+0
	movlb	1	; () banked
	clrf	(??_getting_data+1+0+1)&0ffh
	movlb	1	; () banked
	movf	(??_getting_data+1+0)&0ffh,w
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((getting_data@msb))&0ffh
	line	214
	
l7187:; BSR set to: 1

;Test1.c: 214: lsb = Write_Page2 & 0x00FF;
	movff	(c:_Write_Page2),(getting_data@lsb)
	line	216
	
l7189:; BSR set to: 1

;Test1.c: 216: Write_b_eep(0x02, msb);
	movlw	high(02h)
	movwf	((c:Write_b_eep@badd+1)),c
	movlw	low(02h)
	movwf	((c:Write_b_eep@badd)),c
	movff	(getting_data@msb),(c:Write_b_eep@bdat)
	call	_Write_b_eep	;wreg free
	line	217
	
l7191:
;Test1.c: 217: _delay(50);
	movlw	10
u4887:
	nop
decfsz	wreg,f
	goto	u4887

	line	218
	
l7193:
;Test1.c: 218: Write_b_eep(0x03, lsb);
	movlw	high(03h)
	movwf	((c:Write_b_eep@badd+1)),c
	movlw	low(03h)
	movwf	((c:Write_b_eep@badd)),c
	movff	(getting_data@lsb),(c:Write_b_eep@bdat)
	call	_Write_b_eep	;wreg free
	line	219
	
l7195:
;Test1.c: 219: _delay(50);
	movlw	10
u4897:
	nop
decfsz	wreg,f
	goto	u4897

	line	221
	
l7197:
;Test1.c: 221: if(Write_Page2 >= 4)
	movlw	04h
	subwf	((c:_Write_Page2)),c,w
	movlw	0
	subwfb	((c:_Write_Page2+1)),c,w
	btfss	status,0
	goto	u4561
	goto	u4560
u4561:
	goto	l7073
u4560:
	goto	l7199
	line	223
;Test1.c: 222: {
;Test1.c: 223: while(1)
	
l856:
	line	225
	
l7199:
;Test1.c: 224: {
;Test1.c: 225: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	226
;Test1.c: 226: MyDelay(100);
	movlw	high(064h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(064h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	227
	
l7201:
;Test1.c: 227: LCDWriteString("MEMORY FULL...!");
		movlw	high(STR_47)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_47)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	228
	
l7203:
;Test1.c: 228: LCDGotoXY(0,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(0)&0ffh
	
	call	_LCDGotoXY
	line	229
;Test1.c: 229: LCDWriteString("CONNECT PC...");
		movlw	high(STR_48)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_48)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	230
	
l7205:
;Test1.c: 230: MyDelay(100);
	movlw	high(064h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(064h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	goto	l7199
	line	231
	
l857:
	line	223
	goto	l7199
	
l858:
	goto	l7073
	line	232
	
l855:
	goto	l7073
	line	233
	
l854:
	goto	l7073
	line	234
	
l859:
	line	119
	goto	l7073
	
l860:
	line	235
	
l861:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_getting_data
	__end_of_getting_data:
	signat	_getting_data,88
	global	_write_packet_to_page

;; *************** function _write_packet_to_page *****************
;; Defined at:
;;		line 125 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\myeeprom.c"
;; Parameters:    Size  Location     Type
;;  page_no         2   30[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  address         2   36[COMRAM] unsigned int 
;;  count           1   38[COMRAM] unsigned char 
;;  lsb             1   35[COMRAM] unsigned char 
;;  msb             1   34[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_rom_byte_write
;; This function is called by:
;;		_getting_data
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\myeeprom.c"
	line	125
global __ptext7
__ptext7:
psect	text7
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\myeeprom.c"
	line	125
	global	__size_of_write_packet_to_page
	__size_of_write_packet_to_page	equ	__end_of_write_packet_to_page-_write_packet_to_page
	
_write_packet_to_page:
;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	127
	
l6315:
;myeeprom.c: 127: unsigned char count = 0;
	movlw	low(0)
	movwf	((c:write_packet_to_page@count)),c
	line	128
;myeeprom.c: 128: unsigned char msb = 0, lsb = 0;
	movlw	low(0)
	movwf	((c:write_packet_to_page@msb)),c
	movlw	low(0)
	movwf	((c:write_packet_to_page@lsb)),c
	line	129
;myeeprom.c: 129: unsigned int address = 0;
	movlw	high(0)
	movwf	((c:write_packet_to_page@address+1)),c
	movlw	low(0)
	movwf	((c:write_packet_to_page@address)),c
	line	131
	
l6317:
;myeeprom.c: 131: address = page_no * 128;
	movff	(c:write_packet_to_page@page_no),??_write_packet_to_page+0+0
	movff	(c:write_packet_to_page@page_no+1),??_write_packet_to_page+0+0+1
	movlw	07h
u3725:
	bcf	status,0
	rlcf	(??_write_packet_to_page+0+0),c
	rlcf	(??_write_packet_to_page+0+1),c
	decfsz	wreg
	goto	u3725
	movff	??_write_packet_to_page+0+0,(c:write_packet_to_page@address)
	movff	??_write_packet_to_page+0+1,(c:write_packet_to_page@address+1)
	line	133
	
l6319:
;myeeprom.c: 133: count = 0;
	movlw	low(0)
	movwf	((c:write_packet_to_page@count)),c
	line	134
;myeeprom.c: 134: while(PACKET[count] != 0xEA)
	goto	l6327
	
l319:
	line	136
	
l6321:
;myeeprom.c: 135: {
;myeeprom.c: 136: rom_byte_write(address,PACKET[count]);
	movff	(c:write_packet_to_page@address),(c:rom_byte_write@address)
	movff	(c:write_packet_to_page@address+1),(c:rom_byte_write@address+1)
	movf	((c:write_packet_to_page@count)),c,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:rom_byte_write@byte)),c
	call	_rom_byte_write	;wreg free
	line	137
	
l6323:
;myeeprom.c: 137: count++;
	incf	((c:write_packet_to_page@count)),c
	line	138
	
l6325:
;myeeprom.c: 138: address++;
	infsnz	((c:write_packet_to_page@address)),c
	incf	((c:write_packet_to_page@address+1)),c
	goto	l6327
	line	139
	
l318:
	line	134
	
l6327:
	movf	((c:write_packet_to_page@count)),c,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	(0EAh)&0ffh
	cpfseq	indf2
	goto	u3731
	goto	u3730
u3731:
	goto	l6321
u3730:
	goto	l6329
	
l320:; BSR set to: 0

	line	140
	
l6329:; BSR set to: 0

;myeeprom.c: 139: }
;myeeprom.c: 140: rom_byte_write(address,PACKET[count]);
	movff	(c:write_packet_to_page@address),(c:rom_byte_write@address)
	movff	(c:write_packet_to_page@address+1),(c:rom_byte_write@address+1)
	movf	((c:write_packet_to_page@count)),c,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:rom_byte_write@byte)),c
	call	_rom_byte_write	;wreg free
	goto	l321
	line	142
	
l6331:
	line	143
;myeeprom.c: 142: return;
	
l321:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_write_packet_to_page
	__end_of_write_packet_to_page:
	signat	_write_packet_to_page,4216
	global	_rom_byte_write

;; *************** function _rom_byte_write *****************
;; Defined at:
;;		line 7 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\myeeprom.c"
;; Parameters:    Size  Location     Type
;;  address         2   22[COMRAM] unsigned int 
;;  byte            1   24[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lsb             1   29[COMRAM] unsigned char 
;;  msb             1   28[COMRAM] unsigned char 
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
;;      Temps:          3       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_IdleI2C
;;		_WriteI2C
;; This function is called by:
;;		_write_packet_to_page
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2
	line	7
global __ptext8
__ptext8:
psect	text8
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\myeeprom.c"
	line	7
	global	__size_of_rom_byte_write
	__size_of_rom_byte_write	equ	__end_of_rom_byte_write-_rom_byte_write
	
_rom_byte_write:
;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	10
	
l5893:
;myeeprom.c: 9: unsigned char msb, lsb;
;myeeprom.c: 10: msb = address >> 8;
	movff	(c:rom_byte_write@address+1),??_rom_byte_write+0+0
	movff	??_rom_byte_write+0+0,??_rom_byte_write+1+0
	clrf	(??_rom_byte_write+1+0+1)&0ffh,c
	movf	(??_rom_byte_write+1+0),c,w
	movwf	((c:rom_byte_write@msb)),c
	line	11
	
l5895:
;myeeprom.c: 11: lsb = address & 0x00FF;
	movff	(c:rom_byte_write@address),(c:rom_byte_write@lsb)
	line	13
	
l5897:
;myeeprom.c: 13: RE1 = 1;
	bsf	c:(31777/8),(31777)&7	;volatile
	line	14
	
l5899:
;myeeprom.c: 14: IdleI2C();
	call	_IdleI2C	;wreg free
	line	15
	
l5901:
;myeeprom.c: 15: SSPCON2bits.SEN=1;while(SSPCON2bits.SEN);
	bsf	((c:4037)),c,0	;volatile
	goto	l263
	
l264:
	
l263:
	btfsc	((c:4037)),c,0	;volatile
	goto	u3331
	goto	u3330
u3331:
	goto	l263
u3330:
	goto	l5903
	
l265:
	line	16
	
l5903:
;myeeprom.c: 16: WriteI2C(device & 0xFE);
	movf	((c:_device)),c,w
	andlw	low(0FEh)
	
	call	_WriteI2C
	line	17
;myeeprom.c: 17: IdleI2C();
	call	_IdleI2C	;wreg free
	line	18
;myeeprom.c: 18: WriteI2C(msb);
	movf	((c:rom_byte_write@msb)),c,w
	
	call	_WriteI2C
	line	19
;myeeprom.c: 19: IdleI2C();
	call	_IdleI2C	;wreg free
	line	20
;myeeprom.c: 20: WriteI2C(lsb);
	movf	((c:rom_byte_write@lsb)),c,w
	
	call	_WriteI2C
	line	21
;myeeprom.c: 21: IdleI2C();
	call	_IdleI2C	;wreg free
	line	22
;myeeprom.c: 22: WriteI2C(byte);
	movf	((c:rom_byte_write@byte)),c,w
	
	call	_WriteI2C
	line	23
;myeeprom.c: 23: IdleI2C();
	call	_IdleI2C	;wreg free
	line	24
	
l5905:
;myeeprom.c: 24: SSPCON2bits.PEN=1;while(SSPCON2bits.PEN);
	bsf	((c:4037)),c,2	;volatile
	goto	l266
	
l267:
	
l266:
	btfsc	((c:4037)),c,2	;volatile
	goto	u3341
	goto	u3340
u3341:
	goto	l266
u3340:
	goto	l5907
	
l268:
	line	25
	
l5907:
;myeeprom.c: 25: _delay(100000);
	movlw	98
movwf	(??_rom_byte_write+0+0)&0ffh,c,f
	movlw	118
u4907:
	decfsz	wreg,f
	goto	u4907
	decfsz	(??_rom_byte_write+0+0)&0ffh,c,f
	goto	u4907
	nop2

	line	26
	
l5909:
;myeeprom.c: 26: RE1 = 0;
	bcf	c:(31777/8),(31777)&7	;volatile
	line	27
	
l269:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_rom_byte_write
	__end_of_rom_byte_write:
	signat	_rom_byte_write,8312
	global	_Receive_Packet

;; *************** function _Receive_Packet *****************
;; Defined at:
;;		line 201 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\communication.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  n               1   40[COMRAM] unsigned char 
;;  msecs           2   37[COMRAM] int 
;;  result          1   41[COMRAM] unsigned char 
;;  count           1   39[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_Check_CRC
;;		_Eco_Replay
;;		_LCDByte
;;		_LCDWriteString
;;		_USARTDataAvailable
;;		_USARTFlushBuffer
;;		_USARTReadData
;;		_USARTWriteChar
;; This function is called by:
;;		_getting_data
;;		_rtc_setting
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\communication.c"
	line	201
global __ptext9
__ptext9:
psect	text9
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\communication.c"
	line	201
	global	__size_of_Receive_Packet
	__size_of_Receive_Packet	equ	__end_of_Receive_Packet-_Receive_Packet
	
_Receive_Packet:
;incstack = 0
	opt	stack 23
	dw	0FFFFh
	line	203
	
l6101:
;communication.c: 203: unsigned char count = 0, result = 0;
	movlw	low(0)
	movwf	((c:Receive_Packet@count)),c
	movlw	low(0)
	movwf	((c:Receive_Packet@result)),c
	line	204
;communication.c: 204: int msecs = 0;
	movlw	high(0)
	movwf	((c:Receive_Packet@msecs+1)),c
	movlw	low(0)
	movwf	((c:Receive_Packet@msecs)),c
	line	207
	
l6103:
;communication.c: 207: result = Eco_Replay();
	call	_Eco_Replay	;wreg free
	movwf	((c:Receive_Packet@result)),c
	line	209
	
l6105:
;communication.c: 209: if(result == 0x01)
	decf	((c:Receive_Packet@result)),c,w

	btfss	status,2
	goto	u3561
	goto	u3560
u3561:
	goto	l6199
u3560:
	line	211
	
l6107:
;communication.c: 210: {
;communication.c: 211: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	212
	
l6109:
;communication.c: 212: LCDWriteString("GOT AN ECO");
		movlw	high(STR_11)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_11)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	214
	
l6111:
;communication.c: 214: USARTFlushBuffer();
	call	_USARTFlushBuffer	;wreg free
	goto	l6113
	line	216
;communication.c: 216: while(1)
	
l109:
	line	219
	
l6113:
;communication.c: 217: {
;communication.c: 219: uint8_t n= USARTDataAvailable();
	call	_USARTDataAvailable	;wreg free
	movwf	((c:Receive_Packet@n)),c
	line	222
	
l6115:
;communication.c: 222: if(n!=0)
	movf	((c:Receive_Packet@n)),c,w
	btfsc	status,2
	goto	u3571
	goto	u3570
u3571:
	goto	l6187
u3570:
	line	224
	
l6117:
;communication.c: 223: {
;communication.c: 224: msecs = 0;
	movlw	high(0)
	movwf	((c:Receive_Packet@msecs+1)),c
	movlw	low(0)
	movwf	((c:Receive_Packet@msecs)),c
	line	225
;communication.c: 225: while(n > 0)
	goto	l6185
	
l112:
	line	227
;communication.c: 226: {
;communication.c: 227: RC0 = 1;
	bsf	c:(31760/8),(31760)&7	;volatile
	line	228
	
l6119:
;communication.c: 228: PACKET[count] = USARTReadData();
	call	_USARTReadData	;wreg free
	movwf	(??_Receive_Packet+0+0)&0ffh,c
	movf	((c:Receive_Packet@count)),c,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(??_Receive_Packet+0+0),indf2

	line	229
	
l6121:; BSR set to: 0

;communication.c: 229: RC0 = 0;
	bcf	c:(31760/8),(31760)&7	;volatile
	line	230
	
l6123:; BSR set to: 0

;communication.c: 230: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	231
	
l6125:
;communication.c: 231: LCDWriteString("CHARACTER RECEIVED ");
		movlw	high(STR_12)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_12)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	232
	
l6127:
;communication.c: 232: if(PACKET[count] == 0xEA)
	movf	((c:Receive_Packet@count)),c,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	(0EAh)&0ffh
	cpfseq	indf2
	goto	u3581
	goto	u3580
u3581:
	goto	l6183
u3580:
	line	235
	
l6129:; BSR set to: 0

;communication.c: 233: {
;communication.c: 235: result = Check_CRC();
	call	_Check_CRC	;wreg free
	movwf	((c:Receive_Packet@result)),c
	line	236
	
l6131:
;communication.c: 236: if(result == 1)
	decf	((c:Receive_Packet@result)),c,w

	btfss	status,2
	goto	u3591
	goto	u3590
u3591:
	goto	l114
u3590:
	line	238
	
l6133:
;communication.c: 237: {
;communication.c: 238: RE2 = 1;
	bsf	c:(31778/8),(31778)&7	;volatile
	line	239
	
l6135:
;communication.c: 239: _delay((unsigned long)((5)*(100000000/4000.0)));
	movlw	122
movwf	(??_Receive_Packet+0+0)&0ffh,c,f
	movlw	212
u4917:
	decfsz	wreg,f
	goto	u4917
	decfsz	(??_Receive_Packet+0+0)&0ffh,c,f
	goto	u4917
	nop2

	line	240
;communication.c: 240: _delay((unsigned long)((5)*(100000000/4000.0)));
	movlw	122
movwf	(??_Receive_Packet+0+0)&0ffh,c,f
	movlw	212
u4927:
	decfsz	wreg,f
	goto	u4927
	decfsz	(??_Receive_Packet+0+0)&0ffh,c,f
	goto	u4927
	nop2

	line	241
	
l6137:
;communication.c: 241: USARTWriteChar(49);
	movlw	(031h)&0ffh
	
	call	_USARTWriteChar
	line	242
	
l6139:
;communication.c: 242: RE2 = 0;
	bcf	c:(31778/8),(31778)&7	;volatile
	line	243
	
l6141:
;communication.c: 243: RE2 = 1;
	bsf	c:(31778/8),(31778)&7	;volatile
	line	244
	
l6143:
;communication.c: 244: _delay((unsigned long)((5)*(100000000/4000.0)));
	movlw	122
movwf	(??_Receive_Packet+0+0)&0ffh,c,f
	movlw	212
u4937:
	decfsz	wreg,f
	goto	u4937
	decfsz	(??_Receive_Packet+0+0)&0ffh,c,f
	goto	u4937
	nop2

	line	245
	
l6145:
;communication.c: 245: _delay((unsigned long)((5)*(100000000/4000.0)));
	movlw	122
movwf	(??_Receive_Packet+0+0)&0ffh,c,f
	movlw	212
u4947:
	decfsz	wreg,f
	goto	u4947
	decfsz	(??_Receive_Packet+0+0)&0ffh,c,f
	goto	u4947
	nop2

	line	246
	
l6147:
;communication.c: 246: USARTWriteChar(49);
	movlw	(031h)&0ffh
	
	call	_USARTWriteChar
	line	247
	
l6149:
;communication.c: 247: RE2 = 0;
	bcf	c:(31778/8),(31778)&7	;volatile
	line	248
	
l6151:
;communication.c: 248: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	249
	
l6153:
;communication.c: 249: LCDWriteString("PACKET RECEIVED ");
		movlw	high(STR_13)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_13)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	250
	
l6155:
;communication.c: 250: return 0x01;
	movlw	(01h)&0ffh
	goto	l115
	
l6157:
	goto	l115
	line	251
	
l114:
	line	252
;communication.c: 251: }
;communication.c: 252: RE2 = 1;
	bsf	c:(31778/8),(31778)&7	;volatile
	line	253
	
l6159:
;communication.c: 253: _delay((unsigned long)((5)*(100000000/4000.0)));
	movlw	122
movwf	(??_Receive_Packet+0+0)&0ffh,c,f
	movlw	212
u4957:
	decfsz	wreg,f
	goto	u4957
	decfsz	(??_Receive_Packet+0+0)&0ffh,c,f
	goto	u4957
	nop2

	line	254
;communication.c: 254: _delay((unsigned long)((5)*(100000000/4000.0)));
	movlw	122
movwf	(??_Receive_Packet+0+0)&0ffh,c,f
	movlw	212
u4967:
	decfsz	wreg,f
	goto	u4967
	decfsz	(??_Receive_Packet+0+0)&0ffh,c,f
	goto	u4967
	nop2

	line	255
	
l6161:
;communication.c: 255: USARTWriteChar(48);
	movlw	(030h)&0ffh
	
	call	_USARTWriteChar
	line	256
	
l6163:
;communication.c: 256: RE2 = 0;
	bcf	c:(31778/8),(31778)&7	;volatile
	line	257
	
l6165:
;communication.c: 257: RE2 = 1;
	bsf	c:(31778/8),(31778)&7	;volatile
	line	258
	
l6167:
;communication.c: 258: _delay((unsigned long)((5)*(100000000/4000.0)));
	movlw	122
movwf	(??_Receive_Packet+0+0)&0ffh,c,f
	movlw	212
u4977:
	decfsz	wreg,f
	goto	u4977
	decfsz	(??_Receive_Packet+0+0)&0ffh,c,f
	goto	u4977
	nop2

	line	259
	
l6169:
;communication.c: 259: _delay((unsigned long)((5)*(100000000/4000.0)));
	movlw	122
movwf	(??_Receive_Packet+0+0)&0ffh,c,f
	movlw	212
u4987:
	decfsz	wreg,f
	goto	u4987
	decfsz	(??_Receive_Packet+0+0)&0ffh,c,f
	goto	u4987
	nop2

	line	260
	
l6171:
;communication.c: 260: USARTWriteChar(48);
	movlw	(030h)&0ffh
	
	call	_USARTWriteChar
	line	261
	
l6173:
;communication.c: 261: RE2 = 0;
	bcf	c:(31778/8),(31778)&7	;volatile
	line	262
	
l6175:
;communication.c: 262: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	263
	
l6177:
;communication.c: 263: LCDWriteString("WRONG PACKET RECEIVED ");
		movlw	high(STR_14)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_14)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	264
	
l6179:
;communication.c: 264: return 0x00;
	movlw	(0)&0ffh
	goto	l115
	
l6181:
	goto	l115
	line	265
	
l113:
	line	266
	
l6183:
;communication.c: 265: }
;communication.c: 266: n--;
	decf	((c:Receive_Packet@n)),c
	line	267
;communication.c: 267: count++;
	incf	((c:Receive_Packet@count)),c
	goto	l6185
	line	268
	
l111:
	line	225
	
l6185:
	tstfsz	((c:Receive_Packet@n)),c
	goto	u3601
	goto	u3600
u3601:
	goto	l112
u3600:
	goto	l6113
	
l116:
	line	269
;communication.c: 268: }
;communication.c: 269: }
	goto	l6113
	line	270
	
l110:
	line	272
	
l6187:
;communication.c: 270: else
;communication.c: 271: {
;communication.c: 272: _delay((unsigned long)((1)*(100000000/4000.0)));
	movlw	25
movwf	(??_Receive_Packet+0+0)&0ffh,c,f
	movlw	93
u4997:
	decfsz	wreg,f
	goto	u4997
	decfsz	(??_Receive_Packet+0+0)&0ffh,c,f
	goto	u4997

	line	273
	
l6189:
;communication.c: 273: msecs++;
	infsnz	((c:Receive_Packet@msecs)),c
	incf	((c:Receive_Packet@msecs+1)),c
	line	274
;communication.c: 274: if(msecs == 2000)
	movf	((c:Receive_Packet@msecs+1)),c,w
	xorlw	7
	movlw	208
	btfsc	status,2
	xorwf ((c:Receive_Packet@msecs)),c,w

	btfss	status,2
	goto	u3611
	goto	u3610
u3611:
	goto	l6113
u3610:
	line	277
	
l6191:
;communication.c: 275: {
;communication.c: 277: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	278
	
l6193:
;communication.c: 278: LCDWriteString("CHARACTER TIMEOUT");
		movlw	high(STR_15)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_15)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	279
	
l6195:
;communication.c: 279: return 0x00;
	movlw	(0)&0ffh
	goto	l115
	
l6197:
	goto	l115
	line	280
	
l118:
	goto	l6113
	line	281
	
l117:
	goto	l6113
	line	282
	
l119:
	line	216
	goto	l6113
	
l120:
	goto	l6199
	line	283
	
l108:
	line	284
	
l6199:
;communication.c: 280: }
;communication.c: 281: }
;communication.c: 282: }
;communication.c: 283: }
;communication.c: 284: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	285
	
l6201:
;communication.c: 285: LCDWriteString("PACKET TIMEOUT");
		movlw	high(STR_16)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_16)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	286
	
l6203:
;communication.c: 286: return 0x00;
	movlw	(0)&0ffh
	goto	l115
	
l6205:
	line	287
	
l115:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_Receive_Packet
	__end_of_Receive_Packet:
	signat	_Receive_Packet,89
	global	_Eco_Replay

;; *************** function _Eco_Replay *****************
;; Defined at:
;;		line 84 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\communication.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data            1   35[COMRAM] unsigned char 
;;  n               1   34[COMRAM] unsigned char 
;;  ts              1   33[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_LCDByte
;;		_LCDWriteString
;;		_USARTDataAvailable
;;		_USARTFlushBuffer
;;		_USARTReadData
;;		_USARTWriteChar
;; This function is called by:
;;		_Receive_Packet
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2
	line	84
global __ptext10
__ptext10:
psect	text10
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\communication.c"
	line	84
	global	__size_of_Eco_Replay
	__size_of_Eco_Replay	equ	__end_of_Eco_Replay-_Eco_Replay
	
_Eco_Replay:
;incstack = 0
	opt	stack 23
	dw	0FFFFh
	line	86
	
l5723:
;communication.c: 86: uint8_t n = 0;
	movlw	low(0)
	movwf	((c:Eco_Replay@n)),c
	line	87
;communication.c: 87: unsigned char ts = 0;
	movlw	low(0)
	movwf	((c:Eco_Replay@ts)),c
	line	90
	
l5725:
;communication.c: 90: USARTFlushBuffer();
	call	_USARTFlushBuffer	;wreg free
	line	92
	
l5727:
;communication.c: 92: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	93
	
l5729:
;communication.c: 93: LCDWriteString("WAITING FOR ECO ");
		movlw	high(STR_5)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_5)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	96
;communication.c: 96: while(n == 0 && ts < 10000)
	goto	l5737
	
l86:
	line	99
	
l5731:
;communication.c: 97: {
;communication.c: 99: n = USARTDataAvailable();
	call	_USARTDataAvailable	;wreg free
	movwf	((c:Eco_Replay@n)),c
	line	100
	
l5733:
;communication.c: 100: ts++;
	incf	((c:Eco_Replay@ts)),c
	line	101
	
l5735:
;communication.c: 101: _delay((unsigned long)((1)*(100000000/4000.0)));
	movlw	25
movwf	(??_Eco_Replay+0+0)&0ffh,c,f
	movlw	93
u5007:
	decfsz	wreg,f
	goto	u5007
	decfsz	(??_Eco_Replay+0+0)&0ffh,c,f
	goto	u5007

	goto	l5737
	line	102
	
l85:
	line	96
	
l5737:
	movf	((c:Eco_Replay@n)),c,w
	btfsc	status,2
	goto	u3201
	goto	u3200
u3201:
	goto	l5731
u3200:
	goto	l5739
	
l87:
	line	105
	
l5739:
;communication.c: 102: }
;communication.c: 105: if(n!=0)
	movf	((c:Eco_Replay@n)),c,w
	btfsc	status,2
	goto	u3211
	goto	u3210
u3211:
	goto	l5769
u3210:
	line	108
	
l5741:
;communication.c: 106: {
;communication.c: 108: RC0 = 1;
	bsf	c:(31760/8),(31760)&7	;volatile
	line	109
	
l5743:
;communication.c: 109: unsigned char data=USARTReadData();
	call	_USARTReadData	;wreg free
	movwf	((c:Eco_Replay@data)),c
	line	110
	
l5745:
;communication.c: 110: RC0 = 0;
	bcf	c:(31760/8),(31760)&7	;volatile
	line	111
	
l5747:
;communication.c: 111: if(data == Destination_ID1 || data == Destination_ID2 || data == Master_ID)
	movf	((c:Eco_Replay@data)),c,w
	xorwf	((c:_Destination_ID1)),c,w
	btfsc	status,2
	goto	u3221
	goto	u3220
u3221:
	goto	l91
u3220:
	
l5749:
	movf	((c:Eco_Replay@data)),c,w
	xorwf	((c:_Destination_ID2)),c,w
	btfsc	status,2
	goto	u3231
	goto	u3230
u3231:
	goto	l91
u3230:
	
l5751:
	movf	((c:_Master_ID)),c,w
	cpfseq	((c:Eco_Replay@data)),c
	goto	u3241
	goto	u3240
u3241:
	goto	l5769
u3240:
	
l91:
	line	113
;communication.c: 112: {
;communication.c: 113: RE2 = 1;
	bsf	c:(31778/8),(31778)&7	;volatile
	line	114
	
l5753:
;communication.c: 114: _delay((unsigned long)((5)*(100000000/4000.0)));
	movlw	122
movwf	(??_Eco_Replay+0+0)&0ffh,c,f
	movlw	212
u5017:
	decfsz	wreg,f
	goto	u5017
	decfsz	(??_Eco_Replay+0+0)&0ffh,c,f
	goto	u5017
	nop2

	line	115
;communication.c: 115: _delay((unsigned long)((5)*(100000000/4000.0)));
	movlw	122
movwf	(??_Eco_Replay+0+0)&0ffh,c,f
	movlw	212
u5027:
	decfsz	wreg,f
	goto	u5027
	decfsz	(??_Eco_Replay+0+0)&0ffh,c,f
	goto	u5027
	nop2

	line	116
	
l5755:
;communication.c: 116: USARTWriteChar(data);
	movf	((c:Eco_Replay@data)),c,w
	
	call	_USARTWriteChar
	line	117
	
l5757:
;communication.c: 117: RE2 = 0;
	bcf	c:(31778/8),(31778)&7	;volatile
	line	118
	
l5759:
;communication.c: 118: _delay((unsigned long)((1)*(100000000/4000.0)));
	movlw	25
movwf	(??_Eco_Replay+0+0)&0ffh,c,f
	movlw	93
u5037:
	decfsz	wreg,f
	goto	u5037
	decfsz	(??_Eco_Replay+0+0)&0ffh,c,f
	goto	u5037

	line	120
	
l5761:
;communication.c: 120: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	121
	
l5763:
;communication.c: 121: LCDWriteString("ECO RECEIVED ");
		movlw	high(STR_6)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_6)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	122
	
l5765:
;communication.c: 122: return 0x01;
	movlw	(01h)&0ffh
	goto	l92
	
l5767:
	goto	l92
	line	123
	
l89:
	goto	l5769
	line	124
	
l88:
	line	126
	
l5769:
;communication.c: 123: }
;communication.c: 124: }
;communication.c: 126: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	127
	
l5771:
;communication.c: 127: LCDWriteString("ECO NOT RECEIVED ");
		movlw	high(STR_7)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_7)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	128
	
l5773:
;communication.c: 128: return 0x00;
	movlw	(0)&0ffh
	goto	l92
	
l5775:
	line	129
	
l92:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_Eco_Replay
	__end_of_Eco_Replay:
	signat	_Eco_Replay,89
	global	_Check_CRC

;; *************** function _Check_CRC *****************
;; Defined at:
;;		line 128 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\packet.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  CRC             2   32[COMRAM] int 
;;  sum             2   28[COMRAM] int 
;;  length          1   31[COMRAM] unsigned char 
;;  count           1   30[COMRAM] unsigned char 
;;  CRC_LOW         1   27[COMRAM] unsigned char 
;;  CRC_HI          1   26[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         8       0       0       0       0       0       0
;;      Temps:          7       0       0       0       0       0       0
;;      Totals:        15       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Receive_Packet
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\packet.c"
	line	128
global __ptext11
__ptext11:
psect	text11
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\packet.c"
	line	128
	global	__size_of_Check_CRC
	__size_of_Check_CRC	equ	__end_of_Check_CRC-_Check_CRC
	
_Check_CRC:
;incstack = 0
	opt	stack 26
	dw	0FFFFh
	line	130
	
l5855:
;packet.c: 130: char count = 0, length = 0, CRC_HI, CRC_LOW;
	movlw	low(0)
	movwf	((c:Check_CRC@count)),c
	movlw	low(0)
	movwf	((c:Check_CRC@length)),c
	line	134
;packet.c: 131: int sum, CRC;
;packet.c: 134: while(PACKET[length] != 0xEA)
	goto	l5859
	
l535:
	line	135
	
l5857:
;packet.c: 135: length++;
	incf	((c:Check_CRC@length)),c
	goto	l5859
	
l534:
	line	134
	
l5859:
	movf	((c:Check_CRC@length)),c,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	(0EAh)&0ffh
	cpfseq	indf2
	goto	u3301
	goto	u3300
u3301:
	goto	l5857
u3300:
	goto	l5861
	
l536:; BSR set to: 0

	line	137
	
l5861:; BSR set to: 0

;packet.c: 137: CRC_LOW = PACKET[length - 1];
	movlw	low(0FFFFh)
	movwf	(??_Check_CRC+0+0)&0ffh,c
	movlw	high(0FFFFh)
	movwf	(??_Check_CRC+0+0+1)&0ffh,c
	movf	((c:Check_CRC@length)),c,w
	movwf	(??_Check_CRC+2+0)&0ffh,c
	clrf	(??_Check_CRC+2+0+1)&0ffh,c

	movf	(??_Check_CRC+0+0),c,w
	addwf	(??_Check_CRC+2+0),c
	movf	(??_Check_CRC+0+1),c,w
	addwfc	(??_Check_CRC+2+1),c
	movlb	0	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(??_Check_CRC+2+0),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	(??_Check_CRC+2+1),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:Check_CRC@CRC_LOW)),c
	line	138
;packet.c: 138: CRC_HI = PACKET[length - 2];
	movlw	low(0FFFEh)
	movwf	(??_Check_CRC+0+0)&0ffh,c
	movlw	high(0FFFEh)
	movwf	(??_Check_CRC+0+0+1)&0ffh,c
	movf	((c:Check_CRC@length)),c,w
	movwf	(??_Check_CRC+2+0)&0ffh,c
	clrf	(??_Check_CRC+2+0+1)&0ffh,c

	movf	(??_Check_CRC+0+0),c,w
	addwf	(??_Check_CRC+2+0),c
	movf	(??_Check_CRC+0+1),c,w
	addwfc	(??_Check_CRC+2+1),c
	movlb	0	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(??_Check_CRC+2+0),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	(??_Check_CRC+2+1),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:Check_CRC@CRC_HI)),c
	line	139
	
l5863:; BSR set to: 0

;packet.c: 139: CRC = 0x0000;
	movlw	high(0)
	movwf	((c:Check_CRC@CRC+1)),c
	movlw	low(0)
	movwf	((c:Check_CRC@CRC)),c
	line	140
	
l5865:; BSR set to: 0

;packet.c: 140: CRC = CRC + CRC_HI;
	movf	((c:Check_CRC@CRC_HI)),c,w
	addwf	((c:Check_CRC@CRC)),c,w
	
	movwf	((c:Check_CRC@CRC)),c
	movlw	0
	addwfc	((c:Check_CRC@CRC+1)),c,w
	movwf	1+((c:Check_CRC@CRC)),c
	line	141
	
l5867:; BSR set to: 0

;packet.c: 141: CRC = CRC << 8;
	movf	((c:Check_CRC@CRC)),c,w
	movwf	((c:Check_CRC@CRC+1)),c
	clrf	((c:Check_CRC@CRC)),c
	line	142
	
l5869:; BSR set to: 0

;packet.c: 142: CRC = CRC + CRC_LOW;
	movf	((c:Check_CRC@CRC_LOW)),c,w
	addwf	((c:Check_CRC@CRC)),c,w
	
	movwf	((c:Check_CRC@CRC)),c
	movlw	0
	addwfc	((c:Check_CRC@CRC+1)),c,w
	movwf	1+((c:Check_CRC@CRC)),c
	line	144
	
l5871:; BSR set to: 0

;packet.c: 144: sum = 0;
	movlw	high(0)
	movwf	((c:Check_CRC@sum+1)),c
	movlw	low(0)
	movwf	((c:Check_CRC@sum)),c
	line	146
	
l5873:; BSR set to: 0

;packet.c: 146: for(count = 0; count < length - 2; count++)
	movlw	low(0)
	movwf	((c:Check_CRC@count)),c
	goto	l5879
	line	147
	
l538:; BSR set to: 0

	
l5875:; BSR set to: 0

;packet.c: 147: sum = sum + PACKET[count];
	movf	((c:Check_CRC@count)),c,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	(??_Check_CRC+0+0)&0ffh,c
	movf	((??_Check_CRC+0+0)),c,w
	addwf	((c:Check_CRC@sum)),c,w
	
	movwf	((c:Check_CRC@sum)),c
	movlw	0
	addwfc	((c:Check_CRC@sum+1)),c,w
	movwf	1+((c:Check_CRC@sum)),c
	line	146
	
l5877:; BSR set to: 0

	incf	((c:Check_CRC@count)),c
	goto	l5879
	
l537:; BSR set to: 0

	
l5879:; BSR set to: 0

	movlw	low(-2)
	movwf	(??_Check_CRC+0+0)&0ffh,c
	movlw	high(-2)
	movwf	(??_Check_CRC+0+0+1)&0ffh,c
	movf	((c:Check_CRC@length)),c,w
	movwf	(??_Check_CRC+2+0)&0ffh,c
	clrf	(??_Check_CRC+2+0+1)&0ffh,c

	movf	(??_Check_CRC+0+0),c,w
	addwf	(??_Check_CRC+2+0),c
	movf	(??_Check_CRC+0+1),c,w
	addwfc	(??_Check_CRC+2+1),c
	movf	((c:Check_CRC@count)),c,w
	movwf	(??_Check_CRC+4+0)&0ffh,c
	clrf	(??_Check_CRC+4+0+1)&0ffh,c

	movf	(??_Check_CRC+4+1),c,w
	xorlw	80h
	movwf	(??_Check_CRC+6+0)&0ffh,c
	movf	(??_Check_CRC+2+0),c,w
	subwf	(??_Check_CRC+4+0),c,w
	movf	(??_Check_CRC+2+1),c,w
	xorlw	80h
	subwfb	(??_Check_CRC+6+0)&0ffh,c,w
	btfss	status,0
	goto	u3311
	goto	u3310
u3311:
	goto	l5875
u3310:
	goto	l5881
	
l539:; BSR set to: 0

	line	149
	
l5881:; BSR set to: 0

;packet.c: 149: if(sum == CRC)
	movf	((c:Check_CRC@CRC+1)),c,w
	xorwf	((c:Check_CRC@sum+1)),c,w
	bnz	u3325
	movf	((c:Check_CRC@CRC)),c,w
	xorwf	((c:Check_CRC@sum)),c,w
u3325:

	btfss	status,2
	goto	u3321
	goto	u3320
u3321:
	goto	l5889
u3320:
	line	150
	
l5883:; BSR set to: 0

;packet.c: 150: return 1;
	movlw	(01h)&0ffh
	goto	l541
	
l5885:; BSR set to: 0

	goto	l541
	
l5887:; BSR set to: 0

	goto	l541
	line	151
	
l540:; BSR set to: 0

	line	152
	
l5889:; BSR set to: 0

;packet.c: 151: else
;packet.c: 152: return 0;
	movlw	(0)&0ffh
	goto	l541
	
l5891:; BSR set to: 0

	goto	l541
	
l542:; BSR set to: 0

	line	153
	
l541:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_Check_CRC
	__end_of_Check_CRC:
	signat	_Check_CRC,89
	global	_LCDGotoXY

;; *************** function _LCDGotoXY *****************
;; Defined at:
;;		line 311 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\lcd_hd44780_pic18.c"
;; Parameters:    Size  Location     Type
;;  x               1    wreg     unsigned char 
;;  y               1   28[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  x               1   29[COMRAM] unsigned char 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_LCDByte
;; This function is called by:
;;		_main
;;		_getting_data
;;		_rtc_setting
;;		_local_display
;;		_reset_unit
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\lcd_hd44780_pic18.c"
	line	311
global __ptext12
__ptext12:
psect	text12
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\lcd_hd44780_pic18.c"
	line	311
	global	__size_of_LCDGotoXY
	__size_of_LCDGotoXY	equ	__end_of_LCDGotoXY-_LCDGotoXY
	
_LCDGotoXY:; BSR set to: 0

;incstack = 0
	opt	stack 25
	dw	0FFFFh
;LCDGotoXY@x stored from wreg
	movwf	((c:LCDGotoXY@x)),c
	line	313
	
l6297:
;lcd_hd44780_pic18.c: 313: if(x>=20) return;
	movlw	(014h-1)
	cpfsgt	((c:LCDGotoXY@x)),c
	goto	u3711
	goto	u3710
u3711:
	goto	l6309
u3710:
	goto	l230
	
l6299:
	goto	l230
	
l229:
	line	317
;lcd_hd44780_pic18.c: 317: switch(y)
	goto	l6309
	line	319
;lcd_hd44780_pic18.c: 318: {
;lcd_hd44780_pic18.c: 319: case 0:
	
l232:
	line	320
;lcd_hd44780_pic18.c: 320: break;
	goto	l6311
	line	321
;lcd_hd44780_pic18.c: 321: case 1:
	
l234:
	line	322
	
l6301:
;lcd_hd44780_pic18.c: 322: x|=0b01000000;
	bsf	(0+(6/8)+(c:LCDGotoXY@x)),c,(6)&7
	line	323
;lcd_hd44780_pic18.c: 323: break;
	goto	l6311
	line	324
;lcd_hd44780_pic18.c: 324: case 2:
	
l235:
	line	325
	
l6303:
;lcd_hd44780_pic18.c: 325: x+=0x14;
	movlw	(014h)&0ffh
	addwf	((c:LCDGotoXY@x)),c
	line	326
;lcd_hd44780_pic18.c: 326: break;
	goto	l6311
	line	327
;lcd_hd44780_pic18.c: 327: case 3:
	
l236:
	line	328
	
l6305:
;lcd_hd44780_pic18.c: 328: x+=0x54;
	movlw	(054h)&0ffh
	addwf	((c:LCDGotoXY@x)),c
	line	329
;lcd_hd44780_pic18.c: 329: break;
	goto	l6311
	line	330
	
l6307:
;lcd_hd44780_pic18.c: 330: }
	goto	l6311
	line	317
	
l231:
	
l6309:
	movf	((c:LCDGotoXY@y)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l6311
	xorlw	1^0	; case 1
	skipnz
	goto	l6301
	xorlw	2^1	; case 2
	skipnz
	goto	l6303
	xorlw	3^2	; case 3
	skipnz
	goto	l6305
	goto	l6311

	line	330
	
l233:
	line	352
	
l6311:
;lcd_hd44780_pic18.c: 352: x|=0b10000000;
	bsf	(0+(7/8)+(c:LCDGotoXY@x)),c,(7)&7
	line	353
	
l6313:
;lcd_hd44780_pic18.c: 353: (LCDByte(x,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movf	((c:LCDGotoXY@x)),c,w
	
	call	_LCDByte
	line	354
	
l230:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_LCDGotoXY
	__end_of_LCDGotoXY:
	signat	_LCDGotoXY,8312
	global	_Creat_RTC_Packet

;; *************** function _Creat_RTC_Packet *****************
;; Defined at:
;;		line 31 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\packet.c"
;; Parameters:    Size  Location     Type
;;  id              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  id              1   36[COMRAM] unsigned char 
;;  packet_crc      2   38[COMRAM] unsigned int 
;;  i               1   40[COMRAM] unsigned char 
;;  mem_loc         1   37[COMRAM] unsigned char 
;;  crc_l           1   35[COMRAM] unsigned char 
;;  crc_h           1   34[COMRAM] unsigned char 
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
;;      Locals:         7       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0
;;      Totals:        10       0       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Calculate_CRC
;;		_Clear_Packet
;;		_Creat_Packet
;;		_Read_b_eep
;; This function is called by:
;;		_getting_data
;;		_rtc_setting
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\packet.c"
	line	31
global __ptext13
__ptext13:
psect	text13
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\packet.c"
	line	31
	global	__size_of_Creat_RTC_Packet
	__size_of_Creat_RTC_Packet	equ	__end_of_Creat_RTC_Packet-_Creat_RTC_Packet
	
_Creat_RTC_Packet:
;incstack = 0
	opt	stack 26
	dw	0FFFFh
;Creat_RTC_Packet@id stored from wreg
	movwf	((c:Creat_RTC_Packet@id)),c
	line	33
	
l6505:
;packet.c: 33: unsigned char mem_loc = 0;
	movlw	low(0)
	movwf	((c:Creat_RTC_Packet@mem_loc)),c
	line	35
	
l6507:
;packet.c: 35: Clear_Packet();
	call	_Clear_Packet	;wreg free
	line	36
	
l6509:
;packet.c: 36: Creat_Packet(3, 2);
	movlw	low(02h)
	movwf	((c:Creat_Packet@Readings)),c
	movlw	(03h)&0ffh
	
	call	_Creat_Packet
	line	38
	
l6511:
;packet.c: 38: if(id == 'x')
	movf	((c:Creat_RTC_Packet@id)),c,w
	xorlw	120

	btfss	status,2
	goto	u4041
	goto	u4040
u4041:
	goto	l6515
u4040:
	line	39
	
l6513:
;packet.c: 39: mem_loc = 5;
	movlw	low(05h)
	movwf	((c:Creat_RTC_Packet@mem_loc)),c
	goto	l6515
	
l517:
	line	40
	
l6515:
;packet.c: 40: if(id == 'y')
	movf	((c:Creat_RTC_Packet@id)),c,w
	xorlw	121

	btfss	status,2
	goto	u4051
	goto	u4050
u4051:
	goto	l518
u4050:
	line	41
	
l6517:
;packet.c: 41: mem_loc = 21;
	movlw	low(015h)
	movwf	((c:Creat_RTC_Packet@mem_loc)),c
	
l518:
	line	43
;packet.c: 43: char i = 0;
	movlw	low(0)
	movwf	((c:Creat_RTC_Packet@i)),c
	line	44
;packet.c: 44: for(i = 0; i < 16; i++)
	movlw	low(0)
	movwf	((c:Creat_RTC_Packet@i)),c
	
l6519:
	movlw	(010h-1)
	cpfsgt	((c:Creat_RTC_Packet@i)),c
	goto	u4061
	goto	u4060
u4061:
	goto	l6523
u4060:
	goto	l6535
	
l6521:
	goto	l6535
	line	45
	
l519:
	line	46
	
l6523:
;packet.c: 45: {
;packet.c: 46: PACKET[Current_Pos] = (unsigned char)Read_b_eep(mem_loc);
	movf	((c:_Current_Pos)),c,w	;volatile
	mullw	01h
	movlb	0	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:Creat_RTC_Packet@mem_loc),(c:Read_b_eep@badd)
	clrf	((c:Read_b_eep@badd+1)),c
	call	_Read_b_eep	;wreg free
	movwf	indf2,c

	line	47
	
l6525:
;packet.c: 47: _delay(50);
	movlw	10
u5047:
	nop
decfsz	wreg,f
	goto	u5047

	line	48
	
l6527:
;packet.c: 48: Current_Pos++;
	incf	((c:_Current_Pos)),c	;volatile
	line	49
	
l6529:
;packet.c: 49: mem_loc++;
	incf	((c:Creat_RTC_Packet@mem_loc)),c
	line	44
	
l6531:
	incf	((c:Creat_RTC_Packet@i)),c
	
l6533:
	movlw	(010h-1)
	cpfsgt	((c:Creat_RTC_Packet@i)),c
	goto	u4071
	goto	u4070
u4071:
	goto	l6523
u4070:
	goto	l6535
	
l520:
	line	52
	
l6535:
;packet.c: 50: }
;packet.c: 52: unsigned int packet_crc = 0;
	movlw	high(0)
	movwf	((c:Creat_RTC_Packet@packet_crc+1)),c
	movlw	low(0)
	movwf	((c:Creat_RTC_Packet@packet_crc)),c
	line	53
;packet.c: 53: unsigned char crc_h = 0, crc_l = 0;
	movlw	low(0)
	movwf	((c:Creat_RTC_Packet@crc_h)),c
	movlw	low(0)
	movwf	((c:Creat_RTC_Packet@crc_l)),c
	line	55
	
l6537:
;packet.c: 55: packet_crc = Calculate_CRC();
	call	_Calculate_CRC	;wreg free
	movff	0+?_Calculate_CRC,(c:Creat_RTC_Packet@packet_crc)
	movff	1+?_Calculate_CRC,(c:Creat_RTC_Packet@packet_crc+1)
	line	56
	
l6539:
;packet.c: 56: crc_h = packet_crc >> 8;
	movff	(c:Creat_RTC_Packet@packet_crc+1),??_Creat_RTC_Packet+0+0
	movff	??_Creat_RTC_Packet+0+0,??_Creat_RTC_Packet+1+0
	clrf	(??_Creat_RTC_Packet+1+0+1)&0ffh,c
	movf	(??_Creat_RTC_Packet+1+0),c,w
	movwf	((c:Creat_RTC_Packet@crc_h)),c
	line	57
	
l6541:
;packet.c: 57: crc_l = packet_crc & 0x00FF;
	movff	(c:Creat_RTC_Packet@packet_crc),(c:Creat_RTC_Packet@crc_l)
	line	59
	
l6543:
;packet.c: 59: PACKET[Current_Pos] = crc_h;
	movf	((c:_Current_Pos)),c,w	;volatile
	mullw	01h
	movlb	0	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:Creat_RTC_Packet@crc_h),indf2

	line	60
	
l6545:; BSR set to: 0

;packet.c: 60: Current_Pos++;
	incf	((c:_Current_Pos)),c	;volatile
	line	61
	
l6547:; BSR set to: 0

;packet.c: 61: PACKET[Current_Pos] = crc_l;
	movf	((c:_Current_Pos)),c,w	;volatile
	mullw	01h
	movlb	0	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:Creat_RTC_Packet@crc_l),indf2

	line	62
	
l6549:; BSR set to: 0

;packet.c: 62: Current_Pos++;
	incf	((c:_Current_Pos)),c	;volatile
	line	63
	
l6551:; BSR set to: 0

;packet.c: 63: PACKET[Current_Pos] = 0xEA;
	movf	((c:_Current_Pos)),c,w	;volatile
	mullw	01h
	movlb	0	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0EAh)
	movwf	indf2
	line	65
	
l521:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_Creat_RTC_Packet
	__end_of_Creat_RTC_Packet:
	signat	_Creat_RTC_Packet,4216
	global	_Creat_Packet

;; *************** function _Creat_Packet *****************
;; Defined at:
;;		line 7 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\packet.c"
;; Parameters:    Size  Location     Type
;;  F_Code          1    wreg     unsigned char 
;;  Readings        1   19[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  F_Code          1   20[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh
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
;;		Nothing
;; This function is called by:
;;		_Creat_RTC_Packet
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2
	line	7
global __ptext14
__ptext14:
psect	text14
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\packet.c"
	line	7
	global	__size_of_Creat_Packet
	__size_of_Creat_Packet	equ	__end_of_Creat_Packet-_Creat_Packet
	
_Creat_Packet:; BSR set to: 0

;incstack = 0
	opt	stack 26
	dw	0FFFFh
;Creat_Packet@F_Code stored from wreg
	movwf	((c:Creat_Packet@F_Code)),c
	line	9
	
l5959:
;packet.c: 9: PACKET[0] = 0xFA;
	movlw	low(0FAh)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_PACKET))&0ffh	;volatile
	line	10
	
l5961:; BSR set to: 0

;packet.c: 10: PACKET[1] = (Readings * 8) + 16;
	movf	((c:Creat_Packet@Readings)),c,w
	mullw	08h
	movf	(prodl),c,w
	addlw	low(010h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	(0+(_PACKET+01h))&0ffh	;volatile
	line	11
	
l5963:; BSR set to: 0

;packet.c: 11: PACKET[2] = Source_ID;
	movff	(c:_Source_ID),0+(_PACKET+02h)	;volatile
	line	12
	
l5965:; BSR set to: 0

;packet.c: 12: PACKET[3] = Destination_ID;
	movff	(c:_Destination_ID),0+(_PACKET+03h)	;volatile
	line	13
	
l5967:; BSR set to: 0

;packet.c: 13: PACKET[4] = F_Code;
	movff	(c:Creat_Packet@F_Code),0+(_PACKET+04h)	;volatile
	line	14
	
l5969:; BSR set to: 0

;packet.c: 14: PACKET[5] = Readings;
	movff	(c:Creat_Packet@Readings),0+(_PACKET+05h)	;volatile
	line	19
	
l5971:; BSR set to: 0

;packet.c: 19: PACKET[6] = year;
	movff	(c:_year),0+(_PACKET+06h)	;volatile
	line	20
	
l5973:; BSR set to: 0

;packet.c: 20: PACKET[7] = month;
	movff	(c:_month),0+(_PACKET+07h)	;volatile
	line	21
	
l5975:; BSR set to: 0

;packet.c: 21: PACKET[8] = day;
	movff	(c:_day),0+(_PACKET+08h)	;volatile
	line	22
	
l5977:; BSR set to: 0

;packet.c: 22: PACKET[9] = dow;
	movff	(c:_dow),0+(_PACKET+09h)	;volatile
	line	23
	
l5979:; BSR set to: 0

;packet.c: 23: PACKET[10] = hr;
	movff	(c:_hr),0+(_PACKET+0Ah)	;volatile
	line	24
	
l5981:; BSR set to: 0

;packet.c: 24: PACKET[11] = min;
	movff	(c:_min),0+(_PACKET+0Bh)	;volatile
	line	25
	
l5983:; BSR set to: 0

;packet.c: 25: PACKET[12] = sec;
	movff	(c:_sec),0+(_PACKET+0Ch)	;volatile
	line	27
	
l5985:; BSR set to: 0

;packet.c: 27: Current_Pos = 13;
	movlw	low(0Dh)
	movwf	((c:_Current_Pos)),c	;volatile
	line	28
	
l5987:; BSR set to: 0

;packet.c: 28: Data_End = Readings * 8 + 13;
	movf	((c:Creat_Packet@Readings)),c,w
	mullw	08h
	movf	(prodl),c,w
	addlw	low(0Dh)
	movwf	((c:_Data_End)),c	;volatile
	line	29
	
l514:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_Creat_Packet
	__end_of_Creat_Packet:
	signat	_Creat_Packet,8312
	global	_Calculate_CRC

;; *************** function _Calculate_CRC *****************
;; Defined at:
;;		line 118 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\packet.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  sum             2   28[COMRAM] int 
;;  count           1   30[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   19[COMRAM] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          7       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Creat_RTC_Packet
;;		_Add_Reading_To_Packet
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2
	line	118
global __ptext15
__ptext15:
psect	text15
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\packet.c"
	line	118
	global	__size_of_Calculate_CRC
	__size_of_Calculate_CRC	equ	__end_of_Calculate_CRC-_Calculate_CRC
	
_Calculate_CRC:; BSR set to: 0

;incstack = 0
	opt	stack 26
	dw	0FFFFh
	line	121
	
l6007:
;packet.c: 120: char count;
;packet.c: 121: int sum = 0;
	movlw	high(0)
	movwf	((c:Calculate_CRC@sum+1)),c
	movlw	low(0)
	movwf	((c:Calculate_CRC@sum)),c
	line	123
;packet.c: 123: for(count = 0; count <= Data_End - 1; count++)
	movlw	low(0)
	movwf	((c:Calculate_CRC@count)),c
	goto	l6013
	line	124
	
l529:
	
l6009:
;packet.c: 124: sum = sum + PACKET[count];
	movf	((c:Calculate_CRC@count)),c,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	(??_Calculate_CRC+0+0)&0ffh,c
	movf	((??_Calculate_CRC+0+0)),c,w
	addwf	((c:Calculate_CRC@sum)),c,w
	
	movwf	((c:Calculate_CRC@sum)),c
	movlw	0
	addwfc	((c:Calculate_CRC@sum+1)),c,w
	movwf	1+((c:Calculate_CRC@sum)),c
	line	123
	
l6011:; BSR set to: 0

	incf	((c:Calculate_CRC@count)),c
	goto	l6013
	
l528:; BSR set to: 0

	
l6013:
	movf	((c:Calculate_CRC@count)),c,w
	movwf	(??_Calculate_CRC+0+0)&0ffh,c
	clrf	(??_Calculate_CRC+0+0+1)&0ffh,c

	movlw	low(-1)
	movwf	(??_Calculate_CRC+2+0)&0ffh,c
	movlw	high(-1)
	movwf	(??_Calculate_CRC+2+0+1)&0ffh,c
	movf	((c:_Data_End)),c,w	;volatile
	movwf	(??_Calculate_CRC+4+0)&0ffh,c
	clrf	(??_Calculate_CRC+4+0+1)&0ffh,c

	movf	(??_Calculate_CRC+2+0),c,w
	addwf	(??_Calculate_CRC+4+0),c
	movf	(??_Calculate_CRC+2+1),c,w
	addwfc	(??_Calculate_CRC+4+1),c
	movf	(??_Calculate_CRC+4+1),c,w
	xorlw	80h
	movwf	(??_Calculate_CRC+6+0)&0ffh,c
	movf	(??_Calculate_CRC+0+0),c,w
	subwf	(??_Calculate_CRC+4+0),c,w
	movf	(??_Calculate_CRC+0+1),c,w
	xorlw	80h
	subwfb	(??_Calculate_CRC+6+0)&0ffh,c,w
	btfsc	status,0
	goto	u3421
	goto	u3420
u3421:
	goto	l6009
u3420:
	
l530:
	line	125
;packet.c: 125: return sum;
	movff	(c:Calculate_CRC@sum),(c:?_Calculate_CRC)
	movff	(c:Calculate_CRC@sum+1),(c:?_Calculate_CRC+1)
	line	126
	
l531:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_Calculate_CRC
	__end_of_Calculate_CRC:
	signat	_Calculate_CRC,90
	global	_getkey

;; *************** function _getkey *****************
;; Defined at:
;;		line 160 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\rtu.c"
;; Parameters:    Size  Location     Type
;;  msecs           2   19[COMRAM] unsigned int 
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
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\rtu.c"
	line	160
global __ptext16
__ptext16:
psect	text16
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\rtu.c"
	line	160
	global	__size_of_getkey
	__size_of_getkey	equ	__end_of_getkey-_getkey
	
_getkey:
;incstack = 0
	opt	stack 28
	dw	0FFFFh
	line	163
	
l6751:
;rtu.c: 163: while(RD5 == 0 && RD4 == 0 && RC5 == 0 && RD0 == 0 && RD1 == 0 && msecs > 0)
	goto	l6757
	
l691:
	line	165
	
l6753:
;rtu.c: 164: {
;rtu.c: 165: _delay((unsigned long)((1)*(100000000/4000.0)));
	movlw	25
movwf	(??_getkey+0+0)&0ffh,c,f
	movlw	93
u5057:
	decfsz	wreg,f
	goto	u5057
	decfsz	(??_getkey+0+0)&0ffh,c,f
	goto	u5057

	line	166
	
l6755:
;rtu.c: 166: msecs--;
	decf	((c:getkey@msecs)),c
	btfss	status,0
	decf	((c:getkey@msecs+1)),c
	goto	l6757
	line	167
	
l690:
	line	163
	
l6757:
	btfsc	c:(31773/8),(31773)&7	;volatile
	goto	u4191
	goto	u4190
u4191:
	goto	l6769
u4190:
	
l6759:
	btfsc	c:(31772/8),(31772)&7	;volatile
	goto	u4201
	goto	u4200
u4201:
	goto	l6769
u4200:
	
l6761:
	btfsc	c:(31765/8),(31765)&7	;volatile
	goto	u4211
	goto	u4210
u4211:
	goto	l6769
u4210:
	
l6763:
	btfsc	c:(31768/8),(31768)&7	;volatile
	goto	u4221
	goto	u4220
u4221:
	goto	l6769
u4220:
	
l6765:
	btfsc	c:(31769/8),(31769)&7	;volatile
	goto	u4231
	goto	u4230
u4231:
	goto	l6769
u4230:
	
l6767:
	movf	((c:getkey@msecs+1)),c,w
	iorwf ((c:getkey@msecs)),c,w

	btfss	status,2
	goto	u4241
	goto	u4240
u4241:
	goto	l6753
u4240:
	goto	l6769
	
l693:
	goto	l6769
	
l694:
	line	169
	
l6769:
;rtu.c: 167: }
;rtu.c: 169: if(msecs <= 0)
	movf	((c:getkey@msecs+1)),c,w
	iorwf ((c:getkey@msecs)),c,w

	btfss	status,2
	goto	u4251
	goto	u4250
u4251:
	goto	l695
u4250:
	line	170
	
l6771:
;rtu.c: 170: return 0;
	movlw	(0)&0ffh
	goto	l696
	
l6773:
	goto	l696
	
l695:
	line	171
;rtu.c: 171: if(RD5 == 1)
	btfss	c:(31773/8),(31773)&7	;volatile
	goto	u4261
	goto	u4260
u4261:
	goto	l697
u4260:
	line	172
	
l6775:
;rtu.c: 172: return 1;
	movlw	(01h)&0ffh
	goto	l696
	
l6777:
	goto	l696
	
l697:
	line	173
;rtu.c: 173: if(RD4 == 1)
	btfss	c:(31772/8),(31772)&7	;volatile
	goto	u4271
	goto	u4270
u4271:
	goto	l698
u4270:
	line	174
	
l6779:
;rtu.c: 174: return 2;
	movlw	(02h)&0ffh
	goto	l696
	
l6781:
	goto	l696
	
l698:
	line	175
;rtu.c: 175: if(RC5 == 1)
	btfss	c:(31765/8),(31765)&7	;volatile
	goto	u4281
	goto	u4280
u4281:
	goto	l699
u4280:
	line	176
	
l6783:
;rtu.c: 176: return 3;
	movlw	(03h)&0ffh
	goto	l696
	
l6785:
	goto	l696
	
l699:
	line	177
;rtu.c: 177: if(RD0 == 1)
	btfss	c:(31768/8),(31768)&7	;volatile
	goto	u4291
	goto	u4290
u4291:
	goto	l700
u4290:
	line	178
	
l6787:
;rtu.c: 178: return 4;
	movlw	(04h)&0ffh
	goto	l696
	
l6789:
	goto	l696
	
l700:
	line	179
;rtu.c: 179: if(RD1 == 1)
	btfss	c:(31769/8),(31769)&7	;volatile
	goto	u4301
	goto	u4300
u4301:
	goto	l696
u4300:
	line	180
	
l6791:
;rtu.c: 180: return 5;
	movlw	(05h)&0ffh
	goto	l696
	
l6793:
	goto	l696
	
l701:
	line	181
	
l696:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_getkey
	__end_of_getkey:
	signat	_getkey,4217
	global	_data_to_center

;; *************** function _data_to_center *****************
;; Defined at:
;;		line 467 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\Test1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  lsb             1    1[BANK1 ] unsigned char 
;;  msb             1    0[BANK1 ] unsigned char 
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
;;      Locals:         0       0       2       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_Clear_Packet
;;		_LCDByte
;;		_LCDWriteString
;;		_MyDelay
;;		_Write_b_eep
;;		_clear_rom
;;		_read_packet_from_page
;;		_tx_packet
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\Test1.c"
	line	467
global __ptext17
__ptext17:
psect	text17
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\Test1.c"
	line	467
	global	__size_of_data_to_center
	__size_of_data_to_center	equ	__end_of_data_to_center-_data_to_center
	
_data_to_center:
;incstack = 0
	opt	stack 22
	dw	0FFFFh
	line	469
	
l6801:
;Test1.c: 469: unsigned char msb = 0, lsb = 0;
	movlw	low(0)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((data_to_center@msb))&0ffh
	movlw	low(0)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((data_to_center@lsb))&0ffh
	line	473
	
l6803:; BSR set to: 1

;Test1.c: 473: if(Write_Page1 == 0 && Write_Page2 == 0)
	movf	((c:_Write_Page1+1)),c,w
	iorwf ((c:_Write_Page1)),c,w

	btfss	status,2
	goto	u4311
	goto	u4310
u4311:
	goto	l6813
u4310:
	
l6805:; BSR set to: 1

	movf	((c:_Write_Page2+1)),c,w
	iorwf ((c:_Write_Page2)),c,w

	btfss	status,2
	goto	u4321
	goto	u4320
u4321:
	goto	l6813
u4320:
	line	475
	
l6807:; BSR set to: 1

;Test1.c: 474: {
;Test1.c: 475: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	476
	
l6809:
;Test1.c: 476: LCDWriteString("NOTHING TO SEND!");
		movlw	high(STR_65)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_65)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	477
	
l6811:
;Test1.c: 477: MyDelay(1000);
	movlw	high(03E8h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(03E8h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	goto	l6813
	line	478
	
l889:
	line	479
	
l6813:
;Test1.c: 478: }
;Test1.c: 479: if(Write_Page1 != 0)
	movf	((c:_Write_Page1+1)),c,w
	iorwf ((c:_Write_Page1)),c,w

	btfsc	status,2
	goto	u4331
	goto	u4330
u4331:
	goto	l6847
u4330:
	line	481
	
l6815:
;Test1.c: 480: {
;Test1.c: 481: device = 0xA0;
	movlw	low(0A0h)
	movwf	((c:_device)),c
	line	482
;Test1.c: 482: for(Current_Read_Page = 0; Current_Read_Page < Write_Page1; Current_Read_Page++)
	movlw	high(0)
	movwf	((c:_Current_Read_Page+1)),c	;volatile
	movlw	low(0)
	movwf	((c:_Current_Read_Page)),c	;volatile
	goto	l6835
	line	483
	
l892:
	line	484
	
l6817:
;Test1.c: 483: {
;Test1.c: 484: Clear_Packet();
	call	_Clear_Packet	;wreg free
	line	485
	
l6819:
;Test1.c: 485: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	486
	
l6821:
;Test1.c: 486: LCDWriteString("READING EEPROM...");
		movlw	high(STR_66)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_66)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	487
	
l6823:
;Test1.c: 487: read_packet_from_page(Current_Read_Page);
	movff	(c:_Current_Read_Page),(c:read_packet_from_page@page_no)	;volatile
	movff	(c:_Current_Read_Page+1),(c:read_packet_from_page@page_no+1)	;volatile
	call	_read_packet_from_page	;wreg free
	line	488
	
l6825:
;Test1.c: 488: MyDelay(10);
	movlw	high(0Ah)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(0Ah)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	489
	
l6827:
;Test1.c: 489: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	490
	
l6829:
;Test1.c: 490: LCDWriteString("TRANSMITTING...");
		movlw	high(STR_67)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_67)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	491
	
l6831:
;Test1.c: 491: tx_packet();
	call	_tx_packet	;wreg free
	line	482
	
l6833:
	infsnz	((c:_Current_Read_Page)),c	;volatile
	incf	((c:_Current_Read_Page+1)),c	;volatile
	goto	l6835
	
l891:
	
l6835:
	movf	((c:_Write_Page1)),c,w
	subwf	((c:_Current_Read_Page)),c,w	;volatile
	movf	((c:_Write_Page1+1)),c,w
	subwfb	((c:_Current_Read_Page+1)),c,w	;volatile
	btfss	status,0
	goto	u4341
	goto	u4340
u4341:
	goto	l6817
u4340:
	goto	l6837
	
l893:
	line	493
	
l6837:
;Test1.c: 492: }
;Test1.c: 493: Write_Page1 = 0;
	movlw	high(0)
	movwf	((c:_Write_Page1+1)),c
	movlw	low(0)
	movwf	((c:_Write_Page1)),c
	line	495
	
l6839:
;Test1.c: 495: Write_b_eep(0x00, 0x00);
	movlw	high(0)
	movwf	((c:Write_b_eep@badd+1)),c
	movlw	low(0)
	movwf	((c:Write_b_eep@badd)),c
	movlw	low(0)
	movwf	((c:Write_b_eep@bdat)),c
	call	_Write_b_eep	;wreg free
	line	496
	
l6841:
;Test1.c: 496: _delay(50);
	movlw	10
u5067:
	nop
decfsz	wreg,f
	goto	u5067

	line	497
	
l6843:
;Test1.c: 497: Write_b_eep(0x01, 0x00);
	movlw	high(01h)
	movwf	((c:Write_b_eep@badd+1)),c
	movlw	low(01h)
	movwf	((c:Write_b_eep@badd)),c
	movlw	low(0)
	movwf	((c:Write_b_eep@bdat)),c
	call	_Write_b_eep	;wreg free
	line	498
	
l6845:
;Test1.c: 498: _delay(50);
	movlw	10
u5077:
	nop
decfsz	wreg,f
	goto	u5077

	goto	l6847
	line	499
	
l890:
	line	500
	
l6847:
;Test1.c: 499: }
;Test1.c: 500: if(Write_Page2 != 0)
	movf	((c:_Write_Page2+1)),c,w
	iorwf ((c:_Write_Page2)),c,w

	btfsc	status,2
	goto	u4351
	goto	u4350
u4351:
	goto	l6881
u4350:
	line	502
	
l6849:
;Test1.c: 501: {
;Test1.c: 502: device = 0xA2;
	movlw	low(0A2h)
	movwf	((c:_device)),c
	line	503
;Test1.c: 503: for(Current_Read_Page = 0; Current_Read_Page < Write_Page2; Current_Read_Page++)
	movlw	high(0)
	movwf	((c:_Current_Read_Page+1)),c	;volatile
	movlw	low(0)
	movwf	((c:_Current_Read_Page)),c	;volatile
	goto	l6869
	line	504
	
l896:
	line	505
	
l6851:
;Test1.c: 504: {
;Test1.c: 505: Clear_Packet();
	call	_Clear_Packet	;wreg free
	line	506
	
l6853:
;Test1.c: 506: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	507
	
l6855:
;Test1.c: 507: LCDWriteString("READING EEPROM...");
		movlw	high(STR_68)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_68)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	508
	
l6857:
;Test1.c: 508: read_packet_from_page(Current_Read_Page);
	movff	(c:_Current_Read_Page),(c:read_packet_from_page@page_no)	;volatile
	movff	(c:_Current_Read_Page+1),(c:read_packet_from_page@page_no+1)	;volatile
	call	_read_packet_from_page	;wreg free
	line	509
	
l6859:
;Test1.c: 509: MyDelay(10);
	movlw	high(0Ah)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(0Ah)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	510
	
l6861:
;Test1.c: 510: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	511
	
l6863:
;Test1.c: 511: LCDWriteString("TRANSMITTING...");
		movlw	high(STR_69)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_69)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	512
	
l6865:
;Test1.c: 512: tx_packet();
	call	_tx_packet	;wreg free
	line	503
	
l6867:
	infsnz	((c:_Current_Read_Page)),c	;volatile
	incf	((c:_Current_Read_Page+1)),c	;volatile
	goto	l6869
	
l895:
	
l6869:
	movf	((c:_Write_Page2)),c,w
	subwf	((c:_Current_Read_Page)),c,w	;volatile
	movf	((c:_Write_Page2+1)),c,w
	subwfb	((c:_Current_Read_Page+1)),c,w	;volatile
	btfss	status,0
	goto	u4361
	goto	u4360
u4361:
	goto	l6851
u4360:
	goto	l6871
	
l897:
	line	514
	
l6871:
;Test1.c: 513: }
;Test1.c: 514: Write_Page2 = 0;
	movlw	high(0)
	movwf	((c:_Write_Page2+1)),c
	movlw	low(0)
	movwf	((c:_Write_Page2)),c
	line	516
	
l6873:
;Test1.c: 516: Write_b_eep(0x02, 0x00);
	movlw	high(02h)
	movwf	((c:Write_b_eep@badd+1)),c
	movlw	low(02h)
	movwf	((c:Write_b_eep@badd)),c
	movlw	low(0)
	movwf	((c:Write_b_eep@bdat)),c
	call	_Write_b_eep	;wreg free
	line	517
	
l6875:
;Test1.c: 517: _delay(50);
	movlw	10
u5087:
	nop
decfsz	wreg,f
	goto	u5087

	line	518
	
l6877:
;Test1.c: 518: Write_b_eep(0x03, 0x00);
	movlw	high(03h)
	movwf	((c:Write_b_eep@badd+1)),c
	movlw	low(03h)
	movwf	((c:Write_b_eep@badd)),c
	movlw	low(0)
	movwf	((c:Write_b_eep@bdat)),c
	call	_Write_b_eep	;wreg free
	line	519
	
l6879:
;Test1.c: 519: _delay(50);
	movlw	10
u5097:
	nop
decfsz	wreg,f
	goto	u5097

	goto	l6881
	line	520
	
l894:
	line	521
	
l6881:
;Test1.c: 520: }
;Test1.c: 521: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	522
	
l6883:
;Test1.c: 522: LCDWriteString("FORMATING MEMORY");
		movlw	high(STR_70)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_70)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	523
	
l6885:
;Test1.c: 523: MyDelay(1000);
	movlw	high(03E8h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(03E8h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	526
	
l6887:
;Test1.c: 526: device = 0xA0;
	movlw	low(0A0h)
	movwf	((c:_device)),c
	line	527
	
l6889:
;Test1.c: 527: clear_rom();
	call	_clear_rom	;wreg free
	line	528
	
l6891:
;Test1.c: 528: MyDelay(1);
	movlw	high(01h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(01h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	529
	
l6893:
;Test1.c: 529: device = 0xA2;
	movlw	low(0A2h)
	movwf	((c:_device)),c
	line	530
	
l6895:
;Test1.c: 530: clear_rom();
	call	_clear_rom	;wreg free
	line	531
	
l6897:
;Test1.c: 531: MyDelay(1);
	movlw	high(01h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(01h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	533
	
l6899:
;Test1.c: 533: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	534
	
l6901:
;Test1.c: 534: LCDWriteString("FORMAT COMPLETE!");
		movlw	high(STR_71)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_71)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	535
	
l6903:
;Test1.c: 535: MyDelay(1000);
	movlw	high(03E8h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(03E8h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	goto	l898
	line	536
	
l6905:
	line	537
;Test1.c: 536: return;
	
l898:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_data_to_center
	__end_of_data_to_center:
	signat	_data_to_center,88
	global	_tx_packet

;; *************** function _tx_packet *****************
;; Defined at:
;;		line 569 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\Test1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  res             1   46[COMRAM] unsigned char 
;;  attempts        1   45[COMRAM] unsigned char 
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
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_LCDByte
;;		_LCDWriteString
;;		_MyDelay
;;		_Send_Packet
;; This function is called by:
;;		_getting_data
;;		_rtc_setting
;;		_data_to_center
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2
	line	569
global __ptext18
__ptext18:
psect	text18
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\Test1.c"
	line	569
	global	__size_of_tx_packet
	__size_of_tx_packet	equ	__end_of_tx_packet-_tx_packet
	
_tx_packet:
;incstack = 0
	opt	stack 22
	dw	0FFFFh
	line	571
	
l6617:
;Test1.c: 571: unsigned char attempts = 0;
	movlw	low(0)
	movwf	((c:tx_packet@attempts)),c
	line	572
;Test1.c: 572: unsigned char res = 48;
	movlw	low(030h)
	movwf	((c:tx_packet@res)),c
	line	573
;Test1.c: 573: while(res == 48 && attempts < 10)
	goto	l6629
	
l909:
	line	575
	
l6619:
;Test1.c: 574: {
;Test1.c: 575: res = Send_Packet();
	call	_Send_Packet	;wreg free
	movwf	((c:tx_packet@res)),c
	line	576
	
l6621:
;Test1.c: 576: if(res == 0x00)
	tstfsz	((c:tx_packet@res)),c
	goto	u4101
	goto	u4100
u4101:
	goto	l6627
u4100:
	line	578
	
l6623:
;Test1.c: 577: {
;Test1.c: 578: MyDelay(5000);
	movlw	high(01388h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(01388h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	579
	
l6625:
;Test1.c: 579: res = 48;
	movlw	low(030h)
	movwf	((c:tx_packet@res)),c
	goto	l6627
	line	580
	
l910:
	line	581
	
l6627:
;Test1.c: 580: }
;Test1.c: 581: attempts++;
	incf	((c:tx_packet@attempts)),c
	goto	l6629
	line	582
	
l908:
	line	573
	
l6629:
	movf	((c:tx_packet@res)),c,w
	xorlw	48

	btfss	status,2
	goto	u4111
	goto	u4110
u4111:
	goto	l6633
u4110:
	
l6631:
	movlw	(0Ah-1)
	cpfsgt	((c:tx_packet@attempts)),c
	goto	u4121
	goto	u4120
u4121:
	goto	l6619
u4120:
	goto	l6633
	
l912:
	goto	l6633
	
l913:
	line	583
	
l6633:
;Test1.c: 582: }
;Test1.c: 583: if(res != 49)
	movf	((c:tx_packet@res)),c,w
	xorlw	49

	btfsc	status,2
	goto	u4131
	goto	u4130
u4131:
	goto	l6651
u4130:
	line	587
	
l6635:
;Test1.c: 584: {
;Test1.c: 587: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	588
	
l6637:
;Test1.c: 588: RD7 = 1;
	bsf	c:(31775/8),(31775)&7	;volatile
	goto	l6639
	line	589
;Test1.c: 589: while(1)
	
l915:
	line	591
	
l6639:
;Test1.c: 590: {
;Test1.c: 591: LCDWriteString("WIRELESS FAILD...!");
		movlw	high(STR_76)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_76)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	592
	
l6641:
;Test1.c: 592: RE0 = 1;
	bsf	c:(31776/8),(31776)&7	;volatile
	line	593
	
l6643:
;Test1.c: 593: MyDelay(100);
	movlw	high(064h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(064h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	594
	
l6645:
;Test1.c: 594: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	595
	
l6647:
;Test1.c: 595: RE0 = 0;
	bcf	c:(31776/8),(31776)&7	;volatile
	line	596
	
l6649:
;Test1.c: 596: MyDelay(100);
	movlw	high(064h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(064h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	goto	l6639
	line	597
	
l916:
	line	589
	goto	l6639
	
l917:
	goto	l6651
	line	598
	
l914:
	line	599
	
l6651:
;Test1.c: 597: }
;Test1.c: 598: }
;Test1.c: 599: MyDelay(50);
	movlw	high(032h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(032h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	600
	
l918:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_tx_packet
	__end_of_tx_packet:
	signat	_tx_packet,88
	global	_Send_Packet

;; *************** function _Send_Packet *****************
;; Defined at:
;;		line 131 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\communication.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ts              2   39[COMRAM] unsigned int 
;;  data            1   44[COMRAM] unsigned char 
;;  n               1   43[COMRAM] unsigned char 
;;  result          1   42[COMRAM] unsigned char 
;;  count           1   41[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_Eco_Test
;;		_LCDByte
;;		_LCDWriteString
;;		_USARTDataAvailable
;;		_USARTFlushBuffer
;;		_USARTReadData
;;		_USARTWriteChar
;; This function is called by:
;;		_tx_packet
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\communication.c"
	line	131
global __ptext19
__ptext19:
psect	text19
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\communication.c"
	line	131
	global	__size_of_Send_Packet
	__size_of_Send_Packet	equ	__end_of_Send_Packet-_Send_Packet
	
_Send_Packet:
;incstack = 0
	opt	stack 22
	dw	0FFFFh
	line	134
	
l5777:
;communication.c: 134: unsigned char result = 0;
	movlw	low(0)
	movwf	((c:Send_Packet@result)),c
	line	135
;communication.c: 135: unsigned char count = 0, data = 0, n = 0;
	movlw	low(0)
	movwf	((c:Send_Packet@count)),c
	movlw	low(0)
	movwf	((c:Send_Packet@data)),c
	movlw	low(0)
	movwf	((c:Send_Packet@n)),c
	line	136
;communication.c: 136: unsigned int ts = 0;
	movlw	high(0)
	movwf	((c:Send_Packet@ts+1)),c
	movlw	low(0)
	movwf	((c:Send_Packet@ts)),c
	line	138
	
l5779:
;communication.c: 138: result = Eco_Test();
	call	_Eco_Test	;wreg free
	movwf	((c:Send_Packet@result)),c
	line	140
	
l5781:
;communication.c: 140: if(result == 0x01)
	decf	((c:Send_Packet@result)),c,w

	btfss	status,2
	goto	u3251
	goto	u3250
u3251:
	goto	l5851
u3250:
	line	145
	
l5783:
;communication.c: 141: {
;communication.c: 145: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	146
	
l5785:
;communication.c: 146: LCDWriteString("SENDING PACKET ");
		movlw	high(STR_8)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_8)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	147
	
l5787:
;communication.c: 147: _delay((unsigned long)((1)*(100000000/4000.0)));
	movlw	25
movwf	(??_Send_Packet+0+0)&0ffh,c,f
	movlw	93
u5107:
	decfsz	wreg,f
	goto	u5107
	decfsz	(??_Send_Packet+0+0)&0ffh,c,f
	goto	u5107

	line	148
	
l5789:
;communication.c: 148: count = 0;
	movlw	low(0)
	movwf	((c:Send_Packet@count)),c
	line	149
	
l5791:
;communication.c: 149: data = PACKET[0];
	movff	(_PACKET),(c:Send_Packet@data)	;volatile
	line	150
;communication.c: 150: while(data != 0xEA)
	goto	l5805
	
l97:
	line	152
;communication.c: 151: {
;communication.c: 152: RE2 = 1;
	bsf	c:(31778/8),(31778)&7	;volatile
	line	153
	
l5793:
;communication.c: 153: USARTWriteChar(data);
	movf	((c:Send_Packet@data)),c,w
	
	call	_USARTWriteChar
	line	154
	
l5795:
;communication.c: 154: _delay((unsigned long)((5)*(100000000/4000.0)));
	movlw	122
movwf	(??_Send_Packet+0+0)&0ffh,c,f
	movlw	212
u5117:
	decfsz	wreg,f
	goto	u5117
	decfsz	(??_Send_Packet+0+0)&0ffh,c,f
	goto	u5117
	nop2

	line	155
	
l5797:
;communication.c: 155: _delay((unsigned long)((5)*(100000000/4000.0)));
	movlw	122
movwf	(??_Send_Packet+0+0)&0ffh,c,f
	movlw	212
u5127:
	decfsz	wreg,f
	goto	u5127
	decfsz	(??_Send_Packet+0+0)&0ffh,c,f
	goto	u5127
	nop2

	line	156
	
l5799:
;communication.c: 156: RE2 = 0;
	bcf	c:(31778/8),(31778)&7	;volatile
	line	157
	
l5801:
;communication.c: 157: count++;
	incf	((c:Send_Packet@count)),c
	line	158
	
l5803:
;communication.c: 158: data = PACKET[count];
	movf	((c:Send_Packet@count)),c,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:Send_Packet@data)),c
	goto	l5805
	line	159
	
l96:; BSR set to: 0

	line	150
	
l5805:
	movf	((c:Send_Packet@data)),c,w
	xorlw	234

	btfss	status,2
	goto	u3261
	goto	u3260
u3261:
	goto	l97
u3260:
	
l98:
	line	161
;communication.c: 159: }
;communication.c: 161: RE2 = 1;
	bsf	c:(31778/8),(31778)&7	;volatile
	line	162
	
l5807:
;communication.c: 162: USARTWriteChar(data);
	movf	((c:Send_Packet@data)),c,w
	
	call	_USARTWriteChar
	line	163
	
l5809:
;communication.c: 163: _delay((unsigned long)((5)*(100000000/4000.0)));
	movlw	122
movwf	(??_Send_Packet+0+0)&0ffh,c,f
	movlw	212
u5137:
	decfsz	wreg,f
	goto	u5137
	decfsz	(??_Send_Packet+0+0)&0ffh,c,f
	goto	u5137
	nop2

	line	164
	
l5811:
;communication.c: 164: _delay((unsigned long)((5)*(100000000/4000.0)));
	movlw	122
movwf	(??_Send_Packet+0+0)&0ffh,c,f
	movlw	212
u5147:
	decfsz	wreg,f
	goto	u5147
	decfsz	(??_Send_Packet+0+0)&0ffh,c,f
	goto	u5147
	nop2

	line	165
	
l5813:
;communication.c: 165: RE2 = 0;
	bcf	c:(31778/8),(31778)&7	;volatile
	line	166
	
l5815:
;communication.c: 166: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	167
	
l5817:
;communication.c: 167: LCDWriteString("PACKET SENT");
		movlw	high(STR_9)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_9)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	169
	
l5819:
;communication.c: 169: n = 0;
	movlw	low(0)
	movwf	((c:Send_Packet@n)),c
	line	170
	
l5821:
;communication.c: 170: ts = 0;
	movlw	high(0)
	movwf	((c:Send_Packet@ts+1)),c
	movlw	low(0)
	movwf	((c:Send_Packet@ts)),c
	line	172
	
l5823:
;communication.c: 172: USARTFlushBuffer();
	call	_USARTFlushBuffer	;wreg free
	line	174
;communication.c: 174: while(n == 0 && ts < 2000)
	goto	l5831
	
l100:
	line	177
	
l5825:
;communication.c: 175: {
;communication.c: 177: n = USARTDataAvailable();
	call	_USARTDataAvailable	;wreg free
	movwf	((c:Send_Packet@n)),c
	line	178
	
l5827:
;communication.c: 178: ts++;
	infsnz	((c:Send_Packet@ts)),c
	incf	((c:Send_Packet@ts+1)),c
	line	179
	
l5829:
;communication.c: 179: _delay((unsigned long)((1)*(100000000/4000.0)));
	movlw	25
movwf	(??_Send_Packet+0+0)&0ffh,c,f
	movlw	93
u5157:
	decfsz	wreg,f
	goto	u5157
	decfsz	(??_Send_Packet+0+0)&0ffh,c,f
	goto	u5157

	goto	l5831
	line	180
	
l99:
	line	174
	
l5831:
	tstfsz	((c:Send_Packet@n)),c
	goto	u3271
	goto	u3270
u3271:
	goto	l5835
u3270:
	
l5833:
	movlw	0D0h
	subwf	((c:Send_Packet@ts)),c,w
	movlw	07h
	subwfb	((c:Send_Packet@ts+1)),c,w
	btfss	status,0
	goto	u3281
	goto	u3280
u3281:
	goto	l5825
u3280:
	goto	l5835
	
l102:
	goto	l5835
	
l103:
	line	186
	
l5835:
;communication.c: 180: }
;communication.c: 186: if(n!=0)
	movf	((c:Send_Packet@n)),c,w
	btfsc	status,2
	goto	u3291
	goto	u3290
u3291:
	goto	l5851
u3290:
	line	190
	
l5837:
;communication.c: 187: {
;communication.c: 190: RC0 = 1;
	bsf	c:(31760/8),(31760)&7	;volatile
	line	191
	
l5839:
;communication.c: 191: result=USARTReadData();
	call	_USARTReadData	;wreg free
	movwf	((c:Send_Packet@result)),c
	line	192
	
l5841:
;communication.c: 192: RC0 = 0;
	bcf	c:(31760/8),(31760)&7	;volatile
	line	193
	
l5843:
;communication.c: 193: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	194
	
l5845:
;communication.c: 194: LCDWriteString("PACKET DELIVERED");
		movlw	high(STR_10)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_10)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	195
	
l5847:
;communication.c: 195: return result;
	movf	((c:Send_Packet@result)),c,w
	goto	l105
	
l5849:
	goto	l105
	line	196
	
l104:
	goto	l5851
	line	197
	
l95:
	line	198
	
l5851:
;communication.c: 196: }
;communication.c: 197: }
;communication.c: 198: return 0;
	movlw	(0)&0ffh
	goto	l105
	
l5853:
	line	199
	
l105:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_Send_Packet
	__end_of_Send_Packet:
	signat	_Send_Packet,89
	global	_Eco_Test

;; *************** function _Eco_Test *****************
;; Defined at:
;;		line 30 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\communication.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data            1   34[COMRAM] unsigned char 
;;  ts              2   35[COMRAM] unsigned int 
;;  n               1   37[COMRAM] unsigned char 
;;  re              1   33[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Check_Busy_Line
;;		_LCDByte
;;		_LCDWriteString
;;		_USARTDataAvailable
;;		_USARTFlushBuffer
;;		_USARTReadData
;;		_USARTWriteChar
;; This function is called by:
;;		_Send_Packet
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2
	line	30
global __ptext20
__ptext20:
psect	text20
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\communication.c"
	line	30
	global	__size_of_Eco_Test
	__size_of_Eco_Test	equ	__end_of_Eco_Test-_Eco_Test
	
_Eco_Test:
;incstack = 0
	opt	stack 22
	dw	0FFFFh
	line	32
	
l5621:
;communication.c: 32: uint8_t n = 0;
	movlw	low(0)
	movwf	((c:Eco_Test@n)),c
	line	33
;communication.c: 33: unsigned int ts = 0;
	movlw	high(0)
	movwf	((c:Eco_Test@ts+1)),c
	movlw	low(0)
	movwf	((c:Eco_Test@ts)),c
	line	34
;communication.c: 34: unsigned char re = 0;
	movlw	low(0)
	movwf	((c:Eco_Test@re)),c
	line	36
	
l5623:
;communication.c: 36: re = Check_Busy_Line();
	call	_Check_Busy_Line	;wreg free
	movwf	((c:Eco_Test@re)),c
	line	37
	
l5625:
;communication.c: 37: if(re = 0x01)
	movlw	low(01h)
	movwf	((c:Eco_Test@re)),c
	line	39
	
l5627:
;communication.c: 38: {
;communication.c: 39: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	40
	
l5629:
;communication.c: 40: LCDWriteString("LINE FREE");
		movlw	high(STR_1)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_1)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	42
	
l5631:
;communication.c: 42: USARTFlushBuffer();
	call	_USARTFlushBuffer	;wreg free
	line	45
	
l5633:
;communication.c: 45: RE2 = 1;
	bsf	c:(31778/8),(31778)&7	;volatile
	line	46
	
l5635:
;communication.c: 46: _delay((unsigned long)((5)*(100000000/4000.0)));
	movlw	122
movwf	(??_Eco_Test+0+0)&0ffh,c,f
	movlw	212
u5167:
	decfsz	wreg,f
	goto	u5167
	decfsz	(??_Eco_Test+0+0)&0ffh,c,f
	goto	u5167
	nop2

	line	47
	
l5637:
;communication.c: 47: _delay((unsigned long)((5)*(100000000/4000.0)));
	movlw	122
movwf	(??_Eco_Test+0+0)&0ffh,c,f
	movlw	212
u5177:
	decfsz	wreg,f
	goto	u5177
	decfsz	(??_Eco_Test+0+0)&0ffh,c,f
	goto	u5177
	nop2

	line	48
	
l5639:
;communication.c: 48: USARTWriteChar(Source_ID);
	movf	((c:_Source_ID)),c,w
	
	call	_USARTWriteChar
	line	49
	
l5641:
;communication.c: 49: RE2 = 0;
	bcf	c:(31778/8),(31778)&7	;volatile
	line	51
	
l5643:
;communication.c: 51: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	52
	
l5645:
;communication.c: 52: LCDWriteString("ECO SENT");
		movlw	high(STR_2)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_2)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	55
;communication.c: 55: while(n == 0 && ts < 2000)
	goto	l5653
	
l76:
	line	58
	
l5647:
;communication.c: 56: {
;communication.c: 58: n = USARTDataAvailable();
	call	_USARTDataAvailable	;wreg free
	movwf	((c:Eco_Test@n)),c
	line	59
	
l5649:
;communication.c: 59: ts++;
	infsnz	((c:Eco_Test@ts)),c
	incf	((c:Eco_Test@ts+1)),c
	line	60
	
l5651:
;communication.c: 60: _delay((unsigned long)((1)*(100000000/4000.0)));
	movlw	25
movwf	(??_Eco_Test+0+0)&0ffh,c,f
	movlw	93
u5187:
	decfsz	wreg,f
	goto	u5187
	decfsz	(??_Eco_Test+0+0)&0ffh,c,f
	goto	u5187

	goto	l5653
	line	61
	
l75:
	line	55
	
l5653:
	tstfsz	((c:Eco_Test@n)),c
	goto	u3051
	goto	u3050
u3051:
	goto	l5657
u3050:
	
l5655:
	movlw	0D0h
	subwf	((c:Eco_Test@ts)),c,w
	movlw	07h
	subwfb	((c:Eco_Test@ts+1)),c,w
	btfss	status,0
	goto	u3061
	goto	u3060
u3061:
	goto	l5647
u3060:
	goto	l5657
	
l78:
	goto	l5657
	
l79:
	line	64
	
l5657:
;communication.c: 61: }
;communication.c: 64: if(n!=0)
	movf	((c:Eco_Test@n)),c,w
	btfsc	status,2
	goto	u3071
	goto	u3070
u3071:
	goto	l5675
u3070:
	line	67
	
l5659:
;communication.c: 65: {
;communication.c: 67: RC0 = 1;
	bsf	c:(31760/8),(31760)&7	;volatile
	line	68
	
l5661:
;communication.c: 68: unsigned char data=USARTReadData();
	call	_USARTReadData	;wreg free
	movwf	((c:Eco_Test@data)),c
	line	69
	
l5663:
;communication.c: 69: RC0 = 0;
	bcf	c:(31760/8),(31760)&7	;volatile
	line	70
	
l5665:
;communication.c: 70: if(data == Source_ID)
	movf	((c:_Source_ID)),c,w
	cpfseq	((c:Eco_Test@data)),c
	goto	u3081
	goto	u3080
u3081:
	goto	l5675
u3080:
	line	72
	
l5667:
;communication.c: 71: {
;communication.c: 72: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	73
	
l5669:
;communication.c: 73: LCDWriteString("ECO SUCCESSFUL ");
		movlw	high(STR_3)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_3)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	74
	
l5671:
;communication.c: 74: return 0x01;
	movlw	(01h)&0ffh
	goto	l82
	
l5673:
	goto	l82
	line	75
	
l81:
	goto	l5675
	line	76
	
l80:
	goto	l5675
	line	77
	
l74:
	line	79
	
l5675:
;communication.c: 75: }
;communication.c: 76: }
;communication.c: 77: }
;communication.c: 79: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	80
	
l5677:
;communication.c: 80: LCDWriteString("ECO FAIL");
		movlw	high(STR_4)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_4)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	81
	
l5679:
;communication.c: 81: return 0x00;
	movlw	(0)&0ffh
	goto	l82
	
l5681:
	line	82
	
l82:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_Eco_Test
	__end_of_Eco_Test:
	signat	_Eco_Test,89
	global	_USARTWriteChar

;; *************** function _USARTWriteChar *****************
;; Defined at:
;;		line 52 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\usart_pic18.c"
;; Parameters:    Size  Location     Type
;;  ch              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch              1   19[COMRAM] unsigned char 
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
;;		_Eco_Test
;;		_Eco_Replay
;;		_Send_Packet
;;		_Receive_Packet
;;		_USARTWriteString
;;		_USARTWriteLine
;;		_USARTWriteInt
;;		_USARTGotoNewLine
;; This function uses a non-reentrant model
;;
psect	text21,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\usart_pic18.c"
	line	52
global __ptext21
__ptext21:
psect	text21
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\usart_pic18.c"
	line	52
	global	__size_of_USARTWriteChar
	__size_of_USARTWriteChar	equ	__end_of_USARTWriteChar-_USARTWriteChar
	
_USARTWriteChar:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
;USARTWriteChar@ch stored from wreg
	movwf	((c:USARTWriteChar@ch)),c
	line	54
	
l5611:
;usart_pic18.c: 54: while(!PIR1bits.TXIF);
	goto	l956
	
l957:
	
l956:
	btfss	((c:3998)),c,4	;volatile
	goto	u3021
	goto	u3020
u3021:
	goto	l956
u3020:
	goto	l5613
	
l958:
	line	56
	
l5613:
;usart_pic18.c: 56: TXREG=ch;
	movff	(c:USARTWriteChar@ch),(c:4013)	;volatile
	line	57
	
l959:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_USARTWriteChar
	__end_of_USARTWriteChar:
	signat	_USARTWriteChar,4216
	global	_LCDWriteString

;; *************** function _LCDWriteString *****************
;; Defined at:
;;		line 210 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\lcd_hd44780_pic18.c"
;; Parameters:    Size  Location     Type
;;  msg             2   28[COMRAM] PTR const unsigned char 
;;		 -> STR_76(19), STR_75(2), STR_74(2), STR_73(7), 
;;		 -> STR_72(6), STR_71(17), STR_70(17), STR_69(16), 
;;		 -> STR_68(18), STR_67(16), STR_66(18), STR_65(17), 
;;		 -> STR_64(2), STR_63(2), STR_62(21), STR_61(21), 
;;		 -> STR_60(17), STR_59(20), STR_58(13), STR_57(12), 
;;		 -> STR_56(13), STR_55(14), STR_54(18), STR_53(2), 
;;		 -> STR_52(2), STR_51(17), STR_50(14), STR_49(17), 
;;		 -> STR_48(14), STR_47(16), STR_46(18), STR_45(11), 
;;		 -> STR_44(16), STR_43(14), STR_42(16), STR_41(18), 
;;		 -> STR_40(11), STR_39(16), STR_38(17), STR_37(14), 
;;		 -> STR_36(17), STR_35(14), STR_34(17), STR_33(17), 
;;		 -> STR_32(16), STR_31(15), STR_30(15), STR_29(15), 
;;		 -> STR_28(16), STR_27(15), STR_26(13), STR_25(11), 
;;		 -> STR_24(16), STR_23(14), STR_22(15), STR_21(12), 
;;		 -> STR_20(2), STR_19(2), STR_18(18), STR_17(17), 
;;		 -> STR_16(15), STR_15(18), STR_14(23), STR_13(17), 
;;		 -> STR_12(20), STR_11(11), STR_10(17), STR_9(12), 
;;		 -> STR_8(16), STR_7(18), STR_6(14), STR_5(17), 
;;		 -> STR_4(9), STR_3(16), STR_2(9), STR_1(10), 
;; Auto vars:     Size  Location     Type
;;  cc              1   31[COMRAM] char 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_LCDByte
;; This function is called by:
;;		_Eco_Test
;;		_Eco_Replay
;;		_Send_Packet
;;		_Receive_Packet
;;		_main
;;		_getting_data
;;		_rtc_setting
;;		_data_to_center
;;		_local_display
;;		_tx_packet
;;		_reset_unit
;; This function uses a non-reentrant model
;;
psect	text22,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\lcd_hd44780_pic18.c"
	line	210
global __ptext22
__ptext22:
psect	text22
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\lcd_hd44780_pic18.c"
	line	210
	global	__size_of_LCDWriteString
	__size_of_LCDWriteString	equ	__end_of_LCDWriteString-_LCDWriteString
	
_LCDWriteString:
;incstack = 0
	opt	stack 23
	dw	0FFFFh
	line	240
	
l5587:
;lcd_hd44780_pic18.c: 240: while(*msg!='\0')
	goto	l5609
	
l204:
	line	243
	
l5589:
;lcd_hd44780_pic18.c: 241: {
;lcd_hd44780_pic18.c: 243: if(*msg=='%')
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
	goto	u2981
	goto	u2980
u2981:
	goto	l5605
u2980:
	line	245
	
l5591:
;lcd_hd44780_pic18.c: 244: {
;lcd_hd44780_pic18.c: 245: msg++;
	infsnz	((c:LCDWriteString@msg)),c
	incf	((c:LCDWriteString@msg+1)),c
	line	246
	
l5593:
;lcd_hd44780_pic18.c: 246: int8_t cc=*msg-'0';
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
	line	248
	
l5595:
;lcd_hd44780_pic18.c: 248: if(cc>=0 && cc<=7)
	btfsc	((c:LCDWriteString@cc)),c,7
	goto	u2991
	goto	u2990
u2991:
	goto	l5601
u2990:
	
l5597:
	movf	((c:LCDWriteString@cc)),c,w
	xorlw	80h
	movwf	(??_LCDWriteString+0+0)&0ffh,c
	movlw	(08h)&0ffh
	xorlw	80h
	subwf	(??_LCDWriteString+0+0),c,w
	btfsc	status,0
	goto	u3001
	goto	u3000
u3001:
	goto	l5601
u3000:
	line	250
	
l5599:
;lcd_hd44780_pic18.c: 249: {
;lcd_hd44780_pic18.c: 250: (LCDByte(cc,1));
	movlw	low(01h)
	movwf	((c:LCDByte@isdata)),c
	movf	((c:LCDWriteString@cc)),c,w
	
	call	_LCDByte
	line	251
;lcd_hd44780_pic18.c: 251: }
	goto	l5607
	line	252
	
l206:
	line	254
	
l5601:
;lcd_hd44780_pic18.c: 252: else
;lcd_hd44780_pic18.c: 253: {
;lcd_hd44780_pic18.c: 254: (LCDByte('%',1));
	movlw	low(01h)
	movwf	((c:LCDByte@isdata)),c
	movlw	(025h)&0ffh
	
	call	_LCDByte
	line	255
	
l5603:
;lcd_hd44780_pic18.c: 255: (LCDByte(*msg,1));
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
	goto	l5607
	line	256
	
l207:
	line	257
;lcd_hd44780_pic18.c: 256: }
;lcd_hd44780_pic18.c: 257: }
	goto	l5607
	line	258
	
l205:
	line	260
	
l5605:
;lcd_hd44780_pic18.c: 258: else
;lcd_hd44780_pic18.c: 259: {
;lcd_hd44780_pic18.c: 260: (LCDByte(*msg,1));
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
	goto	l5607
	line	261
	
l208:
	line	262
	
l5607:
;lcd_hd44780_pic18.c: 261: }
;lcd_hd44780_pic18.c: 262: msg++;
	infsnz	((c:LCDWriteString@msg)),c
	incf	((c:LCDWriteString@msg+1)),c
	goto	l5609
	line	263
	
l203:
	line	240
	
l5609:
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
	goto	u3011
	goto	u3010
u3011:
	goto	l5589
u3010:
	goto	l210
	
l209:
	line	264
	
l210:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_LCDWriteString
	__end_of_LCDWriteString:
	signat	_LCDWriteString,4216
	global	_Check_Busy_Line

;; *************** function _Check_Busy_Line *****************
;; Defined at:
;;		line 12 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\communication.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ms              2   21[COMRAM] unsigned int 
;;  n               1   23[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_USARTDataAvailable
;;		_USARTFlushBuffer
;; This function is called by:
;;		_Eco_Test
;; This function uses a non-reentrant model
;;
psect	text23,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\communication.c"
	line	12
global __ptext23
__ptext23:
psect	text23
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\communication.c"
	line	12
	global	__size_of_Check_Busy_Line
	__size_of_Check_Busy_Line	equ	__end_of_Check_Busy_Line-_Check_Busy_Line
	
_Check_Busy_Line:
;incstack = 0
	opt	stack 22
	dw	0FFFFh
	line	14
	
l5563:
;communication.c: 14: USARTFlushBuffer();
	call	_USARTFlushBuffer	;wreg free
	line	15
	
l5565:
;communication.c: 15: unsigned int ms = 0;
	movlw	high(0)
	movwf	((c:Check_Busy_Line@ms+1)),c
	movlw	low(0)
	movwf	((c:Check_Busy_Line@ms)),c
	line	16
	
l5567:
;communication.c: 16: uint8_t n = 0;
	movlw	low(0)
	movwf	((c:Check_Busy_Line@n)),c
	line	18
;communication.c: 18: while(n == 0 && ms < 2500)
	goto	l5575
	
l66:
	line	21
	
l5569:
;communication.c: 19: {
;communication.c: 21: n = USARTDataAvailable();
	call	_USARTDataAvailable	;wreg free
	movwf	((c:Check_Busy_Line@n)),c
	line	22
	
l5571:
;communication.c: 22: ms++;
	infsnz	((c:Check_Busy_Line@ms)),c
	incf	((c:Check_Busy_Line@ms+1)),c
	line	23
	
l5573:
;communication.c: 23: _delay((unsigned long)((1)*(100000000/4000.0)));
	movlw	25
movwf	(??_Check_Busy_Line+0+0)&0ffh,c,f
	movlw	93
u5197:
	decfsz	wreg,f
	goto	u5197
	decfsz	(??_Check_Busy_Line+0+0)&0ffh,c,f
	goto	u5197

	goto	l5575
	line	24
	
l65:
	line	18
	
l5575:
	tstfsz	((c:Check_Busy_Line@n)),c
	goto	u2951
	goto	u2950
u2951:
	goto	l69
u2950:
	
l5577:
	movlw	0C4h
	subwf	((c:Check_Busy_Line@ms)),c,w
	movlw	09h
	subwfb	((c:Check_Busy_Line@ms+1)),c,w
	btfss	status,0
	goto	u2961
	goto	u2960
u2961:
	goto	l5569
u2960:
	goto	l69
	
l68:
	
l69:
	line	25
;communication.c: 24: }
;communication.c: 25: if(n == 0)
	tstfsz	((c:Check_Busy_Line@n)),c
	goto	u2971
	goto	u2970
u2971:
	goto	l5583
u2970:
	line	26
	
l5579:
;communication.c: 26: return 0x01;
	movlw	(01h)&0ffh
	goto	l71
	
l5581:
	goto	l71
	
l70:
	line	27
	
l5583:
;communication.c: 27: return 0x00;
	movlw	(0)&0ffh
	goto	l71
	
l5585:
	line	28
	
l71:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_Check_Busy_Line
	__end_of_Check_Busy_Line:
	signat	_Check_Busy_Line,89
	global	_USARTFlushBuffer

;; *************** function _USARTFlushBuffer *****************
;; Defined at:
;;		line 192 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\usart_pic18.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_USARTDataAvailable
;;		_USARTReadData
;; This function is called by:
;;		_Check_Busy_Line
;;		_Eco_Test
;;		_Eco_Replay
;;		_Send_Packet
;;		_Receive_Packet
;; This function uses a non-reentrant model
;;
psect	text24,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\usart_pic18.c"
	line	192
global __ptext24
__ptext24:
psect	text24
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\usart_pic18.c"
	line	192
	global	__size_of_USARTFlushBuffer
	__size_of_USARTFlushBuffer	equ	__end_of_USARTFlushBuffer-_USARTFlushBuffer
	
_USARTFlushBuffer:
;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	194
	
l5529:
;usart_pic18.c: 194: while(USARTDataAvailable()>0)
	goto	l5533
	
l1026:
	line	196
	
l5531:
;usart_pic18.c: 195: {
;usart_pic18.c: 196: USARTReadData();
	call	_USARTReadData	;wreg free
	goto	l5533
	line	197
	
l1025:
	line	194
	
l5533:
	call	_USARTDataAvailable	;wreg free
	iorlw	0
	btfss	status,2
	goto	u2931
	goto	u2930
u2931:
	goto	l5531
u2930:
	goto	l1028
	
l1027:
	line	198
	
l1028:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_USARTFlushBuffer
	__end_of_USARTFlushBuffer:
	signat	_USARTFlushBuffer,88
	global	_USARTReadData

;; *************** function _USARTReadData *****************
;; Defined at:
;;		line 100 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\usart_pic18.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data            1   19[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
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
;;		_Eco_Test
;;		_Eco_Replay
;;		_Send_Packet
;;		_Receive_Packet
;;		_USARTFlushBuffer
;;		_USARTReadBuffer
;; This function uses a non-reentrant model
;;
psect	text25,class=CODE,space=0,reloc=2
	line	100
global __ptext25
__ptext25:
psect	text25
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\usart_pic18.c"
	line	100
	global	__size_of_USARTReadData
	__size_of_USARTReadData	equ	__end_of_USARTReadData-_USARTReadData
	
_USARTReadData:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
	line	105
	
l5465:
;usart_pic18.c: 102: char data;
;usart_pic18.c: 105: if(UQFront==-1)
	incf	((c:_UQFront)),c,w	;volatile

	btfss	status,2
	goto	u2901
	goto	u2900
u2901:
	goto	l5471
u2900:
	line	106
	
l5467:
;usart_pic18.c: 106: return 0;
	movlw	(0)&0ffh
	goto	l984
	
l5469:
	goto	l984
	
l983:
	line	108
	
l5471:
;usart_pic18.c: 108: data=URBuff[UQFront];
	movf	((c:_UQFront)),c,w	;volatile
	mullw	01h
	movlb	1	; () banked
	movlw	low(_URBuff)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_URBuff)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:USARTReadData@data)),c
	line	110
	
l5473:; BSR set to: 1

;usart_pic18.c: 110: if(UQFront==UQEnd)
	movf	((c:_UQEnd)),c,w	;volatile
	cpfseq	((c:_UQFront)),c	;volatile
	goto	u2911
	goto	u2910
u2911:
	goto	l5477
u2910:
	line	114
	
l5475:; BSR set to: 1

;usart_pic18.c: 111: {
;usart_pic18.c: 114: UQFront=UQEnd=-1;
	setf	((c:_UQEnd)),c	;volatile
	setf	((c:_UQFront)),c	;volatile
	line	115
;usart_pic18.c: 115: }
	goto	l986
	line	116
	
l985:; BSR set to: 1

	line	118
	
l5477:; BSR set to: 1

;usart_pic18.c: 116: else
;usart_pic18.c: 117: {
;usart_pic18.c: 118: UQFront++;
	incf	((c:_UQFront)),c	;volatile
	line	120
;usart_pic18.c: 120: if(UQFront==128)
	goto	l986
	line	121
	
l5479:; BSR set to: 1

;usart_pic18.c: 121: UQFront=0;
	movlw	low(0)
	movwf	((c:_UQFront)),c	;volatile
	goto	l986
	
l987:; BSR set to: 1

	line	122
	
l986:; BSR set to: 1

	line	124
;usart_pic18.c: 122: }
;usart_pic18.c: 124: return data;
	movf	((c:USARTReadData@data)),c,w
	goto	l984
	
l5481:; BSR set to: 1

	line	125
	
l984:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_USARTReadData
	__end_of_USARTReadData:
	signat	_USARTReadData,89
	global	_USARTDataAvailable

;; *************** function _USARTDataAvailable *****************
;; Defined at:
;;		line 127 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\usart_pic18.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Check_Busy_Line
;;		_Eco_Test
;;		_Eco_Replay
;;		_Send_Packet
;;		_Receive_Packet
;;		_USARTFlushBuffer
;; This function uses a non-reentrant model
;;
psect	text26,class=CODE,space=0,reloc=2
	line	127
global __ptext26
__ptext26:
psect	text26
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\usart_pic18.c"
	line	127
	global	__size_of_USARTDataAvailable
	__size_of_USARTDataAvailable	equ	__end_of_USARTDataAvailable-_USARTDataAvailable
	
_USARTDataAvailable:
;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	129
	
l5439:
;usart_pic18.c: 129: if(UQFront==-1) return 0;
	incf	((c:_UQFront)),c,w	;volatile

	btfss	status,2
	goto	u2871
	goto	u2870
u2871:
	goto	l5445
u2870:
	
l5441:
	movlw	(0)&0ffh
	goto	l991
	
l5443:
	goto	l991
	
l990:
	line	130
	
l5445:
;usart_pic18.c: 130: if(UQFront<UQEnd)
	movf	((c:_UQFront)),c,w	;volatile
	xorlw	80h
	movwf	(??_USARTDataAvailable+0+0)&0ffh,c
	movf	((c:_UQEnd)),c,w	;volatile
	xorlw	80h
	subwf	(??_USARTDataAvailable+0+0),c,w
	btfsc	status,0
	goto	u2881
	goto	u2880
u2881:
	goto	l5453
u2880:
	line	131
	
l5447:
;usart_pic18.c: 131: return(UQEnd-UQFront+1);
	movf	((c:_UQFront)),c,w	;volatile
	sublw	0
	addwf	((c:_UQEnd)),c,w	;volatile
	movwf	(??_USARTDataAvailable+0+0)&0ffh,c
	incf	((??_USARTDataAvailable+0+0)),c,w
	goto	l991
	
l5449:
	goto	l991
	
l5451:
	goto	l991
	line	132
	
l992:
	
l5453:
;usart_pic18.c: 132: else if(UQFront>UQEnd)
	movf	((c:_UQEnd)),c,w	;volatile
	xorlw	80h
	movwf	(??_USARTDataAvailable+0+0)&0ffh,c
	movf	((c:_UQFront)),c,w	;volatile
	xorlw	80h
	subwf	(??_USARTDataAvailable+0+0),c,w
	btfsc	status,0
	goto	u2891
	goto	u2890
u2891:
	goto	l5461
u2890:
	line	133
	
l5455:
;usart_pic18.c: 133: return (128-UQFront+UQEnd+1);
	movf	((c:_UQFront)),c,w	;volatile
	sublw	0
	addwf	((c:_UQEnd)),c,w	;volatile
	addlw	low(081h)
	goto	l991
	
l5457:
	goto	l991
	
l5459:
	goto	l991
	line	134
	
l994:
	line	135
	
l5461:
;usart_pic18.c: 134: else
;usart_pic18.c: 135: return 1;
	movlw	(01h)&0ffh
	goto	l991
	
l5463:
	goto	l991
	
l995:
	goto	l991
	
l993:
	line	136
	
l991:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_USARTDataAvailable
	__end_of_USARTDataAvailable:
	signat	_USARTDataAvailable,89
	global	_read_packet_from_page

;; *************** function _read_packet_from_page *****************
;; Defined at:
;;		line 145 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\myeeprom.c"
;; Parameters:    Size  Location     Type
;;  page_no         2   30[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  address         2   37[COMRAM] unsigned int 
;;  count           1   39[COMRAM] unsigned char 
;;  lsb             1   36[COMRAM] unsigned char 
;;  msb             1   35[COMRAM] unsigned char 
;;  data            1   34[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:        10       0       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_rom_byte_read
;; This function is called by:
;;		_data_to_center
;; This function uses a non-reentrant model
;;
psect	text27,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\myeeprom.c"
	line	145
global __ptext27
__ptext27:
psect	text27
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\myeeprom.c"
	line	145
	global	__size_of_read_packet_from_page
	__size_of_read_packet_from_page	equ	__end_of_read_packet_from_page-_read_packet_from_page
	
_read_packet_from_page:
;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	147
	
l6333:
;myeeprom.c: 147: unsigned char count = 0, data = 0;
	movlw	low(0)
	movwf	((c:read_packet_from_page@count)),c
	movlw	low(0)
	movwf	((c:read_packet_from_page@data)),c
	line	148
;myeeprom.c: 148: unsigned char msb = 0, lsb = 0;
	movlw	low(0)
	movwf	((c:read_packet_from_page@msb)),c
	movlw	low(0)
	movwf	((c:read_packet_from_page@lsb)),c
	line	149
;myeeprom.c: 149: unsigned int address = 0;
	movlw	high(0)
	movwf	((c:read_packet_from_page@address+1)),c
	movlw	low(0)
	movwf	((c:read_packet_from_page@address)),c
	line	151
	
l6335:
;myeeprom.c: 151: address = page_no * 128;
	movff	(c:read_packet_from_page@page_no),??_read_packet_from_page+0+0
	movff	(c:read_packet_from_page@page_no+1),??_read_packet_from_page+0+0+1
	movlw	07h
u3745:
	bcf	status,0
	rlcf	(??_read_packet_from_page+0+0),c
	rlcf	(??_read_packet_from_page+0+1),c
	decfsz	wreg
	goto	u3745
	movff	??_read_packet_from_page+0+0,(c:read_packet_from_page@address)
	movff	??_read_packet_from_page+0+1,(c:read_packet_from_page@address+1)
	line	154
	
l6337:
;myeeprom.c: 154: count = 0;
	movlw	low(0)
	movwf	((c:read_packet_from_page@count)),c
	goto	l6339
	line	155
;myeeprom.c: 155: while(1)
	
l324:
	line	157
	
l6339:
;myeeprom.c: 156: {
;myeeprom.c: 157: PACKET[count] = rom_byte_read(address);
	movf	((c:read_packet_from_page@count)),c,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:read_packet_from_page@address),(c:rom_byte_read@address)
	movff	(c:read_packet_from_page@address+1),(c:rom_byte_read@address+1)
	call	_rom_byte_read	;wreg free
	movwf	indf2,c

	line	158
	
l6341:
;myeeprom.c: 158: if(PACKET[count] == 0xEA)
	movf	((c:read_packet_from_page@count)),c,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	(0EAh)&0ffh
	cpfseq	indf2
	goto	u3751
	goto	u3750
u3751:
	goto	l6347
u3750:
	goto	l326
	line	160
	
l6343:; BSR set to: 0

;myeeprom.c: 159: {
;myeeprom.c: 160: return;
	goto	l326
	line	161
	
l6345:; BSR set to: 0

;myeeprom.c: 161: }
	goto	l6339
	line	162
	
l325:; BSR set to: 0

	line	164
	
l6347:; BSR set to: 0

;myeeprom.c: 162: else
;myeeprom.c: 163: {
;myeeprom.c: 164: address++;
	infsnz	((c:read_packet_from_page@address)),c
	incf	((c:read_packet_from_page@address+1)),c
	line	165
;myeeprom.c: 165: count++;
	incf	((c:read_packet_from_page@count)),c
	goto	l6339
	line	166
	
l327:; BSR set to: 0

	goto	l6339
	line	167
	
l328:; BSR set to: 0

	line	155
	goto	l6339
	
l329:; BSR set to: 0

	line	168
	
l326:; BSR set to: 0

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_read_packet_from_page
	__end_of_read_packet_from_page:
	signat	_read_packet_from_page,4216
	global	_rom_byte_read

;; *************** function _rom_byte_read *****************
;; Defined at:
;;		line 29 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\myeeprom.c"
;; Parameters:    Size  Location     Type
;;  address         2   22[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  data            1   29[COMRAM] unsigned char 
;;  lsb             1   28[COMRAM] unsigned char 
;;  msb             1   27[COMRAM] unsigned char 
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
;;      Temps:          3       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_IdleI2C
;;		_ReadI2C
;;		_WriteI2C
;; This function is called by:
;;		_read_packet_from_page
;; This function uses a non-reentrant model
;;
psect	text28,class=CODE,space=0,reloc=2
	line	29
global __ptext28
__ptext28:
psect	text28
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\myeeprom.c"
	line	29
	global	__size_of_rom_byte_read
	__size_of_rom_byte_read	equ	__end_of_rom_byte_read-_rom_byte_read
	
_rom_byte_read:; BSR set to: 0

;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	31
	
l5911:
;myeeprom.c: 31: unsigned char data = 0;
	movlw	low(0)
	movwf	((c:rom_byte_read@data)),c
	line	33
;myeeprom.c: 32: unsigned char msb, lsb;
;myeeprom.c: 33: msb = address >> 8;
	movff	(c:rom_byte_read@address+1),??_rom_byte_read+0+0
	movff	??_rom_byte_read+0+0,??_rom_byte_read+1+0
	clrf	(??_rom_byte_read+1+0+1)&0ffh,c
	movf	(??_rom_byte_read+1+0),c,w
	movwf	((c:rom_byte_read@msb)),c
	line	34
	
l5913:
;myeeprom.c: 34: lsb = address & 0x00FF;
	movff	(c:rom_byte_read@address),(c:rom_byte_read@lsb)
	line	36
	
l5915:
;myeeprom.c: 36: RE1 = 1;
	bsf	c:(31777/8),(31777)&7	;volatile
	line	37
	
l5917:
;myeeprom.c: 37: IdleI2C();
	call	_IdleI2C	;wreg free
	line	38
	
l5919:
;myeeprom.c: 38: SSPCON2bits.SEN=1;while(SSPCON2bits.SEN);
	bsf	((c:4037)),c,0	;volatile
	goto	l272
	
l273:
	
l272:
	btfsc	((c:4037)),c,0	;volatile
	goto	u3351
	goto	u3350
u3351:
	goto	l272
u3350:
	goto	l5921
	
l274:
	line	39
	
l5921:
;myeeprom.c: 39: WriteI2C(device & 0xFE);
	movf	((c:_device)),c,w
	andlw	low(0FEh)
	
	call	_WriteI2C
	line	40
;myeeprom.c: 40: IdleI2C();
	call	_IdleI2C	;wreg free
	line	41
;myeeprom.c: 41: WriteI2C(msb);
	movf	((c:rom_byte_read@msb)),c,w
	
	call	_WriteI2C
	line	42
;myeeprom.c: 42: IdleI2C();
	call	_IdleI2C	;wreg free
	line	43
;myeeprom.c: 43: WriteI2C(lsb);
	movf	((c:rom_byte_read@lsb)),c,w
	
	call	_WriteI2C
	line	44
;myeeprom.c: 44: IdleI2C();
	call	_IdleI2C	;wreg free
	line	46
	
l5923:
;myeeprom.c: 46: SSPCON2bits.RSEN=1;while(SSPCON2bits.RSEN);
	bsf	((c:4037)),c,1	;volatile
	goto	l275
	
l276:
	
l275:
	btfsc	((c:4037)),c,1	;volatile
	goto	u3361
	goto	u3360
u3361:
	goto	l275
u3360:
	goto	l5925
	
l277:
	line	47
	
l5925:
;myeeprom.c: 47: WriteI2C(device | 0x01);
	movf	((c:_device)),c,w
	iorlw	low(01h)
	
	call	_WriteI2C
	line	48
;myeeprom.c: 48: IdleI2C();
	call	_IdleI2C	;wreg free
	line	49
;myeeprom.c: 49: data = ReadI2C();
	call	_ReadI2C	;wreg free
	movwf	((c:rom_byte_read@data)),c
	line	50
	
l5927:
;myeeprom.c: 50: SSPCON2bits.ACKDT=1;SSPCON2bits.ACKEN=1;while(SSPCON2bits.ACKEN);
	bsf	((c:4037)),c,5	;volatile
	
l5929:
	bsf	((c:4037)),c,4	;volatile
	goto	l278
	
l279:
	
l278:
	btfsc	((c:4037)),c,4	;volatile
	goto	u3371
	goto	u3370
u3371:
	goto	l278
u3370:
	
l280:
	line	51
;myeeprom.c: 51: SSPCON2bits.PEN=1;while(SSPCON2bits.PEN);
	bsf	((c:4037)),c,2	;volatile
	goto	l281
	
l282:
	
l281:
	btfsc	((c:4037)),c,2	;volatile
	goto	u3381
	goto	u3380
u3381:
	goto	l281
u3380:
	
l283:
	line	52
;myeeprom.c: 52: RE1 = 0;
	bcf	c:(31777/8),(31777)&7	;volatile
	line	53
	
l5931:
;myeeprom.c: 53: return data;
	movf	((c:rom_byte_read@data)),c,w
	goto	l284
	
l5933:
	line	54
	
l284:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_rom_byte_read
	__end_of_rom_byte_read:
	signat	_rom_byte_read,4217
	global	_clear_rom

;; *************** function _clear_rom *****************
;; Defined at:
;;		line 251 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\myeeprom.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  page            2   23[COMRAM] int 
;;  word            1   25[COMRAM] unsigned char 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_IdleI2C
;;		_WriteI2C
;; This function is called by:
;;		_data_to_center
;;		_reset_unit
;; This function uses a non-reentrant model
;;
psect	text29,class=CODE,space=0,reloc=2
	line	251
global __ptext29
__ptext29:
psect	text29
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\myeeprom.c"
	line	251
	global	__size_of_clear_rom
	__size_of_clear_rom	equ	__end_of_clear_rom-_clear_rom
	
_clear_rom:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
	line	256
	
l6349:
;myeeprom.c: 253: char word;
;myeeprom.c: 254: int page;
;myeeprom.c: 256: IdleI2C();
	call	_IdleI2C	;wreg free
	line	257
	
l6351:
;myeeprom.c: 257: SSPCON2bits.SEN=1;while(SSPCON2bits.SEN);
	bsf	((c:4037)),c,0	;volatile
	goto	l332
	
l333:
	
l332:
	btfsc	((c:4037)),c,0	;volatile
	goto	u3761
	goto	u3760
u3761:
	goto	l332
u3760:
	goto	l6353
	
l334:
	line	258
	
l6353:
;myeeprom.c: 258: WriteI2C(device & 0xFE);
	movf	((c:_device)),c,w
	andlw	low(0FEh)
	
	call	_WriteI2C
	line	259
;myeeprom.c: 259: IdleI2C();
	call	_IdleI2C	;wreg free
	line	260
;myeeprom.c: 260: WriteI2C(0x00);
	movlw	(0)&0ffh
	
	call	_WriteI2C
	line	261
;myeeprom.c: 261: IdleI2C();
	call	_IdleI2C	;wreg free
	line	262
;myeeprom.c: 262: WriteI2C(0x00);
	movlw	(0)&0ffh
	
	call	_WriteI2C
	line	263
;myeeprom.c: 263: IdleI2C();
	call	_IdleI2C	;wreg free
	line	265
	
l6355:
;myeeprom.c: 265: for(page = 0; page < 512; page++)
	movlw	high(0)
	movwf	((c:clear_rom@page+1)),c
	movlw	low(0)
	movwf	((c:clear_rom@page)),c
	
l6357:
	movf	((c:clear_rom@page+1)),c,w
	xorlw	80h
	addlw	-((02h)^80h)
	movlw	0
	btfsc	status,2
	subwf	((c:clear_rom@page)),c,w
	btfss	status,0
	goto	u3771
	goto	u3770
u3771:
	goto	l6361
u3770:
	goto	l336
	
l6359:
	goto	l336
	line	266
	
l335:
	line	267
	
l6361:
;myeeprom.c: 266: {
;myeeprom.c: 267: for(word = 0; word < 128; word++)
	movlw	low(0)
	movwf	((c:clear_rom@word)),c
	
l6363:
	movlw	(080h-1)
	cpfsgt	((c:clear_rom@word)),c
	goto	u3781
	goto	u3780
u3781:
	goto	l6367
u3780:
	goto	l6373
	
l6365:
	goto	l6373
	line	268
	
l337:
	line	269
	
l6367:
;myeeprom.c: 268: {
;myeeprom.c: 269: WriteI2C(0xFF);
	movlw	(0FFh)&0ffh
	
	call	_WriteI2C
	line	270
;myeeprom.c: 270: IdleI2C();
	call	_IdleI2C	;wreg free
	line	267
	
l6369:
	incf	((c:clear_rom@word)),c
	
l6371:
	movlw	(080h-1)
	cpfsgt	((c:clear_rom@word)),c
	goto	u3791
	goto	u3790
u3791:
	goto	l6367
u3790:
	goto	l6373
	
l338:
	line	265
	
l6373:
	infsnz	((c:clear_rom@page)),c
	incf	((c:clear_rom@page+1)),c
	
l6375:
	movf	((c:clear_rom@page+1)),c,w
	xorlw	80h
	addlw	-((02h)^80h)
	movlw	0
	btfsc	status,2
	subwf	((c:clear_rom@page)),c,w
	btfss	status,0
	goto	u3801
	goto	u3800
u3801:
	goto	l6361
u3800:
	
l336:
	line	274
;myeeprom.c: 271: }
;myeeprom.c: 272: }
;myeeprom.c: 274: SSPCON2bits.PEN=1;while(SSPCON2bits.PEN);
	bsf	((c:4037)),c,2	;volatile
	goto	l339
	
l340:
	
l339:
	btfsc	((c:4037)),c,2	;volatile
	goto	u3811
	goto	u3810
u3811:
	goto	l339
u3810:
	goto	l6377
	
l341:
	line	275
	
l6377:
;myeeprom.c: 275: _delay(100000);
	movlw	98
movwf	(??_clear_rom+0+0)&0ffh,c,f
	movlw	118
u5207:
	decfsz	wreg,f
	goto	u5207
	decfsz	(??_clear_rom+0+0)&0ffh,c,f
	goto	u5207
	nop2

	goto	l342
	line	276
	
l6379:
	line	277
;myeeprom.c: 276: return;
	
l342:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_clear_rom
	__end_of_clear_rom:
	signat	_clear_rom,88
	global	_Clear_Packet

;; *************** function _Clear_Packet *****************
;; Defined at:
;;		line 155 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\packet.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   19[COMRAM] unsigned char 
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
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Creat_RTC_Packet
;;		_getting_data
;;		_rtc_setting
;;		_data_to_center
;; This function uses a non-reentrant model
;;
psect	text30,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\packet.c"
	line	155
global __ptext30
__ptext30:
psect	text30
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\packet.c"
	line	155
	global	__size_of_Clear_Packet
	__size_of_Clear_Packet	equ	__end_of_Clear_Packet-_Clear_Packet
	
_Clear_Packet:
;incstack = 0
	opt	stack 26
	dw	0FFFFh
	line	157
	
l5989:
;packet.c: 157: char i = 0;
	movlw	low(0)
	movwf	((c:Clear_Packet@i)),c
	line	158
;packet.c: 158: for(i = 0; i < 128; i++)
	movlw	low(0)
	movwf	((c:Clear_Packet@i)),c
	
l5991:
	movlw	(080h-1)
	cpfsgt	((c:Clear_Packet@i)),c
	goto	u3401
	goto	u3400
u3401:
	goto	l5995
u3400:
	goto	l547
	
l5993:
	goto	l547
	line	159
	
l545:
	
l5995:
;packet.c: 159: PACKET[i] = 0xFF;
	movf	((c:Clear_Packet@i)),c,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0FFh)
	movwf	indf2
	line	158
	
l5997:; BSR set to: 0

	incf	((c:Clear_Packet@i)),c
	
l5999:; BSR set to: 0

	movlw	(080h-1)
	cpfsgt	((c:Clear_Packet@i)),c
	goto	u3411
	goto	u3410
u3411:
	goto	l5995
u3410:
	goto	l547
	
l546:; BSR set to: 0

	line	160
	
l547:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_Clear_Packet
	__end_of_Clear_Packet:
	signat	_Clear_Packet,88
	global	_beep

;; *************** function _beep *****************
;; Defined at:
;;		line 183 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\rtu.c"
;; Parameters:    Size  Location     Type
;;  del             2   22[COMRAM] unsigned int 
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
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_MyDelay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text31,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\rtu.c"
	line	183
global __ptext31
__ptext31:
psect	text31
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\rtu.c"
	line	183
	global	__size_of_beep
	__size_of_beep	equ	__end_of_beep-_beep
	
_beep:
;incstack = 0
	opt	stack 27
	dw	0FFFFh
	line	185
	
l6795:
;rtu.c: 185: RD7 = 1;
	bsf	c:(31775/8),(31775)&7	;volatile
	line	186
	
l6797:
;rtu.c: 186: MyDelay(del);
	movff	(c:beep@del),(c:MyDelay@ms)
	movff	(c:beep@del+1),(c:MyDelay@ms+1)
	call	_MyDelay	;wreg free
	line	187
	
l6799:
;rtu.c: 187: RD7 = 0;
	bcf	c:(31775/8),(31775)&7	;volatile
	line	188
	
l704:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_beep
	__end_of_beep:
	signat	_beep,4216
	global	_RTUInit

;; *************** function _RTUInit *****************
;; Defined at:
;;		line 15 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\rtu.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  adr             2   33[COMRAM] unsigned int 
;;  low             1   32[COMRAM] unsigned char 
;;  high            1   31[COMRAM] unsigned char 
;;  count           1    0        unsigned char 
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
;;      Locals:         4       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_LCDByte
;;		_LCDInit
;;		_MyDelay
;;		_OpenI2C
;;		_Read_b_eep
;;		_USARTInit
;;		_Write_b_eep
;;		_ds1307_get_date
;;		_ds1307_get_time
;;		_ds1307_init
;;		_ds1307_set_date_time
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text32,class=CODE,space=0,reloc=2
	line	15
global __ptext32
__ptext32:
psect	text32
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\rtu.c"
	line	15
	global	__size_of_RTUInit
	__size_of_RTUInit	equ	__end_of_RTUInit-_RTUInit
	
_RTUInit:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
	line	20
	
l6653:
;rtu.c: 17: unsigned char high, low, count;
;rtu.c: 18: unsigned int adr;
;rtu.c: 20: TRISA = 0x1F;
	movlw	low(01Fh)
	movwf	((c:3986)),c	;volatile
	line	21
;rtu.c: 21: TRISB = 0x01;
	movlw	low(01h)
	movwf	((c:3987)),c	;volatile
	line	22
;rtu.c: 22: TRISC = 0xA0;
	movlw	low(0A0h)
	movwf	((c:3988)),c	;volatile
	line	23
;rtu.c: 23: TRISD = 0x33;
	movlw	low(033h)
	movwf	((c:3989)),c	;volatile
	line	24
;rtu.c: 24: TRISE = 0x00;
	movlw	low(0)
	movwf	((c:3990)),c	;volatile
	line	26
	
l6655:
;rtu.c: 26: RE0 = 0;
	bcf	c:(31776/8),(31776)&7	;volatile
	line	27
	
l6657:
;rtu.c: 27: RE1 = 0;
	bcf	c:(31777/8),(31777)&7	;volatile
	line	28
	
l6659:
;rtu.c: 28: RE2 = 0;
	bcf	c:(31778/8),(31778)&7	;volatile
	line	29
	
l6661:
;rtu.c: 29: RC0 = 0;
	bcf	c:(31760/8),(31760)&7	;volatile
	line	30
	
l6663:
;rtu.c: 30: RC1 = 0;
	bcf	c:(31761/8),(31761)&7	;volatile
	line	32
;rtu.c: 32: PORTB = 0x00;
	movlw	low(0)
	movwf	((c:3969)),c	;volatile
	line	35
	
l6665:
;rtu.c: 35: RC2 = 0;
	bcf	c:(31762/8),(31762)&7	;volatile
	line	38
;rtu.c: 38: for(c = 0; c < 5; c++)
	movlw	low(0)
	movwf	((c:_c)),c
	
l6667:
	movlw	(05h-1)
	cpfsgt	((c:_c)),c
	goto	u4141
	goto	u4140
u4141:
	goto	l672
u4140:
	goto	l6679
	
l6669:
	goto	l6679
	line	39
	
l672:
	line	40
;rtu.c: 39: {
;rtu.c: 40: RE0 = 1;
	bsf	c:(31776/8),(31776)&7	;volatile
	line	41
	
l6671:
;rtu.c: 41: MyDelay(100);
	movlw	high(064h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(064h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	42
	
l6673:
;rtu.c: 42: RE0 = 0;
	bcf	c:(31776/8),(31776)&7	;volatile
	line	43
;rtu.c: 43: MyDelay(100);
	movlw	high(064h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(064h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	38
	
l6675:
	incf	((c:_c)),c
	
l6677:
	movlw	(05h-1)
	cpfsgt	((c:_c)),c
	goto	u4151
	goto	u4150
u4151:
	goto	l672
u4150:
	goto	l6679
	
l673:
	line	47
	
l6679:
;rtu.c: 44: }
;rtu.c: 47: Source_ID = 'z';
	movlw	low(07Ah)
	movwf	((c:_Source_ID)),c
	line	48
;rtu.c: 48: Destination_ID = 'x';
	movlw	low(078h)
	movwf	((c:_Destination_ID)),c
	line	49
;rtu.c: 49: Master_ID = 'm';
	movlw	low(06Dh)
	movwf	((c:_Master_ID)),c
	line	50
;rtu.c: 50: Destination_ID1 = 'x';
	movlw	low(078h)
	movwf	((c:_Destination_ID1)),c
	line	51
;rtu.c: 51: Destination_ID2 = 'y';
	movlw	low(079h)
	movwf	((c:_Destination_ID2)),c
	line	54
;rtu.c: 54: seconds = 0;
	movlw	low(0)
	movwf	((c:_seconds)),c
	line	55
;rtu.c: 55: sec_flag = 0;
	movlw	low(0)
	movwf	((c:_sec_flag)),c
	line	56
;rtu.c: 56: min_flag = 0;
	movlw	low(0)
	movwf	((c:_min_flag)),c
	line	59
;rtu.c: 59: device = 0xA0;
	movlw	low(0A0h)
	movwf	((c:_device)),c
	line	62
	
l6681:
;rtu.c: 62: high = Read_b_eep(0x00);
	movlw	high(0)
	movwf	((c:Read_b_eep@badd+1)),c
	movlw	low(0)
	movwf	((c:Read_b_eep@badd)),c
	call	_Read_b_eep	;wreg free
	movwf	((c:RTUInit@high)),c
	line	63
	
l6683:
;rtu.c: 63: _delay(50);
	movlw	10
u5217:
	nop
decfsz	wreg,f
	goto	u5217

	line	64
	
l6685:
;rtu.c: 64: low = Read_b_eep(0x01);
	movlw	high(01h)
	movwf	((c:Read_b_eep@badd+1)),c
	movlw	low(01h)
	movwf	((c:Read_b_eep@badd)),c
	call	_Read_b_eep	;wreg free
	movwf	((c:RTUInit@low)),c
	line	65
	
l6687:
;rtu.c: 65: _delay(50);
	movlw	10
u5227:
	nop
decfsz	wreg,f
	goto	u5227

	line	67
;rtu.c: 67: adr = 0x0000;
	movlw	high(0)
	movwf	((c:RTUInit@adr+1)),c
	movlw	low(0)
	movwf	((c:RTUInit@adr)),c
	line	68
	
l6689:
;rtu.c: 68: adr = adr + high;
	movf	((c:RTUInit@high)),c,w
	addwf	((c:RTUInit@adr)),c,w
	
	movwf	((c:RTUInit@adr)),c
	movlw	0
	addwfc	((c:RTUInit@adr+1)),c,w
	movwf	1+((c:RTUInit@adr)),c
	line	69
	
l6691:
;rtu.c: 69: adr = adr << 8;
	movf	((c:RTUInit@adr)),c,w
	movwf	((c:RTUInit@adr+1)),c
	clrf	((c:RTUInit@adr)),c
	line	70
;rtu.c: 70: adr = adr + low;
	movf	((c:RTUInit@low)),c,w
	addwf	((c:RTUInit@adr)),c,w
	
	movwf	((c:RTUInit@adr)),c
	movlw	0
	addwfc	((c:RTUInit@adr+1)),c,w
	movwf	1+((c:RTUInit@adr)),c
	line	71
;rtu.c: 71: if(adr > 4)
	movlw	05h
	subwf	((c:RTUInit@adr)),c,w
	movlw	0
	subwfb	((c:RTUInit@adr+1)),c,w
	btfss	status,0
	goto	u4161
	goto	u4160
u4161:
	goto	l6695
u4160:
	line	72
	
l6693:
;rtu.c: 72: adr = 0;
	movlw	high(0)
	movwf	((c:RTUInit@adr+1)),c
	movlw	low(0)
	movwf	((c:RTUInit@adr)),c
	goto	l6695
	
l674:
	line	73
	
l6695:
;rtu.c: 73: Write_Page1 = adr;
	movff	(c:RTUInit@adr),(c:_Write_Page1)
	movff	(c:RTUInit@adr+1),(c:_Write_Page1+1)
	line	76
	
l6697:
;rtu.c: 76: high = Read_b_eep(0x02);
	movlw	high(02h)
	movwf	((c:Read_b_eep@badd+1)),c
	movlw	low(02h)
	movwf	((c:Read_b_eep@badd)),c
	call	_Read_b_eep	;wreg free
	movwf	((c:RTUInit@high)),c
	line	77
	
l6699:
;rtu.c: 77: _delay(50);
	movlw	10
u5237:
	nop
decfsz	wreg,f
	goto	u5237

	line	78
	
l6701:
;rtu.c: 78: low = Read_b_eep(0x03);
	movlw	high(03h)
	movwf	((c:Read_b_eep@badd+1)),c
	movlw	low(03h)
	movwf	((c:Read_b_eep@badd)),c
	call	_Read_b_eep	;wreg free
	movwf	((c:RTUInit@low)),c
	line	79
	
l6703:
;rtu.c: 79: _delay(50);
	movlw	10
u5247:
	nop
decfsz	wreg,f
	goto	u5247

	line	81
;rtu.c: 81: adr = 0x0000;
	movlw	high(0)
	movwf	((c:RTUInit@adr+1)),c
	movlw	low(0)
	movwf	((c:RTUInit@adr)),c
	line	82
	
l6705:
;rtu.c: 82: adr = adr + high;
	movf	((c:RTUInit@high)),c,w
	addwf	((c:RTUInit@adr)),c,w
	
	movwf	((c:RTUInit@adr)),c
	movlw	0
	addwfc	((c:RTUInit@adr+1)),c,w
	movwf	1+((c:RTUInit@adr)),c
	line	83
	
l6707:
;rtu.c: 83: adr = adr << 8;
	movf	((c:RTUInit@adr)),c,w
	movwf	((c:RTUInit@adr+1)),c
	clrf	((c:RTUInit@adr)),c
	line	84
;rtu.c: 84: adr = adr + low;
	movf	((c:RTUInit@low)),c,w
	addwf	((c:RTUInit@adr)),c,w
	
	movwf	((c:RTUInit@adr)),c
	movlw	0
	addwfc	((c:RTUInit@adr+1)),c,w
	movwf	1+((c:RTUInit@adr)),c
	line	85
;rtu.c: 85: if(adr > 4)
	movlw	05h
	subwf	((c:RTUInit@adr)),c,w
	movlw	0
	subwfb	((c:RTUInit@adr+1)),c,w
	btfss	status,0
	goto	u4171
	goto	u4170
u4171:
	goto	l6711
u4170:
	line	86
	
l6709:
;rtu.c: 86: adr = 0;
	movlw	high(0)
	movwf	((c:RTUInit@adr+1)),c
	movlw	low(0)
	movwf	((c:RTUInit@adr)),c
	goto	l6711
	
l675:
	line	87
	
l6711:
;rtu.c: 87: Write_Page2 = adr;
	movff	(c:RTUInit@adr),(c:_Write_Page2)
	movff	(c:RTUInit@adr+1),(c:_Write_Page2+1)
	line	91
;rtu.c: 91: Read_Page1 = 0;
	movlw	high(0)
	movwf	((c:_Read_Page1+1)),c
	movlw	low(0)
	movwf	((c:_Read_Page1)),c
	line	92
;rtu.c: 92: Read_Page2 = 0;
	movlw	high(0)
	movwf	((c:_Read_Page2+1)),c
	movlw	low(0)
	movwf	((c:_Read_Page2)),c
	line	95
	
l6713:
;rtu.c: 95: OpenI2C(0b00001000,0b10000000);
	movlw	low(080h)
	movwf	((c:OpenI2C@slew)),c
	movlw	(08h)&0ffh
	
	call	_OpenI2C
	line	96
	
l6715:
;rtu.c: 96: SSPADD = 0x19;
	movlw	low(019h)
	movwf	((c:4040)),c	;volatile
	line	99
;rtu.c: 99: ds1307_init();
	call	_ds1307_init	;wreg free
	line	101
	
l6717:
;rtu.c: 101: if(Read_b_eep(0x04) != 0)
	movlw	high(04h)
	movwf	((c:Read_b_eep@badd+1)),c
	movlw	low(04h)
	movwf	((c:Read_b_eep@badd)),c
	call	_Read_b_eep	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u4181
	goto	u4180
u4181:
	goto	l6729
u4180:
	line	103
	
l6719:
;rtu.c: 102: {
;rtu.c: 103: day = 1;
	movlw	low(01h)
	movwf	((c:_day)),c
	line	104
;rtu.c: 104: ` month = 1;
	movlw	low(01h)
	movwf	((c:_month)),c
	line	105
;rtu.c: 105: year = 15;
	movlw	low(0Fh)
	movwf	((c:_year)),c
	line	106
;rtu.c: 106: dow = 2;
	movlw	low(02h)
	movwf	((c:_dow)),c
	line	107
;rtu.c: 107: hr = 1;
	movlw	low(01h)
	movwf	((c:_hr)),c
	line	108
;rtu.c: 108: min = 30;
	movlw	low(01Eh)
	movwf	((c:_min)),c
	line	109
;rtu.c: 109: sec = 25;
	movlw	low(019h)
	movwf	((c:_sec)),c
	line	110
	
l6721:
;rtu.c: 110: ds1307_set_date_time();
	call	_ds1307_set_date_time	;wreg free
	line	111
	
l6723:
;rtu.c: 111: MyDelay(100);
	movlw	high(064h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(064h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	112
	
l6725:
;rtu.c: 112: Write_b_eep(0x04,0);
	movlw	high(04h)
	movwf	((c:Write_b_eep@badd+1)),c
	movlw	low(04h)
	movwf	((c:Write_b_eep@badd)),c
	movlw	low(0)
	movwf	((c:Write_b_eep@bdat)),c
	call	_Write_b_eep	;wreg free
	line	113
	
l6727:
;rtu.c: 113: _delay(50);
	movlw	10
u5257:
	nop
decfsz	wreg,f
	goto	u5257

	goto	l6729
	line	114
	
l676:
	line	117
	
l6729:
;rtu.c: 114: }
;rtu.c: 117: ds1307_get_date();
	call	_ds1307_get_date	;wreg free
	line	118
	
l6731:
;rtu.c: 118: MyDelay(100);
	movlw	high(064h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(064h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	120
	
l6733:
;rtu.c: 120: ds1307_get_time();
	call	_ds1307_get_time	;wreg free
	line	121
	
l6735:
;rtu.c: 121: MyDelay(100);
	movlw	high(064h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(064h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	125
	
l6737:
;rtu.c: 125: RB1 = 1;
	bsf	c:(31753/8),(31753)&7	;volatile
	line	126
	
l6739:
;rtu.c: 126: LCDInit(0B00000000);
	movlw	(0)&0ffh
	
	call	_LCDInit
	line	128
	
l6741:
;rtu.c: 128: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	131
	
l6743:
;rtu.c: 131: USARTInit(9600);
	movlw	high(02580h)
	movwf	((c:USARTInit@baud_rate+1)),c
	movlw	low(02580h)
	movwf	((c:USARTInit@baud_rate)),c
	call	_USARTInit	;wreg free
	line	134
	
l6745:
;rtu.c: 134: INTEDG0 = 1;
	bsf	c:(32654/8),(32654)&7	;volatile
	line	135
	
l6747:
;rtu.c: 135: INT0IE = 1;
	bsf	c:(32660/8),(32660)&7	;volatile
	line	136
	
l6749:
;rtu.c: 136: (INTCONbits.GIE = 1);
	bsf	((c:4082)),c,7	;volatile
	line	137
	
l677:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_RTUInit
	__end_of_RTUInit:
	signat	_RTUInit,88
	global	_ds1307_set_date_time

;; *************** function _ds1307_set_date_time *****************
;; Defined at:
;;		line 45 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\myrtc.C"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_IdleI2C
;;		_WriteI2C
;;		_bin2bcd
;; This function is called by:
;;		_RTUInit
;;		_rtc_setting
;;		_reset_unit
;; This function uses a non-reentrant model
;;
psect	text33,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\myrtc.C"
	line	45
global __ptext33
__ptext33:
psect	text33
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\myrtc.C"
	line	45
	global	__size_of_ds1307_set_date_time
	__size_of_ds1307_set_date_time	equ	__end_of_ds1307_set_date_time-_ds1307_set_date_time
	
_ds1307_set_date_time:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
	line	47
	
l6417:
;myrtc.C: 47: sec &= 0x7F;
	bcf	(0+(7/8)+(c:_sec)),c,(7)&7
	line	48
	
l6419:
;myrtc.C: 48: hr &= 0x3F;
	movlw	(03Fh)&0ffh
	andwf	((c:_hr)),c
	line	50
	
l6421:
;myrtc.C: 50: sec = bin2bcd(sec);
	movf	((c:_sec)),c,w
	
	call	_bin2bcd
	movwf	((c:_sec)),c
	line	51
	
l6423:
;myrtc.C: 51: min = bin2bcd(min);
	movf	((c:_min)),c,w
	
	call	_bin2bcd
	movwf	((c:_min)),c
	line	52
	
l6425:
;myrtc.C: 52: hr = bin2bcd(hr);
	movf	((c:_hr)),c,w
	
	call	_bin2bcd
	movwf	((c:_hr)),c
	line	53
	
l6427:
;myrtc.C: 53: dow = bin2bcd(dow);
	movf	((c:_dow)),c,w
	
	call	_bin2bcd
	movwf	((c:_dow)),c
	line	54
	
l6429:
;myrtc.C: 54: day = bin2bcd(day);
	movf	((c:_day)),c,w
	
	call	_bin2bcd
	movwf	((c:_day)),c
	line	55
	
l6431:
;myrtc.C: 55: month = bin2bcd(month);
	movf	((c:_month)),c,w
	
	call	_bin2bcd
	movwf	((c:_month)),c
	line	56
	
l6433:
;myrtc.C: 56: year = bin2bcd(year);
	movf	((c:_year)),c,w
	
	call	_bin2bcd
	movwf	((c:_year)),c
	line	58
	
l6435:
;myrtc.C: 58: IdleI2C();
	call	_IdleI2C	;wreg free
	line	59
	
l6437:
;myrtc.C: 59: SSPCON2bits.SEN=1;while(SSPCON2bits.SEN);
	bsf	((c:4037)),c,0	;volatile
	goto	l397
	
l398:
	
l397:
	btfsc	((c:4037)),c,0	;volatile
	goto	u3891
	goto	u3890
u3891:
	goto	l397
u3890:
	goto	l6439
	
l399:
	line	60
	
l6439:
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
	
l6441:
;myrtc.C: 80: SSPCON2bits.PEN=1;while(SSPCON2bits.PEN);
	bsf	((c:4037)),c,2	;volatile
	goto	l400
	
l401:
	
l400:
	btfsc	((c:4037)),c,2	;volatile
	goto	u3901
	goto	u3900
u3901:
	goto	l400
u3900:
	goto	l403
	
l402:
	line	81
	
l403:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_ds1307_set_date_time
	__end_of_ds1307_set_date_time:
	signat	_ds1307_set_date_time,88
	global	_ds1307_init

;; *************** function _ds1307_init *****************
;; Defined at:
;;		line 4 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\myrtc.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  seconds         1   22[COMRAM] unsigned char 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_IdleI2C
;;		_ReadI2C
;;		_WriteI2C
;;		_bcd2bin
;;		_bin2bcd
;; This function is called by:
;;		_RTUInit
;; This function uses a non-reentrant model
;;
psect	text34,class=CODE,space=0,reloc=2
	line	4
global __ptext34
__ptext34:
psect	text34
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\myrtc.C"
	line	4
	global	__size_of_ds1307_init
	__size_of_ds1307_init	equ	__end_of_ds1307_init-_ds1307_init
	
_ds1307_init:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
	line	6
	
l6381:
;myrtc.C: 6: unsigned char seconds = 0;
	movlw	low(0)
	movwf	((c:ds1307_init@seconds)),c
	line	8
	
l6383:
;myrtc.C: 8: IdleI2C();
	call	_IdleI2C	;wreg free
	line	9
	
l6385:
;myrtc.C: 9: SSPCON2bits.SEN=1;while(SSPCON2bits.SEN);
	bsf	((c:4037)),c,0	;volatile
	goto	l373
	
l374:
	
l373:
	btfsc	((c:4037)),c,0	;volatile
	goto	u3821
	goto	u3820
u3821:
	goto	l373
u3820:
	goto	l6387
	
l375:
	line	10
	
l6387:
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
	
l6389:
;myrtc.C: 14: SSPCON2bits.RSEN=1;while(SSPCON2bits.RSEN);
	bsf	((c:4037)),c,1	;volatile
	goto	l376
	
l377:
	
l376:
	btfsc	((c:4037)),c,1	;volatile
	goto	u3831
	goto	u3830
u3831:
	goto	l376
u3830:
	goto	l6391
	
l378:
	line	15
	
l6391:
;myrtc.C: 15: WriteI2C(0xD1);
	movlw	(0D1h)&0ffh
	
	call	_WriteI2C
	line	16
;myrtc.C: 16: seconds = ReadI2C();
	call	_ReadI2C	;wreg free
	movwf	((c:ds1307_init@seconds)),c
	line	17
	
l6393:
;myrtc.C: 17: SSPCON2bits.ACKDT=1;SSPCON2bits.ACKEN=1;while(SSPCON2bits.ACKEN);
	bsf	((c:4037)),c,5	;volatile
	
l6395:
	bsf	((c:4037)),c,4	;volatile
	goto	l379
	
l380:
	
l379:
	btfsc	((c:4037)),c,4	;volatile
	goto	u3841
	goto	u3840
u3841:
	goto	l379
u3840:
	
l381:
	line	18
;myrtc.C: 18: SSPCON2bits.PEN=1;while(SSPCON2bits.PEN);
	bsf	((c:4037)),c,2	;volatile
	goto	l382
	
l383:
	
l382:
	btfsc	((c:4037)),c,2	;volatile
	goto	u3851
	goto	u3850
u3851:
	goto	l382
u3850:
	goto	l6397
	
l384:
	line	20
	
l6397:
;myrtc.C: 20: seconds = bcd2bin(seconds);
	movf	((c:ds1307_init@seconds)),c,w
	
	call	_bcd2bin
	movwf	((c:ds1307_init@seconds)),c
	line	21
	
l6399:
;myrtc.C: 21: seconds &= 0x7F;
	bcf	(0+(7/8)+(c:ds1307_init@seconds)),c,(7)&7
	line	22
	
l6401:
;myrtc.C: 22: seconds = bin2bcd(seconds);
	movf	((c:ds1307_init@seconds)),c,w
	
	call	_bin2bcd
	movwf	((c:ds1307_init@seconds)),c
	line	24
	
l6403:
;myrtc.C: 24: _delay(10);
	movlw	2
u5267:
	nop
decfsz	wreg,f
	goto	u5267

	line	26
	
l6405:
;myrtc.C: 26: IdleI2C();
	call	_IdleI2C	;wreg free
	line	27
	
l6407:
;myrtc.C: 27: SSPCON2bits.SEN=1;while(SSPCON2bits.SEN);
	bsf	((c:4037)),c,0	;volatile
	goto	l385
	
l386:
	
l385:
	btfsc	((c:4037)),c,0	;volatile
	goto	u3861
	goto	u3860
u3861:
	goto	l385
u3860:
	goto	l6409
	
l387:
	line	28
	
l6409:
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
	
l6411:
;myrtc.C: 34: SSPCON2bits.RSEN=1;while(SSPCON2bits.RSEN);
	bsf	((c:4037)),c,1	;volatile
	goto	l388
	
l389:
	
l388:
	btfsc	((c:4037)),c,1	;volatile
	goto	u3871
	goto	u3870
u3871:
	goto	l388
u3870:
	goto	l6413
	
l390:
	line	35
	
l6413:
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
	
l6415:
;myrtc.C: 41: SSPCON2bits.PEN=1;while(SSPCON2bits.PEN);
	bsf	((c:4037)),c,2	;volatile
	goto	l391
	
l392:
	
l391:
	btfsc	((c:4037)),c,2	;volatile
	goto	u3881
	goto	u3880
u3881:
	goto	l391
u3880:
	goto	l394
	
l393:
	line	43
	
l394:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_ds1307_init
	__end_of_ds1307_init:
	signat	_ds1307_init,88
	global	_bin2bcd

;; *************** function _bin2bcd *****************
;; Defined at:
;;		line 135 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\myrtc.C"
;; Parameters:    Size  Location     Type
;;  binary_value    1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  binary_value    1   19[COMRAM] unsigned char 
;;  temp            1   21[COMRAM] unsigned char 
;;  retval          1   20[COMRAM] unsigned char 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ds1307_init
;;		_ds1307_set_date_time
;; This function uses a non-reentrant model
;;
psect	text35,class=CODE,space=0,reloc=2
	line	135
global __ptext35
__ptext35:
psect	text35
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\myrtc.C"
	line	135
	global	__size_of_bin2bcd
	__size_of_bin2bcd	equ	__end_of_bin2bcd-_bin2bcd
	
_bin2bcd:
;incstack = 0
	opt	stack 26
	dw	0FFFFh
;bin2bcd@binary_value stored from wreg
	movwf	((c:bin2bcd@binary_value)),c
	line	140
	
l5945:
;myrtc.C: 137: unsigned char temp;
;myrtc.C: 138: unsigned char retval;
;myrtc.C: 140: temp = binary_value;
	movff	(c:bin2bcd@binary_value),(c:bin2bcd@temp)
	line	141
	
l5947:
;myrtc.C: 141: retval = 0;
	movlw	low(0)
	movwf	((c:bin2bcd@retval)),c
	goto	l5949
	line	143
;myrtc.C: 143: while(1)
	
l451:
	line	147
	
l5949:
;myrtc.C: 144: {
;myrtc.C: 147: if(temp >= 10)
	movlw	(0Ah-1)
	cpfsgt	((c:bin2bcd@temp)),c
	goto	u3391
	goto	u3390
u3391:
	goto	l5953
u3390:
	line	149
	
l5951:
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
	goto	l5949
	line	152
	
l452:
	line	154
	
l5953:
;myrtc.C: 152: else
;myrtc.C: 153: {
;myrtc.C: 154: retval += temp;
	movf	((c:bin2bcd@temp)),c,w
	addwf	((c:bin2bcd@retval)),c
	line	155
;myrtc.C: 155: break;
	goto	l5955
	line	156
	
l453:
	goto	l5949
	line	157
	
l455:
	line	143
	goto	l5949
	
l454:
	line	159
	
l5955:
;myrtc.C: 156: }
;myrtc.C: 157: }
;myrtc.C: 159: return(retval);
	movf	((c:bin2bcd@retval)),c,w
	goto	l456
	
l5957:
	line	160
	
l456:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_bin2bcd
	__end_of_bin2bcd:
	signat	_bin2bcd,4217
	global	_ds1307_get_time

;; *************** function _ds1307_get_time *****************
;; Defined at:
;;		line 111 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\myrtc.C"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_IdleI2C
;;		_ReadI2C
;;		_WriteI2C
;;		_bcd2bin
;; This function is called by:
;;		_RTUInit
;;		_main
;;		_rtc_setting
;;		_reset_unit
;; This function uses a non-reentrant model
;;
psect	text36,class=CODE,space=0,reloc=2
	line	111
global __ptext36
__ptext36:
psect	text36
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\myrtc.C"
	line	111
	global	__size_of_ds1307_get_time
	__size_of_ds1307_get_time	equ	__end_of_ds1307_get_time-_ds1307_get_time
	
_ds1307_get_time:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
	line	113
	
l6477:
;myrtc.C: 113: IdleI2C();
	call	_IdleI2C	;wreg free
	line	114
	
l6479:
;myrtc.C: 114: SSPCON2bits.SEN=1;while(SSPCON2bits.SEN);
	bsf	((c:4037)),c,0	;volatile
	goto	l430
	
l431:
	
l430:
	btfsc	((c:4037)),c,0	;volatile
	goto	u3981
	goto	u3980
u3981:
	goto	l430
u3980:
	goto	l6481
	
l432:
	line	115
	
l6481:
;myrtc.C: 115: WriteI2C(0xD0);
	movlw	(0D0h)&0ffh
	
	call	_WriteI2C
	line	116
;myrtc.C: 116: IdleI2C();
	call	_IdleI2C	;wreg free
	line	117
;myrtc.C: 117: WriteI2C(0x00);
	movlw	(0)&0ffh
	
	call	_WriteI2C
	line	118
;myrtc.C: 118: IdleI2C();
	call	_IdleI2C	;wreg free
	line	119
	
l6483:
;myrtc.C: 119: SSPCON2bits.RSEN=1;while(SSPCON2bits.RSEN);
	bsf	((c:4037)),c,1	;volatile
	goto	l433
	
l434:
	
l433:
	btfsc	((c:4037)),c,1	;volatile
	goto	u3991
	goto	u3990
u3991:
	goto	l433
u3990:
	goto	l6485
	
l435:
	line	120
	
l6485:
;myrtc.C: 120: WriteI2C(0xD1);
	movlw	(0D1h)&0ffh
	
	call	_WriteI2C
	line	121
;myrtc.C: 121: sec = ReadI2C();
	call	_ReadI2C	;wreg free
	movwf	((c:_sec)),c
	line	122
	
l6487:
;myrtc.C: 122: SSPCON2bits.ACKDT=0;SSPCON2bits.ACKEN=1;while(SSPCON2bits.ACKEN);
	bcf	((c:4037)),c,5	;volatile
	
l6489:
	bsf	((c:4037)),c,4	;volatile
	goto	l436
	
l437:
	
l436:
	btfsc	((c:4037)),c,4	;volatile
	goto	u4001
	goto	u4000
u4001:
	goto	l436
u4000:
	goto	l6491
	
l438:
	line	123
	
l6491:
;myrtc.C: 123: min = ReadI2C();
	call	_ReadI2C	;wreg free
	movwf	((c:_min)),c
	line	124
	
l6493:
;myrtc.C: 124: SSPCON2bits.ACKDT=0;SSPCON2bits.ACKEN=1;while(SSPCON2bits.ACKEN);
	bcf	((c:4037)),c,5	;volatile
	
l6495:
	bsf	((c:4037)),c,4	;volatile
	goto	l439
	
l440:
	
l439:
	btfsc	((c:4037)),c,4	;volatile
	goto	u4011
	goto	u4010
u4011:
	goto	l439
u4010:
	goto	l6497
	
l441:
	line	125
	
l6497:
;myrtc.C: 125: hr = ReadI2C();
	call	_ReadI2C	;wreg free
	movwf	((c:_hr)),c
	line	126
	
l6499:
;myrtc.C: 126: SSPCON2bits.ACKDT=1;SSPCON2bits.ACKEN=1;while(SSPCON2bits.ACKEN);
	bsf	((c:4037)),c,5	;volatile
	
l6501:
	bsf	((c:4037)),c,4	;volatile
	goto	l442
	
l443:
	
l442:
	btfsc	((c:4037)),c,4	;volatile
	goto	u4021
	goto	u4020
u4021:
	goto	l442
u4020:
	
l444:
	line	127
;myrtc.C: 127: SSPCON2bits.PEN=1;while(SSPCON2bits.PEN);
	bsf	((c:4037)),c,2	;volatile
	goto	l445
	
l446:
	
l445:
	btfsc	((c:4037)),c,2	;volatile
	goto	u4031
	goto	u4030
u4031:
	goto	l445
u4030:
	goto	l6503
	
l447:
	line	130
	
l6503:
;myrtc.C: 130: sec = bcd2bin(sec & 0x7f);
	movf	((c:_sec)),c,w
	andlw	low(07Fh)
	
	call	_bcd2bin
	movwf	((c:_sec)),c
	line	131
;myrtc.C: 131: min = bcd2bin(min & 0x7f);
	movf	((c:_min)),c,w
	andlw	low(07Fh)
	
	call	_bcd2bin
	movwf	((c:_min)),c
	line	132
;myrtc.C: 132: hr = bcd2bin(hr & 0x3f);
	movf	((c:_hr)),c,w
	andlw	low(03Fh)
	
	call	_bcd2bin
	movwf	((c:_hr)),c
	line	133
	
l448:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_ds1307_get_time
	__end_of_ds1307_get_time:
	signat	_ds1307_get_time,88
	global	_ds1307_get_date

;; *************** function _ds1307_get_date *****************
;; Defined at:
;;		line 83 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\myrtc.C"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_IdleI2C
;;		_ReadI2C
;;		_WriteI2C
;;		_bcd2bin
;; This function is called by:
;;		_RTUInit
;; This function uses a non-reentrant model
;;
psect	text37,class=CODE,space=0,reloc=2
	line	83
global __ptext37
__ptext37:
psect	text37
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\myrtc.C"
	line	83
	global	__size_of_ds1307_get_date
	__size_of_ds1307_get_date	equ	__end_of_ds1307_get_date-_ds1307_get_date
	
_ds1307_get_date:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
	line	85
	
l6443:
;myrtc.C: 85: IdleI2C();
	call	_IdleI2C	;wreg free
	line	86
	
l6445:
;myrtc.C: 86: SSPCON2bits.SEN=1;while(SSPCON2bits.SEN);
	bsf	((c:4037)),c,0	;volatile
	goto	l406
	
l407:
	
l406:
	btfsc	((c:4037)),c,0	;volatile
	goto	u3911
	goto	u3910
u3911:
	goto	l406
u3910:
	goto	l6447
	
l408:
	line	87
	
l6447:
;myrtc.C: 87: WriteI2C(0xD0);
	movlw	(0D0h)&0ffh
	
	call	_WriteI2C
	line	88
;myrtc.C: 88: IdleI2C();
	call	_IdleI2C	;wreg free
	line	89
;myrtc.C: 89: WriteI2C(0x03);
	movlw	(03h)&0ffh
	
	call	_WriteI2C
	line	90
;myrtc.C: 90: IdleI2C();
	call	_IdleI2C	;wreg free
	line	92
	
l6449:
;myrtc.C: 92: SSPCON2bits.RSEN=1;while(SSPCON2bits.RSEN);
	bsf	((c:4037)),c,1	;volatile
	goto	l409
	
l410:
	
l409:
	btfsc	((c:4037)),c,1	;volatile
	goto	u3921
	goto	u3920
u3921:
	goto	l409
u3920:
	goto	l6451
	
l411:
	line	93
	
l6451:
;myrtc.C: 93: WriteI2C(0xD1);
	movlw	(0D1h)&0ffh
	
	call	_WriteI2C
	line	94
;myrtc.C: 94: IdleI2C();
	call	_IdleI2C	;wreg free
	line	95
;myrtc.C: 95: dow = ReadI2C();
	call	_ReadI2C	;wreg free
	movwf	((c:_dow)),c
	line	96
	
l6453:
;myrtc.C: 96: SSPCON2bits.ACKDT=0;SSPCON2bits.ACKEN=1;while(SSPCON2bits.ACKEN);
	bcf	((c:4037)),c,5	;volatile
	
l6455:
	bsf	((c:4037)),c,4	;volatile
	goto	l412
	
l413:
	
l412:
	btfsc	((c:4037)),c,4	;volatile
	goto	u3931
	goto	u3930
u3931:
	goto	l412
u3930:
	goto	l6457
	
l414:
	line	97
	
l6457:
;myrtc.C: 97: day = ReadI2C();
	call	_ReadI2C	;wreg free
	movwf	((c:_day)),c
	line	98
	
l6459:
;myrtc.C: 98: SSPCON2bits.ACKDT=0;SSPCON2bits.ACKEN=1;while(SSPCON2bits.ACKEN);
	bcf	((c:4037)),c,5	;volatile
	
l6461:
	bsf	((c:4037)),c,4	;volatile
	goto	l415
	
l416:
	
l415:
	btfsc	((c:4037)),c,4	;volatile
	goto	u3941
	goto	u3940
u3941:
	goto	l415
u3940:
	goto	l6463
	
l417:
	line	99
	
l6463:
;myrtc.C: 99: month = ReadI2C();
	call	_ReadI2C	;wreg free
	movwf	((c:_month)),c
	line	100
	
l6465:
;myrtc.C: 100: SSPCON2bits.ACKDT=0;SSPCON2bits.ACKEN=1;while(SSPCON2bits.ACKEN);
	bcf	((c:4037)),c,5	;volatile
	
l6467:
	bsf	((c:4037)),c,4	;volatile
	goto	l418
	
l419:
	
l418:
	btfsc	((c:4037)),c,4	;volatile
	goto	u3951
	goto	u3950
u3951:
	goto	l418
u3950:
	goto	l6469
	
l420:
	line	101
	
l6469:
;myrtc.C: 101: year = ReadI2C();
	call	_ReadI2C	;wreg free
	movwf	((c:_year)),c
	line	102
	
l6471:
;myrtc.C: 102: SSPCON2bits.ACKDT=1;SSPCON2bits.ACKEN=1;while(SSPCON2bits.ACKEN);
	bsf	((c:4037)),c,5	;volatile
	
l6473:
	bsf	((c:4037)),c,4	;volatile
	goto	l421
	
l422:
	
l421:
	btfsc	((c:4037)),c,4	;volatile
	goto	u3961
	goto	u3960
u3961:
	goto	l421
u3960:
	
l423:
	line	103
;myrtc.C: 103: SSPCON2bits.PEN=1;while(SSPCON2bits.PEN);
	bsf	((c:4037)),c,2	;volatile
	goto	l424
	
l425:
	
l424:
	btfsc	((c:4037)),c,2	;volatile
	goto	u3971
	goto	u3970
u3971:
	goto	l424
u3970:
	goto	l6475
	
l426:
	line	105
	
l6475:
;myrtc.C: 105: dow = bcd2bin(dow & 0x7f);
	movf	((c:_dow)),c,w
	andlw	low(07Fh)
	
	call	_bcd2bin
	movwf	((c:_dow)),c
	line	106
;myrtc.C: 106: day = bcd2bin(day & 0x3f);
	movf	((c:_day)),c,w
	andlw	low(03Fh)
	
	call	_bcd2bin
	movwf	((c:_day)),c
	line	107
;myrtc.C: 107: month = bcd2bin(month & 0x1f);
	movf	((c:_month)),c,w
	andlw	low(01Fh)
	
	call	_bcd2bin
	movwf	((c:_month)),c
	line	108
;myrtc.C: 108: year = bcd2bin(year);
	movf	((c:_year)),c,w
	
	call	_bcd2bin
	movwf	((c:_year)),c
	line	109
	
l427:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_ds1307_get_date
	__end_of_ds1307_get_date:
	signat	_ds1307_get_date,88
	global	_bcd2bin

;; *************** function _bcd2bin *****************
;; Defined at:
;;		line 164 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\myrtc.C"
;; Parameters:    Size  Location     Type
;;  bcd_value       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  bcd_value       1   20[COMRAM] unsigned char 
;;  temp            1   21[COMRAM] unsigned char 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ds1307_init
;;		_ds1307_get_date
;;		_ds1307_get_time
;; This function uses a non-reentrant model
;;
psect	text38,class=CODE,space=0,reloc=2
	line	164
global __ptext38
__ptext38:
psect	text38
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\myrtc.C"
	line	164
	global	__size_of_bcd2bin
	__size_of_bcd2bin	equ	__end_of_bcd2bin-_bcd2bin
	
_bcd2bin:
;incstack = 0
	opt	stack 26
	dw	0FFFFh
;bcd2bin@bcd_value stored from wreg
	movwf	((c:bcd2bin@bcd_value)),c
	line	168
	
l5935:
;myrtc.C: 166: unsigned char temp;
;myrtc.C: 168: temp = bcd_value;
	movff	(c:bcd2bin@bcd_value),(c:bcd2bin@temp)
	line	170
	
l5937:
;myrtc.C: 170: temp >>= 1;
	bcf status,0
	rrcf	((c:bcd2bin@temp)),c

	line	172
	
l5939:
;myrtc.C: 172: temp &= 0x78;
	movlw	(078h)&0ffh
	andwf	((c:bcd2bin@temp)),c
	line	176
	
l5941:
;myrtc.C: 176: return(temp + (temp >> 2) + (bcd_value & 0x0f));
	movff	(c:bcd2bin@bcd_value),??_bcd2bin+0+0
	movlw	0Fh
	andwf	(??_bcd2bin+0+0),c
	rrncf	((c:bcd2bin@temp)),c,w
	rrncf	wreg
	andlw	(0ffh shr 2) & 0ffh
	addwf	(??_bcd2bin+0+0),c,w
	addwf	((c:bcd2bin@temp)),c,w
	goto	l459
	
l5943:
	line	177
	
l459:
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
;;  data_out        1   21[COMRAM] unsigned char 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_IdleI2C
;; This function is called by:
;;		_rom_byte_write
;;		_rom_byte_read
;;		_clear_rom
;;		_ds1307_init
;;		_ds1307_set_date_time
;;		_ds1307_get_date
;;		_ds1307_get_time
;;		_rom_page_write
;;		_rom_page_read
;; This function uses a non-reentrant model
;;
psect	text39,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\i2c\i2c_writ.c"
	line	12
global __ptext39
__ptext39:
psect	text39
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\i2c\i2c_writ.c"
	line	12
	global	__size_of_WriteI2C
	__size_of_WriteI2C	equ	__end_of_WriteI2C-_WriteI2C
	
_WriteI2C:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
;WriteI2C@data_out stored from wreg
	movwf	((c:WriteI2C@data_out)),c
	line	14
	
l5683:
	movff	(c:WriteI2C@data_out),(c:4041)	;volatile
	line	15
	
l5685:
	btfss	((c:4038)),c,7	;volatile
	goto	u3091
	goto	u3090
u3091:
	goto	l5691
u3090:
	goto	l1217
	line	16
	
l5687:
;	Return value of _WriteI2C is never used
	goto	l1217
	
l5689:
	goto	l1217
	line	17
	
l1216:
	line	19
	
l5691:
	movff	(c:4038),??_WriteI2C+0+0	;volatile
	movlw	0Fh
	andwf	(??_WriteI2C+0+0),c
	movf	(??_WriteI2C+0+0),c,w
	xorlw	08h

	btfsc	status,2
	goto	u3101
	goto	u3100
u3101:
	goto	l5703
u3100:
	
l5693:
	movff	(c:4038),??_WriteI2C+0+0	;volatile
	movlw	0Fh
	andwf	(??_WriteI2C+0+0),c
	movf	(??_WriteI2C+0+0),c,w
	xorlw	0Bh

	btfsc	status,2
	goto	u3111
	goto	u3110
u3111:
	goto	l5703
u3110:
	line	21
	
l5695:
	bsf	((c:4038)),c,4	;volatile
	line	22
	goto	l1220
	
l1221:
	
l1220:
	btfss	((c:3998)),c,3	;volatile
	goto	u3121
	goto	u3120
u3121:
	goto	l1220
u3120:
	
l1222:
	line	24
	btfsc	((c:4039)),c,2	;volatile
	goto	u3131
	goto	u3130
u3131:
	goto	l1217
u3130:
	
l5697:
	movf	((c:4039)),c,w	;volatile
	goto	l1217
	line	26
	
l5699:
;	Return value of _WriteI2C is never used
	goto	l1217
	line	27
	
l5701:
	goto	l1217
	line	28
	
l1223:
	line	30
;	Return value of _WriteI2C is never used
	goto	l1217
	line	31
	
l1224:
	line	32
	goto	l1217
	line	33
	
l1219:
	
l5703:
	movff	(c:4038),??_WriteI2C+0+0	;volatile
	movlw	0Fh
	andwf	(??_WriteI2C+0+0),c
	movf	(??_WriteI2C+0+0),c,w
	xorlw	08h

	btfsc	status,2
	goto	u3141
	goto	u3140
u3141:
	goto	l1229
u3140:
	
l5705:
	movff	(c:4038),??_WriteI2C+0+0	;volatile
	movlw	0Fh
	andwf	(??_WriteI2C+0+0),c
	movf	(??_WriteI2C+0+0),c,w
	xorlw	0Bh

	btfss	status,2
	goto	u3151
	goto	u3150
u3151:
	goto	l1217
u3150:
	goto	l1229
	
l1228:
	line	35
	goto	l1229
	
l1230:
	
l1229:
	btfsc	((c:4039)),c,0	;volatile
	goto	u3161
	goto	u3160
u3161:
	goto	l1229
u3160:
	goto	l5707
	
l1231:
	line	36
	
l5707:
	call	_IdleI2C	;wreg free
	line	37
	
l5709:
	movf	((c:4037)),c,w	;volatile
	goto	l1217
	line	38
	
l5711:
;	Return value of _WriteI2C is never used
	goto	l1217
	
l5713:
	goto	l1217
	line	39
	
l1232:
;	Return value of _WriteI2C is never used
	goto	l1217
	
l1233:
	goto	l1217
	line	40
	
l1226:
	goto	l1217
	line	42
	
l1225:
	goto	l1217
	
l1218:
	line	43
	
l1217:
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_rom_byte_write
;;		_rom_byte_read
;;		_clear_rom
;;		_ds1307_init
;;		_ds1307_set_date_time
;;		_ds1307_get_date
;;		_ds1307_get_time
;;		_WriteI2C
;;		_rom_page_write
;;		_rom_page_read
;; This function uses a non-reentrant model
;;
psect	text40,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\i2c\i2c_idle.c"
	line	24
global __ptext40
__ptext40:
psect	text40
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\i2c\i2c_idle.c"
	line	24
	global	__size_of_IdleI2C
	__size_of_IdleI2C	equ	__end_of_IdleI2C-_IdleI2C
	
_IdleI2C:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
	line	26
	
l5615:
	goto	l5617
	
l1169:
	line	27
	goto	l5617
	
l1168:
	line	26
	
l5617:
	movff	(c:4037),??_IdleI2C+0+0	;volatile
	movlw	01Fh
	andwf	(??_IdleI2C+0+0),c
	btfss	status,2
	goto	u3031
	goto	u3030
u3031:
	goto	l5617
u3030:
	
l5619:
	btfsc	((c:4039)),c,2	;volatile
	goto	u3041
	goto	u3040
u3041:
	goto	l5617
u3040:
	goto	l1171
	
l1170:
	line	28
	
l1171:
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_rom_byte_read
;;		_ds1307_init
;;		_ds1307_get_date
;;		_ds1307_get_time
;;		_rom_page_read
;; This function uses a non-reentrant model
;;
psect	text41,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\i2c\i2c_read.c"
	line	11
global __ptext41
__ptext41:
psect	text41
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\i2c\i2c_read.c"
	line	11
	global	__size_of_ReadI2C
	__size_of_ReadI2C	equ	__end_of_ReadI2C-_ReadI2C
	
_ReadI2C:
;incstack = 0
	opt	stack 26
	dw	0FFFFh
	line	13
	
l5715:
	movff	(c:4038),??_ReadI2C+0+0	;volatile
	movlw	0Fh
	andwf	(??_ReadI2C+0+0),c
	movf	(??_ReadI2C+0+0),c,w
	xorlw	08h

	btfsc	status,2
	goto	u3171
	goto	u3170
u3171:
	goto	l1195
u3170:
	
l5717:
	movff	(c:4038),??_ReadI2C+0+0	;volatile
	movlw	0Fh
	andwf	(??_ReadI2C+0+0),c
	movf	(??_ReadI2C+0+0),c,w
	xorlw	0Bh

	btfss	status,2
	goto	u3181
	goto	u3180
u3181:
	goto	l1196
u3180:
	
l1195:
	line	14
	bsf	((c:4037)),c,3	;volatile
	goto	l1196
	
l1193:
	line	15
	goto	l1196
	
l1197:
	
l1196:
	btfss	((c:4039)),c,0	;volatile
	goto	u3191
	goto	u3190
u3191:
	goto	l1196
u3190:
	goto	l5719
	
l1198:
	line	16
	
l5719:
	movf	((c:4041)),c,w	;volatile
	goto	l1199
	
l5721:
	line	17
	
l1199:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_ReadI2C
	__end_of_ReadI2C:
	signat	_ReadI2C,89
	global	_Write_b_eep

;; *************** function _Write_b_eep *****************
;; Defined at:
;;		line 30 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\EEP\write_B.c"
;; Parameters:    Size  Location     Type
;;  badd            2   19[COMRAM] unsigned int 
;;  bdat            1   21[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  GIE_BIT_VAL     1   22[COMRAM] unsigned char 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_RTUInit
;;		_getting_data
;;		_rtc_setting
;;		_data_to_center
;;		_reset_unit
;; This function uses a non-reentrant model
;;
psect	text42,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\EEP\write_B.c"
	line	30
global __ptext42
__ptext42:
psect	text42
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\EEP\write_B.c"
	line	30
	global	__size_of_Write_b_eep
	__size_of_Write_b_eep	equ	__end_of_Write_b_eep-_Write_b_eep
	
_Write_b_eep:
;incstack = 0
	opt	stack 27
	dw	0FFFFh
	line	32
	
l6565:
	movlw	low(0)
	movwf	((c:Write_b_eep@GIE_BIT_VAL)),c
	line	33
	
l6567:
	movff	(c:Write_b_eep@badd),(c:4009)	;volatile
	line	34
	
l6569:
	movff	(c:Write_b_eep@bdat),(c:4008)	;volatile
	line	35
	
l6571:
	bcf	((c:4006)),c,7	;volatile
	line	36
	
l6573:
	bcf	((c:4006)),c,6	;volatile
	line	37
	
l6575:
	bsf	((c:4006)),c,2	;volatile
	line	38
	
l6577:
	movlw	0
	btfsc	((c:4082)),c,7	;volatile
	movlw	1
	movwf	((c:Write_b_eep@GIE_BIT_VAL)),c
	line	39
	
l6579:
	bcf	((c:4082)),c,7	;volatile
	line	40
	
l6581:
	movlw	low(055h)
	movwf	((c:4007)),c	;volatile
	line	41
	
l6583:
	movlw	low(0AAh)
	movwf	((c:4007)),c	;volatile
	line	42
	
l6585:
	bsf	((c:4006)),c,1	;volatile
	line	43
	goto	l1158
	
l1159:
	
l1158:
	btfsc	((c:4006)),c,1	;volatile
	goto	u4081
	goto	u4080
u4081:
	goto	l1158
u4080:
	
l1160:
	line	44
	btfsc	(c:Write_b_eep@GIE_BIT_VAL),c,0
	bra	u4095
	bcf	((c:4082)),c,7	;volatile
	bra	u4096
	u4095:
	bsf	((c:4082)),c,7	;volatile
	u4096:

	line	45
	bcf	((c:4006)),c,2	;volatile
	line	46
	
l1161:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_Write_b_eep
	__end_of_Write_b_eep:
	signat	_Write_b_eep,8312
	global	_USARTInit

;; *************** function _USARTInit *****************
;; Defined at:
;;		line 6 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\usart_pic18.c"
;; Parameters:    Size  Location     Type
;;  baud_rate       2   19[COMRAM] unsigned int 
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
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_RTUInit
;; This function uses a non-reentrant model
;;
psect	text43,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\usart_pic18.c"
	line	6
global __ptext43
__ptext43:
psect	text43
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\usart_pic18.c"
	line	6
	global	__size_of_USARTInit
	__size_of_USARTInit	equ	__end_of_USARTInit-_USARTInit
	
_USARTInit:
;incstack = 0
	opt	stack 27
	dw	0FFFFh
	line	9
	
l6587:
;usart_pic18.c: 9: UQFront=UQEnd=-1;
	setf	((c:_UQEnd)),c	;volatile
	setf	((c:_UQFront)),c	;volatile
	line	13
;usart_pic18.c: 13: switch(baud_rate)
	goto	l6599
	line	15
;usart_pic18.c: 14: {
;usart_pic18.c: 15: case 9600:
	
l948:
	line	16
	
l6589:
;usart_pic18.c: 16: SPBRG=64;
	movlw	low(040h)
	movwf	((c:4015)),c	;volatile
	line	17
;usart_pic18.c: 17: break;
	goto	l949
	line	18
;usart_pic18.c: 18: case 19200:
	
l950:
	line	19
	
l6591:
;usart_pic18.c: 19: SPBRG=32;
	movlw	low(020h)
	movwf	((c:4015)),c	;volatile
	line	20
;usart_pic18.c: 20: break;
	goto	l949
	line	21
;usart_pic18.c: 21: case 38400:
	
l951:
	line	22
	
l6593:
;usart_pic18.c: 22: SPBRG=15;
	movlw	low(0Fh)
	movwf	((c:4015)),c	;volatile
	line	23
;usart_pic18.c: 23: break;
	goto	l949
	line	24
;usart_pic18.c: 24: case 57600:
	
l952:
	line	25
	
l6595:
;usart_pic18.c: 25: SPBRG=10;
	movlw	low(0Ah)
	movwf	((c:4015)),c	;volatile
	line	26
;usart_pic18.c: 26: break;
	goto	l949
	line	27
	
l6597:
;usart_pic18.c: 27: }
	goto	l949
	line	13
	
l947:
	
l6599:
	movff	(c:USARTInit@baud_rate),??_USARTInit+0+0
	movff	(c:USARTInit@baud_rate+1),??_USARTInit+0+0+1
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 4 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 37 to 225
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
;	Chosen strategy is simple_byte

	movf ??_USARTInit+0+1,c,w
	xorlw	37^0	; case 37
	skipnz
	goto	l7805
	xorlw	75^37	; case 75
	skipnz
	goto	l7807
	xorlw	150^75	; case 150
	skipnz
	goto	l7809
	xorlw	225^150	; case 225
	skipnz
	goto	l7811
	goto	l949
	
l7805:
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 128 to 128
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_USARTInit+0+0,c,w
	xorlw	128^0	; case 128
	skipnz
	goto	l6589
	goto	l949
	
l7807:
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_USARTInit+0+0,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	l6591
	goto	l949
	
l7809:
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_USARTInit+0+0,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	l6593
	goto	l949
	
l7811:
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_USARTInit+0+0,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	l6595
	goto	l949

	line	27
	
l949:
	line	30
;usart_pic18.c: 30: TRISCbits.RC6 = 0;
	bcf	((c:3988)),c,6	;volatile
	line	31
;usart_pic18.c: 31: TRISCbits.RC7 = 1;
	bsf	((c:3988)),c,7	;volatile
	line	34
;usart_pic18.c: 34: TXSTAbits.TX9=0;
	bcf	((c:4012)),c,6	;volatile
	line	35
;usart_pic18.c: 35: TXSTAbits.TXEN=1;
	bsf	((c:4012)),c,5	;volatile
	line	36
;usart_pic18.c: 36: TXSTAbits.SYNC=0;
	bcf	((c:4012)),c,4	;volatile
	line	37
;usart_pic18.c: 37: TXSTAbits.BRGH=1;
	bsf	((c:4012)),c,2	;volatile
	line	40
;usart_pic18.c: 40: RCSTAbits.SPEN=1;
	bsf	((c:4011)),c,7	;volatile
	line	41
;usart_pic18.c: 41: RCSTAbits.RX9=0;
	bcf	((c:4011)),c,6	;volatile
	line	42
;usart_pic18.c: 42: RCSTAbits.CREN=1;
	bsf	((c:4011)),c,4	;volatile
	line	43
;usart_pic18.c: 43: RCSTAbits.ADDEN=0;
	bcf	((c:4011)),c,3	;volatile
	line	46
;usart_pic18.c: 46: RCIE=1;
	bsf	c:(31981/8),(31981)&7	;volatile
	line	47
;usart_pic18.c: 47: PEIE=1;
	bsf	c:(32662/8),(32662)&7	;volatile
	line	49
;usart_pic18.c: 49: (INTCONbits.GIE = 1);
	bsf	((c:4082)),c,7	;volatile
	line	50
	
l953:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_USARTInit
	__end_of_USARTInit:
	signat	_USARTInit,4216
	global	_Read_b_eep

;; *************** function _Read_b_eep *****************
;; Defined at:
;;		line 23 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\EEP\read_B.c"
;; Parameters:    Size  Location     Type
;;  badd            2   19[COMRAM] unsigned int 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Creat_RTC_Packet
;;		_RTUInit
;; This function uses a non-reentrant model
;;
psect	text44,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\EEP\read_B.c"
	line	23
global __ptext44
__ptext44:
psect	text44
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\EEP\read_B.c"
	line	23
	global	__size_of_Read_b_eep
	__size_of_Read_b_eep	equ	__end_of_Read_b_eep-_Read_b_eep
	
_Read_b_eep:
;incstack = 0
	opt	stack 26
	dw	0FFFFh
	line	25
	
l6001:
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
	
l6003:
	movf	((c:4008)),c,w	;volatile
	goto	l1145
	
l6005:
	line	32
	
l1145:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_Read_b_eep
	__end_of_Read_b_eep:
	signat	_Read_b_eep,4217
	global	_OpenI2C

;; *************** function _OpenI2C *****************
;; Defined at:
;;		line 14 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\i2c\i2c_open.c"
;; Parameters:    Size  Location     Type
;;  sync_mode       1    wreg     unsigned char 
;;  slew            1   19[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  sync_mode       1   20[COMRAM] unsigned char 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_RTUInit
;; This function uses a non-reentrant model
;;
psect	text45,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\i2c\i2c_open.c"
	line	14
global __ptext45
__ptext45:
psect	text45
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\i2c\i2c_open.c"
	line	14
	global	__size_of_OpenI2C
	__size_of_OpenI2C	equ	__end_of_OpenI2C-_OpenI2C
	
_OpenI2C:
;incstack = 0
	opt	stack 27
	dw	0FFFFh
;OpenI2C@sync_mode stored from wreg
	movwf	((c:OpenI2C@sync_mode)),c
	line	16
	
l6553:
	movlw	(03Fh)&0ffh
	andwf	((c:4039)),c	;volatile
	line	17
	
l6555:
	movlw	low(0)
	movwf	((c:4038)),c	;volatile
	line	18
	
l6557:
	movlw	low(0)
	movwf	((c:4037)),c	;volatile
	line	19
	movf	((c:OpenI2C@sync_mode)),c,w
	iorwf	((c:4038)),c	;volatile
	line	20
	movf	((c:OpenI2C@slew)),c,w
	iorwf	((c:4039)),c	;volatile
	line	22
	
l6559:
	bsf	((c:3988)),c,3	;volatile
	line	23
	
l6561:
	bsf	((c:3988)),c,4	;volatile
	line	24
	
l6563:
	bsf	(0+(5/8)+(c:4038)),c,(5)&7	;volatile
	line	26
	
l1182:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_OpenI2C
	__end_of_OpenI2C:
	signat	_OpenI2C,8312
	global	_MyDelay

;; *************** function _MyDelay *****************
;; Defined at:
;;		line 139 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\rtu.c"
;; Parameters:    Size  Location     Type
;;  ms              2   19[COMRAM] unsigned int 
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
;;		_RTUInit
;;		_beep
;;		_main
;;		_getting_data
;;		_rtc_setting
;;		_data_to_center
;;		_tx_packet
;;		_reset_unit
;; This function uses a non-reentrant model
;;
psect	text46,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\rtu.c"
	line	139
global __ptext46
__ptext46:
psect	text46
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\rtu.c"
	line	139
	global	__size_of_MyDelay
	__size_of_MyDelay	equ	__end_of_MyDelay-_MyDelay
	
_MyDelay:
;incstack = 0
	opt	stack 26
	dw	0FFFFh
	line	141
	
l6015:
;rtu.c: 141: while(ms > 0)
	goto	l680
	
l681:
	line	143
	
l6017:
;rtu.c: 142: {
;rtu.c: 143: _delay((unsigned long)((1)*(100000000/4000.0)));
	movlw	25
movwf	(??_MyDelay+0+0)&0ffh,c,f
	movlw	93
u5277:
	decfsz	wreg,f
	goto	u5277
	decfsz	(??_MyDelay+0+0)&0ffh,c,f
	goto	u5277

	line	144
	
l6019:
;rtu.c: 144: ms--;
	decf	((c:MyDelay@ms)),c
	btfss	status,0
	decf	((c:MyDelay@ms+1)),c
	line	145
	
l680:
	line	141
	movf	((c:MyDelay@ms+1)),c,w
	iorwf ((c:MyDelay@ms)),c,w

	btfss	status,2
	goto	u3431
	goto	u3430
u3431:
	goto	l6017
u3430:
	goto	l683
	
l682:
	line	146
	
l683:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_MyDelay
	__end_of_MyDelay:
	signat	_MyDelay,4216
	global	_LCDInit

;; *************** function _LCDInit *****************
;; Defined at:
;;		line 152 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\lcd_hd44780_pic18.c"
;; Parameters:    Size  Location     Type
;;  style           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  style           1   29[COMRAM] unsigned char 
;;  __i             1   30[COMRAM] unsigned char 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_LCDBusyLoop
;;		_LCDByte
;; This function is called by:
;;		_RTUInit
;; This function uses a non-reentrant model
;;
psect	text47,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\lcd_hd44780_pic18.c"
	line	152
global __ptext47
__ptext47:
psect	text47
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\lcd_hd44780_pic18.c"
	line	152
	global	__size_of_LCDInit
	__size_of_LCDInit	equ	__end_of_LCDInit-_LCDInit
	
_LCDInit:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
;LCDInit@style stored from wreg
	movwf	((c:LCDInit@style)),c
	line	168
	
l6207:
;lcd_hd44780_pic18.c: 168: _delay((unsigned long)((30)*(10000000/4000.0)));
	movlw	74
movwf	(??_LCDInit+0+0)&0ffh,c,f
	movlw	24
u5287:
	decfsz	wreg,f
	goto	u5287
	decfsz	(??_LCDInit+0+0)&0ffh,c,f
	goto	u5287
	nop2

	line	171
	
l6209:
;lcd_hd44780_pic18.c: 171: TRISB&=(~(0x0F<<4));
	movlw	(0Fh)&0ffh
	andwf	((c:3987)),c	;volatile
	line	173
	
l6211:
;lcd_hd44780_pic18.c: 173: TRISDbits.TRISD6=0;
	bcf	((c:3989)),c,6	;volatile
	line	174
	
l6213:
;lcd_hd44780_pic18.c: 174: TRISDbits.TRISD2=0;
	bcf	((c:3989)),c,2	;volatile
	line	175
	
l6215:
;lcd_hd44780_pic18.c: 175: TRISDbits.TRISD3=0;
	bcf	((c:3989)),c,3	;volatile
	line	177
	
l6217:
;lcd_hd44780_pic18.c: 177: PORTB&=(~(0x0F<<4));
	movlw	(0Fh)&0ffh
	andwf	((c:3969)),c	;volatile
	line	179
	
l6219:
;lcd_hd44780_pic18.c: 179: (RD6=0);
	bcf	c:(31774/8),(31774)&7	;volatile
	line	180
	
l6221:
;lcd_hd44780_pic18.c: 180: (RD3=0);
	bcf	c:(31771/8),(31771)&7	;volatile
	line	181
	
l6223:
;lcd_hd44780_pic18.c: 181: (RD2=0);
	bcf	c:(31770/8),(31770)&7	;volatile
	line	184
	
l6225:
;lcd_hd44780_pic18.c: 184: _delay((unsigned long)((0.5)*(10000000/4000000.0)));
	nop
	line	186
	
l6227:
;lcd_hd44780_pic18.c: 186: (RD6=1);
	bsf	c:(31774/8),(31774)&7	;volatile
	line	187
	
l6229:
;lcd_hd44780_pic18.c: 187: PORTB|=((0b00000010)<<4);
	bsf	(0+(5/8)+(c:3969)),c,(5)&7	;volatile
	line	188
	
l6231:
;lcd_hd44780_pic18.c: 188: _delay((unsigned long)((1)*(10000000/4000000.0)));
		nop2	;2 cycle nop

	line	189
	
l6233:
;lcd_hd44780_pic18.c: 189: (RD6=0);
	bcf	c:(31774/8),(31774)&7	;volatile
	line	190
	
l6235:
;lcd_hd44780_pic18.c: 190: _delay((unsigned long)((1)*(10000000/4000000.0)));
		nop2	;2 cycle nop

	line	193
	
l6237:
;lcd_hd44780_pic18.c: 193: LCDBusyLoop();
	call	_LCDBusyLoop	;wreg free
	line	198
	
l6239:
;lcd_hd44780_pic18.c: 198: (LCDByte(0b00101000,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(028h)&0ffh
	
	call	_LCDByte
	line	199
	
l6241:
;lcd_hd44780_pic18.c: 199: (LCDByte(0b00001100|style,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movf	((c:LCDInit@style)),c,w
	iorlw	low(0Ch)
	
	call	_LCDByte
	line	202
	
l6243:
;lcd_hd44780_pic18.c: 202: (LCDByte(0b01000000,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(040h)&0ffh
	
	call	_LCDByte
	line	205
	
l6245:
;lcd_hd44780_pic18.c: 204: uint8_t __i;
;lcd_hd44780_pic18.c: 205: for(__i=0;__i<sizeof(__cgram);__i++)
	movlw	low(0)
	movwf	((c:LCDInit@__i)),c
	
l6247:
	movlw	(08h-1)
	cpfsgt	((c:LCDInit@__i)),c
	goto	u3621
	goto	u3620
u3621:
	goto	l6251
u3620:
	goto	l200
	
l6249:
	goto	l200
	line	206
	
l198:
	
l6251:
;lcd_hd44780_pic18.c: 206: (LCDByte(__cgram[__i],1));
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
	line	205
	
l6253:
	incf	((c:LCDInit@__i)),c
	
l6255:
	movlw	(08h-1)
	cpfsgt	((c:LCDInit@__i)),c
	goto	u3631
	goto	u3630
u3631:
	goto	l6251
u3630:
	goto	l200
	
l199:
	line	209
	
l200:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_LCDInit
	__end_of_LCDInit:
	signat	_LCDInit,4216
	global	_LCDByte

;; *************** function _LCDByte *****************
;; Defined at:
;;		line 39 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\lcd_hd44780_pic18.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;;  isdata          1   22[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   26[COMRAM] unsigned char 
;;  temp            1   27[COMRAM] unsigned char 
;;  ln              1   25[COMRAM] unsigned char 
;;  hn              1   24[COMRAM] unsigned char 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LCDBusyLoop
;; This function is called by:
;;		_Eco_Test
;;		_Eco_Replay
;;		_Send_Packet
;;		_Receive_Packet
;;		_LCDInit
;;		_LCDWriteString
;;		_LCDWriteInt
;;		_LCDGotoXY
;;		_RTUInit
;;		_main
;;		_getting_data
;;		_rtc_setting
;;		_data_to_center
;;		_local_display
;;		_tx_packet
;;		_reset_unit
;; This function uses a non-reentrant model
;;
psect	text48,class=CODE,space=0,reloc=2
	line	39
global __ptext48
__ptext48:
psect	text48
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\lcd_hd44780_pic18.c"
	line	39
	global	__size_of_LCDByte
	__size_of_LCDByte	equ	__end_of_LCDByte-_LCDByte
	
_LCDByte:
;incstack = 0
	opt	stack 23
	dw	0FFFFh
;LCDByte@c stored from wreg
	movwf	((c:LCDByte@c)),c
	line	51
	
l5535:
;lcd_hd44780_pic18.c: 48: uint8_t hn,ln;
;lcd_hd44780_pic18.c: 49: uint8_t temp;
;lcd_hd44780_pic18.c: 51: hn=c>>4;
	swapf	((c:LCDByte@c)),c,w
	andlw	(0ffh shr 4) & 0ffh
	movwf	((c:LCDByte@hn)),c
	line	52
;lcd_hd44780_pic18.c: 52: ln=(c & 0x0F);
	movf	((c:LCDByte@c)),c,w
	andlw	low(0Fh)
	movwf	((c:LCDByte@ln)),c
	line	54
	
l5537:
;lcd_hd44780_pic18.c: 54: if(isdata==0)
	tstfsz	((c:LCDByte@isdata)),c
	goto	u2941
	goto	u2940
u2941:
	goto	l188
u2940:
	line	55
	
l5539:
;lcd_hd44780_pic18.c: 55: (RD2=0);
	bcf	c:(31770/8),(31770)&7	;volatile
	goto	l189
	line	56
	
l188:
	line	57
;lcd_hd44780_pic18.c: 56: else
;lcd_hd44780_pic18.c: 57: (RD2=1);
	bsf	c:(31770/8),(31770)&7	;volatile
	
l189:
	line	59
;lcd_hd44780_pic18.c: 59: _delay((unsigned long)((0.5)*(10000000/4000000.0)));
	nop
	line	61
;lcd_hd44780_pic18.c: 61: (RD6=1);
	bsf	c:(31774/8),(31774)&7	;volatile
	line	65
	
l5541:
;lcd_hd44780_pic18.c: 65: temp=(PORTB & (~(0X0F<<4)))|((hn<<4));
	movff	(c:LCDByte@hn),??_LCDByte+0+0
	swapf	(??_LCDByte+0+0),c
	movlw	(0ffh shl 4) & 0ffh
	andwf	(??_LCDByte+0+0),c
	movf	((c:3969)),c,w	;volatile
	andlw	low(0Fh)
	iorwf	(??_LCDByte+0+0),c,w
	movwf	((c:LCDByte@temp)),c
	line	66
	
l5543:
;lcd_hd44780_pic18.c: 66: PORTB=temp;
	movff	(c:LCDByte@temp),(c:3969)	;volatile
	line	68
	
l5545:
;lcd_hd44780_pic18.c: 68: _delay((unsigned long)((1)*(10000000/4000000.0)));
		nop2	;2 cycle nop

	line	72
	
l5547:
;lcd_hd44780_pic18.c: 72: (RD6=0);
	bcf	c:(31774/8),(31774)&7	;volatile
	line	74
	
l5549:
;lcd_hd44780_pic18.c: 74: _delay((unsigned long)((1)*(10000000/4000000.0)));
		nop2	;2 cycle nop

	line	77
	
l5551:
;lcd_hd44780_pic18.c: 77: (RD6=1);
	bsf	c:(31774/8),(31774)&7	;volatile
	line	79
;lcd_hd44780_pic18.c: 79: temp=(PORTB & (~(0X0F<<4)))|((ln<<4));
	movff	(c:LCDByte@ln),??_LCDByte+0+0
	swapf	(??_LCDByte+0+0),c
	movlw	(0ffh shl 4) & 0ffh
	andwf	(??_LCDByte+0+0),c
	movf	((c:3969)),c,w	;volatile
	andlw	low(0Fh)
	iorwf	(??_LCDByte+0+0),c,w
	movwf	((c:LCDByte@temp)),c
	line	81
	
l5553:
;lcd_hd44780_pic18.c: 81: PORTB=temp;
	movff	(c:LCDByte@temp),(c:3969)	;volatile
	line	83
	
l5555:
;lcd_hd44780_pic18.c: 83: _delay((unsigned long)((1)*(10000000/4000000.0)));
		nop2	;2 cycle nop

	line	87
	
l5557:
;lcd_hd44780_pic18.c: 87: (RD6=0);
	bcf	c:(31774/8),(31774)&7	;volatile
	line	89
	
l5559:
;lcd_hd44780_pic18.c: 89: _delay((unsigned long)((1)*(10000000/4000000.0)));
		nop2	;2 cycle nop

	line	91
	
l5561:
;lcd_hd44780_pic18.c: 91: LCDBusyLoop();
	call	_LCDBusyLoop	;wreg free
	line	92
	
l190:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_LCDByte
	__end_of_LCDByte:
	signat	_LCDByte,8312
	global	_LCDBusyLoop

;; *************** function _LCDBusyLoop *****************
;; Defined at:
;;		line 94 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\lcd_hd44780_pic18.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  status          1   21[COMRAM] unsigned char 
;;  temp            1   20[COMRAM] unsigned char 
;;  busy            1   19[COMRAM] unsigned char 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCDByte
;;		_LCDInit
;; This function uses a non-reentrant model
;;
psect	text49,class=CODE,space=0,reloc=2
	line	94
global __ptext49
__ptext49:
psect	text49
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\lcd_hd44780_pic18.c"
	line	94
	global	__size_of_LCDBusyLoop
	__size_of_LCDBusyLoop	equ	__end_of_LCDBusyLoop-_LCDBusyLoop
	
_LCDBusyLoop:
;incstack = 0
	opt	stack 23
	dw	0FFFFh
	line	98
	
l5483:
;lcd_hd44780_pic18.c: 98: uint8_t busy,status=0x00,temp;
	movlw	low(0)
	movwf	((c:LCDBusyLoop@status)),c
	line	101
	
l5485:
;lcd_hd44780_pic18.c: 101: TRISB|=(0x0f<<4);
	movlw	(0F0h)&0ffh
	iorwf	((c:3987)),c	;volatile
	line	104
	
l5487:
;lcd_hd44780_pic18.c: 104: (RD3=1);
	bsf	c:(31771/8),(31771)&7	;volatile
	line	105
	
l5489:
;lcd_hd44780_pic18.c: 105: (RD2=0);
	bcf	c:(31770/8),(31770)&7	;volatile
	line	109
	
l5491:
;lcd_hd44780_pic18.c: 109: _delay((unsigned long)((0.5)*(10000000/4000000.0)));
	nop
	goto	l5493
	line	112
;lcd_hd44780_pic18.c: 112: do
	
l193:
	line	115
	
l5493:
;lcd_hd44780_pic18.c: 113: {
;lcd_hd44780_pic18.c: 115: (RD6=1);
	bsf	c:(31774/8),(31774)&7	;volatile
	line	118
	
l5495:
;lcd_hd44780_pic18.c: 118: _delay((unsigned long)((0.5)*(10000000/4000000.0)));
	nop
	line	120
	
l5497:
;lcd_hd44780_pic18.c: 120: status=(PORTB>>4);
	swapf	((c:3969)),c,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	movwf	((c:LCDBusyLoop@status)),c
	line	121
	
l5499:
;lcd_hd44780_pic18.c: 121: status=status<<4;
	swapf	((c:LCDBusyLoop@status)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:LCDBusyLoop@status)),c
	line	123
	
l5501:
;lcd_hd44780_pic18.c: 123: _delay((unsigned long)((0.5)*(10000000/4000000.0)));
	nop
	line	126
	
l5503:
;lcd_hd44780_pic18.c: 126: (RD6=0);
	bcf	c:(31774/8),(31774)&7	;volatile
	line	127
	
l5505:
;lcd_hd44780_pic18.c: 127: _delay((unsigned long)((1)*(10000000/4000000.0)));
		nop2	;2 cycle nop

	line	129
	
l5507:
;lcd_hd44780_pic18.c: 129: (RD6=1);
	bsf	c:(31774/8),(31774)&7	;volatile
	line	130
	
l5509:
;lcd_hd44780_pic18.c: 130: _delay((unsigned long)((0.5)*(10000000/4000000.0)));
	nop
	line	132
	
l5511:
;lcd_hd44780_pic18.c: 132: temp=(PORTB>>4);
	swapf	((c:3969)),c,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	movwf	((c:LCDBusyLoop@temp)),c
	line	133
	
l5513:
;lcd_hd44780_pic18.c: 133: temp&=0x0F;
	movlw	(0Fh)&0ffh
	andwf	((c:LCDBusyLoop@temp)),c
	line	135
	
l5515:
;lcd_hd44780_pic18.c: 135: status=status|temp;
	movf	((c:LCDBusyLoop@status)),c,w
	iorwf	((c:LCDBusyLoop@temp)),c,w
	movwf	((c:LCDBusyLoop@status)),c
	line	137
	
l5517:
;lcd_hd44780_pic18.c: 137: busy=status & 0b10000000;
	movf	((c:LCDBusyLoop@status)),c,w
	andlw	low(080h)
	movwf	((c:LCDBusyLoop@busy)),c
	line	139
	
l5519:
;lcd_hd44780_pic18.c: 139: _delay((unsigned long)((0.5)*(10000000/4000000.0)));
	nop
	line	141
	
l5521:
;lcd_hd44780_pic18.c: 141: (RD6=0);
	bcf	c:(31774/8),(31774)&7	;volatile
	line	142
	
l5523:
;lcd_hd44780_pic18.c: 142: _delay((unsigned long)((1)*(10000000/4000000.0)));
		nop2	;2 cycle nop

	line	143
	
l5525:
;lcd_hd44780_pic18.c: 143: }while(busy);
	tstfsz	((c:LCDBusyLoop@busy)),c
	goto	u2921
	goto	u2920
u2921:
	goto	l5493
u2920:
	
l194:
	line	145
;lcd_hd44780_pic18.c: 145: (RD3=0);
	bcf	c:(31771/8),(31771)&7	;volatile
	line	148
	
l5527:
;lcd_hd44780_pic18.c: 148: TRISB&=(~(0x0F<<4));
	movlw	(0Fh)&0ffh
	andwf	((c:3987)),c	;volatile
	line	150
	
l195:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_LCDBusyLoop
	__end_of_LCDBusyLoop:
	signat	_LCDBusyLoop,88
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 7 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\isr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:         14       0       0       0       0       0       0
;;      Totals:        14       0       0       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_SecondsInt
;;		_USARTHandleRxInt
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	intcode,class=CODE,space=0,reloc=2
global __pintcode
__pintcode:
psect	intcode
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\isr.c"
	line	7
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:
;incstack = 0
	opt	stack 22
	dw	0FFFFh; errata NOP
	movff	pclat+0,??_ISR+0
	movff	pclat+1,??_ISR+1
	movff	fsr0l+0,??_ISR+2
	movff	fsr0h+0,??_ISR+3
	movff	fsr1l+0,??_ISR+4
	movff	fsr1h+0,??_ISR+5
	movff	fsr2l+0,??_ISR+6
	movff	fsr2h+0,??_ISR+7
	movff	prodl+0,??_ISR+8
	movff	prodh+0,??_ISR+9
	movff	tblptrl+0,??_ISR+10
	movff	tblptrh+0,??_ISR+11
	movff	tblptru+0,??_ISR+12
	movff	tablat+0,??_ISR+13
	line	9
	
i2l5237:
;isr.c: 9: if (RCIE && RCIF) {
	btfss	c:(31981/8),(31981)&7	;volatile
	goto	i2u280_41
	goto	i2u280_40
i2u280_41:
	goto	i2l165
i2u280_40:
	
i2l5239:
	btfss	c:(31989/8),(31989)&7	;volatile
	goto	i2u281_41
	goto	i2u281_40
i2u281_41:
	goto	i2l165
i2u281_40:
	line	10
	
i2l5241:
;isr.c: 10: USARTHandleRxInt();
	call	_USARTHandleRxInt	;wreg free
	goto	i2l166
	line	11
	
i2l5243:
;isr.c: 11: return;
	goto	i2l166
	line	12
	
i2l165:
	line	14
;isr.c: 12: }
;isr.c: 14: if(INT0IE && INT0IF) {
	btfss	c:(32660/8),(32660)&7	;volatile
	goto	i2u282_41
	goto	i2u282_40
i2u282_41:
	goto	i2l166
i2u282_40:
	
i2l5245:
	btfss	c:(32657/8),(32657)&7	;volatile
	goto	i2u283_41
	goto	i2u283_40
i2u283_41:
	goto	i2l166
i2u283_40:
	line	15
	
i2l5247:
;isr.c: 15: SecondsInt();
	call	_SecondsInt	;wreg free
	line	16
	
i2l5249:
;isr.c: 16: INT0IF = 0;
	bcf	c:(32657/8),(32657)&7	;volatile
	goto	i2l166
	line	17
	
i2l5251:
;isr.c: 17: return;
	goto	i2l166
	line	18
	
i2l167:
	line	19
	
i2l166:
	movff	??_ISR+13,tablat+0
	movff	??_ISR+12,tblptru+0
	movff	??_ISR+11,tblptrh+0
	movff	??_ISR+10,tblptrl+0
	movff	??_ISR+9,prodh+0
	movff	??_ISR+8,prodl+0
	movff	??_ISR+7,fsr2h+0
	movff	??_ISR+6,fsr2l+0
	movff	??_ISR+5,fsr1h+0
	movff	??_ISR+4,fsr1l+0
	movff	??_ISR+3,fsr0h+0
	movff	??_ISR+2,fsr0l+0
	movff	??_ISR+1,pclat+1
	movff	??_ISR+0,pclat+0
	retfie f
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,88
	global	_USARTHandleRxInt

;; *************** function _USARTHandleRxInt *****************
;; Defined at:
;;		line 76 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\usart_pic18.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data            1    4[COMRAM] unsigned char 
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
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text51,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\usart_pic18.c"
	line	76
global __ptext51
__ptext51:
psect	text51
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\usart_pic18.c"
	line	76
	global	__size_of_USARTHandleRxInt
	__size_of_USARTHandleRxInt	equ	__end_of_USARTHandleRxInt-_USARTHandleRxInt
	
_USARTHandleRxInt:
;incstack = 0
	opt	stack 22
	dw	0FFFFh
	line	79
	
i2l4847:
;usart_pic18.c: 79: char data=RCREG;
	movff	(c:4014),(c:USARTHandleRxInt@data)	;volatile
	line	82
	
i2l4849:
;usart_pic18.c: 82: if(((UQEnd==128-1) && UQFront==0) || ((UQEnd+1)==UQFront))
	movf	((c:_UQEnd)),c,w	;volatile
	xorlw	127

	btfss	status,2
	goto	i2u251_41
	goto	i2u251_40
i2u251_41:
	goto	i2l4853
i2u251_40:
	
i2l4851:
	movf	((c:_UQFront)),c,w	;volatile
	btfsc	status,2
	goto	i2u252_41
	goto	i2u252_40
i2u252_41:
	goto	i2l4855
i2u252_40:
	goto	i2l4853
	
i2l975:
	
i2l4853:
	movff	(c:_UQFront),??_USARTHandleRxInt+0+0	;volatile
	clrf	(??_USARTHandleRxInt+0+0+1)&0ffh,c
	btfsc	(??_USARTHandleRxInt+0+0)&0ffh,c,7
	decf	(??_USARTHandleRxInt+0+0+1)&0ffh,c
	movff	(c:_UQEnd),??_USARTHandleRxInt+2+0	;volatile
	clrf	(??_USARTHandleRxInt+2+0+1)&0ffh,c
	btfsc	(??_USARTHandleRxInt+2+0)&0ffh,c,7
	decf	(??_USARTHandleRxInt+2+0+1)&0ffh,c
	movlw	01h
	addwf	(??_USARTHandleRxInt+2+0),c
	movlw	0
	addwfc	(??_USARTHandleRxInt+2+1),c
	movf	(??_USARTHandleRxInt+0+1),c,w
	xorwf	(??_USARTHandleRxInt+2+1),c,w
	bnz	i2u253_45
	movf	(??_USARTHandleRxInt+0+0),c,w
	xorwf	(??_USARTHandleRxInt+2+0),c,w
i2u253_45:

	btfss	status,2
	goto	i2u253_41
	goto	i2u253_40
i2u253_41:
	goto	i2l4859
i2u253_40:
	goto	i2l4855
	
i2l973:
	line	85
	
i2l4855:
;usart_pic18.c: 83: {
;usart_pic18.c: 85: UQFront++;
	incf	((c:_UQFront)),c	;volatile
	line	86
;usart_pic18.c: 86: if(UQFront==128) UQFront=0;
	goto	i2l4859
	
i2l4857:
	movlw	low(0)
	movwf	((c:_UQFront)),c	;volatile
	goto	i2l4859
	
i2l976:
	goto	i2l4859
	line	87
	
i2l971:
	line	89
	
i2l4859:
;usart_pic18.c: 87: }
;usart_pic18.c: 89: if(UQEnd==128-1)
	movf	((c:_UQEnd)),c,w	;volatile
	xorlw	127

	btfss	status,2
	goto	i2u254_41
	goto	i2u254_40
i2u254_41:
	goto	i2l4863
i2u254_40:
	line	90
	
i2l4861:
;usart_pic18.c: 90: UQEnd=0;
	movlw	low(0)
	movwf	((c:_UQEnd)),c	;volatile
	goto	i2l4865
	line	91
	
i2l977:
	line	92
	
i2l4863:
;usart_pic18.c: 91: else
;usart_pic18.c: 92: UQEnd++;
	incf	((c:_UQEnd)),c	;volatile
	goto	i2l4865
	
i2l978:
	line	94
	
i2l4865:
;usart_pic18.c: 94: URBuff[UQEnd]=data;
	movf	((c:_UQEnd)),c,w	;volatile
	mullw	01h
	movlb	1	; () banked
	movlw	low(_URBuff)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_URBuff)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:USARTHandleRxInt@data),indf2

	line	96
	
i2l4867:; BSR set to: 1

;usart_pic18.c: 96: if(UQFront==-1) UQFront=0;
	incf	((c:_UQFront)),c,w	;volatile

	btfss	status,2
	goto	i2u255_41
	goto	i2u255_40
i2u255_41:
	goto	i2l980
i2u255_40:
	
i2l4869:; BSR set to: 1

	movlw	low(0)
	movwf	((c:_UQFront)),c	;volatile
	goto	i2l980
	
i2l979:; BSR set to: 1

	line	98
	
i2l980:; BSR set to: 1

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_USARTHandleRxInt
	__end_of_USARTHandleRxInt:
	signat	_USARTHandleRxInt,88
	global	_SecondsInt

;; *************** function _SecondsInt *****************
;; Defined at:
;;		line 148 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\rtu.c"
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
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text52,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\rtu.c"
	line	148
global __ptext52
__ptext52:
psect	text52
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Central Unit\rtu.c"
	line	148
	global	__size_of_SecondsInt
	__size_of_SecondsInt	equ	__end_of_SecondsInt-_SecondsInt
	
_SecondsInt:; BSR set to: 1

;incstack = 0
	opt	stack 22
	dw	0FFFFh
	line	150
	
i2l3149:
;rtu.c: 150: RC1 = ~RC1;
	btg	c:(31761/8),(31761)&7	;volatile
	line	151
	
i2l3151:
;rtu.c: 151: sec_flag = 1;
	movlw	low(01h)
	movwf	((c:_sec_flag)),c
	line	152
	
i2l3153:
;rtu.c: 152: seconds++;
	incf	((c:_seconds)),c
	line	153
	
i2l3155:
;rtu.c: 153: if(seconds == 60)
	movf	((c:_seconds)),c,w
	xorlw	60

	btfss	status,2
	goto	i2u133_41
	goto	i2u133_40
i2u133_41:
	goto	i2l687
i2u133_40:
	line	155
	
i2l3157:
;rtu.c: 154: {
;rtu.c: 155: min_flag = 1;
	movlw	low(01h)
	movwf	((c:_min_flag)),c
	line	156
;rtu.c: 156: seconds = 0;
	movlw	low(0)
	movwf	((c:_seconds)),c
	goto	i2l687
	line	157
	
i2l686:
	line	158
	
i2l687:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_SecondsInt
	__end_of_SecondsInt:
	signat	_SecondsInt,88
psect	mediumconst
	db 0	; dummy byte at the end
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

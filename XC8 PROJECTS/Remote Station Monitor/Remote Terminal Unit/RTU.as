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
	FNCALL	_main,_local_display
	FNCALL	_main,_per_minute_reading
	FNCALL	_main,_per_second_reading
	FNCALL	_main,_rtc_setting
	FNCALL	_rtc_setting,_Creat_RTC_Packet
	FNCALL	_rtc_setting,_LCDByte
	FNCALL	_rtc_setting,_LCDGotoXY
	FNCALL	_rtc_setting,_LCDWriteInt
	FNCALL	_rtc_setting,_LCDWriteString
	FNCALL	_rtc_setting,_MyDelay
	FNCALL	_rtc_setting,_Receive_Packet
	FNCALL	_rtc_setting,_Write_b_eep
	FNCALL	_rtc_setting,_beep
	FNCALL	_rtc_setting,_ds1307_get_time
	FNCALL	_rtc_setting,_ds1307_set_date_time
	FNCALL	_rtc_setting,_tx_packet
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
	FNCALL	_Creat_RTC_Packet,_Calculate_CRC
	FNCALL	_Creat_RTC_Packet,_Clear_Packet
	FNCALL	_Creat_RTC_Packet,_Creat_Packet
	FNCALL	_per_second_reading,_Add_Reading_To_Packet
	FNCALL	_per_second_reading,_Clear_Packet
	FNCALL	_per_second_reading,_Creat_Packet
	FNCALL	_per_second_reading,_DisplayReadings
	FNCALL	_per_second_reading,_LCDByte
	FNCALL	_per_second_reading,_LCDGotoXY
	FNCALL	_per_second_reading,_LCDWriteString
	FNCALL	_per_second_reading,_MyDelay
	FNCALL	_per_second_reading,_Write_b_eep
	FNCALL	_per_second_reading,_beep
	FNCALL	_per_second_reading,_get_current_readings
	FNCALL	_per_second_reading,_read_packet_from_page
	FNCALL	_per_second_reading,_tx_packet
	FNCALL	_per_second_reading,_write_packet_to_page
	FNCALL	_per_minute_reading,_Add_Reading_To_Packet
	FNCALL	_per_minute_reading,_Clear_Packet
	FNCALL	_per_minute_reading,_Creat_Packet
	FNCALL	_per_minute_reading,_DisplayReadings
	FNCALL	_per_minute_reading,_LCDByte
	FNCALL	_per_minute_reading,_LCDGotoXY
	FNCALL	_per_minute_reading,_LCDWriteString
	FNCALL	_per_minute_reading,_MyDelay
	FNCALL	_per_minute_reading,_Write_b_eep
	FNCALL	_per_minute_reading,_beep
	FNCALL	_per_minute_reading,_get_current_readings
	FNCALL	_per_minute_reading,_read_packet_from_page
	FNCALL	_per_minute_reading,_tx_packet
	FNCALL	_per_minute_reading,_write_packet_to_page
	FNCALL	_write_packet_to_page,_rom_byte_write
	FNCALL	_rom_byte_write,_IdleI2C
	FNCALL	_rom_byte_write,_WriteI2C
	FNCALL	_Creat_Packet,_MyDelay
	FNCALL	_Creat_Packet,_ds1307_get_time
	FNCALL	_Add_Reading_To_Packet,_Calculate_CRC
	FNCALL	_local_display,_DisplayReadings
	FNCALL	_local_display,_get_current_readings
	FNCALL	_get_current_readings,_BusyADC
	FNCALL	_get_current_readings,_CloseADC
	FNCALL	_get_current_readings,_ConvertADC
	FNCALL	_get_current_readings,_OpenADC
	FNCALL	_get_current_readings,_ReadADC
	FNCALL	_get_current_readings,_SetChanADC
	FNCALL	_get_current_readings,___ftdiv
	FNCALL	_get_current_readings,___ftmul
	FNCALL	_get_current_readings,___lwtoft
	FNCALL	_get_current_readings,_float_to_int
	FNCALL	_get_current_readings,_voltage_to_hum
	FNCALL	_get_current_readings,_voltage_to_temp
	FNCALL	_voltage_to_temp,___ftadd
	FNCALL	_voltage_to_temp,___ftmul
	FNCALL	_voltage_to_temp,___ftneg
	FNCALL	_voltage_to_temp,_pow
	FNCALL	_voltage_to_hum,___ftadd
	FNCALL	_voltage_to_hum,___ftmul
	FNCALL	_voltage_to_hum,___ftneg
	FNCALL	_voltage_to_hum,_pow
	FNCALL	_pow,___ftge
	FNCALL	_pow,___ftmul
	FNCALL	_pow,___ftneg
	FNCALL	_pow,___fttol
	FNCALL	_pow,___lltoft
	FNCALL	_pow,_exp
	FNCALL	_pow,_log
	FNCALL	_log,___awtoft
	FNCALL	_log,___ftadd
	FNCALL	_log,___ftmul
	FNCALL	_log,_eval_poly
	FNCALL	_log,_frexp
	FNCALL	_exp,___awtoft
	FNCALL	_exp,___ftdiv
	FNCALL	_exp,___ftge
	FNCALL	_exp,___ftmul
	FNCALL	_exp,___ftneg
	FNCALL	_exp,___ftsub
	FNCALL	_exp,___fttol
	FNCALL	_exp,_eval_poly
	FNCALL	_exp,_floor
	FNCALL	_exp,_ldexp
	FNCALL	_floor,___altoft
	FNCALL	_floor,___ftadd
	FNCALL	_floor,___ftge
	FNCALL	_floor,___fttol
	FNCALL	_floor,_frexp
	FNCALL	___altoft,___ftpack
	FNCALL	_eval_poly,___ftadd
	FNCALL	_eval_poly,___ftmul
	FNCALL	_eval_poly,___wmul
	FNCALL	___ftsub,___ftadd
	FNCALL	___ftdiv,___ftpack
	FNCALL	___awtoft,___ftpack
	FNCALL	___lltoft,___ftpack
	FNCALL	_float_to_int,___ftmul
	FNCALL	_float_to_int,___fttol
	FNCALL	_float_to_int,_modf
	FNCALL	_modf,___attoft
	FNCALL	_modf,___ftadd
	FNCALL	_modf,___ftneg
	FNCALL	_modf,___fttol
	FNCALL	___attoft,___ftpack
	FNCALL	___lwtoft,___ftpack
	FNCALL	_DisplayReadings,_LCDByte
	FNCALL	_DisplayReadings,_LCDGotoXY
	FNCALL	_DisplayReadings,_LCDWriteInt
	FNCALL	_DisplayReadings,_LCDWriteString
	FNCALL	_LCDWriteInt,_LCDByte
	FNCALL	_LCDWriteInt,___awdiv
	FNCALL	_LCDWriteInt,___awmod
	FNCALL	_data_to_center,_Clear_Packet
	FNCALL	_data_to_center,_LCDByte
	FNCALL	_data_to_center,_LCDGotoXY
	FNCALL	_data_to_center,_LCDWriteString
	FNCALL	_data_to_center,_MyDelay
	FNCALL	_data_to_center,_Write_b_eep
	FNCALL	_data_to_center,_beep
	FNCALL	_data_to_center,_clear_rom
	FNCALL	_data_to_center,_read_packet_from_page
	FNCALL	_data_to_center,_tx_packet
	FNCALL	_tx_packet,_LCDByte
	FNCALL	_tx_packet,_LCDWriteString
	FNCALL	_tx_packet,_MyDelay
	FNCALL	_tx_packet,_Send_Packet
	FNCALL	_tx_packet,_beep
	FNCALL	_beep,_MyDelay
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
	FNCALL	_LCDGotoXY,_LCDByte
	FNCALL	_RTUInit,_LCDByte
	FNCALL	_RTUInit,_LCDInit
	FNCALL	_RTUInit,_MyDelay
	FNCALL	_RTUInit,_OpenI2C
	FNCALL	_RTUInit,_Read_b_eep
	FNCALL	_RTUInit,_USARTInit
	FNCALL	_RTUInit,_Write_b_eep
	FNCALL	_RTUInit,___ftadd
	FNCALL	_RTUInit,___ftmul
	FNCALL	_RTUInit,___lbtoft
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
	FNCALL	___lbtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftadd,___ftpack
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
psect	idataBANK0,class=CODE,space=0,delta=1,noexec
global __pidataBANK0
__pidataBANK0:
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\custom_char.h"
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
	global	exp@coeff
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
	global	log@coeff
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
	global	exp@coeff
	global	log@coeff
	global	_thresh_temp1
	global	_Current_Pos
	global	_Data_End
	global	_Destination_ID
	global	_Source_ID
	global	_UQEnd
	global	_UQFront
	global	_c
	global	_day
	global	_device
	global	_dow
	global	_hr
	global	_min
	global	_month
	global	_sec
	global	_sec_flag
	global	_seconds
	global	_year
	global	LCDWriteInt@F3701
	global	USARTWriteInt@F3686
	global	_h1
	global	_h2
	global	_t1
	global	_t2
	global	_thresh_hum1
	global	_thresh_hum2
	global	_thresh_temp2
	global	_trig_hum1
	global	_trig_hum2
	global	_trig_temp1
	global	_trig_temp2
	global	_Current_Read_Page
	global	_Current_Write_Page
	global	_Hum1
	global	_Hum2
	global	_Temp1
	global	_Temp2
	global	_errno
	global	_min_flag
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
	
STR_58:
	db	76	;'L'
	db	79	;'O'
	db	67	;'C'
	db	65	;'A'
	db	76	;'L'
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
	db	46
	db	46
	db	46
	db	33
	db	0
	
STR_54:
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
	
STR_52:
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
	
STR_70:
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
	
STR_47:
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
	
STR_37:
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
	
STR_38:
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
	
STR_61:
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
	
STR_67:
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
	
STR_36:
	db	83	;'S'
	db	69	;'E'
	db	78	;'N'
	db	68	;'D'
	db	73	;'I'
	db	78	;'N'
	db	71	;'G'
	db	32
	db	84	;'T'
	db	79	;'O'
	db	32
	db	67	;'C'
	db	78	;'N'
	db	84	;'T'
	db	82	;'R'
	db	46
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
	db	82	;'R'
	db	84	;'T'
	db	85	;'U'
	db	45
	db	49	;'1'
	db	0
	
STR_53:
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
	
STR_66:
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
	
STR_33:
	db	87	;'W'
	db	82	;'R'
	db	73	;'I'
	db	84	;'T'
	db	84	;'T'
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
	
STR_35:
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
	db	0
	
STR_28:
	db	83	;'S'
	db	69	;'E'
	db	67	;'C'
	db	79	;'O'
	db	78	;'N'
	db	68	;'D'
	db	32
	db	82	;'R'
	db	69	;'E'
	db	65	;'A'
	db	68	;'D'
	db	73	;'I'
	db	78	;'N'
	db	71	;'G'
	db	0
	
STR_30:
	db	77	;'M'
	db	73	;'I'
	db	78	;'N'
	db	85	;'U'
	db	84	;'T'
	db	69	;'E'
	db	32
	db	82	;'R'
	db	69	;'E'
	db	65	;'A'
	db	68	;'D'
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
	
STR_48:
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
	
STR_23:
	db	77	;'M'
	db	79	;'O'
	db	68	;'D'
	db	69	;'E'
	db	32
	db	61	;'='
	db	32
	db	80	;'P'
	db	65	;'A'
	db	82	;'R'
	db	65	;'A'
	db	77	;'M'
	db	46
	db	0
	
STR_65:
	db	65	;'A'
	db	76	;'L'
	db	76	;'L'
	db	32
	db	68	;'D'
	db	65	;'A'
	db	84	;'T'
	db	65	;'A'
	db	32
	db	83	;'S'
	db	69	;'E'
	db	78	;'N'
	db	84	;'T'
	db	0
	
STR_24:
	db	76	;'L'
	db	79	;'O'
	db	67	;'C'
	db	65	;'A'
	db	76	;'L'
	db	32
	db	68	;'D'
	db	73	;'I'
	db	83	;'S'
	db	80	;'P'
	db	76	;'L'
	db	65	;'A'
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
	
STR_50:
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
	db	33
	db	0
	
STR_39:
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
	db	33
	db	0
	
STR_34:
	db	84	;'T'
	db	79	;'O'
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
	
STR_51:
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
	
STR_49:
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
	
STR_68:
	db	82	;'R'
	db	70	;'F'
	db	32
	db	76	;'L'
	db	73	;'I'
	db	78	;'N'
	db	75	;'K'
	db	32
	db	79	;'O'
	db	70	;'F'
	db	70	;'F'
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
	
STR_69:
	db	82	;'R'
	db	70	;'F'
	db	32
	db	76	;'L'
	db	73	;'I'
	db	78	;'N'
	db	75	;'K'
	db	32
	db	79	;'O'
	db	78	;'N'
	db	0
	
STR_27:
	db	77	;'M'
	db	79	;'O'
	db	68	;'D'
	db	69	;'E'
	db	32
	db	61	;'='
	db	32
	db	80	;'P'
	db	69	;'E'
	db	82	;'R'
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
	
STR_74:
	db	32
	db	72	;'H'
	db	49	;'1'
	db	61	;'='
	db	0
	
STR_79:
	db	32
	db	72	;'H'
	db	50	;'2'
	db	61	;'='
	db	0
	
STR_71:
	db	84	;'T'
	db	49	;'1'
	db	61	;'='
	db	0
	
STR_76:
	db	84	;'T'
	db	50	;'2'
	db	61	;'='
	db	0
	
STR_73:
	db	37
	db	48	;'0'
	db	67	;'C'
	db	0
	
STR_75:
	db	37
	db	0
	
STR_19:
	db	58	;':'
	db	0
STR_40	equ	STR_33+0
STR_29	equ	STR_27+0
STR_31	equ	STR_27+0
STR_32	equ	STR_28+0
STR_78	equ	STR_73+0
STR_20	equ	STR_19+0
STR_56	equ	STR_19+0
STR_57	equ	STR_19+0
STR_59	equ	STR_19+0
STR_60	equ	STR_19+0
STR_43	equ	STR_36+0
STR_45	equ	STR_38+0
STR_63	equ	STR_38+0
STR_41	equ	STR_34+0
STR_44	equ	STR_37+0
STR_62	equ	STR_37+0
STR_42	equ	STR_35+0
STR_72	equ	STR_47+16
STR_77	equ	STR_47+16
STR_80	equ	STR_75+0
STR_46	equ	STR_39+0
STR_64	equ	STR_39+0
STR_55	equ	STR_54+0
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
	file	"RTU.as"
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
	global	_thresh_temp1
_thresh_temp1:
       ds      3
	global	_Current_Pos
_Current_Pos:
       ds      1
	global	_Data_End
_Data_End:
       ds      1
	global	_Destination_ID
_Destination_ID:
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
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
LCDWriteInt@F3701:
       ds      5
USARTWriteInt@F3686:
       ds      5
	global	_h1
_h1:
       ds      3
	global	_h2
_h2:
       ds      3
	global	_t1
_t1:
       ds      3
	global	_t2
_t2:
       ds      3
	global	_thresh_hum1
_thresh_hum1:
       ds      3
	global	_thresh_hum2
_thresh_hum2:
       ds      3
	global	_thresh_temp2
_thresh_temp2:
       ds      3
	global	_trig_hum1
_trig_hum1:
       ds      3
	global	_trig_hum2
_trig_hum2:
       ds      3
	global	_trig_temp1
_trig_temp1:
       ds      3
	global	_trig_temp2
_trig_temp2:
       ds      3
	global	_Current_Read_Page
_Current_Read_Page:
       ds      2
	global	_Current_Write_Page
_Current_Write_Page:
       ds      2
	global	_Hum1
_Hum1:
       ds      2
	global	_Hum2
_Hum2:
       ds      2
	global	_Temp1
_Temp1:
       ds      2
	global	_Temp2
_Temp2:
       ds      2
	global	_errno
_errno:
       ds      2
	global	_min_flag
_min_flag:
       ds      1
psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\custom_char.h"
	line	8
	global	___cgram
___cgram:
       ds      8
psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
	global	_PACKET
_PACKET:
       ds      128
	global	_URBuff
_URBuff:
       ds      128
	file	"RTU.as"
	line	#
psect	cinit
; Clear objects allocated to BANK1 (256 bytes)
	global __pbssBANK1
lfsr	0,__pbssBANK1
lfsr	1,256
clear_0:
clrf	postinc0,c
movf	postdec1,w
movf	fsr1l,w
bnz	clear_0
movf	fsr1h,w
bnz	clear_0
; Clear objects allocated to BANK0 (58 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	58
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
; Clear objects allocated to COMRAM (20 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	20
clear_2:
clrf	postinc0,c
decf	wreg
bnz	clear_2
	line	#
; Initialize objects allocated to BANK0 (8 bytes)
	global __pidataBANK0
	; load TBLPTR registers with __pidataBANK0
	movlw	low (__pidataBANK0)
	movwf	tblptrl
	movlw	high(__pidataBANK0)
	movwf	tblptrh
	movlw	low highword(__pidataBANK0)
	movwf	tblptru
	lfsr	0,__pdataBANK0
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
psect	cstackBANK2,class=BANK2,space=1,noexec
global __pcstackBANK2
__pcstackBANK2:
	global	per_minute_reading@result
per_minute_reading@result:	; 1 bytes @ 0x0
	global	per_second_reading@result
per_second_reading@result:	; 1 bytes @ 0x0
	ds   1
	global	per_minute_reading@msb
per_minute_reading@msb:	; 1 bytes @ 0x1
	global	per_second_reading@msb
per_second_reading@msb:	; 1 bytes @ 0x1
	ds   1
	global	per_minute_reading@lsb
per_minute_reading@lsb:	; 1 bytes @ 0x2
	global	per_second_reading@lsb
per_second_reading@lsb:	; 1 bytes @ 0x2
	ds   1
	global	per_minute_reading@reading_count
per_minute_reading@reading_count:	; 1 bytes @ 0x3
	global	per_second_reading@reading_count
per_second_reading@reading_count:	; 1 bytes @ 0x3
	ds   1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	_exp$2973
_exp$2973:	; 3 bytes @ 0x0
	ds   3
	global	exp@exponent
exp@exponent:	; 2 bytes @ 0x3
	ds   2
	global	exp@sign
exp@sign:	; 1 bytes @ 0x5
	ds   1
	global	?_pow
?_pow:	; 3 bytes @ 0x6
	global	pow@x
pow@x:	; 3 bytes @ 0x6
	ds   3
	global	pow@y
pow@y:	; 3 bytes @ 0x9
	ds   3
	global	_pow$2971
_pow$2971:	; 3 bytes @ 0xC
	ds   3
	global	_pow$2972
_pow$2972:	; 3 bytes @ 0xF
	ds   3
	global	pow@sign
pow@sign:	; 1 bytes @ 0x12
	ds   1
	global	pow@yi
pow@yi:	; 4 bytes @ 0x13
	ds   4
	global	?_voltage_to_temp
?_voltage_to_temp:	; 3 bytes @ 0x17
	global	?_voltage_to_hum
?_voltage_to_hum:	; 3 bytes @ 0x17
	global	voltage_to_temp@voltage
voltage_to_temp@voltage:	; 3 bytes @ 0x17
	global	voltage_to_hum@voltage
voltage_to_hum@voltage:	; 3 bytes @ 0x17
	ds   3
	global	voltage_to_temp@temp
voltage_to_temp@temp:	; 3 bytes @ 0x1A
	global	voltage_to_hum@temp
voltage_to_hum@temp:	; 3 bytes @ 0x1A
	ds   3
	global	_voltage_to_temp$2963
_voltage_to_temp$2963:	; 3 bytes @ 0x1D
	global	_voltage_to_hum$2967
_voltage_to_hum$2967:	; 3 bytes @ 0x1D
	ds   3
	global	_voltage_to_temp$2964
_voltage_to_temp$2964:	; 3 bytes @ 0x20
	global	_voltage_to_hum$2968
_voltage_to_hum$2968:	; 3 bytes @ 0x20
	ds   3
	global	_voltage_to_temp$2965
_voltage_to_temp$2965:	; 3 bytes @ 0x23
	global	_voltage_to_hum$2969
_voltage_to_hum$2969:	; 3 bytes @ 0x23
	ds   3
	global	_voltage_to_temp$2966
_voltage_to_temp$2966:	; 3 bytes @ 0x26
	global	_voltage_to_hum$2970
_voltage_to_hum$2970:	; 3 bytes @ 0x26
	ds   3
	global	get_current_readings@voltage1
get_current_readings@voltage1:	; 3 bytes @ 0x29
	ds   3
	global	get_current_readings@voltage2
get_current_readings@voltage2:	; 3 bytes @ 0x2C
	ds   3
	global	get_current_readings@voltage3
get_current_readings@voltage3:	; 3 bytes @ 0x2F
	ds   3
	global	get_current_readings@voltage4
get_current_readings@voltage4:	; 3 bytes @ 0x32
	ds   3
	global	get_current_readings@ADCResult
get_current_readings@ADCResult:	; 2 bytes @ 0x35
	ds   2
	global	get_current_readings@i
get_current_readings@i:	; 1 bytes @ 0x37
	ds   1
??_per_second_reading:	; 0 bytes @ 0x38
??_per_minute_reading:	; 0 bytes @ 0x38
	ds   3
	global	main@choice
main@choice:	; 1 bytes @ 0x3B
	ds   1
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_LCDBusyLoop:	; 0 bytes @ 0x0
?_IdleI2C:	; 0 bytes @ 0x0
?_USARTHandleRxInt:	; 0 bytes @ 0x0
??_USARTHandleRxInt:	; 0 bytes @ 0x0
?_SecondsInt:	; 0 bytes @ 0x0
??_SecondsInt:	; 0 bytes @ 0x0
?_Clear_Packet:	; 0 bytes @ 0x0
?_USARTFlushBuffer:	; 0 bytes @ 0x0
?_USARTWriteChar:	; 0 bytes @ 0x0
?_SetChanADC:	; 0 bytes @ 0x0
?_ConvertADC:	; 0 bytes @ 0x0
?_CloseADC:	; 0 bytes @ 0x0
?_data_to_center:	; 0 bytes @ 0x0
?_local_display:	; 0 bytes @ 0x0
?_rtc_setting:	; 0 bytes @ 0x0
?_per_second_reading:	; 0 bytes @ 0x0
?_per_minute_reading:	; 0 bytes @ 0x0
?_DisplayReadings:	; 0 bytes @ 0x0
?_tx_packet:	; 0 bytes @ 0x0
?_LCDInit:	; 0 bytes @ 0x0
?_clear_rom:	; 0 bytes @ 0x0
?_ds1307_init:	; 0 bytes @ 0x0
?_ds1307_set_date_time:	; 0 bytes @ 0x0
?_ds1307_get_date:	; 0 bytes @ 0x0
?_ds1307_get_time:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
?_Creat_RTC_Packet:	; 0 bytes @ 0x0
?_get_current_readings:	; 0 bytes @ 0x0
?_RTUInit:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_WriteI2C:	; 1 bytes @ 0x0
?_ReadI2C:	; 1 bytes @ 0x0
?_bcd2bin:	; 1 bytes @ 0x0
?_bin2bcd:	; 1 bytes @ 0x0
?_USARTDataAvailable:	; 1 bytes @ 0x0
?_USARTReadData:	; 1 bytes @ 0x0
?_BusyADC:	; 1 bytes @ 0x0
?_Check_CRC:	; 1 bytes @ 0x0
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
??_LCDBusyLoop:	; 0 bytes @ 0x13
??_IdleI2C:	; 0 bytes @ 0x13
??_ReadI2C:	; 0 bytes @ 0x13
??_bcd2bin:	; 0 bytes @ 0x13
??_bin2bcd:	; 0 bytes @ 0x13
?_MyDelay:	; 0 bytes @ 0x13
??_Clear_Packet:	; 0 bytes @ 0x13
??_USARTDataAvailable:	; 0 bytes @ 0x13
??_USARTWriteChar:	; 0 bytes @ 0x13
??_USARTReadData:	; 0 bytes @ 0x13
?_OpenADC:	; 0 bytes @ 0x13
??_SetChanADC:	; 0 bytes @ 0x13
??_ConvertADC:	; 0 bytes @ 0x13
??_BusyADC:	; 0 bytes @ 0x13
??_CloseADC:	; 0 bytes @ 0x13
?_OpenI2C:	; 0 bytes @ 0x13
?_Write_b_eep:	; 0 bytes @ 0x13
?_USARTInit:	; 0 bytes @ 0x13
??_Check_CRC:	; 0 bytes @ 0x13
?___ftge:	; 1 bit 
?_Read_b_eep:	; 1 bytes @ 0x13
?_getkey:	; 1 bytes @ 0x13
	global	?_Calculate_CRC
?_Calculate_CRC:	; 2 bytes @ 0x13
	global	?_ReadADC
?_ReadADC:	; 2 bytes @ 0x13
	global	?___wmul
?___wmul:	; 2 bytes @ 0x13
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x13
	global	?___awmod
?___awmod:	; 2 bytes @ 0x13
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x13
	global	?_frexp
?_frexp:	; 3 bytes @ 0x13
	global	?___fttol
?___fttol:	; 4 bytes @ 0x13
	global	LCDBusyLoop@busy
LCDBusyLoop@busy:	; 1 bytes @ 0x13
	global	bin2bcd@binary_value
bin2bcd@binary_value:	; 1 bytes @ 0x13
	global	Clear_Packet@i
Clear_Packet@i:	; 1 bytes @ 0x13
	global	USARTWriteChar@ch
USARTWriteChar@ch:	; 1 bytes @ 0x13
	global	USARTReadData@data
USARTReadData@data:	; 1 bytes @ 0x13
	global	OpenADC@config2
OpenADC@config2:	; 1 bytes @ 0x13
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
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x13
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x13
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x13
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x13
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x13
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x13
	global	frexp@value
frexp@value:	; 3 bytes @ 0x13
	ds   1
??_WriteI2C:	; 0 bytes @ 0x14
??_USARTFlushBuffer:	; 0 bytes @ 0x14
??_OpenADC:	; 0 bytes @ 0x14
??_OpenI2C:	; 0 bytes @ 0x14
??_Check_Busy_Line:	; 0 bytes @ 0x14
	global	LCDBusyLoop@temp
LCDBusyLoop@temp:	; 1 bytes @ 0x14
	global	bin2bcd@retval
bin2bcd@retval:	; 1 bytes @ 0x14
	global	bcd2bin@bcd_value
bcd2bin@bcd_value:	; 1 bytes @ 0x14
	global	SetChanADC@channel
SetChanADC@channel:	; 1 bytes @ 0x14
	global	OpenI2C@sync_mode
OpenI2C@sync_mode:	; 1 bytes @ 0x14
	ds   1
??_MyDelay:	; 0 bytes @ 0x15
??_Calculate_CRC:	; 0 bytes @ 0x15
??_ReadADC:	; 0 bytes @ 0x15
??_Read_b_eep:	; 0 bytes @ 0x15
??_USARTInit:	; 0 bytes @ 0x15
??_getkey:	; 0 bytes @ 0x15
	global	LCDBusyLoop@status
LCDBusyLoop@status:	; 1 bytes @ 0x15
	global	bin2bcd@temp
bin2bcd@temp:	; 1 bytes @ 0x15
	global	bcd2bin@temp
bcd2bin@temp:	; 1 bytes @ 0x15
	global	OpenADC@config
OpenADC@config:	; 1 bytes @ 0x15
	global	Write_b_eep@bdat
Write_b_eep@bdat:	; 1 bytes @ 0x15
	global	WriteI2C@data_out
WriteI2C@data_out:	; 1 bytes @ 0x15
	global	Check_Busy_Line@ms
Check_Busy_Line@ms:	; 2 bytes @ 0x15
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x15
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x15
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x15
	ds   1
??_Write_b_eep:	; 0 bytes @ 0x16
?_LCDByte:	; 0 bytes @ 0x16
?_rom_byte_write:	; 0 bytes @ 0x16
??_clear_rom:	; 0 bytes @ 0x16
??_ds1307_init:	; 0 bytes @ 0x16
??_ds1307_set_date_time:	; 0 bytes @ 0x16
??_ds1307_get_date:	; 0 bytes @ 0x16
??_ds1307_get_time:	; 0 bytes @ 0x16
?_Creat_Packet:	; 0 bytes @ 0x16
?_beep:	; 0 bytes @ 0x16
?_rom_byte_read:	; 1 bytes @ 0x16
	global	LCDByte@isdata
LCDByte@isdata:	; 1 bytes @ 0x16
	global	ds1307_init@seconds
ds1307_init@seconds:	; 1 bytes @ 0x16
	global	Creat_Packet@Readings
Creat_Packet@Readings:	; 1 bytes @ 0x16
	global	Write_b_eep@GIE_BIT_VAL
Write_b_eep@GIE_BIT_VAL:	; 1 bytes @ 0x16
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x16
	global	rom_byte_write@address
rom_byte_write@address:	; 2 bytes @ 0x16
	global	rom_byte_read@address
rom_byte_read@address:	; 2 bytes @ 0x16
	global	beep@del
beep@del:	; 2 bytes @ 0x16
	global	frexp@eptr
frexp@eptr:	; 2 bytes @ 0x16
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x16
	ds   1
??_LCDByte:	; 0 bytes @ 0x17
??_Creat_Packet:	; 0 bytes @ 0x17
??___wmul:	; 0 bytes @ 0x17
??___awdiv:	; 0 bytes @ 0x17
??___awmod:	; 0 bytes @ 0x17
??___fttol:	; 0 bytes @ 0x17
	global	Creat_Packet@F_Code
Creat_Packet@F_Code:	; 1 bytes @ 0x17
	global	Check_Busy_Line@n
Check_Busy_Line@n:	; 1 bytes @ 0x17
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x17
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x17
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x17
	global	clear_rom@page
clear_rom@page:	; 2 bytes @ 0x17
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x17
	ds   1
??___ftpack:	; 0 bytes @ 0x18
??_frexp:	; 0 bytes @ 0x18
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
??___ftge:	; 0 bytes @ 0x19
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
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x1B
	global	?___lbtoft
?___lbtoft:	; 3 bytes @ 0x1B
	global	?___lltoft
?___lltoft:	; 3 bytes @ 0x1B
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x1B
	global	LCDByte@temp
LCDByte@temp:	; 1 bytes @ 0x1B
	global	rom_byte_read@msb
rom_byte_read@msb:	; 1 bytes @ 0x1B
	global	Check_CRC@CRC_LOW
Check_CRC@CRC_LOW:	; 1 bytes @ 0x1B
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x1B
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x1B
	global	___lltoft@c
___lltoft@c:	; 4 bytes @ 0x1B
	ds   1
??_LCDInit:	; 0 bytes @ 0x1C
?_LCDWriteString:	; 0 bytes @ 0x1C
?_LCDWriteInt:	; 0 bytes @ 0x1C
?_LCDGotoXY:	; 0 bytes @ 0x1C
	global	LCDGotoXY@y
LCDGotoXY@y:	; 1 bytes @ 0x1C
	global	rom_byte_write@msb
rom_byte_write@msb:	; 1 bytes @ 0x1C
	global	rom_byte_read@lsb
rom_byte_read@lsb:	; 1 bytes @ 0x1C
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x1C
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
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x1D
	ds   1
??_LCDWriteString:	; 0 bytes @ 0x1E
?_write_packet_to_page:	; 0 bytes @ 0x1E
?_read_packet_from_page:	; 0 bytes @ 0x1E
??___awtoft:	; 0 bytes @ 0x1E
??___lbtoft:	; 0 bytes @ 0x1E
??___lwtoft:	; 0 bytes @ 0x1E
	global	LCDInit@__i
LCDInit@__i:	; 1 bytes @ 0x1E
	global	LCDWriteInt@field_length
LCDWriteInt@field_length:	; 1 bytes @ 0x1E
	global	Calculate_CRC@count
Calculate_CRC@count:	; 1 bytes @ 0x1E
	global	Check_CRC@count
Check_CRC@count:	; 1 bytes @ 0x1E
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0x1E
	global	___lbtoft@c
___lbtoft@c:	; 1 bytes @ 0x1E
	global	write_packet_to_page@page_no
write_packet_to_page@page_no:	; 2 bytes @ 0x1E
	global	read_packet_from_page@page_no
read_packet_from_page@page_no:	; 2 bytes @ 0x1E
	ds   1
??_LCDWriteInt:	; 0 bytes @ 0x1F
??_Creat_RTC_Packet:	; 0 bytes @ 0x1F
??___lltoft:	; 0 bytes @ 0x1F
?_Add_Reading_To_Packet:	; 1 bytes @ 0x1F
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x1F
	global	LCDWriteString@cc
LCDWriteString@cc:	; 1 bytes @ 0x1F
	global	Check_CRC@length
Check_CRC@length:	; 1 bytes @ 0x1F
	global	Add_Reading_To_Packet@t1
Add_Reading_To_Packet@t1:	; 2 bytes @ 0x1F
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x1F
	ds   1
??_write_packet_to_page:	; 0 bytes @ 0x20
??_read_packet_from_page:	; 0 bytes @ 0x20
??_Eco_Test:	; 0 bytes @ 0x20
??_Eco_Replay:	; 0 bytes @ 0x20
	global	Check_CRC@CRC
Check_CRC@CRC:	; 2 bytes @ 0x20
	ds   1
	global	Eco_Test@re
Eco_Test@re:	; 1 bytes @ 0x21
	global	Eco_Replay@ts
Eco_Replay@ts:	; 1 bytes @ 0x21
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x21
	global	Add_Reading_To_Packet@h1
Add_Reading_To_Packet@h1:	; 2 bytes @ 0x21
	global	LCDWriteInt@str
LCDWriteInt@str:	; 5 bytes @ 0x21
	ds   1
	global	?___altoft
?___altoft:	; 3 bytes @ 0x22
	global	?___attoft
?___attoft:	; 3 bytes @ 0x22
	global	write_packet_to_page@msb
write_packet_to_page@msb:	; 1 bytes @ 0x22
	global	read_packet_from_page@data
read_packet_from_page@data:	; 1 bytes @ 0x22
	global	Creat_RTC_Packet@crc_h
Creat_RTC_Packet@crc_h:	; 1 bytes @ 0x22
	global	Eco_Test@data
Eco_Test@data:	; 1 bytes @ 0x22
	global	Eco_Replay@data
Eco_Replay@data:	; 1 bytes @ 0x22
	global	___attoft@c
___attoft@c:	; 3 bytes @ 0x22
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x22
	global	___altoft@c
___altoft@c:	; 4 bytes @ 0x22
	ds   1
	global	write_packet_to_page@lsb
write_packet_to_page@lsb:	; 1 bytes @ 0x23
	global	read_packet_from_page@msb
read_packet_from_page@msb:	; 1 bytes @ 0x23
	global	Creat_RTC_Packet@crc_l
Creat_RTC_Packet@crc_l:	; 1 bytes @ 0x23
	global	Eco_Replay@n
Eco_Replay@n:	; 1 bytes @ 0x23
	global	___lltoft@exp
___lltoft@exp:	; 1 bytes @ 0x23
	global	Add_Reading_To_Packet@t2
Add_Reading_To_Packet@t2:	; 2 bytes @ 0x23
	global	Eco_Test@ts
Eco_Test@ts:	; 2 bytes @ 0x23
	ds   1
??_Receive_Packet:	; 0 bytes @ 0x24
	global	read_packet_from_page@lsb
read_packet_from_page@lsb:	; 1 bytes @ 0x24
	global	write_packet_to_page@address
write_packet_to_page@address:	; 2 bytes @ 0x24
	global	Creat_RTC_Packet@packet_crc
Creat_RTC_Packet@packet_crc:	; 2 bytes @ 0x24
	ds   1
??___ftmul:	; 0 bytes @ 0x25
??___attoft:	; 0 bytes @ 0x25
	global	Eco_Test@n
Eco_Test@n:	; 1 bytes @ 0x25
	global	___attoft@sign
___attoft@sign:	; 1 bytes @ 0x25
	global	read_packet_from_page@address
read_packet_from_page@address:	; 2 bytes @ 0x25
	global	Add_Reading_To_Packet@h2
Add_Reading_To_Packet@h2:	; 2 bytes @ 0x25
	global	Receive_Packet@msecs
Receive_Packet@msecs:	; 2 bytes @ 0x25
	ds   1
??_Send_Packet:	; 0 bytes @ 0x26
??___altoft:	; 0 bytes @ 0x26
	global	write_packet_to_page@count
write_packet_to_page@count:	; 1 bytes @ 0x26
	global	LCDWriteInt@j
LCDWriteInt@j:	; 2 bytes @ 0x26
	ds   1
??_Add_Reading_To_Packet:	; 0 bytes @ 0x27
	global	read_packet_from_page@count
read_packet_from_page@count:	; 1 bytes @ 0x27
	global	Receive_Packet@count
Receive_Packet@count:	; 1 bytes @ 0x27
	global	Send_Packet@ts
Send_Packet@ts:	; 2 bytes @ 0x27
	ds   1
	global	Receive_Packet@n
Receive_Packet@n:	; 1 bytes @ 0x28
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x28
	global	LCDWriteInt@i
LCDWriteInt@i:	; 2 bytes @ 0x28
	ds   1
	global	Add_Reading_To_Packet@t1_h
Add_Reading_To_Packet@t1_h:	; 1 bytes @ 0x29
	global	Send_Packet@count
Send_Packet@count:	; 1 bytes @ 0x29
	global	Receive_Packet@result
Receive_Packet@result:	; 1 bytes @ 0x29
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x29
	ds   1
??_DisplayReadings:	; 0 bytes @ 0x2A
	global	Add_Reading_To_Packet@t1_l
Add_Reading_To_Packet@t1_l:	; 1 bytes @ 0x2A
	global	Send_Packet@result
Send_Packet@result:	; 1 bytes @ 0x2A
	global	___altoft@exp
___altoft@exp:	; 1 bytes @ 0x2A
	ds   1
	global	Add_Reading_To_Packet@h1_h
Add_Reading_To_Packet@h1_h:	; 1 bytes @ 0x2B
	global	Send_Packet@n
Send_Packet@n:	; 1 bytes @ 0x2B
	global	___altoft@sign
___altoft@sign:	; 1 bytes @ 0x2B
	ds   1
	global	Add_Reading_To_Packet@h1_l
Add_Reading_To_Packet@h1_l:	; 1 bytes @ 0x2C
	global	Send_Packet@data
Send_Packet@data:	; 1 bytes @ 0x2C
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x2C
	ds   1
??_tx_packet:	; 0 bytes @ 0x2D
	global	Add_Reading_To_Packet@t2_h
Add_Reading_To_Packet@t2_h:	; 1 bytes @ 0x2D
	global	tx_packet@attempts
tx_packet@attempts:	; 1 bytes @ 0x2D
	global	_DisplayReadings$1261
_DisplayReadings$1261:	; 1 bytes @ 0x2D
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x2D
	ds   1
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x2E
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x2E
	global	Add_Reading_To_Packet@t2_l
Add_Reading_To_Packet@t2_l:	; 1 bytes @ 0x2E
	global	tx_packet@res
tx_packet@res:	; 1 bytes @ 0x2E
	global	_DisplayReadings$1267
_DisplayReadings$1267:	; 1 bytes @ 0x2E
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x2E
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x2E
	ds   1
??_data_to_center:	; 0 bytes @ 0x2F
??_rtc_setting:	; 0 bytes @ 0x2F
	global	Add_Reading_To_Packet@h2_h
Add_Reading_To_Packet@h2_h:	; 1 bytes @ 0x2F
	global	rtc_setting@atm
rtc_setting@atm:	; 1 bytes @ 0x2F
	global	data_to_center@result
data_to_center@result:	; 1 bytes @ 0x2F
	global	DisplayReadings@fract
DisplayReadings@fract:	; 1 bytes @ 0x2F
	ds   1
	global	Add_Reading_To_Packet@h2_l
Add_Reading_To_Packet@h2_l:	; 1 bytes @ 0x30
	global	rtc_setting@mem_loc
rtc_setting@mem_loc:	; 1 bytes @ 0x30
	global	data_to_center@attempts
data_to_center@attempts:	; 1 bytes @ 0x30
	global	DisplayReadings@dec
DisplayReadings@dec:	; 1 bytes @ 0x30
	ds   1
??___ftneg:	; 0 bytes @ 0x31
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x31
	global	Add_Reading_To_Packet@CRC_HI
Add_Reading_To_Packet@CRC_HI:	; 1 bytes @ 0x31
	global	rtc_setting@s
rtc_setting@s:	; 1 bytes @ 0x31
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x31
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x31
	ds   1
	global	Add_Reading_To_Packet@CRC_LOW
Add_Reading_To_Packet@CRC_LOW:	; 1 bytes @ 0x32
	global	rtc_setting@result
rtc_setting@result:	; 1 bytes @ 0x32
	ds   1
	global	rtc_setting@i
rtc_setting@i:	; 1 bytes @ 0x33
	global	Add_Reading_To_Packet@CRC
Add_Reading_To_Packet@CRC:	; 2 bytes @ 0x33
	ds   1
??___ftdiv:	; 0 bytes @ 0x34
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x34
	ds   3
??___ftadd:	; 0 bytes @ 0x37
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x37
	ds   1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x38
	ds   2
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x3A
	ds   1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x3B
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x3B
	ds   1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x3C
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x3C
	ds   1
??_RTUInit:	; 0 bytes @ 0x3D
	global	?_modf
?_modf:	; 3 bytes @ 0x3D
	global	?___ftsub
?___ftsub:	; 3 bytes @ 0x3D
	global	?_floor
?_floor:	; 3 bytes @ 0x3D
	global	?_eval_poly
?_eval_poly:	; 3 bytes @ 0x3D
	global	RTUInit@adr
RTUInit@adr:	; 2 bytes @ 0x3D
	global	___ftsub@f1
___ftsub@f1:	; 3 bytes @ 0x3D
	global	modf@value
modf@value:	; 3 bytes @ 0x3D
	global	floor@x
floor@x:	; 3 bytes @ 0x3D
	global	eval_poly@x
eval_poly@x:	; 3 bytes @ 0x3D
	ds   2
	global	RTUInit@high
RTUInit@high:	; 1 bytes @ 0x3F
	ds   1
??_floor:	; 0 bytes @ 0x40
	global	RTUInit@low
RTUInit@low:	; 1 bytes @ 0x40
	global	modf@iptr
modf@iptr:	; 2 bytes @ 0x40
	global	eval_poly@d
eval_poly@d:	; 2 bytes @ 0x40
	global	___ftsub@f2
___ftsub@f2:	; 3 bytes @ 0x40
	global	floor@i
floor@i:	; 3 bytes @ 0x40
	ds   2
??_modf:	; 0 bytes @ 0x42
	global	eval_poly@n
eval_poly@n:	; 2 bytes @ 0x42
	ds   1
??___ftsub:	; 0 bytes @ 0x43
	global	floor@expon
floor@expon:	; 2 bytes @ 0x43
	ds   1
??_eval_poly:	; 0 bytes @ 0x44
	ds   2
	global	?_float_to_int
?_float_to_int:	; 2 bytes @ 0x46
	global	float_to_int@value
float_to_int@value:	; 3 bytes @ 0x46
	global	eval_poly@res
eval_poly@res:	; 3 bytes @ 0x46
	ds   3
??_float_to_int:	; 0 bytes @ 0x49
	global	?_log
?_log:	; 3 bytes @ 0x49
	global	?_ldexp
?_ldexp:	; 3 bytes @ 0x49
	global	ldexp@value
ldexp@value:	; 3 bytes @ 0x49
	global	log@x
log@x:	; 3 bytes @ 0x49
	ds   3
??_log:	; 0 bytes @ 0x4C
	global	ldexp@newexp
ldexp@newexp:	; 2 bytes @ 0x4C
	global	log@exponent
log@exponent:	; 2 bytes @ 0x4C
	ds   1
	global	float_to_int@decimals
float_to_int@decimals:	; 1 bytes @ 0x4D
	ds   1
??_ldexp:	; 0 bytes @ 0x4E
	global	float_to_int@points
float_to_int@points:	; 1 bytes @ 0x4E
	ds   1
	global	float_to_int@fractional
float_to_int@fractional:	; 3 bytes @ 0x4F
	ds   1
	global	?_exp
?_exp:	; 3 bytes @ 0x50
	global	exp@x
exp@x:	; 3 bytes @ 0x50
	ds   2
	global	float_to_int@integral
float_to_int@integral:	; 3 bytes @ 0x52
	ds   1
??_exp:	; 0 bytes @ 0x53
	ds   2
	global	float_to_int@int_value
float_to_int@int_value:	; 2 bytes @ 0x55
	ds   2
??_voltage_to_temp:	; 0 bytes @ 0x57
??_voltage_to_hum:	; 0 bytes @ 0x57
??_pow:	; 0 bytes @ 0x57
??_local_display:	; 0 bytes @ 0x57
??_get_current_readings:	; 0 bytes @ 0x57
	global	local_display@s
local_display@s:	; 1 bytes @ 0x57
	ds   1
??_main:	; 0 bytes @ 0x58
;!
;!Data Sizes:
;!    Strings     774
;!    Constant    57
;!    Data        8
;!    BSS         334
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM          127     88     108
;!    BANK0           128     60     126
;!    BANK1           256      0     256
;!    BANK2           256      4       4
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0

;!
;!Pointer List with Targets:
;!
;!    eval_poly@d	PTR const  size(2) Largest target is 30
;!		 -> log@coeff(CODE[27]), exp@coeff(CODE[30]), 
;!
;!    frexp@eptr	PTR int  size(2) Largest target is 2
;!		 -> log@exponent(COMRAM[2]), floor@expon(COMRAM[2]), 
;!
;!    modf@iptr	PTR  size(2) Largest target is 3
;!		 -> float_to_int@integral(COMRAM[3]), 
;!
;!    LCDWriteString@msg	PTR const unsigned char  size(2) Largest target is 23
;!		 -> STR_80(CODE[2]), STR_79(CODE[5]), STR_78(CODE[4]), STR_77(CODE[2]), 
;!		 -> STR_76(CODE[4]), STR_75(CODE[2]), STR_74(CODE[5]), STR_73(CODE[4]), 
;!		 -> STR_72(CODE[2]), STR_71(CODE[4]), STR_70(CODE[19]), STR_69(CODE[11]), 
;!		 -> STR_68(CODE[12]), STR_67(CODE[17]), STR_66(CODE[17]), STR_65(CODE[14]), 
;!		 -> STR_64(CODE[13]), STR_63(CODE[18]), STR_62(CODE[18]), STR_61(CODE[17]), 
;!		 -> STR_60(CODE[2]), STR_59(CODE[2]), STR_58(CODE[22]), STR_57(CODE[2]), 
;!		 -> STR_56(CODE[2]), STR_55(CODE[21]), STR_54(CODE[21]), STR_53(CODE[17]), 
;!		 -> STR_52(CODE[20]), STR_51(CODE[13]), STR_50(CODE[13]), STR_49(CODE[13]), 
;!		 -> STR_48(CODE[14]), STR_47(CODE[18]), STR_46(CODE[13]), STR_45(CODE[18]), 
;!		 -> STR_44(CODE[18]), STR_43(CODE[17]), STR_42(CODE[15]), STR_41(CODE[13]), 
;!		 -> STR_40(CODE[16]), STR_39(CODE[13]), STR_38(CODE[18]), STR_37(CODE[18]), 
;!		 -> STR_36(CODE[17]), STR_35(CODE[15]), STR_34(CODE[13]), STR_33(CODE[16]), 
;!		 -> STR_32(CODE[15]), STR_31(CODE[11]), STR_30(CODE[15]), STR_29(CODE[11]), 
;!		 -> STR_28(CODE[15]), STR_27(CODE[11]), STR_26(CODE[13]), STR_25(CODE[11]), 
;!		 -> STR_24(CODE[14]), STR_23(CODE[14]), STR_22(CODE[15]), STR_21(CODE[12]), 
;!		 -> STR_20(CODE[2]), STR_19(CODE[2]), STR_18(CODE[18]), STR_17(CODE[17]), 
;!		 -> STR_16(CODE[15]), STR_15(CODE[18]), STR_14(CODE[23]), STR_13(CODE[17]), 
;!		 -> STR_12(CODE[20]), STR_11(CODE[11]), STR_10(CODE[17]), STR_9(CODE[12]), 
;!		 -> STR_8(CODE[16]), STR_7(CODE[18]), STR_6(CODE[14]), STR_5(CODE[17]), 
;!		 -> STR_4(CODE[9]), STR_3(CODE[16]), STR_2(CODE[9]), STR_1(CODE[10]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_local_display
;!    _rtc_setting->_tx_packet
;!    _Receive_Packet->_Eco_Replay
;!    _Eco_Replay->_LCDWriteString
;!    _Creat_RTC_Packet->_Calculate_CRC
;!    _write_packet_to_page->_rom_byte_write
;!    _rom_byte_write->_WriteI2C
;!    _Creat_Packet->_MyDelay
;!    _Add_Reading_To_Packet->_Calculate_CRC
;!    _get_current_readings->_float_to_int
;!    _pow->_exp
;!    _log->_eval_poly
;!    _exp->_ldexp
;!    _ldexp->_eval_poly
;!    _floor->___ftadd
;!    ___altoft->___fttol
;!    _eval_poly->___ftadd
;!    ___ftsub->___ftadd
;!    ___ftdiv->___ftmul
;!    ___awtoft->___ftpack
;!    ___lltoft->___ftpack
;!    _float_to_int->_modf
;!    _modf->___ftadd
;!    ___ftneg->___ftmul
;!    ___attoft->___fttol
;!    ___lwtoft->___ftpack
;!    _DisplayReadings->_LCDWriteInt
;!    _LCDWriteInt->_LCDByte
;!    _data_to_center->_tx_packet
;!    _tx_packet->_Send_Packet
;!    _beep->_MyDelay
;!    _Send_Packet->_Eco_Test
;!    _Eco_Test->_LCDWriteString
;!    _LCDWriteString->_LCDByte
;!    _Check_Busy_Line->_USARTDataAvailable
;!    _USARTFlushBuffer->_USARTDataAvailable
;!    _USARTFlushBuffer->_USARTReadData
;!    _read_packet_from_page->_rom_byte_read
;!    _rom_byte_read->_WriteI2C
;!    _clear_rom->_WriteI2C
;!    _LCDGotoXY->_LCDByte
;!    _RTUInit->___ftadd
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
;!    ___lbtoft->___ftpack
;!    ___ftmul->___awtoft
;!    ___ftmul->___lbtoft
;!    ___ftadd->___ftneg
;!    _LCDInit->_LCDByte
;!    _LCDByte->_LCDBusyLoop
;!
;!Critical Paths under _ISR in COMRAM
;!
;!    _ISR->_USARTHandleRxInt
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_per_minute_reading
;!    _main->_per_second_reading
;!    _per_second_reading->_get_current_readings
;!    _per_minute_reading->_get_current_readings
;!    _local_display->_get_current_readings
;!    _get_current_readings->_voltage_to_hum
;!    _get_current_readings->_voltage_to_temp
;!    _voltage_to_temp->_pow
;!    _voltage_to_hum->_pow
;!    _pow->_exp
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
;!
;!Critical Paths under _main in BANK2
;!
;!    _main->_per_minute_reading
;!    _main->_per_second_reading
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
;! (0) _main                                                 1     1      0 1440069
;!                                             59 BANK0      1     1      0
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
;!                      _local_display
;!                 _per_minute_reading
;!                 _per_second_reading
;!                        _rtc_setting
;! ---------------------------------------------------------------------------------
;! (1) _rtc_setting                                          5     5      0  142944
;!                                             47 COMRAM     5     5      0
;!                   _Creat_RTC_Packet
;!                            _LCDByte
;!                          _LCDGotoXY
;!                        _LCDWriteInt
;!                     _LCDWriteString
;!                            _MyDelay
;!                     _Receive_Packet
;!                        _Write_b_eep
;!                               _beep
;!                    _ds1307_get_time
;!               _ds1307_set_date_time
;!                          _tx_packet
;! ---------------------------------------------------------------------------------
;! (2) _Receive_Packet                                       6     6      0   35223
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
;! (3) _Eco_Replay                                           4     4      0   17321
;!                                             32 COMRAM     4     4      0
;!                            _LCDByte
;!                     _LCDWriteString
;!                 _USARTDataAvailable
;!                   _USARTFlushBuffer
;!                      _USARTReadData
;!                     _USARTWriteChar
;! ---------------------------------------------------------------------------------
;! (3) _Check_CRC                                           15    15      0     473
;!                                             19 COMRAM    15    15      0
;! ---------------------------------------------------------------------------------
;! (2) _Creat_RTC_Packet                                     7     7      0    4167
;!                                             31 COMRAM     7     7      0
;!                      _Calculate_CRC
;!                       _Clear_Packet
;!                       _Creat_Packet
;! ---------------------------------------------------------------------------------
;! (1) _per_second_reading                                   7     7      0  408268
;!                                             56 BANK0      3     3      0
;!                                              0 BANK2      4     4      0
;!              _Add_Reading_To_Packet
;!                       _Clear_Packet
;!                       _Creat_Packet
;!                    _DisplayReadings
;!                            _LCDByte
;!                          _LCDGotoXY
;!                     _LCDWriteString
;!                            _MyDelay
;!                        _Write_b_eep
;!                               _beep
;!               _get_current_readings
;!              _read_packet_from_page
;!                          _tx_packet
;!               _write_packet_to_page
;! ---------------------------------------------------------------------------------
;! (1) _per_minute_reading                                   7     7      0  408268
;!                                             56 BANK0      3     3      0
;!                                              0 BANK2      4     4      0
;!              _Add_Reading_To_Packet
;!                       _Clear_Packet
;!                       _Creat_Packet
;!                    _DisplayReadings
;!                            _LCDByte
;!                          _LCDGotoXY
;!                     _LCDWriteString
;!                            _MyDelay
;!                        _Write_b_eep
;!                               _beep
;!               _get_current_readings
;!              _read_packet_from_page
;!                          _tx_packet
;!               _write_packet_to_page
;! ---------------------------------------------------------------------------------
;! (2) _write_packet_to_page                                 9     7      2     864
;!                                             30 COMRAM     9     7      2
;!                     _rom_byte_write
;! ---------------------------------------------------------------------------------
;! (3) _rom_byte_write                                       8     5      3     500
;!                                             22 COMRAM     8     5      3
;!                            _IdleI2C
;!                           _WriteI2C
;! ---------------------------------------------------------------------------------
;! (3) _Creat_Packet                                         2     1      1    3787
;!                                             22 COMRAM     2     1      1
;!                            _MyDelay
;!                    _ds1307_get_time
;! ---------------------------------------------------------------------------------
;! (2) _Add_Reading_To_Packet                               22    14      8    1405
;!                                             31 COMRAM    22    14      8
;!                      _Calculate_CRC
;! ---------------------------------------------------------------------------------
;! (3) _Calculate_CRC                                       12    10      2     136
;!                                             19 COMRAM    12    10      2
;! ---------------------------------------------------------------------------------
;! (1) _local_display                                        1     1      0  308078
;!                                             87 COMRAM     1     1      0
;!                    _DisplayReadings
;!               _get_current_readings
;! ---------------------------------------------------------------------------------
;! (2) _get_current_readings                                19    19      0  273331
;!                                             41 BANK0     15    15      0
;!                            _BusyADC
;!                           _CloseADC
;!                         _ConvertADC
;!                            _OpenADC
;!                            _ReadADC
;!                         _SetChanADC
;!                            ___ftdiv
;!                            ___ftmul
;!                           ___lwtoft
;!                       _float_to_int
;!                     _voltage_to_hum
;!                    _voltage_to_temp
;! ---------------------------------------------------------------------------------
;! (3) _voltage_to_temp                                     18    15      3  119004
;!                                             23 BANK0     18    15      3
;!                            ___ftadd
;!                            ___ftmul
;!                            ___ftneg
;!                                _pow
;! ---------------------------------------------------------------------------------
;! (3) _voltage_to_hum                                      18    15      3  119004
;!                                             23 BANK0     18    15      3
;!                            ___ftadd
;!                            ___ftmul
;!                            ___ftneg
;!                                _pow
;! ---------------------------------------------------------------------------------
;! (4) _pow                                                 17    11      6  103878
;!                                              6 BANK0     17    11      6
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftneg
;!                            ___fttol
;!                           ___lltoft
;!                                _exp
;!                                _log
;! ---------------------------------------------------------------------------------
;! (5) _log                                                  5     2      3   33700
;!                                             73 COMRAM     5     2      3
;!                           ___awtoft
;!                            ___ftadd
;!                            ___ftmul
;!                          _eval_poly
;!                              _frexp
;! ---------------------------------------------------------------------------------
;! (5) _exp                                                 13    10      3   55605
;!                                             80 COMRAM     7     4      3
;!                                              0 BANK0      6     6      0
;!                           ___awtoft
;!                            ___ftdiv
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftneg
;!                            ___ftsub
;!                            ___fttol
;!                          _eval_poly
;!                              _floor
;!                              _ldexp
;!                                _log (ARG)
;! ---------------------------------------------------------------------------------
;! (6) _ldexp                                                7     2      5     513
;!                                             73 COMRAM     7     2      5
;!                          _eval_poly (ARG)
;! ---------------------------------------------------------------------------------
;! (6) _floor                                                8     5      3   14028
;!                                             61 COMRAM     8     5      3
;!                           ___altoft
;!                            ___ftadd
;!                             ___ftge
;!                            ___fttol
;!                              _frexp
;! ---------------------------------------------------------------------------------
;! (6) _frexp                                                7     2      5     630
;!                                             19 COMRAM     7     2      5
;! ---------------------------------------------------------------------------------
;! (7) ___ftge                                               9     3      6    2046
;!                                             19 COMRAM     9     3      6
;! ---------------------------------------------------------------------------------
;! (7) ___altoft                                            10     6      4    3014
;!                                             34 COMRAM    10     6      4
;!                           ___ftpack
;!                            ___fttol (ARG)
;! ---------------------------------------------------------------------------------
;! (6) _eval_poly                                           12     5      7   15461
;!                                             61 COMRAM    12     5      7
;!                            ___ftadd
;!                            ___ftmul
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (7) ___wmul                                               6     2      4     540
;!                                             19 COMRAM     6     2      4
;! ---------------------------------------------------------------------------------
;! (6) ___ftsub                                              6     0      6    7393
;!                                             61 COMRAM     6     0      6
;!                           ___awtoft (ARG)
;!                            ___ftadd
;! ---------------------------------------------------------------------------------
;! (6) ___ftdiv                                             15     9      6    4037
;!                                             46 COMRAM    15     9      6
;!                            ___ftmul (ARG)
;!                           ___ftpack
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (6) ___awtoft                                             4     1      3    3020
;!                                             27 COMRAM     4     1      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (5) ___lltoft                                             9     5      4    2912
;!                                             27 COMRAM     9     5      4
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (3) _float_to_int                                        17    14      3   20278
;!                                             70 COMRAM    17    14      3
;!                            ___ftmul
;!                            ___fttol
;!                               _modf
;! ---------------------------------------------------------------------------------
;! (4) _modf                                                 9     4      5   11618
;!                                             61 COMRAM     9     4      5
;!                           ___attoft
;!                            ___ftadd
;!                            ___ftneg
;!                            ___fttol
;! ---------------------------------------------------------------------------------
;! (7) ___fttol                                             15    11      4     833
;!                                             19 COMRAM    15    11      4
;! ---------------------------------------------------------------------------------
;! (6) ___ftneg                                              3     0      3     504
;!                                             46 COMRAM     3     0      3
;!                            ___ftmul (ARG)
;! ---------------------------------------------------------------------------------
;! (5) ___attoft                                             4     1      3    2943
;!                                             34 COMRAM     4     1      3
;!                           ___ftpack
;!                            ___fttol (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___lwtoft                                             3     0      3    3072
;!                                             27 COMRAM     3     0      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (3) _SetChanADC                                           2     2      0      31
;!                                             19 COMRAM     2     2      0
;! ---------------------------------------------------------------------------------
;! (3) _ReadADC                                              2     0      2       0
;!                                             19 COMRAM     2     0      2
;! ---------------------------------------------------------------------------------
;! (3) _OpenADC                                              3     2      1     201
;!                                             19 COMRAM     3     2      1
;! ---------------------------------------------------------------------------------
;! (3) _ConvertADC                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _CloseADC                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _BusyADC                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _DisplayReadings                                      7     7      0   34707
;!                                             42 COMRAM     7     7      0
;!                            _LCDByte
;!                          _LCDGotoXY
;!                        _LCDWriteInt
;!                     _LCDWriteString
;! ---------------------------------------------------------------------------------
;! (2) _LCDWriteInt                                         14    11      3    9675
;!                                             28 COMRAM    14    11      3
;!                            _LCDByte
;!                            ___awdiv
;!                            ___awmod
;! ---------------------------------------------------------------------------------
;! (3) ___awmod                                              6     2      4     741
;!                                             19 COMRAM     6     2      4
;! ---------------------------------------------------------------------------------
;! (3) ___awdiv                                              8     4      4     753
;!                                             19 COMRAM     8     4      4
;! ---------------------------------------------------------------------------------
;! (1) _getkey                                               3     1      2     111
;!                                             19 COMRAM     3     1      2
;! ---------------------------------------------------------------------------------
;! (1) _data_to_center                                       2     2      0   94196
;!                                             47 COMRAM     2     2      0
;!                       _Clear_Packet
;!                            _LCDByte
;!                          _LCDGotoXY
;!                     _LCDWriteString
;!                            _MyDelay
;!                        _Write_b_eep
;!                               _beep
;!                          _clear_rom
;!              _read_packet_from_page
;!                          _tx_packet
;! ---------------------------------------------------------------------------------
;! (2) _tx_packet                                            2     2      0   59611
;!                                             45 COMRAM     2     2      0
;!                            _LCDByte
;!                     _LCDWriteString
;!                            _MyDelay
;!                        _Send_Packet
;!                               _beep
;! ---------------------------------------------------------------------------------
;! (3) _beep                                                 2     0      2    4146
;!                                             22 COMRAM     2     0      2
;!                            _MyDelay
;! ---------------------------------------------------------------------------------
;! (3) _Send_Packet                                          7     7      0   34975
;!                                             38 COMRAM     7     7      0
;!                           _Eco_Test
;!                            _LCDByte
;!                     _LCDWriteString
;!                 _USARTDataAvailable
;!                   _USARTFlushBuffer
;!                      _USARTReadData
;!                     _USARTWriteChar
;! ---------------------------------------------------------------------------------
;! (4) _Eco_Test                                             6     6      0   17469
;!                                             32 COMRAM     6     6      0
;!                    _Check_Busy_Line
;!                            _LCDByte
;!                     _LCDWriteString
;!                 _USARTDataAvailable
;!                   _USARTFlushBuffer
;!                      _USARTReadData
;!                     _USARTWriteChar
;! ---------------------------------------------------------------------------------
;! (4) _USARTWriteChar                                       1     1      0      31
;!                                             19 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _LCDWriteString                                       4     2      2   11750
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
;! (2) _read_packet_from_page                               10     8      2     657
;!                                             30 COMRAM    10     8      2
;!                      _rom_byte_read
;! ---------------------------------------------------------------------------------
;! (3) _rom_byte_read                                        8     6      2     275
;!                                             22 COMRAM     8     6      2
;!                            _IdleI2C
;!                            _ReadI2C
;!                           _WriteI2C
;! ---------------------------------------------------------------------------------
;! (2) _clear_rom                                            4     4      0     167
;!                                             22 COMRAM     4     4      0
;!                            _IdleI2C
;!                           _WriteI2C
;! ---------------------------------------------------------------------------------
;! (2) _LCDGotoXY                                            2     1      1    7671
;!                                             28 COMRAM     2     1      1
;!                            _LCDByte
;! ---------------------------------------------------------------------------------
;! (3) _Clear_Packet                                         1     1      0     102
;!                                             19 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _RTUInit                                              5     5      0   36126
;!                                             61 COMRAM     4     4      0
;!                            _LCDByte
;!                            _LCDInit
;!                            _MyDelay
;!                            _OpenI2C
;!                         _Read_b_eep
;!                          _USARTInit
;!                        _Write_b_eep
;!                            ___ftadd
;!                            ___ftmul
;!                           ___lbtoft
;!                    _ds1307_get_date
;!                    _ds1307_get_time
;!                        _ds1307_init
;!               _ds1307_set_date_time
;! ---------------------------------------------------------------------------------
;! (2) _ds1307_set_date_time                                 0     0      0     170
;!                            _IdleI2C
;!                           _WriteI2C
;!                            _bin2bcd
;! ---------------------------------------------------------------------------------
;! (2) _ds1307_init                                          1     1      0     411
;!                                             22 COMRAM     1     1      0
;!                            _IdleI2C
;!                            _ReadI2C
;!                           _WriteI2C
;!                            _bcd2bin
;!                            _bin2bcd
;! ---------------------------------------------------------------------------------
;! (3) _bin2bcd                                              3     3      0     139
;!                                             19 COMRAM     3     3      0
;! ---------------------------------------------------------------------------------
;! (2) _ds1307_get_time                                      0     0      0     164
;!                            _IdleI2C
;!                            _ReadI2C
;!                           _WriteI2C
;!                            _bcd2bin
;! ---------------------------------------------------------------------------------
;! (2) _ds1307_get_date                                      0     0      0     164
;!                            _IdleI2C
;!                            _ReadI2C
;!                           _WriteI2C
;!                            _bcd2bin
;! ---------------------------------------------------------------------------------
;! (3) _bcd2bin                                              3     3      0     133
;!                                             19 COMRAM     3     3      0
;! ---------------------------------------------------------------------------------
;! (3) _WriteI2C                                             2     2      0      31
;!                                             20 COMRAM     2     2      0
;!                            _IdleI2C
;! ---------------------------------------------------------------------------------
;! (4) _IdleI2C                                              1     1      0       0
;!                                             19 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (3) _ReadI2C                                              1     1      0       0
;!                                             19 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) ___lbtoft                                             4     1      3    2764
;!                                             27 COMRAM     4     1      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (7) ___ftmul                                             15     9      6    7145
;!                                             31 COMRAM    15     9      6
;!                           ___awtoft (ARG)
;!                           ___ftpack
;!                           ___lbtoft (ARG)
;!                           ___lwtoft (ARG)
;!                              _frexp (ARG)
;! ---------------------------------------------------------------------------------
;! (7) ___ftadd                                             12     6      6    7060
;!                                             49 COMRAM    12     6      6
;!                           ___awtoft (ARG)
;!                            ___ftmul (ARG)
;!                            ___ftneg (ARG)
;!                           ___ftpack
;!                           ___lbtoft (ARG)
;!                             ___wmul (ARG)
;!                              _frexp (ARG)
;! ---------------------------------------------------------------------------------
;! (8) ___ftpack                                             8     3      5    2733
;!                                             19 COMRAM     8     3      5
;! ---------------------------------------------------------------------------------
;! (2) _Write_b_eep                                          4     1      3    1485
;!                                             19 COMRAM     4     1      3
;! ---------------------------------------------------------------------------------
;! (2) _USARTInit                                            4     2      2     108
;!                                             19 COMRAM     4     2      2
;! ---------------------------------------------------------------------------------
;! (2) _Read_b_eep                                           2     0      2    1494
;!                                             19 COMRAM     2     0      2
;! ---------------------------------------------------------------------------------
;! (2) _OpenI2C                                              2     1      1     139
;!                                             19 COMRAM     2     1      1
;! ---------------------------------------------------------------------------------
;! (4) _MyDelay                                              3     1      2    3268
;!                                             19 COMRAM     3     1      2
;! ---------------------------------------------------------------------------------
;! (2) _LCDInit                                              3     3      0    5639
;!                                             28 COMRAM     3     3      0
;!                        _LCDBusyLoop
;!                            _LCDByte
;! ---------------------------------------------------------------------------------
;! (5) _LCDByte                                              6     5      1    5333
;!                                             22 COMRAM     6     5      1
;!                        _LCDBusyLoop
;! ---------------------------------------------------------------------------------
;! (6) _LCDBusyLoop                                          3     3      0     176
;!                                             19 COMRAM     3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 8
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (9) _ISR                                                 14    14      0      23
;!                                              5 COMRAM    14    14      0
;!                         _SecondsInt
;!                   _USARTHandleRxInt
;! ---------------------------------------------------------------------------------
;! (10) _USARTHandleRxInt                                    5     5      0      23
;!                                              0 COMRAM     5     5      0
;! ---------------------------------------------------------------------------------
;! (10) _SecondsInt                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 10
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
;!     ___ftadd
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftmul (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         ___lbtoft (ARG)
;!           ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!         _frexp (ARG)
;!       ___ftneg (ARG)
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!       ___ftpack (ARG)
;!       ___lbtoft (ARG)
;!         ___ftpack
;!       ___wmul (ARG)
;!       _frexp (ARG)
;!     ___ftmul
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftpack (ARG)
;!       ___lbtoft (ARG)
;!         ___ftpack
;!       ___lwtoft (ARG)
;!         ___ftpack
;!       _frexp (ARG)
;!     ___lbtoft
;!       ___ftpack
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
;!     _LCDGotoXY
;!       _LCDByte
;!         _LCDBusyLoop
;!     _LCDWriteString
;!       _LCDByte
;!         _LCDBusyLoop
;!     _MyDelay
;!     _Write_b_eep
;!     _beep
;!       _MyDelay
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
;!       _beep
;!         _MyDelay
;!   _ds1307_get_time
;!     _IdleI2C
;!     _ReadI2C
;!     _WriteI2C
;!       _IdleI2C
;!     _bcd2bin
;!   _getkey
;!   _local_display
;!     _DisplayReadings
;!       _LCDByte
;!         _LCDBusyLoop
;!       _LCDGotoXY
;!         _LCDByte
;!           _LCDBusyLoop
;!       _LCDWriteInt
;!         _LCDByte
;!           _LCDBusyLoop
;!         ___awdiv
;!         ___awmod
;!       _LCDWriteString
;!         _LCDByte
;!           _LCDBusyLoop
;!     _get_current_readings
;!       _BusyADC
;!       _CloseADC
;!       _ConvertADC
;!       _OpenADC
;!       _ReadADC
;!       _SetChanADC
;!       ___ftdiv
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftmul
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         ___lbtoft (ARG)
;!           ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!         _frexp (ARG)
;!       ___lwtoft
;!         ___ftpack
;!       _float_to_int
;!         ___ftmul
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!         ___fttol
;!         _modf
;!           ___attoft
;!             ___ftpack
;!             ___fttol (ARG)
;!           ___ftadd
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!             ___ftneg (ARG)
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                 _frexp (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!           ___ftneg
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!           ___fttol
;!       _voltage_to_hum
;!         ___ftadd
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!           ___ftneg (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___wmul (ARG)
;!           _frexp (ARG)
;!         ___ftmul
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!         ___ftneg
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!         _pow
;!           ___ftge
;!           ___ftmul
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!           ___ftneg
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!           ___fttol
;!           ___lltoft
;!             ___ftpack
;!           _exp
;!             ___awtoft
;!               ___ftpack
;!             ___ftdiv
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                 _frexp (ARG)
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!             ___ftge
;!             ___ftmul
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!             ___ftneg
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                 _frexp (ARG)
;!             ___ftsub
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___lwtoft (ARG)
;!                       ___ftpack
;!                     _frexp (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!             ___fttol
;!             _eval_poly
;!               ___ftadd
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___lwtoft (ARG)
;!                       ___ftpack
;!                     _frexp (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftmul
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                 _frexp (ARG)
;!               ___wmul
;!             _floor
;!               ___altoft
;!                 ___ftpack
;!                 ___fttol (ARG)
;!               ___ftadd
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___lwtoft (ARG)
;!                       ___ftpack
;!                     _frexp (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftge
;!               ___fttol
;!               _frexp
;!             _ldexp
;!               _eval_poly (ARG)
;!                 ___ftadd
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___lwtoft (ARG)
;!                       ___ftpack
;!                     _frexp (ARG)
;!                   ___ftneg (ARG)
;!                     ___ftmul (ARG)
;!                       ___awtoft (ARG)
;!                         ___ftpack
;!                       ___ftpack (ARG)
;!                       ___lbtoft (ARG)
;!                         ___ftpack
;!                       ___lwtoft (ARG)
;!                         ___ftpack
;!                       _frexp (ARG)
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___wmul (ARG)
;!                   _frexp (ARG)
;!                 ___ftmul
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!                 ___wmul
;!             _log (ARG)
;!               ___awtoft
;!                 ___ftpack
;!               ___ftadd
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___lwtoft (ARG)
;!                       ___ftpack
;!                     _frexp (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftmul
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                 _frexp (ARG)
;!               _eval_poly
;!                 ___ftadd
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___lwtoft (ARG)
;!                       ___ftpack
;!                     _frexp (ARG)
;!                   ___ftneg (ARG)
;!                     ___ftmul (ARG)
;!                       ___awtoft (ARG)
;!                         ___ftpack
;!                       ___ftpack (ARG)
;!                       ___lbtoft (ARG)
;!                         ___ftpack
;!                       ___lwtoft (ARG)
;!                         ___ftpack
;!                       _frexp (ARG)
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___wmul (ARG)
;!                   _frexp (ARG)
;!                 ___ftmul
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!                 ___wmul
;!               _frexp
;!           _log
;!             ___awtoft
;!               ___ftpack
;!             ___ftadd
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                 _frexp (ARG)
;!               ___ftneg (ARG)
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftmul
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!             _eval_poly
;!               ___ftadd
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___lwtoft (ARG)
;!                       ___ftpack
;!                     _frexp (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftmul
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                 _frexp (ARG)
;!               ___wmul
;!             _frexp
;!       _voltage_to_temp
;!         ___ftadd
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!           ___ftneg (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___wmul (ARG)
;!           _frexp (ARG)
;!         ___ftmul
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!         ___ftneg
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!         _pow
;!           ___ftge
;!           ___ftmul
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!           ___ftneg
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!           ___fttol
;!           ___lltoft
;!             ___ftpack
;!           _exp
;!             ___awtoft
;!               ___ftpack
;!             ___ftdiv
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                 _frexp (ARG)
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!             ___ftge
;!             ___ftmul
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!             ___ftneg
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                 _frexp (ARG)
;!             ___ftsub
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___lwtoft (ARG)
;!                       ___ftpack
;!                     _frexp (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!             ___fttol
;!             _eval_poly
;!               ___ftadd
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___lwtoft (ARG)
;!                       ___ftpack
;!                     _frexp (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftmul
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                 _frexp (ARG)
;!               ___wmul
;!             _floor
;!               ___altoft
;!                 ___ftpack
;!                 ___fttol (ARG)
;!               ___ftadd
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___lwtoft (ARG)
;!                       ___ftpack
;!                     _frexp (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftge
;!               ___fttol
;!               _frexp
;!             _ldexp
;!               _eval_poly (ARG)
;!                 ___ftadd
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___lwtoft (ARG)
;!                       ___ftpack
;!                     _frexp (ARG)
;!                   ___ftneg (ARG)
;!                     ___ftmul (ARG)
;!                       ___awtoft (ARG)
;!                         ___ftpack
;!                       ___ftpack (ARG)
;!                       ___lbtoft (ARG)
;!                         ___ftpack
;!                       ___lwtoft (ARG)
;!                         ___ftpack
;!                       _frexp (ARG)
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___wmul (ARG)
;!                   _frexp (ARG)
;!                 ___ftmul
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!                 ___wmul
;!             _log (ARG)
;!               ___awtoft
;!                 ___ftpack
;!               ___ftadd
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___lwtoft (ARG)
;!                       ___ftpack
;!                     _frexp (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftmul
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                 _frexp (ARG)
;!               _eval_poly
;!                 ___ftadd
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___lwtoft (ARG)
;!                       ___ftpack
;!                     _frexp (ARG)
;!                   ___ftneg (ARG)
;!                     ___ftmul (ARG)
;!                       ___awtoft (ARG)
;!                         ___ftpack
;!                       ___ftpack (ARG)
;!                       ___lbtoft (ARG)
;!                         ___ftpack
;!                       ___lwtoft (ARG)
;!                         ___ftpack
;!                       _frexp (ARG)
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___wmul (ARG)
;!                   _frexp (ARG)
;!                 ___ftmul
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!                 ___wmul
;!               _frexp
;!           _log
;!             ___awtoft
;!               ___ftpack
;!             ___ftadd
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                 _frexp (ARG)
;!               ___ftneg (ARG)
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftmul
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!             _eval_poly
;!               ___ftadd
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___lwtoft (ARG)
;!                       ___ftpack
;!                     _frexp (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftmul
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                 _frexp (ARG)
;!               ___wmul
;!             _frexp
;!   _per_minute_reading
;!     _Add_Reading_To_Packet
;!       _Calculate_CRC
;!     _Clear_Packet
;!     _Creat_Packet
;!       _MyDelay
;!       _ds1307_get_time
;!         _IdleI2C
;!         _ReadI2C
;!         _WriteI2C
;!           _IdleI2C
;!         _bcd2bin
;!     _DisplayReadings
;!       _LCDByte
;!         _LCDBusyLoop
;!       _LCDGotoXY
;!         _LCDByte
;!           _LCDBusyLoop
;!       _LCDWriteInt
;!         _LCDByte
;!           _LCDBusyLoop
;!         ___awdiv
;!         ___awmod
;!       _LCDWriteString
;!         _LCDByte
;!           _LCDBusyLoop
;!     _LCDByte
;!       _LCDBusyLoop
;!     _LCDGotoXY
;!       _LCDByte
;!         _LCDBusyLoop
;!     _LCDWriteString
;!       _LCDByte
;!         _LCDBusyLoop
;!     _MyDelay
;!     _Write_b_eep
;!     _beep
;!       _MyDelay
;!     _get_current_readings
;!       _BusyADC
;!       _CloseADC
;!       _ConvertADC
;!       _OpenADC
;!       _ReadADC
;!       _SetChanADC
;!       ___ftdiv
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftmul
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         ___lbtoft (ARG)
;!           ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!         _frexp (ARG)
;!       ___lwtoft
;!         ___ftpack
;!       _float_to_int
;!         ___ftmul
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!         ___fttol
;!         _modf
;!           ___attoft
;!             ___ftpack
;!             ___fttol (ARG)
;!           ___ftadd
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!             ___ftneg (ARG)
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                 _frexp (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!           ___ftneg
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!           ___fttol
;!       _voltage_to_hum
;!         ___ftadd
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!           ___ftneg (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___wmul (ARG)
;!           _frexp (ARG)
;!         ___ftmul
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!         ___ftneg
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!         _pow
;!           ___ftge
;!           ___ftmul
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!           ___ftneg
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!           ___fttol
;!           ___lltoft
;!             ___ftpack
;!           _exp
;!             ___awtoft
;!               ___ftpack
;!             ___ftdiv
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                 _frexp (ARG)
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!             ___ftge
;!             ___ftmul
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!             ___ftneg
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                 _frexp (ARG)
;!             ___ftsub
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___lwtoft (ARG)
;!                       ___ftpack
;!                     _frexp (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!             ___fttol
;!             _eval_poly
;!               ___ftadd
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___lwtoft (ARG)
;!                       ___ftpack
;!                     _frexp (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftmul
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                 _frexp (ARG)
;!               ___wmul
;!             _floor
;!               ___altoft
;!                 ___ftpack
;!                 ___fttol (ARG)
;!               ___ftadd
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___lwtoft (ARG)
;!                       ___ftpack
;!                     _frexp (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftge
;!               ___fttol
;!               _frexp
;!             _ldexp
;!               _eval_poly (ARG)
;!                 ___ftadd
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___lwtoft (ARG)
;!                       ___ftpack
;!                     _frexp (ARG)
;!                   ___ftneg (ARG)
;!                     ___ftmul (ARG)
;!                       ___awtoft (ARG)
;!                         ___ftpack
;!                       ___ftpack (ARG)
;!                       ___lbtoft (ARG)
;!                         ___ftpack
;!                       ___lwtoft (ARG)
;!                         ___ftpack
;!                       _frexp (ARG)
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___wmul (ARG)
;!                   _frexp (ARG)
;!                 ___ftmul
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!                 ___wmul
;!             _log (ARG)
;!               ___awtoft
;!                 ___ftpack
;!               ___ftadd
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___lwtoft (ARG)
;!                       ___ftpack
;!                     _frexp (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftmul
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                 _frexp (ARG)
;!               _eval_poly
;!                 ___ftadd
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___lwtoft (ARG)
;!                       ___ftpack
;!                     _frexp (ARG)
;!                   ___ftneg (ARG)
;!                     ___ftmul (ARG)
;!                       ___awtoft (ARG)
;!                         ___ftpack
;!                       ___ftpack (ARG)
;!                       ___lbtoft (ARG)
;!                         ___ftpack
;!                       ___lwtoft (ARG)
;!                         ___ftpack
;!                       _frexp (ARG)
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___wmul (ARG)
;!                   _frexp (ARG)
;!                 ___ftmul
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!                 ___wmul
;!               _frexp
;!           _log
;!             ___awtoft
;!               ___ftpack
;!             ___ftadd
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                 _frexp (ARG)
;!               ___ftneg (ARG)
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftmul
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!             _eval_poly
;!               ___ftadd
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___lwtoft (ARG)
;!                       ___ftpack
;!                     _frexp (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftmul
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                 _frexp (ARG)
;!               ___wmul
;!             _frexp
;!       _voltage_to_temp
;!         ___ftadd
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!           ___ftneg (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___wmul (ARG)
;!           _frexp (ARG)
;!         ___ftmul
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!         ___ftneg
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!         _pow
;!           ___ftge
;!           ___ftmul
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!           ___ftneg
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!           ___fttol
;!           ___lltoft
;!             ___ftpack
;!           _exp
;!             ___awtoft
;!               ___ftpack
;!             ___ftdiv
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                 _frexp (ARG)
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!             ___ftge
;!             ___ftmul
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!             ___ftneg
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                 _frexp (ARG)
;!             ___ftsub
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___lwtoft (ARG)
;!                       ___ftpack
;!                     _frexp (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!             ___fttol
;!             _eval_poly
;!               ___ftadd
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___lwtoft (ARG)
;!                       ___ftpack
;!                     _frexp (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftmul
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                 _frexp (ARG)
;!               ___wmul
;!             _floor
;!               ___altoft
;!                 ___ftpack
;!                 ___fttol (ARG)
;!               ___ftadd
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___lwtoft (ARG)
;!                       ___ftpack
;!                     _frexp (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftge
;!               ___fttol
;!               _frexp
;!             _ldexp
;!               _eval_poly (ARG)
;!                 ___ftadd
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___lwtoft (ARG)
;!                       ___ftpack
;!                     _frexp (ARG)
;!                   ___ftneg (ARG)
;!                     ___ftmul (ARG)
;!                       ___awtoft (ARG)
;!                         ___ftpack
;!                       ___ftpack (ARG)
;!                       ___lbtoft (ARG)
;!                         ___ftpack
;!                       ___lwtoft (ARG)
;!                         ___ftpack
;!                       _frexp (ARG)
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___wmul (ARG)
;!                   _frexp (ARG)
;!                 ___ftmul
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!                 ___wmul
;!             _log (ARG)
;!               ___awtoft
;!                 ___ftpack
;!               ___ftadd
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___lwtoft (ARG)
;!                       ___ftpack
;!                     _frexp (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftmul
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                 _frexp (ARG)
;!               _eval_poly
;!                 ___ftadd
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___lwtoft (ARG)
;!                       ___ftpack
;!                     _frexp (ARG)
;!                   ___ftneg (ARG)
;!                     ___ftmul (ARG)
;!                       ___awtoft (ARG)
;!                         ___ftpack
;!                       ___ftpack (ARG)
;!                       ___lbtoft (ARG)
;!                         ___ftpack
;!                       ___lwtoft (ARG)
;!                         ___ftpack
;!                       _frexp (ARG)
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___wmul (ARG)
;!                   _frexp (ARG)
;!                 ___ftmul
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!                 ___wmul
;!               _frexp
;!           _log
;!             ___awtoft
;!               ___ftpack
;!             ___ftadd
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                 _frexp (ARG)
;!               ___ftneg (ARG)
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftmul
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!             _eval_poly
;!               ___ftadd
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___lwtoft (ARG)
;!                       ___ftpack
;!                     _frexp (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftmul
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                 _frexp (ARG)
;!               ___wmul
;!             _frexp
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
;!       _beep
;!         _MyDelay
;!     _write_packet_to_page
;!       _rom_byte_write
;!         _IdleI2C
;!         _WriteI2C
;!           _IdleI2C
;!   _per_second_reading
;!     _Add_Reading_To_Packet
;!       _Calculate_CRC
;!     _Clear_Packet
;!     _Creat_Packet
;!       _MyDelay
;!       _ds1307_get_time
;!         _IdleI2C
;!         _ReadI2C
;!         _WriteI2C
;!           _IdleI2C
;!         _bcd2bin
;!     _DisplayReadings
;!       _LCDByte
;!         _LCDBusyLoop
;!       _LCDGotoXY
;!         _LCDByte
;!           _LCDBusyLoop
;!       _LCDWriteInt
;!         _LCDByte
;!           _LCDBusyLoop
;!         ___awdiv
;!         ___awmod
;!       _LCDWriteString
;!         _LCDByte
;!           _LCDBusyLoop
;!     _LCDByte
;!       _LCDBusyLoop
;!     _LCDGotoXY
;!       _LCDByte
;!         _LCDBusyLoop
;!     _LCDWriteString
;!       _LCDByte
;!         _LCDBusyLoop
;!     _MyDelay
;!     _Write_b_eep
;!     _beep
;!       _MyDelay
;!     _get_current_readings
;!       _BusyADC
;!       _CloseADC
;!       _ConvertADC
;!       _OpenADC
;!       _ReadADC
;!       _SetChanADC
;!       ___ftdiv
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftmul
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         ___lbtoft (ARG)
;!           ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!         _frexp (ARG)
;!       ___lwtoft
;!         ___ftpack
;!       _float_to_int
;!         ___ftmul
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!         ___fttol
;!         _modf
;!           ___attoft
;!             ___ftpack
;!             ___fttol (ARG)
;!           ___ftadd
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!             ___ftneg (ARG)
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                 _frexp (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!           ___ftneg
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!           ___fttol
;!       _voltage_to_hum
;!         ___ftadd
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!           ___ftneg (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___wmul (ARG)
;!           _frexp (ARG)
;!         ___ftmul
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!         ___ftneg
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!         _pow
;!           ___ftge
;!           ___ftmul
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!           ___ftneg
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!           ___fttol
;!           ___lltoft
;!             ___ftpack
;!           _exp
;!             ___awtoft
;!               ___ftpack
;!             ___ftdiv
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                 _frexp (ARG)
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!             ___ftge
;!             ___ftmul
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!             ___ftneg
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                 _frexp (ARG)
;!             ___ftsub
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___lwtoft (ARG)
;!                       ___ftpack
;!                     _frexp (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!             ___fttol
;!             _eval_poly
;!               ___ftadd
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___lwtoft (ARG)
;!                       ___ftpack
;!                     _frexp (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftmul
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                 _frexp (ARG)
;!               ___wmul
;!             _floor
;!               ___altoft
;!                 ___ftpack
;!                 ___fttol (ARG)
;!               ___ftadd
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___lwtoft (ARG)
;!                       ___ftpack
;!                     _frexp (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftge
;!               ___fttol
;!               _frexp
;!             _ldexp
;!               _eval_poly (ARG)
;!                 ___ftadd
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___lwtoft (ARG)
;!                       ___ftpack
;!                     _frexp (ARG)
;!                   ___ftneg (ARG)
;!                     ___ftmul (ARG)
;!                       ___awtoft (ARG)
;!                         ___ftpack
;!                       ___ftpack (ARG)
;!                       ___lbtoft (ARG)
;!                         ___ftpack
;!                       ___lwtoft (ARG)
;!                         ___ftpack
;!                       _frexp (ARG)
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___wmul (ARG)
;!                   _frexp (ARG)
;!                 ___ftmul
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!                 ___wmul
;!             _log (ARG)
;!               ___awtoft
;!                 ___ftpack
;!               ___ftadd
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___lwtoft (ARG)
;!                       ___ftpack
;!                     _frexp (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftmul
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                 _frexp (ARG)
;!               _eval_poly
;!                 ___ftadd
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___lwtoft (ARG)
;!                       ___ftpack
;!                     _frexp (ARG)
;!                   ___ftneg (ARG)
;!                     ___ftmul (ARG)
;!                       ___awtoft (ARG)
;!                         ___ftpack
;!                       ___ftpack (ARG)
;!                       ___lbtoft (ARG)
;!                         ___ftpack
;!                       ___lwtoft (ARG)
;!                         ___ftpack
;!                       _frexp (ARG)
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___wmul (ARG)
;!                   _frexp (ARG)
;!                 ___ftmul
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!                 ___wmul
;!               _frexp
;!           _log
;!             ___awtoft
;!               ___ftpack
;!             ___ftadd
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                 _frexp (ARG)
;!               ___ftneg (ARG)
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftmul
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!             _eval_poly
;!               ___ftadd
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___lwtoft (ARG)
;!                       ___ftpack
;!                     _frexp (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftmul
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                 _frexp (ARG)
;!               ___wmul
;!             _frexp
;!       _voltage_to_temp
;!         ___ftadd
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!           ___ftneg (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___wmul (ARG)
;!           _frexp (ARG)
;!         ___ftmul
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _frexp (ARG)
;!         ___ftneg
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!         _pow
;!           ___ftge
;!           ___ftmul
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _frexp (ARG)
;!           ___ftneg
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!           ___fttol
;!           ___lltoft
;!             ___ftpack
;!           _exp
;!             ___awtoft
;!               ___ftpack
;!             ___ftdiv
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                 _frexp (ARG)
;!               ___ftpack (ARG)
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!             ___ftge
;!             ___ftmul
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!             ___ftneg
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                 _frexp (ARG)
;!             ___ftsub
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___lwtoft (ARG)
;!                       ___ftpack
;!                     _frexp (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!             ___fttol
;!             _eval_poly
;!               ___ftadd
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___lwtoft (ARG)
;!                       ___ftpack
;!                     _frexp (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftmul
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                 _frexp (ARG)
;!               ___wmul
;!             _floor
;!               ___altoft
;!                 ___ftpack
;!                 ___fttol (ARG)
;!               ___ftadd
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___lwtoft (ARG)
;!                       ___ftpack
;!                     _frexp (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftge
;!               ___fttol
;!               _frexp
;!             _ldexp
;!               _eval_poly (ARG)
;!                 ___ftadd
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___lwtoft (ARG)
;!                       ___ftpack
;!                     _frexp (ARG)
;!                   ___ftneg (ARG)
;!                     ___ftmul (ARG)
;!                       ___awtoft (ARG)
;!                         ___ftpack
;!                       ___ftpack (ARG)
;!                       ___lbtoft (ARG)
;!                         ___ftpack
;!                       ___lwtoft (ARG)
;!                         ___ftpack
;!                       _frexp (ARG)
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___wmul (ARG)
;!                   _frexp (ARG)
;!                 ___ftmul
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!                 ___wmul
;!             _log (ARG)
;!               ___awtoft
;!                 ___ftpack
;!               ___ftadd
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___lwtoft (ARG)
;!                       ___ftpack
;!                     _frexp (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftmul
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                 _frexp (ARG)
;!               _eval_poly
;!                 ___ftadd
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___lwtoft (ARG)
;!                       ___ftpack
;!                     _frexp (ARG)
;!                   ___ftneg (ARG)
;!                     ___ftmul (ARG)
;!                       ___awtoft (ARG)
;!                         ___ftpack
;!                       ___ftpack (ARG)
;!                       ___lbtoft (ARG)
;!                         ___ftpack
;!                       ___lwtoft (ARG)
;!                         ___ftpack
;!                       _frexp (ARG)
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___wmul (ARG)
;!                   _frexp (ARG)
;!                 ___ftmul
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!                 ___wmul
;!               _frexp
;!           _log
;!             ___awtoft
;!               ___ftpack
;!             ___ftadd
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                 _frexp (ARG)
;!               ___ftneg (ARG)
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftmul
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!               _frexp (ARG)
;!             _eval_poly
;!               ___ftadd
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___lwtoft (ARG)
;!                     ___ftpack
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___lwtoft (ARG)
;!                       ___ftpack
;!                     _frexp (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftmul
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___lwtoft (ARG)
;!                   ___ftpack
;!                 _frexp (ARG)
;!               ___wmul
;!             _frexp
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
;!       _beep
;!         _MyDelay
;!     _write_packet_to_page
;!       _rom_byte_write
;!         _IdleI2C
;!         _WriteI2C
;!           _IdleI2C
;!   _rtc_setting
;!     _Creat_RTC_Packet
;!       _Calculate_CRC
;!       _Clear_Packet
;!       _Creat_Packet
;!         _MyDelay
;!         _ds1307_get_time
;!           _IdleI2C
;!           _ReadI2C
;!           _WriteI2C
;!             _IdleI2C
;!           _bcd2bin
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
;!     _beep
;!       _MyDelay
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
;!       _beep
;!         _MyDelay
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
;!BANK2              100      4       4       9        1.6%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0     100       7      100.0%
;!BITBANK0            80      0       0       4        0.0%
;!BANK0               80     3C      7E       5       98.4%
;!BITCOMRAM           7F      0       0       0        0.0%
;!COMRAM              7F     58      6C       1       85.0%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0     1EE      15        0.0%
;!DATA                 0      0     1EE       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 31 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\Test1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  choice          1   59[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:   10
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
;;		_local_display
;;		_per_minute_reading
;;		_per_second_reading
;;		_rtc_setting
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\Test1.c"
	line	31
global __ptext0
__ptext0:
psect	text0
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\Test1.c"
	line	31
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 21
	dw	0FFFFh
	line	33
	
l11005:
;Test1.c: 33: unsigned char choice = 0;
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((main@choice))&0ffh
	line	34
	
l11007:; BSR set to: 0

;Test1.c: 34: RTUInit();
	call	_RTUInit	;wreg free
	line	37
	
l11009:
;Test1.c: 37: LCDWriteString("Welcome to RTU-1");
		movlw	high(STR_17)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_17)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	38
	
l11011:
;Test1.c: 38: MyDelay(1000);
	movlw	high(03E8h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(03E8h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	goto	l11013
	line	39
;Test1.c: 39: while(1)
	
l1032:
	line	41
	
l11013:
;Test1.c: 40: {
;Test1.c: 41: choice = 0;
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((main@choice))&0ffh
	line	42
;Test1.c: 42: while(choice == 0)
	goto	l11047
	
l1034:; BSR set to: 0

	line	44
	
l11015:; BSR set to: 0

;Test1.c: 43: {
;Test1.c: 44: choice = getkey(5);
	movlw	high(05h)
	movwf	((c:getkey@msecs+1)),c
	movlw	low(05h)
	movwf	((c:getkey@msecs)),c
	call	_getkey	;wreg free
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((main@choice))&0ffh
	line	45
	
l11017:; BSR set to: 0

;Test1.c: 45: if(sec_flag == 1)
	decf	((c:_sec_flag)),c,w

	btfss	status,2
	goto	u8571
	goto	u8570
u8571:
	goto	l11047
u8570:
	line	47
	
l11019:; BSR set to: 0

;Test1.c: 46: {
;Test1.c: 47: sec_flag = 0;
	movlw	low(0)
	movwf	((c:_sec_flag)),c
	line	48
	
l11021:; BSR set to: 0

;Test1.c: 48: ds1307_get_time();
	call	_ds1307_get_time	;wreg free
	line	50
	
l11023:
;Test1.c: 50: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	52
	
l11025:
;Test1.c: 52: LCDWriteString("Press a Switch...");
		movlw	high(STR_18)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_18)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	53
	
l11027:
;Test1.c: 53: LCDGotoXY(4,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(04h)&0ffh
	
	call	_LCDGotoXY
	line	54
	
l11029:
;Test1.c: 54: LCDWriteInt(hr,2);
	movff	(c:_hr),(c:LCDWriteInt@val)
	clrf	((c:LCDWriteInt@val+1)),c
	movlw	low(02h)
	movwf	((c:LCDWriteInt@field_length)),c
	call	_LCDWriteInt	;wreg free
	line	55
	
l11031:
;Test1.c: 55: LCDGotoXY(6,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(06h)&0ffh
	
	call	_LCDGotoXY
	line	56
	
l11033:
;Test1.c: 56: LCDWriteString(":");
		movlw	high(STR_19)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_19)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	57
	
l11035:
;Test1.c: 57: LCDGotoXY(7,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(07h)&0ffh
	
	call	_LCDGotoXY
	line	58
	
l11037:
;Test1.c: 58: LCDWriteInt(min,2);
	movff	(c:_min),(c:LCDWriteInt@val)
	clrf	((c:LCDWriteInt@val+1)),c
	movlw	low(02h)
	movwf	((c:LCDWriteInt@field_length)),c
	call	_LCDWriteInt	;wreg free
	line	59
	
l11039:
;Test1.c: 59: LCDGotoXY(9,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(09h)&0ffh
	
	call	_LCDGotoXY
	line	60
	
l11041:
;Test1.c: 60: LCDWriteString(":");
		movlw	high(STR_20)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_20)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	61
	
l11043:
;Test1.c: 61: LCDGotoXY(10,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(0Ah)&0ffh
	
	call	_LCDGotoXY
	line	62
	
l11045:
;Test1.c: 62: LCDWriteInt(sec,2);
	movff	(c:_sec),(c:LCDWriteInt@val)
	clrf	((c:LCDWriteInt@val+1)),c
	movlw	low(02h)
	movwf	((c:LCDWriteInt@field_length)),c
	call	_LCDWriteInt	;wreg free
	goto	l11047
	line	63
	
l1035:
	goto	l11047
	line	64
	
l1033:
	line	42
	
l11047:
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((main@choice))&0ffh,w
	btfsc	status,2
	goto	u8581
	goto	u8580
u8581:
	goto	l11015
u8580:
	goto	l11049
	
l1036:; BSR set to: 0

	line	65
	
l11049:; BSR set to: 0

;Test1.c: 63: }
;Test1.c: 64: }
;Test1.c: 65: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	66
;Test1.c: 66: beep(50);
	movlw	high(032h)
	movwf	((c:beep@del+1)),c
	movlw	low(032h)
	movwf	((c:beep@del)),c
	call	_beep	;wreg free
	line	68
;Test1.c: 68: switch(choice)
	goto	l11101
	line	70
;Test1.c: 69: {
;Test1.c: 70: case 1:
	
l1038:
	line	71
	
l11051:
;Test1.c: 71: LCDWriteString("MODE = SEND");
		movlw	high(STR_21)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_21)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	72
	
l11053:
;Test1.c: 72: LCDGotoXY(0,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(0)&0ffh
	
	call	_LCDGotoXY
	line	73
	
l11055:
;Test1.c: 73: LCDWriteString("DATA TO CENTER");
		movlw	high(STR_22)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_22)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	74
;Test1.c: 74: MyDelay(100);
	movlw	high(064h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(064h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	75
;Test1.c: 75: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	76
	
l11057:
;Test1.c: 76: data_to_center();
	call	_data_to_center	;wreg free
	line	77
;Test1.c: 77: break;
	goto	l11013
	line	78
;Test1.c: 78: case 2:
	
l1040:
	line	79
	
l11059:
;Test1.c: 79: LCDWriteString("MODE = PARAM.");
		movlw	high(STR_23)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_23)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	80
	
l11061:
;Test1.c: 80: LCDGotoXY(0,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(0)&0ffh
	
	call	_LCDGotoXY
	line	81
	
l11063:
;Test1.c: 81: LCDWriteString("LOCAL DISPLAY");
		movlw	high(STR_24)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_24)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	82
;Test1.c: 82: MyDelay(100);
	movlw	high(064h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(064h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	83
	
l11065:
;Test1.c: 83: local_display();
	call	_local_display	;wreg free
	line	84
;Test1.c: 84: break;
	goto	l11013
	line	85
;Test1.c: 85: case 3:
	
l1041:
	line	86
	
l11067:
;Test1.c: 86: LCDWriteString("MODE = GET");
		movlw	high(STR_25)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_25)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	87
	
l11069:
;Test1.c: 87: LCDGotoXY(0,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(0)&0ffh
	
	call	_LCDGotoXY
	line	88
	
l11071:
;Test1.c: 88: LCDWriteString("RTC SETTINGS");
		movlw	high(STR_26)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_26)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	89
;Test1.c: 89: MyDelay(100);
	movlw	high(064h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(064h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	90
	
l11073:
;Test1.c: 90: rtc_setting();
	call	_rtc_setting	;wreg free
	line	91
;Test1.c: 91: break;
	goto	l11013
	line	92
;Test1.c: 92: case 4:
	
l1042:
	line	93
	
l11075:
;Test1.c: 93: LCDWriteString("MODE = PER");
		movlw	high(STR_27)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_27)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	94
	
l11077:
;Test1.c: 94: LCDGotoXY(0,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(0)&0ffh
	
	call	_LCDGotoXY
	line	95
	
l11079:
;Test1.c: 95: LCDWriteString("SECOND READING");
		movlw	high(STR_28)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_28)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	96
;Test1.c: 96: MyDelay(100);
	movlw	high(064h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(064h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	97
	
l11081:
;Test1.c: 97: per_second_reading();
	call	_per_second_reading	;wreg free
	line	98
;Test1.c: 98: break;
	goto	l11013
	line	99
;Test1.c: 99: case 5:
	
l1043:
	line	100
	
l11083:
;Test1.c: 100: LCDWriteString("MODE = PER");
		movlw	high(STR_29)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_29)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	101
	
l11085:
;Test1.c: 101: LCDGotoXY(0,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(0)&0ffh
	
	call	_LCDGotoXY
	line	102
	
l11087:
;Test1.c: 102: LCDWriteString("MINUTE READING");
		movlw	high(STR_30)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_30)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	103
;Test1.c: 103: MyDelay(100);
	movlw	high(064h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(064h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	104
	
l11089:
;Test1.c: 104: per_minute_reading();
	call	_per_minute_reading	;wreg free
	line	105
;Test1.c: 105: break;
	goto	l11013
	line	106
;Test1.c: 106: default :
	
l1044:
	line	107
	
l11091:
;Test1.c: 107: LCDWriteString("MODE = PER");
		movlw	high(STR_31)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_31)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	108
	
l11093:
;Test1.c: 108: LCDGotoXY(0,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(0)&0ffh
	
	call	_LCDGotoXY
	line	109
	
l11095:
;Test1.c: 109: LCDWriteString("SECOND READING");
		movlw	high(STR_32)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_32)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	110
;Test1.c: 110: MyDelay(100);
	movlw	high(064h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(064h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	111
;Test1.c: 111: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	112
	
l11097:
;Test1.c: 112: per_second_reading();
	call	_per_second_reading	;wreg free
	line	113
;Test1.c: 113: break;
	goto	l11013
	line	114
	
l11099:
;Test1.c: 114: }
	goto	l11013
	line	68
	
l1037:
	
l11101:
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((main@choice))&0ffh,w
	; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 1 to 5
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	l11051
	xorlw	2^1	; case 2
	skipnz
	goto	l11059
	xorlw	3^2	; case 3
	skipnz
	goto	l11067
	xorlw	4^3	; case 4
	skipnz
	goto	l11075
	xorlw	5^4	; case 5
	skipnz
	goto	l11083
	goto	l11091

	line	114
	
l1039:; BSR set to: 0

	goto	l11013
	line	115
	
l1045:; BSR set to: 0

	line	39
	goto	l11013
	
l1046:; BSR set to: 0

	line	116
	
l1047:; BSR set to: 0

	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_rtc_setting

;; *************** function _rtc_setting *****************
;; Defined at:
;;		line 279 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\Test1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   51[COMRAM] unsigned char 
;;  result          1   50[COMRAM] unsigned char 
;;  s               1   49[COMRAM] unsigned char 
;;  mem_loc         1   48[COMRAM] unsigned char 
;;  atm             1   47[COMRAM] unsigned char 
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
;;      Locals:         5       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_Creat_RTC_Packet
;;		_LCDByte
;;		_LCDGotoXY
;;		_LCDWriteInt
;;		_LCDWriteString
;;		_MyDelay
;;		_Receive_Packet
;;		_Write_b_eep
;;		_beep
;;		_ds1307_get_time
;;		_ds1307_set_date_time
;;		_tx_packet
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	line	279
global __ptext1
__ptext1:
psect	text1
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\Test1.c"
	line	279
	global	__size_of_rtc_setting
	__size_of_rtc_setting	equ	__end_of_rtc_setting-_rtc_setting
	
_rtc_setting:; BSR set to: 0

;incstack = 0
	opt	stack 22
	dw	0FFFFh
	line	283
	
l10541:
;Test1.c: 283: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	284
	
l10543:
;Test1.c: 284: LCDWriteString("REQUESTING RTC...");
		movlw	high(STR_47)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_47)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	287
	
l10545:
;Test1.c: 287: RC2 = 1;
	bsf	c:(31762/8),(31762)&7	;volatile
	line	288
	
l10547:
;Test1.c: 288: beep(100);
	movlw	high(064h)
	movwf	((c:beep@del+1)),c
	movlw	low(064h)
	movwf	((c:beep@del)),c
	call	_beep	;wreg free
	line	289
	
l10549:
;Test1.c: 289: MyDelay(500);
	movlw	high(01F4h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(01F4h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	290
	
l10551:
;Test1.c: 290: unsigned char result = 0x00;
	movlw	low(0)
	movwf	((c:rtc_setting@result)),c
	line	291
	
l10553:
;Test1.c: 291: unsigned char atm = 0;
	movlw	low(0)
	movwf	((c:rtc_setting@atm)),c
	line	293
	
l10555:
;Test1.c: 293: Creat_RTC_Packet();
	call	_Creat_RTC_Packet	;wreg free
	line	294
;Test1.c: 294: tx_packet();
	call	_tx_packet	;wreg free
	line	295
	
l10557:
;Test1.c: 295: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	296
	
l10559:
;Test1.c: 296: LCDWriteString("REQUEST SENT!");
		movlw	high(STR_48)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_48)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	298
;Test1.c: 298: while(result == 0x00 && atm < 10)
	goto	l10565
	
l1079:
	line	300
	
l10561:
;Test1.c: 299: {
;Test1.c: 300: result = Receive_Packet();
	call	_Receive_Packet	;wreg free
	movwf	((c:rtc_setting@result)),c
	line	301
	
l10563:
;Test1.c: 301: atm++;
	incf	((c:rtc_setting@atm)),c
	goto	l10565
	line	302
	
l1078:
	line	298
	
l10565:
	tstfsz	((c:rtc_setting@result)),c
	goto	u8191
	goto	u8190
u8191:
	goto	l1082
u8190:
	
l10567:
	movlw	(0Ah-1)
	cpfsgt	((c:rtc_setting@atm)),c
	goto	u8201
	goto	u8200
u8201:
	goto	l10561
u8200:
	goto	l1082
	
l1081:
	
l1082:
	line	304
;Test1.c: 302: }
;Test1.c: 304: RC2 = 0;
	bcf	c:(31762/8),(31762)&7	;volatile
	line	305
	
l10569:
;Test1.c: 305: beep(100);
	movlw	high(064h)
	movwf	((c:beep@del+1)),c
	movlw	low(064h)
	movwf	((c:beep@del)),c
	call	_beep	;wreg free
	line	306
;Test1.c: 306: MyDelay(500);
	movlw	high(01F4h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(01F4h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	308
	
l10571:
;Test1.c: 308: if(result == 0x00)
	tstfsz	((c:rtc_setting@result)),c
	goto	u8211
	goto	u8210
u8211:
	goto	l10581
u8210:
	goto	l10573
	line	310
;Test1.c: 309: {
;Test1.c: 310: while(1)
	
l1084:
	line	312
	
l10573:
;Test1.c: 311: {
;Test1.c: 312: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	313
;Test1.c: 313: MyDelay(100);
	movlw	high(064h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(064h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	314
	
l10575:
;Test1.c: 314: LCDWriteString("SETTINGS NOT");
		movlw	high(STR_49)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_49)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	315
	
l10577:
;Test1.c: 315: LCDGotoXY(0,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(0)&0ffh
	
	call	_LCDGotoXY
	line	316
;Test1.c: 316: LCDWriteString("RECEIVED...!");
		movlw	high(STR_50)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_50)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	317
	
l10579:
;Test1.c: 317: MyDelay(100);
	movlw	high(064h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(064h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	goto	l10573
	line	318
	
l1085:
	line	310
	goto	l10573
	
l1086:
	goto	l10581
	line	319
	
l1083:
	line	320
	
l10581:
;Test1.c: 318: }
;Test1.c: 319: }
;Test1.c: 320: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	321
	
l10583:
;Test1.c: 321: LCDWriteString("UPDATING RTC");
		movlw	high(STR_51)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_51)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	323
	
l10585:
;Test1.c: 323: day = PACKET[8];
	movff	0+(_PACKET+08h),(c:_day)	;volatile
	line	324
	
l10587:
;Test1.c: 324: month = PACKET[7];
	movff	0+(_PACKET+07h),(c:_month)	;volatile
	line	325
	
l10589:
;Test1.c: 325: year = PACKET[6];
	movff	0+(_PACKET+06h),(c:_year)	;volatile
	line	326
	
l10591:
;Test1.c: 326: dow = PACKET[9];
	movff	0+(_PACKET+09h),(c:_dow)	;volatile
	line	327
	
l10593:
;Test1.c: 327: hr = PACKET[10];
	movff	0+(_PACKET+0Ah),(c:_hr)	;volatile
	line	328
	
l10595:
;Test1.c: 328: min = PACKET[11];
	movff	0+(_PACKET+0Bh),(c:_min)	;volatile
	line	329
	
l10597:
;Test1.c: 329: sec = PACKET[12];
	movff	0+(_PACKET+0Ch),(c:_sec)	;volatile
	line	331
	
l10599:
;Test1.c: 331: ds1307_set_date_time();
	call	_ds1307_set_date_time	;wreg free
	line	332
	
l10601:
;Test1.c: 332: MyDelay(100);
	movlw	high(064h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(064h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	333
	
l10603:
;Test1.c: 333: Write_b_eep(0x04,0);
	movlw	high(04h)
	movwf	((c:Write_b_eep@badd+1)),c
	movlw	low(04h)
	movwf	((c:Write_b_eep@badd)),c
	movlw	low(0)
	movwf	((c:Write_b_eep@bdat)),c
	call	_Write_b_eep	;wreg free
	line	334
	
l10605:
;Test1.c: 334: _delay(50);
	movlw	10
u8617:
	nop
decfsz	wreg,f
	goto	u8617

	line	337
	
l10607:
;Test1.c: 337: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	338
	
l10609:
;Test1.c: 338: LCDWriteString("UPDATING THRESHOLDS");
		movlw	high(STR_52)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_52)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	339
	
l10611:
;Test1.c: 339: LCDGotoXY(0,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(0)&0ffh
	
	call	_LCDGotoXY
	line	340
	
l10613:
;Test1.c: 340: LCDWriteString("UPDATING TRIGERS");
		movlw	high(STR_53)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_53)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	341
	
l10615:
;Test1.c: 341: char mem_loc = 5;
	movlw	low(05h)
	movwf	((c:rtc_setting@mem_loc)),c
	line	342
	
l10617:
;Test1.c: 342: char i = 13;
	movlw	low(0Dh)
	movwf	((c:rtc_setting@i)),c
	line	343
	
l10619:
;Test1.c: 343: for(i = 13; i<(13+16);i++)
	movlw	low(0Dh)
	movwf	((c:rtc_setting@i)),c
	
l10621:
	movlw	(01Dh-1)
	cpfsgt	((c:rtc_setting@i)),c
	goto	u8221
	goto	u8220
u8221:
	goto	l10625
u8220:
	goto	l10635
	
l10623:
	goto	l10635
	line	344
	
l1087:
	line	345
	
l10625:
;Test1.c: 344: {
;Test1.c: 345: Write_b_eep(mem_loc,PACKET[i]);
	movff	(c:rtc_setting@mem_loc),(c:Write_b_eep@badd)
	clrf	((c:Write_b_eep@badd+1)),c
	movf	((c:rtc_setting@i)),c,w
	mullw	01h
	movlb	1	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:Write_b_eep@bdat)),c
	call	_Write_b_eep	;wreg free
	line	346
	
l10627:
;Test1.c: 346: _delay(50);
	movlw	10
u8627:
	nop
decfsz	wreg,f
	goto	u8627

	line	347
	
l10629:
;Test1.c: 347: mem_loc++;
	incf	((c:rtc_setting@mem_loc)),c
	line	343
	
l10631:
	incf	((c:rtc_setting@i)),c
	
l10633:
	movlw	(01Dh-1)
	cpfsgt	((c:rtc_setting@i)),c
	goto	u8231
	goto	u8230
u8231:
	goto	l10625
u8230:
	goto	l10635
	
l1088:
	line	350
	
l10635:
;Test1.c: 348: }
;Test1.c: 350: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	351
	
l10637:
;Test1.c: 351: LCDWriteString("UPDATE COMPLETED...!");
		movlw	high(STR_54)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_54)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	353
	
l10639:
;Test1.c: 353: unsigned char s = 0;
	movlw	low(0)
	movwf	((c:rtc_setting@s)),c
	line	354
;Test1.c: 354: while(s < 60)
	goto	l10673
	
l1090:
	line	356
	
l10641:
;Test1.c: 355: {
;Test1.c: 356: if(sec_flag == 1)
	decf	((c:_sec_flag)),c,w

	btfss	status,2
	goto	u8241
	goto	u8240
u8241:
	goto	l10673
u8240:
	line	358
	
l10643:
;Test1.c: 357: {
;Test1.c: 358: sec_flag = 0;
	movlw	low(0)
	movwf	((c:_sec_flag)),c
	line	359
	
l10645:
;Test1.c: 359: s++;
	incf	((c:rtc_setting@s)),c
	line	360
	
l10647:
;Test1.c: 360: ds1307_get_time();
	call	_ds1307_get_time	;wreg free
	line	362
	
l10649:
;Test1.c: 362: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	364
	
l10651:
;Test1.c: 364: LCDWriteString("UPDATE COMPLETED...!");
		movlw	high(STR_55)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_55)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	365
	
l10653:
;Test1.c: 365: LCDGotoXY(4,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(04h)&0ffh
	
	call	_LCDGotoXY
	line	366
	
l10655:
;Test1.c: 366: LCDWriteInt(hr,2);
	movff	(c:_hr),(c:LCDWriteInt@val)
	clrf	((c:LCDWriteInt@val+1)),c
	movlw	low(02h)
	movwf	((c:LCDWriteInt@field_length)),c
	call	_LCDWriteInt	;wreg free
	line	367
	
l10657:
;Test1.c: 367: LCDGotoXY(6,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(06h)&0ffh
	
	call	_LCDGotoXY
	line	368
	
l10659:
;Test1.c: 368: LCDWriteString(":");
		movlw	high(STR_56)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_56)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	369
	
l10661:
;Test1.c: 369: LCDGotoXY(7,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(07h)&0ffh
	
	call	_LCDGotoXY
	line	370
	
l10663:
;Test1.c: 370: LCDWriteInt(min,2);
	movff	(c:_min),(c:LCDWriteInt@val)
	clrf	((c:LCDWriteInt@val+1)),c
	movlw	low(02h)
	movwf	((c:LCDWriteInt@field_length)),c
	call	_LCDWriteInt	;wreg free
	line	371
	
l10665:
;Test1.c: 371: LCDGotoXY(9,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(09h)&0ffh
	
	call	_LCDGotoXY
	line	372
	
l10667:
;Test1.c: 372: LCDWriteString(":");
		movlw	high(STR_57)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_57)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	373
	
l10669:
;Test1.c: 373: LCDGotoXY(10,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(0Ah)&0ffh
	
	call	_LCDGotoXY
	line	374
	
l10671:
;Test1.c: 374: LCDWriteInt(sec,2);
	movff	(c:_sec),(c:LCDWriteInt@val)
	clrf	((c:LCDWriteInt@val+1)),c
	movlw	low(02h)
	movwf	((c:LCDWriteInt@field_length)),c
	call	_LCDWriteInt	;wreg free
	goto	l10673
	line	375
	
l1091:
	goto	l10673
	line	376
	
l1089:
	line	354
	
l10673:
	movlw	(03Ch-1)
	cpfsgt	((c:rtc_setting@s)),c
	goto	u8251
	goto	u8250
u8251:
	goto	l10641
u8250:
	goto	l1093
	
l1092:
	line	378
;Test1.c: 375: }
;Test1.c: 376: }
;Test1.c: 377: return;
	
l1093:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_rtc_setting
	__end_of_rtc_setting:
	signat	_rtc_setting,88
	global	_Receive_Packet

;; *************** function _Receive_Packet *****************
;; Defined at:
;;		line 201 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\communication.c"
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
;;		_rtc_setting
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\communication.c"
	line	201
global __ptext2
__ptext2:
psect	text2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\communication.c"
	line	201
	global	__size_of_Receive_Packet
	__size_of_Receive_Packet	equ	__end_of_Receive_Packet-_Receive_Packet
	
_Receive_Packet:
;incstack = 0
	opt	stack 23
	dw	0FFFFh
	line	203
	
l9823:
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
	
l9825:
;communication.c: 207: result = Eco_Replay();
	call	_Eco_Replay	;wreg free
	movwf	((c:Receive_Packet@result)),c
	line	209
	
l9827:
;communication.c: 209: if(result == 0x01)
	decf	((c:Receive_Packet@result)),c,w

	btfss	status,2
	goto	u7721
	goto	u7720
u7721:
	goto	l9921
u7720:
	line	211
	
l9829:
;communication.c: 210: {
;communication.c: 211: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	212
	
l9831:
;communication.c: 212: LCDWriteString("GOT AN ECO");
		movlw	high(STR_11)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_11)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	214
	
l9833:
;communication.c: 214: USARTFlushBuffer();
	call	_USARTFlushBuffer	;wreg free
	goto	l9835
	line	216
;communication.c: 216: while(1)
	
l536:
	line	219
	
l9835:
;communication.c: 217: {
;communication.c: 219: uint8_t n= USARTDataAvailable();
	call	_USARTDataAvailable	;wreg free
	movwf	((c:Receive_Packet@n)),c
	line	222
	
l9837:
;communication.c: 222: if(n!=0)
	movf	((c:Receive_Packet@n)),c,w
	btfsc	status,2
	goto	u7731
	goto	u7730
u7731:
	goto	l9909
u7730:
	line	224
	
l9839:
;communication.c: 223: {
;communication.c: 224: msecs = 0;
	movlw	high(0)
	movwf	((c:Receive_Packet@msecs+1)),c
	movlw	low(0)
	movwf	((c:Receive_Packet@msecs)),c
	line	225
;communication.c: 225: while(n > 0)
	goto	l9907
	
l539:
	line	227
;communication.c: 226: {
;communication.c: 227: RC0 = 1;
	bsf	c:(31760/8),(31760)&7	;volatile
	line	228
	
l9841:
;communication.c: 228: PACKET[count] = USARTReadData();
	call	_USARTReadData	;wreg free
	movwf	(??_Receive_Packet+0+0)&0ffh,c
	movf	((c:Receive_Packet@count)),c,w
	mullw	01h
	movlb	1	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(??_Receive_Packet+0+0),indf2

	line	229
	
l9843:; BSR set to: 1

;communication.c: 229: RC0 = 0;
	bcf	c:(31760/8),(31760)&7	;volatile
	line	230
	
l9845:; BSR set to: 1

;communication.c: 230: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	231
	
l9847:
;communication.c: 231: LCDWriteString("CHARACTER RECEIVED ");
		movlw	high(STR_12)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_12)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	232
	
l9849:
;communication.c: 232: if(PACKET[count] == 0xEA)
	movf	((c:Receive_Packet@count)),c,w
	mullw	01h
	movlb	1	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	(0EAh)&0ffh
	cpfseq	indf2
	goto	u7741
	goto	u7740
u7741:
	goto	l9905
u7740:
	line	235
	
l9851:; BSR set to: 1

;communication.c: 233: {
;communication.c: 235: result = Check_CRC();
	call	_Check_CRC	;wreg free
	movwf	((c:Receive_Packet@result)),c
	line	236
	
l9853:
;communication.c: 236: if(result == 1)
	decf	((c:Receive_Packet@result)),c,w

	btfss	status,2
	goto	u7751
	goto	u7750
u7751:
	goto	l541
u7750:
	line	238
	
l9855:
;communication.c: 237: {
;communication.c: 238: RE2 = 1;
	bsf	c:(31778/8),(31778)&7	;volatile
	line	239
	
l9857:
;communication.c: 239: _delay((unsigned long)((5)*(100000000/4000.0)));
	movlw	122
movwf	(??_Receive_Packet+0+0)&0ffh,c,f
	movlw	212
u8637:
	decfsz	wreg,f
	goto	u8637
	decfsz	(??_Receive_Packet+0+0)&0ffh,c,f
	goto	u8637
	nop2

	line	240
;communication.c: 240: _delay((unsigned long)((5)*(100000000/4000.0)));
	movlw	122
movwf	(??_Receive_Packet+0+0)&0ffh,c,f
	movlw	212
u8647:
	decfsz	wreg,f
	goto	u8647
	decfsz	(??_Receive_Packet+0+0)&0ffh,c,f
	goto	u8647
	nop2

	line	241
	
l9859:
;communication.c: 241: USARTWriteChar(49);
	movlw	(031h)&0ffh
	
	call	_USARTWriteChar
	line	242
	
l9861:
;communication.c: 242: RE2 = 0;
	bcf	c:(31778/8),(31778)&7	;volatile
	line	243
	
l9863:
;communication.c: 243: RE2 = 1;
	bsf	c:(31778/8),(31778)&7	;volatile
	line	244
	
l9865:
;communication.c: 244: _delay((unsigned long)((5)*(100000000/4000.0)));
	movlw	122
movwf	(??_Receive_Packet+0+0)&0ffh,c,f
	movlw	212
u8657:
	decfsz	wreg,f
	goto	u8657
	decfsz	(??_Receive_Packet+0+0)&0ffh,c,f
	goto	u8657
	nop2

	line	245
	
l9867:
;communication.c: 245: _delay((unsigned long)((5)*(100000000/4000.0)));
	movlw	122
movwf	(??_Receive_Packet+0+0)&0ffh,c,f
	movlw	212
u8667:
	decfsz	wreg,f
	goto	u8667
	decfsz	(??_Receive_Packet+0+0)&0ffh,c,f
	goto	u8667
	nop2

	line	246
	
l9869:
;communication.c: 246: USARTWriteChar(49);
	movlw	(031h)&0ffh
	
	call	_USARTWriteChar
	line	247
	
l9871:
;communication.c: 247: RE2 = 0;
	bcf	c:(31778/8),(31778)&7	;volatile
	line	248
	
l9873:
;communication.c: 248: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	249
	
l9875:
;communication.c: 249: LCDWriteString("PACKET RECEIVED ");
		movlw	high(STR_13)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_13)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	250
	
l9877:
;communication.c: 250: return 0x01;
	movlw	(01h)&0ffh
	goto	l542
	
l9879:
	goto	l542
	line	251
	
l541:
	line	252
;communication.c: 251: }
;communication.c: 252: RE2 = 1;
	bsf	c:(31778/8),(31778)&7	;volatile
	line	253
	
l9881:
;communication.c: 253: _delay((unsigned long)((5)*(100000000/4000.0)));
	movlw	122
movwf	(??_Receive_Packet+0+0)&0ffh,c,f
	movlw	212
u8677:
	decfsz	wreg,f
	goto	u8677
	decfsz	(??_Receive_Packet+0+0)&0ffh,c,f
	goto	u8677
	nop2

	line	254
;communication.c: 254: _delay((unsigned long)((5)*(100000000/4000.0)));
	movlw	122
movwf	(??_Receive_Packet+0+0)&0ffh,c,f
	movlw	212
u8687:
	decfsz	wreg,f
	goto	u8687
	decfsz	(??_Receive_Packet+0+0)&0ffh,c,f
	goto	u8687
	nop2

	line	255
	
l9883:
;communication.c: 255: USARTWriteChar(48);
	movlw	(030h)&0ffh
	
	call	_USARTWriteChar
	line	256
	
l9885:
;communication.c: 256: RE2 = 0;
	bcf	c:(31778/8),(31778)&7	;volatile
	line	257
	
l9887:
;communication.c: 257: RE2 = 1;
	bsf	c:(31778/8),(31778)&7	;volatile
	line	258
	
l9889:
;communication.c: 258: _delay((unsigned long)((5)*(100000000/4000.0)));
	movlw	122
movwf	(??_Receive_Packet+0+0)&0ffh,c,f
	movlw	212
u8697:
	decfsz	wreg,f
	goto	u8697
	decfsz	(??_Receive_Packet+0+0)&0ffh,c,f
	goto	u8697
	nop2

	line	259
	
l9891:
;communication.c: 259: _delay((unsigned long)((5)*(100000000/4000.0)));
	movlw	122
movwf	(??_Receive_Packet+0+0)&0ffh,c,f
	movlw	212
u8707:
	decfsz	wreg,f
	goto	u8707
	decfsz	(??_Receive_Packet+0+0)&0ffh,c,f
	goto	u8707
	nop2

	line	260
	
l9893:
;communication.c: 260: USARTWriteChar(48);
	movlw	(030h)&0ffh
	
	call	_USARTWriteChar
	line	261
	
l9895:
;communication.c: 261: RE2 = 0;
	bcf	c:(31778/8),(31778)&7	;volatile
	line	262
	
l9897:
;communication.c: 262: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	263
	
l9899:
;communication.c: 263: LCDWriteString("WRONG PACKET RECEIVED ");
		movlw	high(STR_14)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_14)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	264
	
l9901:
;communication.c: 264: return 0x00;
	movlw	(0)&0ffh
	goto	l542
	
l9903:
	goto	l542
	line	265
	
l540:
	line	266
	
l9905:
;communication.c: 265: }
;communication.c: 266: n--;
	decf	((c:Receive_Packet@n)),c
	line	267
;communication.c: 267: count++;
	incf	((c:Receive_Packet@count)),c
	goto	l9907
	line	268
	
l538:
	line	225
	
l9907:
	tstfsz	((c:Receive_Packet@n)),c
	goto	u7761
	goto	u7760
u7761:
	goto	l539
u7760:
	goto	l9835
	
l543:
	line	269
;communication.c: 268: }
;communication.c: 269: }
	goto	l9835
	line	270
	
l537:
	line	272
	
l9909:
;communication.c: 270: else
;communication.c: 271: {
;communication.c: 272: _delay((unsigned long)((1)*(100000000/4000.0)));
	movlw	25
movwf	(??_Receive_Packet+0+0)&0ffh,c,f
	movlw	93
u8717:
	decfsz	wreg,f
	goto	u8717
	decfsz	(??_Receive_Packet+0+0)&0ffh,c,f
	goto	u8717

	line	273
	
l9911:
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
	goto	u7771
	goto	u7770
u7771:
	goto	l9835
u7770:
	line	277
	
l9913:
;communication.c: 275: {
;communication.c: 277: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	278
	
l9915:
;communication.c: 278: LCDWriteString("CHARACTER TIMEOUT");
		movlw	high(STR_15)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_15)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	279
	
l9917:
;communication.c: 279: return 0x00;
	movlw	(0)&0ffh
	goto	l542
	
l9919:
	goto	l542
	line	280
	
l545:
	goto	l9835
	line	281
	
l544:
	goto	l9835
	line	282
	
l546:
	line	216
	goto	l9835
	
l547:
	goto	l9921
	line	283
	
l535:
	line	284
	
l9921:
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
	
l9923:
;communication.c: 285: LCDWriteString("PACKET TIMEOUT");
		movlw	high(STR_16)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_16)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	286
	
l9925:
;communication.c: 286: return 0x00;
	movlw	(0)&0ffh
	goto	l542
	
l9927:
	line	287
	
l542:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_Receive_Packet
	__end_of_Receive_Packet:
	signat	_Receive_Packet,89
	global	_Eco_Replay

;; *************** function _Eco_Replay *****************
;; Defined at:
;;		line 84 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\communication.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data            1   34[COMRAM] unsigned char 
;;  n               1   35[COMRAM] unsigned char 
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
psect	text3,class=CODE,space=0,reloc=2
	line	84
global __ptext3
__ptext3:
psect	text3
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\communication.c"
	line	84
	global	__size_of_Eco_Replay
	__size_of_Eco_Replay	equ	__end_of_Eco_Replay-_Eco_Replay
	
_Eco_Replay:
;incstack = 0
	opt	stack 23
	dw	0FFFFh
	line	86
	
l9311:
;communication.c: 86: uint8_t n = 0;
	movlw	low(0)
	movwf	((c:Eco_Replay@n)),c
	line	87
;communication.c: 87: unsigned char ts = 0;
	movlw	low(0)
	movwf	((c:Eco_Replay@ts)),c
	line	90
	
l9313:
;communication.c: 90: USARTFlushBuffer();
	call	_USARTFlushBuffer	;wreg free
	line	92
	
l9315:
;communication.c: 92: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	93
	
l9317:
;communication.c: 93: LCDWriteString("WAITING FOR ECO ");
		movlw	high(STR_5)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_5)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	96
;communication.c: 96: while(n == 0 && ts < 10000)
	goto	l9325
	
l515:
	line	99
	
l9319:
;communication.c: 97: {
;communication.c: 99: n = USARTDataAvailable();
	call	_USARTDataAvailable	;wreg free
	movwf	((c:Eco_Replay@n)),c
	line	100
	
l9321:
;communication.c: 100: ts++;
	incf	((c:Eco_Replay@ts)),c
	line	101
	
l9323:
;communication.c: 101: _delay((unsigned long)((1)*(100000000/4000.0)));
	movlw	25
movwf	(??_Eco_Replay+0+0)&0ffh,c,f
	movlw	93
u8727:
	decfsz	wreg,f
	goto	u8727
	decfsz	(??_Eco_Replay+0+0)&0ffh,c,f
	goto	u8727

	goto	l9325
	line	102
	
l514:
	line	96
	
l9325:
	movf	((c:Eco_Replay@n)),c,w
	btfsc	status,2
	goto	u7331
	goto	u7330
u7331:
	goto	l9319
u7330:
	goto	l9327
	
l516:
	line	105
	
l9327:
;communication.c: 102: }
;communication.c: 105: if(n!=0)
	movf	((c:Eco_Replay@n)),c,w
	btfsc	status,2
	goto	u7341
	goto	u7340
u7341:
	goto	l9355
u7340:
	line	108
	
l9329:
;communication.c: 106: {
;communication.c: 108: RC0 = 1;
	bsf	c:(31760/8),(31760)&7	;volatile
	line	109
	
l9331:
;communication.c: 109: unsigned char data=USARTReadData();
	call	_USARTReadData	;wreg free
	movwf	((c:Eco_Replay@data)),c
	line	110
	
l9333:
;communication.c: 110: RC0 = 0;
	bcf	c:(31760/8),(31760)&7	;volatile
	line	111
	
l9335:
;communication.c: 111: if(data == Destination_ID)
	movf	((c:_Destination_ID)),c,w
	cpfseq	((c:Eco_Replay@data)),c
	goto	u7351
	goto	u7350
u7351:
	goto	l9355
u7350:
	line	113
	
l9337:
;communication.c: 112: {
;communication.c: 113: RE2 = 1;
	bsf	c:(31778/8),(31778)&7	;volatile
	line	114
	
l9339:
;communication.c: 114: _delay((unsigned long)((5)*(100000000/4000.0)));
	movlw	122
movwf	(??_Eco_Replay+0+0)&0ffh,c,f
	movlw	212
u8737:
	decfsz	wreg,f
	goto	u8737
	decfsz	(??_Eco_Replay+0+0)&0ffh,c,f
	goto	u8737
	nop2

	line	115
;communication.c: 115: _delay((unsigned long)((5)*(100000000/4000.0)));
	movlw	122
movwf	(??_Eco_Replay+0+0)&0ffh,c,f
	movlw	212
u8747:
	decfsz	wreg,f
	goto	u8747
	decfsz	(??_Eco_Replay+0+0)&0ffh,c,f
	goto	u8747
	nop2

	line	116
	
l9341:
;communication.c: 116: USARTWriteChar(data);
	movf	((c:Eco_Replay@data)),c,w
	
	call	_USARTWriteChar
	line	117
	
l9343:
;communication.c: 117: RE2 = 0;
	bcf	c:(31778/8),(31778)&7	;volatile
	line	118
	
l9345:
;communication.c: 118: _delay((unsigned long)((1)*(100000000/4000.0)));
	movlw	25
movwf	(??_Eco_Replay+0+0)&0ffh,c,f
	movlw	93
u8757:
	decfsz	wreg,f
	goto	u8757
	decfsz	(??_Eco_Replay+0+0)&0ffh,c,f
	goto	u8757

	line	120
	
l9347:
;communication.c: 120: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	121
	
l9349:
;communication.c: 121: LCDWriteString("ECO RECEIVED ");
		movlw	high(STR_6)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_6)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	122
	
l9351:
;communication.c: 122: return 0x01;
	movlw	(01h)&0ffh
	goto	l519
	
l9353:
	goto	l519
	line	123
	
l518:
	goto	l9355
	line	124
	
l517:
	line	126
	
l9355:
;communication.c: 123: }
;communication.c: 124: }
;communication.c: 126: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	127
	
l9357:
;communication.c: 127: LCDWriteString("ECO NOT RECEIVED ");
		movlw	high(STR_7)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_7)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	128
	
l9359:
;communication.c: 128: return 0x00;
	movlw	(0)&0ffh
	goto	l519
	
l9361:
	line	129
	
l519:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_Eco_Replay
	__end_of_Eco_Replay:
	signat	_Eco_Replay,89
	global	_Check_CRC

;; *************** function _Check_CRC *****************
;; Defined at:
;;		line 112 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\packet.c"
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
psect	text4,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\packet.c"
	line	112
global __ptext4
__ptext4:
psect	text4
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\packet.c"
	line	112
	global	__size_of_Check_CRC
	__size_of_Check_CRC	equ	__end_of_Check_CRC-_Check_CRC
	
_Check_CRC:
;incstack = 0
	opt	stack 26
	dw	0FFFFh
	line	114
	
l9273:
;packet.c: 114: char count = 0, length = 0, CRC_HI, CRC_LOW;
	movlw	low(0)
	movwf	((c:Check_CRC@count)),c
	movlw	low(0)
	movwf	((c:Check_CRC@length)),c
	line	118
;packet.c: 115: int sum, CRC;
;packet.c: 118: while(PACKET[length] != 0xEA)
	goto	l9277
	
l415:
	line	119
	
l9275:
;packet.c: 119: length++;
	incf	((c:Check_CRC@length)),c
	goto	l9277
	
l414:
	line	118
	
l9277:
	movf	((c:Check_CRC@length)),c,w
	mullw	01h
	movlb	1	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	(0EAh)&0ffh
	cpfseq	indf2
	goto	u7301
	goto	u7300
u7301:
	goto	l9275
u7300:
	goto	l9279
	
l416:; BSR set to: 1

	line	121
	
l9279:; BSR set to: 1

;packet.c: 121: CRC_LOW = PACKET[length - 1];
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
	movlb	1	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(??_Check_CRC+2+0),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	(??_Check_CRC+2+1),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:Check_CRC@CRC_LOW)),c
	line	122
;packet.c: 122: CRC_HI = PACKET[length - 2];
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
	movlb	1	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(??_Check_CRC+2+0),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	(??_Check_CRC+2+1),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:Check_CRC@CRC_HI)),c
	line	123
	
l9281:; BSR set to: 1

;packet.c: 123: CRC = 0x0000;
	movlw	high(0)
	movwf	((c:Check_CRC@CRC+1)),c
	movlw	low(0)
	movwf	((c:Check_CRC@CRC)),c
	line	124
	
l9283:; BSR set to: 1

;packet.c: 124: CRC = CRC + CRC_HI;
	movf	((c:Check_CRC@CRC_HI)),c,w
	addwf	((c:Check_CRC@CRC)),c,w
	
	movwf	((c:Check_CRC@CRC)),c
	movlw	0
	addwfc	((c:Check_CRC@CRC+1)),c,w
	movwf	1+((c:Check_CRC@CRC)),c
	line	125
	
l9285:; BSR set to: 1

;packet.c: 125: CRC = CRC << 8;
	movf	((c:Check_CRC@CRC)),c,w
	movwf	((c:Check_CRC@CRC+1)),c
	clrf	((c:Check_CRC@CRC)),c
	line	126
	
l9287:; BSR set to: 1

;packet.c: 126: CRC = CRC + CRC_LOW;
	movf	((c:Check_CRC@CRC_LOW)),c,w
	addwf	((c:Check_CRC@CRC)),c,w
	
	movwf	((c:Check_CRC@CRC)),c
	movlw	0
	addwfc	((c:Check_CRC@CRC+1)),c,w
	movwf	1+((c:Check_CRC@CRC)),c
	line	128
	
l9289:; BSR set to: 1

;packet.c: 128: sum = 0;
	movlw	high(0)
	movwf	((c:Check_CRC@sum+1)),c
	movlw	low(0)
	movwf	((c:Check_CRC@sum)),c
	line	130
	
l9291:; BSR set to: 1

;packet.c: 130: for(count = 0; count < length - 2; count++)
	movlw	low(0)
	movwf	((c:Check_CRC@count)),c
	goto	l9297
	line	131
	
l418:; BSR set to: 1

	
l9293:; BSR set to: 1

;packet.c: 131: sum = sum + PACKET[count];
	movf	((c:Check_CRC@count)),c,w
	mullw	01h
	movlb	1	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
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
	line	130
	
l9295:; BSR set to: 1

	incf	((c:Check_CRC@count)),c
	goto	l9297
	
l417:; BSR set to: 1

	
l9297:; BSR set to: 1

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
	goto	u7311
	goto	u7310
u7311:
	goto	l9293
u7310:
	goto	l9299
	
l419:; BSR set to: 1

	line	133
	
l9299:; BSR set to: 1

;packet.c: 133: if(sum == CRC)
	movf	((c:Check_CRC@CRC+1)),c,w
	xorwf	((c:Check_CRC@sum+1)),c,w
	bnz	u7325
	movf	((c:Check_CRC@CRC)),c,w
	xorwf	((c:Check_CRC@sum)),c,w
u7325:

	btfss	status,2
	goto	u7321
	goto	u7320
u7321:
	goto	l9307
u7320:
	line	134
	
l9301:; BSR set to: 1

;packet.c: 134: return 1;
	movlw	(01h)&0ffh
	goto	l421
	
l9303:; BSR set to: 1

	goto	l421
	
l9305:; BSR set to: 1

	goto	l421
	line	135
	
l420:; BSR set to: 1

	line	136
	
l9307:; BSR set to: 1

;packet.c: 135: else
;packet.c: 136: return 0;
	movlw	(0)&0ffh
	goto	l421
	
l9309:; BSR set to: 1

	goto	l421
	
l422:; BSR set to: 1

	line	137
	
l421:; BSR set to: 1

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_Check_CRC
	__end_of_Check_CRC:
	signat	_Check_CRC,89
	global	_Creat_RTC_Packet

;; *************** function _Creat_RTC_Packet *****************
;; Defined at:
;;		line 31 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\packet.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  packet_crc      2   36[COMRAM] unsigned int 
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
;;      Locals:         4       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_Calculate_CRC
;;		_Clear_Packet
;;		_Creat_Packet
;; This function is called by:
;;		_rtc_setting
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2
	line	31
global __ptext5
__ptext5:
psect	text5
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\packet.c"
	line	31
	global	__size_of_Creat_RTC_Packet
	__size_of_Creat_RTC_Packet	equ	__end_of_Creat_RTC_Packet-_Creat_RTC_Packet
	
_Creat_RTC_Packet:; BSR set to: 1

;incstack = 0
	opt	stack 23
	dw	0FFFFh
	line	33
	
l9731:
;packet.c: 33: Clear_Packet();
	call	_Clear_Packet	;wreg free
	line	34
	
l9733:
;packet.c: 34: Creat_Packet(3, 0);
	movlw	low(0)
	movwf	((c:Creat_Packet@Readings)),c
	movlw	(03h)&0ffh
	
	call	_Creat_Packet
	line	36
	
l9735:
;packet.c: 36: unsigned int packet_crc = 0;
	movlw	high(0)
	movwf	((c:Creat_RTC_Packet@packet_crc+1)),c
	movlw	low(0)
	movwf	((c:Creat_RTC_Packet@packet_crc)),c
	line	37
	
l9737:
;packet.c: 37: unsigned char crc_h = 0, crc_l = 0;
	movlw	low(0)
	movwf	((c:Creat_RTC_Packet@crc_h)),c
	
l9739:
	movlw	low(0)
	movwf	((c:Creat_RTC_Packet@crc_l)),c
	line	39
	
l9741:
;packet.c: 39: packet_crc = Calculate_CRC();
	call	_Calculate_CRC	;wreg free
	movff	0+?_Calculate_CRC,(c:Creat_RTC_Packet@packet_crc)
	movff	1+?_Calculate_CRC,(c:Creat_RTC_Packet@packet_crc+1)
	line	40
	
l9743:
;packet.c: 40: crc_h = packet_crc >> 8;
	movff	(c:Creat_RTC_Packet@packet_crc+1),??_Creat_RTC_Packet+0+0
	movff	??_Creat_RTC_Packet+0+0,??_Creat_RTC_Packet+1+0
	clrf	(??_Creat_RTC_Packet+1+0+1)&0ffh,c
	movf	(??_Creat_RTC_Packet+1+0),c,w
	movwf	((c:Creat_RTC_Packet@crc_h)),c
	line	41
	
l9745:
;packet.c: 41: crc_l = packet_crc & 0x00FF;
	movff	(c:Creat_RTC_Packet@packet_crc),(c:Creat_RTC_Packet@crc_l)
	line	43
	
l9747:
;packet.c: 43: PACKET[Current_Pos] = crc_h;
	movf	((c:_Current_Pos)),c,w	;volatile
	mullw	01h
	movlb	1	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:Creat_RTC_Packet@crc_h),indf2

	line	44
	
l9749:; BSR set to: 1

;packet.c: 44: Current_Pos++;
	incf	((c:_Current_Pos)),c	;volatile
	line	45
	
l9751:; BSR set to: 1

;packet.c: 45: PACKET[Current_Pos] = crc_l;
	movf	((c:_Current_Pos)),c,w	;volatile
	mullw	01h
	movlb	1	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:Creat_RTC_Packet@crc_l),indf2

	line	46
	
l9753:; BSR set to: 1

;packet.c: 46: Current_Pos++;
	incf	((c:_Current_Pos)),c	;volatile
	line	47
	
l9755:; BSR set to: 1

;packet.c: 47: PACKET[Current_Pos] = 0xEA;
	movf	((c:_Current_Pos)),c,w	;volatile
	mullw	01h
	movlb	1	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0EAh)
	movwf	indf2
	line	49
	
l401:; BSR set to: 1

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_Creat_RTC_Packet
	__end_of_Creat_RTC_Packet:
	signat	_Creat_RTC_Packet,88
	global	_per_second_reading

;; *************** function _per_second_reading *****************
;; Defined at:
;;		line 200 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\Test1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  reading_coun    1    3[BANK2 ] unsigned char 
;;  lsb             1    2[BANK2 ] unsigned char 
;;  msb             1    1[BANK2 ] unsigned char 
;;  result          1    0[BANK2 ] unsigned char 
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
;;      Locals:         0       0       0       4       0       0       0
;;      Temps:          0       3       0       0       0       0       0
;;      Totals:         0       3       0       4       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_Add_Reading_To_Packet
;;		_Clear_Packet
;;		_Creat_Packet
;;		_DisplayReadings
;;		_LCDByte
;;		_LCDGotoXY
;;		_LCDWriteString
;;		_MyDelay
;;		_Write_b_eep
;;		_beep
;;		_get_current_readings
;;		_read_packet_from_page
;;		_tx_packet
;;		_write_packet_to_page
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\Test1.c"
	line	200
global __ptext6
__ptext6:
psect	text6
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\Test1.c"
	line	200
	global	__size_of_per_second_reading
	__size_of_per_second_reading	equ	__end_of_per_second_reading-_per_second_reading
	
_per_second_reading:; BSR set to: 1

;incstack = 0
	opt	stack 21
	dw	0FFFFh
	line	202
	
l10675:
;Test1.c: 202: unsigned char reading_count = 0, result = 0, msb = 0, lsb = 0;
	movlw	low(0)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	((per_second_reading@reading_count))&0ffh
	movlw	low(0)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	((per_second_reading@result))&0ffh
	movlw	low(0)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	((per_second_reading@msb))&0ffh
	movlw	low(0)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	((per_second_reading@lsb))&0ffh
	goto	l10677
	line	203
;Test1.c: 203: while(1)
	
l1064:; BSR set to: 2

	line	205
	
l10677:
;Test1.c: 204: {
;Test1.c: 205: Clear_Packet();
	call	_Clear_Packet	;wreg free
	line	206
	
l10679:
;Test1.c: 206: reading_count = 14;
	movlw	low(0Eh)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	((per_second_reading@reading_count))&0ffh
	line	207
	
l10681:; BSR set to: 2

;Test1.c: 207: Creat_Packet(2,reading_count);
	movff	(per_second_reading@reading_count),(c:Creat_Packet@Readings)
	movlw	(02h)&0ffh
	
	call	_Creat_Packet
	line	209
;Test1.c: 209: while(reading_count > 0)
	goto	l10695
	
l1066:
	line	211
	
l10683:
;Test1.c: 210: {
;Test1.c: 211: if(sec_flag == 1)
	decf	((c:_sec_flag)),c,w

	btfss	status,2
	goto	u8261
	goto	u8260
u8261:
	goto	l10695
u8260:
	line	213
	
l10685:
;Test1.c: 212: {
;Test1.c: 213: sec_flag = 0;
	movlw	low(0)
	movwf	((c:_sec_flag)),c
	line	215
	
l10687:
;Test1.c: 215: get_current_readings();
	call	_get_current_readings	;wreg free
	line	217
	
l10689:
;Test1.c: 217: result = Add_Reading_To_Packet(Temp1, Hum1, Temp2, Hum2);
	movff	(_Temp1),(c:Add_Reading_To_Packet@t1)
	movff	(_Temp1+1),(c:Add_Reading_To_Packet@t1+1)
	movff	(_Hum1),(c:Add_Reading_To_Packet@h1)
	movff	(_Hum1+1),(c:Add_Reading_To_Packet@h1+1)
	movff	(_Temp2),(c:Add_Reading_To_Packet@t2)
	movff	(_Temp2+1),(c:Add_Reading_To_Packet@t2+1)
	movff	(_Hum2),(c:Add_Reading_To_Packet@h2)
	movff	(_Hum2+1),(c:Add_Reading_To_Packet@h2+1)
	call	_Add_Reading_To_Packet	;wreg free
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	((per_second_reading@result))&0ffh
	line	219
	
l10691:; BSR set to: 2

;Test1.c: 219: DisplayReadings();
	call	_DisplayReadings	;wreg free
	line	220
	
l10693:
;Test1.c: 220: reading_count--;
	movlb	2	; () banked
	movlb	2	; () banked
	decf	((per_second_reading@reading_count))&0ffh
	goto	l10695
	line	221
	
l1067:; BSR set to: 2

	goto	l10695
	line	222
	
l1065:; BSR set to: 2

	line	209
	
l10695:
	movlb	2	; () banked
	movlb	2	; () banked
	tstfsz	((per_second_reading@reading_count))&0ffh
	goto	u8271
	goto	u8270
u8271:
	goto	l10683
u8270:
	goto	l10697
	
l1068:; BSR set to: 2

	line	223
	
l10697:; BSR set to: 2

;Test1.c: 221: }
;Test1.c: 222: }
;Test1.c: 223: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	224
	
l10699:
;Test1.c: 224: LCDWriteString("WRITTING PACKET");
		movlw	high(STR_40)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_40)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	225
	
l10701:
;Test1.c: 225: LCDGotoXY(0,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(0)&0ffh
	
	call	_LCDGotoXY
	line	226
;Test1.c: 226: LCDWriteString("TO EEPROM...");
		movlw	high(STR_41)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_41)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	227
	
l10703:
;Test1.c: 227: MyDelay(100);
	movlw	high(064h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(064h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	228
	
l10705:
;Test1.c: 228: write_packet_to_page(Current_Write_Page);
	movff	(_Current_Write_Page),(c:write_packet_to_page@page_no)	;volatile
	movff	(_Current_Write_Page+1),(c:write_packet_to_page@page_no+1)	;volatile
	call	_write_packet_to_page	;wreg free
	line	229
	
l10707:
;Test1.c: 229: Current_Write_Page++;
	movlb	0	; () banked
	movlb	0	; () banked
	infsnz	((_Current_Write_Page))&0ffh	;volatile
	incf	((_Current_Write_Page+1))&0ffh	;volatile
	line	231
	
l10709:; BSR set to: 0

;Test1.c: 231: msb = Current_Write_Page >> 8;
	movlb	0	; () banked
	movff	(_Current_Write_Page+1),??_per_second_reading+0+0	;volatile
	movff	??_per_second_reading+0+0,??_per_second_reading+1+0
	movlb	0	; () banked
	clrf	(??_per_second_reading+1+0+1)&0ffh
	movlb	0	; () banked
	movf	(??_per_second_reading+1+0)&0ffh,w
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	((per_second_reading@msb))&0ffh
	line	232
	
l10711:; BSR set to: 2

;Test1.c: 232: lsb = Current_Write_Page & 0x00FF;
	movff	(_Current_Write_Page),(per_second_reading@lsb)	;volatile
	line	235
	
l10713:; BSR set to: 2

;Test1.c: 235: Write_b_eep(0x00, msb);
	movlw	high(0)
	movwf	((c:Write_b_eep@badd+1)),c
	movlw	low(0)
	movwf	((c:Write_b_eep@badd)),c
	movff	(per_second_reading@msb),(c:Write_b_eep@bdat)
	call	_Write_b_eep	;wreg free
	line	236
	
l10715:
;Test1.c: 236: _delay(50);
	movlw	10
u8767:
	nop
decfsz	wreg,f
	goto	u8767

	line	237
	
l10717:
;Test1.c: 237: Write_b_eep(0x01, lsb);
	movlw	high(01h)
	movwf	((c:Write_b_eep@badd+1)),c
	movlw	low(01h)
	movwf	((c:Write_b_eep@badd)),c
	movff	(per_second_reading@lsb),(c:Write_b_eep@bdat)
	call	_Write_b_eep	;wreg free
	line	238
	
l10719:
;Test1.c: 238: _delay(50);
	movlw	10
u8777:
	nop
decfsz	wreg,f
	goto	u8777

	line	240
	
l10721:
;Test1.c: 240: if(Current_Write_Page >= 2)
	movlw	02h
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	((_Current_Write_Page))&0ffh,w	;volatile
	movlw	0
	movlb	0	; () banked
	subwfb	((_Current_Write_Page+1))&0ffh,w	;volatile
	btfss	status,0
	goto	u8281
	goto	u8280
u8281:
	goto	l10677
u8280:
	line	242
	
l10723:; BSR set to: 0

;Test1.c: 241: {
;Test1.c: 242: Current_Write_Page = 0;
	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Current_Write_Page+1))&0ffh	;volatile
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_Current_Write_Page))&0ffh	;volatile
	line	244
	
l10725:; BSR set to: 0

;Test1.c: 244: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	245
	
l10727:
;Test1.c: 245: LCDWriteString("MEMORY FULL...");
		movlw	high(STR_42)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_42)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	246
	
l10729:
;Test1.c: 246: LCDGotoXY(0,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(0)&0ffh
	
	call	_LCDGotoXY
	line	247
	
l10731:
;Test1.c: 247: LCDWriteString("SENDING TO CNTR.");
		movlw	high(STR_43)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_43)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	249
	
l10733:
;Test1.c: 249: RC2 = 1;
	bsf	c:(31762/8),(31762)&7	;volatile
	line	250
	
l10735:
;Test1.c: 250: beep(100);
	movlw	high(064h)
	movwf	((c:beep@del+1)),c
	movlw	low(064h)
	movwf	((c:beep@del)),c
	call	_beep	;wreg free
	line	251
	
l10737:
;Test1.c: 251: MyDelay(500);
	movlw	high(01F4h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(01F4h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	252
;Test1.c: 252: Current_Read_Page = 0;
	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Current_Read_Page+1))&0ffh	;volatile
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_Current_Read_Page))&0ffh	;volatile
	line	253
;Test1.c: 253: while(Current_Read_Page < 2)
	goto	l10765
	
l1071:; BSR set to: 0

	line	255
	
l10739:; BSR set to: 0

;Test1.c: 254: {
;Test1.c: 255: Clear_Packet();
	call	_Clear_Packet	;wreg free
	line	257
	
l10741:
;Test1.c: 257: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	258
	
l10743:
;Test1.c: 258: LCDWriteString("READING EEPROM...");
		movlw	high(STR_44)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_44)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	259
	
l10745:
;Test1.c: 259: read_packet_from_page(Current_Read_Page);
	movff	(_Current_Read_Page),(c:read_packet_from_page@page_no)	;volatile
	movff	(_Current_Read_Page+1),(c:read_packet_from_page@page_no+1)	;volatile
	call	_read_packet_from_page	;wreg free
	line	260
	
l10747:
;Test1.c: 260: MyDelay(10);
	movlw	high(0Ah)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(0Ah)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	261
	
l10749:
;Test1.c: 261: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	262
	
l10751:
;Test1.c: 262: LCDWriteString("SENDING PACKET...");
		movlw	high(STR_45)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_45)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	264
	
l10753:
;Test1.c: 264: tx_packet();
	call	_tx_packet	;wreg free
	line	265
	
l10755:
;Test1.c: 265: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	266
	
l10757:
;Test1.c: 266: LCDWriteString("PACKET SENT!");
		movlw	high(STR_46)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_46)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	267
	
l10759:
;Test1.c: 267: MyDelay(100);
	movlw	high(064h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(064h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	268
	
l10761:
;Test1.c: 268: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	269
	
l10763:
;Test1.c: 269: Current_Read_Page++;
	movlb	0	; () banked
	movlb	0	; () banked
	infsnz	((_Current_Read_Page))&0ffh	;volatile
	incf	((_Current_Read_Page+1))&0ffh	;volatile
	goto	l10765
	line	270
	
l1070:; BSR set to: 0

	line	253
	
l10765:; BSR set to: 0

	movlw	02h
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	((_Current_Read_Page))&0ffh,w	;volatile
	movlw	0
	movlb	0	; () banked
	subwfb	((_Current_Read_Page+1))&0ffh,w	;volatile
	btfss	status,0
	goto	u8291
	goto	u8290
u8291:
	goto	l10739
u8290:
	
l1072:; BSR set to: 0

	line	272
;Test1.c: 270: }
;Test1.c: 272: RC2 = 0;
	bcf	c:(31762/8),(31762)&7	;volatile
	line	273
	
l10767:; BSR set to: 0

;Test1.c: 273: beep(100);
	movlw	high(064h)
	movwf	((c:beep@del+1)),c
	movlw	low(064h)
	movwf	((c:beep@del)),c
	call	_beep	;wreg free
	line	274
;Test1.c: 274: MyDelay(500);
	movlw	high(01F4h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(01F4h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	goto	l10677
	line	275
	
l1069:
	goto	l10677
	line	276
	
l1073:
	line	203
	goto	l10677
	
l1074:
	line	277
	
l1075:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_per_second_reading
	__end_of_per_second_reading:
	signat	_per_second_reading,88
	global	_per_minute_reading

;; *************** function _per_minute_reading *****************
;; Defined at:
;;		line 118 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\Test1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  reading_coun    1    3[BANK2 ] unsigned char 
;;  lsb             1    2[BANK2 ] unsigned char 
;;  msb             1    1[BANK2 ] unsigned char 
;;  result          1    0[BANK2 ] unsigned char 
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
;;      Locals:         0       0       0       4       0       0       0
;;      Temps:          0       3       0       0       0       0       0
;;      Totals:         0       3       0       4       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_Add_Reading_To_Packet
;;		_Clear_Packet
;;		_Creat_Packet
;;		_DisplayReadings
;;		_LCDByte
;;		_LCDGotoXY
;;		_LCDWriteString
;;		_MyDelay
;;		_Write_b_eep
;;		_beep
;;		_get_current_readings
;;		_read_packet_from_page
;;		_tx_packet
;;		_write_packet_to_page
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2
	line	118
global __ptext7
__ptext7:
psect	text7
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\Test1.c"
	line	118
	global	__size_of_per_minute_reading
	__size_of_per_minute_reading	equ	__end_of_per_minute_reading-_per_minute_reading
	
_per_minute_reading:
;incstack = 0
	opt	stack 21
	dw	0FFFFh
	line	120
	
l10769:
;Test1.c: 120: unsigned char reading_count = 0, result = 0, msb = 0, lsb = 0;
	movlw	low(0)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	((per_minute_reading@reading_count))&0ffh
	movlw	low(0)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	((per_minute_reading@result))&0ffh
	movlw	low(0)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	((per_minute_reading@msb))&0ffh
	movlw	low(0)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	((per_minute_reading@lsb))&0ffh
	goto	l10771
	line	121
;Test1.c: 121: while(1)
	
l1050:; BSR set to: 2

	line	123
	
l10771:
;Test1.c: 122: {
;Test1.c: 123: Clear_Packet();
	call	_Clear_Packet	;wreg free
	line	124
	
l10773:
;Test1.c: 124: reading_count = 14;
	movlw	low(0Eh)
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	((per_minute_reading@reading_count))&0ffh
	line	125
	
l10775:; BSR set to: 2

;Test1.c: 125: Creat_Packet(1,reading_count);
	movff	(per_minute_reading@reading_count),(c:Creat_Packet@Readings)
	movlw	(01h)&0ffh
	
	call	_Creat_Packet
	line	126
	
l10777:
;Test1.c: 126: seconds = 0;
	movlw	low(0)
	movwf	((c:_seconds)),c
	line	127
	
l10779:
;Test1.c: 127: min_flag = 1;
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_min_flag))&0ffh
	line	129
;Test1.c: 129: while(reading_count > 0)
	goto	l10793
	
l1052:; BSR set to: 0

	line	131
	
l10781:
;Test1.c: 130: {
;Test1.c: 131: if(min_flag == 1)
	movlb	0	; () banked
	movlb	0	; () banked
	decf	((_min_flag))&0ffh,w

	btfss	status,2
	goto	u8301
	goto	u8300
u8301:
	goto	l10793
u8300:
	line	133
	
l10783:; BSR set to: 0

;Test1.c: 132: {
;Test1.c: 133: min_flag = 0;
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_min_flag))&0ffh
	line	134
;Test1.c: 134: seconds = 0;
	movlw	low(0)
	movwf	((c:_seconds)),c
	line	136
	
l10785:; BSR set to: 0

;Test1.c: 136: get_current_readings();
	call	_get_current_readings	;wreg free
	line	138
	
l10787:
;Test1.c: 138: result = Add_Reading_To_Packet(Temp1, Hum1, Temp2, Hum2);
	movff	(_Temp1),(c:Add_Reading_To_Packet@t1)
	movff	(_Temp1+1),(c:Add_Reading_To_Packet@t1+1)
	movff	(_Hum1),(c:Add_Reading_To_Packet@h1)
	movff	(_Hum1+1),(c:Add_Reading_To_Packet@h1+1)
	movff	(_Temp2),(c:Add_Reading_To_Packet@t2)
	movff	(_Temp2+1),(c:Add_Reading_To_Packet@t2+1)
	movff	(_Hum2),(c:Add_Reading_To_Packet@h2)
	movff	(_Hum2+1),(c:Add_Reading_To_Packet@h2+1)
	call	_Add_Reading_To_Packet	;wreg free
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	((per_minute_reading@result))&0ffh
	line	140
	
l10789:; BSR set to: 2

;Test1.c: 140: DisplayReadings();
	call	_DisplayReadings	;wreg free
	line	141
	
l10791:
;Test1.c: 141: reading_count--;
	movlb	2	; () banked
	movlb	2	; () banked
	decf	((per_minute_reading@reading_count))&0ffh
	goto	l10793
	line	142
	
l1053:; BSR set to: 2

	goto	l10793
	line	143
	
l1051:; BSR set to: 2

	line	129
	
l10793:
	movlb	2	; () banked
	movlb	2	; () banked
	tstfsz	((per_minute_reading@reading_count))&0ffh
	goto	u8311
	goto	u8310
u8311:
	goto	l10781
u8310:
	goto	l10795
	
l1054:; BSR set to: 2

	line	144
	
l10795:; BSR set to: 2

;Test1.c: 142: }
;Test1.c: 143: }
;Test1.c: 144: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	145
	
l10797:
;Test1.c: 145: LCDWriteString("WRITTING PACKET");
		movlw	high(STR_33)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_33)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	146
	
l10799:
;Test1.c: 146: LCDGotoXY(0,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(0)&0ffh
	
	call	_LCDGotoXY
	line	147
;Test1.c: 147: LCDWriteString("TO EEPROM...");
		movlw	high(STR_34)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_34)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	148
	
l10801:
;Test1.c: 148: MyDelay(100);
	movlw	high(064h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(064h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	149
	
l10803:
;Test1.c: 149: write_packet_to_page(Current_Write_Page);
	movff	(_Current_Write_Page),(c:write_packet_to_page@page_no)	;volatile
	movff	(_Current_Write_Page+1),(c:write_packet_to_page@page_no+1)	;volatile
	call	_write_packet_to_page	;wreg free
	line	150
	
l10805:
;Test1.c: 150: Current_Write_Page++;
	movlb	0	; () banked
	movlb	0	; () banked
	infsnz	((_Current_Write_Page))&0ffh	;volatile
	incf	((_Current_Write_Page+1))&0ffh	;volatile
	line	152
	
l10807:; BSR set to: 0

;Test1.c: 152: msb = Current_Write_Page >> 8;
	movlb	0	; () banked
	movff	(_Current_Write_Page+1),??_per_minute_reading+0+0	;volatile
	movff	??_per_minute_reading+0+0,??_per_minute_reading+1+0
	movlb	0	; () banked
	clrf	(??_per_minute_reading+1+0+1)&0ffh
	movlb	0	; () banked
	movf	(??_per_minute_reading+1+0)&0ffh,w
	movlb	2	; () banked
	movlb	2	; () banked
	movwf	((per_minute_reading@msb))&0ffh
	line	153
	
l10809:; BSR set to: 2

;Test1.c: 153: lsb = Current_Write_Page & 0x00FF;
	movff	(_Current_Write_Page),(per_minute_reading@lsb)	;volatile
	line	156
	
l10811:; BSR set to: 2

;Test1.c: 156: Write_b_eep(0x00, msb);
	movlw	high(0)
	movwf	((c:Write_b_eep@badd+1)),c
	movlw	low(0)
	movwf	((c:Write_b_eep@badd)),c
	movff	(per_minute_reading@msb),(c:Write_b_eep@bdat)
	call	_Write_b_eep	;wreg free
	line	157
	
l10813:
;Test1.c: 157: _delay(50);
	movlw	10
u8787:
	nop
decfsz	wreg,f
	goto	u8787

	line	158
	
l10815:
;Test1.c: 158: Write_b_eep(0x01, lsb);
	movlw	high(01h)
	movwf	((c:Write_b_eep@badd+1)),c
	movlw	low(01h)
	movwf	((c:Write_b_eep@badd)),c
	movff	(per_minute_reading@lsb),(c:Write_b_eep@bdat)
	call	_Write_b_eep	;wreg free
	line	159
	
l10817:
;Test1.c: 159: _delay(50);
	movlw	10
u8797:
	nop
decfsz	wreg,f
	goto	u8797

	line	161
	
l10819:
;Test1.c: 161: if(Current_Write_Page >= 2)
	movlw	02h
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	((_Current_Write_Page))&0ffh,w	;volatile
	movlw	0
	movlb	0	; () banked
	subwfb	((_Current_Write_Page+1))&0ffh,w	;volatile
	btfss	status,0
	goto	u8321
	goto	u8320
u8321:
	goto	l10771
u8320:
	line	163
	
l10821:; BSR set to: 0

;Test1.c: 162: {
;Test1.c: 163: Current_Write_Page = 0;
	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Current_Write_Page+1))&0ffh	;volatile
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_Current_Write_Page))&0ffh	;volatile
	line	165
	
l10823:; BSR set to: 0

;Test1.c: 165: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	166
	
l10825:
;Test1.c: 166: LCDWriteString("MEMORY FULL...");
		movlw	high(STR_35)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_35)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	167
	
l10827:
;Test1.c: 167: LCDGotoXY(0,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(0)&0ffh
	
	call	_LCDGotoXY
	line	168
	
l10829:
;Test1.c: 168: LCDWriteString("SENDING TO CNTR.");
		movlw	high(STR_36)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_36)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	170
	
l10831:
;Test1.c: 170: RC2 = 1;
	bsf	c:(31762/8),(31762)&7	;volatile
	line	171
	
l10833:
;Test1.c: 171: beep(100);
	movlw	high(064h)
	movwf	((c:beep@del+1)),c
	movlw	low(064h)
	movwf	((c:beep@del)),c
	call	_beep	;wreg free
	line	172
	
l10835:
;Test1.c: 172: MyDelay(500);
	movlw	high(01F4h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(01F4h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	173
;Test1.c: 173: Current_Read_Page = 0;
	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Current_Read_Page+1))&0ffh	;volatile
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_Current_Read_Page))&0ffh	;volatile
	line	174
;Test1.c: 174: while(Current_Read_Page < 2)
	goto	l10863
	
l1057:; BSR set to: 0

	line	176
	
l10837:; BSR set to: 0

;Test1.c: 175: {
;Test1.c: 176: Clear_Packet();
	call	_Clear_Packet	;wreg free
	line	178
	
l10839:
;Test1.c: 178: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	179
	
l10841:
;Test1.c: 179: LCDWriteString("READING EEPROM...");
		movlw	high(STR_37)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_37)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	180
	
l10843:
;Test1.c: 180: read_packet_from_page(Current_Read_Page);
	movff	(_Current_Read_Page),(c:read_packet_from_page@page_no)	;volatile
	movff	(_Current_Read_Page+1),(c:read_packet_from_page@page_no+1)	;volatile
	call	_read_packet_from_page	;wreg free
	line	181
	
l10845:
;Test1.c: 181: MyDelay(10);
	movlw	high(0Ah)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(0Ah)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	182
	
l10847:
;Test1.c: 182: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	183
	
l10849:
;Test1.c: 183: LCDWriteString("SENDING PACKET...");
		movlw	high(STR_38)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_38)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	185
	
l10851:
;Test1.c: 185: tx_packet();
	call	_tx_packet	;wreg free
	line	186
	
l10853:
;Test1.c: 186: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	187
	
l10855:
;Test1.c: 187: LCDWriteString("PACKET SENT!");
		movlw	high(STR_39)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_39)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	188
	
l10857:
;Test1.c: 188: MyDelay(100);
	movlw	high(064h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(064h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	189
	
l10859:
;Test1.c: 189: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	190
	
l10861:
;Test1.c: 190: Current_Read_Page++;
	movlb	0	; () banked
	movlb	0	; () banked
	infsnz	((_Current_Read_Page))&0ffh	;volatile
	incf	((_Current_Read_Page+1))&0ffh	;volatile
	goto	l10863
	line	191
	
l1056:; BSR set to: 0

	line	174
	
l10863:; BSR set to: 0

	movlw	02h
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	((_Current_Read_Page))&0ffh,w	;volatile
	movlw	0
	movlb	0	; () banked
	subwfb	((_Current_Read_Page+1))&0ffh,w	;volatile
	btfss	status,0
	goto	u8331
	goto	u8330
u8331:
	goto	l10837
u8330:
	
l1058:; BSR set to: 0

	line	193
;Test1.c: 191: }
;Test1.c: 193: RC2 = 0;
	bcf	c:(31762/8),(31762)&7	;volatile
	line	194
	
l10865:; BSR set to: 0

;Test1.c: 194: beep(100);
	movlw	high(064h)
	movwf	((c:beep@del+1)),c
	movlw	low(064h)
	movwf	((c:beep@del)),c
	call	_beep	;wreg free
	line	195
;Test1.c: 195: MyDelay(500);
	movlw	high(01F4h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(01F4h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	goto	l10771
	line	196
	
l1055:
	goto	l10771
	line	197
	
l1059:
	line	121
	goto	l10771
	
l1060:
	line	198
	
l1061:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_per_minute_reading
	__end_of_per_minute_reading:
	signat	_per_minute_reading,88
	global	_write_packet_to_page

;; *************** function _write_packet_to_page *****************
;; Defined at:
;;		line 125 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\myeeprom.c"
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
;;		_per_minute_reading
;;		_per_second_reading
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\myeeprom.c"
	line	125
global __ptext8
__ptext8:
psect	text8
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\myeeprom.c"
	line	125
	global	__size_of_write_packet_to_page
	__size_of_write_packet_to_page	equ	__end_of_write_packet_to_page-_write_packet_to_page
	
_write_packet_to_page:
;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	127
	
l9569:
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
	
l9571:
;myeeprom.c: 131: address = page_no * 128;
	movff	(c:write_packet_to_page@page_no),??_write_packet_to_page+0+0
	movff	(c:write_packet_to_page@page_no+1),??_write_packet_to_page+0+0+1
	movlw	07h
u7455:
	bcf	status,0
	rlcf	(??_write_packet_to_page+0+0),c
	rlcf	(??_write_packet_to_page+0+1),c
	decfsz	wreg
	goto	u7455
	movff	??_write_packet_to_page+0+0,(c:write_packet_to_page@address)
	movff	??_write_packet_to_page+0+1,(c:write_packet_to_page@address+1)
	line	133
	
l9573:
;myeeprom.c: 133: count = 0;
	movlw	low(0)
	movwf	((c:write_packet_to_page@count)),c
	line	134
;myeeprom.c: 134: while(PACKET[count] != 0xEA)
	goto	l9581
	
l152:
	line	136
	
l9575:
;myeeprom.c: 135: {
;myeeprom.c: 136: rom_byte_write(address,PACKET[count]);
	movff	(c:write_packet_to_page@address),(c:rom_byte_write@address)
	movff	(c:write_packet_to_page@address+1),(c:rom_byte_write@address+1)
	movf	((c:write_packet_to_page@count)),c,w
	mullw	01h
	movlb	1	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:rom_byte_write@byte)),c
	call	_rom_byte_write	;wreg free
	line	137
	
l9577:
;myeeprom.c: 137: count++;
	incf	((c:write_packet_to_page@count)),c
	line	138
	
l9579:
;myeeprom.c: 138: address++;
	infsnz	((c:write_packet_to_page@address)),c
	incf	((c:write_packet_to_page@address+1)),c
	goto	l9581
	line	139
	
l151:
	line	134
	
l9581:
	movf	((c:write_packet_to_page@count)),c,w
	mullw	01h
	movlb	1	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	(0EAh)&0ffh
	cpfseq	indf2
	goto	u7461
	goto	u7460
u7461:
	goto	l9575
u7460:
	goto	l9583
	
l153:; BSR set to: 1

	line	140
	
l9583:; BSR set to: 1

;myeeprom.c: 139: }
;myeeprom.c: 140: rom_byte_write(address,PACKET[count]);
	movff	(c:write_packet_to_page@address),(c:rom_byte_write@address)
	movff	(c:write_packet_to_page@address+1),(c:rom_byte_write@address+1)
	movf	((c:write_packet_to_page@count)),c,w
	mullw	01h
	movlb	1	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:rom_byte_write@byte)),c
	call	_rom_byte_write	;wreg free
	goto	l154
	line	142
	
l9585:
	line	143
;myeeprom.c: 142: return;
	
l154:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_write_packet_to_page
	__end_of_write_packet_to_page:
	signat	_write_packet_to_page,4216
	global	_rom_byte_write

;; *************** function _rom_byte_write *****************
;; Defined at:
;;		line 7 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\myeeprom.c"
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
psect	text9,class=CODE,space=0,reloc=2
	line	7
global __ptext9
__ptext9:
psect	text9
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\myeeprom.c"
	line	7
	global	__size_of_rom_byte_write
	__size_of_rom_byte_write	equ	__end_of_rom_byte_write-_rom_byte_write
	
_rom_byte_write:
;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	10
	
l9163:
;myeeprom.c: 9: unsigned char msb, lsb;
;myeeprom.c: 10: msb = address >> 8;
	movff	(c:rom_byte_write@address+1),??_rom_byte_write+0+0
	movff	??_rom_byte_write+0+0,??_rom_byte_write+1+0
	clrf	(??_rom_byte_write+1+0+1)&0ffh,c
	movf	(??_rom_byte_write+1+0),c,w
	movwf	((c:rom_byte_write@msb)),c
	line	11
	
l9165:
;myeeprom.c: 11: lsb = address & 0x00FF;
	movff	(c:rom_byte_write@address),(c:rom_byte_write@lsb)
	line	13
	
l9167:
;myeeprom.c: 13: RE1 = 1;
	bsf	c:(31777/8),(31777)&7	;volatile
	line	14
	
l9169:
;myeeprom.c: 14: IdleI2C();
	call	_IdleI2C	;wreg free
	line	15
	
l9171:
;myeeprom.c: 15: SSPCON2bits.SEN=1;while(SSPCON2bits.SEN);
	bsf	((c:4037)),c,0	;volatile
	goto	l96
	
l97:
	
l96:
	btfsc	((c:4037)),c,0	;volatile
	goto	u7201
	goto	u7200
u7201:
	goto	l96
u7200:
	goto	l9173
	
l98:
	line	16
	
l9173:
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
	
l9175:
;myeeprom.c: 24: SSPCON2bits.PEN=1;while(SSPCON2bits.PEN);
	bsf	((c:4037)),c,2	;volatile
	goto	l99
	
l100:
	
l99:
	btfsc	((c:4037)),c,2	;volatile
	goto	u7211
	goto	u7210
u7211:
	goto	l99
u7210:
	goto	l9177
	
l101:
	line	25
	
l9177:
;myeeprom.c: 25: _delay(100000);
	movlw	98
movwf	(??_rom_byte_write+0+0)&0ffh,c,f
	movlw	118
u8807:
	decfsz	wreg,f
	goto	u8807
	decfsz	(??_rom_byte_write+0+0)&0ffh,c,f
	goto	u8807
	nop2

	line	26
	
l9179:
;myeeprom.c: 26: RE1 = 0;
	bcf	c:(31777/8),(31777)&7	;volatile
	line	27
	
l102:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_rom_byte_write
	__end_of_rom_byte_write:
	signat	_rom_byte_write,8312
	global	_Creat_Packet

;; *************** function _Creat_Packet *****************
;; Defined at:
;;		line 6 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\packet.c"
;; Parameters:    Size  Location     Type
;;  F_Code          1    wreg     unsigned char 
;;  Readings        1   22[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  F_Code          1   23[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh, cstack
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_MyDelay
;;		_ds1307_get_time
;; This function is called by:
;;		_Creat_RTC_Packet
;;		_per_minute_reading
;;		_per_second_reading
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\packet.c"
	line	6
global __ptext10
__ptext10:
psect	text10
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\packet.c"
	line	6
	global	__size_of_Creat_Packet
	__size_of_Creat_Packet	equ	__end_of_Creat_Packet-_Creat_Packet
	
_Creat_Packet:
;incstack = 0
	opt	stack 23
	dw	0FFFFh
;Creat_Packet@F_Code stored from wreg
	movwf	((c:Creat_Packet@F_Code)),c
	line	8
	
l9219:
;packet.c: 8: PACKET[0] = 0xFA;
	movlw	low(0FAh)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((_PACKET))&0ffh	;volatile
	line	9
	
l9221:; BSR set to: 1

;packet.c: 9: PACKET[1] = (Readings * 8) + 16;
	movf	((c:Creat_Packet@Readings)),c,w
	mullw	08h
	movf	(prodl),c,w
	addlw	low(010h)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	(0+(_PACKET+01h))&0ffh	;volatile
	line	10
	
l9223:; BSR set to: 1

;packet.c: 10: PACKET[2] = Source_ID;
	movff	(c:_Source_ID),0+(_PACKET+02h)	;volatile
	line	11
	
l9225:; BSR set to: 1

;packet.c: 11: PACKET[3] = Destination_ID;
	movff	(c:_Destination_ID),0+(_PACKET+03h)	;volatile
	line	12
	
l9227:; BSR set to: 1

;packet.c: 12: PACKET[4] = F_Code;
	movff	(c:Creat_Packet@F_Code),0+(_PACKET+04h)	;volatile
	line	13
	
l9229:; BSR set to: 1

;packet.c: 13: PACKET[5] = Readings;
	movff	(c:Creat_Packet@Readings),0+(_PACKET+05h)	;volatile
	line	16
	
l9231:; BSR set to: 1

;packet.c: 16: ds1307_get_time();
	call	_ds1307_get_time	;wreg free
	line	17
	
l9233:
;packet.c: 17: MyDelay(100);
	movlw	high(064h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(064h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	19
	
l9235:
;packet.c: 19: PACKET[6] = year;
	movff	(c:_year),0+(_PACKET+06h)	;volatile
	line	20
	
l9237:
;packet.c: 20: PACKET[7] = month;
	movff	(c:_month),0+(_PACKET+07h)	;volatile
	line	21
	
l9239:
;packet.c: 21: PACKET[8] = day;
	movff	(c:_day),0+(_PACKET+08h)	;volatile
	line	22
	
l9241:
;packet.c: 22: PACKET[9] = dow;
	movff	(c:_dow),0+(_PACKET+09h)	;volatile
	line	23
	
l9243:
;packet.c: 23: PACKET[10] = hr;
	movff	(c:_hr),0+(_PACKET+0Ah)	;volatile
	line	24
	
l9245:
;packet.c: 24: PACKET[11] = min;
	movff	(c:_min),0+(_PACKET+0Bh)	;volatile
	line	25
	
l9247:
;packet.c: 25: PACKET[12] = sec;
	movff	(c:_sec),0+(_PACKET+0Ch)	;volatile
	line	27
	
l9249:
;packet.c: 27: Current_Pos = 13;
	movlw	low(0Dh)
	movwf	((c:_Current_Pos)),c	;volatile
	line	28
	
l9251:
;packet.c: 28: Data_End = Readings * 8 + 13;
	movf	((c:Creat_Packet@Readings)),c,w
	mullw	08h
	movf	(prodl),c,w
	addlw	low(0Dh)
	movwf	((c:_Data_End)),c	;volatile
	line	29
	
l398:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_Creat_Packet
	__end_of_Creat_Packet:
	signat	_Creat_Packet,8312
	global	_Add_Reading_To_Packet

;; *************** function _Add_Reading_To_Packet *****************
;; Defined at:
;;		line 50 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\packet.c"
;; Parameters:    Size  Location     Type
;;  t1              2   31[COMRAM] int 
;;  h1              2   33[COMRAM] int 
;;  t2              2   35[COMRAM] int 
;;  h2              2   37[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  CRC             2   51[COMRAM] int 
;;  CRC_LOW         1   50[COMRAM] unsigned char 
;;  CRC_HI          1   49[COMRAM] unsigned char 
;;  h2_l            1   48[COMRAM] unsigned char 
;;  h2_h            1   47[COMRAM] unsigned char 
;;  t2_l            1   46[COMRAM] unsigned char 
;;  t2_h            1   45[COMRAM] unsigned char 
;;  h1_l            1   44[COMRAM] unsigned char 
;;  h1_h            1   43[COMRAM] unsigned char 
;;  t1_l            1   42[COMRAM] unsigned char 
;;  t1_h            1   41[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         8       0       0       0       0       0       0
;;      Locals:        12       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:        22       0       0       0       0       0       0
;;Total ram usage:       22 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Calculate_CRC
;; This function is called by:
;;		_per_minute_reading
;;		_per_second_reading
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2
	line	50
global __ptext11
__ptext11:
psect	text11
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\packet.c"
	line	50
	global	__size_of_Add_Reading_To_Packet
	__size_of_Add_Reading_To_Packet	equ	__end_of_Add_Reading_To_Packet-_Add_Reading_To_Packet
	
_Add_Reading_To_Packet:
;incstack = 0
	opt	stack 26
	dw	0FFFFh
	line	57
	
l9757:
;packet.c: 52: char t1_h, t1_l, h1_h, h1_l;
;packet.c: 53: char t2_h, t2_l, h2_h, h2_l;
;packet.c: 54: int CRC;
;packet.c: 55: char CRC_HI, CRC_LOW;
;packet.c: 57: t1_h = t1 >> 8;
	movff	(c:Add_Reading_To_Packet@t1+1),??_Add_Reading_To_Packet+0+0
	clrf	(??_Add_Reading_To_Packet+0+0+1)&0ffh,c
	btfsc	(??_Add_Reading_To_Packet+0+0)&0ffh,c,7
	setf	(??_Add_Reading_To_Packet+0+0+1)&0ffh,c
	movf	(??_Add_Reading_To_Packet+0+0),c,w
	movwf	((c:Add_Reading_To_Packet@t1_h)),c
	line	58
	
l9759:
;packet.c: 58: t1_l = t1 & 0x00FF;
	movff	(c:Add_Reading_To_Packet@t1),(c:Add_Reading_To_Packet@t1_l)
	line	60
;packet.c: 60: h1_h = h1 >> 8;
	movff	(c:Add_Reading_To_Packet@h1+1),??_Add_Reading_To_Packet+0+0
	clrf	(??_Add_Reading_To_Packet+0+0+1)&0ffh,c
	btfsc	(??_Add_Reading_To_Packet+0+0)&0ffh,c,7
	setf	(??_Add_Reading_To_Packet+0+0+1)&0ffh,c
	movf	(??_Add_Reading_To_Packet+0+0),c,w
	movwf	((c:Add_Reading_To_Packet@h1_h)),c
	line	61
	
l9761:
;packet.c: 61: h1_l = h1 & 0x00FF;
	movff	(c:Add_Reading_To_Packet@h1),(c:Add_Reading_To_Packet@h1_l)
	line	63
;packet.c: 63: t2_h = t2 >> 8;
	movff	(c:Add_Reading_To_Packet@t2+1),??_Add_Reading_To_Packet+0+0
	clrf	(??_Add_Reading_To_Packet+0+0+1)&0ffh,c
	btfsc	(??_Add_Reading_To_Packet+0+0)&0ffh,c,7
	setf	(??_Add_Reading_To_Packet+0+0+1)&0ffh,c
	movf	(??_Add_Reading_To_Packet+0+0),c,w
	movwf	((c:Add_Reading_To_Packet@t2_h)),c
	line	64
	
l9763:
;packet.c: 64: t2_l = t2 & 0x00FF;
	movff	(c:Add_Reading_To_Packet@t2),(c:Add_Reading_To_Packet@t2_l)
	line	66
;packet.c: 66: h2_h = h2 >> 8;
	movff	(c:Add_Reading_To_Packet@h2+1),??_Add_Reading_To_Packet+0+0
	clrf	(??_Add_Reading_To_Packet+0+0+1)&0ffh,c
	btfsc	(??_Add_Reading_To_Packet+0+0)&0ffh,c,7
	setf	(??_Add_Reading_To_Packet+0+0+1)&0ffh,c
	movf	(??_Add_Reading_To_Packet+0+0),c,w
	movwf	((c:Add_Reading_To_Packet@h2_h)),c
	line	67
	
l9765:
;packet.c: 67: h2_l = h2 & 0x00FF;
	movff	(c:Add_Reading_To_Packet@h2),(c:Add_Reading_To_Packet@h2_l)
	line	69
	
l9767:
;packet.c: 69: PACKET[Current_Pos] = t1_h;
	movf	((c:_Current_Pos)),c,w	;volatile
	mullw	01h
	movlb	1	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:Add_Reading_To_Packet@t1_h),indf2

	line	70
	
l9769:; BSR set to: 1

;packet.c: 70: Current_Pos++;
	incf	((c:_Current_Pos)),c	;volatile
	line	71
	
l9771:; BSR set to: 1

;packet.c: 71: PACKET[Current_Pos] = t1_l;
	movf	((c:_Current_Pos)),c,w	;volatile
	mullw	01h
	movlb	1	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:Add_Reading_To_Packet@t1_l),indf2

	line	72
	
l9773:; BSR set to: 1

;packet.c: 72: Current_Pos++;
	incf	((c:_Current_Pos)),c	;volatile
	line	73
	
l9775:; BSR set to: 1

;packet.c: 73: PACKET[Current_Pos] = h1_h;
	movf	((c:_Current_Pos)),c,w	;volatile
	mullw	01h
	movlb	1	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:Add_Reading_To_Packet@h1_h),indf2

	line	74
	
l9777:; BSR set to: 1

;packet.c: 74: Current_Pos++;
	incf	((c:_Current_Pos)),c	;volatile
	line	75
	
l9779:; BSR set to: 1

;packet.c: 75: PACKET[Current_Pos] = h1_l;
	movf	((c:_Current_Pos)),c,w	;volatile
	mullw	01h
	movlb	1	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:Add_Reading_To_Packet@h1_l),indf2

	line	76
	
l9781:; BSR set to: 1

;packet.c: 76: Current_Pos++;
	incf	((c:_Current_Pos)),c	;volatile
	line	77
	
l9783:; BSR set to: 1

;packet.c: 77: PACKET[Current_Pos] = t2_h;
	movf	((c:_Current_Pos)),c,w	;volatile
	mullw	01h
	movlb	1	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:Add_Reading_To_Packet@t2_h),indf2

	line	78
	
l9785:; BSR set to: 1

;packet.c: 78: Current_Pos++;
	incf	((c:_Current_Pos)),c	;volatile
	line	79
	
l9787:; BSR set to: 1

;packet.c: 79: PACKET[Current_Pos] = t2_l;
	movf	((c:_Current_Pos)),c,w	;volatile
	mullw	01h
	movlb	1	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:Add_Reading_To_Packet@t2_l),indf2

	line	80
	
l9789:; BSR set to: 1

;packet.c: 80: Current_Pos++;
	incf	((c:_Current_Pos)),c	;volatile
	line	81
	
l9791:; BSR set to: 1

;packet.c: 81: PACKET[Current_Pos] = h2_h;
	movf	((c:_Current_Pos)),c,w	;volatile
	mullw	01h
	movlb	1	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:Add_Reading_To_Packet@h2_h),indf2

	line	82
	
l9793:; BSR set to: 1

;packet.c: 82: Current_Pos++;
	incf	((c:_Current_Pos)),c	;volatile
	line	83
	
l9795:; BSR set to: 1

;packet.c: 83: PACKET[Current_Pos] = h2_l;
	movf	((c:_Current_Pos)),c,w	;volatile
	mullw	01h
	movlb	1	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:Add_Reading_To_Packet@h2_l),indf2

	line	84
	
l9797:; BSR set to: 1

;packet.c: 84: Current_Pos++;
	incf	((c:_Current_Pos)),c	;volatile
	line	86
;packet.c: 86: if(Current_Pos == Data_End)
	movf	((c:_Data_End)),c,w	;volatile
	cpfseq	((c:_Current_Pos)),c	;volatile
	goto	u7711
	goto	u7710
u7711:
	goto	l9819
u7710:
	line	89
	
l9799:; BSR set to: 1

;packet.c: 87: {
;packet.c: 89: CRC = Calculate_CRC();
	call	_Calculate_CRC	;wreg free
	movff	0+?_Calculate_CRC,(c:Add_Reading_To_Packet@CRC)
	movff	1+?_Calculate_CRC,(c:Add_Reading_To_Packet@CRC+1)
	line	90
	
l9801:
;packet.c: 90: CRC_HI = CRC >> 8;
	movff	(c:Add_Reading_To_Packet@CRC+1),??_Add_Reading_To_Packet+0+0
	clrf	(??_Add_Reading_To_Packet+0+0+1)&0ffh,c
	btfsc	(??_Add_Reading_To_Packet+0+0)&0ffh,c,7
	setf	(??_Add_Reading_To_Packet+0+0+1)&0ffh,c
	movf	(??_Add_Reading_To_Packet+0+0),c,w
	movwf	((c:Add_Reading_To_Packet@CRC_HI)),c
	line	91
	
l9803:
;packet.c: 91: CRC_LOW = CRC & 0x00FF;
	movff	(c:Add_Reading_To_Packet@CRC),(c:Add_Reading_To_Packet@CRC_LOW)
	line	92
	
l9805:
;packet.c: 92: PACKET[Current_Pos] = CRC_HI;
	movf	((c:_Current_Pos)),c,w	;volatile
	mullw	01h
	movlb	1	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:Add_Reading_To_Packet@CRC_HI),indf2

	line	93
	
l9807:; BSR set to: 1

;packet.c: 93: Current_Pos++;
	incf	((c:_Current_Pos)),c	;volatile
	line	94
	
l9809:; BSR set to: 1

;packet.c: 94: PACKET[Current_Pos] = CRC_LOW;
	movf	((c:_Current_Pos)),c,w	;volatile
	mullw	01h
	movlb	1	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:Add_Reading_To_Packet@CRC_LOW),indf2

	line	95
	
l9811:; BSR set to: 1

;packet.c: 95: Current_Pos++;
	incf	((c:_Current_Pos)),c	;volatile
	line	96
	
l9813:; BSR set to: 1

;packet.c: 96: PACKET[Current_Pos] = 0xEA;
	movf	((c:_Current_Pos)),c,w	;volatile
	mullw	01h
	movlb	1	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0EAh)
	movwf	indf2
	line	97
	
l9815:; BSR set to: 1

;packet.c: 97: return 0;
	movlw	(0)&0ffh
	goto	l405
	
l9817:; BSR set to: 1

	goto	l405
	line	98
	
l404:; BSR set to: 1

	line	99
	
l9819:; BSR set to: 1

;packet.c: 98: }
;packet.c: 99: return 1;
	movlw	(01h)&0ffh
	goto	l405
	
l9821:; BSR set to: 1

	line	100
	
l405:; BSR set to: 1

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_Add_Reading_To_Packet
	__end_of_Add_Reading_To_Packet:
	signat	_Add_Reading_To_Packet,16505
	global	_Calculate_CRC

;; *************** function _Calculate_CRC *****************
;; Defined at:
;;		line 102 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\packet.c"
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
psect	text12,class=CODE,space=0,reloc=2
	line	102
global __ptext12
__ptext12:
psect	text12
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\packet.c"
	line	102
	global	__size_of_Calculate_CRC
	__size_of_Calculate_CRC	equ	__end_of_Calculate_CRC-_Calculate_CRC
	
_Calculate_CRC:; BSR set to: 1

;incstack = 0
	opt	stack 26
	dw	0FFFFh
	line	105
	
l9265:
;packet.c: 104: char count;
;packet.c: 105: int sum = 0;
	movlw	high(0)
	movwf	((c:Calculate_CRC@sum+1)),c
	movlw	low(0)
	movwf	((c:Calculate_CRC@sum)),c
	line	107
;packet.c: 107: for(count = 0; count <= Data_End - 1; count++)
	movlw	low(0)
	movwf	((c:Calculate_CRC@count)),c
	goto	l9271
	line	108
	
l409:
	
l9267:
;packet.c: 108: sum = sum + PACKET[count];
	movf	((c:Calculate_CRC@count)),c,w
	mullw	01h
	movlb	1	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
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
	line	107
	
l9269:; BSR set to: 1

	incf	((c:Calculate_CRC@count)),c
	goto	l9271
	
l408:; BSR set to: 1

	
l9271:
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
	goto	u7291
	goto	u7290
u7291:
	goto	l9267
u7290:
	
l410:
	line	109
;packet.c: 109: return sum;
	movff	(c:Calculate_CRC@sum),(c:?_Calculate_CRC)
	movff	(c:Calculate_CRC@sum+1),(c:?_Calculate_CRC+1)
	line	110
	
l411:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_Calculate_CRC
	__end_of_Calculate_CRC:
	signat	_Calculate_CRC,90
	global	_local_display

;; *************** function _local_display *****************
;; Defined at:
;;		line 466 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\Test1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  s               1   87[COMRAM] unsigned char 
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
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_DisplayReadings
;;		_get_current_readings
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\Test1.c"
	line	466
global __ptext13
__ptext13:
psect	text13
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\Test1.c"
	line	466
	global	__size_of_local_display
	__size_of_local_display	equ	__end_of_local_display-_local_display
	
_local_display:
;incstack = 0
	opt	stack 21
	dw	0FFFFh
	line	468
	
l10527:
;Test1.c: 468: unsigned char s = 0;
	movlw	low(0)
	movwf	((c:local_display@s)),c
	line	470
;Test1.c: 470: s = 0;
	movlw	low(0)
	movwf	((c:local_display@s)),c
	line	471
;Test1.c: 471: while(s < 60)
	goto	l10539
	
l1111:
	line	474
	
l10529:
;Test1.c: 472: {
;Test1.c: 474: if(sec_flag == 1)
	decf	((c:_sec_flag)),c,w

	btfss	status,2
	goto	u8171
	goto	u8170
u8171:
	goto	l10539
u8170:
	line	476
	
l10531:
;Test1.c: 475: {
;Test1.c: 476: s++;
	incf	((c:local_display@s)),c
	line	477
	
l10533:
;Test1.c: 477: sec_flag = 0;
	movlw	low(0)
	movwf	((c:_sec_flag)),c
	line	479
	
l10535:
;Test1.c: 479: get_current_readings();
	call	_get_current_readings	;wreg free
	line	481
	
l10537:
;Test1.c: 481: DisplayReadings();
	call	_DisplayReadings	;wreg free
	goto	l10539
	line	482
	
l1112:
	goto	l10539
	line	483
	
l1110:
	line	471
	
l10539:
	movlw	(03Ch-1)
	cpfsgt	((c:local_display@s)),c
	goto	u8181
	goto	u8180
u8181:
	goto	l10529
u8180:
	goto	l1114
	
l1113:
	line	485
;Test1.c: 482: }
;Test1.c: 483: }
;Test1.c: 484: return;
	
l1114:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_local_display
	__end_of_local_display:
	signat	_local_display,88
	global	_get_current_readings

;; *************** function _get_current_readings *****************
;; Defined at:
;;		line 5 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\hsm20g.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  voltage4        3   50[BANK0 ] float 
;;  voltage3        3   47[BANK0 ] float 
;;  voltage2        3   44[BANK0 ] float 
;;  voltage1        3   41[BANK0 ] float 
;;  ADCResult       2   53[BANK0 ] unsigned int 
;;  points          2    0        unsigned int 
;;  dec             2    0        unsigned int 
;;  i               1   55[BANK0 ] unsigned char 
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
;;      Locals:         0      15       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0      15       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_BusyADC
;;		_CloseADC
;;		_ConvertADC
;;		_OpenADC
;;		_ReadADC
;;		_SetChanADC
;;		___ftdiv
;;		___ftmul
;;		___lwtoft
;;		_float_to_int
;;		_voltage_to_hum
;;		_voltage_to_temp
;; This function is called by:
;;		_per_minute_reading
;;		_per_second_reading
;;		_local_display
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\hsm20g.c"
	line	5
global __ptext14
__ptext14:
psect	text14
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\hsm20g.c"
	line	5
	global	__size_of_get_current_readings
	__size_of_get_current_readings	equ	__end_of_get_current_readings-_get_current_readings
	
_get_current_readings:
;incstack = 0
	opt	stack 21
	dw	0FFFFh
	line	8
	
l9929:
;hsm20g.c: 7: char i;
;hsm20g.c: 8: unsigned int ADCResult = 0, dec, points;
	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((get_current_readings@ADCResult+1))&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movwf	((get_current_readings@ADCResult))&0ffh
	line	11
;hsm20g.c: 9: float voltage1, voltage2, voltage3, voltage4;
;hsm20g.c: 11: TRISA = 0x1F;
	movlw	low(01Fh)
	movwf	((c:3986)),c	;volatile
	line	13
	
l9931:; BSR set to: 0

;hsm20g.c: 13: OpenADC( 0b11011111 & 0b11111111 & 0b11110010, 0b10000111 & 0b01111111 );
	movlw	low(07h)
	movwf	((c:OpenADC@config2)),c
	movlw	(0D2h)&0ffh
	
	call	_OpenADC
	line	16
	
l9933:
;hsm20g.c: 16: _delay( 50 );
	movlw	10
u8817:
	nop
decfsz	wreg,f
	goto	u8817

	line	17
	
l9935:
;hsm20g.c: 17: SetChanADC( 0b10000111 );
	movlw	(087h)&0ffh
	
	call	_SetChanADC
	line	19
	
l9937:
;hsm20g.c: 19: for(i=0;i<16;i++)
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((get_current_readings@i))&0ffh
	movlw	(010h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((get_current_readings@i))&0ffh
	goto	u7781
	goto	u7780
u7781:
	goto	l9941
u7780:
	goto	l9951
	
l9939:; BSR set to: 0

	goto	l9951
	line	20
	
l592:; BSR set to: 0

	line	21
	
l9941:; BSR set to: 0

;hsm20g.c: 20: {
;hsm20g.c: 21: ConvertADC();
	call	_ConvertADC	;wreg free
	line	22
;hsm20g.c: 22: while(BusyADC());
	goto	l9943
	
l595:
	goto	l9943
	
l594:
	
l9943:
	call	_BusyADC	;wreg free
	iorlw	0
	btfss	status,2
	goto	u7791
	goto	u7790
u7791:
	goto	l9943
u7790:
	goto	l9945
	
l596:
	line	23
	
l9945:
;hsm20g.c: 23: ADCResult += (unsigned int) ReadADC();
	call	_ReadADC	;wreg free
	movf	(0+?_ReadADC),c,w
	movlb	0	; () banked
	movlb	0	; () banked
	addwf	((get_current_readings@ADCResult))&0ffh
	movf	(1+?_ReadADC),c,w
	movlb	0	; () banked
	movlb	0	; () banked
	addwfc	((get_current_readings@ADCResult+1))&0ffh

	line	19
	
l9947:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	incf	((get_current_readings@i))&0ffh
	
l9949:; BSR set to: 0

	movlw	(010h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((get_current_readings@i))&0ffh
	goto	u7801
	goto	u7800
u7801:
	goto	l9941
u7800:
	goto	l9951
	
l593:; BSR set to: 0

	line	25
	
l9951:; BSR set to: 0

;hsm20g.c: 24: }
;hsm20g.c: 25: ADCResult /= 16;
	movlb	0	; () banked
	movlb	0	; () banked
	swapf	((get_current_readings@ADCResult))&0ffh
	movlb	0	; () banked
	swapf	((get_current_readings@ADCResult+1))&0ffh
	movlw	0fh
	movlb	0	; () banked
	andwf	((get_current_readings@ADCResult))&0ffh
	movlb	0	; () banked
	movf	((get_current_readings@ADCResult+1))&0ffh,w
	andlw	0f0h
	movlb	0	; () banked
	iorwf	((get_current_readings@ADCResult))&0ffh
	movlw	0fh
	movlb	0	; () banked
	andwf	((get_current_readings@ADCResult+1))&0ffh
	line	26
	
l9953:; BSR set to: 0

;hsm20g.c: 26: voltage1 = (ADCResult*5.0)/1024;
	movlw	low(float24(5.0000000000000000))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(5.0000000000000000))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(5.0000000000000000))
	movwf	((c:___ftmul@f2+2)),c

	movff	(get_current_readings@ADCResult),(c:___lwtoft@c)
	movff	(get_current_readings@ADCResult+1),(c:___lwtoft@c+1)
	call	___lwtoft	;wreg free
	movff	0+?___lwtoft,(c:___ftmul@f1)
	movff	1+?___lwtoft,(c:___ftmul@f1+1)
	movff	2+?___lwtoft,(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftdiv@f1)
	movff	1+?___ftmul,(c:___ftdiv@f1+1)
	movff	2+?___ftmul,(c:___ftdiv@f1+2)
	movlw	low(float24(1024.0000000000000))
	movwf	((c:___ftdiv@f2)),c
	movlw	high(float24(1024.0000000000000))
	movwf	((c:___ftdiv@f2+1)),c
	movlw	low highword(float24(1024.0000000000000))
	movwf	((c:___ftdiv@f2+2)),c

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(get_current_readings@voltage1)
	movff	1+?___ftdiv,(get_current_readings@voltage1+1)
	movff	2+?___ftdiv,(get_current_readings@voltage1+2)
	line	27
	
l9955:
;hsm20g.c: 27: t1 = voltage_to_temp(voltage1);
	movff	(get_current_readings@voltage1),(voltage_to_temp@voltage)
	movff	(get_current_readings@voltage1+1),(voltage_to_temp@voltage+1)
	movff	(get_current_readings@voltage1+2),(voltage_to_temp@voltage+2)
	call	_voltage_to_temp	;wreg free
	movff	0+?_voltage_to_temp,(_t1)
	movff	1+?_voltage_to_temp,(_t1+1)
	movff	2+?_voltage_to_temp,(_t1+2)
	line	28
	
l9957:
;hsm20g.c: 28: Temp1 = float_to_int(t1);
	movff	(_t1),(c:float_to_int@value)
	movff	(_t1+1),(c:float_to_int@value+1)
	movff	(_t1+2),(c:float_to_int@value+2)
	call	_float_to_int	;wreg free
	movff	0+?_float_to_int,(_Temp1)
	movff	1+?_float_to_int,(_Temp1+1)
	line	31
	
l9959:
;hsm20g.c: 31: _delay( 50 );
	movlw	10
u8827:
	nop
decfsz	wreg,f
	goto	u8827

	line	32
	
l9961:
;hsm20g.c: 32: SetChanADC( 0b10001111 );
	movlw	(08Fh)&0ffh
	
	call	_SetChanADC
	line	34
	
l9963:
;hsm20g.c: 34: for(i=0;i<16;i++)
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((get_current_readings@i))&0ffh
	
l9965:; BSR set to: 0

	movlw	(010h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((get_current_readings@i))&0ffh
	goto	u7811
	goto	u7810
u7811:
	goto	l9969
u7810:
	goto	l9979
	
l9967:; BSR set to: 0

	goto	l9979
	line	35
	
l597:; BSR set to: 0

	line	36
	
l9969:; BSR set to: 0

;hsm20g.c: 35: {
;hsm20g.c: 36: ConvertADC();
	call	_ConvertADC	;wreg free
	line	37
;hsm20g.c: 37: while(BusyADC());
	goto	l9971
	
l600:
	goto	l9971
	
l599:
	
l9971:
	call	_BusyADC	;wreg free
	iorlw	0
	btfss	status,2
	goto	u7821
	goto	u7820
u7821:
	goto	l9971
u7820:
	goto	l9973
	
l601:
	line	38
	
l9973:
;hsm20g.c: 38: ADCResult += (unsigned int) ReadADC();
	call	_ReadADC	;wreg free
	movf	(0+?_ReadADC),c,w
	movlb	0	; () banked
	movlb	0	; () banked
	addwf	((get_current_readings@ADCResult))&0ffh
	movf	(1+?_ReadADC),c,w
	movlb	0	; () banked
	movlb	0	; () banked
	addwfc	((get_current_readings@ADCResult+1))&0ffh

	line	34
	
l9975:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	incf	((get_current_readings@i))&0ffh
	
l9977:; BSR set to: 0

	movlw	(010h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((get_current_readings@i))&0ffh
	goto	u7831
	goto	u7830
u7831:
	goto	l9969
u7830:
	goto	l9979
	
l598:; BSR set to: 0

	line	40
	
l9979:; BSR set to: 0

;hsm20g.c: 39: }
;hsm20g.c: 40: ADCResult /= 16;
	movlb	0	; () banked
	movlb	0	; () banked
	swapf	((get_current_readings@ADCResult))&0ffh
	movlb	0	; () banked
	swapf	((get_current_readings@ADCResult+1))&0ffh
	movlw	0fh
	movlb	0	; () banked
	andwf	((get_current_readings@ADCResult))&0ffh
	movlb	0	; () banked
	movf	((get_current_readings@ADCResult+1))&0ffh,w
	andlw	0f0h
	movlb	0	; () banked
	iorwf	((get_current_readings@ADCResult))&0ffh
	movlw	0fh
	movlb	0	; () banked
	andwf	((get_current_readings@ADCResult+1))&0ffh
	line	41
	
l9981:; BSR set to: 0

;hsm20g.c: 41: voltage2 = (ADCResult*5.0)/1024;
	movlw	low(float24(5.0000000000000000))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(5.0000000000000000))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(5.0000000000000000))
	movwf	((c:___ftmul@f2+2)),c

	movff	(get_current_readings@ADCResult),(c:___lwtoft@c)
	movff	(get_current_readings@ADCResult+1),(c:___lwtoft@c+1)
	call	___lwtoft	;wreg free
	movff	0+?___lwtoft,(c:___ftmul@f1)
	movff	1+?___lwtoft,(c:___ftmul@f1+1)
	movff	2+?___lwtoft,(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftdiv@f1)
	movff	1+?___ftmul,(c:___ftdiv@f1+1)
	movff	2+?___ftmul,(c:___ftdiv@f1+2)
	movlw	low(float24(1024.0000000000000))
	movwf	((c:___ftdiv@f2)),c
	movlw	high(float24(1024.0000000000000))
	movwf	((c:___ftdiv@f2+1)),c
	movlw	low highword(float24(1024.0000000000000))
	movwf	((c:___ftdiv@f2+2)),c

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(get_current_readings@voltage2)
	movff	1+?___ftdiv,(get_current_readings@voltage2+1)
	movff	2+?___ftdiv,(get_current_readings@voltage2+2)
	line	42
	
l9983:
;hsm20g.c: 42: h1 = voltage_to_hum(voltage2);
	movff	(get_current_readings@voltage2),(voltage_to_hum@voltage)
	movff	(get_current_readings@voltage2+1),(voltage_to_hum@voltage+1)
	movff	(get_current_readings@voltage2+2),(voltage_to_hum@voltage+2)
	call	_voltage_to_hum	;wreg free
	movff	0+?_voltage_to_hum,(_h1)
	movff	1+?_voltage_to_hum,(_h1+1)
	movff	2+?_voltage_to_hum,(_h1+2)
	line	43
	
l9985:
;hsm20g.c: 43: Hum1 = float_to_int(h1);
	movff	(_h1),(c:float_to_int@value)
	movff	(_h1+1),(c:float_to_int@value+1)
	movff	(_h1+2),(c:float_to_int@value+2)
	call	_float_to_int	;wreg free
	movff	0+?_float_to_int,(_Hum1)
	movff	1+?_float_to_int,(_Hum1+1)
	line	46
	
l9987:
;hsm20g.c: 46: _delay( 50 );
	movlw	10
u8837:
	nop
decfsz	wreg,f
	goto	u8837

	line	47
	
l9989:
;hsm20g.c: 47: SetChanADC( 0b10010111 );
	movlw	(097h)&0ffh
	
	call	_SetChanADC
	line	49
	
l9991:
;hsm20g.c: 49: for(i=0;i<16;i++)
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((get_current_readings@i))&0ffh
	
l9993:; BSR set to: 0

	movlw	(010h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((get_current_readings@i))&0ffh
	goto	u7841
	goto	u7840
u7841:
	goto	l9997
u7840:
	goto	l10007
	
l9995:; BSR set to: 0

	goto	l10007
	line	50
	
l602:; BSR set to: 0

	line	51
	
l9997:; BSR set to: 0

;hsm20g.c: 50: {
;hsm20g.c: 51: ConvertADC();
	call	_ConvertADC	;wreg free
	line	52
;hsm20g.c: 52: while(BusyADC());
	goto	l9999
	
l605:
	goto	l9999
	
l604:
	
l9999:
	call	_BusyADC	;wreg free
	iorlw	0
	btfss	status,2
	goto	u7851
	goto	u7850
u7851:
	goto	l9999
u7850:
	goto	l10001
	
l606:
	line	53
	
l10001:
;hsm20g.c: 53: ADCResult += (unsigned int) ReadADC();
	call	_ReadADC	;wreg free
	movf	(0+?_ReadADC),c,w
	movlb	0	; () banked
	movlb	0	; () banked
	addwf	((get_current_readings@ADCResult))&0ffh
	movf	(1+?_ReadADC),c,w
	movlb	0	; () banked
	movlb	0	; () banked
	addwfc	((get_current_readings@ADCResult+1))&0ffh

	line	49
	
l10003:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	incf	((get_current_readings@i))&0ffh
	
l10005:; BSR set to: 0

	movlw	(010h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((get_current_readings@i))&0ffh
	goto	u7861
	goto	u7860
u7861:
	goto	l9997
u7860:
	goto	l10007
	
l603:; BSR set to: 0

	line	55
	
l10007:; BSR set to: 0

;hsm20g.c: 54: }
;hsm20g.c: 55: ADCResult /= 16;
	movlb	0	; () banked
	movlb	0	; () banked
	swapf	((get_current_readings@ADCResult))&0ffh
	movlb	0	; () banked
	swapf	((get_current_readings@ADCResult+1))&0ffh
	movlw	0fh
	movlb	0	; () banked
	andwf	((get_current_readings@ADCResult))&0ffh
	movlb	0	; () banked
	movf	((get_current_readings@ADCResult+1))&0ffh,w
	andlw	0f0h
	movlb	0	; () banked
	iorwf	((get_current_readings@ADCResult))&0ffh
	movlw	0fh
	movlb	0	; () banked
	andwf	((get_current_readings@ADCResult+1))&0ffh
	line	56
	
l10009:; BSR set to: 0

;hsm20g.c: 56: voltage3 = (ADCResult*5.0)/1024;
	movlw	low(float24(5.0000000000000000))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(5.0000000000000000))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(5.0000000000000000))
	movwf	((c:___ftmul@f2+2)),c

	movff	(get_current_readings@ADCResult),(c:___lwtoft@c)
	movff	(get_current_readings@ADCResult+1),(c:___lwtoft@c+1)
	call	___lwtoft	;wreg free
	movff	0+?___lwtoft,(c:___ftmul@f1)
	movff	1+?___lwtoft,(c:___ftmul@f1+1)
	movff	2+?___lwtoft,(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftdiv@f1)
	movff	1+?___ftmul,(c:___ftdiv@f1+1)
	movff	2+?___ftmul,(c:___ftdiv@f1+2)
	movlw	low(float24(1024.0000000000000))
	movwf	((c:___ftdiv@f2)),c
	movlw	high(float24(1024.0000000000000))
	movwf	((c:___ftdiv@f2+1)),c
	movlw	low highword(float24(1024.0000000000000))
	movwf	((c:___ftdiv@f2+2)),c

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(get_current_readings@voltage3)
	movff	1+?___ftdiv,(get_current_readings@voltage3+1)
	movff	2+?___ftdiv,(get_current_readings@voltage3+2)
	line	57
	
l10011:
;hsm20g.c: 57: t2 = voltage_to_temp(voltage3);
	movff	(get_current_readings@voltage3),(voltage_to_temp@voltage)
	movff	(get_current_readings@voltage3+1),(voltage_to_temp@voltage+1)
	movff	(get_current_readings@voltage3+2),(voltage_to_temp@voltage+2)
	call	_voltage_to_temp	;wreg free
	movff	0+?_voltage_to_temp,(_t2)
	movff	1+?_voltage_to_temp,(_t2+1)
	movff	2+?_voltage_to_temp,(_t2+2)
	line	58
	
l10013:
;hsm20g.c: 58: Temp2 = float_to_int(t2);
	movff	(_t2),(c:float_to_int@value)
	movff	(_t2+1),(c:float_to_int@value+1)
	movff	(_t2+2),(c:float_to_int@value+2)
	call	_float_to_int	;wreg free
	movff	0+?_float_to_int,(_Temp2)
	movff	1+?_float_to_int,(_Temp2+1)
	line	61
	
l10015:
;hsm20g.c: 61: _delay( 50 );
	movlw	10
u8847:
	nop
decfsz	wreg,f
	goto	u8847

	line	62
	
l10017:
;hsm20g.c: 62: SetChanADC( 0b10011111 );
	movlw	(09Fh)&0ffh
	
	call	_SetChanADC
	line	64
	
l10019:
;hsm20g.c: 64: for(i=0;i<16;i++)
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((get_current_readings@i))&0ffh
	
l10021:; BSR set to: 0

	movlw	(010h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((get_current_readings@i))&0ffh
	goto	u7871
	goto	u7870
u7871:
	goto	l10025
u7870:
	goto	l10035
	
l10023:; BSR set to: 0

	goto	l10035
	line	65
	
l607:; BSR set to: 0

	line	66
	
l10025:; BSR set to: 0

;hsm20g.c: 65: {
;hsm20g.c: 66: ConvertADC();
	call	_ConvertADC	;wreg free
	line	67
;hsm20g.c: 67: while(BusyADC());
	goto	l10027
	
l610:
	goto	l10027
	
l609:
	
l10027:
	call	_BusyADC	;wreg free
	iorlw	0
	btfss	status,2
	goto	u7881
	goto	u7880
u7881:
	goto	l10027
u7880:
	goto	l10029
	
l611:
	line	68
	
l10029:
;hsm20g.c: 68: ADCResult += (unsigned int) ReadADC();
	call	_ReadADC	;wreg free
	movf	(0+?_ReadADC),c,w
	movlb	0	; () banked
	movlb	0	; () banked
	addwf	((get_current_readings@ADCResult))&0ffh
	movf	(1+?_ReadADC),c,w
	movlb	0	; () banked
	movlb	0	; () banked
	addwfc	((get_current_readings@ADCResult+1))&0ffh

	line	64
	
l10031:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	incf	((get_current_readings@i))&0ffh
	
l10033:; BSR set to: 0

	movlw	(010h-1)
	movlb	0	; () banked
	movlb	0	; () banked
	cpfsgt	((get_current_readings@i))&0ffh
	goto	u7891
	goto	u7890
u7891:
	goto	l10025
u7890:
	goto	l10035
	
l608:; BSR set to: 0

	line	70
	
l10035:; BSR set to: 0

;hsm20g.c: 69: }
;hsm20g.c: 70: ADCResult /= 16;
	movlb	0	; () banked
	movlb	0	; () banked
	swapf	((get_current_readings@ADCResult))&0ffh
	movlb	0	; () banked
	swapf	((get_current_readings@ADCResult+1))&0ffh
	movlw	0fh
	movlb	0	; () banked
	andwf	((get_current_readings@ADCResult))&0ffh
	movlb	0	; () banked
	movf	((get_current_readings@ADCResult+1))&0ffh,w
	andlw	0f0h
	movlb	0	; () banked
	iorwf	((get_current_readings@ADCResult))&0ffh
	movlw	0fh
	movlb	0	; () banked
	andwf	((get_current_readings@ADCResult+1))&0ffh
	line	71
	
l10037:; BSR set to: 0

;hsm20g.c: 71: voltage4 = (ADCResult*5.0)/1024;
	movlw	low(float24(5.0000000000000000))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(5.0000000000000000))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(5.0000000000000000))
	movwf	((c:___ftmul@f2+2)),c

	movff	(get_current_readings@ADCResult),(c:___lwtoft@c)
	movff	(get_current_readings@ADCResult+1),(c:___lwtoft@c+1)
	call	___lwtoft	;wreg free
	movff	0+?___lwtoft,(c:___ftmul@f1)
	movff	1+?___lwtoft,(c:___ftmul@f1+1)
	movff	2+?___lwtoft,(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftdiv@f1)
	movff	1+?___ftmul,(c:___ftdiv@f1+1)
	movff	2+?___ftmul,(c:___ftdiv@f1+2)
	movlw	low(float24(1024.0000000000000))
	movwf	((c:___ftdiv@f2)),c
	movlw	high(float24(1024.0000000000000))
	movwf	((c:___ftdiv@f2+1)),c
	movlw	low highword(float24(1024.0000000000000))
	movwf	((c:___ftdiv@f2+2)),c

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(get_current_readings@voltage4)
	movff	1+?___ftdiv,(get_current_readings@voltage4+1)
	movff	2+?___ftdiv,(get_current_readings@voltage4+2)
	line	72
	
l10039:
;hsm20g.c: 72: h2 = voltage_to_hum(voltage4);
	movff	(get_current_readings@voltage4),(voltage_to_hum@voltage)
	movff	(get_current_readings@voltage4+1),(voltage_to_hum@voltage+1)
	movff	(get_current_readings@voltage4+2),(voltage_to_hum@voltage+2)
	call	_voltage_to_hum	;wreg free
	movff	0+?_voltage_to_hum,(_h2)
	movff	1+?_voltage_to_hum,(_h2+1)
	movff	2+?_voltage_to_hum,(_h2+2)
	line	73
	
l10041:
;hsm20g.c: 73: Hum2 = float_to_int(h2);
	movff	(_h2),(c:float_to_int@value)
	movff	(_h2+1),(c:float_to_int@value+1)
	movff	(_h2+2),(c:float_to_int@value+2)
	call	_float_to_int	;wreg free
	movff	0+?_float_to_int,(_Hum2)
	movff	1+?_float_to_int,(_Hum2+1)
	line	75
	
l10043:
;hsm20g.c: 75: CloseADC();
	call	_CloseADC	;wreg free
	line	76
	
l612:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_get_current_readings
	__end_of_get_current_readings:
	signat	_get_current_readings,88
	global	_voltage_to_temp

;; *************** function _voltage_to_temp *****************
;; Defined at:
;;		line 97 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\hsm20g.c"
;; Parameters:    Size  Location     Type
;;  voltage         3   23[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  temp            3   26[BANK0 ] float 
;; Return value:  Size  Location     Type
;;                  3   23[BANK0 ] float 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       3       0       0       0       0       0
;;      Locals:         0      15       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0      18       0       0       0       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		___ftadd
;;		___ftmul
;;		___ftneg
;;		_pow
;; This function is called by:
;;		_get_current_readings
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2
	line	97
global __ptext15
__ptext15:
psect	text15
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\hsm20g.c"
	line	97
	global	__size_of_voltage_to_temp
	__size_of_voltage_to_temp	equ	__end_of_voltage_to_temp-_voltage_to_temp
	
_voltage_to_temp:
;incstack = 0
	opt	stack 21
	dw	0FFFFh
	line	101
	
l9463:
;hsm20g.c: 99: double temp;
;hsm20g.c: 101: temp = (5.26*pow(voltage,3))-(27.34*pow(voltage,2))+(68.87*voltage)-17.81;
	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((pow@y))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((pow@y+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((pow@y+2))&0ffh

	movff	(voltage_to_temp@voltage),(pow@x)
	movff	(voltage_to_temp@voltage+1),(pow@x+1)
	movff	(voltage_to_temp@voltage+2),(pow@x+2)
	call	_pow	;wreg free
	movff	0+?_pow,(_voltage_to_temp$2963)
	movff	1+?_pow,(_voltage_to_temp$2963+1)
	movff	2+?_pow,(_voltage_to_temp$2963+2)
;hsm20g.c: 99: double temp;
;hsm20g.c: 101: temp = (5.26*pow(voltage,3))-(27.34*pow(voltage,2))+(68.87*voltage)-17.81;
	movlw	low(float24(3.0000000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((pow@y))&0ffh
	movlw	high(float24(3.0000000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((pow@y+1))&0ffh
	movlw	low highword(float24(3.0000000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((pow@y+2))&0ffh

	movff	(voltage_to_temp@voltage),(pow@x)
	movff	(voltage_to_temp@voltage+1),(pow@x+1)
	movff	(voltage_to_temp@voltage+2),(pow@x+2)
	call	_pow	;wreg free
	movff	0+?_pow,(_voltage_to_temp$2964)
	movff	1+?_pow,(_voltage_to_temp$2964+1)
	movff	2+?_pow,(_voltage_to_temp$2964+2)
	
l9465:
;hsm20g.c: 99: double temp;
;hsm20g.c: 101: temp = (5.26*pow(voltage,3))-(27.34*pow(voltage,2))+(68.87*voltage)-17.81;
	movlw	low(float24(68.870000000000005))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(68.870000000000005))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(68.870000000000005))
	movwf	((c:___ftmul@f2+2)),c

	movff	(voltage_to_temp@voltage),(c:___ftmul@f1)
	movff	(voltage_to_temp@voltage+1),(c:___ftmul@f1+1)
	movff	(voltage_to_temp@voltage+2),(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftadd@f2)
	movff	1+?___ftmul,(c:___ftadd@f2+1)
	movff	2+?___ftmul,(c:___ftadd@f2+2)
	movlw	low(float24(5.2599999999999998))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(5.2599999999999998))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(5.2599999999999998))
	movwf	((c:___ftmul@f2+2)),c

	movff	(_voltage_to_temp$2964),(c:___ftmul@f1)
	movff	(_voltage_to_temp$2964+1),(c:___ftmul@f1+1)
	movff	(_voltage_to_temp$2964+2),(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftadd@f1)
	movff	1+?___ftmul,(c:___ftadd@f1+1)
	movff	2+?___ftmul,(c:___ftadd@f1+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_voltage_to_temp$2965)
	movff	1+?___ftadd,(_voltage_to_temp$2965+1)
	movff	2+?___ftadd,(_voltage_to_temp$2965+2)
	
l9467:
;hsm20g.c: 99: double temp;
;hsm20g.c: 101: temp = (5.26*pow(voltage,3))-(27.34*pow(voltage,2))+(68.87*voltage)-17.81;
	movlw	low(float24(27.340000000000000))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(27.340000000000000))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(27.340000000000000))
	movwf	((c:___ftmul@f2+2)),c

	movff	(_voltage_to_temp$2963),(c:___ftmul@f1)
	movff	(_voltage_to_temp$2963+1),(c:___ftmul@f1+1)
	movff	(_voltage_to_temp$2963+2),(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftneg@f1)
	movff	1+?___ftmul,(c:___ftneg@f1+1)
	movff	2+?___ftmul,(c:___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(c:___ftadd@f2)
	movff	1+?___ftneg,(c:___ftadd@f2+1)
	movff	2+?___ftneg,(c:___ftadd@f2+2)
	movff	(_voltage_to_temp$2965),(c:___ftadd@f1)
	movff	(_voltage_to_temp$2965+1),(c:___ftadd@f1+1)
	movff	(_voltage_to_temp$2965+2),(c:___ftadd@f1+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_voltage_to_temp$2966)
	movff	1+?___ftadd,(_voltage_to_temp$2966+1)
	movff	2+?___ftadd,(_voltage_to_temp$2966+2)
	
l9469:
;hsm20g.c: 99: double temp;
;hsm20g.c: 101: temp = (5.26*pow(voltage,3))-(27.34*pow(voltage,2))+(68.87*voltage)-17.81;
	movff	(_voltage_to_temp$2966),(c:___ftadd@f1)
	movff	(_voltage_to_temp$2966+1),(c:___ftadd@f1+1)
	movff	(_voltage_to_temp$2966+2),(c:___ftadd@f1+2)
	movlw	low(float24(-17.809999999999999))
	movwf	((c:___ftadd@f2)),c
	movlw	high(float24(-17.809999999999999))
	movwf	((c:___ftadd@f2+1)),c
	movlw	low highword(float24(-17.809999999999999))
	movwf	((c:___ftadd@f2+2)),c

	call	___ftadd	;wreg free
	movff	0+?___ftadd,(voltage_to_temp@temp)
	movff	1+?___ftadd,(voltage_to_temp@temp+1)
	movff	2+?___ftadd,(voltage_to_temp@temp+2)
	line	102
	
l9471:
;hsm20g.c: 102: return temp;
	movff	(voltage_to_temp@temp),(?_voltage_to_temp)
	movff	(voltage_to_temp@temp+1),(?_voltage_to_temp+1)
	movff	(voltage_to_temp@temp+2),(?_voltage_to_temp+2)
	goto	l618
	
l9473:
	line	103
	
l618:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_voltage_to_temp
	__end_of_voltage_to_temp:
	signat	_voltage_to_temp,4219
	global	_voltage_to_hum

;; *************** function _voltage_to_hum *****************
;; Defined at:
;;		line 105 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\hsm20g.c"
;; Parameters:    Size  Location     Type
;;  voltage         3   23[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  temp            3   26[BANK0 ] float 
;; Return value:  Size  Location     Type
;;                  3   23[BANK0 ] float 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       3       0       0       0       0       0
;;      Locals:         0      15       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0      18       0       0       0       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		___ftadd
;;		___ftmul
;;		___ftneg
;;		_pow
;; This function is called by:
;;		_get_current_readings
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2
	line	105
global __ptext16
__ptext16:
psect	text16
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\hsm20g.c"
	line	105
	global	__size_of_voltage_to_hum
	__size_of_voltage_to_hum	equ	__end_of_voltage_to_hum-_voltage_to_hum
	
_voltage_to_hum:
;incstack = 0
	opt	stack 21
	dw	0FFFFh
	line	109
	
l9495:
;hsm20g.c: 107: double temp;
;hsm20g.c: 109: temp = (3.71*pow(voltage,3))-(20.65*pow(voltage,2))+(64.81*voltage)-27.44;
	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((pow@y))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((pow@y+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((pow@y+2))&0ffh

	movff	(voltage_to_hum@voltage),(pow@x)
	movff	(voltage_to_hum@voltage+1),(pow@x+1)
	movff	(voltage_to_hum@voltage+2),(pow@x+2)
	call	_pow	;wreg free
	movff	0+?_pow,(_voltage_to_hum$2967)
	movff	1+?_pow,(_voltage_to_hum$2967+1)
	movff	2+?_pow,(_voltage_to_hum$2967+2)
;hsm20g.c: 107: double temp;
;hsm20g.c: 109: temp = (3.71*pow(voltage,3))-(20.65*pow(voltage,2))+(64.81*voltage)-27.44;
	movlw	low(float24(3.0000000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((pow@y))&0ffh
	movlw	high(float24(3.0000000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((pow@y+1))&0ffh
	movlw	low highword(float24(3.0000000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((pow@y+2))&0ffh

	movff	(voltage_to_hum@voltage),(pow@x)
	movff	(voltage_to_hum@voltage+1),(pow@x+1)
	movff	(voltage_to_hum@voltage+2),(pow@x+2)
	call	_pow	;wreg free
	movff	0+?_pow,(_voltage_to_hum$2968)
	movff	1+?_pow,(_voltage_to_hum$2968+1)
	movff	2+?_pow,(_voltage_to_hum$2968+2)
	
l9497:
;hsm20g.c: 107: double temp;
;hsm20g.c: 109: temp = (3.71*pow(voltage,3))-(20.65*pow(voltage,2))+(64.81*voltage)-27.44;
	movlw	low(float24(64.810000000000002))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(64.810000000000002))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(64.810000000000002))
	movwf	((c:___ftmul@f2+2)),c

	movff	(voltage_to_hum@voltage),(c:___ftmul@f1)
	movff	(voltage_to_hum@voltage+1),(c:___ftmul@f1+1)
	movff	(voltage_to_hum@voltage+2),(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftadd@f2)
	movff	1+?___ftmul,(c:___ftadd@f2+1)
	movff	2+?___ftmul,(c:___ftadd@f2+2)
	movlw	low(float24(3.7100000000000000))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(3.7100000000000000))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(3.7100000000000000))
	movwf	((c:___ftmul@f2+2)),c

	movff	(_voltage_to_hum$2968),(c:___ftmul@f1)
	movff	(_voltage_to_hum$2968+1),(c:___ftmul@f1+1)
	movff	(_voltage_to_hum$2968+2),(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftadd@f1)
	movff	1+?___ftmul,(c:___ftadd@f1+1)
	movff	2+?___ftmul,(c:___ftadd@f1+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_voltage_to_hum$2969)
	movff	1+?___ftadd,(_voltage_to_hum$2969+1)
	movff	2+?___ftadd,(_voltage_to_hum$2969+2)
	
l9499:
;hsm20g.c: 107: double temp;
;hsm20g.c: 109: temp = (3.71*pow(voltage,3))-(20.65*pow(voltage,2))+(64.81*voltage)-27.44;
	movlw	low(float24(20.649999999999999))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(20.649999999999999))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(20.649999999999999))
	movwf	((c:___ftmul@f2+2)),c

	movff	(_voltage_to_hum$2967),(c:___ftmul@f1)
	movff	(_voltage_to_hum$2967+1),(c:___ftmul@f1+1)
	movff	(_voltage_to_hum$2967+2),(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftneg@f1)
	movff	1+?___ftmul,(c:___ftneg@f1+1)
	movff	2+?___ftmul,(c:___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(c:___ftadd@f2)
	movff	1+?___ftneg,(c:___ftadd@f2+1)
	movff	2+?___ftneg,(c:___ftadd@f2+2)
	movff	(_voltage_to_hum$2969),(c:___ftadd@f1)
	movff	(_voltage_to_hum$2969+1),(c:___ftadd@f1+1)
	movff	(_voltage_to_hum$2969+2),(c:___ftadd@f1+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_voltage_to_hum$2970)
	movff	1+?___ftadd,(_voltage_to_hum$2970+1)
	movff	2+?___ftadd,(_voltage_to_hum$2970+2)
	
l9501:
;hsm20g.c: 107: double temp;
;hsm20g.c: 109: temp = (3.71*pow(voltage,3))-(20.65*pow(voltage,2))+(64.81*voltage)-27.44;
	movff	(_voltage_to_hum$2970),(c:___ftadd@f1)
	movff	(_voltage_to_hum$2970+1),(c:___ftadd@f1+1)
	movff	(_voltage_to_hum$2970+2),(c:___ftadd@f1+2)
	movlw	low(float24(-27.440000000000001))
	movwf	((c:___ftadd@f2)),c
	movlw	high(float24(-27.440000000000001))
	movwf	((c:___ftadd@f2+1)),c
	movlw	low highword(float24(-27.440000000000001))
	movwf	((c:___ftadd@f2+2)),c

	call	___ftadd	;wreg free
	movff	0+?___ftadd,(voltage_to_hum@temp)
	movff	1+?___ftadd,(voltage_to_hum@temp+1)
	movff	2+?___ftadd,(voltage_to_hum@temp+2)
	line	110
	
l9503:
;hsm20g.c: 110: return temp;
	movff	(voltage_to_hum@temp),(?_voltage_to_hum)
	movff	(voltage_to_hum@temp+1),(?_voltage_to_hum+1)
	movff	(voltage_to_hum@temp+2),(?_voltage_to_hum+2)
	goto	l621
	
l9505:
	line	111
	
l621:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_voltage_to_hum
	__end_of_voltage_to_hum:
	signat	_voltage_to_hum,4219
	global	_pow

;; *************** function _pow *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\pow.c"
;; Parameters:    Size  Location     Type
;;  x               3    6[BANK0 ] float 
;;  y               3    9[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  yi              4   19[BANK0 ] unsigned long 
;;  sign            1   18[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    6[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       6       0       0       0       0       0
;;      Locals:         0      11       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0      17       0       0       0       0       0
;;Total ram usage:       17 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___ftge
;;		___ftmul
;;		___ftneg
;;		___fttol
;;		___lltoft
;;		_exp
;;		_log
;; This function is called by:
;;		_voltage_to_temp
;;		_voltage_to_hum
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\pow.c"
	line	5
global __ptext17
__ptext17:
psect	text17
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\pow.c"
	line	5
	global	__size_of_pow
	__size_of_pow	equ	__end_of_pow-_pow
	
_pow:
;incstack = 0
	opt	stack 21
	dw	0FFFFh
	line	7
	
l8985:
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((pow@sign))&0ffh
	line	10
	
l8987:; BSR set to: 0

	movlw	0x7f
	movlb	0	; () banked
	movlb	0	; () banked
	andwf	((pow@x+2))&0ffh,w
	movlb	0	; () banked
	iorwf	((pow@x+1))&0ffh,w
	movlb	0	; () banked
	iorwf	((pow@x))&0ffh,w
	btfss	status,2
	goto	u6941
	goto	u6940
u6941:
	goto	l8995
u6940:
	line	11
	
l8989:; BSR set to: 0

	movlw	low(float24(0.0000000000000000))
	movwf	((c:___ftge@ff1)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:___ftge@ff1+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:___ftge@ff1+2)),c

	movff	(pow@y),(c:___ftge@ff2)
	movff	(pow@y+1),(c:___ftge@ff2+1)
	movff	(pow@y+2),(c:___ftge@ff2+2)
	call	___ftge	;wreg free
	btfss	status,0
	goto	u6951
	goto	u6950
u6951:
	goto	l1844
u6950:
	line	12
	
l8991:
	movlw	high(021h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_errno+1))&0ffh
	movlw	low(021h)
	movlb	0	; () banked
	movwf	((_errno))&0ffh
	line	13
	
l1844:
	line	14
	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?_pow))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?_pow+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?_pow+2))&0ffh

	goto	l1845
	
l8993:; BSR set to: 0

	goto	l1845
	line	15
	
l1843:; BSR set to: 0

	line	16
	
l8995:; BSR set to: 0

	movlw	0x7f
	movlb	0	; () banked
	movlb	0	; () banked
	andwf	((pow@y+2))&0ffh,w
	movlb	0	; () banked
	iorwf	((pow@y+1))&0ffh,w
	movlb	0	; () banked
	iorwf	((pow@y))&0ffh,w
	btfss	status,2
	goto	u6961
	goto	u6960
u6961:
	goto	l9001
u6960:
	line	17
	
l8997:; BSR set to: 0

	movlw	low(float24(1.0000000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?_pow))&0ffh
	movlw	high(float24(1.0000000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?_pow+1))&0ffh
	movlw	low highword(float24(1.0000000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?_pow+2))&0ffh

	goto	l1845
	
l8999:; BSR set to: 0

	goto	l1845
	
l1846:; BSR set to: 0

	line	18
	
l9001:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((pow@x+2))&0ffh,w
	xorlw	80h
	addlw	-(low highword(float24(0.0000000000000000)))^80h
	
	bnz	u6975
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	subwf	((pow@x+1))&0ffh,w
	bnz	u6975
	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	subwf	((pow@x))&0ffh,w
u6975:
	btfsc	status,0
	goto	u6971
	goto	u6970
u6971:
	goto	l9013
u6970:
	line	19
	
l9003:; BSR set to: 0

	movff	(pow@y),(c:___fttol@f1)
	movff	(pow@y+1),(c:___fttol@f1+1)
	movff	(pow@y+2),(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,(pow@yi)
	movff	1+?___fttol,(pow@yi+1)
	movff	2+?___fttol,(pow@yi+2)
	movff	3+?___fttol,(pow@yi+3)
	
	line	20
	movff	(pow@yi),(c:___lltoft@c)
	movff	(pow@yi+1),(c:___lltoft@c+1)
	movff	(pow@yi+2),(c:___lltoft@c+2)
	movff	(pow@yi+3),(c:___lltoft@c+3)
	call	___lltoft	;wreg free
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((pow@y+2))&0ffh,w
	xorwf	(2+?___lltoft),c,w
	bnz	u6985
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((pow@y+1))&0ffh,w
	xorwf	(1+?___lltoft),c,w
	bnz	u6985
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((pow@y))&0ffh,w
	xorwf	(0+?___lltoft),c,w
u6985:
	btfsc	status,2
	goto	u6981
	goto	u6980
u6981:
	goto	l9009
u6980:
	line	21
	
l9005:; BSR set to: 0

	movlw	high(021h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_errno+1))&0ffh
	movlw	low(021h)
	movlb	0	; () banked
	movwf	((_errno))&0ffh
	line	22
	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?_pow))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?_pow+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((?_pow+2))&0ffh

	goto	l1845
	
l9007:; BSR set to: 0

	goto	l1845
	line	23
	
l1848:; BSR set to: 0

	line	24
	
l9009:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((pow@yi))&0ffh,w
	andlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((pow@sign))&0ffh
	line	25
	
l9011:; BSR set to: 0

	movff	(pow@x),(c:___ftneg@f1)
	movff	(pow@x+1),(c:___ftneg@f1+1)
	movff	(pow@x+2),(c:___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(pow@x)
	movff	1+?___ftneg,(pow@x+1)
	movff	2+?___ftneg,(pow@x+2)
	goto	l9013
	line	26
	
l1847:
	line	27
	
l9013:
	movff	(pow@x),(c:log@x)
	movff	(pow@x+1),(c:log@x+1)
	movff	(pow@x+2),(c:log@x+2)
	call	_log	;wreg free
	movff	0+?_log,(_pow$2971)
	movff	1+?_log,(_pow$2971+1)
	movff	2+?_log,(_pow$2971+2)
	
l9015:
	movff	(_pow$2971),(c:___ftmul@f1)
	movff	(_pow$2971+1),(c:___ftmul@f1+1)
	movff	(_pow$2971+2),(c:___ftmul@f1+2)
	movff	(pow@y),(c:___ftmul@f2)
	movff	(pow@y+1),(c:___ftmul@f2+1)
	movff	(pow@y+2),(c:___ftmul@f2+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(_pow$2972)
	movff	1+?___ftmul,(_pow$2972+1)
	movff	2+?___ftmul,(_pow$2972+2)
	
l9017:
	movff	(_pow$2972),(c:exp@x)
	movff	(_pow$2972+1),(c:exp@x+1)
	movff	(_pow$2972+2),(c:exp@x+2)
	call	_exp	;wreg free
	movff	0+?_exp,(pow@x)
	movff	1+?_exp,(pow@x+1)
	movff	2+?_exp,(pow@x+2)
	line	28
	
l9019:
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((pow@sign))&0ffh,w
	btfsc	status,2
	goto	u6991
	goto	u6990
u6991:
	goto	l1849
u6990:
	line	29
	
l9021:; BSR set to: 0

	movff	(pow@x),(c:___ftneg@f1)
	movff	(pow@x+1),(c:___ftneg@f1+1)
	movff	(pow@x+2),(c:___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(?_pow)
	movff	1+?___ftneg,(?_pow+1)
	movff	2+?___ftneg,(?_pow+2)
	goto	l1845
	
l9023:
	goto	l1845
	
l1849:; BSR set to: 0

	line	30
	movff	(pow@x),(?_pow)
	movff	(pow@x+1),(?_pow+1)
	movff	(pow@x+2),(?_pow+2)
	line	31
	
l1845:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_pow
	__end_of_pow:
	signat	_pow,8315
	global	_log

;; *************** function _log *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\log.c"
;; Parameters:    Size  Location     Type
;;  x               3   73[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  exponent        2   76[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  3   73[COMRAM] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         3       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___awtoft
;;		___ftadd
;;		___ftmul
;;		_eval_poly
;;		_frexp
;; This function is called by:
;;		_pow
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\log.c"
	line	5
global __ptext18
__ptext18:
psect	text18
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\log.c"
	line	5
	global	__size_of_log
	__size_of_log	equ	__end_of_log-_log
	
_log:
;incstack = 0
	opt	stack 21
	dw	0FFFFh
	line	24
	
l8819:
	movf	((c:log@x+2)),c,w
	xorlw	80h
	addlw	-(low highword(float24(0.0000000000000000)))^80h
	
	bnz	u6745
	movlw	high(float24(0.0000000000000000))
	subwf	((c:log@x+1)),c,w
	bnz	u6745
	movlw	low(float24(0.0000000000000000))
	subwf	((c:log@x)),c,w
u6745:
	btfsc	status,0
	goto	u6741
	goto	u6740
u6741:
	goto	l8825
u6740:
	line	25
	
l8821:
	movlw	high(021h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_errno+1))&0ffh
	movlw	low(021h)
	movlb	0	; () banked
	movwf	((_errno))&0ffh
	line	26
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?_log)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?_log+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?_log+2)),c

	goto	l1907
	
l8823:; BSR set to: 0

	goto	l1907
	line	27
	
l1906:; BSR set to: 0

	line	28
	
l8825:
	movlw	0x7f
	andwf	((c:log@x+2)),c,w
	iorwf	((c:log@x+1)),c,w
	iorwf	((c:log@x)),c,w
	btfss	status,2
	goto	u6751
	goto	u6750
u6751:
	goto	l8831
u6750:
	line	29
	
l8827:
	movlw	high(022h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_errno+1))&0ffh
	movlw	low(022h)
	movlb	0	; () banked
	movwf	((_errno))&0ffh
	line	30
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?_log)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?_log+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?_log+2)),c

	goto	l1907
	
l8829:; BSR set to: 0

	goto	l1907
	line	31
	
l1908:; BSR set to: 0

	line	32
	
l8831:
	movlw	low(float24(2.0000000000000000))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(2.0000000000000000))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(2.0000000000000000))
	movwf	((c:___ftmul@f2+2)),c

		movlw	high((c:log@exponent))
	movwf	((c:frexp@eptr+1)),c
	movlw	low((c:log@exponent))
	movwf	((c:frexp@eptr)),c

	movff	(c:log@x),(c:frexp@value)
	movff	(c:log@x+1),(c:frexp@value+1)
	movff	(c:log@x+2),(c:frexp@value+2)
	call	_frexp	;wreg free
	movff	0+?_frexp,(c:___ftmul@f1)
	movff	1+?_frexp,(c:___ftmul@f1+1)
	movff	2+?_frexp,(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftadd@f1)
	movff	1+?___ftmul,(c:___ftadd@f1+1)
	movff	2+?___ftmul,(c:___ftadd@f1+2)
	movlw	low(float24(-1.0000000000000000))
	movwf	((c:___ftadd@f2)),c
	movlw	high(float24(-1.0000000000000000))
	movwf	((c:___ftadd@f2+1)),c
	movlw	low highword(float24(-1.0000000000000000))
	movwf	((c:___ftadd@f2+2)),c

	call	___ftadd	;wreg free
	movff	0+?___ftadd,(c:log@x)
	movff	1+?___ftadd,(c:log@x+1)
	movff	2+?___ftadd,(c:log@x+2)
	line	33
	
l8833:
	decf	((c:log@exponent)),c
	btfss	status,0
	decf	((c:log@exponent+1)),c
	line	34
	
l8835:
	movff	(c:log@x),(c:eval_poly@x)
	movff	(c:log@x+1),(c:eval_poly@x+1)
	movff	(c:log@x+2),(c:eval_poly@x+2)
		movlw	high(log@coeff)
	movwf	((c:eval_poly@d+1)),c
	movlw	low(log@coeff)
	movwf	((c:eval_poly@d)),c

	movlw	high(08h)
	movwf	((c:eval_poly@n+1)),c
	movlw	low(08h)
	movwf	((c:eval_poly@n)),c
	call	_eval_poly	;wreg free
	movff	0+?_eval_poly,(c:log@x)
	movff	1+?_eval_poly,(c:log@x+1)
	movff	2+?_eval_poly,(c:log@x+2)
	line	35
	
l8837:
	movlw	low(float24(0.69314718055994995))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(0.69314718055994995))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(0.69314718055994995))
	movwf	((c:___ftmul@f2+2)),c

	movff	(c:log@exponent),(c:___awtoft@c)
	movff	(c:log@exponent+1),(c:___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(c:___ftmul@f1)
	movff	1+?___awtoft,(c:___ftmul@f1+1)
	movff	2+?___awtoft,(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftadd@f1)
	movff	1+?___ftmul,(c:___ftadd@f1+1)
	movff	2+?___ftmul,(c:___ftadd@f1+2)
	movff	(c:log@x),(c:___ftadd@f2)
	movff	(c:log@x+1),(c:___ftadd@f2+1)
	movff	(c:log@x+2),(c:___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(c:?_log)
	movff	1+?___ftadd,(c:?_log+1)
	movff	2+?___ftadd,(c:?_log+2)
	goto	l1907
	
l8839:
	line	36
	
l1907:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_log
	__end_of_log:
	signat	_log,4219
	global	_exp

;; *************** function _exp *****************
;; Defined at:
;;		line 12 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\exp.c"
;; Parameters:    Size  Location     Type
;;  x               3   80[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  exponent        2    3[BANK0 ] int 
;;  sign            1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   80[COMRAM] unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         3       0       0       0       0       0       0
;;      Locals:         0       6       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0
;;      Totals:         7       6       0       0       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___awtoft
;;		___ftdiv
;;		___ftge
;;		___ftmul
;;		___ftneg
;;		___ftsub
;;		___fttol
;;		_eval_poly
;;		_floor
;;		_ldexp
;; This function is called by:
;;		_pow
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\exp.c"
	line	12
global __ptext19
__ptext19:
psect	text19
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\exp.c"
	line	12
	global	__size_of_exp
	__size_of_exp	equ	__end_of_exp-_exp
	
_exp:
;incstack = 0
	opt	stack 21
	dw	0FFFFh
	line	31
	
l8841:
	movlw	0x7f
	andwf	((c:exp@x+2)),c,w
	iorwf	((c:exp@x+1)),c,w
	iorwf	((c:exp@x)),c,w
	btfss	status,2
	goto	u6761
	goto	u6760
u6761:
	goto	l8847
u6760:
	line	32
	
l8843:
	movlw	low(float24(1.0000000000000000))
	movwf	((c:?_exp)),c
	movlw	high(float24(1.0000000000000000))
	movwf	((c:?_exp+1)),c
	movlw	low highword(float24(1.0000000000000000))
	movwf	((c:?_exp+2)),c

	goto	l1865
	
l8845:
	goto	l1865
	
l1864:
	line	34
	
l8847:
	movlw	low(float24(709.78271289338397))
	movwf	((c:___ftge@ff1)),c
	movlw	high(float24(709.78271289338397))
	movwf	((c:___ftge@ff1+1)),c
	movlw	low highword(float24(709.78271289338397))
	movwf	((c:___ftge@ff1+2)),c

	movff	(c:exp@x),(c:___ftge@ff2)
	movff	(c:exp@x+1),(c:___ftge@ff2+1)
	movff	(c:exp@x+2),(c:___ftge@ff2+2)
	call	___ftge	;wreg free
	btfsc	status,0
	goto	u6771
	goto	u6770
u6771:
	goto	l8853
u6770:
	line	35
	
l8849:
	movlw	high(022h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_errno+1))&0ffh
	movlw	low(022h)
	movlb	0	; () banked
	movwf	((_errno))&0ffh
	line	36
	movlw	low(float24(3.4027699999999999e+038))
	movwf	((c:?_exp)),c
	movlw	high(float24(3.4027699999999999e+038))
	movwf	((c:?_exp+1)),c
	movlw	low highword(float24(3.4027699999999999e+038))
	movwf	((c:?_exp+2)),c

	goto	l1865
	
l8851:; BSR set to: 0

	goto	l1865
	line	37
	
l1866:; BSR set to: 0

	line	38
	
l8853:
	movff	(c:exp@x),(c:___ftge@ff1)
	movff	(c:exp@x+1),(c:___ftge@ff1+1)
	movff	(c:exp@x+2),(c:___ftge@ff1+2)
	movlw	low(float24(-745.13321910194111))
	movwf	((c:___ftge@ff2)),c
	movlw	high(float24(-745.13321910194111))
	movwf	((c:___ftge@ff2+1)),c
	movlw	low highword(float24(-745.13321910194111))
	movwf	((c:___ftge@ff2+2)),c

	call	___ftge	;wreg free
	btfsc	status,0
	goto	u6781
	goto	u6780
u6781:
	goto	l8859
u6780:
	line	39
	
l8855:
	movlw	high(022h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_errno+1))&0ffh
	movlw	low(022h)
	movlb	0	; () banked
	movwf	((_errno))&0ffh
	line	40
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?_exp)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?_exp+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?_exp+2)),c

	goto	l1865
	
l8857:; BSR set to: 0

	goto	l1865
	line	41
	
l1867:; BSR set to: 0

	line	43
	
l8859:
	movf	((c:exp@x+2)),c,w
	xorlw	80h
	addlw	-(low highword(float24(0.0000000000000000)))^80h
	
	bnz	u6795
	movlw	high(float24(0.0000000000000000))
	subwf	((c:exp@x+1)),c,w
	bnz	u6795
	movlw	low(float24(0.0000000000000000))
	subwf	((c:exp@x)),c,w
u6795:
	btfss	status,0
	goto	u6791
	goto	u6790
u6791:
	movlw	1
	goto	u6796
u6790:
	movlw	0
u6796:
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((exp@sign))&0ffh
	line	44
	
l8861:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((exp@sign))&0ffh,w
	btfsc	status,2
	goto	u6801
	goto	u6800
u6801:
	goto	l1868
u6800:
	line	45
	
l8863:; BSR set to: 0

	movff	(c:exp@x),(c:___ftneg@f1)
	movff	(c:exp@x+1),(c:___ftneg@f1+1)
	movff	(c:exp@x+2),(c:___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(c:exp@x)
	movff	1+?___ftneg,(c:exp@x+1)
	movff	2+?___ftneg,(c:exp@x+2)
	
l1868:
	line	46
	movff	(c:exp@x),(c:___ftmul@f1)
	movff	(c:exp@x+1),(c:___ftmul@f1+1)
	movff	(c:exp@x+2),(c:___ftmul@f1+2)
	movlw	low(float24(1.4426950408999999))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(1.4426950408999999))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(1.4426950408999999))
	movwf	((c:___ftmul@f2+2)),c

	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:exp@x)
	movff	1+?___ftmul,(c:exp@x+1)
	movff	2+?___ftmul,(c:exp@x+2)
	line	47
	
l8865:
	movff	(c:exp@x),(c:floor@x)
	movff	(c:exp@x+1),(c:floor@x+1)
	movff	(c:exp@x+2),(c:floor@x+2)
	call	_floor	;wreg free
	movff	0+?_floor,(_exp$2973)
	movff	1+?_floor,(_exp$2973+1)
	movff	2+?_floor,(_exp$2973+2)
	
l8867:
	movff	(_exp$2973),(c:___fttol@f1)
	movff	(_exp$2973+1),(c:___fttol@f1+1)
	movff	(_exp$2973+2),(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,??_exp+0+0
	movff	1+?___fttol,??_exp+0+0+1
	movff	2+?___fttol,??_exp+0+0+2
	movff	3+?___fttol,??_exp+0+0+3
	
	movff	??_exp+0+0,(exp@exponent)
	movff	??_exp+0+1,(exp@exponent+1)
	line	48
	
l8869:
	movff	(c:exp@x),(c:___ftsub@f1)
	movff	(c:exp@x+1),(c:___ftsub@f1+1)
	movff	(c:exp@x+2),(c:___ftsub@f1+2)
	movff	(exp@exponent),(c:___awtoft@c)
	movff	(exp@exponent+1),(c:___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(c:___ftsub@f2)
	movff	1+?___awtoft,(c:___ftsub@f2+1)
	movff	2+?___awtoft,(c:___ftsub@f2+2)
	call	___ftsub	;wreg free
	movff	0+?___ftsub,(c:exp@x)
	movff	1+?___ftsub,(c:exp@x+1)
	movff	2+?___ftsub,(c:exp@x+2)
	line	49
	
l8871:
	movff	(c:exp@x),(c:eval_poly@x)
	movff	(c:exp@x+1),(c:eval_poly@x+1)
	movff	(c:exp@x+2),(c:eval_poly@x+2)
		movlw	high(exp@coeff)
	movwf	((c:eval_poly@d+1)),c
	movlw	low(exp@coeff)
	movwf	((c:eval_poly@d)),c

	movlw	high(09h)
	movwf	((c:eval_poly@n+1)),c
	movlw	low(09h)
	movwf	((c:eval_poly@n)),c
	call	_eval_poly	;wreg free
	movff	0+?_eval_poly,(c:ldexp@value)
	movff	1+?_eval_poly,(c:ldexp@value+1)
	movff	2+?_eval_poly,(c:ldexp@value+2)
	movff	(exp@exponent),(c:ldexp@newexp)
	movff	(exp@exponent+1),(c:ldexp@newexp+1)
	call	_ldexp	;wreg free
	movff	0+?_ldexp,(c:exp@x)
	movff	1+?_ldexp,(c:exp@x+1)
	movff	2+?_ldexp,(c:exp@x+2)
	line	50
	
l8873:
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((exp@sign))&0ffh,w
	btfsc	status,2
	goto	u6811
	goto	u6810
u6811:
	goto	l1869
u6810:
	line	52
	
l8875:; BSR set to: 0

	movlw	low(float24(3.4027699999999999e+038))
	xorwf	((c:exp@x)),c,w
	movlw	high(float24(3.4027699999999999e+038))
	btfsc	status,2
	xorwf	((c:exp@x+1)),c,w
	
	movlw	low highword(float24(3.4027699999999999e+038))
	btfsc	status,2
	xorwf	((c:exp@x+2)),c,w
	btfss	status,2
	goto	u6821
	goto	u6820
u6821:
	goto	l8881
u6820:
	line	53
	
l8877:; BSR set to: 0

	movlw	low(float24(0.0000000000000000))
	movwf	((c:?_exp)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?_exp+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?_exp+2)),c

	goto	l1865
	
l8879:; BSR set to: 0

	goto	l1865
	
l1870:; BSR set to: 0

	line	54
	
l8881:; BSR set to: 0

	movlw	low(float24(1.0000000000000000))
	movwf	((c:___ftdiv@f1)),c
	movlw	high(float24(1.0000000000000000))
	movwf	((c:___ftdiv@f1+1)),c
	movlw	low highword(float24(1.0000000000000000))
	movwf	((c:___ftdiv@f1+2)),c

	movff	(c:exp@x),(c:___ftdiv@f2)
	movff	(c:exp@x+1),(c:___ftdiv@f2+1)
	movff	(c:exp@x+2),(c:___ftdiv@f2+2)
	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(c:?_exp)
	movff	1+?___ftdiv,(c:?_exp+1)
	movff	2+?___ftdiv,(c:?_exp+2)
	goto	l1865
	
l8883:
	goto	l1865
	line	55
	
l1869:; BSR set to: 0

	line	56
	movff	(c:exp@x),(c:?_exp)
	movff	(c:exp@x+1),(c:?_exp+1)
	movff	(c:exp@x+2),(c:?_exp+2)
	line	57
	
l1865:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_exp
	__end_of_exp:
	signat	_exp,4219
	global	_ldexp

;; *************** function _ldexp *****************
;; Defined at:
;;		line 277 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\frexp.c"
;; Parameters:    Size  Location     Type
;;  value           3   73[COMRAM] unsigned char 
;;  newexp          2   76[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   73[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0, prodl
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         5       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\frexp.c"
	line	277
global __ptext20
__ptext20:
psect	text20
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\frexp.c"
	line	277
	global	__size_of_ldexp
	__size_of_ldexp	equ	__end_of_ldexp-_ldexp
	
_ldexp:
;incstack = 0
	opt	stack 23
	dw	0FFFFh
	line	279
	
l8657:
	movlw	0x7f
	andwf	((c:ldexp@value+2)),c,w
	iorwf	((c:ldexp@value+1)),c,w
	iorwf	((c:ldexp@value)),c,w
	btfss	status,2
	goto	u6481
	goto	u6480
u6481:
	goto	l8663
u6480:
	line	280
	
l8659:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?_ldexp)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?_ldexp+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?_ldexp+2)),c

	goto	l1889
	
l8661:
	goto	l1889
	
l1888:
	line	282
	
l8663:
	movf	(0+((c:ldexp@value)+02h)),c,w
	andlw	(1<<7)-1
	movwf	(??_ldexp+0+0)&0ffh,c
	clrf	(??_ldexp+0+0+1)&0ffh,c

	bcf	status,0
	rlcf	(??_ldexp+0+0),c,f
	rlcf	(??_ldexp+0+1),c,f
	movf	(??_ldexp+0+0),c,w
	addwf	((c:ldexp@newexp)),c
	movf	(??_ldexp+0+1),c,w
	addwfc	((c:ldexp@newexp+1)),c

	line	283
	btfsc	(0+((c:ldexp@value)+01h)),c,7
	goto	u6491
	goto	u6490
u6491:
	clrf	(??_ldexp+0+0)&0ffh,c
	incf	(??_ldexp+0+0)&0ffh,c
	goto	u6498
u6490:
	clrf	(??_ldexp+0+0)&0ffh,c
u6498:
	movf	(??_ldexp+0+0),c,w
	addwf	((c:ldexp@newexp)),c
	movlw	0
	addwfc	((c:ldexp@newexp+1)),c
	line	287
	
l8665:
	movf	((c:ldexp@newexp+1)),c,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	0
	btfsc	status,2
	subwf	((c:ldexp@newexp)),c,w
	btfsc	status,0
	goto	u6501
	goto	u6500
u6501:
	goto	l8673
u6500:
	line	288
	
l8667:
	movlw	high(022h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_errno+1))&0ffh
	movlw	low(022h)
	movlb	0	; () banked
	movwf	((_errno))&0ffh
	line	289
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?_ldexp)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?_ldexp+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?_ldexp+2)),c

	goto	l1889
	
l8669:; BSR set to: 0

	goto	l1889
	line	290
	
l8671:; BSR set to: 0

	goto	l8691
	line	291
	
l1890:; BSR set to: 0

	
l8673:
	movf	((c:ldexp@newexp+1)),c,w
	xorlw	80h
	addlw	-((01h)^80h)
	movlw	0
	btfsc	status,2
	subwf	((c:ldexp@newexp)),c,w
	btfss	status,0
	goto	u6511
	goto	u6510
u6511:
	goto	l8689
u6510:
	line	292
	
l8675:
	movlw	high(022h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_errno+1))&0ffh
	movlw	low(022h)
	movlb	0	; () banked
	movwf	((_errno))&0ffh
	line	293
	
l8677:; BSR set to: 0

	movf	((c:ldexp@value+2)),c,w
	xorlw	80h
	addlw	-(low highword(float24(0.0000000000000000)))^80h
	
	bnz	u6525
	movlw	high(float24(0.0000000000000000))
	subwf	((c:ldexp@value+1)),c,w
	bnz	u6525
	movlw	low(float24(0.0000000000000000))
	subwf	((c:ldexp@value)),c,w
u6525:
	btfsc	status,0
	goto	u6521
	goto	u6520
u6521:
	goto	l8685
u6520:
	line	294
	
l8679:; BSR set to: 0

	movlw	low(float24(-3.4027699999999999e+038))
	movwf	((c:?_ldexp)),c
	movlw	high(float24(-3.4027699999999999e+038))
	movwf	((c:?_ldexp+1)),c
	movlw	low highword(float24(-3.4027699999999999e+038))
	movwf	((c:?_ldexp+2)),c

	goto	l1889
	
l8681:; BSR set to: 0

	goto	l1889
	
l8683:; BSR set to: 0

	goto	l8691
	line	295
	
l1893:; BSR set to: 0

	line	296
	
l8685:; BSR set to: 0

	movlw	low(float24(3.4027699999999999e+038))
	movwf	((c:?_ldexp)),c
	movlw	high(float24(3.4027699999999999e+038))
	movwf	((c:?_ldexp+1)),c
	movlw	low highword(float24(3.4027699999999999e+038))
	movwf	((c:?_ldexp+2)),c

	goto	l1889
	
l8687:; BSR set to: 0

	goto	l1889
	
l1894:; BSR set to: 0

	line	297
	goto	l8691
	line	298
	
l1892:; BSR set to: 0

	line	300
	
l8689:
	rlcf	((c:ldexp@newexp+1)),c,w
	rrcf	((c:ldexp@newexp+1)),c,w
	movwf	(??_ldexp+0+0+1)&0ffh,c
	rrcf	((c:ldexp@newexp)),c,w
	movwf	(??_ldexp+0+0)&0ffh,c
	movf	(0+((c:ldexp@value)+02h)),c,w
	xorwf	(??_ldexp+0+0),c,w
	andlw	not ((1<<7)-1)
	xorwf	(??_ldexp+0+0),c,w
	movwf	(0+((c:ldexp@value)+02h)),c
	line	301
	movff	(c:ldexp@newexp),??_ldexp+0+0
	movlw	01h
	andwf	(??_ldexp+0+0),c
	rrcf	(??_ldexp+0+0),c
	rrcf	(??_ldexp+0+0),c
	movf	(0+((c:ldexp@value)+01h)),c,w
	xorwf	(??_ldexp+0+0),c,w
	andlw	not (((1<<1)-1)<<7)
	xorwf	(??_ldexp+0+0),c,w
	movwf	(0+((c:ldexp@value)+01h)),c
	goto	l8691
	line	305
	
l1895:
	goto	l8691
	
l1891:
	line	306
	
l8691:
	movff	(c:ldexp@value),(c:?_ldexp)
	movff	(c:ldexp@value+1),(c:?_ldexp+1)
	movff	(c:ldexp@value+2),(c:?_ldexp+2)
	goto	l1889
	
l8693:
	line	307
	
l1889:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_ldexp
	__end_of_ldexp:
	signat	_ldexp,8315
	global	_floor

;; *************** function _floor *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\floor.c"
;; Parameters:    Size  Location     Type
;;  x               3   61[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  i               3   64[COMRAM] int 
;;  expon           2   67[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  3   61[COMRAM] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         3       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___altoft
;;		___ftadd
;;		___ftge
;;		___fttol
;;		_frexp
;; This function is called by:
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text21,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\floor.c"
	line	13
global __ptext21
__ptext21:
psect	text21
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\floor.c"
	line	13
	global	__size_of_floor
	__size_of_floor	equ	__end_of_floor-_floor
	
_floor:
;incstack = 0
	opt	stack 21
	dw	0FFFFh
	line	18
	
l8627:
	movff	(c:floor@x),(c:frexp@value)
	movff	(c:floor@x+1),(c:frexp@value+1)
	movff	(c:floor@x+2),(c:frexp@value+2)
		movlw	high((c:floor@expon))
	movwf	((c:frexp@eptr+1)),c
	movlw	low((c:floor@expon))
	movwf	((c:frexp@eptr)),c

	call	_frexp	;wreg free
	line	19
	
l8629:
	movf	((c:floor@expon+1)),c,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	0
	btfsc	status,2
	subwf	((c:floor@expon)),c,w
	btfsc	status,0
	goto	u6431
	goto	u6430
u6431:
	goto	l8641
u6430:
	line	20
	
l8631:
	movf	((c:floor@x+2)),c,w
	xorlw	80h
	addlw	-(low highword(float24(0.0000000000000000)))^80h
	
	bnz	u6445
	movlw	high(float24(0.0000000000000000))
	subwf	((c:floor@x+1)),c,w
	bnz	u6445
	movlw	low(float24(0.0000000000000000))
	subwf	((c:floor@x)),c,w
u6445:
	btfsc	status,0
	goto	u6441
	goto	u6440
u6441:
	goto	l8637
u6440:
	line	21
	
l8633:
	movlw	low(float24(-1.0000000000000000))
	movwf	((c:?_floor)),c
	movlw	high(float24(-1.0000000000000000))
	movwf	((c:?_floor+1)),c
	movlw	low highword(float24(-1.0000000000000000))
	movwf	((c:?_floor+2)),c

	goto	l1877
	
l8635:
	goto	l1877
	
l1876:
	line	22
	
l8637:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?_floor)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?_floor+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?_floor+2)),c

	goto	l1877
	
l8639:
	goto	l1877
	line	23
	
l1875:
	line	24
	
l8641:
	movlw	015h
	subwf	((c:floor@expon)),c,w
	movlw	0
	subwfb	((c:floor@expon+1)),c,w
	btfss	status,0
	goto	u6451
	goto	u6450
u6451:
	goto	l8645
u6450:
	line	25
	
l8643:
	movff	(c:floor@x),(c:?_floor)
	movff	(c:floor@x+1),(c:?_floor+1)
	movff	(c:floor@x+2),(c:?_floor+2)
	goto	l1877
	
l1878:
	line	26
	
l8645:
	movff	(c:floor@x),(c:___fttol@f1)
	movff	(c:floor@x+1),(c:___fttol@f1+1)
	movff	(c:floor@x+2),(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,(c:___altoft@c)
	movff	1+?___fttol,(c:___altoft@c+1)
	movff	2+?___fttol,(c:___altoft@c+2)
	movff	3+?___fttol,(c:___altoft@c+3)
	
	call	___altoft	;wreg free
	movff	0+?___altoft,(c:floor@i)
	movff	1+?___altoft,(c:floor@i+1)
	movff	2+?___altoft,(c:floor@i+2)
	line	27
	movff	(c:floor@x),(c:___ftge@ff1)
	movff	(c:floor@x+1),(c:___ftge@ff1+1)
	movff	(c:floor@x+2),(c:___ftge@ff1+2)
	movff	(c:floor@i),(c:___ftge@ff2)
	movff	(c:floor@i+1),(c:___ftge@ff2+1)
	movff	(c:floor@i+2),(c:___ftge@ff2+2)
	call	___ftge	;wreg free
	btfsc	status,0
	goto	u6461
	goto	u6460
u6461:
	goto	l1879
u6460:
	line	28
	
l8647:
	movff	(c:floor@i),(c:___ftadd@f1)
	movff	(c:floor@i+1),(c:___ftadd@f1+1)
	movff	(c:floor@i+2),(c:___ftadd@f1+2)
	movlw	low(float24(-1.0000000000000000))
	movwf	((c:___ftadd@f2)),c
	movlw	high(float24(-1.0000000000000000))
	movwf	((c:___ftadd@f2+1)),c
	movlw	low highword(float24(-1.0000000000000000))
	movwf	((c:___ftadd@f2+2)),c

	call	___ftadd	;wreg free
	movff	0+?___ftadd,(c:?_floor)
	movff	1+?___ftadd,(c:?_floor+1)
	movff	2+?___ftadd,(c:?_floor+2)
	goto	l1877
	
l8649:
	goto	l1877
	
l1879:
	line	29
	movff	(c:floor@i),(c:?_floor)
	movff	(c:floor@i+1),(c:?_floor+1)
	movff	(c:floor@i+2),(c:?_floor+2)
	line	30
	
l1877:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_floor
	__end_of_floor:
	signat	_floor,4219
	global	_frexp

;; *************** function _frexp *****************
;; Defined at:
;;		line 254 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\frexp.c"
;; Parameters:    Size  Location     Type
;;  value           3   19[COMRAM] int 
;;  eptr            2   22[COMRAM] PTR int 
;;		 -> log@exponent(2), floor@expon(2), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   19[COMRAM] PTR int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         5       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_floor
;;		_log
;; This function uses a non-reentrant model
;;
psect	text22,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\frexp.c"
	line	254
global __ptext22
__ptext22:
psect	text22
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\frexp.c"
	line	254
	global	__size_of_frexp
	__size_of_frexp	equ	__end_of_frexp-_frexp
	
_frexp:
;incstack = 0
	opt	stack 23
	dw	0FFFFh
	line	256
	
l8499:
	movlw	0x7f
	andwf	((c:frexp@value+2)),c,w
	iorwf	((c:frexp@value+1)),c,w
	iorwf	((c:frexp@value)),c,w
	btfss	status,2
	goto	u6301
	goto	u6300
u6301:
	goto	l8507
u6300:
	line	257
	
l8501:
	movff	(c:frexp@eptr),fsr2l
	movff	(c:frexp@eptr+1),fsr2h
	movlw	low(0)
	movwf	postinc2,c
	movlw	high(0)
	movwf	postdec2,c
	line	258
	
l8503:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?_frexp)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?_frexp+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?_frexp+2)),c

	goto	l1885
	
l8505:
	goto	l1885
	line	259
	
l1884:
	line	261
	
l8507:
	movf	(0+((c:frexp@value)+02h)),c,w
	andlw	(1<<7)-1
	movwf	(??_frexp+0+0)&0ffh,c
	clrf	(??_frexp+0+0+1)&0ffh,c

	bcf	status,0
	rlcf	(??_frexp+0+0),c,f
	rlcf	(??_frexp+0+1),c,f
	movff	(c:frexp@eptr),fsr2l
	movff	(c:frexp@eptr+1),fsr2h
	movff	??_frexp+0+0,postinc2
	movff	??_frexp+0+1,postdec2

	line	262
	btfsc	(0+((c:frexp@value)+01h)),c,7
	goto	u6311
	goto	u6310
u6311:
	clrf	(??_frexp+0+0)&0ffh,c
	incf	(??_frexp+0+0)&0ffh,c
	goto	u6318
u6310:
	clrf	(??_frexp+0+0)&0ffh,c
u6318:
	movf	(??_frexp+0+0),c,w
	movff	(c:frexp@eptr),fsr2l
	movff	(c:frexp@eptr+1),fsr2h
	iorwf	postinc2
	movlw	0
	iorwf	postdec2
	line	263
	
l8509:
	movff	(c:frexp@eptr),fsr2l
	movff	(c:frexp@eptr+1),fsr2h
	movlw	low(-126)
	addwf	postinc2
	movlw	high(-126)
	addwfc	postdec2
	line	268
	
l8511:
		bsf	(0+((c:frexp@value)+02h)),c, 0+0
	bsf	(0+((c:frexp@value)+02h)),c, 0+1
	bsf	(0+((c:frexp@value)+02h)),c, 0+2
	bsf	(0+((c:frexp@value)+02h)),c, 0+3
	bsf	(0+((c:frexp@value)+02h)),c, 0+4
	bsf	(0+((c:frexp@value)+02h)),c, 0+5
	bcf	(0+((c:frexp@value)+02h)),c, 0+6

	line	269
	
l8513:
	bcf	(0+((c:frexp@value)+01h)),c,7
	line	273
	
l8515:
	movff	(c:frexp@value),(c:?_frexp)
	movff	(c:frexp@value+1),(c:?_frexp+1)
	movff	(c:frexp@value+2),(c:?_frexp+2)
	goto	l1885
	
l8517:
	line	274
	
l1885:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_frexp
	__end_of_frexp:
	signat	_frexp,8315
	global	___ftge

;; *************** function ___ftge *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3   19[COMRAM] float 
;;  ff2             3   22[COMRAM] float 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_pow
;;		_exp
;;		_floor
;;		_check_thresh_trig
;; This function uses a non-reentrant model
;;
psect	text23,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
	line	4
global __ptext23
__ptext23:
psect	text23
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
	line	4
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:
;incstack = 0
	opt	stack 22
	dw	0FFFFh
	line	6
	
l8435:
	
	btfss	((c:___ftge@ff1+2)),c,(23)&7
	goto	u6191
	goto	u6190
u6191:
	goto	l8439
u6190:
	line	7
	
l8437:
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
	goto	l8439
	
l1674:
	line	8
	
l8439:
	
	btfss	((c:___ftge@ff2+2)),c,(23)&7
	goto	u6201
	goto	u6200
u6201:
	goto	l8443
u6200:
	line	9
	
l8441:
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
	goto	l8443
	
l1675:
	line	10
	
l8443:
	movlw	low(0800000h)
	xorwf	((c:___ftge@ff1)),c
	movlw	high(0800000h)
	xorwf	((c:___ftge@ff1+1)),c
	movlw	low highword(0800000h)
	xorwf	((c:___ftge@ff1+2)),c

	line	11
	
l8445:
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
	goto	u6211
	goto	u6210
u6211:
	goto	l8449
u6210:
	
l8447:
	bcf	status,0
	goto	l1676
	
l8167:
	
l8449:
	bsf	status,0
	goto	l1676
	
l8169:
	goto	l1676
	
l8451:
	line	13
	
l1676:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
	global	___altoft

;; *************** function ___altoft *****************
;; Defined at:
;;		line 42 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\altoft.c"
;; Parameters:    Size  Location     Type
;;  c               4   34[COMRAM] long 
;; Auto vars:     Size  Location     Type
;;  sign            1   43[COMRAM] unsigned char 
;;  exp             1   42[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   34[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0
;;      Totals:        10       0       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_floor
;; This function uses a non-reentrant model
;;
psect	text24,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\altoft.c"
	line	42
global __ptext24
__ptext24:
psect	text24
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\altoft.c"
	line	42
	global	__size_of___altoft
	__size_of___altoft	equ	__end_of___altoft-___altoft
	
___altoft:
;incstack = 0
	opt	stack 21
	dw	0FFFFh
	line	45
	
l8301:
	movlw	low(0)
	movwf	((c:___altoft@sign)),c
	line	46
	movlw	low(08Eh)
	movwf	((c:___altoft@exp)),c
	line	47
	
l8303:
	movf	((c:___altoft@c+3)),c,w
	xorlw	80h
	addlw	-(0)^80h
	
	bnz	u5905
	movlw	0
	subwf	((c:___altoft@c+2)),c,w
	bnz	u5905
	movlw	0
	subwf	((c:___altoft@c+1)),c,w
	bnz	u5905
	movlw	0
	subwf	((c:___altoft@c)),c,w
u5905:

	btfsc	status,0
	goto	u5901
	goto	u5900
u5901:
	goto	l8311
u5900:
	line	48
	
l8305:
	comf	((c:___altoft@c+3)),c
	comf	((c:___altoft@c+2)),c
	comf	((c:___altoft@c+1)),c
	negf	((c:___altoft@c)),c
	movlw	0
	addwfc	((c:___altoft@c+1)),c
	addwfc	((c:___altoft@c+2)),c
	addwfc	((c:___altoft@c+3)),c
	line	49
	
l8307:
	movlw	low(01h)
	movwf	((c:___altoft@sign)),c
	goto	l8311
	line	50
	
l1385:
	line	52
	goto	l8311
	
l1387:
	line	53
	
l8309:
	bcf	status,0
	rrcf	((c:___altoft@c+3)),c
	rrcf	((c:___altoft@c+2)),c
	rrcf	((c:___altoft@c+1)),c
	rrcf	((c:___altoft@c)),c
	line	54
	incf	((c:___altoft@exp)),c
	goto	l8311
	line	55
	
l1386:
	line	52
	
l8311:
	movlw	0
	andwf	((c:___altoft@c)),c,w
	movwf	(??___altoft+0+0)&0ffh,c
	movlw	0
	andwf	((c:___altoft@c+1)),c,w
	movwf	1+(??___altoft+0+0)&0ffh,c
	movlw	0
	andwf	((c:___altoft@c+2)),c,w
	movwf	2+(??___altoft+0+0)&0ffh,c
	movlw	0FFh
	andwf	((c:___altoft@c+3)),c,w
	movwf	3+(??___altoft+0+0)&0ffh,c
	movf	(??___altoft+0+3),c,w
	iorwf (??___altoft+0+0),c,w
	iorwf (??___altoft+0+1),c,w
	iorwf (??___altoft+0+2),c,w

	btfss	status,2
	goto	u5911
	goto	u5910
u5911:
	goto	l8309
u5910:
	goto	l8313
	
l1388:
	line	56
	
l8313:
	movff	(c:___altoft@c),(c:___ftpack@arg)
	movff	(c:___altoft@c+1),(c:___ftpack@arg+1)
	movff	(c:___altoft@c+2),(c:___ftpack@arg+2)
	movff	(c:___altoft@exp),(c:___ftpack@exp)
	movff	(c:___altoft@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___altoft)
	movff	1+?___ftpack,(c:?___altoft+1)
	movff	2+?___ftpack,(c:?___altoft+2)
	goto	l1389
	
l8315:
	line	57
	
l1389:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___altoft
	__end_of___altoft:
	signat	___altoft,4219
	global	_eval_poly

;; *************** function _eval_poly *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\evalpoly.c"
;; Parameters:    Size  Location     Type
;;  x               3   61[COMRAM] float 
;;  d               2   64[COMRAM] PTR const 
;;		 -> log@coeff(27), exp@coeff(30), 
;;  n               2   66[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  res             3   70[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  3   61[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         7       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___ftadd
;;		___ftmul
;;		___wmul
;; This function is called by:
;;		_exp
;;		_log
;; This function uses a non-reentrant model
;;
psect	text25,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\evalpoly.c"
	line	4
global __ptext25
__ptext25:
psect	text25
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\evalpoly.c"
	line	4
	global	__size_of_eval_poly
	__size_of_eval_poly	equ	__end_of_eval_poly-_eval_poly
	
_eval_poly:
;incstack = 0
	opt	stack 21
	dw	0FFFFh
	line	8
	
l8651:
	movff	(c:eval_poly@n),(c:___wmul@multiplier)
	movff	(c:eval_poly@n+1),(c:___wmul@multiplier+1)
	movlw	high(03h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movff	(c:eval_poly@d),??_eval_poly+0+0
	movff	(c:eval_poly@d+1),??_eval_poly+0+0+1
	movf	(0+?___wmul),c,w
	addwf	(??_eval_poly+0+0),c
	movf	(1+?___wmul),c,w
	addwfc	(??_eval_poly+0+1),c
	movff	??_eval_poly+0+0,tblptrl
	movff	??_eval_poly+0+1,tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd*+
		dw	0FFFFh; errata NOP

	movff	tablat,(c:eval_poly@res)
	tblrd*+
		dw	0FFFFh; errata NOP

	movff	tablat,(c:eval_poly@res+1)
	tblrd*-
		dw	0FFFFh; errata NOP

	movff	tablat,(c:eval_poly@res+2)

	line	9
	goto	l8655
	
l1915:
	line	10
	
l8653:
	movff	(c:eval_poly@res),(c:___ftmul@f2)
	movff	(c:eval_poly@res+1),(c:___ftmul@f2+1)
	movff	(c:eval_poly@res+2),(c:___ftmul@f2+2)
	movff	(c:eval_poly@x),(c:___ftmul@f1)
	movff	(c:eval_poly@x+1),(c:___ftmul@f1+1)
	movff	(c:eval_poly@x+2),(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftadd@f1)
	movff	1+?___ftmul,(c:___ftadd@f1+1)
	movff	2+?___ftmul,(c:___ftadd@f1+2)
	movlw	high(03h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:___wmul@multiplicand)),c
	decf	((c:eval_poly@n)),c
	btfss	status,0
	decf	((c:eval_poly@n+1)),c
	movff	(c:eval_poly@n),(c:___wmul@multiplier)
	movff	(c:eval_poly@n+1),(c:___wmul@multiplier+1)
	call	___wmul	;wreg free
	movff	(c:eval_poly@d),??_eval_poly+0+0
	movff	(c:eval_poly@d+1),??_eval_poly+0+0+1
	movf	(0+?___wmul),c,w
	addwf	(??_eval_poly+0+0),c
	movf	(1+?___wmul),c,w
	addwfc	(??_eval_poly+0+1),c
	movff	??_eval_poly+0+0,tblptrl
	movff	??_eval_poly+0+1,tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd*+
		dw	0FFFFh; errata NOP

	movff	tablat,(c:___ftadd@f2)
	tblrd*+
		dw	0FFFFh; errata NOP

	movff	tablat,(c:___ftadd@f2+1)
	tblrd*-
		dw	0FFFFh; errata NOP

	movff	tablat,(c:___ftadd@f2+2)

	call	___ftadd	;wreg free
	movff	0+?___ftadd,(c:eval_poly@res)
	movff	1+?___ftadd,(c:eval_poly@res+1)
	movff	2+?___ftadd,(c:eval_poly@res+2)
	goto	l8655
	
l1914:
	line	9
	
l8655:
	movf	((c:eval_poly@n+1)),c,w
	iorwf ((c:eval_poly@n)),c,w

	btfss	status,2
	goto	u6471
	goto	u6470
u6471:
	goto	l8653
u6470:
	
l1916:
	line	11
	movff	(c:eval_poly@res),(c:?_eval_poly)
	movff	(c:eval_poly@res+1),(c:?_eval_poly+1)
	movff	(c:eval_poly@res+2),(c:?_eval_poly+2)
	line	12
	
l1917:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_eval_poly
	__end_of_eval_poly:
	signat	_eval_poly,12411
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2   19[COMRAM] unsigned int 
;;  multiplicand    2   21[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2   23[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  2   19[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh
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
;;		_eval_poly
;; This function uses a non-reentrant model
;;
psect	text26,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
global __ptext26
__ptext26:
psect	text26
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:
;incstack = 0
	opt	stack 22
	dw	0FFFFh
	line	37
	
l8295:
	movf	((c:___wmul@multiplier)),c,w
	mulwf	((c:___wmul@multiplicand)),c
	movff	prodl,(c:___wmul@product)
	movff	prodh,(c:___wmul@product+1)
	line	38
	movf	((c:___wmul@multiplier)),c,w
	mulwf	(0+((c:___wmul@multiplicand)+01h)),c
	movf	(prodl),c,w
	addwf	((c:___wmul@product+1)),c

	line	39
	movf	(0+((c:___wmul@multiplier)+01h)),c,w
	mulwf	((c:___wmul@multiplicand)),c
	movf	(prodl),c,w
	addwf	((c:___wmul@product+1)),c

	line	52
	
l8297:
	movff	(c:___wmul@product),(c:?___wmul)
	movff	(c:___wmul@product+1),(c:?___wmul+1)
	goto	l1292
	
l8299:
	line	53
	
l1292:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	___ftsub

;; *************** function ___ftsub *****************
;; Defined at:
;;		line 20 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftsub.c"
;; Parameters:    Size  Location     Type
;;  f1              3   61[COMRAM] float 
;;  f2              3   64[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   61[COMRAM] float 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___ftadd
;; This function is called by:
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text27,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftsub.c"
	line	20
global __ptext27
__ptext27:
psect	text27
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftsub.c"
	line	20
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:
;incstack = 0
	opt	stack 21
	dw	0FFFFh
	line	23
	
l8605:
	movlw	low(0800000h)
	xorwf	((c:___ftsub@f2)),c
	movlw	high(0800000h)
	xorwf	((c:___ftsub@f2+1)),c
	movlw	low highword(0800000h)
	xorwf	((c:___ftsub@f2+2)),c

	line	24
	
l8607:
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
	goto	l1698
	
l8609:
	line	25
	
l1698:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
	signat	___ftsub,8315
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 49 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f1              3   46[COMRAM] float 
;;  f2              3   49[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   56[COMRAM] float 
;;  sign            1   60[COMRAM] unsigned char 
;;  exp             1   59[COMRAM] unsigned char 
;;  cntr            1   55[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   46[COMRAM] float 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_get_current_readings
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text28,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftdiv.c"
	line	49
global __ptext28
__ptext28:
psect	text28
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftdiv.c"
	line	49
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:
;incstack = 0
	opt	stack 22
	dw	0FFFFh
	line	55
	
l8559:
	movff	(c:___ftdiv@f1+2),??___ftdiv+0+0
	clrf	(??___ftdiv+0+0+1)&0ffh,c
	clrf	(??___ftdiv+0+0+2)&0ffh,c
	rlcf	((c:___ftdiv@f1+1)),c,w
	rlcf	(??___ftdiv+0+0)&0ffh,c
	bnc	u6361
	bsf	(??___ftdiv+0+0+1)&0ffh,c,0
u6361:
	movf	(??___ftdiv+0+0),c,w
	movwf	((c:___ftdiv@exp)),c
	tstfsz	((c:___ftdiv@exp))&0ffh
	goto	u6371
	goto	u6370
u6371:
	goto	l8565
u6370:
	line	56
	
l8561:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftdiv)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+2)),c

	goto	l1667
	
l8563:
	goto	l1667
	
l1666:
	line	57
	
l8565:
	movff	(c:___ftdiv@f2+2),??___ftdiv+0+0
	clrf	(??___ftdiv+0+0+1)&0ffh,c
	clrf	(??___ftdiv+0+0+2)&0ffh,c
	rlcf	((c:___ftdiv@f2+1)),c,w
	rlcf	(??___ftdiv+0+0)&0ffh,c
	bnc	u6381
	bsf	(??___ftdiv+0+0+1)&0ffh,c,0
u6381:
	movf	(??___ftdiv+0+0),c,w
	movwf	((c:___ftdiv@sign)),c
	tstfsz	((c:___ftdiv@sign))&0ffh
	goto	u6391
	goto	u6390
u6391:
	goto	l8571
u6390:
	line	58
	
l8567:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftdiv)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+2)),c

	goto	l1667
	
l8569:
	goto	l1667
	
l1668:
	line	59
	
l8571:
	movlw	low(0)
	movwf	((c:___ftdiv@f3)),c
	movlw	high(0)
	movwf	((c:___ftdiv@f3+1)),c
	movlw	low highword(0)
	movwf	((c:___ftdiv@f3+2)),c

	line	60
	
l8573:
	movf	((c:___ftdiv@sign)),c,w
	addlw	low(089h)
	subwf	((c:___ftdiv@exp)),c
	line	61
	
l8575:
	movff	0+2+(c:___ftdiv@f1),(c:___ftdiv@sign)
	line	62
	
l8577:
	movf	(0+2+(c:___ftdiv@f2)),c,w
	xorwf	((c:___ftdiv@sign)),c
	line	63
	
l8579:
	movlw	(080h)&0ffh
	andwf	((c:___ftdiv@sign)),c
	line	64
	
l8581:
	bsf	(0+(15/8)+(c:___ftdiv@f1)),c,(15)&7
	line	65
	
l8583:
	movlw	low(0FFFFh)
	andwf	((c:___ftdiv@f1)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftdiv@f1+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftdiv@f1+2)),c

	line	66
	
l8585:
	bsf	(0+(15/8)+(c:___ftdiv@f2)),c,(15)&7
	line	67
	
l8587:
	movlw	low(0FFFFh)
	andwf	((c:___ftdiv@f2)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftdiv@f2+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftdiv@f2+2)),c

	line	68
	
l8589:
	movlw	low(018h)
	movwf	((c:___ftdiv@cntr)),c
	goto	l8591
	line	69
	
l1669:
	line	70
	
l8591:
	bcf	status,0
	rlcf	((c:___ftdiv@f3)),c
	rlcf	((c:___ftdiv@f3+1)),c
	rlcf	((c:___ftdiv@f3+2)),c
	line	71
	
l8593:
	movf	((c:___ftdiv@f2)),c,w
	subwf	((c:___ftdiv@f1)),c,w
	movf	((c:___ftdiv@f2+1)),c,w
	subwfb	((c:___ftdiv@f1+1)),c,w
	movf	((c:___ftdiv@f2+2)),c,w
	subwfb	((c:___ftdiv@f1+2)),c,w
	btfss	status,0
	goto	u6401
	goto	u6400
u6401:
	goto	l1670
u6400:
	line	72
	
l8595:
	movf	((c:___ftdiv@f2)),c,w
	subwf	((c:___ftdiv@f1)),c
	movf	((c:___ftdiv@f2+1)),c,w
	subwfb	((c:___ftdiv@f1+1)),c
	movf	((c:___ftdiv@f2+2)),c,w
	subwfb	((c:___ftdiv@f1+2)),c

	line	73
	
l8597:
	bsf	(0+(0/8)+(c:___ftdiv@f3)),c,(0)&7
	line	74
	
l1670:
	line	75
	bcf	status,0
	rlcf	((c:___ftdiv@f1)),c
	rlcf	((c:___ftdiv@f1+1)),c
	rlcf	((c:___ftdiv@f1+2)),c
	line	76
	
l8599:
	decfsz	((c:___ftdiv@cntr)),c
	
	goto	l8591
	goto	l8601
	
l1671:
	line	77
	
l8601:
	movff	(c:___ftdiv@f3),(c:___ftpack@arg)
	movff	(c:___ftdiv@f3+1),(c:___ftpack@arg+1)
	movff	(c:___ftdiv@f3+2),(c:___ftpack@arg+2)
	movff	(c:___ftdiv@exp),(c:___ftpack@exp)
	movff	(c:___ftdiv@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftdiv)
	movff	1+?___ftpack,(c:?___ftdiv+1)
	movff	2+?___ftpack,(c:?___ftdiv+2)
	goto	l1667
	
l8603:
	line	78
	
l1667:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	___awtoft

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 32 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2   27[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   30[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   27[COMRAM] float 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_exp
;;		_log
;; This function uses a non-reentrant model
;;
psect	text29,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
	line	32
global __ptext29
__ptext29:
psect	text29
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
	line	32
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:
;incstack = 0
	opt	stack 22
	dw	0FFFFh
	line	36
	
l8611:
	movlw	low(0)
	movwf	((c:___awtoft@sign)),c
	line	37
	
l8613:
	movf	((c:___awtoft@c+1)),c,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	0
	btfsc	status,2
	subwf	((c:___awtoft@c)),c,w
	btfsc	status,0
	goto	u6411
	goto	u6410
u6411:
	goto	l8619
u6410:
	line	38
	
l8615:
	negf	((c:___awtoft@c)),c
	comf	((c:___awtoft@c+1)),c
	btfsc	status,0
	incf	((c:___awtoft@c+1)),c
	line	39
	
l8617:
	movlw	low(01h)
	movwf	((c:___awtoft@sign)),c
	goto	l8619
	line	40
	
l1509:
	line	41
	
l8619:
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
	goto	l1510
	
l8621:
	line	42
	
l1510:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
	signat	___awtoft,4219
	global	___lltoft

;; *************** function ___lltoft *****************
;; Defined at:
;;		line 35 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lltoft.c"
;; Parameters:    Size  Location     Type
;;  c               4   27[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;  exp             1   35[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   27[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_pow
;; This function uses a non-reentrant model
;;
psect	text30,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lltoft.c"
	line	35
global __ptext30
__ptext30:
psect	text30
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lltoft.c"
	line	35
	global	__size_of___lltoft
	__size_of___lltoft	equ	__end_of___lltoft-___lltoft
	
___lltoft:
;incstack = 0
	opt	stack 23
	dw	0FFFFh
	line	38
	
l8809:
	movlw	low(08Eh)
	movwf	((c:___lltoft@exp)),c
	line	41
	goto	l8813
	
l1769:
	line	42
	
l8811:
	bcf	status,0
	rrcf	((c:___lltoft@c+3)),c
	rrcf	((c:___lltoft@c+2)),c
	rrcf	((c:___lltoft@c+1)),c
	rrcf	((c:___lltoft@c)),c
	line	43
	incf	((c:___lltoft@exp)),c
	goto	l8813
	line	44
	
l1768:
	line	41
	
l8813:
	movlw	0
	andwf	((c:___lltoft@c)),c,w
	movwf	(??___lltoft+0+0)&0ffh,c
	movlw	0
	andwf	((c:___lltoft@c+1)),c,w
	movwf	1+(??___lltoft+0+0)&0ffh,c
	movlw	0
	andwf	((c:___lltoft@c+2)),c,w
	movwf	2+(??___lltoft+0+0)&0ffh,c
	movlw	0FFh
	andwf	((c:___lltoft@c+3)),c,w
	movwf	3+(??___lltoft+0+0)&0ffh,c
	movf	(??___lltoft+0+3),c,w
	iorwf (??___lltoft+0+0),c,w
	iorwf (??___lltoft+0+1),c,w
	iorwf (??___lltoft+0+2),c,w

	btfss	status,2
	goto	u6731
	goto	u6730
u6731:
	goto	l8811
u6730:
	goto	l8815
	
l1770:
	line	45
	
l8815:
	movff	(c:___lltoft@c),(c:___ftpack@arg)
	movff	(c:___lltoft@c+1),(c:___ftpack@arg+1)
	movff	(c:___lltoft@c+2),(c:___ftpack@arg+2)
	movff	(c:___lltoft@exp),(c:___ftpack@exp)
	movlw	low(0)
	movwf	((c:___ftpack@sign)),c
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___lltoft)
	movff	1+?___ftpack,(c:?___lltoft+1)
	movff	2+?___ftpack,(c:?___lltoft+2)
	goto	l1771
	
l8817:
	line	46
	
l1771:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___lltoft
	__end_of___lltoft:
	signat	___lltoft,4219
	global	_float_to_int

;; *************** function _float_to_int *****************
;; Defined at:
;;		line 77 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\hsm20g.c"
;; Parameters:    Size  Location     Type
;;  value           3   70[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  integral        3   82[COMRAM] float 
;;  fractional      3   79[COMRAM] float 
;;  int_value       2   85[COMRAM] unsigned int 
;;  points          1   78[COMRAM] unsigned char 
;;  decimals        1   77[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   70[COMRAM] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         3       0       0       0       0       0       0
;;      Locals:        10       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0
;;      Totals:        17       0       0       0       0       0       0
;;Total ram usage:       17 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftmul
;;		___fttol
;;		_modf
;; This function is called by:
;;		_get_current_readings
;; This function uses a non-reentrant model
;;
psect	text31,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\hsm20g.c"
	line	77
global __ptext31
__ptext31:
psect	text31
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\hsm20g.c"
	line	77
	global	__size_of_float_to_int
	__size_of_float_to_int	equ	__end_of_float_to_int-_float_to_int
	
_float_to_int:
;incstack = 0
	opt	stack 23
	dw	0FFFFh
	line	85
	
l9475:
;hsm20g.c: 79: unsigned char decimals, points;
;hsm20g.c: 80: unsigned int int_value;
;hsm20g.c: 81: double integral;
;hsm20g.c: 82: double fractional;
;hsm20g.c: 85: fractional = modf(value, &integral);
	movff	(c:float_to_int@value),(c:modf@value)
	movff	(c:float_to_int@value+1),(c:modf@value+1)
	movff	(c:float_to_int@value+2),(c:modf@value+2)
		movlw	high((c:float_to_int@integral))
	movwf	((c:modf@iptr+1)),c
	movlw	low((c:float_to_int@integral))
	movwf	((c:modf@iptr)),c

	call	_modf	;wreg free
	movff	0+?_modf,(c:float_to_int@fractional)
	movff	1+?_modf,(c:float_to_int@fractional+1)
	movff	2+?_modf,(c:float_to_int@fractional+2)
	line	86
	
l9477:
;hsm20g.c: 86: fractional = fractional * 100;
	movff	(c:float_to_int@fractional),(c:___ftmul@f1)
	movff	(c:float_to_int@fractional+1),(c:___ftmul@f1+1)
	movff	(c:float_to_int@fractional+2),(c:___ftmul@f1+2)
	movlw	low(float24(100.00000000000000))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(100.00000000000000))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(100.00000000000000))
	movwf	((c:___ftmul@f2+2)),c

	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:float_to_int@fractional)
	movff	1+?___ftmul,(c:float_to_int@fractional+1)
	movff	2+?___ftmul,(c:float_to_int@fractional+2)
	line	87
	
l9479:
;hsm20g.c: 87: decimals = integral;
	movff	(c:float_to_int@integral),(c:___fttol@f1)
	movff	(c:float_to_int@integral+1),(c:___fttol@f1+1)
	movff	(c:float_to_int@integral+2),(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,??_float_to_int+0+0
	movff	1+?___fttol,??_float_to_int+0+0+1
	movff	2+?___fttol,??_float_to_int+0+0+2
	movff	3+?___fttol,??_float_to_int+0+0+3
	
	movf	(??_float_to_int+0+0),c,w
	movwf	((c:float_to_int@decimals)),c
	line	88
	
l9481:
;hsm20g.c: 88: points = fractional;
	movff	(c:float_to_int@fractional),(c:___fttol@f1)
	movff	(c:float_to_int@fractional+1),(c:___fttol@f1+1)
	movff	(c:float_to_int@fractional+2),(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,??_float_to_int+0+0
	movff	1+?___fttol,??_float_to_int+0+0+1
	movff	2+?___fttol,??_float_to_int+0+0+2
	movff	3+?___fttol,??_float_to_int+0+0+3
	
	movf	(??_float_to_int+0+0),c,w
	movwf	((c:float_to_int@points)),c
	line	90
	
l9483:
;hsm20g.c: 90: int_value = 0x0000;
	movlw	high(0)
	movwf	((c:float_to_int@int_value+1)),c
	movlw	low(0)
	movwf	((c:float_to_int@int_value)),c
	line	91
	
l9485:
;hsm20g.c: 91: int_value = int_value + decimals;
	movf	((c:float_to_int@decimals)),c,w
	addwf	((c:float_to_int@int_value)),c,w
	
	movwf	((c:float_to_int@int_value)),c
	movlw	0
	addwfc	((c:float_to_int@int_value+1)),c,w
	movwf	1+((c:float_to_int@int_value)),c
	line	92
	
l9487:
;hsm20g.c: 92: int_value = int_value << 8;
	movf	((c:float_to_int@int_value)),c,w
	movwf	((c:float_to_int@int_value+1)),c
	clrf	((c:float_to_int@int_value)),c
	line	93
	
l9489:
;hsm20g.c: 93: int_value = int_value + points;
	movf	((c:float_to_int@points)),c,w
	addwf	((c:float_to_int@int_value)),c,w
	
	movwf	((c:float_to_int@int_value)),c
	movlw	0
	addwfc	((c:float_to_int@int_value+1)),c,w
	movwf	1+((c:float_to_int@int_value)),c
	line	95
	
l9491:
;hsm20g.c: 95: return int_value;
	movff	(c:float_to_int@int_value),(c:?_float_to_int)
	movff	(c:float_to_int@int_value+1),(c:?_float_to_int+1)
	goto	l615
	
l9493:
	line	96
	
l615:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_float_to_int
	__end_of_float_to_int:
	signat	_float_to_int,4218
	global	_modf

;; *************** function _modf *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\modf.c"
;; Parameters:    Size  Location     Type
;;  value           3   61[COMRAM] int 
;;  iptr            2   64[COMRAM] PTR 
;;		 -> float_to_int@integral(3), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   61[COMRAM] PTR 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         5       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___attoft
;;		___ftadd
;;		___ftneg
;;		___fttol
;; This function is called by:
;;		_float_to_int
;; This function uses a non-reentrant model
;;
psect	text32,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\modf.c"
	line	8
global __ptext32
__ptext32:
psect	text32
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\modf.c"
	line	8
	global	__size_of_modf
	__size_of_modf	equ	__end_of_modf-_modf
	
_modf:
;incstack = 0
	opt	stack 23
	dw	0FFFFh
	line	26
	
l8981:
	movff	(c:modf@value),(c:___fttol@f1)
	movff	(c:modf@value+1),(c:___fttol@f1+1)
	movff	(c:modf@value+2),(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,??_modf+0+0
	movff	1+?___fttol,??_modf+0+0+1
	movff	2+?___fttol,??_modf+0+0+2
	movff	3+?___fttol,??_modf+0+0+3
	
	movff	0+??_modf+0+0,(c:___attoft@c)
	movff	1+??_modf+0+0,(c:___attoft@c+1)
	movff	2+??_modf+0+0,(c:___attoft@c+2)
	call	___attoft	;wreg free
	movff	(c:modf@iptr),fsr2l
	movff	(c:modf@iptr+1),fsr2h
	movff	0+?___attoft,postinc2
	movff	1+?___attoft,postinc2
	movff	2+?___attoft,postdec2
	movf	postdec2
	line	27
	movff	(c:modf@iptr),fsr2l
	movff	(c:modf@iptr+1),fsr2h
	movff	postinc2,(c:___ftneg@f1)
	movff	postinc2,(c:___ftneg@f1+1)
	movff	postdec2,(c:___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(c:___ftadd@f1)
	movff	1+?___ftneg,(c:___ftadd@f1+1)
	movff	2+?___ftneg,(c:___ftadd@f1+2)
	movff	(c:modf@value),(c:___ftadd@f2)
	movff	(c:modf@value+1),(c:___ftadd@f2+1)
	movff	(c:modf@value+2),(c:___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(c:?_modf)
	movff	1+?___ftadd,(c:?_modf+1)
	movff	2+?___ftadd,(c:?_modf+2)
	goto	l1834
	
l8983:
	line	32
	
l1834:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_modf
	__end_of_modf:
	signat	_modf,8315
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   19[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   29[COMRAM] unsigned long 
;;  exp1            1   33[COMRAM] unsigned char 
;;  sign1           1   28[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   19[COMRAM] long 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_float_to_int
;;		_modf
;;		_pow
;;		_exp
;;		_floor
;; This function uses a non-reentrant model
;;
psect	text33,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
global __ptext33
__ptext33:
psect	text33
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:
;incstack = 0
	opt	stack 22
	dw	0FFFFh
	line	49
	
l8453:
	movff	(c:___fttol@f1+2),??___fttol+0+0
	clrf	(??___fttol+0+0+1)&0ffh,c
	clrf	(??___fttol+0+0+2)&0ffh,c
	rlcf	((c:___fttol@f1+1)),c,w
	rlcf	(??___fttol+0+0)&0ffh,c
	bnc	u6221
	bsf	(??___fttol+0+0+1)&0ffh,c,0
u6221:
	movf	(??___fttol+0+0),c,w
	movwf	((c:___fttol@exp1)),c
	tstfsz	((c:___fttol@exp1))&0ffh
	goto	u6231
	goto	u6230
u6231:
	goto	l8459
u6230:
	line	50
	
l8455:
	movlw	low(0)
	movwf	((c:?___fttol)),c
	movlw	high(0)
	movwf	((c:?___fttol+1)),c
	movlw	low highword(0)
	movwf	((c:?___fttol+2)),c
	movlw	high highword(0)
	movwf	((c:?___fttol+3)),c
	goto	l1702
	
l8457:
	goto	l1702
	
l1701:
	line	51
	
l8459:
	movlw	(017h)&0ffh
	movwf	(??___fttol+0+0)&0ffh,c
	movff	(c:___fttol@f1),??___fttol+1+0
	movff	(c:___fttol@f1+1),??___fttol+1+0+1
	movff	(c:___fttol@f1+2),??___fttol+1+0+2
	incf	((??___fttol+0+0)),c,w
	movwf	(??___fttol+4+0)&0ffh,c
	goto	u6240
u6245:
	bcf	status,0
	rrcf	(??___fttol+1+2),c
	rrcf	(??___fttol+1+1),c
	rrcf	(??___fttol+1+0),c
u6240:
	decfsz	(??___fttol+4+0)&0ffh,c
	goto	u6245
	movf	(??___fttol+1+0),c,w
	movwf	((c:___fttol@sign1)),c
	line	52
	
l8461:
	bsf	(0+(15/8)+(c:___fttol@f1)),c,(15)&7
	line	53
	
l8463:
	movlw	low(0FFFFh)
	andwf	((c:___fttol@f1)),c
	movlw	high(0FFFFh)
	andwf	((c:___fttol@f1+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___fttol@f1+2)),c

	line	54
	
l8465:
	movf	((c:___fttol@f1)),c,w
	movwf	((c:___fttol@lval)),c
	movf	((c:___fttol@f1+1)),c,w
	movwf	1+((c:___fttol@lval)),c
	
	movf	((c:___fttol@f1+2)),c,w
	movwf	2+((c:___fttol@lval)),c
	
	clrf	3+((c:___fttol@lval)),c
	line	55
	
l8467:
	movlw	(08Eh)&0ffh
	subwf	((c:___fttol@exp1)),c
	line	56
	
l8469:
	btfss	((c:___fttol@exp1)),c,7
	goto	u6251
	goto	u6250
u6251:
	goto	l8481
u6250:
	line	57
	
l8471:
	movf	((c:___fttol@exp1)),c,w
	xorlw	80h
	movwf	(??___fttol+0+0)&0ffh,c
	movlw	(-15)&0ffh
	xorlw	80h
	subwf	(??___fttol+0+0),c,w
	btfsc	status,0
	goto	u6261
	goto	u6260
u6261:
	goto	l8477
u6260:
	line	58
	
l8473:
	movlw	low(0)
	movwf	((c:?___fttol)),c
	movlw	high(0)
	movwf	((c:?___fttol+1)),c
	movlw	low highword(0)
	movwf	((c:?___fttol+2)),c
	movlw	high highword(0)
	movwf	((c:?___fttol+3)),c
	goto	l1702
	
l8475:
	goto	l1702
	
l1704:
	goto	l8477
	line	59
	
l1705:
	line	60
	
l8477:
	bcf	status,0
	rrcf	((c:___fttol@lval+3)),c
	rrcf	((c:___fttol@lval+2)),c
	rrcf	((c:___fttol@lval+1)),c
	rrcf	((c:___fttol@lval)),c
	line	61
	
l8479:
	incfsz	((c:___fttol@exp1)),c
	
	goto	l8477
	goto	l8491
	
l1706:
	line	62
	goto	l8491
	
l1703:
	line	63
	
l8481:
	movlw	(018h-1)
	cpfsgt	((c:___fttol@exp1)),c
	goto	u6271
	goto	u6270
u6271:
	goto	l8489
u6270:
	line	64
	
l8483:
	movlw	low(0)
	movwf	((c:?___fttol)),c
	movlw	high(0)
	movwf	((c:?___fttol+1)),c
	movlw	low highword(0)
	movwf	((c:?___fttol+2)),c
	movlw	high highword(0)
	movwf	((c:?___fttol+3)),c
	goto	l1702
	
l8485:
	goto	l1702
	
l1708:
	line	65
	goto	l8489
	
l1710:
	line	66
	
l8487:
	bcf	status,0
	rlcf	((c:___fttol@lval)),c
	rlcf	((c:___fttol@lval+1)),c
	rlcf	((c:___fttol@lval+2)),c
	rlcf	((c:___fttol@lval+3)),c
	line	67
	decf	((c:___fttol@exp1)),c
	goto	l8489
	line	68
	
l1709:
	line	65
	
l8489:
	tstfsz	((c:___fttol@exp1)),c
	goto	u6281
	goto	u6280
u6281:
	goto	l8487
u6280:
	goto	l8491
	
l1711:
	goto	l8491
	line	69
	
l1707:
	line	70
	
l8491:
	movf	((c:___fttol@sign1)),c,w
	btfsc	status,2
	goto	u6291
	goto	u6290
u6291:
	goto	l8495
u6290:
	line	71
	
l8493:
	comf	((c:___fttol@lval+3)),c
	comf	((c:___fttol@lval+2)),c
	comf	((c:___fttol@lval+1)),c
	negf	((c:___fttol@lval)),c
	movlw	0
	addwfc	((c:___fttol@lval+1)),c
	addwfc	((c:___fttol@lval+2)),c
	addwfc	((c:___fttol@lval+3)),c
	goto	l8495
	
l1712:
	line	72
	
l8495:
	movff	(c:___fttol@lval),(c:?___fttol)
	movff	(c:___fttol@lval+1),(c:?___fttol+1)
	movff	(c:___fttol@lval+2),(c:?___fttol+2)
	movff	(c:___fttol@lval+3),(c:?___fttol+3)
	goto	l1702
	
l8497:
	line	73
	
l1702:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___ftneg

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3   46[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   46[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0
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
;;		Nothing
;; This function is called by:
;;		_voltage_to_temp
;;		_voltage_to_hum
;;		_modf
;;		_pow
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text34,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
	line	15
global __ptext34
__ptext34:
psect	text34
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
	line	15
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:
;incstack = 0
	opt	stack 23
	dw	0FFFFh
	line	17
	
l8623:
	movlw	0x7f
	andwf	((c:___ftneg@f1+2)),c,w
	iorwf	((c:___ftneg@f1+1)),c,w
	iorwf	((c:___ftneg@f1)),c,w
	btfsc	status,2
	goto	u6421
	goto	u6420
u6421:
	goto	l1692
u6420:
	line	18
	
l8625:
	movlw	low(0800000h)
	xorwf	((c:___ftneg@f1)),c
	movlw	high(0800000h)
	xorwf	((c:___ftneg@f1+1)),c
	movlw	low highword(0800000h)
	xorwf	((c:___ftneg@f1+2)),c

	
l1692:
	line	19
	movff	(c:___ftneg@f1),(c:?___ftneg)
	movff	(c:___ftneg@f1+1),(c:?___ftneg+1)
	movff	(c:___ftneg@f1+2),(c:?___ftneg+2)
	line	20
	
l1693:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
	signat	___ftneg,4219
	global	___attoft

;; *************** function ___attoft *****************
;; Defined at:
;;		line 37 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\attoft.c"
;; Parameters:    Size  Location     Type
;;  c               3   34[COMRAM] m
;; Auto vars:     Size  Location     Type
;;  sign            1   37[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   34[COMRAM] float 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_modf
;; This function uses a non-reentrant model
;;
psect	text35,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\attoft.c"
	line	37
global __ptext35
__ptext35:
psect	text35
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\attoft.c"
	line	37
	global	__size_of___attoft
	__size_of___attoft	equ	__end_of___attoft-___attoft
	
___attoft:
;incstack = 0
	opt	stack 23
	dw	0FFFFh
	line	41
	
l8797:
	movlw	low(0)
	movwf	((c:___attoft@sign)),c
	line	42
	
l8799:
	movf	((c:___attoft@c+2)),c,w
	xorlw	80h
	addlw	-(0)^80h
	
	bnz	u6725
	movlw	0
	subwf	((c:___attoft@c+1)),c,w
	bnz	u6725
	movlw	0
	subwf	((c:___attoft@c)),c,w
u6725:

	btfsc	status,0
	goto	u6721
	goto	u6720
u6721:
	goto	l8805
u6720:
	line	43
	
l8801:
	comf	((c:___attoft@c+2)),c
	comf	((c:___attoft@c+1)),c
	negf	((c:___attoft@c)),c
	movlw	0
	addwfc	((c:___attoft@c+1)),c
	addwfc	((c:___attoft@c+2)),c
	line	44
	
l8803:
	movlw	low(01h)
	movwf	((c:___attoft@sign)),c
	goto	l8805
	line	45
	
l1471:
	line	46
	
l8805:
	movff	(c:___attoft@c),(c:___ftpack@arg)
	movff	(c:___attoft@c+1),(c:___ftpack@arg+1)
	movff	(c:___attoft@c+2),(c:___ftpack@arg+2)
	movlw	low(08Eh)
	movwf	((c:___ftpack@exp)),c
	movff	(c:___attoft@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___attoft)
	movff	1+?___ftpack,(c:?___attoft+1)
	movff	2+?___ftpack,(c:?___attoft+2)
	goto	l1472
	
l8807:
	line	47
	
l1472:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___attoft
	__end_of___attoft:
	signat	___attoft,4219
	global	___lwtoft

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 28 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2   27[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   27[COMRAM] float 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_get_current_readings
;; This function uses a non-reentrant model
;;
psect	text36,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
	line	28
global __ptext36
__ptext36:
psect	text36
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
	line	28
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
	line	30
	
l9515:
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
	goto	l1831
	
l9517:
	line	31
	
l1831:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
	signat	___lwtoft,4219
	global	_SetChanADC

;; *************** function _SetChanADC *****************
;; Defined at:
;;		line 21 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\ADC\adcsetch.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1   20[COMRAM] unsigned char 
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
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_get_current_readings
;; This function uses a non-reentrant model
;;
psect	text37,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\ADC\adcsetch.c"
	line	21
global __ptext37
__ptext37:
psect	text37
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\ADC\adcsetch.c"
	line	21
	global	__size_of_SetChanADC
	__size_of_SetChanADC	equ	__end_of_SetChanADC-_SetChanADC
	
_SetChanADC:
;incstack = 0
	opt	stack 26
	dw	0FFFFh
;SetChanADC@channel stored from wreg
	movwf	((c:SetChanADC@channel)),c
	line	24
	
l9451:
	movff	(c:4034),??_SetChanADC+0+0	;volatile
	movlw	0C7h
	andwf	(??_SetChanADC+0+0),c
	movf	((c:SetChanADC@channel)),c,w
	andlw	low(038h)
	iorwf	(??_SetChanADC+0+0),c,w
	movwf	((c:4034)),c	;volatile
	line	25
	
l1190:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_SetChanADC
	__end_of_SetChanADC:
	signat	_SetChanADC,4216
	global	_ReadADC

;; *************** function _ReadADC *****************
;; Defined at:
;;		line 24 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\ADC\adcread.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   19[COMRAM] int 
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
;;		_get_current_readings
;; This function uses a non-reentrant model
;;
psect	text38,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\ADC\adcread.c"
	line	24
global __ptext38
__ptext38:
psect	text38
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\ADC\adcread.c"
	line	24
	global	__size_of_ReadADC
	__size_of_ReadADC	equ	__end_of_ReadADC-_ReadADC
	
_ReadADC:
;incstack = 0
	opt	stack 26
	dw	0FFFFh
	line	26
	
l9459:
	movf	((c:4036)),c,w	;volatile
	movwf	((c:?_ReadADC+1)),c
	movf	((c:4035)),c,w	;volatile
	movwf	((c:?_ReadADC)),c
	goto	l1185
	
l9461:
	line	27
	
l1185:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_ReadADC
	__end_of_ReadADC:
	signat	_ReadADC,90
	global	_OpenADC

;; *************** function _OpenADC *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\ADC\adcopen.c"
;; Parameters:    Size  Location     Type
;;  config          1    wreg     unsigned char 
;;  config2         1   19[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  config          1   21[COMRAM] unsigned char 
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
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_get_current_readings
;; This function uses a non-reentrant model
;;
psect	text39,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\ADC\adcopen.c"
	line	5
global __ptext39
__ptext39:
psect	text39
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\ADC\adcopen.c"
	line	5
	global	__size_of_OpenADC
	__size_of_OpenADC	equ	__end_of_OpenADC-_OpenADC
	
_OpenADC:
;incstack = 0
	opt	stack 26
	dw	0FFFFh
;OpenADC@config stored from wreg
	movwf	((c:OpenADC@config)),c
	line	8
	
l9441:
	movlw	low(0)
	movwf	((c:4034)),c	;volatile
	line	10
	
l9443:
	movff	(c:OpenADC@config),(c:4033)	;volatile
	line	11
	
l9445:
	movff	(c:OpenADC@config2),??_OpenADC+0+0
	movlw	038h
	andwf	(??_OpenADC+0+0),c
	rlncf	((c:OpenADC@config)),c,w
	rlncf	wreg
	andlw	(0ffh shl 2) & 0ffh
	andlw	low(0C0h)
	iorwf	(??_OpenADC+0+0),c,w
	movwf	((c:4034)),c	;volatile
	line	12
	
l9447:
	
	btfss	((c:OpenADC@config2)),c,(7)&7
	goto	u7411
	goto	u7410
u7411:
	goto	l1177
u7410:
	line	14
	
l9449:
	bcf	((c:3998)),c,6	;volatile
	line	15
	bsf	((c:3997)),c,6	;volatile
	line	16
	bsf	((c:4082)),c,6	;volatile
	line	17
	
l1177:
	line	18
	bsf	((c:4034)),c,0	;volatile
	line	19
	
l1178:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_OpenADC
	__end_of_OpenADC:
	signat	_OpenADC,8312
	global	_ConvertADC

;; *************** function _ConvertADC *****************
;; Defined at:
;;		line 22 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\ADC\adcconv.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_get_current_readings
;; This function uses a non-reentrant model
;;
psect	text40,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\ADC\adcconv.c"
	line	22
global __ptext40
__ptext40:
psect	text40
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\ADC\adcconv.c"
	line	22
	global	__size_of_ConvertADC
	__size_of_ConvertADC	equ	__end_of_ConvertADC-_ConvertADC
	
_ConvertADC:
;incstack = 0
	opt	stack 26
	dw	0FFFFh
	line	24
	
l9453:
	bsf	((c:4034)),c,2	;volatile
	line	25
	
l1162:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_ConvertADC
	__end_of_ConvertADC:
	signat	_ConvertADC,88
	global	_CloseADC

;; *************** function _CloseADC *****************
;; Defined at:
;;		line 23 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\ADC\adcclose.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_get_current_readings
;; This function uses a non-reentrant model
;;
psect	text41,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\ADC\adcclose.c"
	line	23
global __ptext41
__ptext41:
psect	text41
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\ADC\adcclose.c"
	line	23
	global	__size_of_CloseADC
	__size_of_CloseADC	equ	__end_of_CloseADC-_CloseADC
	
_CloseADC:
;incstack = 0
	opt	stack 26
	dw	0FFFFh
	line	25
	
l9507:
	bcf	((c:4034)),c,0	;volatile
	line	26
	bcf	((c:3997)),c,6	;volatile
	line	27
	
l1157:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_CloseADC
	__end_of_CloseADC:
	signat	_CloseADC,88
	global	_BusyADC

;; *************** function _BusyADC *****************
;; Defined at:
;;		line 26 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\ADC\adcbusy.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
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
;;		_get_current_readings
;; This function uses a non-reentrant model
;;
psect	text42,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\ADC\adcbusy.c"
	line	26
global __ptext42
__ptext42:
psect	text42
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\ADC\adcbusy.c"
	line	26
	global	__size_of_BusyADC
	__size_of_BusyADC	equ	__end_of_BusyADC-_BusyADC
	
_BusyADC:
;incstack = 0
	opt	stack 26
	dw	0FFFFh
	line	28
	
l9455:
	btfsc	((c:4034)),c,2	;volatile
	goto	u7421
	goto	u7420
u7421:
	movlw	1
	goto	u7426
u7420:
	movlw	0
u7426:
	goto	l1150
	
l9457:
	line	29
	
l1150:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_BusyADC
	__end_of_BusyADC:
	signat	_BusyADC,89
	global	_DisplayReadings

;; *************** function _DisplayReadings *****************
;; Defined at:
;;		line 531 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\Test1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  dec             1   48[COMRAM] unsigned char 
;;  fract           1   47[COMRAM] unsigned char 
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
;;      Locals:         4       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_LCDByte
;;		_LCDGotoXY
;;		_LCDWriteInt
;;		_LCDWriteString
;; This function is called by:
;;		_per_minute_reading
;;		_per_second_reading
;;		_local_display
;; This function uses a non-reentrant model
;;
psect	text43,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\Test1.c"
	line	531
global __ptext43
__ptext43:
psect	text43
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\Test1.c"
	line	531
	global	__size_of_DisplayReadings
	__size_of_DisplayReadings	equ	__end_of_DisplayReadings-_DisplayReadings
	
_DisplayReadings:
;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	534
	
l10115:
;Test1.c: 533: unsigned char dec, fract;
;Test1.c: 534: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	535
	
l10117:
;Test1.c: 535: LCDWriteString("T1=");
		movlw	high(STR_71)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_71)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	536
	
l10119:
;Test1.c: 536: dec = Temp1 >> 8;
	movlb	0	; () banked
	movff	(_Temp1+1),??_DisplayReadings+0+0
	movff	??_DisplayReadings+0+0,??_DisplayReadings+1+0
	clrf	(??_DisplayReadings+1+0+1)&0ffh,c
	movf	(??_DisplayReadings+1+0),c,w
	movwf	((c:DisplayReadings@dec)),c
	line	537
	
l10121:; BSR set to: 0

;Test1.c: 537: fract = Temp1 && 0x00FF;
	movlw	low(0)
	movwf	((c:_DisplayReadings$1261)),c
	
l10123:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((_Temp1+1))&0ffh,w
	iorwf ((_Temp1))&0ffh,w

	btfsc	status,2
	goto	u7921
	goto	u7920
u7921:
	goto	l10127
u7920:
	
l10125:; BSR set to: 0

	movlw	low(01h)
	movwf	((c:_DisplayReadings$1261)),c
	goto	l10127
	
l1131:; BSR set to: 0

	
l10127:; BSR set to: 0

	movff	(c:_DisplayReadings$1261),(c:DisplayReadings@fract)
	line	538
	
l10129:; BSR set to: 0

;Test1.c: 538: LCDWriteInt(dec,2);
	movff	(c:DisplayReadings@dec),(c:LCDWriteInt@val)
	clrf	((c:LCDWriteInt@val+1)),c
	movlw	low(02h)
	movwf	((c:LCDWriteInt@field_length)),c
	call	_LCDWriteInt	;wreg free
	line	539
	
l10131:
;Test1.c: 539: LCDWriteString(".");
		movlw	high(STR_72)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_72)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	540
	
l10133:
;Test1.c: 540: LCDWriteInt(fract,1);
	movff	(c:DisplayReadings@fract),(c:LCDWriteInt@val)
	clrf	((c:LCDWriteInt@val+1)),c
	movlw	low(01h)
	movwf	((c:LCDWriteInt@field_length)),c
	call	_LCDWriteInt	;wreg free
	line	541
	
l10135:
;Test1.c: 541: LCDWriteString("%0C");
		movlw	high(STR_73)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_73)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	542
	
l10137:
;Test1.c: 542: LCDWriteString(" H1=");
		movlw	high(STR_74)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_74)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	543
	
l10139:
;Test1.c: 543: dec = Hum1 >> 8;
	movlb	0	; () banked
	movff	(_Hum1+1),??_DisplayReadings+0+0
	movff	??_DisplayReadings+0+0,??_DisplayReadings+1+0
	clrf	(??_DisplayReadings+1+0+1)&0ffh,c
	movf	(??_DisplayReadings+1+0),c,w
	movwf	((c:DisplayReadings@dec)),c
	line	544
	
l10141:; BSR set to: 0

;Test1.c: 544: LCDWriteInt(dec,2);
	movff	(c:DisplayReadings@dec),(c:LCDWriteInt@val)
	clrf	((c:LCDWriteInt@val+1)),c
	movlw	low(02h)
	movwf	((c:LCDWriteInt@field_length)),c
	call	_LCDWriteInt	;wreg free
	line	545
	
l10143:
;Test1.c: 545: LCDWriteString("%");
		movlw	high(STR_75)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_75)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	546
	
l10145:
;Test1.c: 546: LCDGotoXY(0,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(0)&0ffh
	
	call	_LCDGotoXY
	line	547
	
l10147:
;Test1.c: 547: LCDWriteString("T2=");
		movlw	high(STR_76)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_76)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	548
	
l10149:
;Test1.c: 548: dec = Temp2 >> 8;
	movlb	0	; () banked
	movff	(_Temp2+1),??_DisplayReadings+0+0
	movff	??_DisplayReadings+0+0,??_DisplayReadings+1+0
	clrf	(??_DisplayReadings+1+0+1)&0ffh,c
	movf	(??_DisplayReadings+1+0),c,w
	movwf	((c:DisplayReadings@dec)),c
	line	549
	
l10151:; BSR set to: 0

;Test1.c: 549: fract = Temp2 && 0x00FF;
	movlw	low(0)
	movwf	((c:_DisplayReadings$1267)),c
	
l10153:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((_Temp2+1))&0ffh,w
	iorwf ((_Temp2))&0ffh,w

	btfsc	status,2
	goto	u7931
	goto	u7930
u7931:
	goto	l10157
u7930:
	
l10155:; BSR set to: 0

	movlw	low(01h)
	movwf	((c:_DisplayReadings$1267)),c
	goto	l10157
	
l1133:; BSR set to: 0

	
l10157:; BSR set to: 0

	movff	(c:_DisplayReadings$1267),(c:DisplayReadings@fract)
	line	550
	
l10159:; BSR set to: 0

;Test1.c: 550: LCDWriteInt(dec,2);
	movff	(c:DisplayReadings@dec),(c:LCDWriteInt@val)
	clrf	((c:LCDWriteInt@val+1)),c
	movlw	low(02h)
	movwf	((c:LCDWriteInt@field_length)),c
	call	_LCDWriteInt	;wreg free
	line	551
	
l10161:
;Test1.c: 551: LCDWriteString(".");
		movlw	high(STR_77)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_77)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	552
	
l10163:
;Test1.c: 552: LCDWriteInt(fract,1);
	movff	(c:DisplayReadings@fract),(c:LCDWriteInt@val)
	clrf	((c:LCDWriteInt@val+1)),c
	movlw	low(01h)
	movwf	((c:LCDWriteInt@field_length)),c
	call	_LCDWriteInt	;wreg free
	line	553
	
l10165:
;Test1.c: 553: LCDWriteString("%0C");
		movlw	high(STR_78)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_78)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	554
	
l10167:
;Test1.c: 554: LCDWriteString(" H2=");
		movlw	high(STR_79)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_79)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	555
	
l10169:
;Test1.c: 555: dec = Hum2 >> 8;
	movlb	0	; () banked
	movff	(_Hum2+1),??_DisplayReadings+0+0
	movff	??_DisplayReadings+0+0,??_DisplayReadings+1+0
	clrf	(??_DisplayReadings+1+0+1)&0ffh,c
	movf	(??_DisplayReadings+1+0),c,w
	movwf	((c:DisplayReadings@dec)),c
	line	556
	
l10171:; BSR set to: 0

;Test1.c: 556: LCDWriteInt(dec,2);
	movff	(c:DisplayReadings@dec),(c:LCDWriteInt@val)
	clrf	((c:LCDWriteInt@val+1)),c
	movlw	low(02h)
	movwf	((c:LCDWriteInt@field_length)),c
	call	_LCDWriteInt	;wreg free
	line	557
	
l10173:
;Test1.c: 557: LCDWriteString("%");
		movlw	high(STR_80)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_80)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	558
	
l1134:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_DisplayReadings
	__end_of_DisplayReadings:
	signat	_DisplayReadings,88
	global	_LCDWriteInt

;; *************** function _LCDWriteInt *****************
;; Defined at:
;;		line 266 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\lcd_hd44780_pic18.c"
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
;;		_DisplayReadings
;;		_rtc_local_display
;; This function uses a non-reentrant model
;;
psect	text44,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\lcd_hd44780_pic18.c"
	line	266
global __ptext44
__ptext44:
psect	text44
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\lcd_hd44780_pic18.c"
	line	266
	global	__size_of_LCDWriteInt
	__size_of_LCDWriteInt	equ	__end_of_LCDWriteInt-_LCDWriteInt
	
_LCDWriteInt:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
	line	279
	
l9105:
;lcd_hd44780_pic18.c: 279: char str[5]={0,0,0,0,0};
	lfsr	2,(LCDWriteInt@F3701)
	lfsr	1,(LCDWriteInt@str)
	movlw	5
u7121:
	movff	postinc2,postinc1
	decfsz	wreg
	goto	u7121
	line	280
	
l9107:
;lcd_hd44780_pic18.c: 280: int i=4,j=0;
	movlw	high(04h)
	movwf	((c:LCDWriteInt@i+1)),c
	movlw	low(04h)
	movwf	((c:LCDWriteInt@i)),c
	
l9109:
	movlw	high(0)
	movwf	((c:LCDWriteInt@j+1)),c
	movlw	low(0)
	movwf	((c:LCDWriteInt@j)),c
	line	283
	
l9111:
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
	goto	u7131
	goto	u7130
u7131:
	goto	l9123
u7130:
	line	285
	
l9113:
;lcd_hd44780_pic18.c: 284: {
;lcd_hd44780_pic18.c: 285: (LCDByte('-',1));
	movlw	low(01h)
	movwf	((c:LCDByte@isdata)),c
	movlw	(02Dh)&0ffh
	
	call	_LCDByte
	line	286
	
l9115:
;lcd_hd44780_pic18.c: 286: val=val*-1;
	negf	((c:LCDWriteInt@val)),c
	comf	((c:LCDWriteInt@val+1)),c
	btfsc	status,0
	incf	((c:LCDWriteInt@val+1)),c
	goto	l9123
	line	287
	
l48:
	line	289
;lcd_hd44780_pic18.c: 287: }
;lcd_hd44780_pic18.c: 289: while(val)
	goto	l9123
	
l50:
	line	291
	
l9117:
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
	
l9119:
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
	
l9121:
;lcd_hd44780_pic18.c: 293: i--;
	decf	((c:LCDWriteInt@i)),c
	btfss	status,0
	decf	((c:LCDWriteInt@i+1)),c
	goto	l9123
	line	294
	
l49:
	line	289
	
l9123:
	movf	((c:LCDWriteInt@val+1)),c,w
	iorwf ((c:LCDWriteInt@val)),c,w

	btfss	status,2
	goto	u7141
	goto	u7140
u7141:
	goto	l9117
u7140:
	goto	l9125
	
l51:
	line	295
	
l9125:
;lcd_hd44780_pic18.c: 294: }
;lcd_hd44780_pic18.c: 295: if(field_length==-1)
	incf	((c:LCDWriteInt@field_length)),c,w

	btfss	status,2
	goto	u7151
	goto	u7150
u7151:
	goto	l9133
u7150:
	goto	l9131
	line	296
	
l9127:
;lcd_hd44780_pic18.c: 296: while(str[j]==0) j++;
	goto	l9131
	
l54:
	
l9129:
	infsnz	((c:LCDWriteInt@j)),c
	incf	((c:LCDWriteInt@j+1)),c
	goto	l9131
	
l53:
	
l9131:
	movlw	low((c:LCDWriteInt@str))
	addwf	((c:LCDWriteInt@j)),c,w
	movwf	c:fsr2l
	movlw	high((c:LCDWriteInt@str))
	addwfc	((c:LCDWriteInt@j+1)),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	btfsc	status,2
	goto	u7161
	goto	u7160
u7161:
	goto	l9129
u7160:
	goto	l9135
	
l55:
	goto	l9135
	line	297
	
l52:
	line	298
	
l9133:
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
	goto	l9135
	
l56:
	line	301
	
l9135:
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
	goto	u7171
	goto	u7170
u7171:
	goto	l9139
u7170:
	goto	l59
	
l9137:
	goto	l59
	line	302
	
l57:
	line	303
	
l9139:
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
	
l9141:
	infsnz	((c:LCDWriteInt@i)),c
	incf	((c:LCDWriteInt@i+1)),c
	
l9143:
	movf	((c:LCDWriteInt@i+1)),c,w
	xorlw	80h
	addlw	-((0)^80h)
	movlw	05h
	btfsc	status,2
	subwf	((c:LCDWriteInt@i)),c,w
	btfss	status,0
	goto	u7181
	goto	u7180
u7181:
	goto	l9139
u7180:
	goto	l59
	
l58:
	line	305
	
l59:
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
psect	text45,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	8
global __ptext45
__ptext45:
psect	text45
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	8
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:
;incstack = 0
	opt	stack 26
	dw	0FFFFh
	line	13
	
l9069:
	movlw	low(0)
	movwf	((c:___awmod@sign)),c
	line	14
	
l9071:
	movf	((c:___awmod@dividend+1)),c,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	0
	btfsc	status,2
	subwf	((c:___awmod@dividend)),c,w
	btfsc	status,0
	goto	u7061
	goto	u7060
u7061:
	goto	l9077
u7060:
	line	15
	
l9073:
	negf	((c:___awmod@dividend)),c
	comf	((c:___awmod@dividend+1)),c
	btfsc	status,0
	incf	((c:___awmod@dividend+1)),c
	line	16
	
l9075:
	movlw	low(01h)
	movwf	((c:___awmod@sign)),c
	goto	l9077
	line	17
	
l1488:
	line	18
	
l9077:
	movf	((c:___awmod@divisor+1)),c,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	0
	btfsc	status,2
	subwf	((c:___awmod@divisor)),c,w
	btfsc	status,0
	goto	u7071
	goto	u7070
u7071:
	goto	l9081
u7070:
	line	19
	
l9079:
	negf	((c:___awmod@divisor)),c
	comf	((c:___awmod@divisor+1)),c
	btfsc	status,0
	incf	((c:___awmod@divisor+1)),c
	goto	l9081
	
l1489:
	line	20
	
l9081:
	movf	((c:___awmod@divisor+1)),c,w
	iorwf ((c:___awmod@divisor)),c,w

	btfsc	status,2
	goto	u7081
	goto	u7080
u7081:
	goto	l9097
u7080:
	line	21
	
l9083:
	movlw	low(01h)
	movwf	((c:___awmod@counter)),c
	line	22
	goto	l9087
	
l1492:
	line	23
	
l9085:
	bcf	status,0
	rlcf	((c:___awmod@divisor)),c
	rlcf	((c:___awmod@divisor+1)),c
	line	24
	incf	((c:___awmod@counter)),c
	goto	l9087
	line	25
	
l1491:
	line	22
	
l9087:
	
	btfss	((c:___awmod@divisor+1)),c,(15)&7
	goto	u7091
	goto	u7090
u7091:
	goto	l9085
u7090:
	goto	l9089
	
l1493:
	goto	l9089
	line	26
	
l1494:
	line	27
	
l9089:
	movf	((c:___awmod@divisor)),c,w
	subwf	((c:___awmod@dividend)),c,w
	movf	((c:___awmod@divisor+1)),c,w
	subwfb	((c:___awmod@dividend+1)),c,w
	btfss	status,0
	goto	u7101
	goto	u7100
u7101:
	goto	l9093
u7100:
	line	28
	
l9091:
	movf	((c:___awmod@divisor)),c,w
	subwf	((c:___awmod@dividend)),c
	movf	((c:___awmod@divisor+1)),c,w
	subwfb	((c:___awmod@dividend+1)),c

	goto	l9093
	
l1495:
	line	29
	
l9093:
	bcf	status,0
	rrcf	((c:___awmod@divisor+1)),c
	rrcf	((c:___awmod@divisor)),c
	line	30
	
l9095:
	decfsz	((c:___awmod@counter)),c
	
	goto	l9089
	goto	l9097
	
l1496:
	goto	l9097
	line	31
	
l1490:
	line	32
	
l9097:
	movf	((c:___awmod@sign)),c,w
	btfsc	status,2
	goto	u7111
	goto	u7110
u7111:
	goto	l9101
u7110:
	line	33
	
l9099:
	negf	((c:___awmod@dividend)),c
	comf	((c:___awmod@dividend+1)),c
	btfsc	status,0
	incf	((c:___awmod@dividend+1)),c
	goto	l9101
	
l1497:
	line	34
	
l9101:
	movff	(c:___awmod@dividend),(c:?___awmod)
	movff	(c:___awmod@dividend+1),(c:?___awmod+1)
	goto	l1498
	
l9103:
	line	35
	
l1498:
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
psect	text46,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	8
global __ptext46
__ptext46:
psect	text46
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	8
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:
;incstack = 0
	opt	stack 26
	dw	0FFFFh
	line	14
	
l9025:
	movlw	low(0)
	movwf	((c:___awdiv@sign)),c
	line	15
	
l9027:
	movf	((c:___awdiv@divisor+1)),c,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	0
	btfsc	status,2
	subwf	((c:___awdiv@divisor)),c,w
	btfsc	status,0
	goto	u7001
	goto	u7000
u7001:
	goto	l9033
u7000:
	line	16
	
l9029:
	negf	((c:___awdiv@divisor)),c
	comf	((c:___awdiv@divisor+1)),c
	btfsc	status,0
	incf	((c:___awdiv@divisor+1)),c
	line	17
	
l9031:
	movlw	low(01h)
	movwf	((c:___awdiv@sign)),c
	goto	l9033
	line	18
	
l1475:
	line	19
	
l9033:
	movf	((c:___awdiv@dividend+1)),c,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	0
	btfsc	status,2
	subwf	((c:___awdiv@dividend)),c,w
	btfsc	status,0
	goto	u7011
	goto	u7010
u7011:
	goto	l9039
u7010:
	line	20
	
l9035:
	negf	((c:___awdiv@dividend)),c
	comf	((c:___awdiv@dividend+1)),c
	btfsc	status,0
	incf	((c:___awdiv@dividend+1)),c
	line	21
	
l9037:
	movlw	(01h)&0ffh
	xorwf	((c:___awdiv@sign)),c
	goto	l9039
	line	22
	
l1476:
	line	23
	
l9039:
	movlw	high(0)
	movwf	((c:___awdiv@quotient+1)),c
	movlw	low(0)
	movwf	((c:___awdiv@quotient)),c
	line	24
	
l9041:
	movf	((c:___awdiv@divisor+1)),c,w
	iorwf ((c:___awdiv@divisor)),c,w

	btfsc	status,2
	goto	u7021
	goto	u7020
u7021:
	goto	l9061
u7020:
	line	25
	
l9043:
	movlw	low(01h)
	movwf	((c:___awdiv@counter)),c
	line	26
	goto	l9047
	
l1479:
	line	27
	
l9045:
	bcf	status,0
	rlcf	((c:___awdiv@divisor)),c
	rlcf	((c:___awdiv@divisor+1)),c
	line	28
	incf	((c:___awdiv@counter)),c
	goto	l9047
	line	29
	
l1478:
	line	26
	
l9047:
	
	btfss	((c:___awdiv@divisor+1)),c,(15)&7
	goto	u7031
	goto	u7030
u7031:
	goto	l9045
u7030:
	goto	l9049
	
l1480:
	goto	l9049
	line	30
	
l1481:
	line	31
	
l9049:
	bcf	status,0
	rlcf	((c:___awdiv@quotient)),c
	rlcf	((c:___awdiv@quotient+1)),c
	line	32
	
l9051:
	movf	((c:___awdiv@divisor)),c,w
	subwf	((c:___awdiv@dividend)),c,w
	movf	((c:___awdiv@divisor+1)),c,w
	subwfb	((c:___awdiv@dividend+1)),c,w
	btfss	status,0
	goto	u7041
	goto	u7040
u7041:
	goto	l9057
u7040:
	line	33
	
l9053:
	movf	((c:___awdiv@divisor)),c,w
	subwf	((c:___awdiv@dividend)),c
	movf	((c:___awdiv@divisor+1)),c,w
	subwfb	((c:___awdiv@dividend+1)),c

	line	34
	
l9055:
	bsf	(0+(0/8)+(c:___awdiv@quotient)),c,(0)&7
	goto	l9057
	line	35
	
l1482:
	line	36
	
l9057:
	bcf	status,0
	rrcf	((c:___awdiv@divisor+1)),c
	rrcf	((c:___awdiv@divisor)),c
	line	37
	
l9059:
	decfsz	((c:___awdiv@counter)),c
	
	goto	l9049
	goto	l9061
	
l1483:
	goto	l9061
	line	38
	
l1477:
	line	39
	
l9061:
	movf	((c:___awdiv@sign)),c,w
	btfsc	status,2
	goto	u7051
	goto	u7050
u7051:
	goto	l9065
u7050:
	line	40
	
l9063:
	negf	((c:___awdiv@quotient)),c
	comf	((c:___awdiv@quotient+1)),c
	btfsc	status,0
	incf	((c:___awdiv@quotient+1)),c
	goto	l9065
	
l1484:
	line	41
	
l9065:
	movff	(c:___awdiv@quotient),(c:?___awdiv)
	movff	(c:___awdiv@quotient+1),(c:?___awdiv+1)
	goto	l1485
	
l9067:
	line	42
	
l1485:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_getkey

;; *************** function _getkey *****************
;; Defined at:
;;		line 185 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\rtu.c"
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
psect	text47,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\rtu.c"
	line	185
global __ptext47
__ptext47:
psect	text47
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\rtu.c"
	line	185
	global	__size_of_getkey
	__size_of_getkey	equ	__end_of_getkey-_getkey
	
_getkey:
;incstack = 0
	opt	stack 28
	dw	0FFFFh
	line	188
	
l10397:
;rtu.c: 188: while(RD5 == 0 && RD4 == 0 && RC5 == 0 && RD0 == 0 && RD1 == 0 && msecs > 0)
	goto	l10403
	
l766:
	line	190
	
l10399:
;rtu.c: 189: {
;rtu.c: 190: _delay((unsigned long)((1)*(100000000/4000.0)));
	movlw	25
movwf	(??_getkey+0+0)&0ffh,c,f
	movlw	93
u8857:
	decfsz	wreg,f
	goto	u8857
	decfsz	(??_getkey+0+0)&0ffh,c,f
	goto	u8857

	line	191
	
l10401:
;rtu.c: 191: msecs--;
	decf	((c:getkey@msecs)),c
	btfss	status,0
	decf	((c:getkey@msecs+1)),c
	goto	l10403
	line	192
	
l765:
	line	188
	
l10403:
	btfsc	c:(31773/8),(31773)&7	;volatile
	goto	u8021
	goto	u8020
u8021:
	goto	l10415
u8020:
	
l10405:
	btfsc	c:(31772/8),(31772)&7	;volatile
	goto	u8031
	goto	u8030
u8031:
	goto	l10415
u8030:
	
l10407:
	btfsc	c:(31765/8),(31765)&7	;volatile
	goto	u8041
	goto	u8040
u8041:
	goto	l10415
u8040:
	
l10409:
	btfsc	c:(31768/8),(31768)&7	;volatile
	goto	u8051
	goto	u8050
u8051:
	goto	l10415
u8050:
	
l10411:
	btfsc	c:(31769/8),(31769)&7	;volatile
	goto	u8061
	goto	u8060
u8061:
	goto	l10415
u8060:
	
l10413:
	movf	((c:getkey@msecs+1)),c,w
	iorwf ((c:getkey@msecs)),c,w

	btfss	status,2
	goto	u8071
	goto	u8070
u8071:
	goto	l10399
u8070:
	goto	l10415
	
l768:
	goto	l10415
	
l769:
	line	194
	
l10415:
;rtu.c: 192: }
;rtu.c: 194: if(msecs <= 0)
	movf	((c:getkey@msecs+1)),c,w
	iorwf ((c:getkey@msecs)),c,w

	btfss	status,2
	goto	u8081
	goto	u8080
u8081:
	goto	l770
u8080:
	line	195
	
l10417:
;rtu.c: 195: return 0;
	movlw	(0)&0ffh
	goto	l771
	
l10419:
	goto	l771
	
l770:
	line	196
;rtu.c: 196: if(RD5 == 1)
	btfss	c:(31773/8),(31773)&7	;volatile
	goto	u8091
	goto	u8090
u8091:
	goto	l772
u8090:
	line	197
	
l10421:
;rtu.c: 197: return 1;
	movlw	(01h)&0ffh
	goto	l771
	
l10423:
	goto	l771
	
l772:
	line	198
;rtu.c: 198: if(RD4 == 1)
	btfss	c:(31772/8),(31772)&7	;volatile
	goto	u8101
	goto	u8100
u8101:
	goto	l773
u8100:
	line	199
	
l10425:
;rtu.c: 199: return 2;
	movlw	(02h)&0ffh
	goto	l771
	
l10427:
	goto	l771
	
l773:
	line	200
;rtu.c: 200: if(RC5 == 1)
	btfss	c:(31765/8),(31765)&7	;volatile
	goto	u8111
	goto	u8110
u8111:
	goto	l774
u8110:
	line	201
	
l10429:
;rtu.c: 201: return 3;
	movlw	(03h)&0ffh
	goto	l771
	
l10431:
	goto	l771
	
l774:
	line	202
;rtu.c: 202: if(RD0 == 1)
	btfss	c:(31768/8),(31768)&7	;volatile
	goto	u8121
	goto	u8120
u8121:
	goto	l775
u8120:
	line	203
	
l10433:
;rtu.c: 203: return 4;
	movlw	(04h)&0ffh
	goto	l771
	
l10435:
	goto	l771
	
l775:
	line	204
;rtu.c: 204: if(RD1 == 1)
	btfss	c:(31769/8),(31769)&7	;volatile
	goto	u8131
	goto	u8130
u8131:
	goto	l771
u8130:
	line	205
	
l10437:
;rtu.c: 205: return 5;
	movlw	(05h)&0ffh
	goto	l771
	
l10439:
	goto	l771
	
l776:
	line	206
	
l771:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_getkey
	__end_of_getkey:
	signat	_getkey,4217
	global	_data_to_center

;; *************** function _data_to_center *****************
;; Defined at:
;;		line 406 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\Test1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  attempts        1   48[COMRAM] unsigned char 
;;  result          1   47[COMRAM] unsigned char 
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
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_Clear_Packet
;;		_LCDByte
;;		_LCDGotoXY
;;		_LCDWriteString
;;		_MyDelay
;;		_Write_b_eep
;;		_beep
;;		_clear_rom
;;		_read_packet_from_page
;;		_tx_packet
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text48,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\Test1.c"
	line	406
global __ptext48
__ptext48:
psect	text48
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\Test1.c"
	line	406
	global	__size_of_data_to_center
	__size_of_data_to_center	equ	__end_of_data_to_center-_data_to_center
	
_data_to_center:
;incstack = 0
	opt	stack 22
	dw	0FFFFh
	line	408
	
l10449:
;Test1.c: 408: unsigned char result = 0, attempts = 0;
	movlw	low(0)
	movwf	((c:data_to_center@result)),c
	movlw	low(0)
	movwf	((c:data_to_center@attempts)),c
	line	411
	
l10451:
;Test1.c: 411: if(Current_Write_Page == 0)
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((_Current_Write_Page+1))&0ffh,w	;volatile
	iorwf ((_Current_Write_Page))&0ffh,w	;volatile

	btfss	status,2
	goto	u8151
	goto	u8150
u8151:
	goto	l10459
u8150:
	line	413
	
l10453:; BSR set to: 0

;Test1.c: 412: {
;Test1.c: 413: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	414
	
l10455:
;Test1.c: 414: LCDWriteString("NOTHING TO SEND!");
		movlw	high(STR_61)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_61)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	415
	
l10457:
;Test1.c: 415: MyDelay(1000);
	movlw	high(03E8h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(03E8h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	goto	l10459
	line	416
	
l1103:
	line	417
	
l10459:
;Test1.c: 416: }
;Test1.c: 417: RC2 = 1;
	bsf	c:(31762/8),(31762)&7	;volatile
	line	418
	
l10461:
;Test1.c: 418: beep(100);
	movlw	high(064h)
	movwf	((c:beep@del+1)),c
	movlw	low(064h)
	movwf	((c:beep@del)),c
	call	_beep	;wreg free
	line	419
	
l10463:
;Test1.c: 419: MyDelay(500);
	movlw	high(01F4h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(01F4h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	420
	
l10465:
;Test1.c: 420: for(Current_Read_Page = 0; Current_Read_Page < Current_Write_Page; Current_Read_Page++)
	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Current_Read_Page+1))&0ffh	;volatile
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_Current_Read_Page))&0ffh	;volatile
	goto	l10495
	line	421
	
l1105:; BSR set to: 0

	line	422
	
l10467:; BSR set to: 0

;Test1.c: 421: {
;Test1.c: 422: Clear_Packet();
	call	_Clear_Packet	;wreg free
	line	424
	
l10469:
;Test1.c: 424: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	425
	
l10471:
;Test1.c: 425: LCDWriteString("READING EEPROM...");
		movlw	high(STR_62)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_62)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	426
	
l10473:
;Test1.c: 426: read_packet_from_page(Current_Read_Page);
	movff	(_Current_Read_Page),(c:read_packet_from_page@page_no)	;volatile
	movff	(_Current_Read_Page+1),(c:read_packet_from_page@page_no+1)	;volatile
	call	_read_packet_from_page	;wreg free
	line	427
	
l10475:
;Test1.c: 427: MyDelay(10);
	movlw	high(0Ah)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(0Ah)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	428
	
l10477:
;Test1.c: 428: LCDGotoXY(0,1);
	movlw	low(01h)
	movwf	((c:LCDGotoXY@y)),c
	movlw	(0)&0ffh
	
	call	_LCDGotoXY
	line	429
	
l10479:
;Test1.c: 429: LCDWriteString("SENDING PACKET...");
		movlw	high(STR_63)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_63)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	431
	
l10481:
;Test1.c: 431: tx_packet();
	call	_tx_packet	;wreg free
	line	432
	
l10483:
;Test1.c: 432: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	433
	
l10485:
;Test1.c: 433: LCDWriteString("PACKET SENT!");
		movlw	high(STR_64)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_64)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	434
	
l10487:
;Test1.c: 434: MyDelay(100);
	movlw	high(064h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(064h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	435
	
l10489:
;Test1.c: 435: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	436
	
l10491:
;Test1.c: 436: Current_Read_Page++;
	movlb	0	; () banked
	movlb	0	; () banked
	infsnz	((_Current_Read_Page))&0ffh	;volatile
	incf	((_Current_Read_Page+1))&0ffh	;volatile
	line	420
	
l10493:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	infsnz	((_Current_Read_Page))&0ffh	;volatile
	incf	((_Current_Read_Page+1))&0ffh	;volatile
	goto	l10495
	
l1104:; BSR set to: 0

	
l10495:; BSR set to: 0

	movlb	0	; () banked
	movlb	0	; () banked
	movf	((_Current_Write_Page))&0ffh,w	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	((_Current_Read_Page))&0ffh,w	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	movf	((_Current_Write_Page+1))&0ffh,w	;volatile
	movlb	0	; () banked
	movlb	0	; () banked
	subwfb	((_Current_Read_Page+1))&0ffh,w	;volatile
	btfss	status,0
	goto	u8161
	goto	u8160
u8161:
	goto	l10467
u8160:
	
l1106:; BSR set to: 0

	line	438
;Test1.c: 437: }
;Test1.c: 438: RC2 = 0;
	bcf	c:(31762/8),(31762)&7	;volatile
	line	439
	
l10497:; BSR set to: 0

;Test1.c: 439: beep(100);
	movlw	high(064h)
	movwf	((c:beep@del+1)),c
	movlw	low(064h)
	movwf	((c:beep@del)),c
	call	_beep	;wreg free
	line	440
;Test1.c: 440: MyDelay(500);
	movlw	high(01F4h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(01F4h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	442
;Test1.c: 442: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	443
	
l10499:
;Test1.c: 443: LCDWriteString("ALL DATA SENT");
		movlw	high(STR_65)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_65)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	444
	
l10501:
;Test1.c: 444: MyDelay(1000);
	movlw	high(03E8h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(03E8h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	446
	
l10503:
;Test1.c: 446: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	447
	
l10505:
;Test1.c: 447: LCDWriteString("FORMATING MEMORY");
		movlw	high(STR_66)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_66)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	448
;Test1.c: 448: MyDelay(1000);
	movlw	high(03E8h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(03E8h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	450
	
l10507:
;Test1.c: 450: Current_Write_Page = 0;
	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Current_Write_Page+1))&0ffh	;volatile
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_Current_Write_Page))&0ffh	;volatile
	line	452
	
l10509:; BSR set to: 0

;Test1.c: 452: Write_b_eep(0x00, 0x00);
	movlw	high(0)
	movwf	((c:Write_b_eep@badd+1)),c
	movlw	low(0)
	movwf	((c:Write_b_eep@badd)),c
	movlw	low(0)
	movwf	((c:Write_b_eep@bdat)),c
	call	_Write_b_eep	;wreg free
	line	453
	
l10511:
;Test1.c: 453: _delay(50);
	movlw	10
u8867:
	nop
decfsz	wreg,f
	goto	u8867

	line	454
	
l10513:
;Test1.c: 454: Write_b_eep(0x01, 0x00);
	movlw	high(01h)
	movwf	((c:Write_b_eep@badd+1)),c
	movlw	low(01h)
	movwf	((c:Write_b_eep@badd)),c
	movlw	low(0)
	movwf	((c:Write_b_eep@bdat)),c
	call	_Write_b_eep	;wreg free
	line	455
	
l10515:
;Test1.c: 455: _delay(50);
	movlw	10
u8877:
	nop
decfsz	wreg,f
	goto	u8877

	line	458
	
l10517:
;Test1.c: 458: clear_rom();
	call	_clear_rom	;wreg free
	line	460
	
l10519:
;Test1.c: 460: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	461
	
l10521:
;Test1.c: 461: LCDWriteString("FORMAT COMPLETE!");
		movlw	high(STR_67)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_67)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	462
	
l10523:
;Test1.c: 462: MyDelay(1000);
	movlw	high(03E8h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(03E8h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	goto	l1107
	line	463
	
l10525:
	line	464
;Test1.c: 463: return;
	
l1107:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_data_to_center
	__end_of_data_to_center:
	signat	_data_to_center,88
	global	_tx_packet

;; *************** function _tx_packet *****************
;; Defined at:
;;		line 487 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\Test1.c"
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
;;		_beep
;; This function is called by:
;;		_per_minute_reading
;;		_per_second_reading
;;		_rtc_setting
;;		_data_to_center
;; This function uses a non-reentrant model
;;
psect	text49,class=CODE,space=0,reloc=2
	line	487
global __ptext49
__ptext49:
psect	text49
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\Test1.c"
	line	487
	global	__size_of_tx_packet
	__size_of_tx_packet	equ	__end_of_tx_packet-_tx_packet
	
_tx_packet:
;incstack = 0
	opt	stack 22
	dw	0FFFFh
	line	489
	
l10175:
;Test1.c: 489: unsigned char attempts = 0;
	movlw	low(0)
	movwf	((c:tx_packet@attempts)),c
	line	490
;Test1.c: 490: unsigned char res = 48;
	movlw	low(030h)
	movwf	((c:tx_packet@res)),c
	line	491
;Test1.c: 491: while(res == 48 && attempts < 10)
	goto	l10203
	
l1118:
	line	493
	
l10177:
;Test1.c: 492: {
;Test1.c: 493: res = Send_Packet();
	call	_Send_Packet	;wreg free
	movwf	((c:tx_packet@res)),c
	line	494
	
l10179:
;Test1.c: 494: if(res == 0x00)
	tstfsz	((c:tx_packet@res)),c
	goto	u7941
	goto	u7940
u7941:
	goto	l10201
u7940:
	line	496
	
l10181:
;Test1.c: 495: {
;Test1.c: 496: RC2 = 0;
	bcf	c:(31762/8),(31762)&7	;volatile
	line	497
	
l10183:
;Test1.c: 497: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	498
	
l10185:
;Test1.c: 498: LCDWriteString("RF LINK OFF");
		movlw	high(STR_68)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_68)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	499
	
l10187:
;Test1.c: 499: beep(100);
	movlw	high(064h)
	movwf	((c:beep@del+1)),c
	movlw	low(064h)
	movwf	((c:beep@del)),c
	call	_beep	;wreg free
	line	500
	
l10189:
;Test1.c: 500: MyDelay(5000);
	movlw	high(01388h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(01388h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	501
	
l10191:
;Test1.c: 501: RC2 = 1;
	bsf	c:(31762/8),(31762)&7	;volatile
	line	502
	
l10193:
;Test1.c: 502: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	503
;Test1.c: 503: LCDWriteString("RF LINK ON");
		movlw	high(STR_69)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_69)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	504
	
l10195:
;Test1.c: 504: beep(100);
	movlw	high(064h)
	movwf	((c:beep@del+1)),c
	movlw	low(064h)
	movwf	((c:beep@del)),c
	call	_beep	;wreg free
	line	505
	
l10197:
;Test1.c: 505: MyDelay(500);
	movlw	high(01F4h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(01F4h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	506
	
l10199:
;Test1.c: 506: res = 48;
	movlw	low(030h)
	movwf	((c:tx_packet@res)),c
	goto	l10201
	line	507
	
l1119:
	line	508
	
l10201:
;Test1.c: 507: }
;Test1.c: 508: attempts++;
	incf	((c:tx_packet@attempts)),c
	goto	l10203
	line	509
	
l1117:
	line	491
	
l10203:
	movf	((c:tx_packet@res)),c,w
	xorlw	48

	btfss	status,2
	goto	u7951
	goto	u7950
u7951:
	goto	l10207
u7950:
	
l10205:
	movlw	(0Ah-1)
	cpfsgt	((c:tx_packet@attempts)),c
	goto	u7961
	goto	u7960
u7961:
	goto	l10177
u7960:
	goto	l10207
	
l1121:
	goto	l10207
	
l1122:
	line	510
	
l10207:
;Test1.c: 509: }
;Test1.c: 510: if(res != 49)
	movf	((c:tx_packet@res)),c,w
	xorlw	49

	btfsc	status,2
	goto	u7971
	goto	u7970
u7971:
	goto	l10229
u7970:
	line	514
	
l10209:
;Test1.c: 511: {
;Test1.c: 514: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	515
	
l10211:
;Test1.c: 515: RD7 = 1;
	bsf	c:(31775/8),(31775)&7	;volatile
	goto	l10213
	line	516
;Test1.c: 516: while(1)
	
l1124:
	line	518
	
l10213:
;Test1.c: 517: {
;Test1.c: 518: LCDWriteString("WIRELESS FAILD...!");
		movlw	high(STR_70)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_70)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	519
	
l10215:
;Test1.c: 519: RE0 = 1;
	bsf	c:(31776/8),(31776)&7	;volatile
	line	520
	
l10217:
;Test1.c: 520: RD7 = 1;
	bsf	c:(31775/8),(31775)&7	;volatile
	line	521
	
l10219:
;Test1.c: 521: MyDelay(100);
	movlw	high(064h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(064h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	522
	
l10221:
;Test1.c: 522: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	523
	
l10223:
;Test1.c: 523: RE0 = 0;
	bcf	c:(31776/8),(31776)&7	;volatile
	line	524
	
l10225:
;Test1.c: 524: RD7 = 0;
	bcf	c:(31775/8),(31775)&7	;volatile
	line	525
	
l10227:
;Test1.c: 525: MyDelay(100);
	movlw	high(064h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(064h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	goto	l10213
	line	526
	
l1125:
	line	516
	goto	l10213
	
l1126:
	goto	l10229
	line	527
	
l1123:
	line	528
	
l10229:
;Test1.c: 526: }
;Test1.c: 527: }
;Test1.c: 528: MyDelay(50);
	movlw	high(032h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(032h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	529
	
l1127:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_tx_packet
	__end_of_tx_packet:
	signat	_tx_packet,88
	global	_beep

;; *************** function _beep *****************
;; Defined at:
;;		line 208 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\rtu.c"
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
;;		_per_minute_reading
;;		_per_second_reading
;;		_rtc_setting
;;		_data_to_center
;;		_tx_packet
;; This function uses a non-reentrant model
;;
psect	text50,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\rtu.c"
	line	208
global __ptext50
__ptext50:
psect	text50
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\rtu.c"
	line	208
	global	__size_of_beep
	__size_of_beep	equ	__end_of_beep-_beep
	
_beep:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
	line	210
	
l9509:
;rtu.c: 210: RD7 = 1;
	bsf	c:(31775/8),(31775)&7	;volatile
	line	211
	
l9511:
;rtu.c: 211: MyDelay(del);
	movff	(c:beep@del),(c:MyDelay@ms)
	movff	(c:beep@del+1),(c:MyDelay@ms+1)
	call	_MyDelay	;wreg free
	line	212
	
l9513:
;rtu.c: 212: RD7 = 0;
	bcf	c:(31775/8),(31775)&7	;volatile
	line	213
	
l779:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_beep
	__end_of_beep:
	signat	_beep,4216
	global	_Send_Packet

;; *************** function _Send_Packet *****************
;; Defined at:
;;		line 131 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\communication.c"
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
psect	text51,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\communication.c"
	line	131
global __ptext51
__ptext51:
psect	text51
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\communication.c"
	line	131
	global	__size_of_Send_Packet
	__size_of_Send_Packet	equ	__end_of_Send_Packet-_Send_Packet
	
_Send_Packet:
;incstack = 0
	opt	stack 22
	dw	0FFFFh
	line	134
	
l9363:
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
	
l9365:
;communication.c: 138: result = Eco_Test();
	call	_Eco_Test	;wreg free
	movwf	((c:Send_Packet@result)),c
	line	140
	
l9367:
;communication.c: 140: if(result == 0x01)
	decf	((c:Send_Packet@result)),c,w

	btfss	status,2
	goto	u7361
	goto	u7360
u7361:
	goto	l9437
u7360:
	line	145
	
l9369:
;communication.c: 141: {
;communication.c: 145: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	146
	
l9371:
;communication.c: 146: LCDWriteString("SENDING PACKET ");
		movlw	high(STR_8)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_8)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	147
	
l9373:
;communication.c: 147: _delay((unsigned long)((1)*(100000000/4000.0)));
	movlw	25
movwf	(??_Send_Packet+0+0)&0ffh,c,f
	movlw	93
u8887:
	decfsz	wreg,f
	goto	u8887
	decfsz	(??_Send_Packet+0+0)&0ffh,c,f
	goto	u8887

	line	148
	
l9375:
;communication.c: 148: count = 0;
	movlw	low(0)
	movwf	((c:Send_Packet@count)),c
	line	149
	
l9377:
;communication.c: 149: data = PACKET[0];
	movff	(_PACKET),(c:Send_Packet@data)	;volatile
	line	150
;communication.c: 150: while(data != 0xEA)
	goto	l9391
	
l524:
	line	152
;communication.c: 151: {
;communication.c: 152: RE2 = 1;
	bsf	c:(31778/8),(31778)&7	;volatile
	line	153
	
l9379:
;communication.c: 153: USARTWriteChar(data);
	movf	((c:Send_Packet@data)),c,w
	
	call	_USARTWriteChar
	line	154
	
l9381:
;communication.c: 154: _delay((unsigned long)((5)*(100000000/4000.0)));
	movlw	122
movwf	(??_Send_Packet+0+0)&0ffh,c,f
	movlw	212
u8897:
	decfsz	wreg,f
	goto	u8897
	decfsz	(??_Send_Packet+0+0)&0ffh,c,f
	goto	u8897
	nop2

	line	155
	
l9383:
;communication.c: 155: _delay((unsigned long)((5)*(100000000/4000.0)));
	movlw	122
movwf	(??_Send_Packet+0+0)&0ffh,c,f
	movlw	212
u8907:
	decfsz	wreg,f
	goto	u8907
	decfsz	(??_Send_Packet+0+0)&0ffh,c,f
	goto	u8907
	nop2

	line	156
	
l9385:
;communication.c: 156: RE2 = 0;
	bcf	c:(31778/8),(31778)&7	;volatile
	line	157
	
l9387:
;communication.c: 157: count++;
	incf	((c:Send_Packet@count)),c
	line	158
	
l9389:
;communication.c: 158: data = PACKET[count];
	movf	((c:Send_Packet@count)),c,w
	mullw	01h
	movlb	1	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:Send_Packet@data)),c
	goto	l9391
	line	159
	
l523:; BSR set to: 1

	line	150
	
l9391:
	movf	((c:Send_Packet@data)),c,w
	xorlw	234

	btfss	status,2
	goto	u7371
	goto	u7370
u7371:
	goto	l524
u7370:
	
l525:
	line	161
;communication.c: 159: }
;communication.c: 161: RE2 = 1;
	bsf	c:(31778/8),(31778)&7	;volatile
	line	162
	
l9393:
;communication.c: 162: USARTWriteChar(data);
	movf	((c:Send_Packet@data)),c,w
	
	call	_USARTWriteChar
	line	163
	
l9395:
;communication.c: 163: _delay((unsigned long)((5)*(100000000/4000.0)));
	movlw	122
movwf	(??_Send_Packet+0+0)&0ffh,c,f
	movlw	212
u8917:
	decfsz	wreg,f
	goto	u8917
	decfsz	(??_Send_Packet+0+0)&0ffh,c,f
	goto	u8917
	nop2

	line	164
	
l9397:
;communication.c: 164: _delay((unsigned long)((5)*(100000000/4000.0)));
	movlw	122
movwf	(??_Send_Packet+0+0)&0ffh,c,f
	movlw	212
u8927:
	decfsz	wreg,f
	goto	u8927
	decfsz	(??_Send_Packet+0+0)&0ffh,c,f
	goto	u8927
	nop2

	line	165
	
l9399:
;communication.c: 165: RE2 = 0;
	bcf	c:(31778/8),(31778)&7	;volatile
	line	166
	
l9401:
;communication.c: 166: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	167
	
l9403:
;communication.c: 167: LCDWriteString("PACKET SENT");
		movlw	high(STR_9)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_9)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	169
	
l9405:
;communication.c: 169: n = 0;
	movlw	low(0)
	movwf	((c:Send_Packet@n)),c
	line	170
	
l9407:
;communication.c: 170: ts = 0;
	movlw	high(0)
	movwf	((c:Send_Packet@ts+1)),c
	movlw	low(0)
	movwf	((c:Send_Packet@ts)),c
	line	172
	
l9409:
;communication.c: 172: USARTFlushBuffer();
	call	_USARTFlushBuffer	;wreg free
	line	174
;communication.c: 174: while(n == 0 && ts < 2000)
	goto	l9417
	
l527:
	line	177
	
l9411:
;communication.c: 175: {
;communication.c: 177: n = USARTDataAvailable();
	call	_USARTDataAvailable	;wreg free
	movwf	((c:Send_Packet@n)),c
	line	178
	
l9413:
;communication.c: 178: ts++;
	infsnz	((c:Send_Packet@ts)),c
	incf	((c:Send_Packet@ts+1)),c
	line	179
	
l9415:
;communication.c: 179: _delay((unsigned long)((1)*(100000000/4000.0)));
	movlw	25
movwf	(??_Send_Packet+0+0)&0ffh,c,f
	movlw	93
u8937:
	decfsz	wreg,f
	goto	u8937
	decfsz	(??_Send_Packet+0+0)&0ffh,c,f
	goto	u8937

	goto	l9417
	line	180
	
l526:
	line	174
	
l9417:
	tstfsz	((c:Send_Packet@n)),c
	goto	u7381
	goto	u7380
u7381:
	goto	l9421
u7380:
	
l9419:
	movlw	0D0h
	subwf	((c:Send_Packet@ts)),c,w
	movlw	07h
	subwfb	((c:Send_Packet@ts+1)),c,w
	btfss	status,0
	goto	u7391
	goto	u7390
u7391:
	goto	l9411
u7390:
	goto	l9421
	
l529:
	goto	l9421
	
l530:
	line	186
	
l9421:
;communication.c: 180: }
;communication.c: 186: if(n!=0)
	movf	((c:Send_Packet@n)),c,w
	btfsc	status,2
	goto	u7401
	goto	u7400
u7401:
	goto	l9437
u7400:
	line	190
	
l9423:
;communication.c: 187: {
;communication.c: 190: RC0 = 1;
	bsf	c:(31760/8),(31760)&7	;volatile
	line	191
	
l9425:
;communication.c: 191: result=USARTReadData();
	call	_USARTReadData	;wreg free
	movwf	((c:Send_Packet@result)),c
	line	192
	
l9427:
;communication.c: 192: RC0 = 0;
	bcf	c:(31760/8),(31760)&7	;volatile
	line	193
	
l9429:
;communication.c: 193: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	194
	
l9431:
;communication.c: 194: LCDWriteString("PACKET DELIVERED");
		movlw	high(STR_10)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_10)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	195
	
l9433:
;communication.c: 195: return result;
	movf	((c:Send_Packet@result)),c,w
	goto	l532
	
l9435:
	goto	l532
	line	196
	
l531:
	goto	l9437
	line	197
	
l522:
	line	198
	
l9437:
;communication.c: 196: }
;communication.c: 197: }
;communication.c: 198: return 0;
	movlw	(0)&0ffh
	goto	l532
	
l9439:
	line	199
	
l532:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_Send_Packet
	__end_of_Send_Packet:
	signat	_Send_Packet,89
	global	_Eco_Test

;; *************** function _Eco_Test *****************
;; Defined at:
;;		line 30 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\communication.c"
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
psect	text52,class=CODE,space=0,reloc=2
	line	30
global __ptext52
__ptext52:
psect	text52
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\communication.c"
	line	30
	global	__size_of_Eco_Test
	__size_of_Eco_Test	equ	__end_of_Eco_Test-_Eco_Test
	
_Eco_Test:
;incstack = 0
	opt	stack 22
	dw	0FFFFh
	line	32
	
l8919:
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
	
l8921:
;communication.c: 36: re = Check_Busy_Line();
	call	_Check_Busy_Line	;wreg free
	movwf	((c:Eco_Test@re)),c
	line	37
	
l8923:
;communication.c: 37: if(re = 0x01)
	movlw	low(01h)
	movwf	((c:Eco_Test@re)),c
	line	39
	
l8925:
;communication.c: 38: {
;communication.c: 39: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	40
	
l8927:
;communication.c: 40: LCDWriteString("LINE FREE");
		movlw	high(STR_1)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_1)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	42
	
l8929:
;communication.c: 42: USARTFlushBuffer();
	call	_USARTFlushBuffer	;wreg free
	line	45
	
l8931:
;communication.c: 45: RE2 = 1;
	bsf	c:(31778/8),(31778)&7	;volatile
	line	46
	
l8933:
;communication.c: 46: _delay((unsigned long)((5)*(100000000/4000.0)));
	movlw	122
movwf	(??_Eco_Test+0+0)&0ffh,c,f
	movlw	212
u8947:
	decfsz	wreg,f
	goto	u8947
	decfsz	(??_Eco_Test+0+0)&0ffh,c,f
	goto	u8947
	nop2

	line	47
	
l8935:
;communication.c: 47: _delay((unsigned long)((5)*(100000000/4000.0)));
	movlw	122
movwf	(??_Eco_Test+0+0)&0ffh,c,f
	movlw	212
u8957:
	decfsz	wreg,f
	goto	u8957
	decfsz	(??_Eco_Test+0+0)&0ffh,c,f
	goto	u8957
	nop2

	line	48
	
l8937:
;communication.c: 48: USARTWriteChar(Source_ID);
	movf	((c:_Source_ID)),c,w
	
	call	_USARTWriteChar
	line	49
	
l8939:
;communication.c: 49: RE2 = 0;
	bcf	c:(31778/8),(31778)&7	;volatile
	line	51
	
l8941:
;communication.c: 51: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	52
	
l8943:
;communication.c: 52: LCDWriteString("ECO SENT");
		movlw	high(STR_2)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_2)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	55
;communication.c: 55: while(n == 0 && ts < 2000)
	goto	l8951
	
l505:
	line	58
	
l8945:
;communication.c: 56: {
;communication.c: 58: n = USARTDataAvailable();
	call	_USARTDataAvailable	;wreg free
	movwf	((c:Eco_Test@n)),c
	line	59
	
l8947:
;communication.c: 59: ts++;
	infsnz	((c:Eco_Test@ts)),c
	incf	((c:Eco_Test@ts+1)),c
	line	60
	
l8949:
;communication.c: 60: _delay((unsigned long)((1)*(100000000/4000.0)));
	movlw	25
movwf	(??_Eco_Test+0+0)&0ffh,c,f
	movlw	93
u8967:
	decfsz	wreg,f
	goto	u8967
	decfsz	(??_Eco_Test+0+0)&0ffh,c,f
	goto	u8967

	goto	l8951
	line	61
	
l504:
	line	55
	
l8951:
	tstfsz	((c:Eco_Test@n)),c
	goto	u6901
	goto	u6900
u6901:
	goto	l8955
u6900:
	
l8953:
	movlw	0D0h
	subwf	((c:Eco_Test@ts)),c,w
	movlw	07h
	subwfb	((c:Eco_Test@ts+1)),c,w
	btfss	status,0
	goto	u6911
	goto	u6910
u6911:
	goto	l8945
u6910:
	goto	l8955
	
l507:
	goto	l8955
	
l508:
	line	64
	
l8955:
;communication.c: 61: }
;communication.c: 64: if(n!=0)
	movf	((c:Eco_Test@n)),c,w
	btfsc	status,2
	goto	u6921
	goto	u6920
u6921:
	goto	l8973
u6920:
	line	67
	
l8957:
;communication.c: 65: {
;communication.c: 67: RC0 = 1;
	bsf	c:(31760/8),(31760)&7	;volatile
	line	68
	
l8959:
;communication.c: 68: unsigned char data=USARTReadData();
	call	_USARTReadData	;wreg free
	movwf	((c:Eco_Test@data)),c
	line	69
	
l8961:
;communication.c: 69: RC0 = 0;
	bcf	c:(31760/8),(31760)&7	;volatile
	line	70
	
l8963:
;communication.c: 70: if(data == Source_ID)
	movf	((c:_Source_ID)),c,w
	cpfseq	((c:Eco_Test@data)),c
	goto	u6931
	goto	u6930
u6931:
	goto	l8973
u6930:
	line	72
	
l8965:
;communication.c: 71: {
;communication.c: 72: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	73
	
l8967:
;communication.c: 73: LCDWriteString("ECO SUCCESSFUL ");
		movlw	high(STR_3)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_3)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	74
	
l8969:
;communication.c: 74: return 0x01;
	movlw	(01h)&0ffh
	goto	l511
	
l8971:
	goto	l511
	line	75
	
l510:
	goto	l8973
	line	76
	
l509:
	goto	l8973
	line	77
	
l503:
	line	79
	
l8973:
;communication.c: 75: }
;communication.c: 76: }
;communication.c: 77: }
;communication.c: 79: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	80
	
l8975:
;communication.c: 80: LCDWriteString("ECO FAIL");
		movlw	high(STR_4)
	movwf	((c:LCDWriteString@msg+1)),c
	movlw	low(STR_4)
	movwf	((c:LCDWriteString@msg)),c

	call	_LCDWriteString	;wreg free
	line	81
	
l8977:
;communication.c: 81: return 0x00;
	movlw	(0)&0ffh
	goto	l511
	
l8979:
	line	82
	
l511:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_Eco_Test
	__end_of_Eco_Test:
	signat	_Eco_Test,89
	global	_USARTWriteChar

;; *************** function _USARTWriteChar *****************
;; Defined at:
;;		line 52 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\usart_pic18.c"
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
psect	text53,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\usart_pic18.c"
	line	52
global __ptext53
__ptext53:
psect	text53
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\usart_pic18.c"
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
	
l8793:
;usart_pic18.c: 54: while(!PIR1bits.TXIF);
	goto	l817
	
l818:
	
l817:
	btfss	((c:3998)),c,4	;volatile
	goto	u6711
	goto	u6710
u6711:
	goto	l817
u6710:
	goto	l8795
	
l819:
	line	56
	
l8795:
;usart_pic18.c: 56: TXREG=ch;
	movff	(c:USARTWriteChar@ch),(c:4013)	;volatile
	line	57
	
l820:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_USARTWriteChar
	__end_of_USARTWriteChar:
	signat	_USARTWriteChar,4216
	global	_LCDWriteString

;; *************** function _LCDWriteString *****************
;; Defined at:
;;		line 210 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\lcd_hd44780_pic18.c"
;; Parameters:    Size  Location     Type
;;  msg             2   28[COMRAM] PTR const unsigned char 
;;		 -> STR_80(2), STR_79(5), STR_78(4), STR_77(2), 
;;		 -> STR_76(4), STR_75(2), STR_74(5), STR_73(4), 
;;		 -> STR_72(2), STR_71(4), STR_70(19), STR_69(11), 
;;		 -> STR_68(12), STR_67(17), STR_66(17), STR_65(14), 
;;		 -> STR_64(13), STR_63(18), STR_62(18), STR_61(17), 
;;		 -> STR_60(2), STR_59(2), STR_58(22), STR_57(2), 
;;		 -> STR_56(2), STR_55(21), STR_54(21), STR_53(17), 
;;		 -> STR_52(20), STR_51(13), STR_50(13), STR_49(13), 
;;		 -> STR_48(14), STR_47(18), STR_46(13), STR_45(18), 
;;		 -> STR_44(18), STR_43(17), STR_42(15), STR_41(13), 
;;		 -> STR_40(16), STR_39(13), STR_38(18), STR_37(18), 
;;		 -> STR_36(17), STR_35(15), STR_34(13), STR_33(16), 
;;		 -> STR_32(15), STR_31(11), STR_30(15), STR_29(11), 
;;		 -> STR_28(15), STR_27(11), STR_26(13), STR_25(11), 
;;		 -> STR_24(14), STR_23(14), STR_22(15), STR_21(12), 
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
;;		_per_minute_reading
;;		_per_second_reading
;;		_rtc_setting
;;		_data_to_center
;;		_tx_packet
;;		_DisplayReadings
;;		_rtc_local_display
;; This function uses a non-reentrant model
;;
psect	text54,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\lcd_hd44780_pic18.c"
	line	210
global __ptext54
__ptext54:
psect	text54
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\lcd_hd44780_pic18.c"
	line	210
	global	__size_of_LCDWriteString
	__size_of_LCDWriteString	equ	__end_of_LCDWriteString-_LCDWriteString
	
_LCDWriteString:
;incstack = 0
	opt	stack 23
	dw	0FFFFh
	line	240
	
l8695:
;lcd_hd44780_pic18.c: 240: while(*msg!='\0')
	goto	l8717
	
l37:
	line	243
	
l8697:
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
	goto	u6531
	goto	u6530
u6531:
	goto	l8713
u6530:
	line	245
	
l8699:
;lcd_hd44780_pic18.c: 244: {
;lcd_hd44780_pic18.c: 245: msg++;
	infsnz	((c:LCDWriteString@msg)),c
	incf	((c:LCDWriteString@msg+1)),c
	line	246
	
l8701:
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
	
l8703:
;lcd_hd44780_pic18.c: 248: if(cc>=0 && cc<=7)
	btfsc	((c:LCDWriteString@cc)),c,7
	goto	u6541
	goto	u6540
u6541:
	goto	l8709
u6540:
	
l8705:
	movf	((c:LCDWriteString@cc)),c,w
	xorlw	80h
	movwf	(??_LCDWriteString+0+0)&0ffh,c
	movlw	(08h)&0ffh
	xorlw	80h
	subwf	(??_LCDWriteString+0+0),c,w
	btfsc	status,0
	goto	u6551
	goto	u6550
u6551:
	goto	l8709
u6550:
	line	250
	
l8707:
;lcd_hd44780_pic18.c: 249: {
;lcd_hd44780_pic18.c: 250: (LCDByte(cc,1));
	movlw	low(01h)
	movwf	((c:LCDByte@isdata)),c
	movf	((c:LCDWriteString@cc)),c,w
	
	call	_LCDByte
	line	251
;lcd_hd44780_pic18.c: 251: }
	goto	l8715
	line	252
	
l39:
	line	254
	
l8709:
;lcd_hd44780_pic18.c: 252: else
;lcd_hd44780_pic18.c: 253: {
;lcd_hd44780_pic18.c: 254: (LCDByte('%',1));
	movlw	low(01h)
	movwf	((c:LCDByte@isdata)),c
	movlw	(025h)&0ffh
	
	call	_LCDByte
	line	255
	
l8711:
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
	goto	l8715
	line	256
	
l40:
	line	257
;lcd_hd44780_pic18.c: 256: }
;lcd_hd44780_pic18.c: 257: }
	goto	l8715
	line	258
	
l38:
	line	260
	
l8713:
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
	goto	l8715
	line	261
	
l41:
	line	262
	
l8715:
;lcd_hd44780_pic18.c: 261: }
;lcd_hd44780_pic18.c: 262: msg++;
	infsnz	((c:LCDWriteString@msg)),c
	incf	((c:LCDWriteString@msg+1)),c
	goto	l8717
	line	263
	
l36:
	line	240
	
l8717:
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
	goto	u6561
	goto	u6560
u6561:
	goto	l8697
u6560:
	goto	l43
	
l42:
	line	264
	
l43:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_LCDWriteString
	__end_of_LCDWriteString:
	signat	_LCDWriteString,4216
	global	_Check_Busy_Line

;; *************** function _Check_Busy_Line *****************
;; Defined at:
;;		line 12 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\communication.c"
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
psect	text55,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\communication.c"
	line	12
global __ptext55
__ptext55:
psect	text55
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\communication.c"
	line	12
	global	__size_of_Check_Busy_Line
	__size_of_Check_Busy_Line	equ	__end_of_Check_Busy_Line-_Check_Busy_Line
	
_Check_Busy_Line:
;incstack = 0
	opt	stack 22
	dw	0FFFFh
	line	14
	
l8769:
;communication.c: 14: USARTFlushBuffer();
	call	_USARTFlushBuffer	;wreg free
	line	15
	
l8771:
;communication.c: 15: unsigned int ms = 0;
	movlw	high(0)
	movwf	((c:Check_Busy_Line@ms+1)),c
	movlw	low(0)
	movwf	((c:Check_Busy_Line@ms)),c
	line	16
	
l8773:
;communication.c: 16: uint8_t n = 0;
	movlw	low(0)
	movwf	((c:Check_Busy_Line@n)),c
	line	18
;communication.c: 18: while(n == 0 && ms < 2500)
	goto	l8781
	
l495:
	line	21
	
l8775:
;communication.c: 19: {
;communication.c: 21: n = USARTDataAvailable();
	call	_USARTDataAvailable	;wreg free
	movwf	((c:Check_Busy_Line@n)),c
	line	22
	
l8777:
;communication.c: 22: ms++;
	infsnz	((c:Check_Busy_Line@ms)),c
	incf	((c:Check_Busy_Line@ms+1)),c
	line	23
	
l8779:
;communication.c: 23: _delay((unsigned long)((1)*(100000000/4000.0)));
	movlw	25
movwf	(??_Check_Busy_Line+0+0)&0ffh,c,f
	movlw	93
u8977:
	decfsz	wreg,f
	goto	u8977
	decfsz	(??_Check_Busy_Line+0+0)&0ffh,c,f
	goto	u8977

	goto	l8781
	line	24
	
l494:
	line	18
	
l8781:
	tstfsz	((c:Check_Busy_Line@n)),c
	goto	u6681
	goto	u6680
u6681:
	goto	l498
u6680:
	
l8783:
	movlw	0C4h
	subwf	((c:Check_Busy_Line@ms)),c,w
	movlw	09h
	subwfb	((c:Check_Busy_Line@ms+1)),c,w
	btfss	status,0
	goto	u6691
	goto	u6690
u6691:
	goto	l8775
u6690:
	goto	l498
	
l497:
	
l498:
	line	25
;communication.c: 24: }
;communication.c: 25: if(n == 0)
	tstfsz	((c:Check_Busy_Line@n)),c
	goto	u6701
	goto	u6700
u6701:
	goto	l8789
u6700:
	line	26
	
l8785:
;communication.c: 26: return 0x01;
	movlw	(01h)&0ffh
	goto	l500
	
l8787:
	goto	l500
	
l499:
	line	27
	
l8789:
;communication.c: 27: return 0x00;
	movlw	(0)&0ffh
	goto	l500
	
l8791:
	line	28
	
l500:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_Check_Busy_Line
	__end_of_Check_Busy_Line:
	signat	_Check_Busy_Line,89
	global	_USARTFlushBuffer

;; *************** function _USARTFlushBuffer *****************
;; Defined at:
;;		line 192 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\usart_pic18.c"
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
psect	text56,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\usart_pic18.c"
	line	192
global __ptext56
__ptext56:
psect	text56
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\usart_pic18.c"
	line	192
	global	__size_of_USARTFlushBuffer
	__size_of_USARTFlushBuffer	equ	__end_of_USARTFlushBuffer-_USARTFlushBuffer
	
_USARTFlushBuffer:
;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	194
	
l8553:
;usart_pic18.c: 194: while(USARTDataAvailable()>0)
	goto	l8557
	
l887:
	line	196
	
l8555:
;usart_pic18.c: 195: {
;usart_pic18.c: 196: USARTReadData();
	call	_USARTReadData	;wreg free
	goto	l8557
	line	197
	
l886:
	line	194
	
l8557:
	call	_USARTDataAvailable	;wreg free
	iorlw	0
	btfss	status,2
	goto	u6351
	goto	u6350
u6351:
	goto	l8555
u6350:
	goto	l889
	
l888:
	line	198
	
l889:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_USARTFlushBuffer
	__end_of_USARTFlushBuffer:
	signat	_USARTFlushBuffer,88
	global	_USARTReadData

;; *************** function _USARTReadData *****************
;; Defined at:
;;		line 100 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\usart_pic18.c"
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
psect	text57,class=CODE,space=0,reloc=2
	line	100
global __ptext57
__ptext57:
psect	text57
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\usart_pic18.c"
	line	100
	global	__size_of_USARTReadData
	__size_of_USARTReadData	equ	__end_of_USARTReadData-_USARTReadData
	
_USARTReadData:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
	line	105
	
l8277:
;usart_pic18.c: 102: char data;
;usart_pic18.c: 105: if(UQFront==-1)
	incf	((c:_UQFront)),c,w	;volatile

	btfss	status,2
	goto	u5881
	goto	u5880
u5881:
	goto	l8283
u5880:
	line	106
	
l8279:
;usart_pic18.c: 106: return 0;
	movlw	(0)&0ffh
	goto	l845
	
l8281:
	goto	l845
	
l844:
	line	108
	
l8283:
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
	
l8285:; BSR set to: 1

;usart_pic18.c: 110: if(UQFront==UQEnd)
	movf	((c:_UQEnd)),c,w	;volatile
	cpfseq	((c:_UQFront)),c	;volatile
	goto	u5891
	goto	u5890
u5891:
	goto	l8289
u5890:
	line	114
	
l8287:; BSR set to: 1

;usart_pic18.c: 111: {
;usart_pic18.c: 114: UQFront=UQEnd=-1;
	setf	((c:_UQEnd)),c	;volatile
	setf	((c:_UQFront)),c	;volatile
	line	115
;usart_pic18.c: 115: }
	goto	l847
	line	116
	
l846:; BSR set to: 1

	line	118
	
l8289:; BSR set to: 1

;usart_pic18.c: 116: else
;usart_pic18.c: 117: {
;usart_pic18.c: 118: UQFront++;
	incf	((c:_UQFront)),c	;volatile
	line	120
;usart_pic18.c: 120: if(UQFront==128)
	goto	l847
	line	121
	
l8291:; BSR set to: 1

;usart_pic18.c: 121: UQFront=0;
	movlw	low(0)
	movwf	((c:_UQFront)),c	;volatile
	goto	l847
	
l848:; BSR set to: 1

	line	122
	
l847:; BSR set to: 1

	line	124
;usart_pic18.c: 122: }
;usart_pic18.c: 124: return data;
	movf	((c:USARTReadData@data)),c,w
	goto	l845
	
l8293:; BSR set to: 1

	line	125
	
l845:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_USARTReadData
	__end_of_USARTReadData:
	signat	_USARTReadData,89
	global	_USARTDataAvailable

;; *************** function _USARTDataAvailable *****************
;; Defined at:
;;		line 127 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\usart_pic18.c"
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
psect	text58,class=CODE,space=0,reloc=2
	line	127
global __ptext58
__ptext58:
psect	text58
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\usart_pic18.c"
	line	127
	global	__size_of_USARTDataAvailable
	__size_of_USARTDataAvailable	equ	__end_of_USARTDataAvailable-_USARTDataAvailable
	
_USARTDataAvailable:
;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	129
	
l8251:
;usart_pic18.c: 129: if(UQFront==-1) return 0;
	incf	((c:_UQFront)),c,w	;volatile

	btfss	status,2
	goto	u5851
	goto	u5850
u5851:
	goto	l8257
u5850:
	
l8253:
	movlw	(0)&0ffh
	goto	l852
	
l8255:
	goto	l852
	
l851:
	line	130
	
l8257:
;usart_pic18.c: 130: if(UQFront<UQEnd)
	movf	((c:_UQFront)),c,w	;volatile
	xorlw	80h
	movwf	(??_USARTDataAvailable+0+0)&0ffh,c
	movf	((c:_UQEnd)),c,w	;volatile
	xorlw	80h
	subwf	(??_USARTDataAvailable+0+0),c,w
	btfsc	status,0
	goto	u5861
	goto	u5860
u5861:
	goto	l8265
u5860:
	line	131
	
l8259:
;usart_pic18.c: 131: return(UQEnd-UQFront+1);
	movf	((c:_UQFront)),c,w	;volatile
	sublw	0
	addwf	((c:_UQEnd)),c,w	;volatile
	movwf	(??_USARTDataAvailable+0+0)&0ffh,c
	incf	((??_USARTDataAvailable+0+0)),c,w
	goto	l852
	
l8261:
	goto	l852
	
l8263:
	goto	l852
	line	132
	
l853:
	
l8265:
;usart_pic18.c: 132: else if(UQFront>UQEnd)
	movf	((c:_UQEnd)),c,w	;volatile
	xorlw	80h
	movwf	(??_USARTDataAvailable+0+0)&0ffh,c
	movf	((c:_UQFront)),c,w	;volatile
	xorlw	80h
	subwf	(??_USARTDataAvailable+0+0),c,w
	btfsc	status,0
	goto	u5871
	goto	u5870
u5871:
	goto	l8273
u5870:
	line	133
	
l8267:
;usart_pic18.c: 133: return (128-UQFront+UQEnd+1);
	movf	((c:_UQFront)),c,w	;volatile
	sublw	0
	addwf	((c:_UQEnd)),c,w	;volatile
	addlw	low(081h)
	goto	l852
	
l8269:
	goto	l852
	
l8271:
	goto	l852
	line	134
	
l855:
	line	135
	
l8273:
;usart_pic18.c: 134: else
;usart_pic18.c: 135: return 1;
	movlw	(01h)&0ffh
	goto	l852
	
l8275:
	goto	l852
	
l856:
	goto	l852
	
l854:
	line	136
	
l852:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_USARTDataAvailable
	__end_of_USARTDataAvailable:
	signat	_USARTDataAvailable,89
	global	_read_packet_from_page

;; *************** function _read_packet_from_page *****************
;; Defined at:
;;		line 145 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\myeeprom.c"
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
;;		_per_minute_reading
;;		_per_second_reading
;;		_data_to_center
;; This function uses a non-reentrant model
;;
psect	text59,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\myeeprom.c"
	line	145
global __ptext59
__ptext59:
psect	text59
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\myeeprom.c"
	line	145
	global	__size_of_read_packet_from_page
	__size_of_read_packet_from_page	equ	__end_of_read_packet_from_page-_read_packet_from_page
	
_read_packet_from_page:
;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	147
	
l9587:
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
	
l9589:
;myeeprom.c: 151: address = page_no * 128;
	movff	(c:read_packet_from_page@page_no),??_read_packet_from_page+0+0
	movff	(c:read_packet_from_page@page_no+1),??_read_packet_from_page+0+0+1
	movlw	07h
u7475:
	bcf	status,0
	rlcf	(??_read_packet_from_page+0+0),c
	rlcf	(??_read_packet_from_page+0+1),c
	decfsz	wreg
	goto	u7475
	movff	??_read_packet_from_page+0+0,(c:read_packet_from_page@address)
	movff	??_read_packet_from_page+0+1,(c:read_packet_from_page@address+1)
	line	154
	
l9591:
;myeeprom.c: 154: count = 0;
	movlw	low(0)
	movwf	((c:read_packet_from_page@count)),c
	goto	l9593
	line	155
;myeeprom.c: 155: while(1)
	
l157:
	line	157
	
l9593:
;myeeprom.c: 156: {
;myeeprom.c: 157: PACKET[count] = rom_byte_read(address);
	movf	((c:read_packet_from_page@count)),c,w
	mullw	01h
	movlb	1	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:read_packet_from_page@address),(c:rom_byte_read@address)
	movff	(c:read_packet_from_page@address+1),(c:rom_byte_read@address+1)
	call	_rom_byte_read	;wreg free
	movwf	indf2,c

	line	158
	
l9595:
;myeeprom.c: 158: if(PACKET[count] == 0xEA)
	movf	((c:read_packet_from_page@count)),c,w
	mullw	01h
	movlb	1	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	(0EAh)&0ffh
	cpfseq	indf2
	goto	u7481
	goto	u7480
u7481:
	goto	l9601
u7480:
	goto	l159
	line	160
	
l9597:; BSR set to: 1

;myeeprom.c: 159: {
;myeeprom.c: 160: return;
	goto	l159
	line	161
	
l9599:; BSR set to: 1

;myeeprom.c: 161: }
	goto	l9593
	line	162
	
l158:; BSR set to: 1

	line	164
	
l9601:; BSR set to: 1

;myeeprom.c: 162: else
;myeeprom.c: 163: {
;myeeprom.c: 164: address++;
	infsnz	((c:read_packet_from_page@address)),c
	incf	((c:read_packet_from_page@address+1)),c
	line	165
;myeeprom.c: 165: count++;
	incf	((c:read_packet_from_page@count)),c
	goto	l9593
	line	166
	
l160:; BSR set to: 1

	goto	l9593
	line	167
	
l161:; BSR set to: 1

	line	155
	goto	l9593
	
l162:; BSR set to: 1

	line	168
	
l159:; BSR set to: 1

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_read_packet_from_page
	__end_of_read_packet_from_page:
	signat	_read_packet_from_page,4216
	global	_rom_byte_read

;; *************** function _rom_byte_read *****************
;; Defined at:
;;		line 29 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\myeeprom.c"
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
psect	text60,class=CODE,space=0,reloc=2
	line	29
global __ptext60
__ptext60:
psect	text60
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\myeeprom.c"
	line	29
	global	__size_of_rom_byte_read
	__size_of_rom_byte_read	equ	__end_of_rom_byte_read-_rom_byte_read
	
_rom_byte_read:; BSR set to: 1

;incstack = 0
	opt	stack 24
	dw	0FFFFh
	line	31
	
l9181:
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
	
l9183:
;myeeprom.c: 34: lsb = address & 0x00FF;
	movff	(c:rom_byte_read@address),(c:rom_byte_read@lsb)
	line	36
	
l9185:
;myeeprom.c: 36: RE1 = 1;
	bsf	c:(31777/8),(31777)&7	;volatile
	line	37
	
l9187:
;myeeprom.c: 37: IdleI2C();
	call	_IdleI2C	;wreg free
	line	38
	
l9189:
;myeeprom.c: 38: SSPCON2bits.SEN=1;while(SSPCON2bits.SEN);
	bsf	((c:4037)),c,0	;volatile
	goto	l105
	
l106:
	
l105:
	btfsc	((c:4037)),c,0	;volatile
	goto	u7221
	goto	u7220
u7221:
	goto	l105
u7220:
	goto	l9191
	
l107:
	line	39
	
l9191:
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
	
l9193:
;myeeprom.c: 46: SSPCON2bits.RSEN=1;while(SSPCON2bits.RSEN);
	bsf	((c:4037)),c,1	;volatile
	goto	l108
	
l109:
	
l108:
	btfsc	((c:4037)),c,1	;volatile
	goto	u7231
	goto	u7230
u7231:
	goto	l108
u7230:
	goto	l9195
	
l110:
	line	47
	
l9195:
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
	
l9197:
;myeeprom.c: 50: SSPCON2bits.ACKDT=1;SSPCON2bits.ACKEN=1;while(SSPCON2bits.ACKEN);
	bsf	((c:4037)),c,5	;volatile
	
l9199:
	bsf	((c:4037)),c,4	;volatile
	goto	l111
	
l112:
	
l111:
	btfsc	((c:4037)),c,4	;volatile
	goto	u7241
	goto	u7240
u7241:
	goto	l111
u7240:
	
l113:
	line	51
;myeeprom.c: 51: SSPCON2bits.PEN=1;while(SSPCON2bits.PEN);
	bsf	((c:4037)),c,2	;volatile
	goto	l114
	
l115:
	
l114:
	btfsc	((c:4037)),c,2	;volatile
	goto	u7251
	goto	u7250
u7251:
	goto	l114
u7250:
	
l116:
	line	52
;myeeprom.c: 52: RE1 = 0;
	bcf	c:(31777/8),(31777)&7	;volatile
	line	53
	
l9201:
;myeeprom.c: 53: return data;
	movf	((c:rom_byte_read@data)),c,w
	goto	l117
	
l9203:
	line	54
	
l117:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_rom_byte_read
	__end_of_rom_byte_read:
	signat	_rom_byte_read,4217
	global	_clear_rom

;; *************** function _clear_rom *****************
;; Defined at:
;;		line 251 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\myeeprom.c"
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
;; This function uses a non-reentrant model
;;
psect	text61,class=CODE,space=0,reloc=2
	line	251
global __ptext61
__ptext61:
psect	text61
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\myeeprom.c"
	line	251
	global	__size_of_clear_rom
	__size_of_clear_rom	equ	__end_of_clear_rom-_clear_rom
	
_clear_rom:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
	line	256
	
l9603:
;myeeprom.c: 253: char word;
;myeeprom.c: 254: int page;
;myeeprom.c: 256: IdleI2C();
	call	_IdleI2C	;wreg free
	line	257
	
l9605:
;myeeprom.c: 257: SSPCON2bits.SEN=1;while(SSPCON2bits.SEN);
	bsf	((c:4037)),c,0	;volatile
	goto	l165
	
l166:
	
l165:
	btfsc	((c:4037)),c,0	;volatile
	goto	u7491
	goto	u7490
u7491:
	goto	l165
u7490:
	goto	l9607
	
l167:
	line	258
	
l9607:
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
	
l9609:
;myeeprom.c: 265: for(page = 0; page < 512; page++)
	movlw	high(0)
	movwf	((c:clear_rom@page+1)),c
	movlw	low(0)
	movwf	((c:clear_rom@page)),c
	
l9611:
	movf	((c:clear_rom@page+1)),c,w
	xorlw	80h
	addlw	-((02h)^80h)
	movlw	0
	btfsc	status,2
	subwf	((c:clear_rom@page)),c,w
	btfss	status,0
	goto	u7501
	goto	u7500
u7501:
	goto	l9615
u7500:
	goto	l169
	
l9613:
	goto	l169
	line	266
	
l168:
	line	267
	
l9615:
;myeeprom.c: 266: {
;myeeprom.c: 267: for(word = 0; word < 128; word++)
	movlw	low(0)
	movwf	((c:clear_rom@word)),c
	
l9617:
	movlw	(080h-1)
	cpfsgt	((c:clear_rom@word)),c
	goto	u7511
	goto	u7510
u7511:
	goto	l9621
u7510:
	goto	l9627
	
l9619:
	goto	l9627
	line	268
	
l170:
	line	269
	
l9621:
;myeeprom.c: 268: {
;myeeprom.c: 269: WriteI2C(0xFF);
	movlw	(0FFh)&0ffh
	
	call	_WriteI2C
	line	270
;myeeprom.c: 270: IdleI2C();
	call	_IdleI2C	;wreg free
	line	267
	
l9623:
	incf	((c:clear_rom@word)),c
	
l9625:
	movlw	(080h-1)
	cpfsgt	((c:clear_rom@word)),c
	goto	u7521
	goto	u7520
u7521:
	goto	l9621
u7520:
	goto	l9627
	
l171:
	line	265
	
l9627:
	infsnz	((c:clear_rom@page)),c
	incf	((c:clear_rom@page+1)),c
	
l9629:
	movf	((c:clear_rom@page+1)),c,w
	xorlw	80h
	addlw	-((02h)^80h)
	movlw	0
	btfsc	status,2
	subwf	((c:clear_rom@page)),c,w
	btfss	status,0
	goto	u7531
	goto	u7530
u7531:
	goto	l9615
u7530:
	
l169:
	line	274
;myeeprom.c: 271: }
;myeeprom.c: 272: }
;myeeprom.c: 274: SSPCON2bits.PEN=1;while(SSPCON2bits.PEN);
	bsf	((c:4037)),c,2	;volatile
	goto	l172
	
l173:
	
l172:
	btfsc	((c:4037)),c,2	;volatile
	goto	u7541
	goto	u7540
u7541:
	goto	l172
u7540:
	goto	l9631
	
l174:
	line	275
	
l9631:
;myeeprom.c: 275: _delay(100000);
	movlw	98
movwf	(??_clear_rom+0+0)&0ffh,c,f
	movlw	118
u8987:
	decfsz	wreg,f
	goto	u8987
	decfsz	(??_clear_rom+0+0)&0ffh,c,f
	goto	u8987
	nop2

	goto	l175
	line	276
	
l9633:
	line	277
;myeeprom.c: 276: return;
	
l175:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_clear_rom
	__end_of_clear_rom:
	signat	_clear_rom,88
	global	_LCDGotoXY

;; *************** function _LCDGotoXY *****************
;; Defined at:
;;		line 311 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\lcd_hd44780_pic18.c"
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
;;		_per_minute_reading
;;		_per_second_reading
;;		_rtc_setting
;;		_data_to_center
;;		_DisplayReadings
;;		_rtc_local_display
;; This function uses a non-reentrant model
;;
psect	text62,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\lcd_hd44780_pic18.c"
	line	311
global __ptext62
__ptext62:
psect	text62
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\lcd_hd44780_pic18.c"
	line	311
	global	__size_of_LCDGotoXY
	__size_of_LCDGotoXY	equ	__end_of_LCDGotoXY-_LCDGotoXY
	
_LCDGotoXY:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
;LCDGotoXY@x stored from wreg
	movwf	((c:LCDGotoXY@x)),c
	line	313
	
l9145:
;lcd_hd44780_pic18.c: 313: if(x>=20) return;
	movlw	(014h-1)
	cpfsgt	((c:LCDGotoXY@x)),c
	goto	u7191
	goto	u7190
u7191:
	goto	l9157
u7190:
	goto	l63
	
l9147:
	goto	l63
	
l62:
	line	317
;lcd_hd44780_pic18.c: 317: switch(y)
	goto	l9157
	line	319
;lcd_hd44780_pic18.c: 318: {
;lcd_hd44780_pic18.c: 319: case 0:
	
l65:
	line	320
;lcd_hd44780_pic18.c: 320: break;
	goto	l9159
	line	321
;lcd_hd44780_pic18.c: 321: case 1:
	
l67:
	line	322
	
l9149:
;lcd_hd44780_pic18.c: 322: x|=0b01000000;
	bsf	(0+(6/8)+(c:LCDGotoXY@x)),c,(6)&7
	line	323
;lcd_hd44780_pic18.c: 323: break;
	goto	l9159
	line	324
;lcd_hd44780_pic18.c: 324: case 2:
	
l68:
	line	325
	
l9151:
;lcd_hd44780_pic18.c: 325: x+=0x14;
	movlw	(014h)&0ffh
	addwf	((c:LCDGotoXY@x)),c
	line	326
;lcd_hd44780_pic18.c: 326: break;
	goto	l9159
	line	327
;lcd_hd44780_pic18.c: 327: case 3:
	
l69:
	line	328
	
l9153:
;lcd_hd44780_pic18.c: 328: x+=0x54;
	movlw	(054h)&0ffh
	addwf	((c:LCDGotoXY@x)),c
	line	329
;lcd_hd44780_pic18.c: 329: break;
	goto	l9159
	line	330
	
l9155:
;lcd_hd44780_pic18.c: 330: }
	goto	l9159
	line	317
	
l64:
	
l9157:
	movf	((c:LCDGotoXY@y)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l9159
	xorlw	1^0	; case 1
	skipnz
	goto	l9149
	xorlw	2^1	; case 2
	skipnz
	goto	l9151
	xorlw	3^2	; case 3
	skipnz
	goto	l9153
	goto	l9159

	line	330
	
l66:
	line	352
	
l9159:
;lcd_hd44780_pic18.c: 352: x|=0b10000000;
	bsf	(0+(7/8)+(c:LCDGotoXY@x)),c,(7)&7
	line	353
	
l9161:
;lcd_hd44780_pic18.c: 353: (LCDByte(x,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movf	((c:LCDGotoXY@x)),c,w
	
	call	_LCDByte
	line	354
	
l63:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_LCDGotoXY
	__end_of_LCDGotoXY:
	signat	_LCDGotoXY,8312
	global	_Clear_Packet

;; *************** function _Clear_Packet *****************
;; Defined at:
;;		line 139 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\packet.c"
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
;;		_per_minute_reading
;;		_per_second_reading
;;		_data_to_center
;; This function uses a non-reentrant model
;;
psect	text63,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\packet.c"
	line	139
global __ptext63
__ptext63:
psect	text63
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\packet.c"
	line	139
	global	__size_of_Clear_Packet
	__size_of_Clear_Packet	equ	__end_of_Clear_Packet-_Clear_Packet
	
_Clear_Packet:
;incstack = 0
	opt	stack 26
	dw	0FFFFh
	line	141
	
l9253:
;packet.c: 141: char i = 0;
	movlw	low(0)
	movwf	((c:Clear_Packet@i)),c
	line	142
;packet.c: 142: for(i = 0; i < 128; i++)
	movlw	low(0)
	movwf	((c:Clear_Packet@i)),c
	
l9255:
	movlw	(080h-1)
	cpfsgt	((c:Clear_Packet@i)),c
	goto	u7271
	goto	u7270
u7271:
	goto	l9259
u7270:
	goto	l427
	
l9257:
	goto	l427
	line	143
	
l425:
	
l9259:
;packet.c: 143: PACKET[i] = 0xFF;
	movf	((c:Clear_Packet@i)),c,w
	mullw	01h
	movlb	1	; () banked
	movlw	low(_PACKET)	;volatile
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(_PACKET)	;volatile
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0FFh)
	movwf	indf2
	line	142
	
l9261:; BSR set to: 1

	incf	((c:Clear_Packet@i)),c
	
l9263:; BSR set to: 1

	movlw	(080h-1)
	cpfsgt	((c:Clear_Packet@i)),c
	goto	u7281
	goto	u7280
u7281:
	goto	l9259
u7280:
	goto	l427
	
l426:; BSR set to: 1

	line	144
	
l427:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_Clear_Packet
	__end_of_Clear_Packet:
	signat	_Clear_Packet,88
	global	_RTUInit

;; *************** function _RTUInit *****************
;; Defined at:
;;		line 15 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\rtu.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  adr             2   61[COMRAM] unsigned int 
;;  low             1   64[COMRAM] unsigned char 
;;  high            1   63[COMRAM] unsigned char 
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
;;		___ftadd
;;		___ftmul
;;		___lbtoft
;;		_ds1307_get_date
;;		_ds1307_get_time
;;		_ds1307_init
;;		_ds1307_set_date_time
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text64,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\rtu.c"
	line	15
global __ptext64
__ptext64:
psect	text64
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\rtu.c"
	line	15
	global	__size_of_RTUInit
	__size_of_RTUInit	equ	__end_of_RTUInit-_RTUInit
	
_RTUInit:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
	line	20
	
l10235:
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
	
l10237:
;rtu.c: 26: RE0 = 0;
	bcf	c:(31776/8),(31776)&7	;volatile
	line	27
	
l10239:
;rtu.c: 27: RE1 = 0;
	bcf	c:(31777/8),(31777)&7	;volatile
	line	28
	
l10241:
;rtu.c: 28: RE2 = 0;
	bcf	c:(31778/8),(31778)&7	;volatile
	line	29
	
l10243:
;rtu.c: 29: RC0 = 0;
	bcf	c:(31760/8),(31760)&7	;volatile
	line	30
	
l10245:
;rtu.c: 30: RC1 = 0;
	bcf	c:(31761/8),(31761)&7	;volatile
	line	32
;rtu.c: 32: PORTB = 0x00;
	movlw	low(0)
	movwf	((c:3969)),c	;volatile
	line	33
	
l10247:
;rtu.c: 33: RC2 = 0;
	bcf	c:(31762/8),(31762)&7	;volatile
	line	36
;rtu.c: 36: for(c = 0; c < 5; c++)
	movlw	low(0)
	movwf	((c:_c)),c
	
l10249:
	movlw	(05h-1)
	cpfsgt	((c:_c)),c
	goto	u7981
	goto	u7980
u7981:
	goto	l748
u7980:
	goto	l10261
	
l10251:
	goto	l10261
	line	37
	
l748:
	line	38
;rtu.c: 37: {
;rtu.c: 38: RE0 = 1;
	bsf	c:(31776/8),(31776)&7	;volatile
	line	39
	
l10253:
;rtu.c: 39: MyDelay(100);
	movlw	high(064h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(064h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	40
	
l10255:
;rtu.c: 40: RE0 = 0;
	bcf	c:(31776/8),(31776)&7	;volatile
	line	41
;rtu.c: 41: MyDelay(100);
	movlw	high(064h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(064h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	36
	
l10257:
	incf	((c:_c)),c
	
l10259:
	movlw	(05h-1)
	cpfsgt	((c:_c)),c
	goto	u7991
	goto	u7990
u7991:
	goto	l748
u7990:
	goto	l10261
	
l749:
	line	44
	
l10261:
;rtu.c: 42: }
;rtu.c: 44: Source_ID = 'x';
	movlw	low(078h)
	movwf	((c:_Source_ID)),c
	line	45
;rtu.c: 45: Destination_ID = 'z';
	movlw	low(07Ah)
	movwf	((c:_Destination_ID)),c
	line	47
;rtu.c: 47: seconds = 0;
	movlw	low(0)
	movwf	((c:_seconds)),c
	line	48
;rtu.c: 48: sec_flag = 0;
	movlw	low(0)
	movwf	((c:_sec_flag)),c
	line	49
;rtu.c: 49: min_flag = 0;
	movlw	low(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_min_flag))&0ffh
	line	52
;rtu.c: 52: device = 0xA0;
	movlw	low(0A0h)
	movwf	((c:_device)),c
	line	55
	
l10263:; BSR set to: 0

;rtu.c: 55: high = Read_b_eep(0);
	movlw	high(0)
	movwf	((c:Read_b_eep@badd+1)),c
	movlw	low(0)
	movwf	((c:Read_b_eep@badd)),c
	call	_Read_b_eep	;wreg free
	movwf	((c:RTUInit@high)),c
	line	56
	
l10265:
;rtu.c: 56: _delay(50);
	movlw	10
u8997:
	nop
decfsz	wreg,f
	goto	u8997

	line	57
	
l10267:
;rtu.c: 57: low = Read_b_eep(1);
	movlw	high(01h)
	movwf	((c:Read_b_eep@badd+1)),c
	movlw	low(01h)
	movwf	((c:Read_b_eep@badd)),c
	call	_Read_b_eep	;wreg free
	movwf	((c:RTUInit@low)),c
	line	58
	
l10269:
;rtu.c: 58: _delay(50);
	movlw	10
u9007:
	nop
decfsz	wreg,f
	goto	u9007

	line	61
;rtu.c: 61: adr = 0x0000;
	movlw	high(0)
	movwf	((c:RTUInit@adr+1)),c
	movlw	low(0)
	movwf	((c:RTUInit@adr)),c
	line	62
	
l10271:
;rtu.c: 62: adr = adr + high;
	movf	((c:RTUInit@high)),c,w
	addwf	((c:RTUInit@adr)),c,w
	
	movwf	((c:RTUInit@adr)),c
	movlw	0
	addwfc	((c:RTUInit@adr+1)),c,w
	movwf	1+((c:RTUInit@adr)),c
	line	63
	
l10273:
;rtu.c: 63: adr = adr << 8;
	movf	((c:RTUInit@adr)),c,w
	movwf	((c:RTUInit@adr+1)),c
	clrf	((c:RTUInit@adr)),c
	line	64
;rtu.c: 64: adr = adr + low;
	movf	((c:RTUInit@low)),c,w
	addwf	((c:RTUInit@adr)),c,w
	
	movwf	((c:RTUInit@adr)),c
	movlw	0
	addwfc	((c:RTUInit@adr+1)),c,w
	movwf	1+((c:RTUInit@adr)),c
	line	65
;rtu.c: 65: if(adr > 2)
	movlw	03h
	subwf	((c:RTUInit@adr)),c,w
	movlw	0
	subwfb	((c:RTUInit@adr+1)),c,w
	btfss	status,0
	goto	u8001
	goto	u8000
u8001:
	goto	l10277
u8000:
	line	66
	
l10275:
;rtu.c: 66: adr = 0;
	movlw	high(0)
	movwf	((c:RTUInit@adr+1)),c
	movlw	low(0)
	movwf	((c:RTUInit@adr)),c
	goto	l10277
	
l750:
	line	67
	
l10277:
;rtu.c: 67: Current_Write_Page = adr;
	movff	(c:RTUInit@adr),(_Current_Write_Page)	;volatile
	movff	(c:RTUInit@adr+1),(_Current_Write_Page+1)	;volatile
	line	69
;rtu.c: 69: Current_Write_Page = 0;
	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Current_Write_Page+1))&0ffh	;volatile
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_Current_Write_Page))&0ffh	;volatile
	line	70
;rtu.c: 70: Current_Read_Page = 0;
	movlw	high(0)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_Current_Read_Page+1))&0ffh	;volatile
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_Current_Read_Page))&0ffh	;volatile
	line	73
	
l10279:; BSR set to: 0

;rtu.c: 73: OpenI2C(0b00001000,0b10000000);
	movlw	low(080h)
	movwf	((c:OpenI2C@slew)),c
	movlw	(08h)&0ffh
	
	call	_OpenI2C
	line	74
	
l10281:
;rtu.c: 74: SSPADD = 0x19;
	movlw	low(019h)
	movwf	((c:4040)),c	;volatile
	line	77
;rtu.c: 77: ds1307_init();
	call	_ds1307_init	;wreg free
	line	79
	
l10283:
;rtu.c: 79: if(Read_b_eep(4) != 0)
	movlw	high(04h)
	movwf	((c:Read_b_eep@badd+1)),c
	movlw	low(04h)
	movwf	((c:Read_b_eep@badd)),c
	call	_Read_b_eep	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u8011
	goto	u8010
u8011:
	goto	l10295
u8010:
	line	81
	
l10285:
;rtu.c: 80: {
;rtu.c: 81: day = 1;
	movlw	low(01h)
	movwf	((c:_day)),c
	line	82
;rtu.c: 82: ` month = 1;
	movlw	low(01h)
	movwf	((c:_month)),c
	line	83
;rtu.c: 83: year = 15;
	movlw	low(0Fh)
	movwf	((c:_year)),c
	line	84
;rtu.c: 84: dow = 2;
	movlw	low(02h)
	movwf	((c:_dow)),c
	line	85
;rtu.c: 85: hr = 6;
	movlw	low(06h)
	movwf	((c:_hr)),c
	line	86
;rtu.c: 86: min = 0;
	movlw	low(0)
	movwf	((c:_min)),c
	line	87
;rtu.c: 87: sec = 0;
	movlw	low(0)
	movwf	((c:_sec)),c
	line	88
	
l10287:
;rtu.c: 88: ds1307_set_date_time();
	call	_ds1307_set_date_time	;wreg free
	line	89
	
l10289:
;rtu.c: 89: MyDelay(100);
	movlw	high(064h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(064h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	90
	
l10291:
;rtu.c: 90: Write_b_eep(0x04,0);
	movlw	high(04h)
	movwf	((c:Write_b_eep@badd+1)),c
	movlw	low(04h)
	movwf	((c:Write_b_eep@badd)),c
	movlw	low(0)
	movwf	((c:Write_b_eep@bdat)),c
	call	_Write_b_eep	;wreg free
	line	91
	
l10293:
;rtu.c: 91: _delay(50);
	movlw	10
u9017:
	nop
decfsz	wreg,f
	goto	u9017

	goto	l10295
	line	92
	
l751:
	line	95
	
l10295:
;rtu.c: 92: }
;rtu.c: 95: ds1307_get_date();
	call	_ds1307_get_date	;wreg free
	line	96
	
l10297:
;rtu.c: 96: MyDelay(100);
	movlw	high(064h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(064h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	98
	
l10299:
;rtu.c: 98: ds1307_get_time();
	call	_ds1307_get_time	;wreg free
	line	99
	
l10301:
;rtu.c: 99: MyDelay(100);
	movlw	high(064h)
	movwf	((c:MyDelay@ms+1)),c
	movlw	low(064h)
	movwf	((c:MyDelay@ms)),c
	call	_MyDelay	;wreg free
	line	101
	
l10303:
;rtu.c: 101: high = Read_b_eep(5);
	movlw	high(05h)
	movwf	((c:Read_b_eep@badd+1)),c
	movlw	low(05h)
	movwf	((c:Read_b_eep@badd)),c
	call	_Read_b_eep	;wreg free
	movwf	((c:RTUInit@high)),c
	line	102
	
l10305:
;rtu.c: 102: _delay(50);
	movlw	10
u9027:
	nop
decfsz	wreg,f
	goto	u9027

	line	103
	
l10307:
;rtu.c: 103: low = Read_b_eep(6);
	movlw	high(06h)
	movwf	((c:Read_b_eep@badd+1)),c
	movlw	low(06h)
	movwf	((c:Read_b_eep@badd)),c
	call	_Read_b_eep	;wreg free
	movwf	((c:RTUInit@low)),c
	line	104
	
l10309:
;rtu.c: 104: _delay(50);
	movlw	10
u9037:
	nop
decfsz	wreg,f
	goto	u9037

	line	105
	
l10311:
;rtu.c: 105: thresh_temp1 = high + (low*0.01);
	movf	((c:RTUInit@high)),c,w
	
	call	___lbtoft
	movff	0+?___lbtoft,(c:___ftadd@f1)
	movff	1+?___lbtoft,(c:___ftadd@f1+1)
	movff	2+?___lbtoft,(c:___ftadd@f1+2)
	movlw	low(float24(0.010000000000000000))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(0.010000000000000000))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(0.010000000000000000))
	movwf	((c:___ftmul@f2+2)),c

	movf	((c:RTUInit@low)),c,w
	
	call	___lbtoft
	movff	0+?___lbtoft,(c:___ftmul@f1)
	movff	1+?___lbtoft,(c:___ftmul@f1+1)
	movff	2+?___lbtoft,(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftadd@f2)
	movff	1+?___ftmul,(c:___ftadd@f2+1)
	movff	2+?___ftmul,(c:___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(c:_thresh_temp1)
	movff	1+?___ftadd,(c:_thresh_temp1+1)
	movff	2+?___ftadd,(c:_thresh_temp1+2)
	line	107
	
l10313:
;rtu.c: 107: high = Read_b_eep(7);
	movlw	high(07h)
	movwf	((c:Read_b_eep@badd+1)),c
	movlw	low(07h)
	movwf	((c:Read_b_eep@badd)),c
	call	_Read_b_eep	;wreg free
	movwf	((c:RTUInit@high)),c
	line	108
	
l10315:
;rtu.c: 108: _delay(50);
	movlw	10
u9047:
	nop
decfsz	wreg,f
	goto	u9047

	line	109
	
l10317:
;rtu.c: 109: low = Read_b_eep(8);
	movlw	high(08h)
	movwf	((c:Read_b_eep@badd+1)),c
	movlw	low(08h)
	movwf	((c:Read_b_eep@badd)),c
	call	_Read_b_eep	;wreg free
	movwf	((c:RTUInit@low)),c
	line	110
	
l10319:
;rtu.c: 110: _delay(50);
	movlw	10
u9057:
	nop
decfsz	wreg,f
	goto	u9057

	line	111
	
l10321:
;rtu.c: 111: thresh_hum1 = high + (low*0.01);
	movf	((c:RTUInit@high)),c,w
	
	call	___lbtoft
	movff	0+?___lbtoft,(c:___ftadd@f1)
	movff	1+?___lbtoft,(c:___ftadd@f1+1)
	movff	2+?___lbtoft,(c:___ftadd@f1+2)
	movlw	low(float24(0.010000000000000000))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(0.010000000000000000))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(0.010000000000000000))
	movwf	((c:___ftmul@f2+2)),c

	movf	((c:RTUInit@low)),c,w
	
	call	___lbtoft
	movff	0+?___lbtoft,(c:___ftmul@f1)
	movff	1+?___lbtoft,(c:___ftmul@f1+1)
	movff	2+?___lbtoft,(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftadd@f2)
	movff	1+?___ftmul,(c:___ftadd@f2+1)
	movff	2+?___ftmul,(c:___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_thresh_hum1)
	movff	1+?___ftadd,(_thresh_hum1+1)
	movff	2+?___ftadd,(_thresh_hum1+2)
	line	113
	
l10323:
;rtu.c: 113: high = Read_b_eep(9);
	movlw	high(09h)
	movwf	((c:Read_b_eep@badd+1)),c
	movlw	low(09h)
	movwf	((c:Read_b_eep@badd)),c
	call	_Read_b_eep	;wreg free
	movwf	((c:RTUInit@high)),c
	line	114
	
l10325:
;rtu.c: 114: _delay(50);
	movlw	10
u9067:
	nop
decfsz	wreg,f
	goto	u9067

	line	115
	
l10327:
;rtu.c: 115: low = Read_b_eep(10);
	movlw	high(0Ah)
	movwf	((c:Read_b_eep@badd+1)),c
	movlw	low(0Ah)
	movwf	((c:Read_b_eep@badd)),c
	call	_Read_b_eep	;wreg free
	movwf	((c:RTUInit@low)),c
	line	116
	
l10329:
;rtu.c: 116: _delay(50);
	movlw	10
u9077:
	nop
decfsz	wreg,f
	goto	u9077

	line	117
	
l10331:
;rtu.c: 117: thresh_temp2 = high + (low*0.01);
	movf	((c:RTUInit@high)),c,w
	
	call	___lbtoft
	movff	0+?___lbtoft,(c:___ftadd@f1)
	movff	1+?___lbtoft,(c:___ftadd@f1+1)
	movff	2+?___lbtoft,(c:___ftadd@f1+2)
	movlw	low(float24(0.010000000000000000))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(0.010000000000000000))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(0.010000000000000000))
	movwf	((c:___ftmul@f2+2)),c

	movf	((c:RTUInit@low)),c,w
	
	call	___lbtoft
	movff	0+?___lbtoft,(c:___ftmul@f1)
	movff	1+?___lbtoft,(c:___ftmul@f1+1)
	movff	2+?___lbtoft,(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftadd@f2)
	movff	1+?___ftmul,(c:___ftadd@f2+1)
	movff	2+?___ftmul,(c:___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_thresh_temp2)
	movff	1+?___ftadd,(_thresh_temp2+1)
	movff	2+?___ftadd,(_thresh_temp2+2)
	line	119
	
l10333:
;rtu.c: 119: high = Read_b_eep(11);
	movlw	high(0Bh)
	movwf	((c:Read_b_eep@badd+1)),c
	movlw	low(0Bh)
	movwf	((c:Read_b_eep@badd)),c
	call	_Read_b_eep	;wreg free
	movwf	((c:RTUInit@high)),c
	line	120
	
l10335:
;rtu.c: 120: _delay(50);
	movlw	10
u9087:
	nop
decfsz	wreg,f
	goto	u9087

	line	121
	
l10337:
;rtu.c: 121: low = Read_b_eep(12);
	movlw	high(0Ch)
	movwf	((c:Read_b_eep@badd+1)),c
	movlw	low(0Ch)
	movwf	((c:Read_b_eep@badd)),c
	call	_Read_b_eep	;wreg free
	movwf	((c:RTUInit@low)),c
	line	122
	
l10339:
;rtu.c: 122: _delay(50);
	movlw	10
u9097:
	nop
decfsz	wreg,f
	goto	u9097

	line	123
	
l10341:
;rtu.c: 123: thresh_hum2 = high + (low*0.01);
	movf	((c:RTUInit@high)),c,w
	
	call	___lbtoft
	movff	0+?___lbtoft,(c:___ftadd@f1)
	movff	1+?___lbtoft,(c:___ftadd@f1+1)
	movff	2+?___lbtoft,(c:___ftadd@f1+2)
	movlw	low(float24(0.010000000000000000))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(0.010000000000000000))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(0.010000000000000000))
	movwf	((c:___ftmul@f2+2)),c

	movf	((c:RTUInit@low)),c,w
	
	call	___lbtoft
	movff	0+?___lbtoft,(c:___ftmul@f1)
	movff	1+?___lbtoft,(c:___ftmul@f1+1)
	movff	2+?___lbtoft,(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftadd@f2)
	movff	1+?___ftmul,(c:___ftadd@f2+1)
	movff	2+?___ftmul,(c:___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_thresh_hum2)
	movff	1+?___ftadd,(_thresh_hum2+1)
	movff	2+?___ftadd,(_thresh_hum2+2)
	line	125
	
l10343:
;rtu.c: 125: high = Read_b_eep(13);
	movlw	high(0Dh)
	movwf	((c:Read_b_eep@badd+1)),c
	movlw	low(0Dh)
	movwf	((c:Read_b_eep@badd)),c
	call	_Read_b_eep	;wreg free
	movwf	((c:RTUInit@high)),c
	line	126
	
l10345:
;rtu.c: 126: _delay(50);
	movlw	10
u9107:
	nop
decfsz	wreg,f
	goto	u9107

	line	127
	
l10347:
;rtu.c: 127: low = Read_b_eep(14);
	movlw	high(0Eh)
	movwf	((c:Read_b_eep@badd+1)),c
	movlw	low(0Eh)
	movwf	((c:Read_b_eep@badd)),c
	call	_Read_b_eep	;wreg free
	movwf	((c:RTUInit@low)),c
	line	128
	
l10349:
;rtu.c: 128: _delay(50);
	movlw	10
u9117:
	nop
decfsz	wreg,f
	goto	u9117

	line	129
	
l10351:
;rtu.c: 129: trig_temp1 = high + (low*0.01);
	movf	((c:RTUInit@high)),c,w
	
	call	___lbtoft
	movff	0+?___lbtoft,(c:___ftadd@f1)
	movff	1+?___lbtoft,(c:___ftadd@f1+1)
	movff	2+?___lbtoft,(c:___ftadd@f1+2)
	movlw	low(float24(0.010000000000000000))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(0.010000000000000000))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(0.010000000000000000))
	movwf	((c:___ftmul@f2+2)),c

	movf	((c:RTUInit@low)),c,w
	
	call	___lbtoft
	movff	0+?___lbtoft,(c:___ftmul@f1)
	movff	1+?___lbtoft,(c:___ftmul@f1+1)
	movff	2+?___lbtoft,(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftadd@f2)
	movff	1+?___ftmul,(c:___ftadd@f2+1)
	movff	2+?___ftmul,(c:___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_trig_temp1)
	movff	1+?___ftadd,(_trig_temp1+1)
	movff	2+?___ftadd,(_trig_temp1+2)
	line	131
	
l10353:
;rtu.c: 131: high = Read_b_eep(15);
	movlw	high(0Fh)
	movwf	((c:Read_b_eep@badd+1)),c
	movlw	low(0Fh)
	movwf	((c:Read_b_eep@badd)),c
	call	_Read_b_eep	;wreg free
	movwf	((c:RTUInit@high)),c
	line	132
	
l10355:
;rtu.c: 132: _delay(50);
	movlw	10
u9127:
	nop
decfsz	wreg,f
	goto	u9127

	line	133
	
l10357:
;rtu.c: 133: low = Read_b_eep(16);
	movlw	high(010h)
	movwf	((c:Read_b_eep@badd+1)),c
	movlw	low(010h)
	movwf	((c:Read_b_eep@badd)),c
	call	_Read_b_eep	;wreg free
	movwf	((c:RTUInit@low)),c
	line	134
	
l10359:
;rtu.c: 134: _delay(50);
	movlw	10
u9137:
	nop
decfsz	wreg,f
	goto	u9137

	line	135
	
l10361:
;rtu.c: 135: trig_hum1 = high + (low*0.01);
	movf	((c:RTUInit@high)),c,w
	
	call	___lbtoft
	movff	0+?___lbtoft,(c:___ftadd@f1)
	movff	1+?___lbtoft,(c:___ftadd@f1+1)
	movff	2+?___lbtoft,(c:___ftadd@f1+2)
	movlw	low(float24(0.010000000000000000))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(0.010000000000000000))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(0.010000000000000000))
	movwf	((c:___ftmul@f2+2)),c

	movf	((c:RTUInit@low)),c,w
	
	call	___lbtoft
	movff	0+?___lbtoft,(c:___ftmul@f1)
	movff	1+?___lbtoft,(c:___ftmul@f1+1)
	movff	2+?___lbtoft,(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftadd@f2)
	movff	1+?___ftmul,(c:___ftadd@f2+1)
	movff	2+?___ftmul,(c:___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_trig_hum1)
	movff	1+?___ftadd,(_trig_hum1+1)
	movff	2+?___ftadd,(_trig_hum1+2)
	line	137
	
l10363:
;rtu.c: 137: high = Read_b_eep(17);
	movlw	high(011h)
	movwf	((c:Read_b_eep@badd+1)),c
	movlw	low(011h)
	movwf	((c:Read_b_eep@badd)),c
	call	_Read_b_eep	;wreg free
	movwf	((c:RTUInit@high)),c
	line	138
	
l10365:
;rtu.c: 138: _delay(50);
	movlw	10
u9147:
	nop
decfsz	wreg,f
	goto	u9147

	line	139
	
l10367:
;rtu.c: 139: low = Read_b_eep(18);
	movlw	high(012h)
	movwf	((c:Read_b_eep@badd+1)),c
	movlw	low(012h)
	movwf	((c:Read_b_eep@badd)),c
	call	_Read_b_eep	;wreg free
	movwf	((c:RTUInit@low)),c
	line	140
	
l10369:
;rtu.c: 140: _delay(50);
	movlw	10
u9157:
	nop
decfsz	wreg,f
	goto	u9157

	line	141
	
l10371:
;rtu.c: 141: trig_temp2 = high + (low*0.01);
	movf	((c:RTUInit@high)),c,w
	
	call	___lbtoft
	movff	0+?___lbtoft,(c:___ftadd@f1)
	movff	1+?___lbtoft,(c:___ftadd@f1+1)
	movff	2+?___lbtoft,(c:___ftadd@f1+2)
	movlw	low(float24(0.010000000000000000))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(0.010000000000000000))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(0.010000000000000000))
	movwf	((c:___ftmul@f2+2)),c

	movf	((c:RTUInit@low)),c,w
	
	call	___lbtoft
	movff	0+?___lbtoft,(c:___ftmul@f1)
	movff	1+?___lbtoft,(c:___ftmul@f1+1)
	movff	2+?___lbtoft,(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftadd@f2)
	movff	1+?___ftmul,(c:___ftadd@f2+1)
	movff	2+?___ftmul,(c:___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_trig_temp2)
	movff	1+?___ftadd,(_trig_temp2+1)
	movff	2+?___ftadd,(_trig_temp2+2)
	line	143
	
l10373:
;rtu.c: 143: high = Read_b_eep(19);
	movlw	high(013h)
	movwf	((c:Read_b_eep@badd+1)),c
	movlw	low(013h)
	movwf	((c:Read_b_eep@badd)),c
	call	_Read_b_eep	;wreg free
	movwf	((c:RTUInit@high)),c
	line	144
	
l10375:
;rtu.c: 144: _delay(50);
	movlw	10
u9167:
	nop
decfsz	wreg,f
	goto	u9167

	line	145
	
l10377:
;rtu.c: 145: low = Read_b_eep(20);
	movlw	high(014h)
	movwf	((c:Read_b_eep@badd+1)),c
	movlw	low(014h)
	movwf	((c:Read_b_eep@badd)),c
	call	_Read_b_eep	;wreg free
	movwf	((c:RTUInit@low)),c
	line	146
	
l10379:
;rtu.c: 146: _delay(50);
	movlw	10
u9177:
	nop
decfsz	wreg,f
	goto	u9177

	line	147
	
l10381:
;rtu.c: 147: trig_hum2 = high + (low*0.01);
	movf	((c:RTUInit@high)),c,w
	
	call	___lbtoft
	movff	0+?___lbtoft,(c:___ftadd@f1)
	movff	1+?___lbtoft,(c:___ftadd@f1+1)
	movff	2+?___lbtoft,(c:___ftadd@f1+2)
	movlw	low(float24(0.010000000000000000))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(0.010000000000000000))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(0.010000000000000000))
	movwf	((c:___ftmul@f2+2)),c

	movf	((c:RTUInit@low)),c,w
	
	call	___lbtoft
	movff	0+?___lbtoft,(c:___ftmul@f1)
	movff	1+?___lbtoft,(c:___ftmul@f1+1)
	movff	2+?___lbtoft,(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftadd@f2)
	movff	1+?___ftmul,(c:___ftadd@f2+1)
	movff	2+?___ftmul,(c:___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_trig_hum2)
	movff	1+?___ftadd,(_trig_hum2+1)
	movff	2+?___ftadd,(_trig_hum2+2)
	line	150
	
l10383:
;rtu.c: 150: RB1 = 1;
	bsf	c:(31753/8),(31753)&7	;volatile
	line	151
	
l10385:
;rtu.c: 151: LCDInit(0B00000000);
	movlw	(0)&0ffh
	
	call	_LCDInit
	line	153
	
l10387:
;rtu.c: 153: (LCDByte(0b00000001,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(01h)&0ffh
	
	call	_LCDByte
	line	156
	
l10389:
;rtu.c: 156: USARTInit(9600);
	movlw	high(02580h)
	movwf	((c:USARTInit@baud_rate+1)),c
	movlw	low(02580h)
	movwf	((c:USARTInit@baud_rate)),c
	call	_USARTInit	;wreg free
	line	159
	
l10391:
;rtu.c: 159: INTEDG0 = 1;
	bsf	c:(32654/8),(32654)&7	;volatile
	line	160
	
l10393:
;rtu.c: 160: INT0IE = 1;
	bsf	c:(32660/8),(32660)&7	;volatile
	line	161
	
l10395:
;rtu.c: 161: (INTCONbits.GIE = 1);
	bsf	((c:4082)),c,7	;volatile
	line	162
	
l752:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_RTUInit
	__end_of_RTUInit:
	signat	_RTUInit,88
	global	_ds1307_set_date_time

;; *************** function _ds1307_set_date_time *****************
;; Defined at:
;;		line 45 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\myrtc.C"
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
;; This function uses a non-reentrant model
;;
psect	text65,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\myrtc.C"
	line	45
global __ptext65
__ptext65:
psect	text65
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\myrtc.C"
	line	45
	global	__size_of_ds1307_set_date_time
	__size_of_ds1307_set_date_time	equ	__end_of_ds1307_set_date_time-_ds1307_set_date_time
	
_ds1307_set_date_time:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
	line	47
	
l9671:
;myrtc.C: 47: sec &= 0x7F;
	bcf	(0+(7/8)+(c:_sec)),c,(7)&7
	line	48
	
l9673:
;myrtc.C: 48: hr &= 0x3F;
	movlw	(03Fh)&0ffh
	andwf	((c:_hr)),c
	line	50
	
l9675:
;myrtc.C: 50: sec = bin2bcd(sec);
	movf	((c:_sec)),c,w
	
	call	_bin2bcd
	movwf	((c:_sec)),c
	line	51
	
l9677:
;myrtc.C: 51: min = bin2bcd(min);
	movf	((c:_min)),c,w
	
	call	_bin2bcd
	movwf	((c:_min)),c
	line	52
	
l9679:
;myrtc.C: 52: hr = bin2bcd(hr);
	movf	((c:_hr)),c,w
	
	call	_bin2bcd
	movwf	((c:_hr)),c
	line	53
	
l9681:
;myrtc.C: 53: dow = bin2bcd(dow);
	movf	((c:_dow)),c,w
	
	call	_bin2bcd
	movwf	((c:_dow)),c
	line	54
	
l9683:
;myrtc.C: 54: day = bin2bcd(day);
	movf	((c:_day)),c,w
	
	call	_bin2bcd
	movwf	((c:_day)),c
	line	55
	
l9685:
;myrtc.C: 55: month = bin2bcd(month);
	movf	((c:_month)),c,w
	
	call	_bin2bcd
	movwf	((c:_month)),c
	line	56
	
l9687:
;myrtc.C: 56: year = bin2bcd(year);
	movf	((c:_year)),c,w
	
	call	_bin2bcd
	movwf	((c:_year)),c
	line	58
	
l9689:
;myrtc.C: 58: IdleI2C();
	call	_IdleI2C	;wreg free
	line	59
	
l9691:
;myrtc.C: 59: SSPCON2bits.SEN=1;while(SSPCON2bits.SEN);
	bsf	((c:4037)),c,0	;volatile
	goto	l230
	
l231:
	
l230:
	btfsc	((c:4037)),c,0	;volatile
	goto	u7621
	goto	u7620
u7621:
	goto	l230
u7620:
	goto	l9693
	
l232:
	line	60
	
l9693:
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
	
l9695:
;myrtc.C: 80: SSPCON2bits.PEN=1;while(SSPCON2bits.PEN);
	bsf	((c:4037)),c,2	;volatile
	goto	l233
	
l234:
	
l233:
	btfsc	((c:4037)),c,2	;volatile
	goto	u7631
	goto	u7630
u7631:
	goto	l233
u7630:
	goto	l236
	
l235:
	line	81
	
l236:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_ds1307_set_date_time
	__end_of_ds1307_set_date_time:
	signat	_ds1307_set_date_time,88
	global	_ds1307_init

;; *************** function _ds1307_init *****************
;; Defined at:
;;		line 4 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\myrtc.C"
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
psect	text66,class=CODE,space=0,reloc=2
	line	4
global __ptext66
__ptext66:
psect	text66
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\myrtc.C"
	line	4
	global	__size_of_ds1307_init
	__size_of_ds1307_init	equ	__end_of_ds1307_init-_ds1307_init
	
_ds1307_init:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
	line	6
	
l9635:
;myrtc.C: 6: unsigned char seconds = 0;
	movlw	low(0)
	movwf	((c:ds1307_init@seconds)),c
	line	8
	
l9637:
;myrtc.C: 8: IdleI2C();
	call	_IdleI2C	;wreg free
	line	9
	
l9639:
;myrtc.C: 9: SSPCON2bits.SEN=1;while(SSPCON2bits.SEN);
	bsf	((c:4037)),c,0	;volatile
	goto	l206
	
l207:
	
l206:
	btfsc	((c:4037)),c,0	;volatile
	goto	u7551
	goto	u7550
u7551:
	goto	l206
u7550:
	goto	l9641
	
l208:
	line	10
	
l9641:
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
	
l9643:
;myrtc.C: 14: SSPCON2bits.RSEN=1;while(SSPCON2bits.RSEN);
	bsf	((c:4037)),c,1	;volatile
	goto	l209
	
l210:
	
l209:
	btfsc	((c:4037)),c,1	;volatile
	goto	u7561
	goto	u7560
u7561:
	goto	l209
u7560:
	goto	l9645
	
l211:
	line	15
	
l9645:
;myrtc.C: 15: WriteI2C(0xD1);
	movlw	(0D1h)&0ffh
	
	call	_WriteI2C
	line	16
;myrtc.C: 16: seconds = ReadI2C();
	call	_ReadI2C	;wreg free
	movwf	((c:ds1307_init@seconds)),c
	line	17
	
l9647:
;myrtc.C: 17: SSPCON2bits.ACKDT=1;SSPCON2bits.ACKEN=1;while(SSPCON2bits.ACKEN);
	bsf	((c:4037)),c,5	;volatile
	
l9649:
	bsf	((c:4037)),c,4	;volatile
	goto	l212
	
l213:
	
l212:
	btfsc	((c:4037)),c,4	;volatile
	goto	u7571
	goto	u7570
u7571:
	goto	l212
u7570:
	
l214:
	line	18
;myrtc.C: 18: SSPCON2bits.PEN=1;while(SSPCON2bits.PEN);
	bsf	((c:4037)),c,2	;volatile
	goto	l215
	
l216:
	
l215:
	btfsc	((c:4037)),c,2	;volatile
	goto	u7581
	goto	u7580
u7581:
	goto	l215
u7580:
	goto	l9651
	
l217:
	line	20
	
l9651:
;myrtc.C: 20: seconds = bcd2bin(seconds);
	movf	((c:ds1307_init@seconds)),c,w
	
	call	_bcd2bin
	movwf	((c:ds1307_init@seconds)),c
	line	21
	
l9653:
;myrtc.C: 21: seconds &= 0x7F;
	bcf	(0+(7/8)+(c:ds1307_init@seconds)),c,(7)&7
	line	22
	
l9655:
;myrtc.C: 22: seconds = bin2bcd(seconds);
	movf	((c:ds1307_init@seconds)),c,w
	
	call	_bin2bcd
	movwf	((c:ds1307_init@seconds)),c
	line	24
	
l9657:
;myrtc.C: 24: _delay(10);
	movlw	2
u9187:
	nop
decfsz	wreg,f
	goto	u9187

	line	26
	
l9659:
;myrtc.C: 26: IdleI2C();
	call	_IdleI2C	;wreg free
	line	27
	
l9661:
;myrtc.C: 27: SSPCON2bits.SEN=1;while(SSPCON2bits.SEN);
	bsf	((c:4037)),c,0	;volatile
	goto	l218
	
l219:
	
l218:
	btfsc	((c:4037)),c,0	;volatile
	goto	u7591
	goto	u7590
u7591:
	goto	l218
u7590:
	goto	l9663
	
l220:
	line	28
	
l9663:
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
	
l9665:
;myrtc.C: 34: SSPCON2bits.RSEN=1;while(SSPCON2bits.RSEN);
	bsf	((c:4037)),c,1	;volatile
	goto	l221
	
l222:
	
l221:
	btfsc	((c:4037)),c,1	;volatile
	goto	u7601
	goto	u7600
u7601:
	goto	l221
u7600:
	goto	l9667
	
l223:
	line	35
	
l9667:
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
	
l9669:
;myrtc.C: 41: SSPCON2bits.PEN=1;while(SSPCON2bits.PEN);
	bsf	((c:4037)),c,2	;volatile
	goto	l224
	
l225:
	
l224:
	btfsc	((c:4037)),c,2	;volatile
	goto	u7611
	goto	u7610
u7611:
	goto	l224
u7610:
	goto	l227
	
l226:
	line	43
	
l227:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_ds1307_init
	__end_of_ds1307_init:
	signat	_ds1307_init,88
	global	_bin2bcd

;; *************** function _bin2bcd *****************
;; Defined at:
;;		line 135 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\myrtc.C"
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
psect	text67,class=CODE,space=0,reloc=2
	line	135
global __ptext67
__ptext67:
psect	text67
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\myrtc.C"
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
	
l9205:
;myrtc.C: 137: unsigned char temp;
;myrtc.C: 138: unsigned char retval;
;myrtc.C: 140: temp = binary_value;
	movff	(c:bin2bcd@binary_value),(c:bin2bcd@temp)
	line	141
	
l9207:
;myrtc.C: 141: retval = 0;
	movlw	low(0)
	movwf	((c:bin2bcd@retval)),c
	goto	l9209
	line	143
;myrtc.C: 143: while(1)
	
l284:
	line	147
	
l9209:
;myrtc.C: 144: {
;myrtc.C: 147: if(temp >= 10)
	movlw	(0Ah-1)
	cpfsgt	((c:bin2bcd@temp)),c
	goto	u7261
	goto	u7260
u7261:
	goto	l9213
u7260:
	line	149
	
l9211:
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
	goto	l9209
	line	152
	
l285:
	line	154
	
l9213:
;myrtc.C: 152: else
;myrtc.C: 153: {
;myrtc.C: 154: retval += temp;
	movf	((c:bin2bcd@temp)),c,w
	addwf	((c:bin2bcd@retval)),c
	line	155
;myrtc.C: 155: break;
	goto	l9215
	line	156
	
l286:
	goto	l9209
	line	157
	
l288:
	line	143
	goto	l9209
	
l287:
	line	159
	
l9215:
;myrtc.C: 156: }
;myrtc.C: 157: }
;myrtc.C: 159: return(retval);
	movf	((c:bin2bcd@retval)),c,w
	goto	l289
	
l9217:
	line	160
	
l289:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_bin2bcd
	__end_of_bin2bcd:
	signat	_bin2bcd,4217
	global	_ds1307_get_time

;; *************** function _ds1307_get_time *****************
;; Defined at:
;;		line 111 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\myrtc.C"
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
;;		_Creat_Packet
;;		_RTUInit
;;		_main
;;		_rtc_setting
;;		_rtc_local_display
;; This function uses a non-reentrant model
;;
psect	text68,class=CODE,space=0,reloc=2
	line	111
global __ptext68
__ptext68:
psect	text68
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\myrtc.C"
	line	111
	global	__size_of_ds1307_get_time
	__size_of_ds1307_get_time	equ	__end_of_ds1307_get_time-_ds1307_get_time
	
_ds1307_get_time:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
	line	113
	
l8885:
;myrtc.C: 113: IdleI2C();
	call	_IdleI2C	;wreg free
	line	114
	
l8887:
;myrtc.C: 114: SSPCON2bits.SEN=1;while(SSPCON2bits.SEN);
	bsf	((c:4037)),c,0	;volatile
	goto	l263
	
l264:
	
l263:
	btfsc	((c:4037)),c,0	;volatile
	goto	u6831
	goto	u6830
u6831:
	goto	l263
u6830:
	goto	l8889
	
l265:
	line	115
	
l8889:
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
	
l8891:
;myrtc.C: 119: SSPCON2bits.RSEN=1;while(SSPCON2bits.RSEN);
	bsf	((c:4037)),c,1	;volatile
	goto	l266
	
l267:
	
l266:
	btfsc	((c:4037)),c,1	;volatile
	goto	u6841
	goto	u6840
u6841:
	goto	l266
u6840:
	goto	l8893
	
l268:
	line	120
	
l8893:
;myrtc.C: 120: WriteI2C(0xD1);
	movlw	(0D1h)&0ffh
	
	call	_WriteI2C
	line	121
;myrtc.C: 121: sec = ReadI2C();
	call	_ReadI2C	;wreg free
	movwf	((c:_sec)),c
	line	122
	
l8895:
;myrtc.C: 122: SSPCON2bits.ACKDT=0;SSPCON2bits.ACKEN=1;while(SSPCON2bits.ACKEN);
	bcf	((c:4037)),c,5	;volatile
	
l8897:
	bsf	((c:4037)),c,4	;volatile
	goto	l269
	
l270:
	
l269:
	btfsc	((c:4037)),c,4	;volatile
	goto	u6851
	goto	u6850
u6851:
	goto	l269
u6850:
	goto	l8899
	
l271:
	line	123
	
l8899:
;myrtc.C: 123: min = ReadI2C();
	call	_ReadI2C	;wreg free
	movwf	((c:_min)),c
	line	124
	
l8901:
;myrtc.C: 124: SSPCON2bits.ACKDT=0;SSPCON2bits.ACKEN=1;while(SSPCON2bits.ACKEN);
	bcf	((c:4037)),c,5	;volatile
	
l8903:
	bsf	((c:4037)),c,4	;volatile
	goto	l272
	
l273:
	
l272:
	btfsc	((c:4037)),c,4	;volatile
	goto	u6861
	goto	u6860
u6861:
	goto	l272
u6860:
	goto	l8905
	
l274:
	line	125
	
l8905:
;myrtc.C: 125: hr = ReadI2C();
	call	_ReadI2C	;wreg free
	movwf	((c:_hr)),c
	line	126
	
l8907:
;myrtc.C: 126: SSPCON2bits.ACKDT=1;SSPCON2bits.ACKEN=1;while(SSPCON2bits.ACKEN);
	bsf	((c:4037)),c,5	;volatile
	
l8909:
	bsf	((c:4037)),c,4	;volatile
	goto	l275
	
l276:
	
l275:
	btfsc	((c:4037)),c,4	;volatile
	goto	u6871
	goto	u6870
u6871:
	goto	l275
u6870:
	
l277:
	line	127
;myrtc.C: 127: SSPCON2bits.PEN=1;while(SSPCON2bits.PEN);
	bsf	((c:4037)),c,2	;volatile
	goto	l278
	
l279:
	
l278:
	btfsc	((c:4037)),c,2	;volatile
	goto	u6881
	goto	u6880
u6881:
	goto	l278
u6880:
	goto	l8911
	
l280:
	line	130
	
l8911:
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
	
l281:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_ds1307_get_time
	__end_of_ds1307_get_time:
	signat	_ds1307_get_time,88
	global	_ds1307_get_date

;; *************** function _ds1307_get_date *****************
;; Defined at:
;;		line 83 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\myrtc.C"
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
psect	text69,class=CODE,space=0,reloc=2
	line	83
global __ptext69
__ptext69:
psect	text69
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\myrtc.C"
	line	83
	global	__size_of_ds1307_get_date
	__size_of_ds1307_get_date	equ	__end_of_ds1307_get_date-_ds1307_get_date
	
_ds1307_get_date:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
	line	85
	
l9697:
;myrtc.C: 85: IdleI2C();
	call	_IdleI2C	;wreg free
	line	86
	
l9699:
;myrtc.C: 86: SSPCON2bits.SEN=1;while(SSPCON2bits.SEN);
	bsf	((c:4037)),c,0	;volatile
	goto	l239
	
l240:
	
l239:
	btfsc	((c:4037)),c,0	;volatile
	goto	u7641
	goto	u7640
u7641:
	goto	l239
u7640:
	goto	l9701
	
l241:
	line	87
	
l9701:
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
	
l9703:
;myrtc.C: 92: SSPCON2bits.RSEN=1;while(SSPCON2bits.RSEN);
	bsf	((c:4037)),c,1	;volatile
	goto	l242
	
l243:
	
l242:
	btfsc	((c:4037)),c,1	;volatile
	goto	u7651
	goto	u7650
u7651:
	goto	l242
u7650:
	goto	l9705
	
l244:
	line	93
	
l9705:
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
	
l9707:
;myrtc.C: 96: SSPCON2bits.ACKDT=0;SSPCON2bits.ACKEN=1;while(SSPCON2bits.ACKEN);
	bcf	((c:4037)),c,5	;volatile
	
l9709:
	bsf	((c:4037)),c,4	;volatile
	goto	l245
	
l246:
	
l245:
	btfsc	((c:4037)),c,4	;volatile
	goto	u7661
	goto	u7660
u7661:
	goto	l245
u7660:
	goto	l9711
	
l247:
	line	97
	
l9711:
;myrtc.C: 97: day = ReadI2C();
	call	_ReadI2C	;wreg free
	movwf	((c:_day)),c
	line	98
	
l9713:
;myrtc.C: 98: SSPCON2bits.ACKDT=0;SSPCON2bits.ACKEN=1;while(SSPCON2bits.ACKEN);
	bcf	((c:4037)),c,5	;volatile
	
l9715:
	bsf	((c:4037)),c,4	;volatile
	goto	l248
	
l249:
	
l248:
	btfsc	((c:4037)),c,4	;volatile
	goto	u7671
	goto	u7670
u7671:
	goto	l248
u7670:
	goto	l9717
	
l250:
	line	99
	
l9717:
;myrtc.C: 99: month = ReadI2C();
	call	_ReadI2C	;wreg free
	movwf	((c:_month)),c
	line	100
	
l9719:
;myrtc.C: 100: SSPCON2bits.ACKDT=0;SSPCON2bits.ACKEN=1;while(SSPCON2bits.ACKEN);
	bcf	((c:4037)),c,5	;volatile
	
l9721:
	bsf	((c:4037)),c,4	;volatile
	goto	l251
	
l252:
	
l251:
	btfsc	((c:4037)),c,4	;volatile
	goto	u7681
	goto	u7680
u7681:
	goto	l251
u7680:
	goto	l9723
	
l253:
	line	101
	
l9723:
;myrtc.C: 101: year = ReadI2C();
	call	_ReadI2C	;wreg free
	movwf	((c:_year)),c
	line	102
	
l9725:
;myrtc.C: 102: SSPCON2bits.ACKDT=1;SSPCON2bits.ACKEN=1;while(SSPCON2bits.ACKEN);
	bsf	((c:4037)),c,5	;volatile
	
l9727:
	bsf	((c:4037)),c,4	;volatile
	goto	l254
	
l255:
	
l254:
	btfsc	((c:4037)),c,4	;volatile
	goto	u7691
	goto	u7690
u7691:
	goto	l254
u7690:
	
l256:
	line	103
;myrtc.C: 103: SSPCON2bits.PEN=1;while(SSPCON2bits.PEN);
	bsf	((c:4037)),c,2	;volatile
	goto	l257
	
l258:
	
l257:
	btfsc	((c:4037)),c,2	;volatile
	goto	u7701
	goto	u7700
u7701:
	goto	l257
u7700:
	goto	l9729
	
l259:
	line	105
	
l9729:
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
	
l260:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_ds1307_get_date
	__end_of_ds1307_get_date:
	signat	_ds1307_get_date,88
	global	_bcd2bin

;; *************** function _bcd2bin *****************
;; Defined at:
;;		line 164 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\myrtc.C"
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
psect	text70,class=CODE,space=0,reloc=2
	line	164
global __ptext70
__ptext70:
psect	text70
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\myrtc.C"
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
	
l8759:
;myrtc.C: 166: unsigned char temp;
;myrtc.C: 168: temp = bcd_value;
	movff	(c:bcd2bin@bcd_value),(c:bcd2bin@temp)
	line	170
	
l8761:
;myrtc.C: 170: temp >>= 1;
	bcf status,0
	rrcf	((c:bcd2bin@temp)),c

	line	172
	
l8763:
;myrtc.C: 172: temp &= 0x78;
	movlw	(078h)&0ffh
	andwf	((c:bcd2bin@temp)),c
	line	176
	
l8765:
;myrtc.C: 176: return(temp + (temp >> 2) + (bcd_value & 0x0f));
	movff	(c:bcd2bin@bcd_value),??_bcd2bin+0+0
	movlw	0Fh
	andwf	(??_bcd2bin+0+0),c
	rrncf	((c:bcd2bin@temp)),c,w
	rrncf	wreg
	andlw	(0ffh shr 2) & 0ffh
	addwf	(??_bcd2bin+0+0),c,w
	addwf	((c:bcd2bin@temp)),c,w
	goto	l292
	
l8767:
	line	177
	
l292:
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
psect	text71,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\i2c\i2c_writ.c"
	line	12
global __ptext71
__ptext71:
psect	text71
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
	
l8719:
	movff	(c:WriteI2C@data_out),(c:4041)	;volatile
	line	15
	
l8721:
	btfss	((c:4038)),c,7	;volatile
	goto	u6571
	goto	u6570
u6571:
	goto	l8727
u6570:
	goto	l1273
	line	16
	
l8723:
;	Return value of _WriteI2C is never used
	goto	l1273
	
l8725:
	goto	l1273
	line	17
	
l1272:
	line	19
	
l8727:
	movff	(c:4038),??_WriteI2C+0+0	;volatile
	movlw	0Fh
	andwf	(??_WriteI2C+0+0),c
	movf	(??_WriteI2C+0+0),c,w
	xorlw	08h

	btfsc	status,2
	goto	u6581
	goto	u6580
u6581:
	goto	l8739
u6580:
	
l8729:
	movff	(c:4038),??_WriteI2C+0+0	;volatile
	movlw	0Fh
	andwf	(??_WriteI2C+0+0),c
	movf	(??_WriteI2C+0+0),c,w
	xorlw	0Bh

	btfsc	status,2
	goto	u6591
	goto	u6590
u6591:
	goto	l8739
u6590:
	line	21
	
l8731:
	bsf	((c:4038)),c,4	;volatile
	line	22
	goto	l1276
	
l1277:
	
l1276:
	btfss	((c:3998)),c,3	;volatile
	goto	u6601
	goto	u6600
u6601:
	goto	l1276
u6600:
	
l1278:
	line	24
	btfsc	((c:4039)),c,2	;volatile
	goto	u6611
	goto	u6610
u6611:
	goto	l1273
u6610:
	
l8733:
	movf	((c:4039)),c,w	;volatile
	goto	l1273
	line	26
	
l8735:
;	Return value of _WriteI2C is never used
	goto	l1273
	line	27
	
l8737:
	goto	l1273
	line	28
	
l1279:
	line	30
;	Return value of _WriteI2C is never used
	goto	l1273
	line	31
	
l1280:
	line	32
	goto	l1273
	line	33
	
l1275:
	
l8739:
	movff	(c:4038),??_WriteI2C+0+0	;volatile
	movlw	0Fh
	andwf	(??_WriteI2C+0+0),c
	movf	(??_WriteI2C+0+0),c,w
	xorlw	08h

	btfsc	status,2
	goto	u6621
	goto	u6620
u6621:
	goto	l1285
u6620:
	
l8741:
	movff	(c:4038),??_WriteI2C+0+0	;volatile
	movlw	0Fh
	andwf	(??_WriteI2C+0+0),c
	movf	(??_WriteI2C+0+0),c,w
	xorlw	0Bh

	btfss	status,2
	goto	u6631
	goto	u6630
u6631:
	goto	l1273
u6630:
	goto	l1285
	
l1284:
	line	35
	goto	l1285
	
l1286:
	
l1285:
	btfsc	((c:4039)),c,0	;volatile
	goto	u6641
	goto	u6640
u6641:
	goto	l1285
u6640:
	goto	l8743
	
l1287:
	line	36
	
l8743:
	call	_IdleI2C	;wreg free
	line	37
	
l8745:
	movf	((c:4037)),c,w	;volatile
	goto	l1273
	line	38
	
l8747:
;	Return value of _WriteI2C is never used
	goto	l1273
	
l8749:
	goto	l1273
	line	39
	
l1288:
;	Return value of _WriteI2C is never used
	goto	l1273
	
l1289:
	goto	l1273
	line	40
	
l1282:
	goto	l1273
	line	42
	
l1281:
	goto	l1273
	
l1274:
	line	43
	
l1273:
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
psect	text72,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\i2c\i2c_idle.c"
	line	24
global __ptext72
__ptext72:
psect	text72
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\i2c\i2c_idle.c"
	line	24
	global	__size_of_IdleI2C
	__size_of_IdleI2C	equ	__end_of_IdleI2C-_IdleI2C
	
_IdleI2C:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
	line	26
	
l8547:
	goto	l8549
	
l1225:
	line	27
	goto	l8549
	
l1224:
	line	26
	
l8549:
	movff	(c:4037),??_IdleI2C+0+0	;volatile
	movlw	01Fh
	andwf	(??_IdleI2C+0+0),c
	btfss	status,2
	goto	u6331
	goto	u6330
u6331:
	goto	l8549
u6330:
	
l8551:
	btfsc	((c:4039)),c,2	;volatile
	goto	u6341
	goto	u6340
u6341:
	goto	l8549
u6340:
	goto	l1227
	
l1226:
	line	28
	
l1227:
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
psect	text73,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\i2c\i2c_read.c"
	line	11
global __ptext73
__ptext73:
psect	text73
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\i2c\i2c_read.c"
	line	11
	global	__size_of_ReadI2C
	__size_of_ReadI2C	equ	__end_of_ReadI2C-_ReadI2C
	
_ReadI2C:
;incstack = 0
	opt	stack 26
	dw	0FFFFh
	line	13
	
l8751:
	movff	(c:4038),??_ReadI2C+0+0	;volatile
	movlw	0Fh
	andwf	(??_ReadI2C+0+0),c
	movf	(??_ReadI2C+0+0),c,w
	xorlw	08h

	btfsc	status,2
	goto	u6651
	goto	u6650
u6651:
	goto	l1251
u6650:
	
l8753:
	movff	(c:4038),??_ReadI2C+0+0	;volatile
	movlw	0Fh
	andwf	(??_ReadI2C+0+0),c
	movf	(??_ReadI2C+0+0),c,w
	xorlw	0Bh

	btfss	status,2
	goto	u6661
	goto	u6660
u6661:
	goto	l1252
u6660:
	
l1251:
	line	14
	bsf	((c:4037)),c,3	;volatile
	goto	l1252
	
l1249:
	line	15
	goto	l1252
	
l1253:
	
l1252:
	btfss	((c:4039)),c,0	;volatile
	goto	u6671
	goto	u6670
u6671:
	goto	l1252
u6670:
	goto	l8755
	
l1254:
	line	16
	
l8755:
	movf	((c:4041)),c,w	;volatile
	goto	l1255
	
l8757:
	line	17
	
l1255:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_ReadI2C
	__end_of_ReadI2C:
	signat	_ReadI2C,89
	global	___lbtoft

;; *************** function ___lbtoft *****************
;; Defined at:
;;		line 27 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lbtoft.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   30[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   27[COMRAM] float 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_RTUInit
;; This function uses a non-reentrant model
;;
psect	text74,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lbtoft.c"
	line	27
global __ptext74
__ptext74:
psect	text74
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lbtoft.c"
	line	27
	global	__size_of___lbtoft
	__size_of___lbtoft	equ	__end_of___lbtoft-___lbtoft
	
___lbtoft:
;incstack = 0
	opt	stack 26
	dw	0FFFFh
;___lbtoft@c stored from wreg
	movwf	((c:___lbtoft@c)),c
	line	29
	
l10231:
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
	goto	l1738
	
l10233:
	line	30
	
l1738:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___lbtoft
	__end_of___lbtoft:
	signat	___lbtoft,4219
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   31[COMRAM] float 
;;  f2              3   34[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   41[COMRAM] unsigned um
;;  sign            1   45[COMRAM] unsigned char 
;;  cntr            1   44[COMRAM] unsigned char 
;;  exp             1   40[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   31[COMRAM] float 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_get_current_readings
;;		_float_to_int
;;		_voltage_to_temp
;;		_voltage_to_hum
;;		_RTUInit
;;		_pow
;;		_exp
;;		_log
;;		_eval_poly
;; This function uses a non-reentrant model
;;
psect	text75,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
global __ptext75
__ptext75:
psect	text75
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:
;incstack = 0
	opt	stack 21
	dw	0FFFFh
	line	67
	
l8387:
	movff	(c:___ftmul@f1+2),??___ftmul+0+0
	clrf	(??___ftmul+0+0+1)&0ffh,c
	clrf	(??___ftmul+0+0+2)&0ffh,c
	rlcf	((c:___ftmul@f1+1)),c,w
	rlcf	(??___ftmul+0+0)&0ffh,c
	bnc	u6131
	bsf	(??___ftmul+0+0+1)&0ffh,c,0
u6131:
	movf	(??___ftmul+0+0),c,w
	movwf	((c:___ftmul@exp)),c
	tstfsz	((c:___ftmul@exp))&0ffh
	goto	u6141
	goto	u6140
u6141:
	goto	l8393
u6140:
	line	68
	
l8389:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftmul)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftmul+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftmul+2)),c

	goto	l1682
	
l8391:
	goto	l1682
	
l1681:
	line	69
	
l8393:
	movff	(c:___ftmul@f2+2),??___ftmul+0+0
	clrf	(??___ftmul+0+0+1)&0ffh,c
	clrf	(??___ftmul+0+0+2)&0ffh,c
	rlcf	((c:___ftmul@f2+1)),c,w
	rlcf	(??___ftmul+0+0)&0ffh,c
	bnc	u6151
	bsf	(??___ftmul+0+0+1)&0ffh,c,0
u6151:
	movf	(??___ftmul+0+0),c,w
	movwf	((c:___ftmul@sign)),c
	tstfsz	((c:___ftmul@sign))&0ffh
	goto	u6161
	goto	u6160
u6161:
	goto	l8399
u6160:
	line	70
	
l8395:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftmul)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftmul+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftmul+2)),c

	goto	l1682
	
l8397:
	goto	l1682
	
l1683:
	line	71
	
l8399:
	movf	((c:___ftmul@sign)),c,w
	addlw	low(07Bh)
	addwf	((c:___ftmul@exp)),c
	line	72
	
l8401:
	movff	0+2+(c:___ftmul@f1),(c:___ftmul@sign)
	line	73
	movf	(0+2+(c:___ftmul@f2)),c,w
	xorwf	((c:___ftmul@sign)),c
	line	74
	movlw	(080h)&0ffh
	andwf	((c:___ftmul@sign)),c
	line	75
	
l8403:
	bsf	(0+(15/8)+(c:___ftmul@f1)),c,(15)&7
	line	77
	
l8405:
	bsf	(0+(15/8)+(c:___ftmul@f2)),c,(15)&7
	line	78
	
l8407:
	movlw	low(0FFFFh)
	andwf	((c:___ftmul@f2)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftmul@f2+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftmul@f2+2)),c

	line	79
	
l8409:
	movlw	low(0)
	movwf	((c:___ftmul@f3_as_product)),c
	movlw	high(0)
	movwf	((c:___ftmul@f3_as_product+1)),c
	movlw	low highword(0)
	movwf	((c:___ftmul@f3_as_product+2)),c

	line	134
	
l8411:
	movlw	low(07h)
	movwf	((c:___ftmul@cntr)),c
	goto	l8413
	line	135
	
l1684:
	line	136
	
l8413:
	
	btfss	((c:___ftmul@f1)),c,(0)&7
	goto	u6171
	goto	u6170
u6171:
	goto	l8417
u6170:
	line	137
	
l8415:
	movf	((c:___ftmul@f2)),c,w
	addwf	((c:___ftmul@f3_as_product)),c
	movf	((c:___ftmul@f2+1)),c,w
	addwfc	((c:___ftmul@f3_as_product+1)),c
	movf	((c:___ftmul@f2+2)),c,w
	addwfc	((c:___ftmul@f3_as_product+2)),c

	goto	l8417
	
l1685:
	line	138
	
l8417:
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
	
l8419:
	decfsz	((c:___ftmul@cntr)),c
	
	goto	l8413
	goto	l8421
	
l1686:
	line	143
	
l8421:
	movlw	low(09h)
	movwf	((c:___ftmul@cntr)),c
	goto	l8423
	line	144
	
l1687:
	line	145
	
l8423:
	
	btfss	((c:___ftmul@f1)),c,(0)&7
	goto	u6181
	goto	u6180
u6181:
	goto	l8427
u6180:
	line	146
	
l8425:
	movf	((c:___ftmul@f2)),c,w
	addwf	((c:___ftmul@f3_as_product)),c
	movf	((c:___ftmul@f2+1)),c,w
	addwfc	((c:___ftmul@f3_as_product+1)),c
	movf	((c:___ftmul@f2+2)),c,w
	addwfc	((c:___ftmul@f3_as_product+2)),c

	goto	l8427
	
l1688:
	line	147
	
l8427:
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
	
l8429:
	decfsz	((c:___ftmul@cntr)),c
	
	goto	l8423
	goto	l8431
	
l1689:
	line	156
	
l8431:
	movff	(c:___ftmul@f3_as_product),(c:___ftpack@arg)
	movff	(c:___ftmul@f3_as_product+1),(c:___ftpack@arg+1)
	movff	(c:___ftmul@f3_as_product+2),(c:___ftpack@arg+2)
	movff	(c:___ftmul@exp),(c:___ftpack@exp)
	movff	(c:___ftmul@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftmul)
	movff	1+?___ftpack,(c:?___ftmul+1)
	movff	2+?___ftpack,(c:?___ftmul+2)
	goto	l1682
	
l8433:
	line	157
	
l1682:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	___ftadd

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 86 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   49[COMRAM] float 
;;  f2              3   52[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   60[COMRAM] unsigned char 
;;  exp2            1   59[COMRAM] unsigned char 
;;  sign            1   58[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   49[COMRAM] float 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_voltage_to_temp
;;		_voltage_to_hum
;;		_RTUInit
;;		___ftsub
;;		_modf
;;		_floor
;;		_log
;;		_eval_poly
;; This function uses a non-reentrant model
;;
psect	text76,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
global __ptext76
__ptext76:
psect	text76
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:
;incstack = 0
	opt	stack 21
	dw	0FFFFh
	line	90
	
l8317:
	movff	(c:___ftadd@f1+2),??___ftadd+0+0
	clrf	(??___ftadd+0+0+1)&0ffh,c
	clrf	(??___ftadd+0+0+2)&0ffh,c
	rlcf	((c:___ftadd@f1+1)),c,w
	rlcf	(??___ftadd+0+0)&0ffh,c
	bnc	u5921
	bsf	(??___ftadd+0+0+1)&0ffh,c,0
u5921:
	movf	(??___ftadd+0+0),c,w
	movwf	((c:___ftadd@exp1)),c
	line	91
	movff	(c:___ftadd@f2+2),??___ftadd+0+0
	clrf	(??___ftadd+0+0+1)&0ffh,c
	clrf	(??___ftadd+0+0+2)&0ffh,c
	rlcf	((c:___ftadd@f2+1)),c,w
	rlcf	(??___ftadd+0+0)&0ffh,c
	bnc	u5931
	bsf	(??___ftadd+0+0+1)&0ffh,c,0
u5931:
	movf	(??___ftadd+0+0),c,w
	movwf	((c:___ftadd@exp2)),c
	line	92
	
l8319:
	movf	((c:___ftadd@exp1)),c,w
	btfsc	status,2
	goto	u5941
	goto	u5940
u5941:
	goto	l1635
u5940:
	
l8321:
	movf	((c:___ftadd@exp2)),c,w
	subwf	((c:___ftadd@exp1)),c,w
	btfsc	status,0
	goto	u5951
	goto	u5950
u5951:
	goto	l8325
u5950:
	
l8323:
	movf	((c:___ftadd@exp1)),c,w
	sublw	0
	addwf	((c:___ftadd@exp2)),c,w
	movwf	(??___ftadd+0+0)&0ffh,c
	movlw	(019h)&0ffh
	subwf	((??___ftadd+0+0)),c,w
	btfss	status,0
	goto	u5961
	goto	u5960
u5961:
	goto	l8325
u5960:
	
l1635:
	line	93
	movff	(c:___ftadd@f2),(c:?___ftadd)
	movff	(c:___ftadd@f2+1),(c:?___ftadd+1)
	movff	(c:___ftadd@f2+2),(c:?___ftadd+2)
	goto	l1636
	
l1633:
	line	94
	
l8325:
	movf	((c:___ftadd@exp2)),c,w
	btfsc	status,2
	goto	u5971
	goto	u5970
u5971:
	goto	l1639
u5970:
	
l8327:
	movf	((c:___ftadd@exp1)),c,w
	subwf	((c:___ftadd@exp2)),c,w
	btfsc	status,0
	goto	u5981
	goto	u5980
u5981:
	goto	l8331
u5980:
	
l8329:
	movf	((c:___ftadd@exp2)),c,w
	sublw	0
	addwf	((c:___ftadd@exp1)),c,w
	movwf	(??___ftadd+0+0)&0ffh,c
	movlw	(019h)&0ffh
	subwf	((??___ftadd+0+0)),c,w
	btfss	status,0
	goto	u5991
	goto	u5990
u5991:
	goto	l8331
u5990:
	
l1639:
	line	95
	movff	(c:___ftadd@f1),(c:?___ftadd)
	movff	(c:___ftadd@f1+1),(c:?___ftadd+1)
	movff	(c:___ftadd@f1+2),(c:?___ftadd+2)
	goto	l1636
	
l1637:
	line	96
	
l8331:
	movlw	low(06h)
	movwf	((c:___ftadd@sign)),c
	line	97
	
l8333:
	
	btfss	((c:___ftadd@f1+2)),c,(23)&7
	goto	u6001
	goto	u6000
u6001:
	goto	l8337
u6000:
	line	98
	
l8335:
	bsf	(0+(7/8)+(c:___ftadd@sign)),c,(7)&7
	goto	l8337
	
l1640:
	line	99
	
l8337:
	
	btfss	((c:___ftadd@f2+2)),c,(23)&7
	goto	u6011
	goto	u6010
u6011:
	goto	l1641
u6010:
	line	100
	
l8339:
	bsf	(0+(6/8)+(c:___ftadd@sign)),c,(6)&7
	
l1641:
	line	101
	bsf	(0+(15/8)+(c:___ftadd@f1)),c,(15)&7
	line	102
	
l8341:
	movlw	low(0FFFFh)
	andwf	((c:___ftadd@f1)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftadd@f1+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftadd@f1+2)),c

	line	103
	bsf	(0+(15/8)+(c:___ftadd@f2)),c,(15)&7
	line	104
	
l8343:
	movlw	low(0FFFFh)
	andwf	((c:___ftadd@f2)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftadd@f2+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftadd@f2+2)),c

	line	106
	
l8345:
	movf	((c:___ftadd@exp2)),c,w
	subwf	((c:___ftadd@exp1)),c,w
	btfsc	status,0
	goto	u6021
	goto	u6020
u6021:
	goto	l8357
u6020:
	goto	l8347
	line	109
	
l1643:
	line	110
	
l8347:
	bcf	status,0
	rlcf	((c:___ftadd@f2)),c
	rlcf	((c:___ftadd@f2+1)),c
	rlcf	((c:___ftadd@f2+2)),c
	line	111
	decf	((c:___ftadd@exp2)),c
	line	112
	
l8349:
	movf	((c:___ftadd@exp2)),c,w
	xorwf	((c:___ftadd@exp1)),c,w
	btfsc	status,2
	goto	u6031
	goto	u6030
u6031:
	goto	l8355
u6030:
	
l8351:
	decf	((c:___ftadd@sign)),c
	movff	(c:___ftadd@sign),??___ftadd+0+0
	movlw	07h
	andwf	(??___ftadd+0+0),c
	btfss	status,2
	goto	u6041
	goto	u6040
u6041:
	goto	l8347
u6040:
	goto	l8355
	
l1645:
	goto	l8355
	
l1646:
	line	113
	goto	l8355
	
l1648:
	line	114
	
l8353:
	bcf	status,0
	rrcf	((c:___ftadd@f1+2)),c
	rrcf	((c:___ftadd@f1+1)),c
	rrcf	((c:___ftadd@f1)),c
	line	115
	incf	((c:___ftadd@exp1)),c
	goto	l8355
	line	116
	
l1647:
	line	113
	
l8355:
	movf	((c:___ftadd@exp2)),c,w
	cpfseq	((c:___ftadd@exp1)),c
	goto	u6051
	goto	u6050
u6051:
	goto	l8353
u6050:
	goto	l1650
	
l1649:
	line	117
	goto	l1650
	
l1642:
	
l8357:
	movf	((c:___ftadd@exp1)),c,w
	subwf	((c:___ftadd@exp2)),c,w
	btfsc	status,0
	goto	u6061
	goto	u6060
u6061:
	goto	l1650
u6060:
	goto	l8359
	line	120
	
l1652:
	line	121
	
l8359:
	bcf	status,0
	rlcf	((c:___ftadd@f1)),c
	rlcf	((c:___ftadd@f1+1)),c
	rlcf	((c:___ftadd@f1+2)),c
	line	122
	decf	((c:___ftadd@exp1)),c
	line	123
	
l8361:
	movf	((c:___ftadd@exp2)),c,w
	xorwf	((c:___ftadd@exp1)),c,w
	btfsc	status,2
	goto	u6071
	goto	u6070
u6071:
	goto	l8367
u6070:
	
l8363:
	decf	((c:___ftadd@sign)),c
	movff	(c:___ftadd@sign),??___ftadd+0+0
	movlw	07h
	andwf	(??___ftadd+0+0),c
	btfss	status,2
	goto	u6081
	goto	u6080
u6081:
	goto	l8359
u6080:
	goto	l8367
	
l1654:
	goto	l8367
	
l1655:
	line	124
	goto	l8367
	
l1657:
	line	125
	
l8365:
	bcf	status,0
	rrcf	((c:___ftadd@f2+2)),c
	rrcf	((c:___ftadd@f2+1)),c
	rrcf	((c:___ftadd@f2)),c
	line	126
	incf	((c:___ftadd@exp2)),c
	goto	l8367
	line	127
	
l1656:
	line	124
	
l8367:
	movf	((c:___ftadd@exp2)),c,w
	cpfseq	((c:___ftadd@exp1)),c
	goto	u6091
	goto	u6090
u6091:
	goto	l8365
u6090:
	goto	l1650
	
l1658:
	goto	l1650
	line	128
	
l1651:
	line	129
	
l1650:
	
	btfss	((c:___ftadd@sign)),c,(7)&7
	goto	u6101
	goto	u6100
u6101:
	goto	l1659
u6100:
	line	131
	
l8369:
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
	
l1659:
	line	134
	
	btfss	((c:___ftadd@sign)),c,(6)&7
	goto	u6111
	goto	u6110
u6111:
	goto	l8373
u6110:
	line	136
	
l8371:
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

	goto	l8373
	line	138
	
l1660:
	line	139
	
l8373:
	movlw	low(0)
	movwf	((c:___ftadd@sign)),c
	line	140
	
l8375:
	movf	((c:___ftadd@f1)),c,w
	addwf	((c:___ftadd@f2)),c
	movf	((c:___ftadd@f1+1)),c,w
	addwfc	((c:___ftadd@f2+1)),c
	movf	((c:___ftadd@f1+2)),c,w
	addwfc	((c:___ftadd@f2+2)),c

	line	141
	
l8377:
	
	btfss	((c:___ftadd@f2+2)),c,(23)&7
	goto	u6121
	goto	u6120
u6121:
	goto	l8383
u6120:
	line	142
	
l8379:
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
	
l8381:
	movlw	low(01h)
	movwf	((c:___ftadd@sign)),c
	goto	l8383
	line	145
	
l1661:
	line	146
	
l8383:
	movff	(c:___ftadd@f2),(c:___ftpack@arg)
	movff	(c:___ftadd@f2+1),(c:___ftpack@arg+1)
	movff	(c:___ftadd@f2+2),(c:___ftpack@arg+2)
	movff	(c:___ftadd@exp1),(c:___ftpack@exp)
	movff	(c:___ftadd@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftadd)
	movff	1+?___ftpack,(c:?___ftadd+1)
	movff	2+?___ftpack,(c:?___ftadd+2)
	goto	l1636
	
l8385:
	line	148
	
l1636:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3   19[COMRAM] unsigned um
;;  exp             1   22[COMRAM] unsigned char 
;;  sign            1   23[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   19[COMRAM] float 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___altoft
;;		___attoft
;;		___awtoft
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___lbtoft
;;		___lltoft
;;		___lwtoft
;; This function uses a non-reentrant model
;;
psect	text77,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
global __ptext77
__ptext77:
psect	text77
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:
;incstack = 0
	opt	stack 21
	dw	0FFFFh
	line	64
	
l8171:
	movf	((c:___ftpack@exp)),c,w
	btfsc	status,2
	goto	u5771
	goto	u5770
u5771:
	goto	l8175
u5770:
	
l8173:
	movf	((c:___ftpack@arg)),c,w
	iorwf	((c:___ftpack@arg+1)),c,w
	iorwf	((c:___ftpack@arg+2)),c,w
	btfss	status,2
	goto	u5781
	goto	u5780
u5781:
	goto	l8181
u5780:
	goto	l8175
	
l1597:
	line	65
	
l8175:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftpack)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftpack+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftpack+2)),c

	goto	l1598
	
l8177:
	goto	l1598
	
l1595:
	line	66
	goto	l8181
	
l1600:
	line	67
	
l8179:
	incf	((c:___ftpack@exp)),c
	line	68
	bcf	status,0
	rrcf	((c:___ftpack@arg+2)),c
	rrcf	((c:___ftpack@arg+1)),c
	rrcf	((c:___ftpack@arg)),c
	goto	l8181
	line	69
	
l1599:
	line	66
	
l8181:
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
	goto	u5791
	goto	u5790
u5791:
	goto	l8179
u5790:
	goto	l8187
	
l1601:
	line	70
	goto	l8187
	
l1603:
	line	71
	
l8183:
	incf	((c:___ftpack@exp)),c
	line	72
	
l8185:
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
	goto	l8187
	line	74
	
l1602:
	line	70
	
l8187:
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
	goto	u5801
	goto	u5800
u5801:
	goto	l8183
u5800:
	goto	l8191
	
l1604:
	line	75
	goto	l8191
	
l1606:
	line	76
	
l8189:
	decf	((c:___ftpack@exp)),c
	line	77
	bcf	status,0
	rlcf	((c:___ftpack@arg)),c
	rlcf	((c:___ftpack@arg+1)),c
	rlcf	((c:___ftpack@arg+2)),c
	goto	l8191
	line	78
	
l1605:
	line	75
	
l8191:
	
	btfss	((c:___ftpack@arg+1)),c,(15)&7
	goto	u5811
	goto	u5810
u5811:
	goto	l8189
u5810:
	
l1607:
	line	79
	
	btfsc	((c:___ftpack@exp)),c,(0)&7
	goto	u5821
	goto	u5820
u5821:
	goto	l8195
u5820:
	line	80
	
l8193:
	bcf	(0+(15/8)+(c:___ftpack@arg)),c,(15)&7
	goto	l8195
	
l1608:
	line	81
	
l8195:
	bcf status,0
	rrcf	((c:___ftpack@exp)),c

	line	82
	movf	((c:___ftpack@exp)),c,w
	iorwf	((c:___ftpack@arg+2)),c

	line	83
	
l8197:
	movf	((c:___ftpack@sign)),c,w
	btfsc	status,2
	goto	u5831
	goto	u5830
u5831:
	goto	l8201
u5830:
	line	84
	
l8199:
	bsf	(0+(23/8)+(c:___ftpack@arg)),c,(23)&7
	goto	l8201
	
l1609:
	line	85
	
l8201:
	movff	(c:___ftpack@arg),(c:?___ftpack)
	movff	(c:___ftpack@arg+1),(c:?___ftpack+1)
	movff	(c:___ftpack@arg+2),(c:?___ftpack+2)
	goto	l1598
	
l8203:
	line	86
	
l1598:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
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
;;		_per_minute_reading
;;		_per_second_reading
;;		_rtc_setting
;;		_data_to_center
;; This function uses a non-reentrant model
;;
psect	text78,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\EEP\write_B.c"
	line	30
global __ptext78
__ptext78:
psect	text78
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\EEP\write_B.c"
	line	30
	global	__size_of_Write_b_eep
	__size_of_Write_b_eep	equ	__end_of_Write_b_eep-_Write_b_eep
	
_Write_b_eep:
;incstack = 0
	opt	stack 27
	dw	0FFFFh
	line	32
	
l10063:
	movlw	low(0)
	movwf	((c:Write_b_eep@GIE_BIT_VAL)),c
	line	33
	
l10065:
	movff	(c:Write_b_eep@badd),(c:4009)	;volatile
	line	34
	
l10067:
	movff	(c:Write_b_eep@bdat),(c:4008)	;volatile
	line	35
	
l10069:
	bcf	((c:4006)),c,7	;volatile
	line	36
	
l10071:
	bcf	((c:4006)),c,6	;volatile
	line	37
	
l10073:
	bsf	((c:4006)),c,2	;volatile
	line	38
	
l10075:
	movlw	0
	btfsc	((c:4082)),c,7	;volatile
	movlw	1
	movwf	((c:Write_b_eep@GIE_BIT_VAL)),c
	line	39
	
l10077:
	bcf	((c:4082)),c,7	;volatile
	line	40
	
l10079:
	movlw	low(055h)
	movwf	((c:4007)),c	;volatile
	line	41
	
l10081:
	movlw	low(0AAh)
	movwf	((c:4007)),c	;volatile
	line	42
	
l10083:
	bsf	((c:4006)),c,1	;volatile
	line	43
	goto	l1214
	
l1215:
	
l1214:
	btfsc	((c:4006)),c,1	;volatile
	goto	u7901
	goto	u7900
u7901:
	goto	l1214
u7900:
	
l1216:
	line	44
	btfsc	(c:Write_b_eep@GIE_BIT_VAL),c,0
	bra	u7915
	bcf	((c:4082)),c,7	;volatile
	bra	u7916
	u7915:
	bsf	((c:4082)),c,7	;volatile
	u7916:

	line	45
	bcf	((c:4006)),c,2	;volatile
	line	46
	
l1217:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_Write_b_eep
	__end_of_Write_b_eep:
	signat	_Write_b_eep,8312
	global	_USARTInit

;; *************** function _USARTInit *****************
;; Defined at:
;;		line 6 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\usart_pic18.c"
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
psect	text79,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\usart_pic18.c"
	line	6
global __ptext79
__ptext79:
psect	text79
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\usart_pic18.c"
	line	6
	global	__size_of_USARTInit
	__size_of_USARTInit	equ	__end_of_USARTInit-_USARTInit
	
_USARTInit:
;incstack = 0
	opt	stack 27
	dw	0FFFFh
	line	9
	
l10085:
;usart_pic18.c: 9: UQFront=UQEnd=-1;
	setf	((c:_UQEnd)),c	;volatile
	setf	((c:_UQFront)),c	;volatile
	line	13
;usart_pic18.c: 13: switch(baud_rate)
	goto	l10097
	line	15
;usart_pic18.c: 14: {
;usart_pic18.c: 15: case 9600:
	
l809:
	line	16
	
l10087:
;usart_pic18.c: 16: SPBRG=64;
	movlw	low(040h)
	movwf	((c:4015)),c	;volatile
	line	17
;usart_pic18.c: 17: break;
	goto	l810
	line	18
;usart_pic18.c: 18: case 19200:
	
l811:
	line	19
	
l10089:
;usart_pic18.c: 19: SPBRG=32;
	movlw	low(020h)
	movwf	((c:4015)),c	;volatile
	line	20
;usart_pic18.c: 20: break;
	goto	l810
	line	21
;usart_pic18.c: 21: case 38400:
	
l812:
	line	22
	
l10091:
;usart_pic18.c: 22: SPBRG=15;
	movlw	low(0Fh)
	movwf	((c:4015)),c	;volatile
	line	23
;usart_pic18.c: 23: break;
	goto	l810
	line	24
;usart_pic18.c: 24: case 57600:
	
l813:
	line	25
	
l10093:
;usart_pic18.c: 25: SPBRG=10;
	movlw	low(0Ah)
	movwf	((c:4015)),c	;volatile
	line	26
;usart_pic18.c: 26: break;
	goto	l810
	line	27
	
l10095:
;usart_pic18.c: 27: }
	goto	l810
	line	13
	
l808:
	
l10097:
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
	goto	l11235
	xorlw	75^37	; case 75
	skipnz
	goto	l11237
	xorlw	150^75	; case 150
	skipnz
	goto	l11239
	xorlw	225^150	; case 225
	skipnz
	goto	l11241
	goto	l810
	
l11235:
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 128 to 128
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_USARTInit+0+0,c,w
	xorlw	128^0	; case 128
	skipnz
	goto	l10087
	goto	l810
	
l11237:
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_USARTInit+0+0,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	l10089
	goto	l810
	
l11239:
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_USARTInit+0+0,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	l10091
	goto	l810
	
l11241:
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_USARTInit+0+0,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	l10093
	goto	l810

	line	27
	
l810:
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
	
l814:
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
;;		_RTUInit
;; This function uses a non-reentrant model
;;
psect	text80,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\EEP\read_B.c"
	line	23
global __ptext80
__ptext80:
psect	text80
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\EEP\read_B.c"
	line	23
	global	__size_of_Read_b_eep
	__size_of_Read_b_eep	equ	__end_of_Read_b_eep-_Read_b_eep
	
_Read_b_eep:
;incstack = 0
	opt	stack 27
	dw	0FFFFh
	line	25
	
l10045:
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
	
l10047:
	movf	((c:4008)),c,w	;volatile
	goto	l1201
	
l10049:
	line	32
	
l1201:
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
psect	text81,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic18\plib\i2c\i2c_open.c"
	line	14
global __ptext81
__ptext81:
psect	text81
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
	
l10051:
	movlw	(03Fh)&0ffh
	andwf	((c:4039)),c	;volatile
	line	17
	
l10053:
	movlw	low(0)
	movwf	((c:4038)),c	;volatile
	line	18
	
l10055:
	movlw	low(0)
	movwf	((c:4037)),c	;volatile
	line	19
	movf	((c:OpenI2C@sync_mode)),c,w
	iorwf	((c:4038)),c	;volatile
	line	20
	movf	((c:OpenI2C@slew)),c,w
	iorwf	((c:4039)),c	;volatile
	line	22
	
l10057:
	bsf	((c:3988)),c,3	;volatile
	line	23
	
l10059:
	bsf	((c:3988)),c,4	;volatile
	line	24
	
l10061:
	bsf	(0+(5/8)+(c:4038)),c,(5)&7	;volatile
	line	26
	
l1238:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_OpenI2C
	__end_of_OpenI2C:
	signat	_OpenI2C,8312
	global	_MyDelay

;; *************** function _MyDelay *****************
;; Defined at:
;;		line 164 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\rtu.c"
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
;;		_Creat_Packet
;;		_RTUInit
;;		_beep
;;		_main
;;		_per_minute_reading
;;		_per_second_reading
;;		_rtc_setting
;;		_data_to_center
;;		_tx_packet
;; This function uses a non-reentrant model
;;
psect	text82,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\rtu.c"
	line	164
global __ptext82
__ptext82:
psect	text82
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\rtu.c"
	line	164
	global	__size_of_MyDelay
	__size_of_MyDelay	equ	__end_of_MyDelay-_MyDelay
	
_MyDelay:
;incstack = 0
	opt	stack 25
	dw	0FFFFh
	line	166
	
l8913:
;rtu.c: 166: while(ms > 0)
	goto	l755
	
l756:
	line	168
	
l8915:
;rtu.c: 167: {
;rtu.c: 168: _delay((unsigned long)((1)*(100000000/4000.0)));
	movlw	25
movwf	(??_MyDelay+0+0)&0ffh,c,f
	movlw	93
u9197:
	decfsz	wreg,f
	goto	u9197
	decfsz	(??_MyDelay+0+0)&0ffh,c,f
	goto	u9197

	line	169
	
l8917:
;rtu.c: 169: ms--;
	decf	((c:MyDelay@ms)),c
	btfss	status,0
	decf	((c:MyDelay@ms+1)),c
	line	170
	
l755:
	line	166
	movf	((c:MyDelay@ms+1)),c,w
	iorwf ((c:MyDelay@ms)),c,w

	btfss	status,2
	goto	u6891
	goto	u6890
u6891:
	goto	l8915
u6890:
	goto	l758
	
l757:
	line	171
	
l758:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_MyDelay
	__end_of_MyDelay:
	signat	_MyDelay,4216
	global	_LCDInit

;; *************** function _LCDInit *****************
;; Defined at:
;;		line 152 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\lcd_hd44780_pic18.c"
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
psect	text83,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\lcd_hd44780_pic18.c"
	line	152
global __ptext83
__ptext83:
psect	text83
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\lcd_hd44780_pic18.c"
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
	
l9519:
;lcd_hd44780_pic18.c: 168: _delay((unsigned long)((30)*(10000000/4000.0)));
	movlw	74
movwf	(??_LCDInit+0+0)&0ffh,c,f
	movlw	24
u9207:
	decfsz	wreg,f
	goto	u9207
	decfsz	(??_LCDInit+0+0)&0ffh,c,f
	goto	u9207
	nop2

	line	171
	
l9521:
;lcd_hd44780_pic18.c: 171: TRISB&=(~(0x0F<<4));
	movlw	(0Fh)&0ffh
	andwf	((c:3987)),c	;volatile
	line	173
	
l9523:
;lcd_hd44780_pic18.c: 173: TRISDbits.TRISD6=0;
	bcf	((c:3989)),c,6	;volatile
	line	174
	
l9525:
;lcd_hd44780_pic18.c: 174: TRISDbits.TRISD2=0;
	bcf	((c:3989)),c,2	;volatile
	line	175
	
l9527:
;lcd_hd44780_pic18.c: 175: TRISDbits.TRISD3=0;
	bcf	((c:3989)),c,3	;volatile
	line	177
	
l9529:
;lcd_hd44780_pic18.c: 177: PORTB&=(~(0x0F<<4));
	movlw	(0Fh)&0ffh
	andwf	((c:3969)),c	;volatile
	line	179
	
l9531:
;lcd_hd44780_pic18.c: 179: (RD6=0);
	bcf	c:(31774/8),(31774)&7	;volatile
	line	180
	
l9533:
;lcd_hd44780_pic18.c: 180: (RD3=0);
	bcf	c:(31771/8),(31771)&7	;volatile
	line	181
	
l9535:
;lcd_hd44780_pic18.c: 181: (RD2=0);
	bcf	c:(31770/8),(31770)&7	;volatile
	line	184
	
l9537:
;lcd_hd44780_pic18.c: 184: _delay((unsigned long)((0.5)*(10000000/4000000.0)));
	nop
	line	186
	
l9539:
;lcd_hd44780_pic18.c: 186: (RD6=1);
	bsf	c:(31774/8),(31774)&7	;volatile
	line	187
	
l9541:
;lcd_hd44780_pic18.c: 187: PORTB|=((0b00000010)<<4);
	bsf	(0+(5/8)+(c:3969)),c,(5)&7	;volatile
	line	188
	
l9543:
;lcd_hd44780_pic18.c: 188: _delay((unsigned long)((1)*(10000000/4000000.0)));
		nop2	;2 cycle nop

	line	189
	
l9545:
;lcd_hd44780_pic18.c: 189: (RD6=0);
	bcf	c:(31774/8),(31774)&7	;volatile
	line	190
	
l9547:
;lcd_hd44780_pic18.c: 190: _delay((unsigned long)((1)*(10000000/4000000.0)));
		nop2	;2 cycle nop

	line	193
	
l9549:
;lcd_hd44780_pic18.c: 193: LCDBusyLoop();
	call	_LCDBusyLoop	;wreg free
	line	198
	
l9551:
;lcd_hd44780_pic18.c: 198: (LCDByte(0b00101000,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(028h)&0ffh
	
	call	_LCDByte
	line	199
	
l9553:
;lcd_hd44780_pic18.c: 199: (LCDByte(0b00001100|style,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movf	((c:LCDInit@style)),c,w
	iorlw	low(0Ch)
	
	call	_LCDByte
	line	202
	
l9555:
;lcd_hd44780_pic18.c: 202: (LCDByte(0b01000000,0));
	movlw	low(0)
	movwf	((c:LCDByte@isdata)),c
	movlw	(040h)&0ffh
	
	call	_LCDByte
	line	205
	
l9557:
;lcd_hd44780_pic18.c: 204: uint8_t __i;
;lcd_hd44780_pic18.c: 205: for(__i=0;__i<sizeof(__cgram);__i++)
	movlw	low(0)
	movwf	((c:LCDInit@__i)),c
	
l9559:
	movlw	(08h-1)
	cpfsgt	((c:LCDInit@__i)),c
	goto	u7431
	goto	u7430
u7431:
	goto	l9563
u7430:
	goto	l33
	
l9561:
	goto	l33
	line	206
	
l31:
	
l9563:
;lcd_hd44780_pic18.c: 206: (LCDByte(__cgram[__i],1));
	movlw	low(01h)
	movwf	((c:LCDByte@isdata)),c
	movf	((c:LCDInit@__i)),c,w
	mullw	01h
	movlb	0	; () banked
	movlw	low(___cgram)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(___cgram)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	
	call	_LCDByte
	line	205
	
l9565:
	incf	((c:LCDInit@__i)),c
	
l9567:
	movlw	(08h-1)
	cpfsgt	((c:LCDInit@__i)),c
	goto	u7441
	goto	u7440
u7441:
	goto	l9563
u7440:
	goto	l33
	
l32:
	line	209
	
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
;;		line 39 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\lcd_hd44780_pic18.c"
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
;;		_LCDInit
;;		_LCDWriteString
;;		_LCDWriteInt
;;		_LCDGotoXY
;;		_Eco_Test
;;		_Eco_Replay
;;		_Send_Packet
;;		_Receive_Packet
;;		_RTUInit
;;		_main
;;		_per_minute_reading
;;		_per_second_reading
;;		_rtc_setting
;;		_data_to_center
;;		_tx_packet
;;		_DisplayReadings
;;		_rtc_local_display
;; This function uses a non-reentrant model
;;
psect	text84,class=CODE,space=0,reloc=2
	line	39
global __ptext84
__ptext84:
psect	text84
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\lcd_hd44780_pic18.c"
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
	
l8519:
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
	
l8521:
;lcd_hd44780_pic18.c: 54: if(isdata==0)
	tstfsz	((c:LCDByte@isdata)),c
	goto	u6321
	goto	u6320
u6321:
	goto	l21
u6320:
	line	55
	
l8523:
;lcd_hd44780_pic18.c: 55: (RD2=0);
	bcf	c:(31770/8),(31770)&7	;volatile
	goto	l22
	line	56
	
l21:
	line	57
;lcd_hd44780_pic18.c: 56: else
;lcd_hd44780_pic18.c: 57: (RD2=1);
	bsf	c:(31770/8),(31770)&7	;volatile
	
l22:
	line	59
;lcd_hd44780_pic18.c: 59: _delay((unsigned long)((0.5)*(10000000/4000000.0)));
	nop
	line	61
;lcd_hd44780_pic18.c: 61: (RD6=1);
	bsf	c:(31774/8),(31774)&7	;volatile
	line	65
	
l8525:
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
	
l8527:
;lcd_hd44780_pic18.c: 66: PORTB=temp;
	movff	(c:LCDByte@temp),(c:3969)	;volatile
	line	68
	
l8529:
;lcd_hd44780_pic18.c: 68: _delay((unsigned long)((1)*(10000000/4000000.0)));
		nop2	;2 cycle nop

	line	72
	
l8531:
;lcd_hd44780_pic18.c: 72: (RD6=0);
	bcf	c:(31774/8),(31774)&7	;volatile
	line	74
	
l8533:
;lcd_hd44780_pic18.c: 74: _delay((unsigned long)((1)*(10000000/4000000.0)));
		nop2	;2 cycle nop

	line	77
	
l8535:
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
	
l8537:
;lcd_hd44780_pic18.c: 81: PORTB=temp;
	movff	(c:LCDByte@temp),(c:3969)	;volatile
	line	83
	
l8539:
;lcd_hd44780_pic18.c: 83: _delay((unsigned long)((1)*(10000000/4000000.0)));
		nop2	;2 cycle nop

	line	87
	
l8541:
;lcd_hd44780_pic18.c: 87: (RD6=0);
	bcf	c:(31774/8),(31774)&7	;volatile
	line	89
	
l8543:
;lcd_hd44780_pic18.c: 89: _delay((unsigned long)((1)*(10000000/4000000.0)));
		nop2	;2 cycle nop

	line	91
	
l8545:
;lcd_hd44780_pic18.c: 91: LCDBusyLoop();
	call	_LCDBusyLoop	;wreg free
	line	92
	
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
;;		line 94 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\lcd_hd44780_pic18.c"
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
psect	text85,class=CODE,space=0,reloc=2
	line	94
global __ptext85
__ptext85:
psect	text85
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\lcd_hd44780_pic18.c"
	line	94
	global	__size_of_LCDBusyLoop
	__size_of_LCDBusyLoop	equ	__end_of_LCDBusyLoop-_LCDBusyLoop
	
_LCDBusyLoop:
;incstack = 0
	opt	stack 23
	dw	0FFFFh
	line	98
	
l8205:
;lcd_hd44780_pic18.c: 98: uint8_t busy,status=0x00,temp;
	movlw	low(0)
	movwf	((c:LCDBusyLoop@status)),c
	line	101
	
l8207:
;lcd_hd44780_pic18.c: 101: TRISB|=(0x0f<<4);
	movlw	(0F0h)&0ffh
	iorwf	((c:3987)),c	;volatile
	line	104
	
l8209:
;lcd_hd44780_pic18.c: 104: (RD3=1);
	bsf	c:(31771/8),(31771)&7	;volatile
	line	105
	
l8211:
;lcd_hd44780_pic18.c: 105: (RD2=0);
	bcf	c:(31770/8),(31770)&7	;volatile
	line	109
	
l8213:
;lcd_hd44780_pic18.c: 109: _delay((unsigned long)((0.5)*(10000000/4000000.0)));
	nop
	goto	l8215
	line	112
;lcd_hd44780_pic18.c: 112: do
	
l26:
	line	115
	
l8215:
;lcd_hd44780_pic18.c: 113: {
;lcd_hd44780_pic18.c: 115: (RD6=1);
	bsf	c:(31774/8),(31774)&7	;volatile
	line	118
	
l8217:
;lcd_hd44780_pic18.c: 118: _delay((unsigned long)((0.5)*(10000000/4000000.0)));
	nop
	line	120
	
l8219:
;lcd_hd44780_pic18.c: 120: status=(PORTB>>4);
	swapf	((c:3969)),c,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	movwf	((c:LCDBusyLoop@status)),c
	line	121
	
l8221:
;lcd_hd44780_pic18.c: 121: status=status<<4;
	swapf	((c:LCDBusyLoop@status)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:LCDBusyLoop@status)),c
	line	123
	
l8223:
;lcd_hd44780_pic18.c: 123: _delay((unsigned long)((0.5)*(10000000/4000000.0)));
	nop
	line	126
	
l8225:
;lcd_hd44780_pic18.c: 126: (RD6=0);
	bcf	c:(31774/8),(31774)&7	;volatile
	line	127
	
l8227:
;lcd_hd44780_pic18.c: 127: _delay((unsigned long)((1)*(10000000/4000000.0)));
		nop2	;2 cycle nop

	line	129
	
l8229:
;lcd_hd44780_pic18.c: 129: (RD6=1);
	bsf	c:(31774/8),(31774)&7	;volatile
	line	130
	
l8231:
;lcd_hd44780_pic18.c: 130: _delay((unsigned long)((0.5)*(10000000/4000000.0)));
	nop
	line	132
	
l8233:
;lcd_hd44780_pic18.c: 132: temp=(PORTB>>4);
	swapf	((c:3969)),c,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	movwf	((c:LCDBusyLoop@temp)),c
	line	133
	
l8235:
;lcd_hd44780_pic18.c: 133: temp&=0x0F;
	movlw	(0Fh)&0ffh
	andwf	((c:LCDBusyLoop@temp)),c
	line	135
	
l8237:
;lcd_hd44780_pic18.c: 135: status=status|temp;
	movf	((c:LCDBusyLoop@status)),c,w
	iorwf	((c:LCDBusyLoop@temp)),c,w
	movwf	((c:LCDBusyLoop@status)),c
	line	137
	
l8239:
;lcd_hd44780_pic18.c: 137: busy=status & 0b10000000;
	movf	((c:LCDBusyLoop@status)),c,w
	andlw	low(080h)
	movwf	((c:LCDBusyLoop@busy)),c
	line	139
	
l8241:
;lcd_hd44780_pic18.c: 139: _delay((unsigned long)((0.5)*(10000000/4000000.0)));
	nop
	line	141
	
l8243:
;lcd_hd44780_pic18.c: 141: (RD6=0);
	bcf	c:(31774/8),(31774)&7	;volatile
	line	142
	
l8245:
;lcd_hd44780_pic18.c: 142: _delay((unsigned long)((1)*(10000000/4000000.0)));
		nop2	;2 cycle nop

	line	143
	
l8247:
;lcd_hd44780_pic18.c: 143: }while(busy);
	tstfsz	((c:LCDBusyLoop@busy)),c
	goto	u5841
	goto	u5840
u5841:
	goto	l8215
u5840:
	
l27:
	line	145
;lcd_hd44780_pic18.c: 145: (RD3=0);
	bcf	c:(31771/8),(31771)&7	;volatile
	line	148
	
l8249:
;lcd_hd44780_pic18.c: 148: TRISB&=(~(0x0F<<4));
	movlw	(0Fh)&0ffh
	andwf	((c:3987)),c	;volatile
	line	150
	
l28:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_LCDBusyLoop
	__end_of_LCDBusyLoop:
	signat	_LCDBusyLoop,88
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 7 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\isr.c"
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
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\isr.c"
	line	7
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:
;incstack = 0
	opt	stack 21
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
	
i2l7857:
;isr.c: 9: if (RCIE && RCIF) {
	btfss	c:(31981/8),(31981)&7	;volatile
	goto	i2u559_41
	goto	i2u559_40
i2u559_41:
	goto	i2l339
i2u559_40:
	
i2l7859:
	btfss	c:(31989/8),(31989)&7	;volatile
	goto	i2u560_41
	goto	i2u560_40
i2u560_41:
	goto	i2l339
i2u560_40:
	line	10
	
i2l7861:
;isr.c: 10: USARTHandleRxInt();
	call	_USARTHandleRxInt	;wreg free
	goto	i2l340
	line	11
	
i2l7863:
;isr.c: 11: return;
	goto	i2l340
	line	12
	
i2l339:
	line	13
;isr.c: 12: }
;isr.c: 13: if(INT0IE && INT0IF) {
	btfss	c:(32660/8),(32660)&7	;volatile
	goto	i2u561_41
	goto	i2u561_40
i2u561_41:
	goto	i2l340
i2u561_40:
	
i2l7865:
	btfss	c:(32657/8),(32657)&7	;volatile
	goto	i2u562_41
	goto	i2u562_40
i2u562_41:
	goto	i2l340
i2u562_40:
	line	14
	
i2l7867:
;isr.c: 14: SecondsInt();
	call	_SecondsInt	;wreg free
	line	15
	
i2l7869:
;isr.c: 15: INT0IF = 0;
	bcf	c:(32657/8),(32657)&7	;volatile
	goto	i2l340
	line	16
	
i2l7871:
;isr.c: 16: return;
	goto	i2l340
	line	17
	
i2l341:
	line	18
	
i2l340:
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
;;		line 76 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\usart_pic18.c"
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
psect	text87,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\usart_pic18.c"
	line	76
global __ptext87
__ptext87:
psect	text87
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\usart_pic18.c"
	line	76
	global	__size_of_USARTHandleRxInt
	__size_of_USARTHandleRxInt	equ	__end_of_USARTHandleRxInt-_USARTHandleRxInt
	
_USARTHandleRxInt:
;incstack = 0
	opt	stack 21
	dw	0FFFFh
	line	79
	
i2l7161:
;usart_pic18.c: 79: char data=RCREG;
	movff	(c:4014),(c:USARTHandleRxInt@data)	;volatile
	line	82
	
i2l7163:
;usart_pic18.c: 82: if(((UQEnd==128-1) && UQFront==0) || ((UQEnd+1)==UQFront))
	movf	((c:_UQEnd)),c,w	;volatile
	xorlw	127

	btfss	status,2
	goto	i2u516_41
	goto	i2u516_40
i2u516_41:
	goto	i2l7167
i2u516_40:
	
i2l7165:
	movf	((c:_UQFront)),c,w	;volatile
	btfsc	status,2
	goto	i2u517_41
	goto	i2u517_40
i2u517_41:
	goto	i2l7169
i2u517_40:
	goto	i2l7167
	
i2l836:
	
i2l7167:
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
	bnz	i2u518_45
	movf	(??_USARTHandleRxInt+0+0),c,w
	xorwf	(??_USARTHandleRxInt+2+0),c,w
i2u518_45:

	btfss	status,2
	goto	i2u518_41
	goto	i2u518_40
i2u518_41:
	goto	i2l7173
i2u518_40:
	goto	i2l7169
	
i2l834:
	line	85
	
i2l7169:
;usart_pic18.c: 83: {
;usart_pic18.c: 85: UQFront++;
	incf	((c:_UQFront)),c	;volatile
	line	86
;usart_pic18.c: 86: if(UQFront==128) UQFront=0;
	goto	i2l7173
	
i2l7171:
	movlw	low(0)
	movwf	((c:_UQFront)),c	;volatile
	goto	i2l7173
	
i2l837:
	goto	i2l7173
	line	87
	
i2l832:
	line	89
	
i2l7173:
;usart_pic18.c: 87: }
;usart_pic18.c: 89: if(UQEnd==128-1)
	movf	((c:_UQEnd)),c,w	;volatile
	xorlw	127

	btfss	status,2
	goto	i2u519_41
	goto	i2u519_40
i2u519_41:
	goto	i2l7177
i2u519_40:
	line	90
	
i2l7175:
;usart_pic18.c: 90: UQEnd=0;
	movlw	low(0)
	movwf	((c:_UQEnd)),c	;volatile
	goto	i2l7179
	line	91
	
i2l838:
	line	92
	
i2l7177:
;usart_pic18.c: 91: else
;usart_pic18.c: 92: UQEnd++;
	incf	((c:_UQEnd)),c	;volatile
	goto	i2l7179
	
i2l839:
	line	94
	
i2l7179:
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
	
i2l7181:; BSR set to: 1

;usart_pic18.c: 96: if(UQFront==-1) UQFront=0;
	incf	((c:_UQFront)),c,w	;volatile

	btfss	status,2
	goto	i2u520_41
	goto	i2u520_40
i2u520_41:
	goto	i2l841
i2u520_40:
	
i2l7183:; BSR set to: 1

	movlw	low(0)
	movwf	((c:_UQFront)),c	;volatile
	goto	i2l841
	
i2l840:; BSR set to: 1

	line	98
	
i2l841:; BSR set to: 1

	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_USARTHandleRxInt
	__end_of_USARTHandleRxInt:
	signat	_USARTHandleRxInt,88
	global	_SecondsInt

;; *************** function _SecondsInt *****************
;; Defined at:
;;		line 173 in file "E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\rtu.c"
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
psect	text88,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\rtu.c"
	line	173
global __ptext88
__ptext88:
psect	text88
	file	"E:\Study Material\XC8 PROJECTS\Remote Station Monitor\Remote Terminal Unit\rtu.c"
	line	173
	global	__size_of_SecondsInt
	__size_of_SecondsInt	equ	__end_of_SecondsInt-_SecondsInt
	
_SecondsInt:; BSR set to: 1

;incstack = 0
	opt	stack 21
	dw	0FFFFh
	line	175
	
i2l7185:
;rtu.c: 175: RC1 = ~RC1;
	btg	c:(31761/8),(31761)&7	;volatile
	line	176
	
i2l7187:
;rtu.c: 176: sec_flag = 1;
	movlw	low(01h)
	movwf	((c:_sec_flag)),c
	line	177
	
i2l7189:
;rtu.c: 177: seconds++;
	incf	((c:_seconds)),c
	line	178
	
i2l7191:
;rtu.c: 178: if(seconds == 60)
	movf	((c:_seconds)),c,w
	xorlw	60

	btfss	status,2
	goto	i2u521_41
	goto	i2u521_40
i2u521_41:
	goto	i2l762
i2u521_40:
	line	180
	
i2l7193:
;rtu.c: 179: {
;rtu.c: 180: min_flag = 1;
	movlw	low(01h)
	movlb	0	; () banked
	movlb	0	; () banked
	movwf	((_min_flag))&0ffh
	line	181
;rtu.c: 181: seconds = 0;
	movlw	low(0)
	movwf	((c:_seconds)),c
	goto	i2l762
	line	182
	
i2l761:; BSR set to: 0

	line	183
	
i2l762:
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

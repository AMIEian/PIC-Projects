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
	file	"E:\Study Material\XC8 PROJECTS\Remote\keypad.h"
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
	file	"E:\Study Material\XC8 PROJECTS\Remote\Remote.c"
	line	13

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
	line	9

;initializer for _digits
	db	low(01h)
	db	low(02h)
	db	low(03h)
	line	14

;initializer for _One_Minute_Timer
	dw	(01h)&0ffffh
	line	16

;initializer for _digit
	db	low(0FFh)
	global	_data_timer
	global	_Sleep_Flag
	global	_count
	global	_index
	global	_TMR0
_TMR0	set	0xFD6
	global	_ADCON1
_ADCON1	set	0xFC1
	global	_INTCON
_INTCON	set	0xFF2
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
	global	_TMR0IF
_TMR0IF	set	0x7F92
	global	_TMR0ON
_TMR0ON	set	0x7EAF
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
	file	"Remote.as"
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
psect	dataCOMRAM,class=COMRAM,space=1,noexec
global __pdataCOMRAM
__pdataCOMRAM:
	file	"E:\Study Material\XC8 PROJECTS\Remote\keypad.h"
	line	5
	global	_Keyboard_Keys
_Keyboard_Keys:
       ds      16
psect	dataCOMRAM
	file	"E:\Study Material\XC8 PROJECTS\Remote\Remote.c"
	line	13
	global	_Segment_Codes
_Segment_Codes:
       ds      11
psect	dataCOMRAM
	file	"E:\Study Material\XC8 PROJECTS\Remote\Remote.c"
	line	9
	global	_digits
_digits:
       ds      3
psect	dataCOMRAM
	file	"E:\Study Material\XC8 PROJECTS\Remote\Remote.c"
	line	14
	global	_One_Minute_Timer
_One_Minute_Timer:
       ds      2
psect	dataCOMRAM
	file	"E:\Study Material\XC8 PROJECTS\Remote\Remote.c"
	line	16
	global	_digit
_digit:
       ds      1
	file	"Remote.as"
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
;!    BSS         5
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM          127     30      68
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
;!COMRAM              7F     1E      44       1       53.5%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      44      15        0.0%
;!DATA                 0      0      44       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 18 in file "E:\Study Material\XC8 PROJECTS\Remote\Remote.c"
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
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          8       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0
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
	file	"E:\Study Material\XC8 PROJECTS\Remote\Remote.c"
	line	18
global __ptext0
__ptext0:
psect	text0
	file	"E:\Study Material\XC8 PROJECTS\Remote\Remote.c"
	line	18
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 29
	dw	0FFFFh
	line	20
	
l766:
;Remote.c: 20: ADCON1 = 0x06;
	movlw	low(06h)
	movwf	((c:4033)),c	;volatile
	line	22
;Remote.c: 22: TRISA = 0x00;
	movlw	low(0)
	movwf	((c:3986)),c	;volatile
	line	23
;Remote.c: 23: TRISC = 0x00;
	movlw	low(0)
	movwf	((c:3988)),c	;volatile
	line	24
;Remote.c: 24: TRISD = 0x00;
	movlw	low(0)
	movwf	((c:3989)),c	;volatile
	line	25
;Remote.c: 25: TRISE = 0x00;
	movlw	low(0)
	movwf	((c:3990)),c	;volatile
	line	27
;Remote.c: 27: for(count = 0; count <= 5; count++)
	movlw	low(0)
	movwf	((c:_count)),c
	
l768:
	movlw	(06h-1)
	cpfsgt	((c:_count)),c
	goto	u101
	goto	u100
u101:
	goto	l91
u100:
	goto	l782
	
l770:
	goto	l782
	line	28
	
l91:
	line	29
;Remote.c: 28: {
;Remote.c: 29: PORTE = 0xFF;
	setf	((c:3972)),c	;volatile
	line	30
	
l772:
;Remote.c: 30: MY_DELAY(1000);
	movlw	high(03E8h)
	movwf	((c:MY_DELAY@ms+1)),c
	movlw	low(03E8h)
	movwf	((c:MY_DELAY@ms)),c
	call	_MY_DELAY	;wreg free
	line	31
	
l774:
;Remote.c: 31: PORTE = 0x00;
	movlw	low(0)
	movwf	((c:3972)),c	;volatile
	line	32
	
l776:
;Remote.c: 32: MY_DELAY(1000);
	movlw	high(03E8h)
	movwf	((c:MY_DELAY@ms+1)),c
	movlw	low(03E8h)
	movwf	((c:MY_DELAY@ms)),c
	call	_MY_DELAY	;wreg free
	line	27
	
l778:
	incf	((c:_count)),c
	
l780:
	movlw	(06h-1)
	cpfsgt	((c:_count)),c
	goto	u111
	goto	u110
u111:
	goto	l91
u110:
	goto	l782
	
l92:
	line	34
	
l782:
;Remote.c: 33: }
;Remote.c: 34: count = 0;
	movlw	low(0)
	movwf	((c:_count)),c
	line	37
;Remote.c: 37: PORTA = 0x00;
	movlw	low(0)
	movwf	((c:3968)),c	;volatile
	line	38
;Remote.c: 38: PORTC = 0x01;
	movlw	low(01h)
	movwf	((c:3970)),c	;volatile
	line	40
;Remote.c: 40: RCON = 0x9F;
	movlw	low(09Fh)
	movwf	((c:4048)),c	;volatile
	line	41
;Remote.c: 41: INTCON = 0xA0;
	movlw	low(0A0h)
	movwf	((c:4082)),c	;volatile
	line	42
;Remote.c: 42: T0CON = 0xC3;
	movlw	low(0C3h)
	movwf	((c:4053)),c	;volatile
	line	43
;Remote.c: 43: TMR0 = 0x00;
	movlw	high(0)
	movwf	((c:4054+1)),c	;volatile
	movlw	low(0)
	movwf	((c:4054)),c	;volatile
	line	45
	
l784:
;Remote.c: 45: initKeyboard();
	call	_initKeyboard	;wreg free
	goto	l786
	line	47
;Remote.c: 47: while(1)
	
l93:
	line	49
	
l786:
;Remote.c: 48: {
;Remote.c: 49: digit = getKeyboardInput();
	call	_getKeyboardInput	;wreg free
	movwf	((c:_digit)),c
	line	51
	
l788:
;Remote.c: 51: if(digit == 0x0B)
	movf	((c:_digit)),c,w
	xorlw	11

	btfss	status,2
	goto	u121
	goto	u120
u121:
	goto	l808
u120:
	line	54
	
l790:
;Remote.c: 52: {
;Remote.c: 54: digits[0] = digits[0] + 1;
	incf	((c:_digits)),c,w
	movwf	((c:_digits)),c
	line	55
;Remote.c: 55: if(digits[0] > 9)
	movf	((c:_digits)),c,w
	xorlw	80h
	addlw	-((0Ah)^80h)
	btfss	status,0
	goto	u131
	goto	u130
u131:
	goto	l806
u130:
	line	57
	
l792:
;Remote.c: 56: {
;Remote.c: 57: digits[0] = 0;
	movlw	low(0)
	movwf	((c:_digits)),c
	line	58
	
l794:
;Remote.c: 58: digits[1] = digits[1] + 1;
	incf	(0+((c:_digits)+01h)),c,w
	movwf	(0+((c:_digits)+01h)),c
	line	59
	
l796:
;Remote.c: 59: if(digits[1] > 9)
	movf	(0+((c:_digits)+01h)),c,w
	xorlw	80h
	addlw	-((0Ah)^80h)
	btfss	status,0
	goto	u141
	goto	u140
u141:
	goto	l806
u140:
	line	61
	
l798:
;Remote.c: 60: {
;Remote.c: 61: digits[1] = 0;
	movlw	low(0)
	movwf	(0+((c:_digits)+01h)),c
	line	62
	
l800:
;Remote.c: 62: digits[2] = digits[2] + 1;
	incf	(0+((c:_digits)+02h)),c,w
	movwf	(0+((c:_digits)+02h)),c
	line	63
	
l802:
;Remote.c: 63: if(digits[2] > 9)
	movf	(0+((c:_digits)+02h)),c,w
	xorlw	80h
	addlw	-((0Ah)^80h)
	btfss	status,0
	goto	u151
	goto	u150
u151:
	goto	l806
u150:
	line	65
	
l804:
;Remote.c: 64: {
;Remote.c: 65: digits[2] = 9;
	movlw	low(09h)
	movwf	(0+((c:_digits)+02h)),c
	line	66
;Remote.c: 66: digits[1] = 9;
	movlw	low(09h)
	movwf	(0+((c:_digits)+01h)),c
	line	67
;Remote.c: 67: digits[0] = 9;
	movlw	low(09h)
	movwf	((c:_digits)),c
	goto	l806
	line	68
	
l97:
	goto	l806
	line	69
	
l96:
	goto	l806
	line	70
	
l95:
	line	71
	
l806:
;Remote.c: 68: }
;Remote.c: 69: }
;Remote.c: 70: }
;Remote.c: 71: digit = 0xFF;
	setf	((c:_digit)),c
	goto	l808
	line	72
	
l94:
	line	74
	
l808:
;Remote.c: 72: }
;Remote.c: 74: if(digit == 0x0C)
	movf	((c:_digit)),c,w
	xorlw	12

	btfss	status,2
	goto	u161
	goto	u160
u161:
	goto	l830
u160:
	line	77
	
l810:
;Remote.c: 75: {
;Remote.c: 77: digits[0] = digits[0] - 1;
	decf	((c:_digits)),c,w
	movwf	((c:_digits)),c
	line	78
	
l812:
;Remote.c: 78: if(digits[0] < 0)
	btfss	((c:_digits)),c,7
	goto	u171
	goto	u170
u171:
	goto	l828
u170:
	line	80
	
l814:
;Remote.c: 79: {
;Remote.c: 80: digits[0] = 9;
	movlw	low(09h)
	movwf	((c:_digits)),c
	line	81
	
l816:
;Remote.c: 81: digits[1] = digits[1] - 1;
	decf	(0+((c:_digits)+01h)),c,w
	movwf	(0+((c:_digits)+01h)),c
	line	82
	
l818:
;Remote.c: 82: if(digits[1] < 0)
	btfss	(0+((c:_digits)+01h)),c,7
	goto	u181
	goto	u180
u181:
	goto	l828
u180:
	line	84
	
l820:
;Remote.c: 83: {
;Remote.c: 84: digits[1] = 9;
	movlw	low(09h)
	movwf	(0+((c:_digits)+01h)),c
	line	85
	
l822:
;Remote.c: 85: digits[2] = digits[2] - 1;
	decf	(0+((c:_digits)+02h)),c,w
	movwf	(0+((c:_digits)+02h)),c
	line	86
	
l824:
;Remote.c: 86: if(digits[2] < 0)
	btfss	(0+((c:_digits)+02h)),c,7
	goto	u191
	goto	u190
u191:
	goto	l828
u190:
	line	88
	
l826:
;Remote.c: 87: {
;Remote.c: 88: digits[2] = 0;
	movlw	low(0)
	movwf	(0+((c:_digits)+02h)),c
	line	89
;Remote.c: 89: digits[1] = 0;
	movlw	low(0)
	movwf	(0+((c:_digits)+01h)),c
	line	90
;Remote.c: 90: digits[0] = 0;
	movlw	low(0)
	movwf	((c:_digits)),c
	goto	l828
	line	91
	
l101:
	goto	l828
	line	92
	
l100:
	goto	l828
	line	93
	
l99:
	line	94
	
l828:
;Remote.c: 91: }
;Remote.c: 92: }
;Remote.c: 93: }
;Remote.c: 94: digit = 0xFF;
	setf	((c:_digit)),c
	goto	l830
	line	95
	
l98:
	line	97
	
l830:
;Remote.c: 95: }
;Remote.c: 97: if( digit != 0xFF )
	incf	((c:_digit)),c,w

	btfsc	status,2
	goto	u201
	goto	u200
u201:
	goto	l874
u200:
	line	99
	
l832:
;Remote.c: 98: {
;Remote.c: 99: if(count == 0)
	tstfsz	((c:_count)),c
	goto	u211
	goto	u210
u211:
	goto	l844
u210:
	line	101
	
l834:
;Remote.c: 100: {
;Remote.c: 101: digits[count] = digit;
	movf	((c:_count)),c,w
	mullw	01h
	movlw	low((c:_digits))
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high((c:_digits))
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:_digit),indf2

	line	102
	
l836:
;Remote.c: 102: digits[count+1] = 10;
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
	line	103
	
l838:
;Remote.c: 103: digits[count+2] = 10;
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
	line	104
	
l840:
;Remote.c: 104: data_timer = 1;
	movlw	high(01h)
	movwf	((c:_data_timer+1)),c
	movlw	low(01h)
	movwf	((c:_data_timer)),c
	line	105
	
l842:
;Remote.c: 105: One_Minute_Timer = 1;
	movlw	high(01h)
	movwf	((c:_One_Minute_Timer+1)),c
	movlw	low(01h)
	movwf	((c:_One_Minute_Timer)),c
	goto	l844
	line	106
	
l103:
	line	107
	
l844:
;Remote.c: 106: }
;Remote.c: 107: if(count == 1)
	decf	((c:_count)),c,w

	btfss	status,2
	goto	u221
	goto	u220
u221:
	goto	l854
u220:
	line	109
	
l846:
;Remote.c: 108: {
;Remote.c: 109: digits[count] = digits[count-1];
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
	line	110
	
l848:
;Remote.c: 110: digits[count-1] = digit;
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

	line	111
	
l850:
;Remote.c: 111: data_timer = 1;
	movlw	high(01h)
	movwf	((c:_data_timer+1)),c
	movlw	low(01h)
	movwf	((c:_data_timer)),c
	line	112
	
l852:
;Remote.c: 112: One_Minute_Timer = 1;
	movlw	high(01h)
	movwf	((c:_One_Minute_Timer+1)),c
	movlw	low(01h)
	movwf	((c:_One_Minute_Timer)),c
	goto	l854
	line	113
	
l104:
	line	114
	
l854:
;Remote.c: 113: }
;Remote.c: 114: if(count == 2)
	movf	((c:_count)),c,w
	xorlw	2

	btfss	status,2
	goto	u231
	goto	u230
u231:
	goto	l866
u230:
	line	116
	
l856:
;Remote.c: 115: {
;Remote.c: 116: digits[count] = digits[count-1];
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
	line	117
	
l858:
;Remote.c: 117: digits[count-1] = digits[count-2];
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
	line	118
	
l860:
;Remote.c: 118: digits[count-2] = digit;
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

	line	119
	
l862:
;Remote.c: 119: data_timer = 0;
	movlw	high(0)
	movwf	((c:_data_timer+1)),c
	movlw	low(0)
	movwf	((c:_data_timer)),c
	line	120
	
l864:
;Remote.c: 120: One_Minute_Timer = 1;
	movlw	high(01h)
	movwf	((c:_One_Minute_Timer+1)),c
	movlw	low(01h)
	movwf	((c:_One_Minute_Timer)),c
	goto	l866
	line	121
	
l105:
	line	122
	
l866:
;Remote.c: 121: }
;Remote.c: 122: count++;
	incf	((c:_count)),c
	line	123
	
l868:
;Remote.c: 123: if(count > 2)
	movlw	(03h-1)
	cpfsgt	((c:_count)),c
	goto	u241
	goto	u240
u241:
	goto	l872
u240:
	line	124
	
l870:
;Remote.c: 124: count = 0;
	movlw	low(0)
	movwf	((c:_count)),c
	goto	l872
	
l106:
	line	125
	
l872:
;Remote.c: 125: digit = 0xFF;
	setf	((c:_digit)),c
	goto	l874
	line	126
	
l102:
	line	128
	
l874:
;Remote.c: 126: }
;Remote.c: 128: if(Sleep_Flag == 1)
	decf	((c:_Sleep_Flag)),c,w

	btfss	status,2
	goto	u251
	goto	u250
u251:
	goto	l786
u250:
	line	130
	
l876:
;Remote.c: 129: {
;Remote.c: 130: PORTC = 0x00;
	movlw	low(0)
	movwf	((c:3970)),c	;volatile
	line	131
	
l878:
;Remote.c: 131: PORTD = 0xFF;
	setf	((c:3971)),c	;volatile
	line	132
	
l880:
;Remote.c: 132: TMR0ON = 0;
	bcf	c:(32431/8),(32431)&7	;volatile
	line	133
;Remote.c: 133: PORTB = 0x0F;
	movlw	low(0Fh)
	movwf	((c:3969)),c	;volatile
	line	134
	
l882:
;Remote.c: 134: TRISA = 0xFF;
	setf	((c:3986)),c	;volatile
	line	135
	
l884:
;Remote.c: 135: TRISC = 0xFF;
	setf	((c:3988)),c	;volatile
	line	136
	
l886:
;Remote.c: 136: TRISD = 0xFF;
	setf	((c:3989)),c	;volatile
	line	137
;Remote.c: 137: INTCON = 0x88;
	movlw	low(088h)
	movwf	((c:4082)),c	;volatile
	line	140
# 140 "E:\Study Material\XC8 PROJECTS\Remote\Remote.c"
sleep ;# 
psect	text0
	line	143
;Remote.c: 143: Sleep_Flag = 0;
	movlw	low(0)
	movwf	((c:_Sleep_Flag)),c
	line	144
;Remote.c: 144: TRISA = 0x00;
	movlw	low(0)
	movwf	((c:3986)),c	;volatile
	line	145
;Remote.c: 145: TRISC = 0x00;
	movlw	low(0)
	movwf	((c:3988)),c	;volatile
	line	146
;Remote.c: 146: TRISD = 0x00;
	movlw	low(0)
	movwf	((c:3989)),c	;volatile
	line	147
;Remote.c: 147: RCON = 0x9F;
	movlw	low(09Fh)
	movwf	((c:4048)),c	;volatile
	line	148
;Remote.c: 148: INTCON = 0xA0;
	movlw	low(0A0h)
	movwf	((c:4082)),c	;volatile
	line	149
;Remote.c: 149: T0CON = 0xC3;
	movlw	low(0C3h)
	movwf	((c:4053)),c	;volatile
	line	150
;Remote.c: 150: TMR0 = 0x00;
	movlw	high(0)
	movwf	((c:4054+1)),c	;volatile
	movlw	low(0)
	movwf	((c:4054)),c	;volatile
	line	151
;Remote.c: 151: PORTB = 0x00;
	movlw	low(0)
	movwf	((c:3969)),c	;volatile
	line	152
;Remote.c: 152: PORTC = 0x02;
	movlw	low(02h)
	movwf	((c:3970)),c	;volatile
	line	153
;Remote.c: 153: index = 0;
	movlw	low(0)
	movwf	((c:_index)),c
	line	154
;Remote.c: 154: One_Minute_Timer = 1;
	movlw	high(01h)
	movwf	((c:_One_Minute_Timer+1)),c
	movlw	low(01h)
	movwf	((c:_One_Minute_Timer)),c
	goto	l786
	line	155
	
l107:
	goto	l786
	line	156
	
l108:
	line	47
	goto	l786
	
l109:
	line	158
	
l110:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_initKeyboard

;; *************** function _initKeyboard *****************
;; Defined at:
;;		line 5 in file "E:\Study Material\XC8 PROJECTS\Remote\keypad.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Remote\keypad.c"
	line	5
global __ptext1
__ptext1:
psect	text1
	file	"E:\Study Material\XC8 PROJECTS\Remote\keypad.c"
	line	5
	global	__size_of_initKeyboard
	__size_of_initKeyboard	equ	__end_of_initKeyboard-_initKeyboard
	
_initKeyboard:
;incstack = 0
	opt	stack 29
	dw	0FFFFh
	line	7
	
l702:
;keypad.c: 7: TRISB = 0xF0;
	movlw	low(0F0h)
	movwf	((c:3987)),c	;volatile
	line	8
;keypad.c: 8: PORTB = 0x00;
	movlw	low(0)
	movwf	((c:3969)),c	;volatile
	line	9
	
l13:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_initKeyboard
	__end_of_initKeyboard:
	signat	_initKeyboard,88
	global	_getKeyboardInput

;; *************** function _getKeyboardInput *****************
;; Defined at:
;;		line 11 in file "E:\Study Material\XC8 PROJECTS\Remote\keypad.c"
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
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
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
psect	text2,class=CODE,space=0,reloc=2
	line	11
global __ptext2
__ptext2:
psect	text2
	file	"E:\Study Material\XC8 PROJECTS\Remote\keypad.c"
	line	11
	global	__size_of_getKeyboardInput
	__size_of_getKeyboardInput	equ	__end_of_getKeyboardInput-_getKeyboardInput
	
_getKeyboardInput:
;incstack = 0
	opt	stack 29
	dw	0FFFFh
	line	13
	
l704:
;keypad.c: 13: char Keyboard_Input = 0xFF;
	setf	((c:getKeyboardInput@Keyboard_Input)),c
	line	14
	
l706:
;keypad.c: 14: char column = 0;
	movlw	low(0)
	movwf	((c:getKeyboardInput@column)),c
	line	16
;keypad.c: 15: char row;
;keypad.c: 16: char column_mask = 0x08;
	movlw	low(08h)
	movwf	((c:getKeyboardInput@column_mask)),c
	line	17
;keypad.c: 17: char temp = 0x00;
	movlw	low(0)
	movwf	((c:getKeyboardInput@temp)),c
	line	18
;keypad.c: 18: for(column = 0; column < 4; column ++)
	movlw	low(0)
	movwf	((c:getKeyboardInput@column)),c
	
l708:
	movlw	(04h-1)
	cpfsgt	((c:getKeyboardInput@column)),c
	goto	u11
	goto	u10
u11:
	goto	l712
u10:
	goto	l754
	
l710:
	goto	l754
	line	19
	
l16:
	line	20
	
l712:
;keypad.c: 19: {
;keypad.c: 20: PORTB = 0x00;
	movlw	low(0)
	movwf	((c:3969)),c	;volatile
	line	21
	
l714:
;keypad.c: 21: PORTB = column_mask >> column;
	movff	(c:getKeyboardInput@column),??_getKeyboardInput+0+0
	movff	(c:getKeyboardInput@column_mask),??_getKeyboardInput+1+0
	incf	(??_getKeyboardInput+0+0),c
	goto	u24
u25:
	bcf	status,0
	rrcf	(??_getKeyboardInput+1+0),c
u24:
	decfsz	(??_getKeyboardInput+0+0),c
	goto	u25
	movf	(??_getKeyboardInput+1+0),c,w
	movwf	((c:3969)),c	;volatile
	line	22
	
l716:
;keypad.c: 22: _delay((unsigned long)((1)*(4000000/4000.0)));
	movlw	250
u357:
decfsz	wreg,f
	goto	u357

	line	24
	
l718:
;keypad.c: 24: temp = PORTB & 0xF0;
	movf	((c:3969)),c,w	;volatile
	andlw	low(0F0h)
	movwf	((c:getKeyboardInput@temp)),c
	line	25
	
l720:
;keypad.c: 25: if(temp != 0x00)
	movf	((c:getKeyboardInput@temp)),c,w
	btfsc	status,2
	goto	u31
	goto	u30
u31:
	goto	l724
u30:
	line	26
	
l722:
;keypad.c: 26: _delay((unsigned long)((20)*(4000000/4000.0)));
	movlw	20
movwf	(??_getKeyboardInput+0+0)&0ffh,c,f
	movlw	125
u367:
	decfsz	wreg,f
	goto	u367
	decfsz	(??_getKeyboardInput+0+0)&0ffh,c,f
	goto	u367
	nop2

	goto	l724
	
l18:
	line	28
	
l724:
;keypad.c: 28: temp = PORTB & 0xF0;
	movf	((c:3969)),c,w	;volatile
	andlw	low(0F0h)
	movwf	((c:getKeyboardInput@temp)),c
	line	29
	
l726:
;keypad.c: 29: if(temp != 0x00)
	movf	((c:getKeyboardInput@temp)),c,w
	btfsc	status,2
	goto	u41
	goto	u40
u41:
	goto	l750
u40:
	line	32
	
l728:
;keypad.c: 30: {
;keypad.c: 32: row = temp >> 4;
	swapf	((c:getKeyboardInput@temp)),c,w
	andlw	(0ffh shr 4) & 0ffh
	movwf	((c:getKeyboardInput@row)),c
	line	33
;keypad.c: 33: row = row >> 1;
	bcf	status,0
	rrcf	((c:getKeyboardInput@row)),c,w
	movwf	((c:getKeyboardInput@row)),c
	line	34
	
l730:
;keypad.c: 34: if(row > 3)
	movlw	(04h-1)
	cpfsgt	((c:getKeyboardInput@row)),c
	goto	u51
	goto	u50
u51:
	goto	l734
u50:
	line	35
	
l732:
;keypad.c: 35: row = 3;
	movlw	low(03h)
	movwf	((c:getKeyboardInput@row)),c
	goto	l734
	
l20:
	line	37
	
l734:
;keypad.c: 37: Keyboard_Input = Keyboard_Keys[column][row];
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
	line	39
	
l736:
;keypad.c: 39: if(Keyboard_Input == 0x00)
	tstfsz	((c:getKeyboardInput@Keyboard_Input)),c
	goto	u61
	goto	u60
u61:
	goto	l21
u60:
	line	40
	
l738:
;keypad.c: 40: PORTA = 0x0A;
	movlw	low(0Ah)
	movwf	((c:3968)),c	;volatile
	goto	l740
	line	41
	
l21:
	line	42
;keypad.c: 41: else
;keypad.c: 42: PORTA = Keyboard_Input;
	movff	(c:getKeyboardInput@Keyboard_Input),(c:3968)	;volatile
	goto	l740
	
l22:
	line	44
	
l740:
;keypad.c: 44: temp = PORTB & 0xF0;
	movf	((c:3969)),c,w	;volatile
	andlw	low(0F0h)
	movwf	((c:getKeyboardInput@temp)),c
	line	45
;keypad.c: 45: while(temp != 0x00)
	goto	l746
	
l24:
	line	47
	
l742:
;keypad.c: 46: {
;keypad.c: 47: _delay((unsigned long)((1)*(4000000/4000.0)));
	movlw	250
u377:
decfsz	wreg,f
	goto	u377

	line	48
	
l744:
;keypad.c: 48: temp = PORTB & 0xF0;
	movf	((c:3969)),c,w	;volatile
	andlw	low(0F0h)
	movwf	((c:getKeyboardInput@temp)),c
	goto	l746
	line	49
	
l23:
	line	45
	
l746:
	tstfsz	((c:getKeyboardInput@temp)),c
	goto	u71
	goto	u70
u71:
	goto	l742
u70:
	goto	l748
	
l25:
	line	50
	
l748:
;keypad.c: 49: }
;keypad.c: 50: PORTA = 0x00;
	movlw	low(0)
	movwf	((c:3968)),c	;volatile
	line	51
;keypad.c: 51: break;
	goto	l754
	line	52
	
l19:
	line	18
	
l750:
	incf	((c:getKeyboardInput@column)),c
	
l752:
	movlw	(04h-1)
	cpfsgt	((c:getKeyboardInput@column)),c
	goto	u81
	goto	u80
u81:
	goto	l712
u80:
	goto	l754
	
l17:
	line	54
	
l754:
;keypad.c: 52: }
;keypad.c: 53: }
;keypad.c: 54: PORTB = 0x00;
	movlw	low(0)
	movwf	((c:3969)),c	;volatile
	line	55
;keypad.c: 55: return Keyboard_Input;
	movf	((c:getKeyboardInput@Keyboard_Input)),c,w
	goto	l26
	
l756:
	line	56
	
l26:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_getKeyboardInput
	__end_of_getKeyboardInput:
	signat	_getKeyboardInput,89
	global	_MY_DELAY

;; *************** function _MY_DELAY *****************
;; Defined at:
;;		line 208 in file "E:\Study Material\XC8 PROJECTS\Remote\Remote.c"
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
	file	"E:\Study Material\XC8 PROJECTS\Remote\Remote.c"
	line	208
global __ptext3
__ptext3:
psect	text3
	file	"E:\Study Material\XC8 PROJECTS\Remote\Remote.c"
	line	208
	global	__size_of_MY_DELAY
	__size_of_MY_DELAY	equ	__end_of_MY_DELAY-_MY_DELAY
	
_MY_DELAY:
;incstack = 0
	opt	stack 29
	dw	0FFFFh
	line	210
	
l758:
;Remote.c: 210: while(ms > 0)
	goto	l764
	
l124:
	line	212
	
l760:
;Remote.c: 211: {
;Remote.c: 212: _delay((unsigned long)((1)*(4000000/4000.0)));
	movlw	250
u387:
decfsz	wreg,f
	goto	u387

	line	213
	
l762:
;Remote.c: 213: ms--;
	decf	((c:MY_DELAY@ms)),c
	btfss	status,0
	decf	((c:MY_DELAY@ms+1)),c
	goto	l764
	line	214
	
l123:
	line	210
	
l764:
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
	goto	l760
u90:
	goto	l126
	
l125:
	line	216
;Remote.c: 214: }
;Remote.c: 215: return;
	
l126:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_MY_DELAY
	__end_of_MY_DELAY:
	signat	_MY_DELAY,4216
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 160 in file "E:\Study Material\XC8 PROJECTS\Remote\Remote.c"
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
;;      Temps:         15       0       0       0       0       0       0
;;      Totals:        15       0       0       0       0       0       0
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
	file	"E:\Study Material\XC8 PROJECTS\Remote\Remote.c"
	line	160
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:
;incstack = 0
	opt	stack 29
	dw	0FFFFh; errata NOP
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
	line	163
	
i2l888:
;Remote.c: 163: if(RBIE && RBIF)
	btfss	c:(32659/8),(32659)&7	;volatile
	goto	i2u26_41
	goto	i2u26_40
i2u26_41:
	goto	i2l113
i2u26_40:
	
i2l890:
	btfss	c:(32656/8),(32656)&7	;volatile
	goto	i2u27_41
	goto	i2u27_40
i2u27_41:
	goto	i2l113
i2u27_40:
	line	165
	
i2l892:
;Remote.c: 164: {
;Remote.c: 165: RBIF = 0;
	bcf	c:(32656/8),(32656)&7	;volatile
	line	166
;Remote.c: 166: return;
	goto	i2l114
	line	167
	
i2l113:
	line	169
;Remote.c: 167: }
;Remote.c: 169: if(TMR0ON && TMR0IF)
	btfss	c:(32431/8),(32431)&7	;volatile
	goto	i2u28_41
	goto	i2u28_40
i2u28_41:
	goto	i2l114
i2u28_40:
	
i2l894:
	btfss	c:(32658/8),(32658)&7	;volatile
	goto	i2u29_41
	goto	i2u29_40
i2u29_41:
	goto	i2l114
i2u29_40:
	line	171
	
i2l896:
;Remote.c: 170: {
;Remote.c: 171: index = index + 1;
	incf	((c:_index)),c,w
	movwf	((c:_index)),c
	line	172
;Remote.c: 172: PORTC = PORTC << 1;
	movf	((c:3970)),c,w	;volatile
	addwf	((c:3970)),c,w	;volatile
	movwf	((c:3970)),c	;volatile
	line	173
	
i2l898:
;Remote.c: 173: if(index > 2)
	movlw	(03h-1)
	cpfsgt	((c:_index)),c
	goto	i2u30_41
	goto	i2u30_40
i2u30_41:
	goto	i2l902
i2u30_40:
	line	175
	
i2l900:
;Remote.c: 174: {
;Remote.c: 175: index = 0;
	movlw	low(0)
	movwf	((c:_index)),c
	line	176
;Remote.c: 176: PORTC = 0x01;
	movlw	low(01h)
	movwf	((c:3970)),c	;volatile
	goto	i2l902
	line	177
	
i2l116:
	line	178
	
i2l902:
;Remote.c: 177: }
;Remote.c: 178: PORTD = Segment_Codes[digits[index]];
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
	line	179
	
i2l904:
;Remote.c: 179: PORTD = ~(PORTD);
	comf	((c:3971)),c	;volatile
	line	181
	
i2l906:
;Remote.c: 181: if(data_timer >= 1)
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
	goto	i2l912
i2u31_40:
	line	183
	
i2l908:
;Remote.c: 182: {
;Remote.c: 183: data_timer = data_timer + 1;
	movlw	low(01h)
	addwf	((c:_data_timer)),c,w
	
	movwf	((c:_data_timer)),c
	movlw	high(01h)
	addwfc	((c:_data_timer+1)),c,w
	movwf	1+((c:_data_timer)),c
	line	184
;Remote.c: 184: if(data_timer >= 750)
	movf	((c:_data_timer+1)),c,w
	xorlw	80h
	addlw	-((02h)^80h)
	movlw	0EEh
	btfsc	status,2
	subwf	((c:_data_timer)),c,w
	btfss	status,0
	goto	i2u32_41
	goto	i2u32_40
i2u32_41:
	goto	i2l912
i2u32_40:
	line	187
	
i2l910:
;Remote.c: 185: {
;Remote.c: 187: data_timer = 0;
	movlw	high(0)
	movwf	((c:_data_timer+1)),c
	movlw	low(0)
	movwf	((c:_data_timer)),c
	line	188
;Remote.c: 188: count = 0;
	movlw	low(0)
	movwf	((c:_count)),c
	line	189
;Remote.c: 189: One_Minute_Timer = 1;
	movlw	high(01h)
	movwf	((c:_One_Minute_Timer+1)),c
	movlw	low(01h)
	movwf	((c:_One_Minute_Timer)),c
	goto	i2l912
	line	190
	
i2l118:
	goto	i2l912
	line	191
	
i2l117:
	line	193
	
i2l912:
;Remote.c: 190: }
;Remote.c: 191: }
;Remote.c: 193: if(One_Minute_Timer >= 1)
	movf	((c:_One_Minute_Timer+1)),c,w
	iorwf ((c:_One_Minute_Timer)),c,w

	btfsc	status,2
	goto	i2u33_41
	goto	i2u33_40
i2u33_41:
	goto	i2l119
i2u33_40:
	line	195
	
i2l914:
;Remote.c: 194: {
;Remote.c: 195: One_Minute_Timer = One_Minute_Timer + 1;
	movlw	low(01h)
	addwf	((c:_One_Minute_Timer)),c,w
	
	movwf	((c:_One_Minute_Timer)),c
	movlw	high(01h)
	addwfc	((c:_One_Minute_Timer+1)),c,w
	movwf	1+((c:_One_Minute_Timer)),c
	line	196
;Remote.c: 196: if(One_Minute_Timer > 12105)
	movlw	04Ah
	subwf	((c:_One_Minute_Timer)),c,w
	movlw	02Fh
	subwfb	((c:_One_Minute_Timer+1)),c,w
	btfss	status,0
	goto	i2u34_41
	goto	i2u34_40
i2u34_41:
	goto	i2l119
i2u34_40:
	line	198
	
i2l916:
;Remote.c: 197: {
;Remote.c: 198: Sleep_Flag = 1;
	movlw	low(01h)
	movwf	((c:_Sleep_Flag)),c
	line	199
;Remote.c: 199: One_Minute_Timer = 0;
	movlw	high(0)
	movwf	((c:_One_Minute_Timer+1)),c
	movlw	low(0)
	movwf	((c:_One_Minute_Timer)),c
	goto	i2l119
	line	200
	
i2l120:
	line	201
	
i2l119:
	line	202
;Remote.c: 200: }
;Remote.c: 201: }
;Remote.c: 202: TMR0 = 0;
	movlw	high(0)
	movwf	((c:4054+1)),c	;volatile
	movlw	low(0)
	movwf	((c:4054)),c	;volatile
	line	203
	
i2l918:
;Remote.c: 203: TMR0IF = 0;
	bcf	c:(32658/8),(32658)&7	;volatile
	goto	i2l114
	line	204
	
i2l920:
;Remote.c: 204: return;
	goto	i2l114
	line	205
	
i2l115:
	line	206
	
i2l114:
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
	dw	0FFFFh; errata NOP
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

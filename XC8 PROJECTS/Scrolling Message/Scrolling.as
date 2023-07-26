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
	FNCALL	_main,_Send_Data
	FNCALL	_main,___lwdiv
	FNCALL	_main,___wmul
	FNCALL	_main,_strlen
	FNCALL	_Send_Data,___wmul
	FNROOT	_main
	global	_CharData
psect	mediumconst,class=MEDIUMCONST,space=0,reloc=2,noexec
global __pmediumconst
__pmediumconst:
	db	0
	file	"E:\Study Material\XC8 PROJECTS\Scrolling Message\Scrolling.c"
	line	39
_CharData:
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(0)&0ffffh
	dw	(04h)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(07h)&0ffffh
	dw	(0Ch)&0ffffh
	dw	(014h)&0ffffh
	dw	(0Ch)&0ffffh
	dw	(06h)&0ffffh
	dw	(05h)&0ffffh
	dw	(06h)&0ffffh
	dw	(01Ch)&0ffffh
	dw	(019h)&0ffffh
	dw	(01Ah)&0ffffh
	dw	(02h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(08h)&0ffffh
	dw	(0Bh)&0ffffh
	dw	(013h)&0ffffh
	dw	(06h)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(012h)&0ffffh
	dw	(014h)&0ffffh
	dw	(09h)&0ffffh
	dw	(016h)&0ffffh
	dw	(016h)&0ffffh
	dw	(09h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(02h)&0ffffh
	dw	(04h)&0ffffh
	dw	(08h)&0ffffh
	dw	(08h)&0ffffh
	dw	(08h)&0ffffh
	dw	(08h)&0ffffh
	dw	(04h)&0ffffh
	dw	(02h)&0ffffh
	dw	(08h)&0ffffh
	dw	(04h)&0ffffh
	dw	(02h)&0ffffh
	dw	(02h)&0ffffh
	dw	(02h)&0ffffh
	dw	(02h)&0ffffh
	dw	(04h)&0ffffh
	dw	(08h)&0ffffh
	dw	(015h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(015h)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(06h)&0ffffh
	dw	(04h)&0ffffh
	dw	(08h)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(04h)&0ffffh
	dw	(01h)&0ffffh
	dw	(02h)&0ffffh
	dw	(02h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(08h)&0ffffh
	dw	(08h)&0ffffh
	dw	(010h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(011h)&0ffffh
	dw	(013h)&0ffffh
	dw	(011h)&0ffffh
	dw	(015h)&0ffffh
	dw	(011h)&0ffffh
	dw	(019h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(04h)&0ffffh
	dw	(0Ch)&0ffffh
	dw	(014h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(02h)&0ffffh
	dw	(04h)&0ffffh
	dw	(08h)&0ffffh
	dw	(010h)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(011h)&0ffffh
	dw	(01h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(01h)&0ffffh
	dw	(01h)&0ffffh
	dw	(011h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(014h)&0ffffh
	dw	(014h)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(01Eh)&0ffffh
	dw	(01h)&0ffffh
	dw	(01h)&0ffffh
	dw	(01h)&0ffffh
	dw	(01Eh)&0ffffh
	dw	(07h)&0ffffh
	dw	(08h)&0ffffh
	dw	(010h)&0ffffh
	dw	(01Eh)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(01h)&0ffffh
	dw	(01h)&0ffffh
	dw	(01h)&0ffffh
	dw	(02h)&0ffffh
	dw	(04h)&0ffffh
	dw	(08h)&0ffffh
	dw	(010h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(0Fh)&0ffffh
	dw	(01h)&0ffffh
	dw	(01h)&0ffffh
	dw	(01h)&0ffffh
	dw	(01h)&0ffffh
	dw	(0)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(08h)&0ffffh
	dw	(01h)&0ffffh
	dw	(02h)&0ffffh
	dw	(04h)&0ffffh
	dw	(08h)&0ffffh
	dw	(08h)&0ffffh
	dw	(04h)&0ffffh
	dw	(02h)&0ffffh
	dw	(01h)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(01Eh)&0ffffh
	dw	(0)&0ffffh
	dw	(01Eh)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(010h)&0ffffh
	dw	(08h)&0ffffh
	dw	(04h)&0ffffh
	dw	(02h)&0ffffh
	dw	(02h)&0ffffh
	dw	(04h)&0ffffh
	dw	(08h)&0ffffh
	dw	(010h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(02h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(0)&0ffffh
	dw	(04h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(015h)&0ffffh
	dw	(015h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(01Eh)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(01Eh)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(01Eh)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(01Eh)&0ffffh
	dw	(07h)&0ffffh
	dw	(08h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(08h)&0ffffh
	dw	(07h)&0ffffh
	dw	(01Ch)&0ffffh
	dw	(012h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(012h)&0ffffh
	dw	(01Ch)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(01Eh)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(01Eh)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(011h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(017h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(014h)&0ffffh
	dw	(08h)&0ffffh
	dw	(011h)&0ffffh
	dw	(012h)&0ffffh
	dw	(014h)&0ffffh
	dw	(018h)&0ffffh
	dw	(014h)&0ffffh
	dw	(012h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(011h)&0ffffh
	dw	(01Bh)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(015h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(019h)&0ffffh
	dw	(019h)&0ffffh
	dw	(015h)&0ffffh
	dw	(015h)&0ffffh
	dw	(013h)&0ffffh
	dw	(013h)&0ffffh
	dw	(011h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(01Eh)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(01Eh)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(015h)&0ffffh
	dw	(013h)&0ffffh
	dw	(0Fh)&0ffffh
	dw	(01Eh)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(01Eh)&0ffffh
	dw	(014h)&0ffffh
	dw	(012h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(011h)&0ffffh
	dw	(010h)&0ffffh
	dw	(08h)&0ffffh
	dw	(06h)&0ffffh
	dw	(01h)&0ffffh
	dw	(011h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(04h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(015h)&0ffffh
	dw	(015h)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(01h)&0ffffh
	dw	(02h)&0ffffh
	dw	(04h)&0ffffh
	dw	(08h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(08h)&0ffffh
	dw	(08h)&0ffffh
	dw	(08h)&0ffffh
	dw	(08h)&0ffffh
	dw	(08h)&0ffffh
	dw	(08h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(010h)&0ffffh
	dw	(08h)&0ffffh
	dw	(08h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(02h)&0ffffh
	dw	(02h)&0ffffh
	dw	(01h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(02h)&0ffffh
	dw	(02h)&0ffffh
	dw	(02h)&0ffffh
	dw	(02h)&0ffffh
	dw	(02h)&0ffffh
	dw	(02h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(04h)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(011h)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(08h)&0ffffh
	dw	(04h)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(012h)&0ffffh
	dw	(012h)&0ffffh
	dw	(012h)&0ffffh
	dw	(0Fh)&0ffffh
	dw	(0)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(01Ch)&0ffffh
	dw	(012h)&0ffffh
	dw	(012h)&0ffffh
	dw	(01Ch)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(0)&0ffffh
	dw	(01h)&0ffffh
	dw	(01h)&0ffffh
	dw	(01h)&0ffffh
	dw	(07h)&0ffffh
	dw	(09h)&0ffffh
	dw	(09h)&0ffffh
	dw	(07h)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(01Ch)&0ffffh
	dw	(012h)&0ffffh
	dw	(01Eh)&0ffffh
	dw	(010h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(0)&0ffffh
	dw	(03h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(06h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(0)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(02h)&0ffffh
	dw	(02h)&0ffffh
	dw	(0Ch)&0ffffh
	dw	(0)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(01Ch)&0ffffh
	dw	(012h)&0ffffh
	dw	(012h)&0ffffh
	dw	(012h)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(04h)&0ffffh
	dw	(0)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(0)&0ffffh
	dw	(02h)&0ffffh
	dw	(0)&0ffffh
	dw	(02h)&0ffffh
	dw	(02h)&0ffffh
	dw	(02h)&0ffffh
	dw	(02h)&0ffffh
	dw	(0Ch)&0ffffh
	dw	(0)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(014h)&0ffffh
	dw	(018h)&0ffffh
	dw	(018h)&0ffffh
	dw	(014h)&0ffffh
	dw	(010h)&0ffffh
	dw	(0)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(0Ch)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(015h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(014h)&0ffffh
	dw	(01Ah)&0ffffh
	dw	(012h)&0ffffh
	dw	(012h)&0ffffh
	dw	(012h)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0Ch)&0ffffh
	dw	(012h)&0ffffh
	dw	(012h)&0ffffh
	dw	(012h)&0ffffh
	dw	(0Ch)&0ffffh
	dw	(0)&0ffffh
	dw	(01Ch)&0ffffh
	dw	(012h)&0ffffh
	dw	(012h)&0ffffh
	dw	(01Ch)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(0)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(012h)&0ffffh
	dw	(012h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(02h)&0ffffh
	dw	(02h)&0ffffh
	dw	(01h)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(0Ch)&0ffffh
	dw	(08h)&0ffffh
	dw	(08h)&0ffffh
	dw	(08h)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(010h)&0ffffh
	dw	(08h)&0ffffh
	dw	(04h)&0ffffh
	dw	(02h)&0ffffh
	dw	(01Eh)&0ffffh
	dw	(0)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(01Ch)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(0Ch)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(012h)&0ffffh
	dw	(012h)&0ffffh
	dw	(012h)&0ffffh
	dw	(012h)&0ffffh
	dw	(0Ch)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(04h)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(015h)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(011h)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(04h)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(011h)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(011h)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(04h)&0ffffh
	dw	(08h)&0ffffh
	dw	(08h)&0ffffh
	dw	(010h)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(02h)&0ffffh
	dw	(04h)&0ffffh
	dw	(08h)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(02h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(08h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(02h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(08h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(02h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(08h)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(01Eh)&0ffffh
	dw	(014h)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	global __end_of_CharData
__end_of_CharData:
	global	main@F3733
psect	mediumconst
	file	"E:\Study Material\XC8 PROJECTS\Scrolling Message\Scrolling.c"
	line	151
main@F3733:
	db	low(057h)
	db	low(045h)
	db	low(04Ch)
	db	low(043h)
	db	low(04Fh)
	db	low(04Dh)
	db	low(045h)
	db	low(020h)
	db	low(054h)
	db	low(04Fh)
	db	low(020h)
	db	low(045h)
	db	low(041h)
	db	low(047h)
	db	low(04Ch)
	db	low(045h)
	db	low(020h)
	db	low(043h)
	db	low(04Fh)
	db	low(04Eh)
	db	low(054h)
	db	low(052h)
	db	low(04Fh)
	db	low(04Ch)
	db	low(020h)
	db	low(053h)
	db	low(059h)
	db	low(053h)
	db	low(054h)
	db	low(045h)
	db	low(04Dh)
	db	low(053h)
	db	low(02Eh)
	db	low(02Eh)
	db	low(02Eh)
	db	low(020h)
	db	low(0)
	global __end_ofmain@F3733
__end_ofmain@F3733:
	global	_CharData
	global	main@F3733
	global	_Buffer
	global	_ADCON1
_ADCON1	set	0xFC1
	global	_PORTB
_PORTB	set	0xF81
	global	_PORTC
_PORTC	set	0xF82
	global	_PORTD
_PORTD	set	0xF83
	global	_PORTE
_PORTE	set	0xF84
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
	global	_RC0
_RC0	set	0x7C10
	global	_RC1
_RC1	set	0x7C11
	global	_RC2
_RC2	set	0x7C12
; #config settings
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
	file	"Scrolling.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
	global	_Buffer
_Buffer:
       ds      80
	line	#
psect	cinit
; Clear objects allocated to BANK0 (80 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	80
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
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
	global	?_strlen
?_strlen:	; 2 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	MY_DELAY@ms
MY_DELAY@ms:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x0
	global	strlen@s
strlen@s:	; 2 bytes @ 0x0
	ds   2
??_strlen:	; 0 bytes @ 0x2
??_MY_DELAY:	; 0 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x2
	ds   2
??___wmul:	; 0 bytes @ 0x4
??___lwdiv:	; 0 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x4
	global	strlen@cp
strlen@cp:	; 2 bytes @ 0x4
	ds   2
?_Send_Data:	; 0 bytes @ 0x6
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x6
	global	Send_Data@row
Send_Data@row:	; 2 bytes @ 0x6
	ds   2
??_Send_Data:	; 0 bytes @ 0x8
	ds   4
	global	Send_Data@Flag
Send_Data@Flag:	; 2 bytes @ 0xC
	ds   2
	global	Send_Data@Mask
Send_Data@Mask:	; 2 bytes @ 0xE
	ds   2
	global	Send_Data@bits
Send_Data@bits:	; 2 bytes @ 0x10
	ds   2
	global	Send_Data@column
Send_Data@column:	; 2 bytes @ 0x12
	ds   2
??_main:	; 0 bytes @ 0x14
	ds   8
	global	main@default_message
main@default_message:	; 37 bytes @ 0x1C
	ds   37
	global	main@index
main@index:	; 2 bytes @ 0x41
	ds   2
	global	main@temp
main@temp:	; 2 bytes @ 0x43
	ds   2
	global	main@StringLength
main@StringLength:	; 2 bytes @ 0x45
	ds   2
	global	main@speed
main@speed:	; 2 bytes @ 0x47
	ds   2
	global	main@l
main@l:	; 2 bytes @ 0x49
	ds   2
	global	main@k
main@k:	; 2 bytes @ 0x4B
	ds   2
	global	main@m
main@m:	; 2 bytes @ 0x4D
	ds   2
	global	main@scroll
main@scroll:	; 2 bytes @ 0x4F
	ds   2
	global	main@i
main@i:	; 2 bytes @ 0x51
	ds   2
	global	main@Shift_Step
main@Shift_Step:	; 2 bytes @ 0x53
	ds   2
	global	main@row
main@row:	; 2 bytes @ 0x55
	ds   2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    1557
;!    Data        0
;!    BSS         80
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM          127     87      87
;!    BANK0           128      0      80
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0

;!
;!Pointer List with Targets:
;!
;!    strlen@s	PTR const unsigned char  size(2) Largest target is 37
;!		 -> main@default_message(COMRAM[37]), 
;!
;!    strlen@cp	PTR const unsigned char  size(2) Largest target is 37
;!		 -> main@default_message(COMRAM[37]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_Send_Data
;!    _Send_Data->___wmul
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
;;Main: autosize = 0, tempsize = 8, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                69    69      0    5375
;!                                             20 COMRAM    67    67      0
;!                           _MY_DELAY
;!                          _Send_Data
;!                            ___lwdiv
;!                             ___wmul
;!                             _strlen
;! ---------------------------------------------------------------------------------
;! (1) _strlen                                               6     4      2     143
;!                                              0 COMRAM     6     4      2
;! ---------------------------------------------------------------------------------
;! (1) ___lwdiv                                              7     3      4     268
;!                                              0 COMRAM     7     3      4
;! ---------------------------------------------------------------------------------
;! (1) _Send_Data                                           14    12      2    2029
;!                                              6 COMRAM    14    12      2
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (1) ___wmul                                               6     2      4    1749
;!                                              0 COMRAM     6     2      4
;! ---------------------------------------------------------------------------------
;! (1) _MY_DELAY                                             3     1      2     129
;!                                              0 COMRAM     3     1      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _MY_DELAY
;!   _Send_Data
;!     ___wmul
;!   ___lwdiv
;!   ___wmul
;!   _strlen
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
;!BANK0               80      0      50       5       62.5%
;!BITCOMRAM           7F      0       0       0        0.0%
;!COMRAM              7F     57      57       1       68.5%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      A7      15        0.0%
;!DATA                 0      0      A7       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 137 in file "E:\Study Material\XC8 PROJECTS\Scrolling Message\Scrolling.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  default_mess   37   28[COMRAM] const unsigned char [37]
;;  row             2   85[COMRAM] unsigned short 
;;  Shift_Step      2   83[COMRAM] unsigned short 
;;  i               2   81[COMRAM] unsigned short 
;;  scroll          2   79[COMRAM] unsigned short 
;;  m               2   77[COMRAM] unsigned short 
;;  k               2   75[COMRAM] unsigned short 
;;  l               2   73[COMRAM] unsigned short 
;;  speed           2   71[COMRAM] unsigned short 
;;  StringLength    2   69[COMRAM] unsigned short 
;;  temp            2   67[COMRAM] unsigned short 
;;  index           2   65[COMRAM] unsigned short 
;;  a               2    0        int 
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
;;      Locals:        59       0       0       0       0       0       0
;;      Temps:          8       0       0       0       0       0       0
;;      Totals:        67       0       0       0       0       0       0
;;Total ram usage:       67 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_MY_DELAY
;;		_Send_Data
;;		___lwdiv
;;		___wmul
;;		_strlen
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Scrolling Message\Scrolling.c"
	line	137
global __ptext0
__ptext0:
psect	text0
	file	"E:\Study Material\XC8 PROJECTS\Scrolling Message\Scrolling.c"
	line	137
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 29
	dw	0FFFFh
	line	139
	
l903:
;Scrolling.c: 139: ADCON1 = 0x06;
	movlw	low(06h)
	movwf	((c:4033)),c	;volatile
	line	141
;Scrolling.c: 141: TRISA = 0x00;
	movlw	low(0)
	movwf	((c:3986)),c	;volatile
	line	142
;Scrolling.c: 142: TRISB = 0x00;
	movlw	low(0)
	movwf	((c:3987)),c	;volatile
	line	143
;Scrolling.c: 143: TRISC = 0x00;
	movlw	low(0)
	movwf	((c:3988)),c	;volatile
	line	144
;Scrolling.c: 144: TRISE = 0x00;
	movlw	low(0)
	movwf	((c:3990)),c	;volatile
	line	145
;Scrolling.c: 145: TRISD = 0x00;
	movlw	low(0)
	movwf	((c:3989)),c	;volatile
	line	146
;Scrolling.c: 146: PORTD = 0x00;
	movlw	low(0)
	movwf	((c:3971)),c	;volatile
	line	147
;Scrolling.c: 147: PORTC = 0x00;
	movlw	low(0)
	movwf	((c:3970)),c	;volatile
	line	148
;Scrolling.c: 148: PORTB = 0x00;
	movlw	low(0)
	movwf	((c:3969)),c	;volatile
	line	150
;Scrolling.c: 150: unsigned short index, i, l, k, m, row, scroll, temp, Shift_Step=1, StringLength, speed;
	movlw	high(01h)
	movwf	((c:main@Shift_Step+1)),c
	movlw	low(01h)
	movwf	((c:main@Shift_Step)),c
	line	152
	
l905:
;Scrolling.c: 151: int a;
;Scrolling.c: 152: const unsigned char default_message[]="WELCOME TO EAGLE CONTROL SYSTEMS... ";
	movlw	low((main@F3733))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((main@F3733))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((main@F3733))
	movwf	tblptru
	endif
	lfsr	2,(main@default_message)
	movlw	37
u430:
	tblrd*+
		dw	0FFFFh; errata NOP

	movff	tablat,postinc2
	decfsz	wreg
	bra	u430
	line	153
	
l907:
;Scrolling.c: 153: StringLength = strlen(default_message);
		movlw	high((c:main@default_message))
	movwf	((c:strlen@s+1)),c
	movlw	low((c:main@default_message))
	movwf	((c:strlen@s)),c

	call	_strlen	;wreg free
	movff	0+?_strlen,(c:main@StringLength)
	movff	1+?_strlen,(c:main@StringLength+1)
	line	155
	
l909:
;Scrolling.c: 155: for(i = 0; i <= 5; i++)
	movlw	high(0)
	movwf	((c:main@i+1)),c
	movlw	low(0)
	movwf	((c:main@i)),c
	
l911:
	movlw	06h
	subwf	((c:main@i)),c,w
	movlw	0
	subwfb	((c:main@i+1)),c,w
	btfss	status,0
	goto	u441
	goto	u440
u441:
	goto	l43
u440:
	goto	l925
	
l913:
	goto	l925
	line	156
	
l43:
	line	157
;Scrolling.c: 156: {
;Scrolling.c: 157: PORTE = 0xFF;
	setf	((c:3972)),c	;volatile
	line	158
	
l915:
;Scrolling.c: 158: MY_DELAY(1000);
	movlw	high(03E8h)
	movwf	((c:MY_DELAY@ms+1)),c
	movlw	low(03E8h)
	movwf	((c:MY_DELAY@ms)),c
	call	_MY_DELAY	;wreg free
	line	159
	
l917:
;Scrolling.c: 159: PORTE = 0x00;
	movlw	low(0)
	movwf	((c:3972)),c	;volatile
	line	160
	
l919:
;Scrolling.c: 160: MY_DELAY(1000);
	movlw	high(03E8h)
	movwf	((c:MY_DELAY@ms+1)),c
	movlw	low(03E8h)
	movwf	((c:MY_DELAY@ms)),c
	call	_MY_DELAY	;wreg free
	line	155
	
l921:
	infsnz	((c:main@i)),c
	incf	((c:main@i+1)),c
	
l923:
	movlw	06h
	subwf	((c:main@i)),c,w
	movlw	0
	subwfb	((c:main@i+1)),c,w
	btfss	status,0
	goto	u451
	goto	u450
u451:
	goto	l43
u450:
	goto	l925
	
l44:
	line	162
	
l925:
;Scrolling.c: 161: }
;Scrolling.c: 162: i = 0;
	movlw	high(0)
	movwf	((c:main@i+1)),c
	movlw	low(0)
	movwf	((c:main@i)),c
	line	164
;Scrolling.c: 164: do
	
l45:
	line	166
;Scrolling.c: 165: {
;Scrolling.c: 166: for (k=0; k<StringLength; k++)
	movlw	high(0)
	movwf	((c:main@k+1)),c
	movlw	low(0)
	movwf	((c:main@k)),c
	goto	l983
	line	167
	
l47:
	line	168
	
l927:
;Scrolling.c: 167: {
;Scrolling.c: 168: for (scroll=0; scroll<(8/Shift_Step); scroll++)
	movlw	high(0)
	movwf	((c:main@scroll+1)),c
	movlw	low(0)
	movwf	((c:main@scroll)),c
	goto	l979
	line	169
	
l49:
	line	174
	
l929:
;Scrolling.c: 169: {
;Scrolling.c: 174: for (row=0; row<8; row++)
	movlw	high(0)
	movwf	((c:main@row+1)),c
	movlw	low(0)
	movwf	((c:main@row)),c
	
l931:
	movlw	08h
	subwf	((c:main@row)),c,w
	movlw	0
	subwfb	((c:main@row+1)),c,w
	btfss	status,0
	goto	u461
	goto	u460
u461:
	goto	l935
u460:
	goto	l953
	
l933:
	goto	l953
	line	175
	
l50:
	line	176
	
l935:
;Scrolling.c: 175: {
;Scrolling.c: 176: index = default_message[k];
	movlw	low((c:main@default_message))
	addwf	((c:main@k)),c,w
	movwf	c:fsr2l
	movlw	high((c:main@default_message))
	addwfc	((c:main@k+1)),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	(??_main+0+0)&0ffh,c
	movf	((??_main+0+0)),c,w
	movwf	((c:main@index)),c
	clrf	((c:main@index+1)),c
	line	177
	
l937:
;Scrolling.c: 177: temp = CharData[index-32][row];
	movff	(c:main@row),??_main+0+0
	movff	(c:main@row+1),??_main+0+0+1
	bcf	status,0
	rlcf	(??_main+0+0),c,f
	rlcf	(??_main+0+1),c,f
	movlw	low(0FE00h)
	movwf	(??_main+2+0)&0ffh,c
	movlw	high(0FE00h)
	movwf	(??_main+2+0+1)&0ffh,c
	movff	(c:main@index),??_main+4+0
	movff	(c:main@index+1),??_main+4+0+1
	swapf	(??_main+4+0),c
	swapf	(??_main+4+1),c
	movlw	0f0h
	andwf	(??_main+4+1),c
	movf	(??_main+4+0),c,w
	andlw	0fh
	iorwf	(??_main+4+1),c
	movlw	0f0h
	andwf	(??_main+4+0),c
	movf	(??_main+2+0),c,w
	addwf	(??_main+4+0),c
	movf	(??_main+2+1),c,w
	addwfc	(??_main+4+1),c
	movlw	low((_CharData))
	movwf	(??_main+6+0)&0ffh,c
	movlw	high((_CharData))
	movwf	(??_main+6+0+1)&0ffh,c
	movf	(??_main+4+0),c,w
	addwf	(??_main+6+0),c
	movf	(??_main+4+1),c,w
	addwfc	(??_main+6+1),c
	movf	(??_main+0+0),c,w
	addwf	(??_main+6+0),c
	movf	(??_main+0+1),c,w
	addwfc	(??_main+6+1),c
	movff	??_main+6+0,tblptrl
	movff	??_main+6+1,tblptrh
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

	movff	tablat,(c:main@temp)
	tblrd*-
		dw	0FFFFh; errata NOP

	movff	tablat,(c:main@temp+1)

	line	178
	
l939:
;Scrolling.c: 178: Buffer[row][4] = (Buffer[row][4] << Shift_Step) | (Buffer[row][3] >> (8-Shift_Step));
	movf	((c:main@Shift_Step)),c,w
	sublw	0
	movwf	(??_main+0+0)&0ffh,c
	movlw	08h
	addwf	((??_main+0+0)),c
	movff	(c:main@row),(c:___wmul@multiplier)
	movff	(c:main@row+1),(c:___wmul@multiplier+1)
	movlw	high(0Ah)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(0Ah)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movlw	06h
	addwf	(0+?___wmul),c
	movlw	0
	addwfc	(1+?___wmul),c
	movlb	0	; () banked
	movlw	low(_Buffer)
	addwf	(0+?___wmul),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_Buffer)
	addwfc	(1+?___wmul),c,w
	movwf	1+c:fsr2l
	movff	postinc2,??_main+1+0
	movff	postdec2,??_main+1+0+1
	incf	((??_main+0+0)),c
	goto	u474
u475:
	bcf	status,0
	rrcf	(??_main+1+1),c
	rrcf	(??_main+1+0),c
u474:
	decfsz	((??_main+0+0)),c
	goto	u475
	movff	(c:main@Shift_Step),??_main+3+0
	movff	(c:main@row),(c:___wmul@multiplier)
	movff	(c:main@row+1),(c:___wmul@multiplier+1)
	movlw	high(0Ah)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(0Ah)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movlw	08h
	addwf	(0+?___wmul),c
	movlw	0
	addwfc	(1+?___wmul),c
	movlb	0	; () banked
	movlw	low(_Buffer)
	addwf	(0+?___wmul),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_Buffer)
	addwfc	(1+?___wmul),c,w
	movwf	1+c:fsr2l
	movff	postinc2,??_main+4+0
	movff	postdec2,??_main+4+0+1
	incf	(??_main+3+0),c
	goto	u484
u485:
	bcf	status,0
	rlcf	(??_main+4+0),c
	rlcf	(??_main+4+1),c
u484:
	decfsz	(??_main+3+0),c
	goto	u485
	movf	(??_main+1+0),c,w
	iorwf	(??_main+4+0),c
	movf	(??_main+1+1),c,w
	iorwf	(??_main+4+1),c
	movff	(c:main@row),(c:___wmul@multiplier)
	movff	(c:main@row+1),(c:___wmul@multiplier+1)
	movlw	high(0Ah)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(0Ah)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movlw	08h
	addwf	(0+?___wmul),c
	movlw	0
	addwfc	(1+?___wmul),c
	movlb	0	; () banked
	movlw	low(_Buffer)
	addwf	(0+?___wmul),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_Buffer)
	addwfc	(1+?___wmul),c,w
	movwf	1+c:fsr2l
	movff	??_main+4+0,postinc2
	movff	??_main+4+1,postdec2

	line	179
	
l941:; BSR set to: 0

;Scrolling.c: 179: Buffer[row][3] = (Buffer[row][3] << Shift_Step) | (Buffer[row][2] >> (8-Shift_Step));
	movf	((c:main@Shift_Step)),c,w
	sublw	0
	movwf	(??_main+0+0)&0ffh,c
	movlw	08h
	addwf	((??_main+0+0)),c
	movff	(c:main@row),(c:___wmul@multiplier)
	movff	(c:main@row+1),(c:___wmul@multiplier+1)
	movlw	high(0Ah)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(0Ah)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movlw	04h
	addwf	(0+?___wmul),c
	movlw	0
	addwfc	(1+?___wmul),c
	movlb	0	; () banked
	movlw	low(_Buffer)
	addwf	(0+?___wmul),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_Buffer)
	addwfc	(1+?___wmul),c,w
	movwf	1+c:fsr2l
	movff	postinc2,??_main+1+0
	movff	postdec2,??_main+1+0+1
	incf	((??_main+0+0)),c
	goto	u494
u495:
	bcf	status,0
	rrcf	(??_main+1+1),c
	rrcf	(??_main+1+0),c
u494:
	decfsz	((??_main+0+0)),c
	goto	u495
	movff	(c:main@Shift_Step),??_main+3+0
	movff	(c:main@row),(c:___wmul@multiplier)
	movff	(c:main@row+1),(c:___wmul@multiplier+1)
	movlw	high(0Ah)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(0Ah)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movlw	06h
	addwf	(0+?___wmul),c
	movlw	0
	addwfc	(1+?___wmul),c
	movlb	0	; () banked
	movlw	low(_Buffer)
	addwf	(0+?___wmul),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_Buffer)
	addwfc	(1+?___wmul),c,w
	movwf	1+c:fsr2l
	movff	postinc2,??_main+4+0
	movff	postdec2,??_main+4+0+1
	incf	(??_main+3+0),c
	goto	u504
u505:
	bcf	status,0
	rlcf	(??_main+4+0),c
	rlcf	(??_main+4+1),c
u504:
	decfsz	(??_main+3+0),c
	goto	u505
	movf	(??_main+1+0),c,w
	iorwf	(??_main+4+0),c
	movf	(??_main+1+1),c,w
	iorwf	(??_main+4+1),c
	movff	(c:main@row),(c:___wmul@multiplier)
	movff	(c:main@row+1),(c:___wmul@multiplier+1)
	movlw	high(0Ah)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(0Ah)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movlw	06h
	addwf	(0+?___wmul),c
	movlw	0
	addwfc	(1+?___wmul),c
	movlb	0	; () banked
	movlw	low(_Buffer)
	addwf	(0+?___wmul),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_Buffer)
	addwfc	(1+?___wmul),c,w
	movwf	1+c:fsr2l
	movff	??_main+4+0,postinc2
	movff	??_main+4+1,postdec2

	line	180
	
l943:; BSR set to: 0

;Scrolling.c: 180: Buffer[row][2] = (Buffer[row][2] << Shift_Step) | (Buffer[row][1] >> (8-Shift_Step));
	movf	((c:main@Shift_Step)),c,w
	sublw	0
	movwf	(??_main+0+0)&0ffh,c
	movlw	08h
	addwf	((??_main+0+0)),c
	movff	(c:main@row),(c:___wmul@multiplier)
	movff	(c:main@row+1),(c:___wmul@multiplier+1)
	movlw	high(0Ah)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(0Ah)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movlw	02h
	addwf	(0+?___wmul),c
	movlw	0
	addwfc	(1+?___wmul),c
	movlb	0	; () banked
	movlw	low(_Buffer)
	addwf	(0+?___wmul),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_Buffer)
	addwfc	(1+?___wmul),c,w
	movwf	1+c:fsr2l
	movff	postinc2,??_main+1+0
	movff	postdec2,??_main+1+0+1
	incf	((??_main+0+0)),c
	goto	u514
u515:
	bcf	status,0
	rrcf	(??_main+1+1),c
	rrcf	(??_main+1+0),c
u514:
	decfsz	((??_main+0+0)),c
	goto	u515
	movff	(c:main@Shift_Step),??_main+3+0
	movff	(c:main@row),(c:___wmul@multiplier)
	movff	(c:main@row+1),(c:___wmul@multiplier+1)
	movlw	high(0Ah)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(0Ah)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movlw	04h
	addwf	(0+?___wmul),c
	movlw	0
	addwfc	(1+?___wmul),c
	movlb	0	; () banked
	movlw	low(_Buffer)
	addwf	(0+?___wmul),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_Buffer)
	addwfc	(1+?___wmul),c,w
	movwf	1+c:fsr2l
	movff	postinc2,??_main+4+0
	movff	postdec2,??_main+4+0+1
	incf	(??_main+3+0),c
	goto	u524
u525:
	bcf	status,0
	rlcf	(??_main+4+0),c
	rlcf	(??_main+4+1),c
u524:
	decfsz	(??_main+3+0),c
	goto	u525
	movf	(??_main+1+0),c,w
	iorwf	(??_main+4+0),c
	movf	(??_main+1+1),c,w
	iorwf	(??_main+4+1),c
	movff	(c:main@row),(c:___wmul@multiplier)
	movff	(c:main@row+1),(c:___wmul@multiplier+1)
	movlw	high(0Ah)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(0Ah)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movlw	04h
	addwf	(0+?___wmul),c
	movlw	0
	addwfc	(1+?___wmul),c
	movlb	0	; () banked
	movlw	low(_Buffer)
	addwf	(0+?___wmul),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_Buffer)
	addwfc	(1+?___wmul),c,w
	movwf	1+c:fsr2l
	movff	??_main+4+0,postinc2
	movff	??_main+4+1,postdec2

	line	181
	
l945:; BSR set to: 0

;Scrolling.c: 181: Buffer[row][1] = (Buffer[row][1] << Shift_Step) | (Buffer[row][0] >> (8-Shift_Step));
	movf	((c:main@Shift_Step)),c,w
	sublw	0
	movwf	(??_main+0+0)&0ffh,c
	movlw	08h
	addwf	((??_main+0+0)),c
	movff	(c:main@row),(c:___wmul@multiplier)
	movff	(c:main@row+1),(c:___wmul@multiplier+1)
	movlw	high(0Ah)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(0Ah)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movlb	0	; () banked
	movlw	low(_Buffer)
	addwf	(0+?___wmul),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_Buffer)
	addwfc	(1+?___wmul),c,w
	movwf	1+c:fsr2l
	movff	postinc2,??_main+1+0
	movff	postdec2,??_main+1+0+1
	incf	((??_main+0+0)),c
	goto	u534
u535:
	bcf	status,0
	rrcf	(??_main+1+1),c
	rrcf	(??_main+1+0),c
u534:
	decfsz	((??_main+0+0)),c
	goto	u535
	movff	(c:main@Shift_Step),??_main+3+0
	movff	(c:main@row),(c:___wmul@multiplier)
	movff	(c:main@row+1),(c:___wmul@multiplier+1)
	movlw	high(0Ah)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(0Ah)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movlw	02h
	addwf	(0+?___wmul),c
	movlw	0
	addwfc	(1+?___wmul),c
	movlb	0	; () banked
	movlw	low(_Buffer)
	addwf	(0+?___wmul),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_Buffer)
	addwfc	(1+?___wmul),c,w
	movwf	1+c:fsr2l
	movff	postinc2,??_main+4+0
	movff	postdec2,??_main+4+0+1
	incf	(??_main+3+0),c
	goto	u544
u545:
	bcf	status,0
	rlcf	(??_main+4+0),c
	rlcf	(??_main+4+1),c
u544:
	decfsz	(??_main+3+0),c
	goto	u545
	movf	(??_main+1+0),c,w
	iorwf	(??_main+4+0),c
	movf	(??_main+1+1),c,w
	iorwf	(??_main+4+1),c
	movff	(c:main@row),(c:___wmul@multiplier)
	movff	(c:main@row+1),(c:___wmul@multiplier+1)
	movlw	high(0Ah)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(0Ah)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movlw	02h
	addwf	(0+?___wmul),c
	movlw	0
	addwfc	(1+?___wmul),c
	movlb	0	; () banked
	movlw	low(_Buffer)
	addwf	(0+?___wmul),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_Buffer)
	addwfc	(1+?___wmul),c,w
	movwf	1+c:fsr2l
	movff	??_main+4+0,postinc2
	movff	??_main+4+1,postdec2

	line	182
	
l947:; BSR set to: 0

;Scrolling.c: 182: Buffer[row][0] = (Buffer[row][0] << Shift_Step)| (temp >> ((8-Shift_Step)-scroll*Shift_Step));
	movf	((c:main@scroll)),c,w
	mulwf	((c:main@Shift_Step)),c
	movf	(prodl),c,w
	addwf	((c:main@Shift_Step)),c,w
	sublw	0
	movwf	(??_main+0+0)&0ffh,c
	movlw	08h
	addwf	((??_main+0+0)),c
	movff	(c:main@temp),??_main+1+0
	movff	(c:main@temp+1),??_main+1+0+1
	incf	((??_main+0+0)),c
	goto	u554
u555:
	bcf	status,0
	rrcf	(??_main+1+1),c
	rrcf	(??_main+1+0),c
u554:
	decfsz	((??_main+0+0)),c
	goto	u555
	movff	(c:main@Shift_Step),??_main+3+0
	movff	(c:main@row),(c:___wmul@multiplier)
	movff	(c:main@row+1),(c:___wmul@multiplier+1)
	movlw	high(0Ah)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(0Ah)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movlb	0	; () banked
	movlw	low(_Buffer)
	addwf	(0+?___wmul),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_Buffer)
	addwfc	(1+?___wmul),c,w
	movwf	1+c:fsr2l
	movff	postinc2,??_main+4+0
	movff	postdec2,??_main+4+0+1
	incf	(??_main+3+0),c
	goto	u564
u565:
	bcf	status,0
	rlcf	(??_main+4+0),c
	rlcf	(??_main+4+1),c
u564:
	decfsz	(??_main+3+0),c
	goto	u565
	movf	(??_main+1+0),c,w
	iorwf	(??_main+4+0),c
	movf	(??_main+1+1),c,w
	iorwf	(??_main+4+1),c
	movff	(c:main@row),(c:___wmul@multiplier)
	movff	(c:main@row+1),(c:___wmul@multiplier+1)
	movlw	high(0Ah)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(0Ah)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movlb	0	; () banked
	movlw	low(_Buffer)
	addwf	(0+?___wmul),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_Buffer)
	addwfc	(1+?___wmul),c,w
	movwf	1+c:fsr2l
	movff	??_main+4+0,postinc2
	movff	??_main+4+1,postdec2

	line	174
	
l949:; BSR set to: 0

	infsnz	((c:main@row)),c
	incf	((c:main@row+1)),c
	
l951:; BSR set to: 0

	movlw	08h
	subwf	((c:main@row)),c,w
	movlw	0
	subwfb	((c:main@row+1)),c,w
	btfss	status,0
	goto	u571
	goto	u570
u571:
	goto	l935
u570:
	goto	l953
	
l51:; BSR set to: 0

	line	185
	
l953:
;Scrolling.c: 183: }
;Scrolling.c: 185: speed = 5;
	movlw	high(05h)
	movwf	((c:main@speed+1)),c
	movlw	low(05h)
	movwf	((c:main@speed)),c
	line	186
;Scrolling.c: 186: for(l=0; l<speed;l++)
	movlw	high(0)
	movwf	((c:main@l+1)),c
	movlw	low(0)
	movwf	((c:main@l)),c
	goto	l975
	line	187
	
l53:
	line	188
	
l955:
;Scrolling.c: 187: {
;Scrolling.c: 188: m = 1;
	movlw	high(01h)
	movwf	((c:main@m+1)),c
	movlw	low(01h)
	movwf	((c:main@m)),c
	line	189
;Scrolling.c: 189: for (i=0; i<8; i++)
	movlw	high(0)
	movwf	((c:main@i+1)),c
	movlw	low(0)
	movwf	((c:main@i)),c
	
l957:
	movlw	08h
	subwf	((c:main@i)),c,w
	movlw	0
	subwfb	((c:main@i+1)),c,w
	btfss	status,0
	goto	u581
	goto	u580
u581:
	goto	l961
u580:
	goto	l973
	
l959:
	goto	l973
	line	190
	
l54:
	line	191
	
l961:
;Scrolling.c: 190: {
;Scrolling.c: 191: Send_Data(i);
	movff	(c:main@i),(c:Send_Data@row)
	movff	(c:main@i+1),(c:Send_Data@row+1)
	call	_Send_Data	;wreg free
	line	192
	
l963:
;Scrolling.c: 192: PORTB = m;
	movff	(c:main@m),(c:3969)	;volatile
	line	193
	
l965:
;Scrolling.c: 193: m = m << 1;
	bcf	status,0
	rlcf	((c:main@m)),c,w
	
	movwf	((c:main@m)),c
	rlcf	((c:main@m+1)),c,w
	movwf	1+((c:main@m)),c
	line	194
	
l967:
;Scrolling.c: 194: _delay(1);
	nop
	line	189
	
l969:
	infsnz	((c:main@i)),c
	incf	((c:main@i+1)),c
	
l971:
	movlw	08h
	subwf	((c:main@i)),c,w
	movlw	0
	subwfb	((c:main@i+1)),c,w
	btfss	status,0
	goto	u591
	goto	u590
u591:
	goto	l961
u590:
	goto	l973
	
l55:
	line	186
	
l973:
	infsnz	((c:main@l)),c
	incf	((c:main@l+1)),c
	goto	l975
	
l52:
	
l975:
	movf	((c:main@speed)),c,w
	subwf	((c:main@l)),c,w
	movf	((c:main@speed+1)),c,w
	subwfb	((c:main@l+1)),c,w
	btfss	status,0
	goto	u601
	goto	u600
u601:
	goto	l955
u600:
	goto	l977
	
l56:
	line	168
	
l977:
	infsnz	((c:main@scroll)),c
	incf	((c:main@scroll+1)),c
	goto	l979
	
l48:
	
l979:
	movlw	high(08h)
	movwf	((c:___lwdiv@dividend+1)),c
	movlw	low(08h)
	movwf	((c:___lwdiv@dividend)),c
	movff	(c:main@Shift_Step),(c:___lwdiv@divisor)
	movff	(c:main@Shift_Step+1),(c:___lwdiv@divisor+1)
	call	___lwdiv	;wreg free
	movf	(0+?___lwdiv),c,w
	subwf	((c:main@scroll)),c,w
	movf	(1+?___lwdiv),c,w
	subwfb	((c:main@scroll+1)),c,w
	btfss	status,0
	goto	u611
	goto	u610
u611:
	goto	l929
u610:
	goto	l981
	
l57:
	line	166
	
l981:
	infsnz	((c:main@k)),c
	incf	((c:main@k+1)),c
	goto	l983
	
l46:
	
l983:
	movf	((c:main@StringLength)),c,w
	subwf	((c:main@k)),c,w
	movf	((c:main@StringLength+1)),c,w
	subwfb	((c:main@k+1)),c,w
	btfss	status,0
	goto	u621
	goto	u620
u621:
	goto	l927
u620:
	goto	l45
	
l58:
	line	199
;Scrolling.c: 195: }
;Scrolling.c: 196: }
;Scrolling.c: 197: }
;Scrolling.c: 198: }
;Scrolling.c: 199: } while(1);
	goto	l45
	
l59:
	line	200
	
l60:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_strlen

;; *************** function _strlen *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\strlen.c"
;; Parameters:    Size  Location     Type
;;  s               2    0[COMRAM] PTR const unsigned char 
;;		 -> main@default_message(37), 
;; Auto vars:     Size  Location     Type
;;  cp              2    4[COMRAM] PTR const unsigned char 
;;		 -> main@default_message(37), 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] unsigned int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\strlen.c"
	line	4
global __ptext1
__ptext1:
psect	text1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\strlen.c"
	line	4
	global	__size_of_strlen
	__size_of_strlen	equ	__end_of_strlen-_strlen
	
_strlen:
;incstack = 0
	opt	stack 30
	dw	0FFFFh
	line	8
	
l831:
		movff	(c:strlen@s+1),(c:strlen@cp+1)
	movff	(c:strlen@s),(c:strlen@cp)

	line	9
	goto	l835
	
l621:
	line	10
	
l833:
	infsnz	((c:strlen@cp)),c
	incf	((c:strlen@cp+1)),c
	goto	l835
	line	11
	
l620:
	line	9
	
l835:
	movff	(c:strlen@cp),fsr2l
	movff	(c:strlen@cp+1),fsr2h
	movf	indf2,w
	btfss	status,2
	goto	u321
	goto	u320
u321:
	goto	l833
u320:
	goto	l837
	
l622:
	line	12
	
l837:
	movff	(c:strlen@s),??_strlen+0+0
	movff	(c:strlen@s+1),??_strlen+0+0+1
	comf	(??_strlen+0+0),c
	comf	(??_strlen+0+1),c
	infsnz	(??_strlen+0+0),c
	incf	(??_strlen+0+1),c
	movf	((c:strlen@cp)),c,w
	addwf	(??_strlen+0+0),c,w
	
	movwf	((c:?_strlen)),c
	movf	((c:strlen@cp+1)),c,w
	addwfc	(??_strlen+0+1),c,w
	movwf	1+((c:?_strlen)),c
	goto	l623
	
l839:
	line	13
	
l623:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_strlen
	__end_of_strlen:
	signat	_strlen,4218
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    0[COMRAM] unsigned int 
;;  divisor         2    2[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    4[COMRAM] unsigned int 
;;  counter         1    6[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] unsigned int 
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	8
global __ptext2
__ptext2:
psect	text2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	8
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:
;incstack = 0
	opt	stack 30
	dw	0FFFFh
	line	14
	
l881:
	movlw	high(0)
	movwf	((c:___lwdiv@quotient+1)),c
	movlw	low(0)
	movwf	((c:___lwdiv@quotient)),c
	line	15
	
l883:
	movf	((c:___lwdiv@divisor+1)),c,w
	iorwf ((c:___lwdiv@divisor)),c,w

	btfsc	status,2
	goto	u401
	goto	u400
u401:
	goto	l590
u400:
	line	16
	
l885:
	movlw	low(01h)
	movwf	((c:___lwdiv@counter)),c
	line	17
	goto	l889
	
l592:
	line	18
	
l887:
	bcf	status,0
	rlcf	((c:___lwdiv@divisor)),c
	rlcf	((c:___lwdiv@divisor+1)),c
	line	19
	incf	((c:___lwdiv@counter)),c
	goto	l889
	line	20
	
l591:
	line	17
	
l889:
	
	btfss	((c:___lwdiv@divisor+1)),c,(15)&7
	goto	u411
	goto	u410
u411:
	goto	l887
u410:
	goto	l891
	
l593:
	goto	l891
	line	21
	
l594:
	line	22
	
l891:
	bcf	status,0
	rlcf	((c:___lwdiv@quotient)),c
	rlcf	((c:___lwdiv@quotient+1)),c
	line	23
	
l893:
	movf	((c:___lwdiv@divisor)),c,w
	subwf	((c:___lwdiv@dividend)),c,w
	movf	((c:___lwdiv@divisor+1)),c,w
	subwfb	((c:___lwdiv@dividend+1)),c,w
	btfss	status,0
	goto	u421
	goto	u420
u421:
	goto	l899
u420:
	line	24
	
l895:
	movf	((c:___lwdiv@divisor)),c,w
	subwf	((c:___lwdiv@dividend)),c
	movf	((c:___lwdiv@divisor+1)),c,w
	subwfb	((c:___lwdiv@dividend+1)),c

	line	25
	
l897:
	bsf	(0+(0/8)+(c:___lwdiv@quotient)),c,(0)&7
	goto	l899
	line	26
	
l595:
	line	27
	
l899:
	bcf	status,0
	rrcf	((c:___lwdiv@divisor+1)),c
	rrcf	((c:___lwdiv@divisor)),c
	line	28
	
l901:
	decfsz	((c:___lwdiv@counter)),c
	
	goto	l891
	goto	l590
	
l596:
	line	29
	
l590:
	line	30
	movff	(c:___lwdiv@quotient),(c:?___lwdiv)
	movff	(c:___lwdiv@quotient+1),(c:?___lwdiv+1)
	line	31
	
l597:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_Send_Data

;; *************** function _Send_Data *****************
;; Defined at:
;;		line 212 in file "E:\Study Material\XC8 PROJECTS\Scrolling Message\Scrolling.c"
;; Parameters:    Size  Location     Type
;;  row             2    6[COMRAM] unsigned short 
;; Auto vars:     Size  Location     Type
;;  column          2   18[COMRAM] unsigned short 
;;  bits            2   16[COMRAM] unsigned short 
;;  Mask            2   14[COMRAM] unsigned short 
;;  Flag            2   12[COMRAM] unsigned short 
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
;;      Locals:         8       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0
;;      Totals:        14       0       0       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___wmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Scrolling Message\Scrolling.c"
	line	212
global __ptext3
__ptext3:
psect	text3
	file	"E:\Study Material\XC8 PROJECTS\Scrolling Message\Scrolling.c"
	line	212
	global	__size_of_Send_Data
	__size_of_Send_Data	equ	__end_of_Send_Data-_Send_Data
	
_Send_Data:
;incstack = 0
	opt	stack 29
	dw	0FFFFh
	line	215
	
l849:
;Scrolling.c: 214: unsigned short Mask, bits, column, Flag;
;Scrolling.c: 215: PORTC = 0x00;
	movlw	low(0)
	movwf	((c:3970)),c	;volatile
	line	217
;Scrolling.c: 217: for (column = 0; column < 5; column++)
	movlw	high(0)
	movwf	((c:Send_Data@column+1)),c
	movlw	low(0)
	movwf	((c:Send_Data@column)),c
	
l851:
	movlw	05h
	subwf	((c:Send_Data@column)),c,w
	movlw	0
	subwfb	((c:Send_Data@column+1)),c,w
	btfss	status,0
	goto	u341
	goto	u340
u341:
	goto	l855
u340:
	goto	l70
	
l853:
	goto	l70
	line	218
	
l69:
	line	220
	
l855:
;Scrolling.c: 218: {
;Scrolling.c: 220: Mask = 0x01;
	movlw	high(01h)
	movwf	((c:Send_Data@Mask+1)),c
	movlw	low(01h)
	movwf	((c:Send_Data@Mask)),c
	line	221
;Scrolling.c: 221: for (bits=0; bits<8; bits++)
	movlw	high(0)
	movwf	((c:Send_Data@bits+1)),c
	movlw	low(0)
	movwf	((c:Send_Data@bits)),c
	
l857:
	movlw	08h
	subwf	((c:Send_Data@bits)),c,w
	movlw	0
	subwfb	((c:Send_Data@bits+1)),c,w
	btfss	status,0
	goto	u351
	goto	u350
u351:
	goto	l861
u350:
	goto	l877
	
l859:
	goto	l877
	line	222
	
l71:
	line	224
	
l861:
;Scrolling.c: 222: {
;Scrolling.c: 224: Flag = Buffer[row][column] & Mask;
	movff	(c:Send_Data@row),(c:___wmul@multiplier)
	movff	(c:Send_Data@row+1),(c:___wmul@multiplier+1)
	movlw	high(0Ah)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(0Ah)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movlw	low(_Buffer)
	movwf	(??_Send_Data+0+0)&0ffh,c
	movlw	high(_Buffer)
	movwf	(??_Send_Data+0+0+1)&0ffh,c
	movf	(0+?___wmul),c,w
	addwf	(??_Send_Data+0+0),c
	movf	(1+?___wmul),c,w
	addwfc	(??_Send_Data+0+1),c
	bcf	status,0
	rlcf	((c:Send_Data@column)),c,w
	movwf	fsr2l
	rlcf	((c:Send_Data@column+1)),c,w
	movwf	fsr2h
	movf	(??_Send_Data+0+0),c,w
	addwf	fsr2l
	movf	(??_Send_Data+0+1),c,w
	addwfc	fsr2h

	movff	postinc2,??_Send_Data+2+0
	movff	postdec2,??_Send_Data+2+0+1
	movf	((c:Send_Data@Mask)),c,w
	andwf	(??_Send_Data+2+0),c,w
	
	movwf	((c:Send_Data@Flag)),c
	movf	((c:Send_Data@Mask+1)),c,w
	andwf	(??_Send_Data+2+1),c,w
	movwf	1+((c:Send_Data@Flag)),c
	line	225
	
l863:
;Scrolling.c: 225: if(Flag == 0)
	movf	((c:Send_Data@Flag+1)),c,w
	iorwf ((c:Send_Data@Flag)),c,w

	btfss	status,2
	goto	u361
	goto	u360
u361:
	goto	l867
u360:
	line	227
	
l865:
;Scrolling.c: 226: {
;Scrolling.c: 227: RC0 = 0;
	bcf	c:(31760/8),(31760)&7	;volatile
	line	228
;Scrolling.c: 228: _delay(1);
	nop
	line	229
;Scrolling.c: 229: RC1 = 1;
	bsf	c:(31761/8),(31761)&7	;volatile
	line	230
;Scrolling.c: 230: _delay(1);
	nop
	line	231
;Scrolling.c: 231: RC1 = 0;
	bcf	c:(31761/8),(31761)&7	;volatile
	goto	l867
	line	232
	
l73:
	line	233
	
l867:
;Scrolling.c: 232: }
;Scrolling.c: 233: if(Flag > 0)
	movf	((c:Send_Data@Flag+1)),c,w
	iorwf ((c:Send_Data@Flag)),c,w

	btfsc	status,2
	goto	u371
	goto	u370
u371:
	goto	l871
u370:
	line	235
	
l869:
;Scrolling.c: 234: {
;Scrolling.c: 235: RC0 = 1;
	bsf	c:(31760/8),(31760)&7	;volatile
	line	236
;Scrolling.c: 236: _delay(1);
	nop
	line	237
;Scrolling.c: 237: RC1 = 1;
	bsf	c:(31761/8),(31761)&7	;volatile
	line	238
;Scrolling.c: 238: _delay(1);
	nop
	line	239
;Scrolling.c: 239: RC1 = 0;
	bcf	c:(31761/8),(31761)&7	;volatile
	goto	l871
	line	240
	
l74:
	line	241
	
l871:
;Scrolling.c: 240: }
;Scrolling.c: 241: Mask = Mask << 1;
	bcf	status,0
	rlcf	((c:Send_Data@Mask)),c,w
	
	movwf	((c:Send_Data@Mask)),c
	rlcf	((c:Send_Data@Mask+1)),c,w
	movwf	1+((c:Send_Data@Mask)),c
	line	221
	
l873:
	infsnz	((c:Send_Data@bits)),c
	incf	((c:Send_Data@bits+1)),c
	
l875:
	movlw	08h
	subwf	((c:Send_Data@bits)),c,w
	movlw	0
	subwfb	((c:Send_Data@bits+1)),c,w
	btfss	status,0
	goto	u381
	goto	u380
u381:
	goto	l861
u380:
	goto	l877
	
l72:
	line	217
	
l877:
	infsnz	((c:Send_Data@column)),c
	incf	((c:Send_Data@column+1)),c
	
l879:
	movlw	05h
	subwf	((c:Send_Data@column)),c,w
	movlw	0
	subwfb	((c:Send_Data@column+1)),c,w
	btfss	status,0
	goto	u391
	goto	u390
u391:
	goto	l855
u390:
	
l70:
	line	245
;Scrolling.c: 242: }
;Scrolling.c: 243: }
;Scrolling.c: 245: RC2 = 1;
	bsf	c:(31762/8),(31762)&7	;volatile
	line	246
;Scrolling.c: 246: _delay(1);
	nop
	line	247
;Scrolling.c: 247: RC2 = 0;
	bcf	c:(31762/8),(31762)&7	;volatile
	line	248
	
l75:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_Send_Data
	__end_of_Send_Data:
	signat	_Send_Data,4216
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMRAM] unsigned int 
;;  multiplicand    2    2[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] unsigned int 
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_Send_Data
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
global __ptext4
__ptext4:
psect	text4
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:
;incstack = 0
	opt	stack 30
	dw	0FFFFh
	line	37
	
l825:
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
	
l827:
	movff	(c:___wmul@product),(c:?___wmul)
	movff	(c:___wmul@product+1),(c:?___wmul+1)
	goto	l78
	
l829:
	line	53
	
l78:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	_MY_DELAY

;; *************** function _MY_DELAY *****************
;; Defined at:
;;		line 202 in file "E:\Study Material\XC8 PROJECTS\Scrolling Message\Scrolling.c"
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
psect	text5,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Scrolling Message\Scrolling.c"
	line	202
global __ptext5
__ptext5:
psect	text5
	file	"E:\Study Material\XC8 PROJECTS\Scrolling Message\Scrolling.c"
	line	202
	global	__size_of_MY_DELAY
	__size_of_MY_DELAY	equ	__end_of_MY_DELAY-_MY_DELAY
	
_MY_DELAY:
;incstack = 0
	opt	stack 30
	dw	0FFFFh
	line	204
	
l841:
;Scrolling.c: 204: while(ms > 0)
	goto	l847
	
l64:
	line	206
	
l843:
;Scrolling.c: 205: {
;Scrolling.c: 206: _delay((unsigned long)((1)*(12000000/4000.0)));
	movlw	3
movwf	(??_MY_DELAY+0+0)&0ffh,c,f
	movlw	236
u637:
	decfsz	wreg,f
	goto	u637
	decfsz	(??_MY_DELAY+0+0)&0ffh,c,f
	goto	u637

	line	207
	
l845:
;Scrolling.c: 207: ms--;
	decf	((c:MY_DELAY@ms)),c
	btfss	status,0
	decf	((c:MY_DELAY@ms+1)),c
	goto	l847
	line	208
	
l63:
	line	204
	
l847:
	movf	((c:MY_DELAY@ms+1)),c,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	01h
	btfsc	status,2
	subwf	((c:MY_DELAY@ms)),c,w
	btfsc	status,0
	goto	u331
	goto	u330
u331:
	goto	l843
u330:
	goto	l66
	
l65:
	line	210
;Scrolling.c: 208: }
;Scrolling.c: 209: return;
	
l66:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_MY_DELAY
	__end_of_MY_DELAY:
	signat	_MY_DELAY,4216
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

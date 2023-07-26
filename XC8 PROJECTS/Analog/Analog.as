opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 58300"

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
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
PORTA equ 0F80h ;# 
# 211 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
PORTB equ 0F81h ;# 
# 335 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
PORTC equ 0F82h ;# 
# 504 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
PORTD equ 0F83h ;# 
# 624 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
PORTE equ 0F84h ;# 
# 882 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
LATA equ 0F89h ;# 
# 1017 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
LATB equ 0F8Ah ;# 
# 1149 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
LATC equ 0F8Bh ;# 
# 1281 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
LATD equ 0F8Ch ;# 
# 1413 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
LATE equ 0F8Dh ;# 
# 1515 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
TRISA equ 0F92h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
DDRA equ 0F92h ;# 
# 1712 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
TRISB equ 0F93h ;# 
# 1717 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
DDRB equ 0F93h ;# 
# 1951 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
TRISC equ 0F94h ;# 
# 1956 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
DDRC equ 0F94h ;# 
# 2190 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
TRISD equ 0F95h ;# 
# 2195 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
DDRD equ 0F95h ;# 
# 2411 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
TRISE equ 0F96h ;# 
# 2416 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
DDRE equ 0F96h ;# 
# 2562 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
PIE1 equ 0F9Dh ;# 
# 2641 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
PIR1 equ 0F9Eh ;# 
# 2720 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
IPR1 equ 0F9Fh ;# 
# 2799 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
PIE2 equ 0FA0h ;# 
# 2842 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
PIR2 equ 0FA1h ;# 
# 2885 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
IPR2 equ 0FA2h ;# 
# 2928 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
EECON1 equ 0FA6h ;# 
# 2993 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
EECON2 equ 0FA7h ;# 
# 2999 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
EEDATA equ 0FA8h ;# 
# 3005 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
EEADR equ 0FA9h ;# 
# 3011 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
RCSTA equ 0FABh ;# 
# 3016 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
RCSTA1 equ 0FABh ;# 
# 3234 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
TXSTA equ 0FACh ;# 
# 3239 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
TXSTA1 equ 0FACh ;# 
# 3535 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
TXREG equ 0FADh ;# 
# 3540 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
TXREG1 equ 0FADh ;# 
# 3546 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
RCREG equ 0FAEh ;# 
# 3551 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
RCREG1 equ 0FAEh ;# 
# 3557 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
SPBRG equ 0FAFh ;# 
# 3562 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
SPBRG1 equ 0FAFh ;# 
# 3568 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
T3CON equ 0FB1h ;# 
# 3690 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
TMR3 equ 0FB2h ;# 
# 3696 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
TMR3L equ 0FB2h ;# 
# 3702 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
TMR3H equ 0FB3h ;# 
# 3708 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
CCP2CON equ 0FBAh ;# 
# 3795 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
CCPR2 equ 0FBBh ;# 
# 3801 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
CCPR2L equ 0FBBh ;# 
# 3807 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
CCPR2H equ 0FBCh ;# 
# 3813 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
CCP1CON equ 0FBDh ;# 
# 3891 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
CCPR1 equ 0FBEh ;# 
# 3897 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
CCPR1L equ 0FBEh ;# 
# 3903 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
CCPR1H equ 0FBFh ;# 
# 3909 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
ADCON1 equ 0FC1h ;# 
# 3976 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
ADCON0 equ 0FC2h ;# 
# 4120 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
ADRES equ 0FC3h ;# 
# 4126 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
ADRESL equ 0FC3h ;# 
# 4132 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
ADRESH equ 0FC4h ;# 
# 4138 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
SSPCON2 equ 0FC5h ;# 
# 4199 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
SSPCON1 equ 0FC6h ;# 
# 4268 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
SSPSTAT equ 0FC7h ;# 
# 4543 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
SSPADD equ 0FC8h ;# 
# 4549 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
SSPBUF equ 0FC9h ;# 
# 4555 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
T2CON equ 0FCAh ;# 
# 4625 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
PR2 equ 0FCBh ;# 
# 4630 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
MEMCON equ 0FCBh ;# 
# 4734 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
TMR2 equ 0FCCh ;# 
# 4740 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
T1CON equ 0FCDh ;# 
# 4848 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
TMR1 equ 0FCEh ;# 
# 4854 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
TMR1L equ 0FCEh ;# 
# 4860 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
TMR1H equ 0FCFh ;# 
# 4866 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
RCON equ 0FD0h ;# 
# 5008 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
WDTCON equ 0FD1h ;# 
# 5035 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
LVDCON equ 0FD2h ;# 
# 5092 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
OSCCON equ 0FD3h ;# 
# 5111 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
T0CON equ 0FD5h ;# 
# 5180 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
TMR0 equ 0FD6h ;# 
# 5186 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
TMR0L equ 0FD6h ;# 
# 5192 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
TMR0H equ 0FD7h ;# 
# 5198 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
STATUS equ 0FD8h ;# 
# 5276 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
FSR2 equ 0FD9h ;# 
# 5282 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
FSR2L equ 0FD9h ;# 
# 5288 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
FSR2H equ 0FDAh ;# 
# 5294 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
PLUSW2 equ 0FDBh ;# 
# 5300 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
PREINC2 equ 0FDCh ;# 
# 5306 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
POSTDEC2 equ 0FDDh ;# 
# 5312 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
POSTINC2 equ 0FDEh ;# 
# 5318 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
INDF2 equ 0FDFh ;# 
# 5324 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
BSR equ 0FE0h ;# 
# 5330 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
FSR1 equ 0FE1h ;# 
# 5336 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
FSR1L equ 0FE1h ;# 
# 5342 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
FSR1H equ 0FE2h ;# 
# 5348 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
PLUSW1 equ 0FE3h ;# 
# 5354 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
PREINC1 equ 0FE4h ;# 
# 5360 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
POSTDEC1 equ 0FE5h ;# 
# 5366 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
POSTINC1 equ 0FE6h ;# 
# 5372 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
INDF1 equ 0FE7h ;# 
# 5378 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
WREG equ 0FE8h ;# 
# 5389 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
FSR0 equ 0FE9h ;# 
# 5395 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
FSR0L equ 0FE9h ;# 
# 5401 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
FSR0H equ 0FEAh ;# 
# 5407 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
PLUSW0 equ 0FEBh ;# 
# 5413 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
PREINC0 equ 0FECh ;# 
# 5419 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
POSTDEC0 equ 0FEDh ;# 
# 5425 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
POSTINC0 equ 0FEEh ;# 
# 5431 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
INDF0 equ 0FEFh ;# 
# 5437 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
INTCON3 equ 0FF0h ;# 
# 5528 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
INTCON2 equ 0FF1h ;# 
# 5604 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
INTCON equ 0FF2h ;# 
# 5609 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
INTCON1 equ 0FF2h ;# 
# 5875 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
PROD equ 0FF3h ;# 
# 5881 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
PRODL equ 0FF3h ;# 
# 5887 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
PRODH equ 0FF4h ;# 
# 5893 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
TABLAT equ 0FF5h ;# 
# 5901 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
TBLPTR equ 0FF6h ;# 
# 5907 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
TBLPTRL equ 0FF6h ;# 
# 5913 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
TBLPTRH equ 0FF7h ;# 
# 5919 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
TBLPTRU equ 0FF8h ;# 
# 5927 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
PCLAT equ 0FF9h ;# 
# 5934 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
PC equ 0FF9h ;# 
# 5940 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
PCL equ 0FF9h ;# 
# 5946 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
PCLATH equ 0FFAh ;# 
# 5952 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
PCLATU equ 0FFBh ;# 
# 5958 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
STKPTR equ 0FFCh ;# 
# 6063 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
TOS equ 0FFDh ;# 
# 6069 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
TOSL equ 0FFDh ;# 
# 6075 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
TOSH equ 0FFEh ;# 
# 6081 "C:\Program Files (x86)\Microchip\xc8\v1.32\include\pic18f452.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,_BusyADC
	FNCALL	_main,_ConvertADC
	FNCALL	_main,_OpenADC
	FNCALL	_main,_ReadADC
	FNCALL	_main,_Read_b_eep
	FNCALL	_main,_SetChanADC
	FNCALL	_main,_Write_b_eep
	FNCALL	_main,___awdiv
	FNCALL	_main,___awmod
	FNCALL	_main,___awtoft
	FNCALL	_main,___ftadd
	FNCALL	_main,___ftdiv
	FNCALL	_main,___ftge
	FNCALL	_main,___ftmul
	FNCALL	_main,___fttol
	FNCALL	_main,___lbtoft
	FNCALL	_main,___lwdiv
	FNCALL	_main,___lwmod
	FNCALL	___lbtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	___awtoft,___ftpack
	FNROOT	_main
	FNCALL	intlevel2,_tmr_int
	global	intlevel2
	FNROOT	intlevel2
	global	_values
	global	_temperature_timer
psect	idataCOMRAM,class=CODE,space=0,delta=1,noexec
global __pidataCOMRAM
__pidataCOMRAM:
	file	"E:\Study Material\XC8 PROJECTS\Analog\CO2.c"
	line	7

;initializer for _values
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(030h)
	db	low(0)
	db	low(0)
	line	8

;initializer for _temperature_timer
	dw	(02710h)&0ffffh
	global	_analog_result
	global	_analog_temp_result
	global	_timer
	global	_adr
	global	_count
	global	_TMR0
_TMR0	set	0xFD6
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
	global	_INTCON
_INTCON	set	0xFF2
	global	_INTCONbits
_INTCONbits	set	0xFF2
	global	_PIE1bits
_PIE1bits	set	0xF9D
	global	_PIR1bits
_PIR1bits	set	0xF9E
	global	_PORTB
_PORTB	set	0xF81
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
	global	_RA4
_RA4	set	0x7C04
	global	_RB0
_RB0	set	0x7C08
	global	_RB1
_RB1	set	0x7C09
	global	_RB2
_RB2	set	0x7C0A
	global	_RC0
_RC0	set	0x7C10
	global	_RC1
_RC1	set	0x7C11
	global	_RC2
_RC2	set	0x7C12
	global	_RC3
_RC3	set	0x7C13
	global	_RC6
_RC6	set	0x7C16
	global	_RC7
_RC7	set	0x7C17
	global	_T0IF
_T0IF	set	0x7F92
; #config settings
	file	"Analog.as"
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
	global	_analog_result
_analog_result:
       ds      2
	global	_analog_temp_result
_analog_temp_result:
       ds      2
	global	_timer
_timer:
       ds      2
	global	_adr
_adr:
       ds      1
	global	_count
_count:
       ds      1
psect	dataCOMRAM,class=COMRAM,space=1,noexec
global __pdataCOMRAM
__pdataCOMRAM:
	file	"E:\Study Material\XC8 PROJECTS\Analog\CO2.c"
	line	7
	global	_values
_values:
       ds      14
psect	dataCOMRAM
	file	"E:\Study Material\XC8 PROJECTS\Analog\CO2.c"
	line	8
	global	_temperature_timer
_temperature_timer:
       ds      2
	file	"Analog.as"
	line	#
psect	cinit
; Clear objects allocated to COMRAM (8 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	8
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
?_SetChanADC:	; 0 bytes @ 0x0
?_ConvertADC:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_tmr_int:	; 0 bytes @ 0x0
??_tmr_int:	; 0 bytes @ 0x0
?_BusyADC:	; 1 bytes @ 0x0
	ds   14
?_OpenADC:	; 0 bytes @ 0xE
??_SetChanADC:	; 0 bytes @ 0xE
??_ConvertADC:	; 0 bytes @ 0xE
??_BusyADC:	; 0 bytes @ 0xE
?_Write_b_eep:	; 0 bytes @ 0xE
?___ftge:	; 1 bit 
?_Read_b_eep:	; 1 bytes @ 0xE
	global	?_ReadADC
?_ReadADC:	; 2 bytes @ 0xE
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0xE
	global	?___awmod
?___awmod:	; 2 bytes @ 0xE
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0xE
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0xE
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0xE
	global	OpenADC@config2
OpenADC@config2:	; 1 bytes @ 0xE
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
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0xE
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0xE
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0xE
	ds   1
??_OpenADC:	; 0 bytes @ 0xF
	global	SetChanADC@channel
SetChanADC@channel:	; 1 bytes @ 0xF
	ds   1
??_Read_b_eep:	; 0 bytes @ 0x10
??_ReadADC:	; 0 bytes @ 0x10
	global	OpenADC@config
OpenADC@config:	; 1 bytes @ 0x10
	global	Write_b_eep@bdat
Write_b_eep@bdat:	; 1 bytes @ 0x10
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x10
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x10
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x10
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x10
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
??___lwmod:	; 0 bytes @ 0x12
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x12
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x12
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x12
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x12
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
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x16
	global	?___lbtoft
?___lbtoft:	; 3 bytes @ 0x16
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x16
	ds   3
??___awtoft:	; 0 bytes @ 0x19
??___lbtoft:	; 0 bytes @ 0x19
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0x19
	global	___lbtoft@c
___lbtoft@c:	; 1 bytes @ 0x19
	ds   1
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x1A
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x1A
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x1A
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x1A
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x1A
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x1A
	ds   3
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x1D
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x1D
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x1D
	ds   3
??___ftadd:	; 0 bytes @ 0x20
??___ftdiv:	; 0 bytes @ 0x20
??___ftmul:	; 0 bytes @ 0x20
	ds   3
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x23
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x23
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x23
	ds   1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x24
	ds   1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x25
	ds   1
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x26
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x26
	ds   1
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x27
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x27
	ds   1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x28
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x28
	ds   1
	global	?___fttol
?___fttol:	; 4 bytes @ 0x29
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x29
	ds   4
??___fttol:	; 0 bytes @ 0x2D
	ds   5
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x32
	ds   1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x33
	ds   4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x37
	ds   1
??_main:	; 0 bytes @ 0x38
	ds   7
	global	main@temp_volume
main@temp_volume:	; 3 bytes @ 0x3F
	ds   3
	global	main@real_temp
main@real_temp:	; 3 bytes @ 0x42
	ds   3
	global	main@portd_old_status
main@portd_old_status:	; 1 bytes @ 0x45
	ds   1
	global	main@volve
main@volve:	; 1 bytes @ 0x46
	ds   1
	global	main@temp
main@temp:	; 1 bytes @ 0x47
	ds   1
	global	main@debounce
main@debounce:	; 1 bytes @ 0x48
	ds   1
	global	main@actual_flow
main@actual_flow:	; 1 bytes @ 0x49
	ds   1
	global	main@control
main@control:	; 1 bytes @ 0x4A
	ds   1
	global	main@temp_time
main@temp_time:	; 1 bytes @ 0x4B
	ds   1
	global	main@hand_flag
main@hand_flag:	; 1 bytes @ 0x4C
	ds   1
	global	main@volume
main@volume:	; 2 bytes @ 0x4D
	ds   2
	global	main@real_volume
main@real_volume:	; 3 bytes @ 0x4F
	ds   3
	global	main@real_pressure
main@real_pressure:	; 1 bytes @ 0x52
	ds   1
	global	main@air
main@air:	; 1 bytes @ 0x53
	ds   1
	global	main@hundreds
main@hundreds:	; 1 bytes @ 0x54
	ds   1
	global	main@set_flow
main@set_flow:	; 1 bytes @ 0x55
	ds   1
	global	main@actual_pressure
main@actual_pressure:	; 1 bytes @ 0x56
	ds   1
	global	main@set_pressure
main@set_pressure:	; 1 bytes @ 0x57
	ds   1
	global	main@units
main@units:	; 1 bytes @ 0x58
	ds   1
	global	main@tens
main@tens:	; 1 bytes @ 0x59
	ds   1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        16
;!    BSS         8
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM          127     90     114
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
;!    _main->___fttol
;!    ___lbtoft->___ftpack
;!    ___fttol->___ftdiv
;!    ___ftmul->___lbtoft
;!    ___ftdiv->___awtoft
;!    ___ftadd->___awtoft
;!    ___ftadd->___lbtoft
;!    ___awtoft->___awdiv
;!    ___awtoft->___ftpack
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
;;Main: autosize = 0, tempsize = 7, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                34    34      0   19163
;!                                             56 COMRAM    34    34      0
;!                            _BusyADC
;!                         _ConvertADC
;!                            _OpenADC
;!                            _ReadADC
;!                         _Read_b_eep
;!                         _SetChanADC
;!                        _Write_b_eep
;!                            ___awdiv
;!                            ___awmod
;!                           ___awtoft
;!                            ___ftadd
;!                            ___ftdiv
;!                             ___ftge
;!                            ___ftmul
;!                            ___fttol
;!                           ___lbtoft
;!                            ___lwdiv
;!                            ___lwmod
;! ---------------------------------------------------------------------------------
;! (1) ___lwmod                                              5     1      4     211
;!                                             14 COMRAM     5     1      4
;! ---------------------------------------------------------------------------------
;! (1) ___lwdiv                                              7     3      4     317
;!                                             14 COMRAM     7     3      4
;! ---------------------------------------------------------------------------------
;! (1) ___lbtoft                                             4     1      3    1755
;!                                             22 COMRAM     4     1      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (1) ___fttol                                             15    11      4     324
;!                                             41 COMRAM    15    11      4
;!                           ___awtoft (ARG)
;!                            ___ftdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (1) ___ftmul                                             15     9      6    2146
;!                                             26 COMRAM    15     9      6
;!                           ___ftpack
;!                           ___lbtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (1) ___ftge                                               9     3      6     302
;!                                             14 COMRAM     9     3      6
;! ---------------------------------------------------------------------------------
;! (1) ___ftdiv                                             15     9      6    2222
;!                                             26 COMRAM    15     9      6
;!                           ___awtoft (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (1) ___ftadd                                             12     6      6    2793
;!                                             26 COMRAM    12     6      6
;!                           ___awtoft (ARG)
;!                           ___ftpack
;!                           ___lbtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (1) ___awtoft                                             4     1      3    2065
;!                                             22 COMRAM     4     1      3
;!                            ___awdiv (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (2) ___ftpack                                             8     3      5    1740
;!                                             14 COMRAM     8     3      5
;! ---------------------------------------------------------------------------------
;! (1) ___awmod                                              6     2      4    1467
;!                                             14 COMRAM     6     2      4
;! ---------------------------------------------------------------------------------
;! (1) ___awdiv                                              8     4      4    1573
;!                                             14 COMRAM     8     4      4
;! ---------------------------------------------------------------------------------
;! (1) _Write_b_eep                                          4     1      3    1105
;!                                             14 COMRAM     4     1      3
;! ---------------------------------------------------------------------------------
;! (1) _SetChanADC                                           2     2      0      15
;!                                             14 COMRAM     2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _Read_b_eep                                           2     0      2     280
;!                                             14 COMRAM     2     0      2
;! ---------------------------------------------------------------------------------
;! (1) _ReadADC                                              2     0      2       0
;!                                             14 COMRAM     2     0      2
;! ---------------------------------------------------------------------------------
;! (1) _OpenADC                                              3     2      1     113
;!                                             14 COMRAM     3     2      1
;! ---------------------------------------------------------------------------------
;! (1) _ConvertADC                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _BusyADC                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (3) _tmr_int                                             14    14      0       0
;!                                              0 COMRAM    14    14      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _BusyADC
;!   _ConvertADC
;!   _OpenADC
;!   _ReadADC
;!   _Read_b_eep
;!   _SetChanADC
;!   _Write_b_eep
;!   ___awdiv
;!   ___awmod
;!   ___awtoft
;!     ___awdiv (ARG)
;!     ___ftpack (ARG)
;!   ___ftadd
;!     ___awtoft (ARG)
;!       ___awdiv (ARG)
;!       ___ftpack (ARG)
;!     ___ftpack (ARG)
;!     ___lbtoft (ARG)
;!       ___ftpack
;!   ___ftdiv
;!     ___awtoft (ARG)
;!       ___awdiv (ARG)
;!       ___ftpack (ARG)
;!     ___ftpack (ARG)
;!   ___ftge
;!   ___ftmul
;!     ___ftpack
;!     ___lbtoft (ARG)
;!       ___ftpack
;!   ___fttol
;!     ___awtoft (ARG)
;!       ___awdiv (ARG)
;!       ___ftpack (ARG)
;!     ___ftdiv (ARG)
;!       ___awtoft (ARG)
;!         ___awdiv (ARG)
;!         ___ftpack (ARG)
;!       ___ftpack (ARG)
;!   ___lbtoft
;!     ___ftpack
;!   ___lwdiv
;!   ___lwmod
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
;!COMRAM              7F     5A      72       1       89.8%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      72      15        0.0%
;!DATA                 0      0      72       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 11 in file "E:\Study Material\XC8 PROJECTS\Analog\CO2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  real_volume     3   79[COMRAM] float 
;;  real_temp       3   66[COMRAM] float 
;;  temp_volume     3   63[COMRAM] float 
;;  volume          2   77[COMRAM] unsigned int 
;;  tens            1   89[COMRAM] unsigned char 
;;  units           1   88[COMRAM] unsigned char 
;;  set_pressure    1   87[COMRAM] unsigned char 
;;  actual_press    1   86[COMRAM] unsigned char 
;;  set_flow        1   85[COMRAM] unsigned char 
;;  hundreds        1   84[COMRAM] unsigned char 
;;  air             1   83[COMRAM] unsigned char 
;;  real_pressur    1   82[COMRAM] unsigned char 
;;  hand_flag       1   76[COMRAM] unsigned char 
;;  temp_time       1   75[COMRAM] unsigned char 
;;  control         1   74[COMRAM] unsigned char 
;;  actual_flow     1   73[COMRAM] unsigned char 
;;  debounce        1   72[COMRAM] unsigned char 
;;  temp            1   71[COMRAM] unsigned char 
;;  volve           1   70[COMRAM] unsigned char 
;;  portd_old_st    1   69[COMRAM] unsigned char 
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
;;      Locals:        27       0       0       0       0       0       0
;;      Temps:          7       0       0       0       0       0       0
;;      Totals:        34       0       0       0       0       0       0
;;Total ram usage:       34 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_BusyADC
;;		_ConvertADC
;;		_OpenADC
;;		_ReadADC
;;		_Read_b_eep
;;		_SetChanADC
;;		_Write_b_eep
;;		___awdiv
;;		___awmod
;;		___awtoft
;;		___ftadd
;;		___ftdiv
;;		___ftge
;;		___ftmul
;;		___fttol
;;		___lbtoft
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"E:\Study Material\XC8 PROJECTS\Analog\CO2.c"
	line	11
global __ptext0
__ptext0:
psect	text0
	file	"E:\Study Material\XC8 PROJECTS\Analog\CO2.c"
	line	11
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 28
	dw	0FFFFh
	line	13
	
l1270:
;CO2.c: 13: unsigned char set_pressure = 0, set_flow = 0, actual_flow = 0, actual_pressure = 0, real_pressure = 0, portd_old_status = 0xFF, units = 0, tens = 0, hundreds = 0, debounce = 0, control = 0, volve = 0, temp_time = 0, air = 0, temp = 0, hand_flag = 0;
	movlw	low(0)
	movwf	((c:main@set_pressure)),c
	movlw	low(0)
	movwf	((c:main@set_flow)),c
	movlw	low(0)
	movwf	((c:main@actual_flow)),c
	movlw	low(0)
	movwf	((c:main@actual_pressure)),c
	movlw	low(0)
	movwf	((c:main@real_pressure)),c
	
l1272:
	setf	((c:main@portd_old_status)),c
	movlw	low(0)
	movwf	((c:main@units)),c
	movlw	low(0)
	movwf	((c:main@tens)),c
	movlw	low(0)
	movwf	((c:main@hundreds)),c
	movlw	low(0)
	movwf	((c:main@debounce)),c
	movlw	low(0)
	movwf	((c:main@control)),c
	movlw	low(0)
	movwf	((c:main@volve)),c
	movlw	low(0)
	movwf	((c:main@temp_time)),c
	movlw	low(0)
	movwf	((c:main@air)),c
	movlw	low(0)
	movwf	((c:main@temp)),c
	movlw	low(0)
	movwf	((c:main@hand_flag)),c
	line	14
;CO2.c: 14: float real_volume = 0, temp_volume = 0, real_temp = 0;
	movlw	low(float24(0.0000000000000000))
	movwf	((c:main@real_volume)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:main@real_volume+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:main@real_volume+2)),c

	movlw	low(float24(0.0000000000000000))
	movwf	((c:main@temp_volume)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:main@temp_volume+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:main@temp_volume+2)),c

	movlw	low(float24(0.0000000000000000))
	movwf	((c:main@real_temp)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:main@real_temp+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:main@real_temp+2)),c

	line	15
;CO2.c: 15: unsigned int volume = 0;
	movlw	high(0)
	movwf	((c:main@volume+1)),c
	movlw	low(0)
	movwf	((c:main@volume)),c
	line	17
;CO2.c: 17: TRISA = 0x0B;
	movlw	low(0Bh)
	movwf	((c:3986)),c	;volatile
	line	18
;CO2.c: 18: TRISE = 0x00;
	movlw	low(0)
	movwf	((c:3990)),c	;volatile
	line	19
;CO2.c: 19: TRISB = 0x00;
	movlw	low(0)
	movwf	((c:3987)),c	;volatile
	line	20
	
l1274:
;CO2.c: 20: TRISD = 0xFF;
	setf	((c:3989)),c	;volatile
	line	21
;CO2.c: 21: TRISC = 0x00;
	movlw	low(0)
	movwf	((c:3988)),c	;volatile
	line	23
;CO2.c: 23: RCON = 0x9F;
	movlw	low(09Fh)
	movwf	((c:4048)),c	;volatile
	line	24
;CO2.c: 24: INTCON = 0xA0;
	movlw	low(0A0h)
	movwf	((c:4082)),c	;volatile
	line	25
;CO2.c: 25: T0CON = 0xC2;
	movlw	low(0C2h)
	movwf	((c:4053)),c	;volatile
	line	26
;CO2.c: 26: TMR0 = 0x00;
	movlw	high(0)
	movwf	((c:4054+1)),c	;volatile
	movlw	low(0)
	movwf	((c:4054)),c	;volatile
	line	29
	
l1276:
;CO2.c: 29: set_pressure = Read_b_eep( 0x01 );
	movlw	high(01h)
	movwf	((c:Read_b_eep@badd+1)),c
	movlw	low(01h)
	movwf	((c:Read_b_eep@badd)),c
	call	_Read_b_eep	;wreg free
	movwf	((c:main@set_pressure)),c
	line	30
	
l1278:
;CO2.c: 30: _delay(50);
	movlw	10
u1207:
	nop
decfsz	wreg,f
	goto	u1207

	line	31
	
l1280:
;CO2.c: 31: set_flow = Read_b_eep( 0x02 );
	movlw	high(02h)
	movwf	((c:Read_b_eep@badd+1)),c
	movlw	low(02h)
	movwf	((c:Read_b_eep@badd)),c
	call	_Read_b_eep	;wreg free
	movwf	((c:main@set_flow)),c
	line	32
	
l1282:
;CO2.c: 32: _delay(50);
	movlw	10
u1217:
	nop
decfsz	wreg,f
	goto	u1217

	line	35
	
l1284:
;CO2.c: 35: hundreds = Read_b_eep( 0x03 );
	movlw	high(03h)
	movwf	((c:Read_b_eep@badd+1)),c
	movlw	low(03h)
	movwf	((c:Read_b_eep@badd)),c
	call	_Read_b_eep	;wreg free
	movwf	((c:main@hundreds)),c
	line	36
	
l1286:
;CO2.c: 36: _delay(50);
	movlw	10
u1227:
	nop
decfsz	wreg,f
	goto	u1227

	line	37
	
l1288:
;CO2.c: 37: real_volume = 100 * hundreds;
	movf	((c:main@hundreds)),c,w
	mullw	064h
	movff	prodl,(c:___awtoft@c)
	movff	prodh,(c:___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(c:main@real_volume)
	movff	1+?___awtoft,(c:main@real_volume+1)
	movff	2+?___awtoft,(c:main@real_volume+2)
	line	38
	
l1290:
;CO2.c: 38: hundreds = hundreds << 4;
	swapf	((c:main@hundreds)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:main@hundreds)),c
	line	39
	
l1292:
;CO2.c: 39: values[8] = hundreds;
	movff	(c:main@hundreds),0+((c:_values)+08h)	;volatile
	line	41
	
l1294:
;CO2.c: 41: tens = Read_b_eep( 0x04 );
	movlw	high(04h)
	movwf	((c:Read_b_eep@badd+1)),c
	movlw	low(04h)
	movwf	((c:Read_b_eep@badd)),c
	call	_Read_b_eep	;wreg free
	movwf	((c:main@tens)),c
	line	42
	
l1296:
;CO2.c: 42: _delay(50);
	movlw	10
u1237:
	nop
decfsz	wreg,f
	goto	u1237

	line	43
	
l1298:
;CO2.c: 43: real_volume = real_volume + (10 * tens);
	movf	((c:main@tens)),c,w
	mullw	0Ah
	movff	prodl,(c:___awtoft@c)
	movff	prodh,(c:___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(c:___ftadd@f1)
	movff	1+?___awtoft,(c:___ftadd@f1+1)
	movff	2+?___awtoft,(c:___ftadd@f1+2)
	movff	(c:main@real_volume),(c:___ftadd@f2)
	movff	(c:main@real_volume+1),(c:___ftadd@f2+1)
	movff	(c:main@real_volume+2),(c:___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(c:main@real_volume)
	movff	1+?___ftadd,(c:main@real_volume+1)
	movff	2+?___ftadd,(c:main@real_volume+2)
	line	44
	
l1300:
;CO2.c: 44: tens = tens << 4;
	swapf	((c:main@tens)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:main@tens)),c
	line	45
	
l1302:
;CO2.c: 45: values[9] = tens;
	movff	(c:main@tens),0+((c:_values)+09h)	;volatile
	line	47
	
l1304:
;CO2.c: 47: units = Read_b_eep( 0x05 );
	movlw	high(05h)
	movwf	((c:Read_b_eep@badd+1)),c
	movlw	low(05h)
	movwf	((c:Read_b_eep@badd)),c
	call	_Read_b_eep	;wreg free
	movwf	((c:main@units)),c
	line	48
	
l1306:
;CO2.c: 48: _delay(50);
	movlw	10
u1247:
	nop
decfsz	wreg,f
	goto	u1247

	line	49
	
l1308:
;CO2.c: 49: real_volume = real_volume + units;
	movf	((c:main@units)),c,w
	
	call	___lbtoft
	movff	0+?___lbtoft,(c:___ftadd@f1)
	movff	1+?___lbtoft,(c:___ftadd@f1+1)
	movff	2+?___lbtoft,(c:___ftadd@f1+2)
	movff	(c:main@real_volume),(c:___ftadd@f2)
	movff	(c:main@real_volume+1),(c:___ftadd@f2+1)
	movff	(c:main@real_volume+2),(c:___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(c:main@real_volume)
	movff	1+?___ftadd,(c:main@real_volume+1)
	movff	2+?___ftadd,(c:main@real_volume+2)
	line	50
	
l1310:
;CO2.c: 50: units = units << 4;
	swapf	((c:main@units)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:main@units)),c
	line	51
	
l1312:
;CO2.c: 51: values[10] = units;
	movff	(c:main@units),0+((c:_values)+0Ah)	;volatile
	line	54
	
l1314:
;CO2.c: 54: units = 0x00;
	movlw	low(0)
	movwf	((c:main@units)),c
	line	55
	
l1316:
;CO2.c: 55: units = set_pressure % 10;
	movff	(c:main@set_pressure),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	movwf	((c:main@units)),c
	line	56
	
l1318:
;CO2.c: 56: units = units << 4;
	swapf	((c:main@units)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:main@units)),c
	line	57
	
l1320:
;CO2.c: 57: values[3] = units;
	movff	(c:main@units),0+((c:_values)+03h)	;volatile
	line	58
	
l1322:
;CO2.c: 58: tens = 0x00;
	movlw	low(0)
	movwf	((c:main@tens)),c
	line	59
	
l1324:
;CO2.c: 59: tens = set_pressure / 10;
	movff	(c:main@set_pressure),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	movwf	((c:main@tens)),c
	line	60
	
l1326:
;CO2.c: 60: tens = tens << 4;
	swapf	((c:main@tens)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:main@tens)),c
	line	61
	
l1328:
;CO2.c: 61: values[2] = tens;
	movff	(c:main@tens),0+((c:_values)+02h)	;volatile
	line	64
	
l1330:
;CO2.c: 64: units = 0x00;
	movlw	low(0)
	movwf	((c:main@units)),c
	line	65
	
l1332:
;CO2.c: 65: units = set_flow % 10;
	movff	(c:main@set_flow),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	movwf	((c:main@units)),c
	line	66
	
l1334:
;CO2.c: 66: units = units << 4;
	swapf	((c:main@units)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:main@units)),c
	line	67
	
l1336:
;CO2.c: 67: values[5] = units;
	movff	(c:main@units),0+((c:_values)+05h)	;volatile
	line	68
	
l1338:
;CO2.c: 68: tens = 0x00;
	movlw	low(0)
	movwf	((c:main@tens)),c
	line	69
	
l1340:
;CO2.c: 69: tens = set_flow / 10;
	movff	(c:main@set_flow),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	movwf	((c:main@tens)),c
	line	70
	
l1342:
;CO2.c: 70: tens = tens << 4;
	swapf	((c:main@tens)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:main@tens)),c
	line	71
	
l1344:
;CO2.c: 71: values[4] = tens;
	movff	(c:main@tens),0+((c:_values)+04h)	;volatile
	line	74
	
l1346:
;CO2.c: 74: RB0 = 0;
	bcf	c:(31752/8),(31752)&7	;volatile
	line	75
	
l1348:
;CO2.c: 75: RB1 = 0;
	bcf	c:(31753/8),(31753)&7	;volatile
	line	78
	
l1350:
;CO2.c: 78: RC2 = 0;
	bcf	c:(31762/8),(31762)&7	;volatile
	line	79
	
l1352:
;CO2.c: 79: RC3 = 0;
	bcf	c:(31763/8),(31763)&7	;volatile
	line	81
	
l1354:
;CO2.c: 81: RC0 = 1;
	bsf	c:(31760/8),(31760)&7	;volatile
	line	83
	
l1356:
;CO2.c: 83: RC7 = 0;
	bcf	c:(31767/8),(31767)&7	;volatile
	line	84
	
l1358:
;CO2.c: 84: RB2 = 1;
	bsf	c:(31754/8),(31754)&7	;volatile
	line	86
	
l1360:
;CO2.c: 86: RC1 = 1;
	bsf	c:(31761/8),(31761)&7	;volatile
	line	87
	
l1362:
;CO2.c: 87: RA4 = 1;
	bsf	c:(31748/8),(31748)&7	;volatile
	line	89
	
l1364:
;CO2.c: 89: RC6 = 1;
	bsf	c:(31766/8),(31766)&7	;volatile
	line	91
	
l1366:
;CO2.c: 91: OpenADC( 0b11011111 & 0b11111111 & 0b11110100, 0b10000111 & 0b01111111 );
	movlw	low(07h)
	movwf	((c:OpenADC@config2)),c
	movlw	(0D4h)&0ffh
	
	call	_OpenADC
	line	92
	
l1368:
;CO2.c: 92: _delay( 50 );
	movlw	10
u1257:
	nop
decfsz	wreg,f
	goto	u1257

	goto	l1370
	line	94
;CO2.c: 94: while (1)
	
l79:
	line	96
	
l1370:
;CO2.c: 95: {
;CO2.c: 96: if( control == 1 )
	decf	((c:main@control)),c,w

	btfss	status,2
	goto	u741
	goto	u740
u741:
	goto	l1564
u740:
	line	98
	
l1372:
;CO2.c: 97: {
;CO2.c: 98: if( timer <= 0 )
	movf	((c:_timer+1)),c,w	;volatile
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	01h
	btfsc	status,2
	subwf	((c:_timer)),c,w	;volatile
	btfsc	status,0
	goto	u751
	goto	u750
u751:
	goto	l1610
u750:
	line	100
	
l1374:
;CO2.c: 99: {
;CO2.c: 100: if( volve == 0 )
	tstfsz	((c:main@volve)),c
	goto	u761
	goto	u760
u761:
	goto	l82
u760:
	line	102
	
l1376:
;CO2.c: 101: {
;CO2.c: 102: SetChanADC( 0b10000111 );
	movlw	(087h)&0ffh
	
	call	_SetChanADC
	line	103
	
l1378:
;CO2.c: 103: ConvertADC();
	call	_ConvertADC	;wreg free
	line	104
;CO2.c: 104: while( BusyADC() )
	goto	l1380
	
l84:
	goto	l1380
	line	107
;CO2.c: 105: {
	
l83:
	line	104
	
l1380:
	call	_BusyADC	;wreg free
	iorlw	0
	btfss	status,2
	goto	u771
	goto	u770
u771:
	goto	l1380
u770:
	goto	l1382
	
l85:
	line	108
	
l1382:
;CO2.c: 107: }
;CO2.c: 108: analog_result = ReadADC();
	call	_ReadADC	;wreg free
	movff	0+?_ReadADC,(c:_analog_result)
	movff	1+?_ReadADC,(c:_analog_result+1)
	line	110
	
l1384:
;CO2.c: 110: analog_result = analog_result - 512;
	movlw	low(-512)
	addwf	((c:_analog_result)),c,w
	
	movwf	((c:_analog_result)),c
	movlw	high(-512)
	addwfc	((c:_analog_result+1)),c,w
	movwf	1+((c:_analog_result)),c
	line	113
	
l1386:
;CO2.c: 113: analog_result = analog_result >> 1;
	rlcf	((c:_analog_result+1)),c,w
	rrcf	((c:_analog_result+1)),c,w
	movwf	((c:_analog_result+1)),c
	rrcf	((c:_analog_result)),c,w
	movwf	((c:_analog_result)),c
	line	114
	
l1388:
;CO2.c: 114: real_pressure = analog_result / 2.78;
	movlw	low(float24(2.7799999999999998))
	movwf	((c:___ftdiv@f2)),c
	movlw	high(float24(2.7799999999999998))
	movwf	((c:___ftdiv@f2+1)),c
	movlw	low highword(float24(2.7799999999999998))
	movwf	((c:___ftdiv@f2+2)),c

	movff	(c:_analog_result),(c:___awtoft@c)
	movff	(c:_analog_result+1),(c:___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(c:___ftdiv@f1)
	movff	1+?___awtoft,(c:___ftdiv@f1+1)
	movff	2+?___awtoft,(c:___ftdiv@f1+2)
	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(c:___fttol@f1)
	movff	1+?___ftdiv,(c:___fttol@f1+1)
	movff	2+?___ftdiv,(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,??_main+0+0
	movff	1+?___fttol,??_main+0+0+1
	movff	2+?___fttol,??_main+0+0+2
	movff	3+?___fttol,??_main+0+0+3
	
	movf	(??_main+0+0),c,w
	movwf	((c:main@real_pressure)),c
	line	116
	
l1390:
;CO2.c: 116: if(real_pressure < 90)
	movlw	(05Ah)&0ffh
	subwf	((c:main@real_pressure)),c,w
	btfsc	status,0
	goto	u781
	goto	u780
u781:
	goto	l1394
u780:
	line	118
	
l1392:
;CO2.c: 117: {
;CO2.c: 118: actual_pressure = real_pressure;
	movff	(c:main@real_pressure),(c:main@actual_pressure)
	goto	l1394
	line	119
	
l86:
	line	121
	
l1394:
;CO2.c: 119: }
;CO2.c: 121: if( actual_pressure > 30 )
	movlw	(01Fh-1)
	cpfsgt	((c:main@actual_pressure)),c
	goto	u791
	goto	u790
u791:
	goto	l1398
u790:
	line	123
	
l1396:
;CO2.c: 122: {
;CO2.c: 123: RC6 = 0;
	bcf	c:(31766/8),(31766)&7	;volatile
	goto	l1398
	line	124
	
l87:
	line	125
	
l1398:
;CO2.c: 124: }
;CO2.c: 125: if( actual_pressure < 14 )
	movlw	(0Eh)&0ffh
	subwf	((c:main@actual_pressure)),c,w
	btfsc	status,0
	goto	u801
	goto	u800
u801:
	goto	l1404
u800:
	line	128
	
l1400:
;CO2.c: 126: {
;CO2.c: 128: if(PORTD == 0xFF)
	incf	((c:3971)),c,w	;volatile

	btfss	status,2
	goto	u811
	goto	u810
u811:
	goto	l1404
u810:
	line	130
	
l1402:
;CO2.c: 129: {
;CO2.c: 130: RC6 = 1;
	bsf	c:(31766/8),(31766)&7	;volatile
	goto	l1404
	line	131
	
l89:
	goto	l1404
	line	132
	
l88:
	line	134
	
l1404:
;CO2.c: 131: }
;CO2.c: 132: }
;CO2.c: 134: if( (actual_pressure <= (set_pressure - 1)) && air == 1 )
	movf	((c:main@actual_pressure)),c,w
	movwf	(??_main+0+0)&0ffh,c
	clrf	(??_main+0+0+1)&0ffh,c

	movlw	low(-1)
	movwf	(??_main+2+0)&0ffh,c
	movlw	high(-1)
	movwf	(??_main+2+0+1)&0ffh,c
	movf	((c:main@set_pressure)),c,w
	movwf	(??_main+4+0)&0ffh,c
	clrf	(??_main+4+0+1)&0ffh,c

	movf	(??_main+2+0),c,w
	addwf	(??_main+4+0),c
	movf	(??_main+2+1),c,w
	addwfc	(??_main+4+1),c
	movf	(??_main+4+1),c,w
	xorlw	80h
	movwf	(??_main+6+0)&0ffh,c
	movf	(??_main+0+0),c,w
	subwf	(??_main+4+0),c,w
	movf	(??_main+0+1),c,w
	xorlw	80h
	subwfb	(??_main+6+0)&0ffh,c,w
	btfss	status,0
	goto	u821
	goto	u820
u821:
	goto	l1418
u820:
	
l1406:
	decf	((c:main@air)),c,w

	btfss	status,2
	goto	u831
	goto	u830
u831:
	goto	l1418
u830:
	line	136
	
l1408:
;CO2.c: 135: {
;CO2.c: 136: if((set_pressure - actual_pressure) <= 3)
	movf	((c:main@actual_pressure)),c,w
	movwf	(??_main+0+0)&0ffh,c
	clrf	(??_main+0+0+1)&0ffh,c

	comf	(??_main+0+0),c
	comf	(??_main+0+1),c
	infsnz	(??_main+0+0),c
	incf	(??_main+0+1),c
	movf	((c:main@set_pressure)),c,w
	movwf	(??_main+2+0)&0ffh,c
	clrf	(??_main+2+0+1)&0ffh,c

	movf	(??_main+0+0),c,w
	addwf	(??_main+2+0),c
	movf	(??_main+0+1),c,w
	addwfc	(??_main+2+1),c
	movf	(??_main+2+1),c,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	04h
	btfsc	status,2
	subwf	(??_main+2+0),c,w
	btfsc	status,0
	goto	u841
	goto	u840
u841:
	goto	l1412
u840:
	line	138
	
l1410:
;CO2.c: 137: {
;CO2.c: 138: timer = 100;
	movlw	high(064h)
	movwf	((c:_timer+1)),c	;volatile
	movlw	low(064h)
	movwf	((c:_timer)),c	;volatile
	line	139
;CO2.c: 139: }
	goto	l1414
	line	140
	
l91:
	line	142
	
l1412:
;CO2.c: 140: else
;CO2.c: 141: {
;CO2.c: 142: timer = 1000;
	movlw	high(03E8h)
	movwf	((c:_timer+1)),c	;volatile
	movlw	low(03E8h)
	movwf	((c:_timer)),c	;volatile
	goto	l1414
	line	143
	
l92:
	line	144
	
l1414:
;CO2.c: 143: }
;CO2.c: 144: RC2 = 0;
	bcf	c:(31762/8),(31762)&7	;volatile
	line	145
	
l1416:
;CO2.c: 145: RC7 = 1;
	bsf	c:(31767/8),(31767)&7	;volatile
	line	146
;CO2.c: 146: volve = 1;
	movlw	low(01h)
	movwf	((c:main@volve)),c
	line	147
;CO2.c: 147: hand_flag = 0;
	movlw	low(0)
	movwf	((c:main@hand_flag)),c
	line	150
;CO2.c: 150: values[7] = 0x50;
	movlw	low(050h)
	movwf	(0+((c:_values)+07h)),c	;volatile
	line	151
;CO2.c: 151: values[6] = 0x00;
	movlw	low(0)
	movwf	(0+((c:_values)+06h)),c	;volatile
	goto	l1418
	line	152
	
l90:
	line	155
	
l1418:
;CO2.c: 152: }
;CO2.c: 155: if( (actual_pressure <= (set_pressure - 1)) && air == 0 )
	movf	((c:main@actual_pressure)),c,w
	movwf	(??_main+0+0)&0ffh,c
	clrf	(??_main+0+0+1)&0ffh,c

	movlw	low(-1)
	movwf	(??_main+2+0)&0ffh,c
	movlw	high(-1)
	movwf	(??_main+2+0+1)&0ffh,c
	movf	((c:main@set_pressure)),c,w
	movwf	(??_main+4+0)&0ffh,c
	clrf	(??_main+4+0+1)&0ffh,c

	movf	(??_main+2+0),c,w
	addwf	(??_main+4+0),c
	movf	(??_main+2+1),c,w
	addwfc	(??_main+4+1),c
	movf	(??_main+4+1),c,w
	xorlw	80h
	movwf	(??_main+6+0)&0ffh,c
	movf	(??_main+0+0),c,w
	subwf	(??_main+4+0),c,w
	movf	(??_main+0+1),c,w
	xorlw	80h
	subwfb	(??_main+6+0)&0ffh,c,w
	btfss	status,0
	goto	u851
	goto	u850
u851:
	goto	l1454
u850:
	
l1420:
	tstfsz	((c:main@air)),c
	goto	u861
	goto	u860
u861:
	goto	l1454
u860:
	line	157
	
l1422:
;CO2.c: 156: {
;CO2.c: 157: if(( set_pressure - actual_pressure ) <= 6 )
	movf	((c:main@actual_pressure)),c,w
	movwf	(??_main+0+0)&0ffh,c
	clrf	(??_main+0+0+1)&0ffh,c

	comf	(??_main+0+0),c
	comf	(??_main+0+1),c
	infsnz	(??_main+0+0),c
	incf	(??_main+0+1),c
	movf	((c:main@set_pressure)),c,w
	movwf	(??_main+2+0)&0ffh,c
	clrf	(??_main+2+0+1)&0ffh,c

	movf	(??_main+0+0),c,w
	addwf	(??_main+2+0),c
	movf	(??_main+0+1),c,w
	addwfc	(??_main+2+1),c
	movf	(??_main+2+1),c,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	07h
	btfsc	status,2
	subwf	(??_main+2+0),c,w
	btfsc	status,0
	goto	u871
	goto	u870
u871:
	goto	l1426
u870:
	line	159
	
l1424:
;CO2.c: 158: {
;CO2.c: 159: timer = 18;
	movlw	high(012h)
	movwf	((c:_timer+1)),c	;volatile
	movlw	low(012h)
	movwf	((c:_timer)),c	;volatile
	line	160
;CO2.c: 160: actual_flow = 2;
	movlw	low(02h)
	movwf	((c:main@actual_flow)),c
	line	161
;CO2.c: 161: }
	goto	l1430
	line	162
	
l94:
	line	165
	
l1426:
;CO2.c: 162: else
;CO2.c: 163: {
;CO2.c: 165: timer = set_flow * 9;
	movf	((c:main@set_flow)),c,w
	mullw	09h
	movff	prodl,(c:_timer)	;volatile
	movff	prodh,(c:_timer+1)	;volatile
	line	166
	
l1428:
;CO2.c: 166: actual_flow = set_flow;
	movff	(c:main@set_flow),(c:main@actual_flow)
	goto	l1430
	line	167
	
l95:
	line	169
	
l1430:
;CO2.c: 167: }
;CO2.c: 169: RC2 = 0;
	bcf	c:(31762/8),(31762)&7	;volatile
	line	170
	
l1432:
;CO2.c: 170: RC3 = 1;
	bsf	c:(31763/8),(31763)&7	;volatile
	line	171
	
l1434:
;CO2.c: 171: volve = 1;
	movlw	low(01h)
	movwf	((c:main@volve)),c
	line	172
	
l1436:
;CO2.c: 172: hand_flag = 0;
	movlw	low(0)
	movwf	((c:main@hand_flag)),c
	line	174
	
l1438:
;CO2.c: 174: units = 0x00;
	movlw	low(0)
	movwf	((c:main@units)),c
	line	175
	
l1440:
;CO2.c: 175: units = actual_flow % 10;
	movff	(c:main@actual_flow),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	movwf	((c:main@units)),c
	line	176
	
l1442:
;CO2.c: 176: units = units << 4;
	swapf	((c:main@units)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:main@units)),c
	line	177
	
l1444:
;CO2.c: 177: values[7] = units;
	movff	(c:main@units),0+((c:_values)+07h)	;volatile
	line	178
	
l1446:
;CO2.c: 178: tens = 0x00;
	movlw	low(0)
	movwf	((c:main@tens)),c
	line	179
	
l1448:
;CO2.c: 179: tens = actual_flow / 10;
	movff	(c:main@actual_flow),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	movwf	((c:main@tens)),c
	line	180
	
l1450:
;CO2.c: 180: tens = tens << 4;
	swapf	((c:main@tens)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:main@tens)),c
	line	181
	
l1452:
;CO2.c: 181: values[6] = tens;
	movff	(c:main@tens),0+((c:_values)+06h)	;volatile
	goto	l1454
	line	182
	
l93:
	line	185
	
l1454:
;CO2.c: 182: }
;CO2.c: 185: if( actual_pressure >= (set_pressure + 3) )
	movf	((c:main@set_pressure)),c,w
	movwf	(??_main+0+0)&0ffh,c
	clrf	(??_main+0+0+1)&0ffh,c

	movlw	03h
	addwf	(??_main+0+0),c
	movlw	0
	addwfc	(??_main+0+1),c
	movf	((c:main@actual_pressure)),c,w
	movwf	(??_main+2+0)&0ffh,c
	clrf	(??_main+2+0+1)&0ffh,c

	movf	(??_main+2+1),c,w
	xorlw	80h
	movwf	(??_main+4+0)&0ffh,c
	movf	(??_main+0+0),c,w
	subwf	(??_main+2+0),c,w
	movf	(??_main+0+1),c,w
	xorlw	80h
	subwfb	(??_main+4+0)&0ffh,c,w
	btfss	status,0
	goto	u881
	goto	u880
u881:
	goto	l1462
u880:
	line	187
	
l1456:
;CO2.c: 186: {
;CO2.c: 187: if(hand_flag < 5)
	movlw	(05h)&0ffh
	subwf	((c:main@hand_flag)),c,w
	btfsc	status,0
	goto	u891
	goto	u890
u891:
	goto	l1460
u890:
	line	189
	
l1458:
;CO2.c: 188: {
;CO2.c: 189: RC2 = 1;
	bsf	c:(31762/8),(31762)&7	;volatile
	goto	l1460
	line	190
	
l97:
	line	192
	
l1460:
;CO2.c: 190: }
;CO2.c: 192: timer = 100;
	movlw	high(064h)
	movwf	((c:_timer+1)),c	;volatile
	movlw	low(064h)
	movwf	((c:_timer)),c	;volatile
	line	193
;CO2.c: 193: hand_flag = 0;
	movlw	low(0)
	movwf	((c:main@hand_flag)),c
	line	195
;CO2.c: 195: values[7] = 0x00;
	movlw	low(0)
	movwf	(0+((c:_values)+07h)),c	;volatile
	line	196
;CO2.c: 196: values[6] = 0x00;
	movlw	low(0)
	movwf	(0+((c:_values)+06h)),c	;volatile
	goto	l1462
	line	197
	
l96:
	line	200
	
l1462:
;CO2.c: 197: }
;CO2.c: 200: if( actual_pressure >= set_pressure && actual_pressure <= (set_pressure + 2) )
	movf	((c:main@set_pressure)),c,w
	subwf	((c:main@actual_pressure)),c,w
	btfss	status,0
	goto	u901
	goto	u900
u901:
	goto	l1476
u900:
	
l1464:
	movf	((c:main@actual_pressure)),c,w
	movwf	(??_main+0+0)&0ffh,c
	clrf	(??_main+0+0+1)&0ffh,c

	movf	((c:main@set_pressure)),c,w
	movwf	(??_main+2+0)&0ffh,c
	clrf	(??_main+2+0+1)&0ffh,c

	movlw	02h
	addwf	(??_main+2+0),c
	movlw	0
	addwfc	(??_main+2+1),c
	movf	(??_main+2+1),c,w
	xorlw	80h
	movwf	(??_main+4+0)&0ffh,c
	movf	(??_main+0+0),c,w
	subwf	(??_main+2+0),c,w
	movf	(??_main+0+1),c,w
	xorlw	80h
	subwfb	(??_main+4+0)&0ffh,c,w
	btfss	status,0
	goto	u911
	goto	u910
u911:
	goto	l1476
u910:
	line	202
	
l1466:
;CO2.c: 201: {
;CO2.c: 202: timer = 500;
	movlw	high(01F4h)
	movwf	((c:_timer+1)),c	;volatile
	movlw	low(01F4h)
	movwf	((c:_timer)),c	;volatile
	line	204
	
l1468:
;CO2.c: 204: hand_flag = hand_flag + 1;
	incf	((c:main@hand_flag)),c,w
	movwf	((c:main@hand_flag)),c
	line	205
	
l1470:
;CO2.c: 205: if(hand_flag >= 5)
	movlw	(05h-1)
	cpfsgt	((c:main@hand_flag)),c
	goto	u921
	goto	u920
u921:
	goto	l1474
u920:
	line	207
	
l1472:
;CO2.c: 206: {
;CO2.c: 207: hand_flag = 5;
	movlw	low(05h)
	movwf	((c:main@hand_flag)),c
	goto	l1474
	line	208
	
l99:
	line	210
	
l1474:
;CO2.c: 208: }
;CO2.c: 210: RC2 = 0;
	bcf	c:(31762/8),(31762)&7	;volatile
	line	211
;CO2.c: 211: actual_flow = 0;
	movlw	low(0)
	movwf	((c:main@actual_flow)),c
	line	214
;CO2.c: 214: values[7] = 0x00;
	movlw	low(0)
	movwf	(0+((c:_values)+07h)),c	;volatile
	line	215
;CO2.c: 215: values[6] = 0x00;
	movlw	low(0)
	movwf	(0+((c:_values)+06h)),c	;volatile
	goto	l1476
	line	216
	
l98:
	line	218
	
l1476:
;CO2.c: 216: }
;CO2.c: 218: if(actual_pressure > set_pressure)
	movf	((c:main@actual_pressure)),c,w
	subwf	((c:main@set_pressure)),c,w
	btfsc	status,0
	goto	u931
	goto	u930
u931:
	goto	l1508
u930:
	line	221
	
l1478:
;CO2.c: 219: {
;CO2.c: 221: if((actual_pressure - set_pressure) > 2 )
	movf	((c:main@set_pressure)),c,w
	movwf	(??_main+0+0)&0ffh,c
	clrf	(??_main+0+0+1)&0ffh,c

	comf	(??_main+0+0),c
	comf	(??_main+0+1),c
	infsnz	(??_main+0+0),c
	incf	(??_main+0+1),c
	movf	((c:main@actual_pressure)),c,w
	movwf	(??_main+2+0)&0ffh,c
	clrf	(??_main+2+0+1)&0ffh,c

	movf	(??_main+0+0),c,w
	addwf	(??_main+2+0),c
	movf	(??_main+0+1),c,w
	addwfc	(??_main+2+1),c
	movf	(??_main+2+1),c,w
	xorlw	80h
	addlw	-((0)^80h)
	movlw	03h
	btfsc	status,2
	subwf	(??_main+2+0),c,w
	btfss	status,0
	goto	u941
	goto	u940
u941:
	goto	l1494
u940:
	line	225
	
l1480:
;CO2.c: 222: {
;CO2.c: 225: units = 0x00;
	movlw	low(0)
	movwf	((c:main@units)),c
	line	226
	
l1482:
;CO2.c: 226: units = actual_pressure % 10;
	movff	(c:main@actual_pressure),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	movwf	((c:main@units)),c
	line	227
	
l1484:
;CO2.c: 227: units = units << 4;
	swapf	((c:main@units)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:main@units)),c
	line	228
	
l1486:
;CO2.c: 228: values[1] = units;
	movff	(c:main@units),0+((c:_values)+01h)	;volatile
	line	229
	
l1488:
;CO2.c: 229: tens = 0x00;
	movlw	low(0)
	movwf	((c:main@tens)),c
	line	230
	
l1490:
;CO2.c: 230: tens = actual_pressure / 10;
	movff	(c:main@actual_pressure),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	movwf	((c:main@tens)),c
	line	231
;CO2.c: 231: tens = tens << 4;
	swapf	((c:main@tens)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:main@tens)),c
	line	232
	
l1492:
;CO2.c: 232: values[0] = tens;
	movff	(c:main@tens),(c:_values)	;volatile
	line	233
;CO2.c: 233: }
	goto	l1610
	line	234
	
l101:
	line	238
	
l1494:
;CO2.c: 234: else
;CO2.c: 235: {
;CO2.c: 238: units = 0x00;
	movlw	low(0)
	movwf	((c:main@units)),c
	line	239
	
l1496:
;CO2.c: 239: units = set_pressure % 10;
	movff	(c:main@set_pressure),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	movwf	((c:main@units)),c
	line	240
	
l1498:
;CO2.c: 240: units = units << 4;
	swapf	((c:main@units)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:main@units)),c
	line	241
	
l1500:
;CO2.c: 241: values[1] = units;
	movff	(c:main@units),0+((c:_values)+01h)	;volatile
	line	242
	
l1502:
;CO2.c: 242: tens = 0x00;
	movlw	low(0)
	movwf	((c:main@tens)),c
	line	243
	
l1504:
;CO2.c: 243: tens = set_pressure / 10;
	movff	(c:main@set_pressure),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	movwf	((c:main@tens)),c
	line	244
;CO2.c: 244: tens = tens << 4;
	swapf	((c:main@tens)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:main@tens)),c
	line	245
	
l1506:
;CO2.c: 245: values[0] = tens;
	movff	(c:main@tens),(c:_values)	;volatile
	goto	l1610
	line	246
	
l102:
	line	247
;CO2.c: 246: }
;CO2.c: 247: }
	goto	l1610
	line	248
	
l100:
	line	252
	
l1508:
;CO2.c: 248: else
;CO2.c: 249: {
;CO2.c: 252: units = 0x00;
	movlw	low(0)
	movwf	((c:main@units)),c
	line	253
	
l1510:
;CO2.c: 253: units = actual_pressure % 10;
	movff	(c:main@actual_pressure),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	movwf	((c:main@units)),c
	line	254
	
l1512:
;CO2.c: 254: units = units << 4;
	swapf	((c:main@units)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:main@units)),c
	line	255
	
l1514:
;CO2.c: 255: values[1] = units;
	movff	(c:main@units),0+((c:_values)+01h)	;volatile
	line	256
	
l1516:
;CO2.c: 256: tens = 0x00;
	movlw	low(0)
	movwf	((c:main@tens)),c
	line	257
	
l1518:
;CO2.c: 257: tens = actual_pressure / 10;
	movff	(c:main@actual_pressure),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	movwf	((c:main@tens)),c
	line	258
;CO2.c: 258: tens = tens << 4;
	swapf	((c:main@tens)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:main@tens)),c
	line	259
	
l1520:
;CO2.c: 259: values[0] = tens;
	movff	(c:main@tens),(c:_values)	;volatile
	goto	l1610
	line	260
	
l103:
	line	261
;CO2.c: 260: }
;CO2.c: 261: }
	goto	l1610
	line	262
	
l82:
	line	264
;CO2.c: 262: else
;CO2.c: 263: {
;CO2.c: 264: if( air == 0 )
	tstfsz	((c:main@air)),c
	goto	u951
	goto	u950
u951:
	goto	l105
u950:
	line	267
	
l1522:
;CO2.c: 265: {
;CO2.c: 267: RC3 = 0;
	bcf	c:(31763/8),(31763)&7	;volatile
	line	268
	
l1524:
;CO2.c: 268: volve = 0;
	movlw	low(0)
	movwf	((c:main@volve)),c
	line	271
;CO2.c: 271: temp_time = 0;
	movlw	low(0)
	movwf	((c:main@temp_time)),c
	line	272
	
l1526:
;CO2.c: 272: temp_time = set_flow * 9;
	movf	((c:main@set_flow)),c,w
	mullw	09h
	movff	prodl,(c:main@temp_time)
	line	274
	
l1528:
;CO2.c: 274: temp_volume = 0.0005 * temp_time;
	movf	((c:main@temp_time)),c,w
	
	call	___lbtoft
	movff	0+?___lbtoft,(c:___ftmul@f1)
	movff	1+?___lbtoft,(c:___ftmul@f1+1)
	movff	2+?___lbtoft,(c:___ftmul@f1+2)
	movlw	low(float24(0.00050000000000000001))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(0.00050000000000000001))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(0.00050000000000000001))
	movwf	((c:___ftmul@f2+2)),c

	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:main@temp_volume)
	movff	1+?___ftmul,(c:main@temp_volume+1)
	movff	2+?___ftmul,(c:main@temp_volume+2)
	line	275
	
l1530:
;CO2.c: 275: real_volume = real_volume + temp_volume;
	movff	(c:main@real_volume),(c:___ftadd@f1)
	movff	(c:main@real_volume+1),(c:___ftadd@f1+1)
	movff	(c:main@real_volume+2),(c:___ftadd@f1+2)
	movff	(c:main@temp_volume),(c:___ftadd@f2)
	movff	(c:main@temp_volume+1),(c:___ftadd@f2+1)
	movff	(c:main@temp_volume+2),(c:___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(c:main@real_volume)
	movff	1+?___ftadd,(c:main@real_volume+1)
	movff	2+?___ftadd,(c:main@real_volume+2)
	line	276
	
l1532:
;CO2.c: 276: volume = real_volume;
	movff	(c:main@real_volume),(c:___fttol@f1)
	movff	(c:main@real_volume+1),(c:___fttol@f1+1)
	movff	(c:main@real_volume+2),(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,??_main+0+0
	movff	1+?___fttol,??_main+0+0+1
	movff	2+?___fttol,??_main+0+0+2
	movff	3+?___fttol,??_main+0+0+3
	
	movff	??_main+0+0,(c:main@volume)
	movff	??_main+0+1,(c:main@volume+1)
	line	278
	
l1534:
;CO2.c: 278: hundreds = 0x00;
	movlw	low(0)
	movwf	((c:main@hundreds)),c
	line	279
	
l1536:
;CO2.c: 279: hundreds = volume / 100;
	movff	(c:main@volume),(c:___lwdiv@dividend)
	movff	(c:main@volume+1),(c:___lwdiv@dividend+1)
	movlw	high(064h)
	movwf	((c:___lwdiv@divisor+1)),c
	movlw	low(064h)
	movwf	((c:___lwdiv@divisor)),c
	call	___lwdiv	;wreg free
	movf	(0+?___lwdiv),c,w
	movwf	((c:main@hundreds)),c
	line	280
;CO2.c: 280: volume = volume - ( 100*hundreds );
	movf	((c:main@hundreds)),c,w
	mullw	064h
	comf	(prodl),c
	comf	(prodh),c
	infsnz	(prodl),c
	incf	(prodh),c
	movf	((c:main@volume)),c,w
	addwf	(prodl),c,w
	
	movwf	((c:main@volume)),c
	movf	((c:main@volume+1)),c,w
	addwfc	(prodh),c,w
	movwf	1+((c:main@volume)),c
	line	281
	
l1538:
;CO2.c: 281: hundreds = hundreds << 4;
	swapf	((c:main@hundreds)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:main@hundreds)),c
	line	282
	
l1540:
;CO2.c: 282: values[8] = hundreds;
	movff	(c:main@hundreds),0+((c:_values)+08h)	;volatile
	line	284
	
l1542:
;CO2.c: 284: units = 0x00;
	movlw	low(0)
	movwf	((c:main@units)),c
	line	285
	
l1544:
;CO2.c: 285: units = volume % 10;
	movff	(c:main@volume),(c:___lwmod@dividend)
	movff	(c:main@volume+1),(c:___lwmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___lwmod@divisor)),c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod),c,w
	movwf	((c:main@units)),c
	line	286
	
l1546:
;CO2.c: 286: units = units << 4;
	swapf	((c:main@units)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:main@units)),c
	line	287
	
l1548:
;CO2.c: 287: values[10] = units;
	movff	(c:main@units),0+((c:_values)+0Ah)	;volatile
	line	289
	
l1550:
;CO2.c: 289: tens = 0x00;
	movlw	low(0)
	movwf	((c:main@tens)),c
	line	290
	
l1552:
;CO2.c: 290: tens = volume / 10;
	movff	(c:main@volume),(c:___lwdiv@dividend)
	movff	(c:main@volume+1),(c:___lwdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___lwdiv@divisor)),c
	call	___lwdiv	;wreg free
	movf	(0+?___lwdiv),c,w
	movwf	((c:main@tens)),c
	line	291
	
l1554:
;CO2.c: 291: tens = tens << 4;
	swapf	((c:main@tens)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:main@tens)),c
	line	292
	
l1556:
;CO2.c: 292: values[9] = tens;
	movff	(c:main@tens),0+((c:_values)+09h)	;volatile
	line	294
	
l1558:
;CO2.c: 294: temp_time = 270 - temp_time;
	movf	((c:main@temp_time)),c,w
	sublw	0
	addlw	low(0Eh)
	movwf	((c:main@temp_time)),c
	line	295
	
l1560:
;CO2.c: 295: timer = 500 + temp_time;
	movlw	low(01F4h)
	addwf	((c:main@temp_time)),c,w
	
	movwf	((c:_timer)),c	;volatile
	clrf	1+((c:_timer)),c	;volatile
	movlw	high(01F4h)
	addwfc	1+((c:_timer)),c	;volatile
	line	296
;CO2.c: 296: }
	goto	l1610
	line	297
	
l105:
	line	299
;CO2.c: 297: else
;CO2.c: 298: {
;CO2.c: 299: RC7 = 0;
	bcf	c:(31767/8),(31767)&7	;volatile
	line	300
	
l1562:
;CO2.c: 300: volve = 0;
	movlw	low(0)
	movwf	((c:main@volve)),c
	line	301
;CO2.c: 301: timer = 500;
	movlw	high(01F4h)
	movwf	((c:_timer+1)),c	;volatile
	movlw	low(01F4h)
	movwf	((c:_timer)),c	;volatile
	goto	l1610
	line	302
	
l106:
	goto	l1610
	line	303
	
l104:
	goto	l1610
	line	304
	
l81:
	line	305
;CO2.c: 302: }
;CO2.c: 303: }
;CO2.c: 304: }
;CO2.c: 305: }
	goto	l1610
	line	306
	
l80:
	line	308
	
l1564:
;CO2.c: 306: else
;CO2.c: 307: {
;CO2.c: 308: if(timer <= 0)
	movf	((c:_timer+1)),c,w	;volatile
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	01h
	btfsc	status,2
	subwf	((c:_timer)),c,w	;volatile
	btfsc	status,0
	goto	u961
	goto	u960
u961:
	goto	l1610
u960:
	line	310
	
l1566:
;CO2.c: 309: {
;CO2.c: 310: SetChanADC( 0b10000111 );
	movlw	(087h)&0ffh
	
	call	_SetChanADC
	line	311
	
l1568:
;CO2.c: 311: ConvertADC();
	call	_ConvertADC	;wreg free
	line	312
;CO2.c: 312: while( BusyADC() )
	goto	l1570
	
l110:
	goto	l1570
	line	315
;CO2.c: 313: {
	
l109:
	line	312
	
l1570:
	call	_BusyADC	;wreg free
	iorlw	0
	btfss	status,2
	goto	u971
	goto	u970
u971:
	goto	l1570
u970:
	goto	l1572
	
l111:
	line	316
	
l1572:
;CO2.c: 315: }
;CO2.c: 316: analog_result = ReadADC();
	call	_ReadADC	;wreg free
	movff	0+?_ReadADC,(c:_analog_result)
	movff	1+?_ReadADC,(c:_analog_result+1)
	line	318
	
l1574:
;CO2.c: 318: analog_result = analog_result - 512;
	movlw	low(-512)
	addwf	((c:_analog_result)),c,w
	
	movwf	((c:_analog_result)),c
	movlw	high(-512)
	addwfc	((c:_analog_result+1)),c,w
	movwf	1+((c:_analog_result)),c
	line	320
	
l1576:
;CO2.c: 320: analog_result = analog_result >> 1;
	rlcf	((c:_analog_result+1)),c,w
	rrcf	((c:_analog_result+1)),c,w
	movwf	((c:_analog_result+1)),c
	rrcf	((c:_analog_result)),c,w
	movwf	((c:_analog_result)),c
	line	321
	
l1578:
;CO2.c: 321: real_pressure = analog_result / 2.78;
	movlw	low(float24(2.7799999999999998))
	movwf	((c:___ftdiv@f2)),c
	movlw	high(float24(2.7799999999999998))
	movwf	((c:___ftdiv@f2+1)),c
	movlw	low highword(float24(2.7799999999999998))
	movwf	((c:___ftdiv@f2+2)),c

	movff	(c:_analog_result),(c:___awtoft@c)
	movff	(c:_analog_result+1),(c:___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(c:___ftdiv@f1)
	movff	1+?___awtoft,(c:___ftdiv@f1+1)
	movff	2+?___awtoft,(c:___ftdiv@f1+2)
	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(c:___fttol@f1)
	movff	1+?___ftdiv,(c:___fttol@f1+1)
	movff	2+?___ftdiv,(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,??_main+0+0
	movff	1+?___fttol,??_main+0+0+1
	movff	2+?___fttol,??_main+0+0+2
	movff	3+?___fttol,??_main+0+0+3
	
	movf	(??_main+0+0),c,w
	movwf	((c:main@real_pressure)),c
	line	323
	
l1580:
;CO2.c: 323: if(real_pressure < 90)
	movlw	(05Ah)&0ffh
	subwf	((c:main@real_pressure)),c,w
	btfsc	status,0
	goto	u981
	goto	u980
u981:
	goto	l1584
u980:
	line	325
	
l1582:
;CO2.c: 324: {
;CO2.c: 325: actual_pressure = real_pressure;
	movff	(c:main@real_pressure),(c:main@actual_pressure)
	goto	l1584
	line	326
	
l112:
	line	328
	
l1584:
;CO2.c: 326: }
;CO2.c: 328: if( actual_pressure > 30 )
	movlw	(01Fh-1)
	cpfsgt	((c:main@actual_pressure)),c
	goto	u991
	goto	u990
u991:
	goto	l1588
u990:
	line	330
	
l1586:
;CO2.c: 329: {
;CO2.c: 330: RC6 = 0;
	bcf	c:(31766/8),(31766)&7	;volatile
	line	331
;CO2.c: 331: RC2 = 1;
	bsf	c:(31762/8),(31762)&7	;volatile
	goto	l1588
	line	332
	
l113:
	line	333
	
l1588:
;CO2.c: 332: }
;CO2.c: 333: if( actual_pressure < 14 )
	movlw	(0Eh)&0ffh
	subwf	((c:main@actual_pressure)),c,w
	btfsc	status,0
	goto	u1001
	goto	u1000
u1001:
	goto	l1594
u1000:
	line	336
	
l1590:
;CO2.c: 334: {
;CO2.c: 336: if(PORTD == 0xFF)
	incf	((c:3971)),c,w	;volatile

	btfss	status,2
	goto	u1011
	goto	u1010
u1011:
	goto	l115
u1010:
	line	338
	
l1592:
;CO2.c: 337: {
;CO2.c: 338: RC6 = 1;
	bsf	c:(31766/8),(31766)&7	;volatile
	line	339
	
l115:
	line	340
;CO2.c: 339: }
;CO2.c: 340: RC2 = 0;
	bcf	c:(31762/8),(31762)&7	;volatile
	goto	l1594
	line	341
	
l114:
	line	343
	
l1594:
;CO2.c: 341: }
;CO2.c: 343: units = 0x00;
	movlw	low(0)
	movwf	((c:main@units)),c
	line	344
	
l1596:
;CO2.c: 344: units = actual_pressure % 10;
	movff	(c:main@actual_pressure),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	movwf	((c:main@units)),c
	line	345
	
l1598:
;CO2.c: 345: units = units << 4;
	swapf	((c:main@units)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:main@units)),c
	line	346
	
l1600:
;CO2.c: 346: values[1] = units;
	movff	(c:main@units),0+((c:_values)+01h)	;volatile
	line	347
	
l1602:
;CO2.c: 347: tens = 0x00;
	movlw	low(0)
	movwf	((c:main@tens)),c
	line	348
	
l1604:
;CO2.c: 348: tens = actual_pressure / 10;
	movff	(c:main@actual_pressure),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	movwf	((c:main@tens)),c
	line	349
;CO2.c: 349: tens = tens << 4;
	swapf	((c:main@tens)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:main@tens)),c
	line	350
	
l1606:
;CO2.c: 350: values[0] = tens;
	movff	(c:main@tens),(c:_values)	;volatile
	line	351
	
l1608:
;CO2.c: 351: timer = 10;
	movlw	high(0Ah)
	movwf	((c:_timer+1)),c	;volatile
	movlw	low(0Ah)
	movwf	((c:_timer)),c	;volatile
	goto	l1610
	line	352
	
l108:
	goto	l1610
	line	353
	
l107:
	line	356
	
l1610:
;CO2.c: 352: }
;CO2.c: 353: }
;CO2.c: 356: if( air == 0 )
	tstfsz	((c:main@air)),c
	goto	u1021
	goto	u1020
u1021:
	goto	l1652
u1020:
	line	358
	
l1612:
;CO2.c: 357: {
;CO2.c: 358: if( temperature_timer <= 0)
	movf	((c:_temperature_timer+1)),c,w	;volatile
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	01h
	btfsc	status,2
	subwf	((c:_temperature_timer)),c,w	;volatile
	btfsc	status,0
	goto	u1031
	goto	u1030
u1031:
	goto	l124
u1030:
	line	361
	
l1614:
;CO2.c: 359: {
;CO2.c: 361: SetChanADC( 0b10001111 );
	movlw	(08Fh)&0ffh
	
	call	_SetChanADC
	line	362
	
l1616:
;CO2.c: 362: ConvertADC();
	call	_ConvertADC	;wreg free
	line	363
;CO2.c: 363: while( BusyADC() )
	goto	l1618
	
l119:
	goto	l1618
	line	366
;CO2.c: 364: {
	
l118:
	line	363
	
l1618:
	call	_BusyADC	;wreg free
	iorlw	0
	btfss	status,2
	goto	u1041
	goto	u1040
u1041:
	goto	l1618
u1040:
	goto	l1620
	
l120:
	line	367
	
l1620:
;CO2.c: 366: }
;CO2.c: 367: analog_temp_result = ReadADC();
	call	_ReadADC	;wreg free
	movff	0+?_ReadADC,(c:_analog_temp_result)
	movff	1+?_ReadADC,(c:_analog_temp_result+1)
	line	369
	
l1622:
;CO2.c: 369: temp = analog_temp_result >> 3;
	movff	(c:_analog_temp_result),??_main+0+0
	movff	(c:_analog_temp_result+1),??_main+0+0+1
	rlcf	(??_main+0+1),c,w
	rrcf	(??_main+0+1),c
	rrcf	(??_main+0+0),c
	rlcf	(??_main+0+1),c,w
	rrcf	(??_main+0+1),c
	rrcf	(??_main+0+0),c
	rlcf	(??_main+0+1),c,w
	rrcf	(??_main+0+1),c
	rrcf	(??_main+0+0),c
	movf	(??_main+0+0),c,w
	movwf	((c:main@temp)),c
	line	371
	
l1624:
;CO2.c: 371: if(control == 1)
	decf	((c:main@control)),c,w

	btfss	status,2
	goto	u1051
	goto	u1050
u1051:
	goto	l1636
u1050:
	line	373
	
l1626:
;CO2.c: 372: {
;CO2.c: 373: real_temp = analog_temp_result / 8;
	movlw	high(08h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(08h)
	movwf	((c:___awdiv@divisor)),c
	movff	(c:_analog_temp_result),(c:___awdiv@dividend)
	movff	(c:_analog_temp_result+1),(c:___awdiv@dividend+1)
	call	___awdiv	;wreg free
	movff	0+?___awdiv,(c:___awtoft@c)
	movff	1+?___awdiv,(c:___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(c:main@real_temp)
	movff	1+?___awtoft,(c:main@real_temp+1)
	movff	2+?___awtoft,(c:main@real_temp+2)
	line	374
	
l1628:
;CO2.c: 374: if(real_temp >= 35.0)
	movff	(c:main@real_temp),(c:___ftge@ff1)
	movff	(c:main@real_temp+1),(c:___ftge@ff1+1)
	movff	(c:main@real_temp+2),(c:___ftge@ff1+2)
	movlw	low(float24(35.000000000000000))
	movwf	((c:___ftge@ff2)),c
	movlw	high(float24(35.000000000000000))
	movwf	((c:___ftge@ff2+1)),c
	movlw	low highword(float24(35.000000000000000))
	movwf	((c:___ftge@ff2+2)),c

	call	___ftge	;wreg free
	btfss	status,0
	goto	u1061
	goto	u1060
u1061:
	goto	l1632
u1060:
	line	376
	
l1630:
;CO2.c: 375: {
;CO2.c: 376: RA4 = 1;
	bsf	c:(31748/8),(31748)&7	;volatile
	line	377
;CO2.c: 377: RC1 = 1;
	bsf	c:(31761/8),(31761)&7	;volatile
	goto	l1632
	line	378
	
l122:
	line	379
	
l1632:
;CO2.c: 378: }
;CO2.c: 379: if(real_temp <= 34.8)
	movlw	low(float24(34.799999999999997))
	movwf	((c:___ftge@ff1)),c
	movlw	high(float24(34.799999999999997))
	movwf	((c:___ftge@ff1+1)),c
	movlw	low highword(float24(34.799999999999997))
	movwf	((c:___ftge@ff1+2)),c

	movff	(c:main@real_temp),(c:___ftge@ff2)
	movff	(c:main@real_temp+1),(c:___ftge@ff2+1)
	movff	(c:main@real_temp+2),(c:___ftge@ff2+2)
	call	___ftge	;wreg free
	btfss	status,0
	goto	u1071
	goto	u1070
u1071:
	goto	l1636
u1070:
	line	381
	
l1634:
;CO2.c: 380: {
;CO2.c: 381: RA4 = 0;
	bcf	c:(31748/8),(31748)&7	;volatile
	line	382
;CO2.c: 382: RC1 = 0;
	bcf	c:(31761/8),(31761)&7	;volatile
	goto	l1636
	line	383
	
l123:
	goto	l1636
	line	384
	
l121:
	line	387
	
l1636:
;CO2.c: 383: }
;CO2.c: 384: }
;CO2.c: 387: units = 0x00;
	movlw	low(0)
	movwf	((c:main@units)),c
	line	388
	
l1638:
;CO2.c: 388: units = temp % 10;
	movff	(c:main@temp),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	movwf	((c:main@units)),c
	line	389
	
l1640:
;CO2.c: 389: units = units << 4;
	swapf	((c:main@units)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:main@units)),c
	line	390
	
l1642:
;CO2.c: 390: values[12] = units;
	movff	(c:main@units),0+((c:_values)+0Ch)	;volatile
	line	391
	
l1644:
;CO2.c: 391: tens = 0x00;
	movlw	low(0)
	movwf	((c:main@tens)),c
	line	392
	
l1646:
;CO2.c: 392: tens = temp / 10;
	movff	(c:main@temp),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	movwf	((c:main@tens)),c
	line	393
;CO2.c: 393: tens = tens << 4;
	swapf	((c:main@tens)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:main@tens)),c
	line	394
	
l1648:
;CO2.c: 394: values[11] = tens;
	movff	(c:main@tens),0+((c:_values)+0Bh)	;volatile
	line	395
	
l1650:
;CO2.c: 395: temperature_timer = 10127;
	movlw	high(0278Fh)
	movwf	((c:_temperature_timer+1)),c	;volatile
	movlw	low(0278Fh)
	movwf	((c:_temperature_timer)),c	;volatile
	goto	l124
	line	396
	
l117:
	line	397
;CO2.c: 396: }
;CO2.c: 397: }
	goto	l124
	line	398
	
l116:
	line	400
	
l1652:
;CO2.c: 398: else
;CO2.c: 399: {
;CO2.c: 400: temperature_timer = 0;
	movlw	high(0)
	movwf	((c:_temperature_timer+1)),c	;volatile
	movlw	low(0)
	movwf	((c:_temperature_timer)),c	;volatile
	line	401
	
l124:
	line	403
;CO2.c: 401: }
;CO2.c: 403: if( portd_old_status != PORTD )
	movf	((c:main@portd_old_status)),c,w
	xorwf	((c:3971)),c,w	;volatile
	btfsc	status,2
	goto	u1081
	goto	u1080
u1081:
	goto	l1370
u1080:
	line	406
	
l1654:
;CO2.c: 404: {
;CO2.c: 406: for (debounce = 0; debounce <= 99; debounce ++)
	movlw	low(0)
	movwf	((c:main@debounce)),c
	
l1656:
	movlw	(064h-1)
	cpfsgt	((c:main@debounce)),c
	goto	u1091
	goto	u1090
u1091:
	goto	l1660
u1090:
	goto	l1666
	
l1658:
	goto	l1666
	line	407
	
l126:
	line	408
	
l1660:
;CO2.c: 407: {
;CO2.c: 408: _delay(250);
	movlw	50
u1267:
	nop
decfsz	wreg,f
	goto	u1267

	line	406
	
l1662:
	incf	((c:main@debounce)),c
	
l1664:
	movlw	(064h-1)
	cpfsgt	((c:main@debounce)),c
	goto	u1101
	goto	u1100
u1101:
	goto	l1660
u1100:
	goto	l1666
	
l127:
	line	411
	
l1666:
;CO2.c: 409: }
;CO2.c: 411: if( portd_old_status != PORTD )
	movf	((c:main@portd_old_status)),c,w
	xorwf	((c:3971)),c,w	;volatile
	btfsc	status,2
	goto	u1111
	goto	u1110
u1111:
	goto	l1370
u1110:
	line	413
	
l1668:
;CO2.c: 412: {
;CO2.c: 413: portd_old_status = PORTD;
	movff	(c:3971),(c:main@portd_old_status)	;volatile
	line	414
;CO2.c: 414: switch( PORTD )
	goto	l1842
	line	416
;CO2.c: 415: {
;CO2.c: 416: case 0xFF :
	
l130:
	line	417
;CO2.c: 417: RC6 = 1;
	bsf	c:(31766/8),(31766)&7	;volatile
	line	418
;CO2.c: 418: break;
	goto	l1370
	line	420
;CO2.c: 420: case 0xFE :
	
l132:
	line	421
;CO2.c: 421: RC6 = 0;
	bcf	c:(31766/8),(31766)&7	;volatile
	line	423
	
l1670:
;CO2.c: 423: if( set_flow < 30 )
	movlw	(01Eh)&0ffh
	subwf	((c:main@set_flow)),c,w
	btfsc	status,0
	goto	u1121
	goto	u1120
u1121:
	goto	l1370
u1120:
	line	425
	
l1672:
;CO2.c: 424: {
;CO2.c: 425: set_flow = set_flow + 1;
	incf	((c:main@set_flow)),c,w
	movwf	((c:main@set_flow)),c
	line	426
	
l1674:
;CO2.c: 426: units = 0x00;
	movlw	low(0)
	movwf	((c:main@units)),c
	line	427
	
l1676:
;CO2.c: 427: units = set_flow % 10;
	movff	(c:main@set_flow),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	movwf	((c:main@units)),c
	line	428
	
l1678:
;CO2.c: 428: units = units << 4;
	swapf	((c:main@units)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:main@units)),c
	line	429
	
l1680:
;CO2.c: 429: values[5] = units;
	movff	(c:main@units),0+((c:_values)+05h)	;volatile
	line	430
	
l1682:
;CO2.c: 430: tens = 0x00;
	movlw	low(0)
	movwf	((c:main@tens)),c
	line	431
;CO2.c: 431: tens = set_flow / 10;
	movff	(c:main@set_flow),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	movwf	((c:main@tens)),c
	line	432
	
l1684:
;CO2.c: 432: tens = tens << 4;
	swapf	((c:main@tens)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:main@tens)),c
	line	433
	
l1686:
;CO2.c: 433: values[4] = tens;
	movff	(c:main@tens),0+((c:_values)+04h)	;volatile
	line	435
	
l1688:
;CO2.c: 435: TMR0 = 0;
	movlw	high(0)
	movwf	((c:4054+1)),c	;volatile
	movlw	low(0)
	movwf	((c:4054)),c	;volatile
	line	437
	
l1690:
;CO2.c: 437: Write_b_eep( 0x02, set_flow );
	movlw	high(02h)
	movwf	((c:Write_b_eep@badd+1)),c
	movlw	low(02h)
	movwf	((c:Write_b_eep@badd)),c
	movff	(c:main@set_flow),(c:Write_b_eep@bdat)
	call	_Write_b_eep	;wreg free
	line	438
	
l1692:
;CO2.c: 438: _delay(50);
	movlw	10
u1277:
	nop
decfsz	wreg,f
	goto	u1277

	goto	l1370
	line	439
	
l133:
	line	440
;CO2.c: 439: }
;CO2.c: 440: break;
	goto	l1370
	line	442
;CO2.c: 442: case 0xFD :
	
l134:
	line	443
;CO2.c: 443: RC6 = 0;
	bcf	c:(31766/8),(31766)&7	;volatile
	line	445
	
l1694:
;CO2.c: 445: if( set_flow > 0 )
	movf	((c:main@set_flow)),c,w
	btfsc	status,2
	goto	u1131
	goto	u1130
u1131:
	goto	l1370
u1130:
	line	447
	
l1696:
;CO2.c: 446: {
;CO2.c: 447: set_flow = set_flow - 1;
	decf	((c:main@set_flow)),c,w
	movwf	((c:main@set_flow)),c
	line	448
	
l1698:
;CO2.c: 448: units = 0x00;
	movlw	low(0)
	movwf	((c:main@units)),c
	line	449
	
l1700:
;CO2.c: 449: units = set_flow % 10;
	movff	(c:main@set_flow),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	movwf	((c:main@units)),c
	line	450
	
l1702:
;CO2.c: 450: units = units << 4;
	swapf	((c:main@units)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:main@units)),c
	line	451
	
l1704:
;CO2.c: 451: values[5] = units;
	movff	(c:main@units),0+((c:_values)+05h)	;volatile
	line	452
	
l1706:
;CO2.c: 452: tens = 0x00;
	movlw	low(0)
	movwf	((c:main@tens)),c
	line	453
;CO2.c: 453: tens = set_flow / 10;
	movff	(c:main@set_flow),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	movwf	((c:main@tens)),c
	line	454
	
l1708:
;CO2.c: 454: tens = tens << 4;
	swapf	((c:main@tens)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:main@tens)),c
	line	455
	
l1710:
;CO2.c: 455: values[4] = tens;
	movff	(c:main@tens),0+((c:_values)+04h)	;volatile
	line	457
	
l1712:
;CO2.c: 457: TMR0 = 0;
	movlw	high(0)
	movwf	((c:4054+1)),c	;volatile
	movlw	low(0)
	movwf	((c:4054)),c	;volatile
	line	459
	
l1714:
;CO2.c: 459: Write_b_eep( 0x02, set_flow );
	movlw	high(02h)
	movwf	((c:Write_b_eep@badd+1)),c
	movlw	low(02h)
	movwf	((c:Write_b_eep@badd)),c
	movff	(c:main@set_flow),(c:Write_b_eep@bdat)
	call	_Write_b_eep	;wreg free
	line	460
	
l1716:
;CO2.c: 460: _delay(50);
	movlw	10
u1287:
	nop
decfsz	wreg,f
	goto	u1287

	goto	l1370
	line	461
	
l135:
	line	462
;CO2.c: 461: }
;CO2.c: 462: break;
	goto	l1370
	line	464
;CO2.c: 464: case 0xFB :
	
l136:
	line	465
;CO2.c: 465: RC6 = 0;
	bcf	c:(31766/8),(31766)&7	;volatile
	line	467
	
l1718:
;CO2.c: 467: if( set_pressure > 0 )
	movf	((c:main@set_pressure)),c,w
	btfsc	status,2
	goto	u1141
	goto	u1140
u1141:
	goto	l1370
u1140:
	line	469
	
l1720:
;CO2.c: 468: {
;CO2.c: 469: set_pressure = set_pressure - 1;
	decf	((c:main@set_pressure)),c,w
	movwf	((c:main@set_pressure)),c
	line	470
	
l1722:
;CO2.c: 470: units = 0x00;
	movlw	low(0)
	movwf	((c:main@units)),c
	line	471
	
l1724:
;CO2.c: 471: units = set_pressure % 10;
	movff	(c:main@set_pressure),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	movwf	((c:main@units)),c
	line	472
	
l1726:
;CO2.c: 472: units = units << 4;
	swapf	((c:main@units)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:main@units)),c
	line	473
	
l1728:
;CO2.c: 473: values[3] = units;
	movff	(c:main@units),0+((c:_values)+03h)	;volatile
	line	474
	
l1730:
;CO2.c: 474: tens = 0x00;
	movlw	low(0)
	movwf	((c:main@tens)),c
	line	475
;CO2.c: 475: tens = set_pressure / 10;
	movff	(c:main@set_pressure),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	movwf	((c:main@tens)),c
	line	476
	
l1732:
;CO2.c: 476: tens = tens << 4;
	swapf	((c:main@tens)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:main@tens)),c
	line	477
	
l1734:
;CO2.c: 477: values[2] = tens;
	movff	(c:main@tens),0+((c:_values)+02h)	;volatile
	line	479
	
l1736:
;CO2.c: 479: TMR0 = 0;
	movlw	high(0)
	movwf	((c:4054+1)),c	;volatile
	movlw	low(0)
	movwf	((c:4054)),c	;volatile
	line	481
	
l1738:
;CO2.c: 481: Write_b_eep( 0x01, set_pressure );
	movlw	high(01h)
	movwf	((c:Write_b_eep@badd+1)),c
	movlw	low(01h)
	movwf	((c:Write_b_eep@badd)),c
	movff	(c:main@set_pressure),(c:Write_b_eep@bdat)
	call	_Write_b_eep	;wreg free
	line	482
	
l1740:
;CO2.c: 482: _delay(50);
	movlw	10
u1297:
	nop
decfsz	wreg,f
	goto	u1297

	goto	l1370
	line	483
	
l137:
	line	484
;CO2.c: 483: }
;CO2.c: 484: break;
	goto	l1370
	line	486
;CO2.c: 486: case 0xF7 :
	
l138:
	line	487
;CO2.c: 487: RC6 = 0;
	bcf	c:(31766/8),(31766)&7	;volatile
	line	488
;CO2.c: 488: if( air == 0 )
	tstfsz	((c:main@air)),c
	goto	u1151
	goto	u1150
u1151:
	goto	l1752
u1150:
	line	490
	
l1742:
;CO2.c: 489: {
;CO2.c: 490: air = 1;
	movlw	low(01h)
	movwf	((c:main@air)),c
	line	491
	
l1744:
;CO2.c: 491: RB2 = 0;
	bcf	c:(31754/8),(31754)&7	;volatile
	line	492
	
l1746:
;CO2.c: 492: RC3 = 0;
	bcf	c:(31763/8),(31763)&7	;volatile
	line	493
	
l1748:
;CO2.c: 493: RA4 = 1;
	bsf	c:(31748/8),(31748)&7	;volatile
	line	494
	
l1750:
;CO2.c: 494: RC1 = 1;
	bsf	c:(31761/8),(31761)&7	;volatile
	line	495
;CO2.c: 495: volve = 0;
	movlw	low(0)
	movwf	((c:main@volve)),c
	line	496
;CO2.c: 496: timer = 0;
	movlw	high(0)
	movwf	((c:_timer+1)),c	;volatile
	movlw	low(0)
	movwf	((c:_timer)),c	;volatile
	line	497
;CO2.c: 497: }
	goto	l1370
	line	498
	
l139:
	line	500
	
l1752:
;CO2.c: 498: else
;CO2.c: 499: {
;CO2.c: 500: air = 0;
	movlw	low(0)
	movwf	((c:main@air)),c
	line	501
	
l1754:
;CO2.c: 501: RB2 = 1;
	bsf	c:(31754/8),(31754)&7	;volatile
	line	502
	
l1756:
;CO2.c: 502: RC7 = 0;
	bcf	c:(31767/8),(31767)&7	;volatile
	line	503
;CO2.c: 503: volve = 0;
	movlw	low(0)
	movwf	((c:main@volve)),c
	line	504
;CO2.c: 504: timer = 0;
	movlw	high(0)
	movwf	((c:_timer+1)),c	;volatile
	movlw	low(0)
	movwf	((c:_timer)),c	;volatile
	goto	l1370
	line	505
	
l140:
	line	506
;CO2.c: 505: }
;CO2.c: 506: break;
	goto	l1370
	line	508
;CO2.c: 508: case 0xEF :
	
l141:
	line	509
;CO2.c: 509: RC6 = 0;
	bcf	c:(31766/8),(31766)&7	;volatile
	line	511
	
l1758:
;CO2.c: 511: if( set_pressure < 30 )
	movlw	(01Eh)&0ffh
	subwf	((c:main@set_pressure)),c,w
	btfsc	status,0
	goto	u1161
	goto	u1160
u1161:
	goto	l1370
u1160:
	line	513
	
l1760:
;CO2.c: 512: {
;CO2.c: 513: set_pressure = set_pressure + 1;
	incf	((c:main@set_pressure)),c,w
	movwf	((c:main@set_pressure)),c
	line	514
	
l1762:
;CO2.c: 514: units = 0x00;
	movlw	low(0)
	movwf	((c:main@units)),c
	line	515
	
l1764:
;CO2.c: 515: units = set_pressure % 10;
	movff	(c:main@set_pressure),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	movwf	((c:main@units)),c
	line	516
	
l1766:
;CO2.c: 516: units = units << 4;
	swapf	((c:main@units)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:main@units)),c
	line	517
	
l1768:
;CO2.c: 517: values[3] = units;
	movff	(c:main@units),0+((c:_values)+03h)	;volatile
	line	518
	
l1770:
;CO2.c: 518: tens = 0x00;
	movlw	low(0)
	movwf	((c:main@tens)),c
	line	519
;CO2.c: 519: tens = set_pressure / 10;
	movff	(c:main@set_pressure),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	movwf	((c:main@tens)),c
	line	520
	
l1772:
;CO2.c: 520: tens = tens << 4;
	swapf	((c:main@tens)),c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:main@tens)),c
	line	521
	
l1774:
;CO2.c: 521: values[2] = tens;
	movff	(c:main@tens),0+((c:_values)+02h)	;volatile
	line	523
	
l1776:
;CO2.c: 523: TMR0 = 0;
	movlw	high(0)
	movwf	((c:4054+1)),c	;volatile
	movlw	low(0)
	movwf	((c:4054)),c	;volatile
	line	525
	
l1778:
;CO2.c: 525: Write_b_eep( 0x01, set_pressure );
	movlw	high(01h)
	movwf	((c:Write_b_eep@badd+1)),c
	movlw	low(01h)
	movwf	((c:Write_b_eep@badd)),c
	movff	(c:main@set_pressure),(c:Write_b_eep@bdat)
	call	_Write_b_eep	;wreg free
	line	526
	
l1780:
;CO2.c: 526: _delay(50);
	movlw	10
u1307:
	nop
decfsz	wreg,f
	goto	u1307

	goto	l1370
	line	527
	
l142:
	line	528
;CO2.c: 527: }
;CO2.c: 528: break;
	goto	l1370
	line	530
;CO2.c: 530: case 0xDF :
	
l143:
	line	531
;CO2.c: 531: RC6 = 0;
	bcf	c:(31766/8),(31766)&7	;volatile
	line	532
;CO2.c: 532: if( control == 0 )
	tstfsz	((c:main@control)),c
	goto	u1171
	goto	u1170
u1171:
	goto	l1786
u1170:
	line	534
	
l1782:
;CO2.c: 533: {
;CO2.c: 534: control = 1;
	movlw	low(01h)
	movwf	((c:main@control)),c
	line	535
	
l1784:
;CO2.c: 535: RC0 = 0;
	bcf	c:(31760/8),(31760)&7	;volatile
	line	536
;CO2.c: 536: timer = 0;
	movlw	high(0)
	movwf	((c:_timer+1)),c	;volatile
	movlw	low(0)
	movwf	((c:_timer)),c	;volatile
	line	537
;CO2.c: 537: }
	goto	l1370
	line	538
	
l144:
	line	540
	
l1786:
;CO2.c: 538: else
;CO2.c: 539: {
;CO2.c: 540: control = 0;
	movlw	low(0)
	movwf	((c:main@control)),c
	line	541
	
l1788:
;CO2.c: 541: RC0 = 1;
	bsf	c:(31760/8),(31760)&7	;volatile
	line	543
	
l1790:
;CO2.c: 543: RC2 = 0;
	bcf	c:(31762/8),(31762)&7	;volatile
	line	544
	
l1792:
;CO2.c: 544: RC3 = 0;
	bcf	c:(31763/8),(31763)&7	;volatile
	line	546
	
l1794:
;CO2.c: 546: RC7 = 0;
	bcf	c:(31767/8),(31767)&7	;volatile
	line	548
	
l1796:
;CO2.c: 548: RA4 = 1;
	bsf	c:(31748/8),(31748)&7	;volatile
	line	549
	
l1798:
;CO2.c: 549: RC1 = 1;
	bsf	c:(31761/8),(31761)&7	;volatile
	line	550
;CO2.c: 550: volve = 0;
	movlw	low(0)
	movwf	((c:main@volve)),c
	line	553
	
l1800:
;CO2.c: 553: hundreds = values[8];
	movff	0+((c:_values)+08h),(c:main@hundreds)	;volatile
	line	554
	
l1802:
;CO2.c: 554: hundreds = hundreds >> 4;
	swapf	((c:main@hundreds)),c,w
	andlw	(0ffh shr 4) & 0ffh
	movwf	((c:main@hundreds)),c
	line	555
	
l1804:
;CO2.c: 555: Write_b_eep( 0x03, hundreds );
	movlw	high(03h)
	movwf	((c:Write_b_eep@badd+1)),c
	movlw	low(03h)
	movwf	((c:Write_b_eep@badd)),c
	movff	(c:main@hundreds),(c:Write_b_eep@bdat)
	call	_Write_b_eep	;wreg free
	line	556
	
l1806:
;CO2.c: 556: _delay(50);
	movlw	10
u1317:
	nop
decfsz	wreg,f
	goto	u1317

	line	558
	
l1808:
;CO2.c: 558: tens = values[9];
	movff	0+((c:_values)+09h),(c:main@tens)	;volatile
	line	559
	
l1810:
;CO2.c: 559: tens = tens >> 4;
	swapf	((c:main@tens)),c,w
	andlw	(0ffh shr 4) & 0ffh
	movwf	((c:main@tens)),c
	line	560
	
l1812:
;CO2.c: 560: Write_b_eep( 0x04, tens );
	movlw	high(04h)
	movwf	((c:Write_b_eep@badd+1)),c
	movlw	low(04h)
	movwf	((c:Write_b_eep@badd)),c
	movff	(c:main@tens),(c:Write_b_eep@bdat)
	call	_Write_b_eep	;wreg free
	line	561
	
l1814:
;CO2.c: 561: _delay(50);
	movlw	10
u1327:
	nop
decfsz	wreg,f
	goto	u1327

	line	563
	
l1816:
;CO2.c: 563: units = values[10];
	movff	0+((c:_values)+0Ah),(c:main@units)	;volatile
	line	564
	
l1818:
;CO2.c: 564: units = units >> 4;
	swapf	((c:main@units)),c,w
	andlw	(0ffh shr 4) & 0ffh
	movwf	((c:main@units)),c
	line	565
	
l1820:
;CO2.c: 565: Write_b_eep( 0x05, units );
	movlw	high(05h)
	movwf	((c:Write_b_eep@badd+1)),c
	movlw	low(05h)
	movwf	((c:Write_b_eep@badd)),c
	movff	(c:main@units),(c:Write_b_eep@bdat)
	call	_Write_b_eep	;wreg free
	line	566
	
l1822:
;CO2.c: 566: _delay(50);
	movlw	10
u1337:
	nop
decfsz	wreg,f
	goto	u1337

	line	568
	
l1824:
;CO2.c: 568: timer = 10;
	movlw	high(0Ah)
	movwf	((c:_timer+1)),c	;volatile
	movlw	low(0Ah)
	movwf	((c:_timer)),c	;volatile
	goto	l1370
	line	569
	
l145:
	line	570
;CO2.c: 569: }
;CO2.c: 570: break;
	goto	l1370
	line	572
;CO2.c: 572: case 0x7F :
	
l146:
	line	573
;CO2.c: 573: RC6 = 0;
	bcf	c:(31766/8),(31766)&7	;volatile
	line	574
	
l1826:
;CO2.c: 574: real_volume = 0;
	movlw	low(float24(0.0000000000000000))
	movwf	((c:main@real_volume)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:main@real_volume+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:main@real_volume+2)),c

	line	577
;CO2.c: 577: values[8] = 0x00;
	movlw	low(0)
	movwf	(0+((c:_values)+08h)),c	;volatile
	line	578
;CO2.c: 578: values[9] = 0x00;
	movlw	low(0)
	movwf	(0+((c:_values)+09h)),c	;volatile
	line	579
;CO2.c: 579: values[10] = 0x00;
	movlw	low(0)
	movwf	(0+((c:_values)+0Ah)),c	;volatile
	line	582
	
l1828:
;CO2.c: 582: Write_b_eep( 0x03, 0x00 );
	movlw	high(03h)
	movwf	((c:Write_b_eep@badd+1)),c
	movlw	low(03h)
	movwf	((c:Write_b_eep@badd)),c
	movlw	low(0)
	movwf	((c:Write_b_eep@bdat)),c
	call	_Write_b_eep	;wreg free
	line	583
	
l1830:
;CO2.c: 583: _delay(50);
	movlw	10
u1347:
	nop
decfsz	wreg,f
	goto	u1347

	line	585
	
l1832:
;CO2.c: 585: Write_b_eep( 0x04, 0x00 );
	movlw	high(04h)
	movwf	((c:Write_b_eep@badd+1)),c
	movlw	low(04h)
	movwf	((c:Write_b_eep@badd)),c
	movlw	low(0)
	movwf	((c:Write_b_eep@bdat)),c
	call	_Write_b_eep	;wreg free
	line	586
	
l1834:
;CO2.c: 586: _delay(50);
	movlw	10
u1357:
	nop
decfsz	wreg,f
	goto	u1357

	line	588
	
l1836:
;CO2.c: 588: Write_b_eep( 0x05, 0x00 );
	movlw	high(05h)
	movwf	((c:Write_b_eep@badd+1)),c
	movlw	low(05h)
	movwf	((c:Write_b_eep@badd)),c
	movlw	low(0)
	movwf	((c:Write_b_eep@bdat)),c
	call	_Write_b_eep	;wreg free
	line	589
	
l1838:
;CO2.c: 589: _delay(50);
	movlw	10
u1367:
	nop
decfsz	wreg,f
	goto	u1367

	line	590
;CO2.c: 590: break;
	goto	l1370
	line	592
;CO2.c: 592: default :
	
l147:
	line	593
;CO2.c: 593: break;
	goto	l1370
	line	594
	
l1840:
;CO2.c: 594: }
	goto	l1370
	line	414
	
l129:
	
l1842:
	movf	((c:3971)),c,w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 8, Range of values is 127 to 255
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           25    13 (average)
;	Chosen strategy is simple_byte

	xorlw	127^0	; case 127
	skipnz
	goto	l146
	xorlw	223^127	; case 223
	skipnz
	goto	l143
	xorlw	239^223	; case 239
	skipnz
	goto	l141
	xorlw	247^239	; case 247
	skipnz
	goto	l138
	xorlw	251^247	; case 251
	skipnz
	goto	l136
	xorlw	253^251	; case 253
	skipnz
	goto	l134
	xorlw	254^253	; case 254
	skipnz
	goto	l132
	xorlw	255^254	; case 255
	skipnz
	goto	l130
	goto	l1370

	line	594
	
l131:
	goto	l1370
	line	595
	
l128:
	goto	l1370
	line	596
	
l125:
	goto	l1370
	line	597
	
l148:
	line	94
	goto	l1370
	
l149:
	line	598
	
l150:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2   14[COMRAM] unsigned int 
;;  divisor         2   16[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   18[COMRAM] unsigned char 
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
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\lwmod.c"
	line	8
global __ptext1
__ptext1:
psect	text1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\lwmod.c"
	line	8
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:
;incstack = 0
	opt	stack 29
	dw	0FFFFh
	line	13
	
l1254:
	movf	((c:___lwmod@divisor+1)),c,w
	iorwf ((c:___lwmod@divisor)),c,w

	btfsc	status,2
	goto	u711
	goto	u710
u711:
	goto	l745
u710:
	line	14
	
l1256:
	movlw	low(01h)
	movwf	((c:___lwmod@counter)),c
	line	15
	goto	l1260
	
l747:
	line	16
	
l1258:
	bcf	status,0
	rlcf	((c:___lwmod@divisor)),c
	rlcf	((c:___lwmod@divisor+1)),c
	line	17
	incf	((c:___lwmod@counter)),c
	goto	l1260
	line	18
	
l746:
	line	15
	
l1260:
	
	btfss	((c:___lwmod@divisor+1)),c,(15)&7
	goto	u721
	goto	u720
u721:
	goto	l1258
u720:
	goto	l1262
	
l748:
	goto	l1262
	line	19
	
l749:
	line	20
	
l1262:
	movf	((c:___lwmod@divisor)),c,w
	subwf	((c:___lwmod@dividend)),c,w
	movf	((c:___lwmod@divisor+1)),c,w
	subwfb	((c:___lwmod@dividend+1)),c,w
	btfss	status,0
	goto	u731
	goto	u730
u731:
	goto	l1266
u730:
	line	21
	
l1264:
	movf	((c:___lwmod@divisor)),c,w
	subwf	((c:___lwmod@dividend)),c
	movf	((c:___lwmod@divisor+1)),c,w
	subwfb	((c:___lwmod@dividend+1)),c

	goto	l1266
	
l750:
	line	22
	
l1266:
	bcf	status,0
	rrcf	((c:___lwmod@divisor+1)),c
	rrcf	((c:___lwmod@divisor)),c
	line	23
	
l1268:
	decfsz	((c:___lwmod@counter)),c
	
	goto	l1262
	goto	l745
	
l751:
	line	24
	
l745:
	line	25
	movff	(c:___lwmod@dividend),(c:?___lwmod)
	movff	(c:___lwmod@dividend+1),(c:?___lwmod+1)
	line	26
	
l752:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\lwdiv.c"
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
psect	text2,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\lwdiv.c"
	line	8
global __ptext2
__ptext2:
psect	text2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\lwdiv.c"
	line	8
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:
;incstack = 0
	opt	stack 29
	dw	0FFFFh
	line	14
	
l1232:
	movlw	high(0)
	movwf	((c:___lwdiv@quotient+1)),c
	movlw	low(0)
	movwf	((c:___lwdiv@quotient)),c
	line	15
	
l1234:
	movf	((c:___lwdiv@divisor+1)),c,w
	iorwf ((c:___lwdiv@divisor)),c,w

	btfsc	status,2
	goto	u681
	goto	u680
u681:
	goto	l735
u680:
	line	16
	
l1236:
	movlw	low(01h)
	movwf	((c:___lwdiv@counter)),c
	line	17
	goto	l1240
	
l737:
	line	18
	
l1238:
	bcf	status,0
	rlcf	((c:___lwdiv@divisor)),c
	rlcf	((c:___lwdiv@divisor+1)),c
	line	19
	incf	((c:___lwdiv@counter)),c
	goto	l1240
	line	20
	
l736:
	line	17
	
l1240:
	
	btfss	((c:___lwdiv@divisor+1)),c,(15)&7
	goto	u691
	goto	u690
u691:
	goto	l1238
u690:
	goto	l1242
	
l738:
	goto	l1242
	line	21
	
l739:
	line	22
	
l1242:
	bcf	status,0
	rlcf	((c:___lwdiv@quotient)),c
	rlcf	((c:___lwdiv@quotient+1)),c
	line	23
	
l1244:
	movf	((c:___lwdiv@divisor)),c,w
	subwf	((c:___lwdiv@dividend)),c,w
	movf	((c:___lwdiv@divisor+1)),c,w
	subwfb	((c:___lwdiv@dividend+1)),c,w
	btfss	status,0
	goto	u701
	goto	u700
u701:
	goto	l1250
u700:
	line	24
	
l1246:
	movf	((c:___lwdiv@divisor)),c,w
	subwf	((c:___lwdiv@dividend)),c
	movf	((c:___lwdiv@divisor+1)),c,w
	subwfb	((c:___lwdiv@dividend+1)),c

	line	25
	
l1248:
	bsf	(0+(0/8)+(c:___lwdiv@quotient)),c,(0)&7
	goto	l1250
	line	26
	
l740:
	line	27
	
l1250:
	bcf	status,0
	rrcf	((c:___lwdiv@divisor+1)),c
	rrcf	((c:___lwdiv@divisor)),c
	line	28
	
l1252:
	decfsz	((c:___lwdiv@counter)),c
	
	goto	l1242
	goto	l735
	
l741:
	line	29
	
l735:
	line	30
	movff	(c:___lwdiv@quotient),(c:?___lwdiv)
	movff	(c:___lwdiv@quotient+1),(c:?___lwdiv+1)
	line	31
	
l742:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	___lbtoft

;; *************** function ___lbtoft *****************
;; Defined at:
;;		line 27 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\lbtoft.c"
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
psect	text3,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\lbtoft.c"
	line	27
global __ptext3
__ptext3:
psect	text3
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\lbtoft.c"
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
	
l1228:
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
	goto	l669
	
l1230:
	line	30
	
l669:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___lbtoft
	__end_of___lbtoft:
	signat	___lbtoft,4219
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   41[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   51[COMRAM] unsigned long 
;;  exp1            1   55[COMRAM] unsigned char 
;;  sign1           1   50[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   41[COMRAM] long 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\fttol.c"
	line	44
global __ptext4
__ptext4:
psect	text4
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:
;incstack = 0
	opt	stack 29
	dw	0FFFFh
	line	49
	
l1182:
	movff	(c:___fttol@f1+2),??___fttol+0+0
	clrf	(??___fttol+0+0+1)&0ffh,c
	clrf	(??___fttol+0+0+2)&0ffh,c
	rlcf	((c:___fttol@f1+1)),c,w
	rlcf	(??___fttol+0+0)&0ffh,c
	bnc	u601
	bsf	(??___fttol+0+0+1)&0ffh,c,0
u601:
	movf	(??___fttol+0+0),c,w
	movwf	((c:___fttol@exp1)),c
	tstfsz	((c:___fttol@exp1))&0ffh
	goto	u611
	goto	u610
u611:
	goto	l1188
u610:
	line	50
	
l1184:
	movlw	low(0)
	movwf	((c:?___fttol)),c
	movlw	high(0)
	movwf	((c:?___fttol+1)),c
	movlw	low highword(0)
	movwf	((c:?___fttol+2)),c
	movlw	high highword(0)
	movwf	((c:?___fttol+3)),c
	goto	l633
	
l1186:
	goto	l633
	
l632:
	line	51
	
l1188:
	movlw	(017h)&0ffh
	movwf	(??___fttol+0+0)&0ffh,c
	movff	(c:___fttol@f1),??___fttol+1+0
	movff	(c:___fttol@f1+1),??___fttol+1+0+1
	movff	(c:___fttol@f1+2),??___fttol+1+0+2
	incf	((??___fttol+0+0)),c,w
	movwf	(??___fttol+4+0)&0ffh,c
	goto	u620
u625:
	bcf	status,0
	rrcf	(??___fttol+1+2),c
	rrcf	(??___fttol+1+1),c
	rrcf	(??___fttol+1+0),c
u620:
	decfsz	(??___fttol+4+0)&0ffh,c
	goto	u625
	movf	(??___fttol+1+0),c,w
	movwf	((c:___fttol@sign1)),c
	line	52
	
l1190:
	bsf	(0+(15/8)+(c:___fttol@f1)),c,(15)&7
	line	53
	
l1192:
	movlw	low(0FFFFh)
	andwf	((c:___fttol@f1)),c
	movlw	high(0FFFFh)
	andwf	((c:___fttol@f1+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___fttol@f1+2)),c

	line	54
	
l1194:
	movf	((c:___fttol@f1)),c,w
	movwf	((c:___fttol@lval)),c
	movf	((c:___fttol@f1+1)),c,w
	movwf	1+((c:___fttol@lval)),c
	
	movf	((c:___fttol@f1+2)),c,w
	movwf	2+((c:___fttol@lval)),c
	
	clrf	3+((c:___fttol@lval)),c
	line	55
	
l1196:
	movlw	(08Eh)&0ffh
	subwf	((c:___fttol@exp1)),c
	line	56
	
l1198:
	btfss	((c:___fttol@exp1)),c,7
	goto	u631
	goto	u630
u631:
	goto	l1210
u630:
	line	57
	
l1200:
	movf	((c:___fttol@exp1)),c,w
	xorlw	80h
	movwf	(??___fttol+0+0)&0ffh,c
	movlw	(-15)&0ffh
	xorlw	80h
	subwf	(??___fttol+0+0),c,w
	btfsc	status,0
	goto	u641
	goto	u640
u641:
	goto	l1206
u640:
	line	58
	
l1202:
	movlw	low(0)
	movwf	((c:?___fttol)),c
	movlw	high(0)
	movwf	((c:?___fttol+1)),c
	movlw	low highword(0)
	movwf	((c:?___fttol+2)),c
	movlw	high highword(0)
	movwf	((c:?___fttol+3)),c
	goto	l633
	
l1204:
	goto	l633
	
l635:
	goto	l1206
	line	59
	
l636:
	line	60
	
l1206:
	bcf	status,0
	rrcf	((c:___fttol@lval+3)),c
	rrcf	((c:___fttol@lval+2)),c
	rrcf	((c:___fttol@lval+1)),c
	rrcf	((c:___fttol@lval)),c
	line	61
	
l1208:
	incfsz	((c:___fttol@exp1)),c
	
	goto	l1206
	goto	l1220
	
l637:
	line	62
	goto	l1220
	
l634:
	line	63
	
l1210:
	movlw	(018h-1)
	cpfsgt	((c:___fttol@exp1)),c
	goto	u651
	goto	u650
u651:
	goto	l1218
u650:
	line	64
	
l1212:
	movlw	low(0)
	movwf	((c:?___fttol)),c
	movlw	high(0)
	movwf	((c:?___fttol+1)),c
	movlw	low highword(0)
	movwf	((c:?___fttol+2)),c
	movlw	high highword(0)
	movwf	((c:?___fttol+3)),c
	goto	l633
	
l1214:
	goto	l633
	
l639:
	line	65
	goto	l1218
	
l641:
	line	66
	
l1216:
	bcf	status,0
	rlcf	((c:___fttol@lval)),c
	rlcf	((c:___fttol@lval+1)),c
	rlcf	((c:___fttol@lval+2)),c
	rlcf	((c:___fttol@lval+3)),c
	line	67
	decf	((c:___fttol@exp1)),c
	goto	l1218
	line	68
	
l640:
	line	65
	
l1218:
	tstfsz	((c:___fttol@exp1)),c
	goto	u661
	goto	u660
u661:
	goto	l1216
u660:
	goto	l1220
	
l642:
	goto	l1220
	line	69
	
l638:
	line	70
	
l1220:
	movf	((c:___fttol@sign1)),c,w
	btfsc	status,2
	goto	u671
	goto	u670
u671:
	goto	l1224
u670:
	line	71
	
l1222:
	comf	((c:___fttol@lval+3)),c
	comf	((c:___fttol@lval+2)),c
	comf	((c:___fttol@lval+1)),c
	negf	((c:___fttol@lval)),c
	movlw	0
	addwfc	((c:___fttol@lval+1)),c
	addwfc	((c:___fttol@lval+2)),c
	addwfc	((c:___fttol@lval+3)),c
	goto	l1224
	
l643:
	line	72
	
l1224:
	movff	(c:___fttol@lval),(c:?___fttol)
	movff	(c:___fttol@lval+1),(c:?___fttol+1)
	movff	(c:___fttol@lval+2),(c:?___fttol+2)
	movff	(c:___fttol@lval+3),(c:?___fttol+3)
	goto	l633
	
l1226:
	line	73
	
l633:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   26[COMRAM] float 
;;  f2              3   29[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   35[COMRAM] unsigned um
;;  sign            1   40[COMRAM] unsigned char 
;;  cntr            1   39[COMRAM] unsigned char 
;;  exp             1   38[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   26[COMRAM] float 
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\ftmul.c"
	line	62
global __ptext5
__ptext5:
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:
;incstack = 0
	opt	stack 28
	dw	0FFFFh
	line	67
	
l1024:
	movff	(c:___ftmul@f1+2),??___ftmul+0+0
	clrf	(??___ftmul+0+0+1)&0ffh,c
	clrf	(??___ftmul+0+0+2)&0ffh,c
	rlcf	((c:___ftmul@f1+1)),c,w
	rlcf	(??___ftmul+0+0)&0ffh,c
	bnc	u381
	bsf	(??___ftmul+0+0+1)&0ffh,c,0
u381:
	movf	(??___ftmul+0+0),c,w
	movwf	((c:___ftmul@exp)),c
	tstfsz	((c:___ftmul@exp))&0ffh
	goto	u391
	goto	u390
u391:
	goto	l1030
u390:
	line	68
	
l1026:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftmul)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftmul+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftmul+2)),c

	goto	l613
	
l1028:
	goto	l613
	
l612:
	line	69
	
l1030:
	movff	(c:___ftmul@f2+2),??___ftmul+0+0
	clrf	(??___ftmul+0+0+1)&0ffh,c
	clrf	(??___ftmul+0+0+2)&0ffh,c
	rlcf	((c:___ftmul@f2+1)),c,w
	rlcf	(??___ftmul+0+0)&0ffh,c
	bnc	u401
	bsf	(??___ftmul+0+0+1)&0ffh,c,0
u401:
	movf	(??___ftmul+0+0),c,w
	movwf	((c:___ftmul@sign)),c
	tstfsz	((c:___ftmul@sign))&0ffh
	goto	u411
	goto	u410
u411:
	goto	l1036
u410:
	line	70
	
l1032:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftmul)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftmul+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftmul+2)),c

	goto	l613
	
l1034:
	goto	l613
	
l614:
	line	71
	
l1036:
	movf	((c:___ftmul@sign)),c,w
	addlw	low(07Bh)
	addwf	((c:___ftmul@exp)),c
	line	72
	
l1038:
	movff	0+2+(c:___ftmul@f1),(c:___ftmul@sign)
	line	73
	movf	(0+2+(c:___ftmul@f2)),c,w
	xorwf	((c:___ftmul@sign)),c
	line	74
	movlw	(080h)&0ffh
	andwf	((c:___ftmul@sign)),c
	line	75
	
l1040:
	bsf	(0+(15/8)+(c:___ftmul@f1)),c,(15)&7
	line	77
	
l1042:
	bsf	(0+(15/8)+(c:___ftmul@f2)),c,(15)&7
	line	78
	
l1044:
	movlw	low(0FFFFh)
	andwf	((c:___ftmul@f2)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftmul@f2+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftmul@f2+2)),c

	line	79
	
l1046:
	movlw	low(0)
	movwf	((c:___ftmul@f3_as_product)),c
	movlw	high(0)
	movwf	((c:___ftmul@f3_as_product+1)),c
	movlw	low highword(0)
	movwf	((c:___ftmul@f3_as_product+2)),c

	line	134
	
l1048:
	movlw	low(07h)
	movwf	((c:___ftmul@cntr)),c
	goto	l1050
	line	135
	
l615:
	line	136
	
l1050:
	
	btfss	((c:___ftmul@f1)),c,(0)&7
	goto	u421
	goto	u420
u421:
	goto	l1054
u420:
	line	137
	
l1052:
	movf	((c:___ftmul@f2)),c,w
	addwf	((c:___ftmul@f3_as_product)),c
	movf	((c:___ftmul@f2+1)),c,w
	addwfc	((c:___ftmul@f3_as_product+1)),c
	movf	((c:___ftmul@f2+2)),c,w
	addwfc	((c:___ftmul@f3_as_product+2)),c

	goto	l1054
	
l616:
	line	138
	
l1054:
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
	
l1056:
	decfsz	((c:___ftmul@cntr)),c
	
	goto	l1050
	goto	l1058
	
l617:
	line	143
	
l1058:
	movlw	low(09h)
	movwf	((c:___ftmul@cntr)),c
	goto	l1060
	line	144
	
l618:
	line	145
	
l1060:
	
	btfss	((c:___ftmul@f1)),c,(0)&7
	goto	u431
	goto	u430
u431:
	goto	l1064
u430:
	line	146
	
l1062:
	movf	((c:___ftmul@f2)),c,w
	addwf	((c:___ftmul@f3_as_product)),c
	movf	((c:___ftmul@f2+1)),c,w
	addwfc	((c:___ftmul@f3_as_product+1)),c
	movf	((c:___ftmul@f2+2)),c,w
	addwfc	((c:___ftmul@f3_as_product+2)),c

	goto	l1064
	
l619:
	line	147
	
l1064:
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
	
l1066:
	decfsz	((c:___ftmul@cntr)),c
	
	goto	l1060
	goto	l1068
	
l620:
	line	156
	
l1068:
	movff	(c:___ftmul@f3_as_product),(c:___ftpack@arg)
	movff	(c:___ftmul@f3_as_product+1),(c:___ftpack@arg+1)
	movff	(c:___ftmul@f3_as_product+2),(c:___ftpack@arg+2)
	movff	(c:___ftmul@exp),(c:___ftpack@exp)
	movff	(c:___ftmul@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftmul)
	movff	1+?___ftpack,(c:?___ftmul+1)
	movff	2+?___ftpack,(c:?___ftmul+2)
	goto	l613
	
l1070:
	line	157
	
l613:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	___ftge

;; *************** function ___ftge *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\ftge.c"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\ftge.c"
	line	4
global __ptext6
__ptext6:
psect	text6
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\ftge.c"
	line	4
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:
;incstack = 0
	opt	stack 29
	dw	0FFFFh
	line	6
	
l1164:
	
	btfss	((c:___ftge@ff1+2)),c,(23)&7
	goto	u571
	goto	u570
u571:
	goto	l1168
u570:
	line	7
	
l1166:
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
	goto	l1168
	
l605:
	line	8
	
l1168:
	
	btfss	((c:___ftge@ff2+2)),c,(23)&7
	goto	u581
	goto	u580
u581:
	goto	l1172
u580:
	line	9
	
l1170:
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
	goto	l1172
	
l606:
	line	10
	
l1172:
	movlw	low(0800000h)
	xorwf	((c:___ftge@ff1)),c
	movlw	high(0800000h)
	xorwf	((c:___ftge@ff1+1)),c
	movlw	low highword(0800000h)
	xorwf	((c:___ftge@ff1+2)),c

	line	11
	
l1174:
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
	goto	u591
	goto	u590
u591:
	goto	l1178
u590:
	
l1176:
	bcf	status,0
	goto	l607
	
l820:
	
l1178:
	bsf	status,0
	goto	l607
	
l822:
	goto	l607
	
l1180:
	line	13
	
l607:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 49 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f1              3   26[COMRAM] float 
;;  f2              3   29[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   35[COMRAM] float 
;;  sign            1   40[COMRAM] unsigned char 
;;  exp             1   39[COMRAM] unsigned char 
;;  cntr            1   38[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   26[COMRAM] float 
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\ftdiv.c"
	line	49
global __ptext7
__ptext7:
psect	text7
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\ftdiv.c"
	line	49
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:
;incstack = 0
	opt	stack 28
	dw	0FFFFh
	line	55
	
l978:
	movff	(c:___ftdiv@f1+2),??___ftdiv+0+0
	clrf	(??___ftdiv+0+0+1)&0ffh,c
	clrf	(??___ftdiv+0+0+2)&0ffh,c
	rlcf	((c:___ftdiv@f1+1)),c,w
	rlcf	(??___ftdiv+0+0)&0ffh,c
	bnc	u331
	bsf	(??___ftdiv+0+0+1)&0ffh,c,0
u331:
	movf	(??___ftdiv+0+0),c,w
	movwf	((c:___ftdiv@exp)),c
	tstfsz	((c:___ftdiv@exp))&0ffh
	goto	u341
	goto	u340
u341:
	goto	l984
u340:
	line	56
	
l980:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftdiv)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+2)),c

	goto	l598
	
l982:
	goto	l598
	
l597:
	line	57
	
l984:
	movff	(c:___ftdiv@f2+2),??___ftdiv+0+0
	clrf	(??___ftdiv+0+0+1)&0ffh,c
	clrf	(??___ftdiv+0+0+2)&0ffh,c
	rlcf	((c:___ftdiv@f2+1)),c,w
	rlcf	(??___ftdiv+0+0)&0ffh,c
	bnc	u351
	bsf	(??___ftdiv+0+0+1)&0ffh,c,0
u351:
	movf	(??___ftdiv+0+0),c,w
	movwf	((c:___ftdiv@sign)),c
	tstfsz	((c:___ftdiv@sign))&0ffh
	goto	u361
	goto	u360
u361:
	goto	l990
u360:
	line	58
	
l986:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftdiv)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+2)),c

	goto	l598
	
l988:
	goto	l598
	
l599:
	line	59
	
l990:
	movlw	low(0)
	movwf	((c:___ftdiv@f3)),c
	movlw	high(0)
	movwf	((c:___ftdiv@f3+1)),c
	movlw	low highword(0)
	movwf	((c:___ftdiv@f3+2)),c

	line	60
	
l992:
	movf	((c:___ftdiv@sign)),c,w
	addlw	low(089h)
	subwf	((c:___ftdiv@exp)),c
	line	61
	
l994:
	movff	0+2+(c:___ftdiv@f1),(c:___ftdiv@sign)
	line	62
	
l996:
	movf	(0+2+(c:___ftdiv@f2)),c,w
	xorwf	((c:___ftdiv@sign)),c
	line	63
	
l998:
	movlw	(080h)&0ffh
	andwf	((c:___ftdiv@sign)),c
	line	64
	
l1000:
	bsf	(0+(15/8)+(c:___ftdiv@f1)),c,(15)&7
	line	65
	
l1002:
	movlw	low(0FFFFh)
	andwf	((c:___ftdiv@f1)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftdiv@f1+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftdiv@f1+2)),c

	line	66
	
l1004:
	bsf	(0+(15/8)+(c:___ftdiv@f2)),c,(15)&7
	line	67
	
l1006:
	movlw	low(0FFFFh)
	andwf	((c:___ftdiv@f2)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftdiv@f2+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftdiv@f2+2)),c

	line	68
	
l1008:
	movlw	low(018h)
	movwf	((c:___ftdiv@cntr)),c
	goto	l1010
	line	69
	
l600:
	line	70
	
l1010:
	bcf	status,0
	rlcf	((c:___ftdiv@f3)),c
	rlcf	((c:___ftdiv@f3+1)),c
	rlcf	((c:___ftdiv@f3+2)),c
	line	71
	
l1012:
	movf	((c:___ftdiv@f2)),c,w
	subwf	((c:___ftdiv@f1)),c,w
	movf	((c:___ftdiv@f2+1)),c,w
	subwfb	((c:___ftdiv@f1+1)),c,w
	movf	((c:___ftdiv@f2+2)),c,w
	subwfb	((c:___ftdiv@f1+2)),c,w
	btfss	status,0
	goto	u371
	goto	u370
u371:
	goto	l601
u370:
	line	72
	
l1014:
	movf	((c:___ftdiv@f2)),c,w
	subwf	((c:___ftdiv@f1)),c
	movf	((c:___ftdiv@f2+1)),c,w
	subwfb	((c:___ftdiv@f1+1)),c
	movf	((c:___ftdiv@f2+2)),c,w
	subwfb	((c:___ftdiv@f1+2)),c

	line	73
	
l1016:
	bsf	(0+(0/8)+(c:___ftdiv@f3)),c,(0)&7
	line	74
	
l601:
	line	75
	bcf	status,0
	rlcf	((c:___ftdiv@f1)),c
	rlcf	((c:___ftdiv@f1+1)),c
	rlcf	((c:___ftdiv@f1+2)),c
	line	76
	
l1018:
	decfsz	((c:___ftdiv@cntr)),c
	
	goto	l1010
	goto	l1020
	
l602:
	line	77
	
l1020:
	movff	(c:___ftdiv@f3),(c:___ftpack@arg)
	movff	(c:___ftdiv@f3+1),(c:___ftpack@arg+1)
	movff	(c:___ftdiv@f3+2),(c:___ftpack@arg+2)
	movff	(c:___ftdiv@exp),(c:___ftpack@exp)
	movff	(c:___ftdiv@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftdiv)
	movff	1+?___ftpack,(c:?___ftdiv+1)
	movff	2+?___ftpack,(c:?___ftdiv+2)
	goto	l598
	
l1022:
	line	78
	
l598:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	___ftadd

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 86 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   26[COMRAM] float 
;;  f2              3   29[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   37[COMRAM] unsigned char 
;;  exp2            1   36[COMRAM] unsigned char 
;;  sign            1   35[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   26[COMRAM] float 
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\ftadd.c"
	line	86
global __ptext8
__ptext8:
psect	text8
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:
;incstack = 0
	opt	stack 28
	dw	0FFFFh
	line	90
	
l908:
	movff	(c:___ftadd@f1+2),??___ftadd+0+0
	clrf	(??___ftadd+0+0+1)&0ffh,c
	clrf	(??___ftadd+0+0+2)&0ffh,c
	rlcf	((c:___ftadd@f1+1)),c,w
	rlcf	(??___ftadd+0+0)&0ffh,c
	bnc	u121
	bsf	(??___ftadd+0+0+1)&0ffh,c,0
u121:
	movf	(??___ftadd+0+0),c,w
	movwf	((c:___ftadd@exp1)),c
	line	91
	movff	(c:___ftadd@f2+2),??___ftadd+0+0
	clrf	(??___ftadd+0+0+1)&0ffh,c
	clrf	(??___ftadd+0+0+2)&0ffh,c
	rlcf	((c:___ftadd@f2+1)),c,w
	rlcf	(??___ftadd+0+0)&0ffh,c
	bnc	u131
	bsf	(??___ftadd+0+0+1)&0ffh,c,0
u131:
	movf	(??___ftadd+0+0),c,w
	movwf	((c:___ftadd@exp2)),c
	line	92
	
l910:
	movf	((c:___ftadd@exp1)),c,w
	btfsc	status,2
	goto	u141
	goto	u140
u141:
	goto	l566
u140:
	
l912:
	movf	((c:___ftadd@exp2)),c,w
	subwf	((c:___ftadd@exp1)),c,w
	btfsc	status,0
	goto	u151
	goto	u150
u151:
	goto	l916
u150:
	
l914:
	movf	((c:___ftadd@exp1)),c,w
	sublw	0
	addwf	((c:___ftadd@exp2)),c,w
	movwf	(??___ftadd+0+0)&0ffh,c
	movlw	(019h)&0ffh
	subwf	((??___ftadd+0+0)),c,w
	btfss	status,0
	goto	u161
	goto	u160
u161:
	goto	l916
u160:
	
l566:
	line	93
	movff	(c:___ftadd@f2),(c:?___ftadd)
	movff	(c:___ftadd@f2+1),(c:?___ftadd+1)
	movff	(c:___ftadd@f2+2),(c:?___ftadd+2)
	goto	l567
	
l564:
	line	94
	
l916:
	movf	((c:___ftadd@exp2)),c,w
	btfsc	status,2
	goto	u171
	goto	u170
u171:
	goto	l570
u170:
	
l918:
	movf	((c:___ftadd@exp1)),c,w
	subwf	((c:___ftadd@exp2)),c,w
	btfsc	status,0
	goto	u181
	goto	u180
u181:
	goto	l922
u180:
	
l920:
	movf	((c:___ftadd@exp2)),c,w
	sublw	0
	addwf	((c:___ftadd@exp1)),c,w
	movwf	(??___ftadd+0+0)&0ffh,c
	movlw	(019h)&0ffh
	subwf	((??___ftadd+0+0)),c,w
	btfss	status,0
	goto	u191
	goto	u190
u191:
	goto	l922
u190:
	
l570:
	line	95
	movff	(c:___ftadd@f1),(c:?___ftadd)
	movff	(c:___ftadd@f1+1),(c:?___ftadd+1)
	movff	(c:___ftadd@f1+2),(c:?___ftadd+2)
	goto	l567
	
l568:
	line	96
	
l922:
	movlw	low(06h)
	movwf	((c:___ftadd@sign)),c
	line	97
	
l924:
	
	btfss	((c:___ftadd@f1+2)),c,(23)&7
	goto	u201
	goto	u200
u201:
	goto	l928
u200:
	line	98
	
l926:
	bsf	(0+(7/8)+(c:___ftadd@sign)),c,(7)&7
	goto	l928
	
l571:
	line	99
	
l928:
	
	btfss	((c:___ftadd@f2+2)),c,(23)&7
	goto	u211
	goto	u210
u211:
	goto	l572
u210:
	line	100
	
l930:
	bsf	(0+(6/8)+(c:___ftadd@sign)),c,(6)&7
	
l572:
	line	101
	bsf	(0+(15/8)+(c:___ftadd@f1)),c,(15)&7
	line	102
	
l932:
	movlw	low(0FFFFh)
	andwf	((c:___ftadd@f1)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftadd@f1+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftadd@f1+2)),c

	line	103
	bsf	(0+(15/8)+(c:___ftadd@f2)),c,(15)&7
	line	104
	
l934:
	movlw	low(0FFFFh)
	andwf	((c:___ftadd@f2)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftadd@f2+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftadd@f2+2)),c

	line	106
	
l936:
	movf	((c:___ftadd@exp2)),c,w
	subwf	((c:___ftadd@exp1)),c,w
	btfsc	status,0
	goto	u221
	goto	u220
u221:
	goto	l948
u220:
	goto	l938
	line	109
	
l574:
	line	110
	
l938:
	bcf	status,0
	rlcf	((c:___ftadd@f2)),c
	rlcf	((c:___ftadd@f2+1)),c
	rlcf	((c:___ftadd@f2+2)),c
	line	111
	decf	((c:___ftadd@exp2)),c
	line	112
	
l940:
	movf	((c:___ftadd@exp2)),c,w
	xorwf	((c:___ftadd@exp1)),c,w
	btfsc	status,2
	goto	u231
	goto	u230
u231:
	goto	l946
u230:
	
l942:
	decf	((c:___ftadd@sign)),c
	movff	(c:___ftadd@sign),??___ftadd+0+0
	movlw	07h
	andwf	(??___ftadd+0+0),c
	btfss	status,2
	goto	u241
	goto	u240
u241:
	goto	l938
u240:
	goto	l946
	
l576:
	goto	l946
	
l577:
	line	113
	goto	l946
	
l579:
	line	114
	
l944:
	bcf	status,0
	rrcf	((c:___ftadd@f1+2)),c
	rrcf	((c:___ftadd@f1+1)),c
	rrcf	((c:___ftadd@f1)),c
	line	115
	incf	((c:___ftadd@exp1)),c
	goto	l946
	line	116
	
l578:
	line	113
	
l946:
	movf	((c:___ftadd@exp2)),c,w
	cpfseq	((c:___ftadd@exp1)),c
	goto	u251
	goto	u250
u251:
	goto	l944
u250:
	goto	l581
	
l580:
	line	117
	goto	l581
	
l573:
	
l948:
	movf	((c:___ftadd@exp1)),c,w
	subwf	((c:___ftadd@exp2)),c,w
	btfsc	status,0
	goto	u261
	goto	u260
u261:
	goto	l581
u260:
	goto	l950
	line	120
	
l583:
	line	121
	
l950:
	bcf	status,0
	rlcf	((c:___ftadd@f1)),c
	rlcf	((c:___ftadd@f1+1)),c
	rlcf	((c:___ftadd@f1+2)),c
	line	122
	decf	((c:___ftadd@exp1)),c
	line	123
	
l952:
	movf	((c:___ftadd@exp2)),c,w
	xorwf	((c:___ftadd@exp1)),c,w
	btfsc	status,2
	goto	u271
	goto	u270
u271:
	goto	l958
u270:
	
l954:
	decf	((c:___ftadd@sign)),c
	movff	(c:___ftadd@sign),??___ftadd+0+0
	movlw	07h
	andwf	(??___ftadd+0+0),c
	btfss	status,2
	goto	u281
	goto	u280
u281:
	goto	l950
u280:
	goto	l958
	
l585:
	goto	l958
	
l586:
	line	124
	goto	l958
	
l588:
	line	125
	
l956:
	bcf	status,0
	rrcf	((c:___ftadd@f2+2)),c
	rrcf	((c:___ftadd@f2+1)),c
	rrcf	((c:___ftadd@f2)),c
	line	126
	incf	((c:___ftadd@exp2)),c
	goto	l958
	line	127
	
l587:
	line	124
	
l958:
	movf	((c:___ftadd@exp2)),c,w
	cpfseq	((c:___ftadd@exp1)),c
	goto	u291
	goto	u290
u291:
	goto	l956
u290:
	goto	l581
	
l589:
	goto	l581
	line	128
	
l582:
	line	129
	
l581:
	
	btfss	((c:___ftadd@sign)),c,(7)&7
	goto	u301
	goto	u300
u301:
	goto	l590
u300:
	line	131
	
l960:
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
	
l590:
	line	134
	
	btfss	((c:___ftadd@sign)),c,(6)&7
	goto	u311
	goto	u310
u311:
	goto	l964
u310:
	line	136
	
l962:
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

	goto	l964
	line	138
	
l591:
	line	139
	
l964:
	movlw	low(0)
	movwf	((c:___ftadd@sign)),c
	line	140
	
l966:
	movf	((c:___ftadd@f1)),c,w
	addwf	((c:___ftadd@f2)),c
	movf	((c:___ftadd@f1+1)),c,w
	addwfc	((c:___ftadd@f2+1)),c
	movf	((c:___ftadd@f1+2)),c,w
	addwfc	((c:___ftadd@f2+2)),c

	line	141
	
l968:
	
	btfss	((c:___ftadd@f2+2)),c,(23)&7
	goto	u321
	goto	u320
u321:
	goto	l974
u320:
	line	142
	
l970:
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
	
l972:
	movlw	low(01h)
	movwf	((c:___ftadd@sign)),c
	goto	l974
	line	145
	
l592:
	line	146
	
l974:
	movff	(c:___ftadd@f2),(c:___ftpack@arg)
	movff	(c:___ftadd@f2+1),(c:___ftpack@arg+1)
	movff	(c:___ftadd@f2+2),(c:___ftpack@arg+2)
	movff	(c:___ftadd@exp1),(c:___ftpack@exp)
	movff	(c:___ftadd@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftadd)
	movff	1+?___ftpack,(c:?___ftadd+1)
	movff	2+?___ftpack,(c:?___ftadd+2)
	goto	l567
	
l976:
	line	148
	
l567:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	___awtoft

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 32 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2   22[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   25[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   22[COMRAM] float 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\awtoft.c"
	line	32
global __ptext9
__ptext9:
psect	text9
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\awtoft.c"
	line	32
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:
;incstack = 0
	opt	stack 28
	dw	0FFFFh
	line	36
	
l1152:
	movlw	low(0)
	movwf	((c:___awtoft@sign)),c
	line	37
	
l1154:
	movf	((c:___awtoft@c+1)),c,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	0
	btfsc	status,2
	subwf	((c:___awtoft@c)),c,w
	btfsc	status,0
	goto	u561
	goto	u560
u561:
	goto	l1160
u560:
	line	38
	
l1156:
	negf	((c:___awtoft@c)),c
	comf	((c:___awtoft@c+1)),c
	btfsc	status,0
	incf	((c:___awtoft@c+1)),c
	line	39
	
l1158:
	movlw	low(01h)
	movwf	((c:___awtoft@sign)),c
	goto	l1160
	line	40
	
l440:
	line	41
	
l1160:
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
	goto	l441
	
l1162:
	line	42
	
l441:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
	signat	___awtoft,4219
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\float.c"
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
;;		___awtoft
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___lbtoft
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\float.c"
	line	62
global __ptext10
__ptext10:
psect	text10
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:
;incstack = 0
	opt	stack 28
	dw	0FFFFh
	line	64
	
l824:
	movf	((c:___ftpack@exp)),c,w
	btfsc	status,2
	goto	u11
	goto	u10
u11:
	goto	l828
u10:
	
l826:
	movf	((c:___ftpack@arg)),c,w
	iorwf	((c:___ftpack@arg+1)),c,w
	iorwf	((c:___ftpack@arg+2)),c,w
	btfss	status,2
	goto	u21
	goto	u20
u21:
	goto	l834
u20:
	goto	l828
	
l528:
	line	65
	
l828:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftpack)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftpack+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftpack+2)),c

	goto	l529
	
l830:
	goto	l529
	
l526:
	line	66
	goto	l834
	
l531:
	line	67
	
l832:
	incf	((c:___ftpack@exp)),c
	line	68
	bcf	status,0
	rrcf	((c:___ftpack@arg+2)),c
	rrcf	((c:___ftpack@arg+1)),c
	rrcf	((c:___ftpack@arg)),c
	goto	l834
	line	69
	
l530:
	line	66
	
l834:
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
	goto	u31
	goto	u30
u31:
	goto	l832
u30:
	goto	l840
	
l532:
	line	70
	goto	l840
	
l534:
	line	71
	
l836:
	incf	((c:___ftpack@exp)),c
	line	72
	
l838:
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
	goto	l840
	line	74
	
l533:
	line	70
	
l840:
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
	goto	u41
	goto	u40
u41:
	goto	l836
u40:
	goto	l844
	
l535:
	line	75
	goto	l844
	
l537:
	line	76
	
l842:
	decf	((c:___ftpack@exp)),c
	line	77
	bcf	status,0
	rlcf	((c:___ftpack@arg)),c
	rlcf	((c:___ftpack@arg+1)),c
	rlcf	((c:___ftpack@arg+2)),c
	goto	l844
	line	78
	
l536:
	line	75
	
l844:
	
	btfss	((c:___ftpack@arg+1)),c,(15)&7
	goto	u51
	goto	u50
u51:
	goto	l842
u50:
	
l538:
	line	79
	
	btfsc	((c:___ftpack@exp)),c,(0)&7
	goto	u61
	goto	u60
u61:
	goto	l848
u60:
	line	80
	
l846:
	bcf	(0+(15/8)+(c:___ftpack@arg)),c,(15)&7
	goto	l848
	
l539:
	line	81
	
l848:
	bcf status,0
	rrcf	((c:___ftpack@exp)),c

	line	82
	movf	((c:___ftpack@exp)),c,w
	iorwf	((c:___ftpack@arg+2)),c

	line	83
	
l850:
	movf	((c:___ftpack@sign)),c,w
	btfsc	status,2
	goto	u71
	goto	u70
u71:
	goto	l854
u70:
	line	84
	
l852:
	bsf	(0+(23/8)+(c:___ftpack@arg)),c,(23)&7
	goto	l854
	
l540:
	line	85
	
l854:
	movff	(c:___ftpack@arg),(c:?___ftpack)
	movff	(c:___ftpack@arg+1),(c:?___ftpack+1)
	movff	(c:___ftpack@arg+2),(c:?___ftpack+2)
	goto	l529
	
l856:
	line	86
	
l529:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\awmod.c"
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
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\awmod.c"
	line	8
global __ptext11
__ptext11:
psect	text11
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\awmod.c"
	line	8
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:
;incstack = 0
	opt	stack 29
	dw	0FFFFh
	line	13
	
l1116:
	movlw	low(0)
	movwf	((c:___awmod@sign)),c
	line	14
	
l1118:
	movf	((c:___awmod@dividend+1)),c,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	0
	btfsc	status,2
	subwf	((c:___awmod@dividend)),c,w
	btfsc	status,0
	goto	u501
	goto	u500
u501:
	goto	l1124
u500:
	line	15
	
l1120:
	negf	((c:___awmod@dividend)),c
	comf	((c:___awmod@dividend+1)),c
	btfsc	status,0
	incf	((c:___awmod@dividend+1)),c
	line	16
	
l1122:
	movlw	low(01h)
	movwf	((c:___awmod@sign)),c
	goto	l1124
	line	17
	
l419:
	line	18
	
l1124:
	movf	((c:___awmod@divisor+1)),c,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	0
	btfsc	status,2
	subwf	((c:___awmod@divisor)),c,w
	btfsc	status,0
	goto	u511
	goto	u510
u511:
	goto	l1128
u510:
	line	19
	
l1126:
	negf	((c:___awmod@divisor)),c
	comf	((c:___awmod@divisor+1)),c
	btfsc	status,0
	incf	((c:___awmod@divisor+1)),c
	goto	l1128
	
l420:
	line	20
	
l1128:
	movf	((c:___awmod@divisor+1)),c,w
	iorwf ((c:___awmod@divisor)),c,w

	btfsc	status,2
	goto	u521
	goto	u520
u521:
	goto	l1144
u520:
	line	21
	
l1130:
	movlw	low(01h)
	movwf	((c:___awmod@counter)),c
	line	22
	goto	l1134
	
l423:
	line	23
	
l1132:
	bcf	status,0
	rlcf	((c:___awmod@divisor)),c
	rlcf	((c:___awmod@divisor+1)),c
	line	24
	incf	((c:___awmod@counter)),c
	goto	l1134
	line	25
	
l422:
	line	22
	
l1134:
	
	btfss	((c:___awmod@divisor+1)),c,(15)&7
	goto	u531
	goto	u530
u531:
	goto	l1132
u530:
	goto	l1136
	
l424:
	goto	l1136
	line	26
	
l425:
	line	27
	
l1136:
	movf	((c:___awmod@divisor)),c,w
	subwf	((c:___awmod@dividend)),c,w
	movf	((c:___awmod@divisor+1)),c,w
	subwfb	((c:___awmod@dividend+1)),c,w
	btfss	status,0
	goto	u541
	goto	u540
u541:
	goto	l1140
u540:
	line	28
	
l1138:
	movf	((c:___awmod@divisor)),c,w
	subwf	((c:___awmod@dividend)),c
	movf	((c:___awmod@divisor+1)),c,w
	subwfb	((c:___awmod@dividend+1)),c

	goto	l1140
	
l426:
	line	29
	
l1140:
	bcf	status,0
	rrcf	((c:___awmod@divisor+1)),c
	rrcf	((c:___awmod@divisor)),c
	line	30
	
l1142:
	decfsz	((c:___awmod@counter)),c
	
	goto	l1136
	goto	l1144
	
l427:
	goto	l1144
	line	31
	
l421:
	line	32
	
l1144:
	movf	((c:___awmod@sign)),c,w
	btfsc	status,2
	goto	u551
	goto	u550
u551:
	goto	l1148
u550:
	line	33
	
l1146:
	negf	((c:___awmod@dividend)),c
	comf	((c:___awmod@dividend+1)),c
	btfsc	status,0
	incf	((c:___awmod@dividend+1)),c
	goto	l1148
	
l428:
	line	34
	
l1148:
	movff	(c:___awmod@dividend),(c:?___awmod)
	movff	(c:___awmod@dividend+1),(c:?___awmod+1)
	goto	l429
	
l1150:
	line	35
	
l429:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\awdiv.c"
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
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\awdiv.c"
	line	8
global __ptext12
__ptext12:
psect	text12
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\common\awdiv.c"
	line	8
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:
;incstack = 0
	opt	stack 29
	dw	0FFFFh
	line	14
	
l1072:
	movlw	low(0)
	movwf	((c:___awdiv@sign)),c
	line	15
	
l1074:
	movf	((c:___awdiv@divisor+1)),c,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	0
	btfsc	status,2
	subwf	((c:___awdiv@divisor)),c,w
	btfsc	status,0
	goto	u441
	goto	u440
u441:
	goto	l1080
u440:
	line	16
	
l1076:
	negf	((c:___awdiv@divisor)),c
	comf	((c:___awdiv@divisor+1)),c
	btfsc	status,0
	incf	((c:___awdiv@divisor+1)),c
	line	17
	
l1078:
	movlw	low(01h)
	movwf	((c:___awdiv@sign)),c
	goto	l1080
	line	18
	
l406:
	line	19
	
l1080:
	movf	((c:___awdiv@dividend+1)),c,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	0
	btfsc	status,2
	subwf	((c:___awdiv@dividend)),c,w
	btfsc	status,0
	goto	u451
	goto	u450
u451:
	goto	l1086
u450:
	line	20
	
l1082:
	negf	((c:___awdiv@dividend)),c
	comf	((c:___awdiv@dividend+1)),c
	btfsc	status,0
	incf	((c:___awdiv@dividend+1)),c
	line	21
	
l1084:
	movlw	(01h)&0ffh
	xorwf	((c:___awdiv@sign)),c
	goto	l1086
	line	22
	
l407:
	line	23
	
l1086:
	movlw	high(0)
	movwf	((c:___awdiv@quotient+1)),c
	movlw	low(0)
	movwf	((c:___awdiv@quotient)),c
	line	24
	
l1088:
	movf	((c:___awdiv@divisor+1)),c,w
	iorwf ((c:___awdiv@divisor)),c,w

	btfsc	status,2
	goto	u461
	goto	u460
u461:
	goto	l1108
u460:
	line	25
	
l1090:
	movlw	low(01h)
	movwf	((c:___awdiv@counter)),c
	line	26
	goto	l1094
	
l410:
	line	27
	
l1092:
	bcf	status,0
	rlcf	((c:___awdiv@divisor)),c
	rlcf	((c:___awdiv@divisor+1)),c
	line	28
	incf	((c:___awdiv@counter)),c
	goto	l1094
	line	29
	
l409:
	line	26
	
l1094:
	
	btfss	((c:___awdiv@divisor+1)),c,(15)&7
	goto	u471
	goto	u470
u471:
	goto	l1092
u470:
	goto	l1096
	
l411:
	goto	l1096
	line	30
	
l412:
	line	31
	
l1096:
	bcf	status,0
	rlcf	((c:___awdiv@quotient)),c
	rlcf	((c:___awdiv@quotient+1)),c
	line	32
	
l1098:
	movf	((c:___awdiv@divisor)),c,w
	subwf	((c:___awdiv@dividend)),c,w
	movf	((c:___awdiv@divisor+1)),c,w
	subwfb	((c:___awdiv@dividend+1)),c,w
	btfss	status,0
	goto	u481
	goto	u480
u481:
	goto	l1104
u480:
	line	33
	
l1100:
	movf	((c:___awdiv@divisor)),c,w
	subwf	((c:___awdiv@dividend)),c
	movf	((c:___awdiv@divisor+1)),c,w
	subwfb	((c:___awdiv@dividend+1)),c

	line	34
	
l1102:
	bsf	(0+(0/8)+(c:___awdiv@quotient)),c,(0)&7
	goto	l1104
	line	35
	
l413:
	line	36
	
l1104:
	bcf	status,0
	rrcf	((c:___awdiv@divisor+1)),c
	rrcf	((c:___awdiv@divisor)),c
	line	37
	
l1106:
	decfsz	((c:___awdiv@counter)),c
	
	goto	l1096
	goto	l1108
	
l414:
	goto	l1108
	line	38
	
l408:
	line	39
	
l1108:
	movf	((c:___awdiv@sign)),c,w
	btfsc	status,2
	goto	u491
	goto	u490
u491:
	goto	l1112
u490:
	line	40
	
l1110:
	negf	((c:___awdiv@quotient)),c
	comf	((c:___awdiv@quotient+1)),c
	btfsc	status,0
	incf	((c:___awdiv@quotient+1)),c
	goto	l1112
	
l415:
	line	41
	
l1112:
	movff	(c:___awdiv@quotient),(c:?___awdiv)
	movff	(c:___awdiv@quotient+1),(c:?___awdiv+1)
	goto	l416
	
l1114:
	line	42
	
l416:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_Write_b_eep

;; *************** function _Write_b_eep *****************
;; Defined at:
;;		line 30 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic18\plib\EEP\write_B.c"
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
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic18\plib\EEP\write_B.c"
	line	30
global __ptext13
__ptext13:
psect	text13
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic18\plib\EEP\write_B.c"
	line	30
	global	__size_of_Write_b_eep
	__size_of_Write_b_eep	equ	__end_of_Write_b_eep-_Write_b_eep
	
_Write_b_eep:
;incstack = 0
	opt	stack 29
	dw	0FFFFh
	line	32
	
l886:
	movlw	low(0)
	movwf	((c:Write_b_eep@GIE_BIT_VAL)),c
	line	33
	
l888:
	movff	(c:Write_b_eep@badd),(c:4009)	;volatile
	line	34
	
l890:
	movff	(c:Write_b_eep@bdat),(c:4008)	;volatile
	line	35
	
l892:
	bcf	((c:4006)),c,7	;volatile
	line	36
	
l894:
	bcf	((c:4006)),c,6	;volatile
	line	37
	
l896:
	bsf	((c:4006)),c,2	;volatile
	line	38
	
l898:
	movlw	0
	btfsc	((c:4082)),c,7	;volatile
	movlw	1
	movwf	((c:Write_b_eep@GIE_BIT_VAL)),c
	line	39
	
l900:
	bcf	((c:4082)),c,7	;volatile
	line	40
	
l902:
	movlw	low(055h)
	movwf	((c:4007)),c	;volatile
	line	41
	
l904:
	movlw	low(0AAh)
	movwf	((c:4007)),c	;volatile
	line	42
	
l906:
	bsf	((c:4006)),c,1	;volatile
	line	43
	goto	l217
	
l218:
	
l217:
	btfsc	((c:4006)),c,1	;volatile
	goto	u101
	goto	u100
u101:
	goto	l217
u100:
	
l219:
	line	44
	btfsc	(c:Write_b_eep@GIE_BIT_VAL),c,0
	bra	u115
	bcf	((c:4082)),c,7	;volatile
	bra	u116
	u115:
	bsf	((c:4082)),c,7	;volatile
	u116:

	line	45
	bcf	((c:4006)),c,2	;volatile
	line	46
	
l220:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_Write_b_eep
	__end_of_Write_b_eep:
	signat	_Write_b_eep,8312
	global	_SetChanADC

;; *************** function _SetChanADC *****************
;; Defined at:
;;		line 21 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic18\plib\ADC\adcsetch.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1   15[COMRAM] unsigned char 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic18\plib\ADC\adcsetch.c"
	line	21
global __ptext14
__ptext14:
psect	text14
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic18\plib\ADC\adcsetch.c"
	line	21
	global	__size_of_SetChanADC
	__size_of_SetChanADC	equ	__end_of_SetChanADC-_SetChanADC
	
_SetChanADC:
;incstack = 0
	opt	stack 29
	dw	0FFFFh
;SetChanADC@channel stored from wreg
	movwf	((c:SetChanADC@channel)),c
	line	24
	
l874:
	movff	(c:4034),??_SetChanADC+0+0	;volatile
	movlw	0C7h
	andwf	(??_SetChanADC+0+0),c
	movf	((c:SetChanADC@channel)),c,w
	andlw	low(038h)
	iorwf	(??_SetChanADC+0+0),c,w
	movwf	((c:4034)),c	;volatile
	line	25
	
l193:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_SetChanADC
	__end_of_SetChanADC:
	signat	_SetChanADC,4216
	global	_Read_b_eep

;; *************** function _Read_b_eep *****************
;; Defined at:
;;		line 23 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic18\plib\EEP\read_B.c"
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
psect	text15,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic18\plib\EEP\read_B.c"
	line	23
global __ptext15
__ptext15:
psect	text15
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic18\plib\EEP\read_B.c"
	line	23
	global	__size_of_Read_b_eep
	__size_of_Read_b_eep	equ	__end_of_Read_b_eep-_Read_b_eep
	
_Read_b_eep:
;incstack = 0
	opt	stack 29
	dw	0FFFFh
	line	25
	
l858:
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
	
l860:
	movf	((c:4008)),c,w	;volatile
	goto	l204
	
l862:
	line	32
	
l204:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_Read_b_eep
	__end_of_Read_b_eep:
	signat	_Read_b_eep,4217
	global	_ReadADC

;; *************** function _ReadADC *****************
;; Defined at:
;;		line 24 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic18\plib\ADC\adcread.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   14[COMRAM] int 
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
psect	text16,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic18\plib\ADC\adcread.c"
	line	24
global __ptext16
__ptext16:
psect	text16
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic18\plib\ADC\adcread.c"
	line	24
	global	__size_of_ReadADC
	__size_of_ReadADC	equ	__end_of_ReadADC-_ReadADC
	
_ReadADC:
;incstack = 0
	opt	stack 29
	dw	0FFFFh
	line	26
	
l882:
	movf	((c:4036)),c,w	;volatile
	movwf	((c:?_ReadADC+1)),c
	movf	((c:4035)),c,w	;volatile
	movwf	((c:?_ReadADC)),c
	goto	l188
	
l884:
	line	27
	
l188:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_ReadADC
	__end_of_ReadADC:
	signat	_ReadADC,90
	global	_OpenADC

;; *************** function _OpenADC *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic18\plib\ADC\adcopen.c"
;; Parameters:    Size  Location     Type
;;  config          1    wreg     unsigned char 
;;  config2         1   14[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  config          1   16[COMRAM] unsigned char 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic18\plib\ADC\adcopen.c"
	line	5
global __ptext17
__ptext17:
psect	text17
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic18\plib\ADC\adcopen.c"
	line	5
	global	__size_of_OpenADC
	__size_of_OpenADC	equ	__end_of_OpenADC-_OpenADC
	
_OpenADC:
;incstack = 0
	opt	stack 29
	dw	0FFFFh
;OpenADC@config stored from wreg
	movwf	((c:OpenADC@config)),c
	line	8
	
l864:
	movlw	low(0)
	movwf	((c:4034)),c	;volatile
	line	10
	
l866:
	movff	(c:OpenADC@config),(c:4033)	;volatile
	line	11
	
l868:
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
	
l870:
	
	btfss	((c:OpenADC@config2)),c,(7)&7
	goto	u81
	goto	u80
u81:
	goto	l180
u80:
	line	14
	
l872:
	bcf	((c:3998)),c,6	;volatile
	line	15
	bsf	((c:3997)),c,6	;volatile
	line	16
	bsf	((c:4082)),c,6	;volatile
	line	17
	
l180:
	line	18
	bsf	((c:4034)),c,0	;volatile
	line	19
	
l181:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_OpenADC
	__end_of_OpenADC:
	signat	_OpenADC,8312
	global	_ConvertADC

;; *************** function _ConvertADC *****************
;; Defined at:
;;		line 22 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic18\plib\ADC\adcconv.c"
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
psect	text18,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic18\plib\ADC\adcconv.c"
	line	22
global __ptext18
__ptext18:
psect	text18
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic18\plib\ADC\adcconv.c"
	line	22
	global	__size_of_ConvertADC
	__size_of_ConvertADC	equ	__end_of_ConvertADC-_ConvertADC
	
_ConvertADC:
;incstack = 0
	opt	stack 29
	dw	0FFFFh
	line	24
	
l876:
	bsf	((c:4034)),c,2	;volatile
	line	25
	
l165:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_ConvertADC
	__end_of_ConvertADC:
	signat	_ConvertADC,88
	global	_BusyADC

;; *************** function _BusyADC *****************
;; Defined at:
;;		line 26 in file "C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic18\plib\ADC\adcbusy.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic18\plib\ADC\adcbusy.c"
	line	26
global __ptext19
__ptext19:
psect	text19
	file	"C:\Program Files (x86)\Microchip\xc8\v1.32\sources\pic18\plib\ADC\adcbusy.c"
	line	26
	global	__size_of_BusyADC
	__size_of_BusyADC	equ	__end_of_BusyADC-_BusyADC
	
_BusyADC:
;incstack = 0
	opt	stack 29
	dw	0FFFFh
	line	28
	
l878:
	btfsc	((c:4034)),c,2	;volatile
	goto	u91
	goto	u90
u91:
	movlw	1
	goto	u96
u90:
	movlw	0
u96:
	goto	l160
	
l880:
	line	29
	
l160:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_BusyADC
	__end_of_BusyADC:
	signat	_BusyADC,89
	global	_tmr_int

;; *************** function _tmr_int *****************
;; Defined at:
;;		line 600 in file "E:\Study Material\XC8 PROJECTS\Analog\CO2.c"
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
	file	"E:\Study Material\XC8 PROJECTS\Analog\CO2.c"
	line	600
	global	__size_of_tmr_int
	__size_of_tmr_int	equ	__end_of_tmr_int-_tmr_int
	
_tmr_int:
;incstack = 0
	opt	stack 28
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
	line	602
	
i2l1844:
;CO2.c: 602: if(adr == 7)
	movf	((c:_adr)),c,w	;volatile
	xorlw	7

	btfss	status,2
	goto	i2u118_41
	goto	i2u118_40
i2u118_41:
	goto	i2l1850
i2u118_40:
	line	604
	
i2l1846:
;CO2.c: 603: {
;CO2.c: 604: RB0 = ~(RB0);
	btg	c:(31752/8),(31752)&7	;volatile
	line	605
	
i2l1848:
;CO2.c: 605: adr = 0;
	movlw	low(0)
	movwf	((c:_adr)),c	;volatile
	goto	i2l1850
	line	606
	
i2l153:
	line	607
	
i2l1850:
;CO2.c: 606: }
;CO2.c: 607: PORTE = adr;
	movff	(c:_adr),(c:3972)	;volatile
	line	608
	
i2l1852:
;CO2.c: 608: PORTB = PORTB & 0x0F;
	movf	((c:3969)),c,w	;volatile
	andlw	low(0Fh)
	movwf	((c:3969)),c	;volatile
	line	609
	
i2l1854:
;CO2.c: 609: PORTB = PORTB | values[count];
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
	line	610
	
i2l1856:
;CO2.c: 610: adr = adr + 1;
	incf	((c:_adr)),c,w	;volatile
	movwf	((c:_adr)),c	;volatile
	line	611
	
i2l1858:
;CO2.c: 611: count = count + 1;
	incf	((c:_count)),c,w	;volatile
	movwf	((c:_count)),c	;volatile
	line	612
	
i2l1860:
;CO2.c: 612: if(count == 14)
	movf	((c:_count)),c,w	;volatile
	xorlw	14

	btfss	status,2
	goto	i2u119_41
	goto	i2u119_40
i2u119_41:
	goto	i2l1864
i2u119_40:
	line	614
	
i2l1862:
;CO2.c: 613: {
;CO2.c: 614: count = 0;
	movlw	low(0)
	movwf	((c:_count)),c	;volatile
	goto	i2l1864
	line	615
	
i2l154:
	line	616
	
i2l1864:
;CO2.c: 615: }
;CO2.c: 616: timer = timer - 1;
	movlw	low(-1)
	addwf	((c:_timer)),c,w	;volatile
	
	movwf	((c:_timer)),c	;volatile
	movlw	high(-1)
	addwfc	((c:_timer+1)),c,w	;volatile
	movwf	1+((c:_timer)),c	;volatile
	line	617
	
i2l1866:
;CO2.c: 617: temperature_timer = temperature_timer - 1;
	movlw	low(-1)
	addwf	((c:_temperature_timer)),c,w	;volatile
	
	movwf	((c:_temperature_timer)),c	;volatile
	movlw	high(-1)
	addwfc	((c:_temperature_timer+1)),c,w	;volatile
	movwf	1+((c:_temperature_timer)),c	;volatile
	line	618
	
i2l1868:
;CO2.c: 618: T0IF = 0;
	bcf	c:(32658/8),(32658)&7	;volatile
	line	619
;CO2.c: 619: TMR0 = 0;
	movlw	high(0)
	movwf	((c:4054+1)),c	;volatile
	movlw	low(0)
	movwf	((c:4054)),c	;volatile
	goto	i2l155
	line	620
	
i2l1870:
	line	621
;CO2.c: 620: return;
	
i2l155:
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

opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 12136"

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
skipnz macro
	btfsc	status,2
	endm
	global	__ramtop
	global	__accesstop
# 46 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
PORTA equ 0F80h ;# 
# 99 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
PORTB equ 0F81h ;# 
# 139 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
PORTC equ 0F82h ;# 
# 189 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
PORTD equ 0F83h ;# 
# 225 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
PORTE equ 0F84h ;# 
# 334 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
LATA equ 0F89h ;# 
# 390 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
LATB equ 0F8Ah ;# 
# 443 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
LATC equ 0F8Bh ;# 
# 496 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
LATD equ 0F8Ch ;# 
# 549 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
LATE equ 0F8Dh ;# 
# 597 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
TRISA equ 0F92h ;# 
# 602 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
DDRA equ 0F92h ;# 
# 656 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
TRISB equ 0F93h ;# 
# 661 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
DDRB equ 0F93h ;# 
# 727 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
TRISC equ 0F94h ;# 
# 732 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
DDRC equ 0F94h ;# 
# 798 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
TRISD equ 0F95h ;# 
# 803 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
DDRD equ 0F95h ;# 
# 861 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
TRISE equ 0F96h ;# 
# 866 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
DDRE equ 0F96h ;# 
# 914 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
PIE1 equ 0F9Dh ;# 
# 941 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
PIR1 equ 0F9Eh ;# 
# 977 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
IPR1 equ 0F9Fh ;# 
# 1004 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
PIE2 equ 0FA0h ;# 
# 1020 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
PIR2 equ 0FA1h ;# 
# 1036 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
IPR2 equ 0FA2h ;# 
# 1052 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
EECON1 equ 0FA6h ;# 
# 1075 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
EECON2 equ 0FA7h ;# 
# 1087 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
EEDATA equ 0FA8h ;# 
# 1099 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
EEADR equ 0FA9h ;# 
# 1111 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
RCSTA equ 0FABh ;# 
# 1116 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
RCSTA1 equ 0FABh ;# 
# 1190 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
TXSTA equ 0FACh ;# 
# 1195 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
TXSTA1 equ 0FACh ;# 
# 1307 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
TXREG equ 0FADh ;# 
# 1312 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
TXREG1 equ 0FADh ;# 
# 1330 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
RCREG equ 0FAEh ;# 
# 1335 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
RCREG1 equ 0FAEh ;# 
# 1353 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
SPBRG equ 0FAFh ;# 
# 1358 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
SPBRG1 equ 0FAFh ;# 
# 1376 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
T3CON equ 0FB1h ;# 
# 1421 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
TMR3 equ 0FB2h ;# 
# 1433 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
TMR3L equ 0FB2h ;# 
# 1445 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
TMR3H equ 0FB3h ;# 
# 1457 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
CCP2CON equ 0FBAh ;# 
# 1487 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
CCPR2 equ 0FBBh ;# 
# 1499 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
CCPR2L equ 0FBBh ;# 
# 1511 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
CCPR2H equ 0FBCh ;# 
# 1523 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
CCP1CON equ 0FBDh ;# 
# 1549 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
CCPR1 equ 0FBEh ;# 
# 1561 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
CCPR1L equ 0FBEh ;# 
# 1573 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
CCPR1H equ 0FBFh ;# 
# 1585 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
ADCON1 equ 0FC1h ;# 
# 1610 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
ADCON0 equ 0FC2h ;# 
# 1674 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
ADRES equ 0FC3h ;# 
# 1686 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
ADRESL equ 0FC3h ;# 
# 1698 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
ADRESH equ 0FC4h ;# 
# 1710 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
SSPCON2 equ 0FC5h ;# 
# 1729 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
SSPCON1 equ 0FC6h ;# 
# 1751 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
SSPSTAT equ 0FC7h ;# 
# 1869 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
SSPADD equ 0FC8h ;# 
# 1881 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
SSPBUF equ 0FC9h ;# 
# 1893 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
T2CON equ 0FCAh ;# 
# 1916 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
PR2 equ 0FCBh ;# 
# 1921 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
MEMCON equ 0FCBh ;# 
# 1939 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
TMR2 equ 0FCCh ;# 
# 1951 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
T1CON equ 0FCDh ;# 
# 1992 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
TMR1 equ 0FCEh ;# 
# 2004 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
TMR1L equ 0FCEh ;# 
# 2016 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
TMR1H equ 0FCFh ;# 
# 2028 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
RCON equ 0FD0h ;# 
# 2078 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
WDTCON equ 0FD1h ;# 
# 2093 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
LVDCON equ 0FD2h ;# 
# 2113 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
OSCCON equ 0FD3h ;# 
# 2125 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
T0CON equ 0FD5h ;# 
# 2147 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
TMR0 equ 0FD6h ;# 
# 2159 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
TMR0L equ 0FD6h ;# 
# 2171 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
TMR0H equ 0FD7h ;# 
# 2183 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
STATUS equ 0FD8h ;# 
# 2214 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
FSR2 equ 0FD9h ;# 
# 2226 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
FSR2L equ 0FD9h ;# 
# 2238 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
FSR2H equ 0FDAh ;# 
# 2250 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
PLUSW2 equ 0FDBh ;# 
# 2262 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
PREINC2 equ 0FDCh ;# 
# 2274 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
POSTDEC2 equ 0FDDh ;# 
# 2286 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
POSTINC2 equ 0FDEh ;# 
# 2298 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
INDF2 equ 0FDFh ;# 
# 2310 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
BSR equ 0FE0h ;# 
# 2322 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
FSR1 equ 0FE1h ;# 
# 2334 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
FSR1L equ 0FE1h ;# 
# 2346 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
FSR1H equ 0FE2h ;# 
# 2358 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
PLUSW1 equ 0FE3h ;# 
# 2370 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
PREINC1 equ 0FE4h ;# 
# 2382 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
POSTDEC1 equ 0FE5h ;# 
# 2394 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
POSTINC1 equ 0FE6h ;# 
# 2406 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
INDF1 equ 0FE7h ;# 
# 2418 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
WREG equ 0FE8h ;# 
# 2441 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
FSR0 equ 0FE9h ;# 
# 2453 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
FSR0L equ 0FE9h ;# 
# 2465 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
FSR0H equ 0FEAh ;# 
# 2477 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
PLUSW0 equ 0FEBh ;# 
# 2489 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
PREINC0 equ 0FECh ;# 
# 2501 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
POSTDEC0 equ 0FEDh ;# 
# 2513 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
POSTINC0 equ 0FEEh ;# 
# 2525 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
INDF0 equ 0FEFh ;# 
# 2537 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
INTCON3 equ 0FF0h ;# 
# 2566 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
INTCON2 equ 0FF1h ;# 
# 2595 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
INTCON equ 0FF2h ;# 
# 2600 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
INTCON1 equ 0FF2h ;# 
# 2722 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
PROD equ 0FF3h ;# 
# 2734 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
PRODL equ 0FF3h ;# 
# 2746 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
PRODH equ 0FF4h ;# 
# 2758 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
TABLAT equ 0FF5h ;# 
# 2770 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
TBLPTR equ 0FF6h ;# 
# 2783 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
TBLPTRL equ 0FF6h ;# 
# 2795 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
TBLPTRH equ 0FF7h ;# 
# 2807 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
TBLPTRU equ 0FF8h ;# 
# 2820 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
PCLAT equ 0FF9h ;# 
# 2825 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
PC equ 0FF9h ;# 
# 2843 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
PCL equ 0FF9h ;# 
# 2855 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
PCLATH equ 0FFAh ;# 
# 2867 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
PCLATU equ 0FFBh ;# 
# 2879 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
STKPTR equ 0FFCh ;# 
# 2910 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
TOS equ 0FFDh ;# 
# 2922 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
TOSL equ 0FFDh ;# 
# 2934 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
TOSH equ 0FFEh ;# 
# 2946 "C:\Program Files\Microchip\xc8\v1.00\include\pic18f452.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,_Wait
	FNROOT	_main
	global	_ADCON1
_ADCON1	set	0xFC1
	global	_PORTE
_PORTE	set	0xF84
	global	_TRISE
_TRISE	set	0xF96
psect	text0,class=CODE,space=0,reloc=2
global __ptext0
__ptext0:
; #config settings
	file	"BLINKB.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=1
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1
global __pcstackCOMRAM
__pcstackCOMRAM:
	global	?_Wait
?_Wait:	; 0 bytes @ 0x0
	global	??_Wait
??_Wait:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	ds   1
	global	Wait@i
Wait@i:	; 1 bytes @ 0x1
	ds   1
	global	??_main
??_main:	; 0 bytes @ 0x2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM          127      2       2
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
;!    _main->_Wait
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
;! (0) _main                                                 0     0      0      30
;!                               _Wait
;! ---------------------------------------------------------------------------------
;! (1) _Wait                                                 2     2      0      30
;!                                              0 COMRAM     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Wait
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMRAM           7F      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMRAM              7F      2       2       1        1.6%
;!STACK                0      0       1       2        0.0%
;!DATA                 0      0       0       3        0.0%
;!BITBANK0            80      0       0       4        0.0%
;!BANK0               80      0       0       5        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0       0       7        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK4           100      0       0      12        0.0%
;!BANK4              100      0       0      13        0.0%
;!BANK5              100      0       0      14        0.0%
;!ABS                  0      0       0      15        0.0%
;!BITBANK5           100      0       0      16        0.0%
;!BIGRAM             5FF      0       0      17        0.0%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 11 in file "C:\XC8 PROJECTS\18F\BLINKB.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Wait
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0
psect	text0
	file	"C:\XC8 PROJECTS\18F\BLINKB.c"
	line	11
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
	opt	stack 30
	dw	0FFFFh
	line	15
	
l608:
;BLINKB.c: 15: TRISE = 0xF8;
	movlw	low(0F8h)
	movwf	((c:3990)),c	;volatile
	line	16
;BLINKB.c: 16: ADCON1 = 0x06;
	movlw	low(06h)
	movwf	((c:4033)),c	;volatile
	line	18
;BLINKB.c: 18: while(1)
	
l16:
	line	20
;BLINKB.c: 19: {
;BLINKB.c: 20: PORTE=0x07;
	movlw	low(07h)
	movwf	((c:3972)),c	;volatile
	line	22
	
l610:
;BLINKB.c: 22: Wait();
	call	_Wait	;wreg free
	line	24
	
l612:
;BLINKB.c: 24: PORTE=0x00;
	movlw	low(0)
	movwf	((c:3972)),c	;volatile
	line	26
;BLINKB.c: 26: Wait();
	call	_Wait	;wreg free
	goto	l16
	line	27
	
l17:
	line	18
	goto	l16
	
l18:
	line	28
	
l19:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_Wait

;; *************** function _Wait *****************
;; Defined at:
;;		line 4 in file "C:\XC8 PROJECTS\18F\BLINKB.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    1[COMRAM] unsigned char 
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
global __ptext1
__ptext1:
psect	text1
	file	"C:\XC8 PROJECTS\18F\BLINKB.c"
	line	4
	global	__size_of_Wait
	__size_of_Wait	equ	__end_of_Wait-_Wait
	
_Wait:
	opt	stack 30
	dw	0FFFFh
	line	6
	
l598:
;BLINKB.c: 5: unsigned char i;
;BLINKB.c: 6: for(i=0;i<100;i++)
	movwf	(??_Wait+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:Wait@i)),c
	movf	(??_Wait+0+0)&0ffh,c,w
	
l600:
	movlw	(064h-1)
	cpfsgt	((c:Wait@i)),c
	goto	u11
	goto	u10
u11:
	goto	l11
u10:
	goto	l13
	
l602:
	goto	l13
	line	7
	
l11:
;BLINKB.c: 7: _delay(6);
		nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop

	line	6
	
l604:
	incf	((c:Wait@i)),c
	
l606:
	movlw	(064h-1)
	cpfsgt	((c:Wait@i)),c
	goto	u21
	goto	u20
u21:
	goto	l11
u20:
	goto	l13
	
l12:
	line	8
	
l13:
	return
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_Wait
	__end_of_Wait:
	signat	_Wait,88
	GLOBAL	__activetblptr
__activetblptr	EQU	0
	psect	intsave_regs,class=BIGRAM,space=1
psect	text2,class=CODE,space=0,reloc=2
global __ptext2
__ptext2:
	PSECT	rparam,class=COMRAM,space=1
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end

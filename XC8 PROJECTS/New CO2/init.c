#include <xc.h>


void init_system(void)
{
	//Initialize IO Pins
	

	//OSC Initialization	
	// SCS FOSC; IRCF 16MHz_HFINTOSC; IDLEN disabled; 
    OSCCON = 0x70;
    // PRISD enabled; SOSCGO disabled; MFIOSEL disabled; 
    OSCCON2 = 0x04;
    // INTSRC disabled; PLLEN disabled; TUN 0; 
    OSCTUNE = 0x40;

	//Port A Connected to Data lines of second seven seg DISPSET.
	//All port lines are output.
	//RA0 : a, RA1:b, RA2 :c, RA3 : d, RA4: e, RA5:f, RA6:g, RA7:dp
	LATA = 0x00;
    TRISA = 0x00;
	ANSELA = 0x00;
	
	//Port B Connected to Data lines of first seven seg DISPSET.
	//All port lines are output. All port lines are digital
	//RB0 : a, RB1:b, RB2 :c, RB3 : d, RB4: e, RB5:f, RB6:g, RB7:dp
	LATB = 0x00;
	TRISB = 0x00;
	ANSELB = 0x00;
   
	//RE0 Connected to EXaust Valve
	//RE1 Connected to Control Valve
	//RE2 Connected to AIR Valve
	//RE3 Not used, MCLR
	//E port has only four bits.
	//All port lines are output. All port lines are digital
	LATE = 0x00;
	TRISE = 0x00;
	ANSELE = 0x00;
	
	//PORT C
	//RC0 Digital, Output, connected to Heater switch (thro. SCR firing). 
	//RC1 Digital, Output, connected to Buzzer
	//RC2 DIgital Input, Connected to Gas Level Indicator.
	//RC3 AN15, Analog Input, from pressure sensor.
	//RC4 Digital Input, Common  of six switches
	//RC5 Analog Input, Not Connected ??
	//RC6 Digital Output, TX. For future expansion. Unused.
	//RC7 Digital Inout, RX. For future expansion.
	LATC = 0x00;
	TRISC = 0xBC;		//0b1011 1100
	ANSELC = 0x28;		//0b0010 1000
   
   
	//PORT D
	//RD0, AN20, Analog Inout from temperature sensor
	//RD1, Digital Input, IR (Infrared connected). For future expansion
	//RD2, Digital Input 'Pressure Down' key (Key8)
	//RD3, Digital Input 'Pressure Up' key (key7)
	//RD4, Analog Input, Unused
	//RD5, RD6, RD 7 : AE,BE,CE of both SN54ALS138
	LATD = 0x00;   
	TRISD = 0x1F;		//0b0001 1111
    ANSELD = 0x11;		//0b0001 0001   

    WPUB = 0x00;
    INTCON2bits.nRBPU = 1;

	//Clear global Interrupt-On-Change flag
    INTCONbits.RBIF = 0;
	
	
	/*&
	//ADC channel Initialization    
    ADCON1 = 0x08;		// TRIGSEL CCP5; NVCFG VSS; PVCFG FVRbuf2;    
    ADCON2 = 0x36;		// ADFM left; ACQT 16; ADCS FOSC/64; 
    ADRESL = 0x00;
    ADRESH = 0x00;
    ADCON0 = 0x01;		// GO_nDONE stop; ADON enabled; CHS AN0; 
	*/
	
	//ADC Initialization    
    ADCON0 = 0x00; 	// GO_nDONE stop; ADON disabled; CHS AN0;
    ADCON1 = 0x00; 	// Special trigger from CC5 (Needs to be checked), Positive reference VDD, negative reference VSS; 
    ADCON2 = 0x87; 	// Conversion clock : FRC, zero aquisition time, right justified
    ADRESL = 0x00;
    ADRESH = 0x00;
	
	//Initialize Timer0 for 5Msec interrupt
	T0CON = 0x90;
	TMR0H = 0x63;
	TMR0L = 0xC0;
	INTCON2bits.TMR0IP = 1;
	INTCONbits.TMR0IE = 1;
	
	INTCONbits.GIE = 1;             //SD: Enable Global Interrupt  
	INTCONbits.PEIE = 1;            //SD: Enable Peripheral Interrupts  

	
}
/*------------------------------------------------------------------------------------*/
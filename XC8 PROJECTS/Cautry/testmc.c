#include<xc.h>
void main()
	{
		OSCCON = 0x02; //Internal oscillator at 31kHZ
      OSCTUNE = 0x20;   //Clock derived from LFINTOSC at minimum frquency
      SWDTEN = 0x00; //Disable Watchdog
      RCON = 0x00;
      ADCON1 = 0x06; //ALL DIGITAL
		TRISA = 0x00;
		TRISB = 0x00;
		TRISC = 0x00;
		TRISD = 0x00;
		TRISE = 0x00;
		
		PORTA = 0x00;
		PORTB = 0x00;
		PORTC = 0x00;
		PORTD = 0x00;
		PORTE = 0x00;
		
		#asm
		   sleep
		#endasm
		while(1);
			{
   			
			}
	}

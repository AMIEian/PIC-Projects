#include <xc.h>
void main()
	{
		TRISB = 0x00;
		PORTB = 0x00;
		eeprom_write(0x01,0);
		char data;
		data = eeprom_read(0x01);
		if(data == 0)
			PORTB = 0xFF;
		while(1);
	}
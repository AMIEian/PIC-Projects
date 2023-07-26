#include <xc.h>
#include "i2c.h"

#pragma config OSC=HS, OSCS=OFF, PWRT=OFF, BOR=OFF, WDT=OFF, LVP=OFF

unsigned char arraywr[] = {1,2,3,4,5,6,7,8,9};
unsigned char arrayrd[20];

void main(void)
	{
		OpenI2C(MASTER, SLEW_ON);// Initialize I2C module
		SSPADD = 9; //400kHz Baud clock(9) @16MHz
		//100kHz Baud clock(39) @16MHz
		while(1)
			{
				EEByteWrite(0xA0, 0x30, 0xA5);
				EEAckPolling(0xA0);
				EECurrentAddRead(0xA0);
				EEPageWrite(0xA0, 0x70, arraywr);
				EEAckPolling(0xA0);
				EESequentialRead(0xA0, 0x70, arrayrd, 20);
				EERandomRead(0xA0,0x30);
			}
	}
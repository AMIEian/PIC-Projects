// RA1 = Open
// RA2 = Close
// RA3 = Stop
// RC0 = Open Switch
// RC1 = Close Switch
// RC2 = Sensor
// RC4 = Forward Relay
// RC5 = Reverse Relay
// RB1 = Forward LED
// RB2 = Reverse LED
// RB7 = Over Current
// RB6 = Over Current LED
// Forward Relay opens the door
// Reverse Relay close the door

#include <xc.h>

#define Open RA1
#define Close RA2
#define Stop RA3
#define Open_Switch RC0
#define Close_Switch RC1
#define Sensor RC2
#define Open_Relay RC3
#define Close_Relay RC4
#define Open_LED RB1
#define Close_LED RB2
#define On 1
#define Off 0
#define Over_Current RB7
#define Over_Current_LED RB6

//These are all possible conditions of door
typedef enum States
		   {
			 Opened,
			 Closed,
			 Opening,
			 Closing,
			 Stoped
		   }State;

State door_State = Closed;	//This will keep trck of current position of door.

void main(void)
	{
		ADCON1 = 0x06;  //ALL DIGITAL
		TRISA = 0xFF;	//ALL INPUTS
		TRISB = 0x81;	//Pin 0 and Pin 7 is input & all others are output
		TRISC = 0x07;	//Pin 0,1,2 are inputs & 3 - 4 - 5 are outputs 0000 0111
		
		int seconds;
		int Over_Current_Timer = 0;
		char Auto_Close = 0;

		Open_Relay = Off;
		Open_LED = Off;
		Close_Relay = Off;
		Close_LED = Off;

		//5 TIMES PORTB BLINKING
      	PORTB = 0xFE;
      	_delay(1000000);  //1SEC DELAY
      	PORTB = 0x00;
      	_delay(1000000);  //1SEC DELAY
      	PORTB = 0xFE;
      	_delay(1000000);  //1SEC DELAY
      	PORTB = 0x00;
      	_delay(1000000);  //1SEC DELAY
      	PORTB = 0xFE;
      	_delay(1000000);  //1SEC DELAY
      	PORTB = 0x00;
      	_delay(1000000);  //1SEC DELAY
      	PORTB = 0xFE;
      	_delay(1000000);  //1SEC DELAY
      	PORTB = 0x00;
      	_delay(1000000);  //1SEC DELAY
      	PORTB = 0xFE;
      	_delay(1000000);  //1SEC DELAY
      	PORTB = 0x00;
      	_delay(1000000);  //1SEC DELAY

		OPTION_REG = 0xC0;	// Set the Interrupt on falling edge
      INTCON = 0x90;	// Enable GIE, INTE

		//When power is on get the position of door with help of dead end switches
		//If both switches are off then door is in between. Open it by default.
		if(Close_Switch == On)
			{
				door_State = Closed;
			}
		if(Open_Switch == On)
			{
				door_State = Opened;
			}
		if(Open_Switch == Off && Close_Switch == Off)
			{
				door_State = Opening;
			}
		while(1)
			{
				if(door_State == Opening)
					{
						//Turn on door opening relay
						Open_Relay = On;
						Open_LED = On;
						Over_Current_Timer = 0;
						while(Open_Switch == Off && door_State == Opening && Over_Current_Timer < 3000)
							{
								//Remain here untill door is fully opened
								//Check overcurrent
								if(Over_Current == On)
									{
										_delay(1000);  //1 MILISEC DELAY
										Over_Current_Timer = Over_Current_Timer + 1;
									}
								else
									{
										Over_Current_Timer = 0;
									}
							}
						Open_Relay = Off;
						Open_LED = Off;
						//Now it's out of loop. Check the cause of loop termination
						if(Open_Switch == On)
							{
								//Door is opened now
								door_State = Opened;
							}
						if(Over_Current_Timer >= 3000)
							{
								//Over Current taken by motor
								INTCON = 0x00;	//Disable interrupt to avoid any inputs
								while(1)
									{
										//Remain here till power is on
										Over_Current_LED = On;
										_delay(1000000);	//DELAY OF 1 SEC
										Over_Current_LED = Off;
										_delay(1000000);	//DELAY OF 1 SEC
									}
							}
					}
				if(door_State == Closing)
					{
						//Turn On door closing relay
						Close_Relay = On;
						Close_LED = On;
						Over_Current_Timer = 0;
						while((Close_Switch == Off && Sensor == Off) && (door_State == Closing && Over_Current_Timer < 3000))
							{
								//Remain here untill door is fully closed or obstacle occured
								//Check overcurrent
								if(Over_Current == On)
									{
										_delay(1000);  //1 MILISEC DELAY
										Over_Current_Timer = Over_Current_Timer + 1;
									}
								else
									{
										Over_Current_Timer = 0;
									}
							}
						Close_Relay = Off;
						Close_LED = Off;
						//Now it's out of loop. Check the cause of loop termination
						if(Sensor == On)
							{
								//Obstacle occured. Open the door
								_delay(3000000);  //3 SEC DELAY
								door_State = Opening;
							}
						if(Close_Switch == On)
							{
								//This means door is fully closed
								door_State = Closed;
							}
						if(Over_Current_Timer >= 3000)
							{
								//Over Current taken by motor
								INTCON = 0x00;	//Disable interrupt to avoid any inputs
								Over_Current_LED = On;
								while(1)
									{
										//Remain here till power is on
										Over_Current_LED = On;
										_delay(1000000);	//DELAY OF 1 SEC
										Over_Current_LED = Off;
										_delay(1000000);	//DELAY OF 1 SEC
									}
							}
					}
				if(door_State == Opened && Auto_Close == 1)
					{
						//Door is opened. Start 30 Sec timer
						seconds = 0;
						while(door_State == Opened && seconds < 30)
							{
								_delay(1000000);	//DELAY OF 1 SEC
								seconds++;
							}
						//Check whether loop is terminated due to complition of 30 seconds
						if(seconds >= 30)
							{
								//30 seconds complete. Start clossing the door
								door_State = Closing;
							}
					}
			}
	}
// Interrupt
void interrupt Tx_Received(void)
   {
      	if(Open == Off && Close == On && Stop == Off && door_State != Opening)
			{
				door_State = Closing;
				//_delay(500000);  //500 MILISEC DELAY
				INTCON = 0x90;	// Enable GIE, INTE
				return;
			}
		if(Open == On && Close == Off && Stop == Off && door_State != Closing)
			{
				door_State = Opening;
				//_delay(500000);  //500 MILISEC DELAY
				INTCON = 0x90;	// Enable GIE, INTE
				return;
			}
		if(Open == Off && Close == Off && Stop == On)
			{
				door_State = Stoped;
				//_delay(500000);  //500 MILISEC DELAY
				INTCON = 0x90;	// Enable GIE, INTE
				return;
			}
   }
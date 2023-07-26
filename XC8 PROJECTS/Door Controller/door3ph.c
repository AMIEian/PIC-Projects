// Forward Relay opens the door
// Reverse Relay close the door

#include <xc.h>
#include <math.h>

#define _XTAL_FREQ 4000000

#define Open RA1
#define Close RA2
#define Stop RA3
#define Analog_In RA0

#define Open_LED RB1
#define Close_LED RB2
#define Open_Relay RB3
#define Close_Relay RB4
#define Phase_1 RB5
#define Phase_2 RB6
#define Phase_3 RB7

#define Open_Switch RC0
#define Close_Switch RC1
#define Sensor RC2
#define LED RC4
#define Over_Current RC5
#define Over_Current_LED RC6

#define On 1
#define Off 0

char phase_check();
void over_current_config();
char check_over_current();
unsigned int ReadADC();
      
float normal_current = 0;
//These are all possible conditions of door
typedef enum States
		   {
			 Opened,
			 Closed,
			 Opening,
			 Closing,
			 Stoped
		   }State;

State door_State = Stoped;	//This will keep trck of current position of door.

void main(void)
	{
		ADCON0 = 0x80; //Analog frequency Fosc/32, RA0 as analog input channel, Analog module off
		ADCON1 = 0x8E;  //RA0 Analog input all other as digital inputs. Analog result right justified.
		
		TRISA = 0xFF;	//ALL INPUTS
		TRISB = 0xE1;	//Pin 0 and Pin 7 is input & all others are output
		TRISC = 0x2F;	//Pin 0,1,2 are inputs & 3 - 4 - 5 are outputs 1110 0111
		
		int seconds;
		int Over_Current_Timer = 0;
		char Auto_Close = 1;
      char count = 0;
      unsigned char integer = 0, fraction = 0;
		Open_Relay = Off;
		Open_LED = Off;
		Close_Relay = Off;
		Close_LED = Off;
		Over_Current_LED = Off;

		for(count = 0; count < 5; count++)
		   {
   		   LED = On;
   		   _delay(1000000);
   		   LED = Off;
   		   _delay(1000000);
   		}   
		
		//When power is on get the position of door with help of dead end switches
		//If both switches are off then door is in between. Open it by default.
		if(Close_Switch == On)
			{
				door_State = Closed;
				if(Over_Current == On)
				   over_current_config();
			}
		if(Open_Switch == On)
			{
				door_State = Opened;
			}
		if(Open_Switch == Off && Close_Switch == Off)
			{
				door_State = Stoped;
			}
		
		//Get normal current reading from eeprom
		integer = eeprom_read(0x00);
		_delay(50);
		fraction = eeprom_read(0x01);
		_delay(50);
		normal_current = integer + (fraction * 0.01);
		
	   OPTION_REG = 0xC0;	// Set the Interrupt on falling edge
      INTCON = 0x90;	// Enable GIE, INTE

		while(1)
			{
				if(door_State == Opening)
					{
						//Turn on door opening relay
						Open_Relay = Off;
						_delay(1000000);
						Close_Relay = On;
						_delay(1000000);
						Open_LED = On;
						Over_Current_Timer = 0;
						while(Open_Switch == Off && door_State == Opening && Over_Current_Timer < 3000 && phase_check() == On)
							{
								//Remain here untill door is fully opened
								//Check overcurrent
								if(check_over_current() == On)
									{
										_delay(1000);  //1 MILISEC DELAY
										Over_Current_Timer = Over_Current_Timer + 1;
									}
								else
									{
										Over_Current_Timer = 0;
									}
							}
					   //	Open_Relay = Off;
						Close_Relay = Off;
						_delay(1000000);
						Open_Relay = Off;
						_delay(1000000);
						Open_LED = Off;
					
						//Now it's out of loop. Check the cause of loop termination
						if(phase_check() == Off)
							door_State  = Stoped;
							
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
					   //	Close_Relay = On
						Open_Relay = On;
						_delay(1000000);
						Close_Relay = On;
						_delay(1000000);
						Close_LED = On;
						Over_Current_Timer = 0;
						while((Close_Switch == Off && Sensor == Off) && (door_State == Closing && Over_Current_Timer < 3000) && phase_check() == On)
							{
								//Remain here untill door is fully closed or obstacle occured
								//Check overcurrent
								if(check_over_current() == On)
									{
										_delay(1000);  //1 MILISEC DELAY
										Over_Current_Timer = Over_Current_Timer + 1;
									}
								else
									{
										Over_Current_Timer = 0;
									}
							}
							
					   //	Close_Relay = Off;
						Close_Relay = Off;
						_delay(2000000);
						Open_Relay = Off;
						_delay(1000000);
						Close_LED = Off;
						
						//Now it's out of loop. Check the cause of loop termination
							if(phase_check() == Off)
							door_State  = Stoped;
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
      if(Open == Off && Close == On && Stop == Off && door_State != Opening && Close_Switch == Off)
			{
				door_State = Closing;
				//_delay(500000);  //500 MILISEC DELAY
				INTCON = 0x90;	// Enable GIE, INTE
				return;
			}
		if(Open == On && Close == Off && Stop == Off && door_State != Closing && Open_Switch == Off)
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
   
char phase_check()
   {
      if(Phase_1 == On && Phase_2 == On && Phase_3 == On)
         return On;
      else
         return Off;
   }   
   
void over_current_config()
   {
      float over_current_reading = 0;
      float avg_reading = 0;
      unsigned int sum = 0;
      unsigned int res = 0;
      unsigned char readings = 0;
      unsigned char decimals, points;
      double integral;
      double fractional;
      
      //Turn on motor and get analog readings
      //Turn on door opening relay
		Open_Relay = Off;
		_delay(1000000);
		Close_Relay = On;
		_delay(1000000);
		Open_LED = On;
		sum = 0;
		readings = 0;
		//Get the readings until door is opening. Reading frequency is 4 readings per sec.
		while(Open_Switch == Off)
			{
   			readings++;
   			res = 0;
   			res = ReadADC();
   			sum = sum + res;
   			_delay(250000);   //Take the next reading after 250 ms
			}
		//Door is opened. Turn off motor.
		Close_Relay = Off;
		_delay(1000000);
		Open_Relay = Off;
		_delay(1000000);
		Open_LED = Off;
		
		//Calculate average to get motors normal reading
		avg_reading = sum/readings;
		//Over current reading should be 30% more than this value
		over_current_reading = avg_reading + (avg_reading*0.3);
		
		//Get decimal and points values from float
		fractional = modf(over_current_reading, &integral);
      fractional = fractional * 100;
      decimals = integral;
      points = fractional;
      
      //Store decimal and points in EEPROM
      eeprom_write(0x00,decimals);
      _delay(50);
      eeprom_write(0x01,points);
      _delay(50);
      
      //Configuration is completed. Close the door and resume normal operations
      //Turn On door closing relay
		Open_Relay = On;
		_delay(1000000);
		Close_Relay = On;
		_delay(1000000);
		Close_LED = On;
		while(Close_Switch == Off)
			{
				//Remain here untill door is fully closed
			}
		//Door is closed. Turn off motor.					
		Close_Relay = Off;
		_delay(2000000);
		Open_Relay = Off;
		_delay(1000000);
		Close_LED = Off;
		return;
   }   
   
char check_over_current()
   {
      float avg_reading = 0;
      unsigned int sum = 0;
      unsigned int res = 0;
      unsigned char readings = 0;
      
      sum = 0;
      readings = 0;
      avg_reading = 0;
      for(readings = 0; readings < 16; readings++)
         {
   			res = 0;
   			res = ReadADC();
   			sum = sum + res;
         } 
      avg_reading = sum/16;
      if(avg_reading > normal_current) 
         return On;
      else
         return Off; 
   }   
   
unsigned int ReadADC()
   {
      unsigned int result = 0;
      //Turn on ADC module
      ADON=1;
      //Wait for aquisition
      __delay_us(100);
      //Start Conversion
      GO=1;
      while(GO)
         {
            //Wait for the conversion to complete
         }   
      result = ((ADRESH<<8)|ADRESL);
      ADCON0bits.ADON=0; ////Turn off ADC module
      return result;
   }
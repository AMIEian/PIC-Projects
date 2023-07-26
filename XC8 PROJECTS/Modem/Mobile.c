#include <xc.h>
#include <stdint.h>
#include <string.h>
#include "sim300.h"

#define Modem RB7
#define LED RC5
#define Start RC3
#define Stop RC4
#define On 1
#define Off 0
#define Water_Sen RA5
#define Phase_1 RC0
#define Phase_2 RC1
#define Phase_3 RC2

//Define functions
int8_t SIM300WaitForValidCall();
void start();
void stop();
char phase_check();

unsigned char CALL_FLAG = 0;

char MOTOR_FLAG = 0, LP_FLAG = 0;

unsigned char WRONG_NUMBER = 0, RING_COUNT = 0, REQUIRED_RING_COUNT = 2, RING_TIMER = 0;
unsigned char phone_number[20] = "ATD";

void main(void)
	{
		TRISA = 0xFE;			//Pin 1, 2, 3, 4 & 5 are inputs 0 output
      TRISB = 0x00;			//Pin 0 is input & all others are output
      TRISC = 0xC7;			//Pin 0,1,2 are inputs & 3 - 4 - 5 are outputs 1000 0111
      ADCON1 = 0x06;			// All Digital
      
      char count = 0, timer = 0;
		Start = Off;
		Stop = Off;
		LED = Off;
		
		//LED Blinking to check the crystal
		for(count = 0; count <= 10; count++)
			{
				Modem = On;
				_delay(1000000);  //1SEC DELAY
				Modem = Off;
				_delay(1000000);  //1SEC DELAY
			}
			
		//Read Motor Flag
		MOTOR_FLAG = (char)eeprom_read(0x01);
		if(MOTOR_FLAG != 0 && MOTOR_FLAG != 1)
			MOTOR_FLAG = 0;	//Default
			
		if(MOTOR_FLAG == 1)
			REQUIRED_RING_COUNT = 3;
		else
			REQUIRED_RING_COUNT = 2;
			
		int8_t r= SIM300Init();
		_delay(1000000);  //1 SEC DELAY
		
		if(r == SIM300_OK)
			{
				//Enable	CLIP
				SIM300Cmd("AT+CLIP=1");
				_delay(1000000);  //1 SEC DELAY
				//Clear Buffer
				USARTFlushBuffer();
				//LED On
				Modem = On;
				_delay(1000000);  //1SEC DELAY
			}
		else
			{
				//Keep LED blinking
				while(1)
					{
						Modem = On;
						_delay(100000);  //100 Mili SEC DELAY
						Modem = Off;
						_delay(100000);  //100 Mili SEC DELAY
					}
			}
		
		//Modem is initialised here
			
		while(1)
			{
				//Remain here untill no incoming call
				while(SIM300WaitForValidCall() != SIM300_OK)
					{
						//Do All motor related functions
						if(MOTOR_FLAG == 1)
							{
								if((timer % 15) == 0)
									{		
										if(phase_check() == 1)
											{
												if(LP_FLAG == 0)
													{
														start();
														LP_FLAG = 1;
													}
											}
										else
											{
												if(LP_FLAG == 1)
													{
														stop();
														LP_FLAG = 0;
													}
											}
									}		
									
								if(timer == 60)
									{
										if(Water_Sen == Off)
											{
												stop();
												LP_FLAG = 0;
												MOTOR_FLAG = 0;
												timer = 0;
											}
									}
							}									
							
						if(RING_COUNT != 0)
							{
								if(RING_TIMER > 6)
									{
										RING_COUNT = 0;
										RING_TIMER = 0;
									}	
								else
									{
										RING_TIMER++;
									}	
							}		
						
						if(WRONG_NUMBER == 1)
							{
								//Send Command to Cut the call
								_delay(1000000);  //1SEC DELAY
								SIM300Cmd("ATH");
								_delay(1000000);  //1SEC DELAY
								WRONG_NUMBER = 0;
							}
							
						timer++;
					}
				//LED = On;
				//If code match check motors current state
            if ( MOTOR_FLAG == 0 )
            	{
               	//Motor is off check phase & levels
                  if ( phase_check() == 1 )
                  	{
                     	// If Phase & level is OK then set it's flag & start the motor
                        LP_FLAG = 1;
                        start();
                        MOTOR_FLAG = 1;	//Set motor flag
                        REQUIRED_RING_COUNT = 3;
                                    
                        //Cut the phone
                        SIM300Cmd("ATH");
								_delay(1000000);  //1SEC DELAY
								unsigned char ten_seconds  = 0;
                        while(phase_check() == 1 && ten_seconds < 5)
                        	{
	                          	_delay(10000000);  //10 SEC DELAY
	                          	ten_seconds++;
	                        }
	                     if(ten_seconds >= 5 && Water_Sen == On)
	                        {
		                     	//Call back
		                        SIM300Cmd(phone_number);
		                        _delay(30000000);  //30 SEC DELAY
		                        SIM300Cmd("ATH");
										_delay(1000000);  //1SEC DELAY
										
										eeprom_write(0x01,1);
									}
								else
									{
										stop();
										MOTOR_FLAG = 0;
										LP_FLAG = 0;
									}	
                   	}
                     //If Phase or level is not OK
                  else
                     {
                       	//Wait 25 seconds to cut the phone 
                        _delay(25000000);  //25 SEC DELAY    
                        //Cut the phone
                        SIM300Cmd("ATH");
								_delay(1000000);  //1SEC DELAY
                    	}
                  continue;
    				}
    			
            //If motor is running ie. motor flag is 1 then stop it
            if( MOTOR_FLAG == 1 )
            	{
	            	stop();	//Stop the motor
                  MOTOR_FLAG = 0;	//Reset motor flag
                  LP_FLAG = 0;	//Reset lp_flag for next interrupt
                  REQUIRED_RING_COUNT = 2;
                  		
                  //Cut the phone
                  SIM300Cmd("ATH");
						_delay(1000000);  //1SEC DELAY
                               
                  //Wait 15 seconds to call back
                  _delay(15000000);
                        
                  //Call back
		            SIM300Cmd(phone_number);
		            _delay(30000000);  //30 SEC DELAY
		            SIM300Cmd("ATH");
						_delay(1000000);  //1SEC DELAY 
						
						eeprom_write(0x01,0); 	
						continue;
           		}
			}
	}
int8_t SIM300WaitForValidCall()
	{
		//Clear buffer for next ring
		//USARTFlushBuffer();
		//Wait for a unsolicited response for 1s
		uint8_t len=SIM300RingResponse(1000);
		if(len==0)
			return SIM300_TIMEOUT;
			
		sim300_buffer[len-1]='\0';
		
		//Check if the response is RING (Incoming call indicator)
		if(strnicmp(sim300_buffer+10,"+CLIP:",6)==0)
			{
				//Start = On;
				//Serch for X for number validity
				if(strrichr(sim300_buffer,'X') != NULL)
					{
						if(RING_COUNT == REQUIRED_RING_COUNT)
							{
								//Extract phone number
								char *start;
								start = strichr(sim300_buffer+10,'"');
								start++;
								char i = 3;
								while(*start != '"')
									{
										phone_number[i] = *start;
										start++;
										i++;
									}
								phone_number[i] = ';';
								i++;
								phone_number[i] = '\0';
								RING_COUNT = 0;
								RING_TIMER = 0;
								//Clear buffer for next ring
								USARTFlushBuffer();
								return SIM300_OK;
							}
						else
							{
								RING_COUNT++;
								RING_TIMER = 0;
								//Clear buffer for next ring
								USARTFlushBuffer();
								return SIM300_FAIL;
							}		
					}	
				else
					{
						WRONG_NUMBER = 1;
						//Clear buffer for next ring
						USARTFlushBuffer();
						return SIM300_FAIL;
					}
			}
		//RING FAILED 	
		else
			{
				//Clear buffer for next ring
				USARTFlushBuffer();
				return SIM300_FAIL;
			}		
	}
	
// It Starts the motor
void start()
   {
       // PORTC 3 = START
       Start = On;
       _delay(5000000);  //5 SEC DELAY
       Start = Off;
       LED = On;	//Glow On Off lamp
       _delay(1000000);  //1SEC DELAY
       return;
   }

// It Stops the motor
void stop()
   {
      // PORTC 4 = STOP
      Stop = On;
      _delay(6000000);  //5 SEC DELAY
      Stop = Off;
      LED = Off;	//Off the on off lamp
      _delay(1000000);  //1SEC DELAY
      return;
   }
   
//This checks the phases & return 1 if all phases are OK else return 0
char phase_check()
   {
      // PORTC 0, 1, 2 = PHASE
      if( Phase_1 == On && Phase_2 == On && Phase_3 == On )
         {
            //All phases are Ok
            return 1;
         }
      else
         {
            //One of the 3 or all the phases are off
            return 0;
         }
   }									
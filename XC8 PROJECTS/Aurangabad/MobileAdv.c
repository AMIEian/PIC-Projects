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
#define Dry_Run RB0
#define Phase_1 RC0
#define Phase_2 RC1
#define Phase_3 RC2

//Define functions
int8_t SIM300WaitForValidCall();
void SMSCommunication();
void start();
void stop();
char phase_check();

char MOTOR_FLAG = 0, LP_FLAG = 0;

unsigned char WRONG_NUMBER = 0, RING_COUNT = 0, REQUIRED_RING_COUNT = 3, Timer = 0;
char count = 0, Dry_Run_Timer = 0;
unsigned char phone_number[40] = "ATD";

void main(void)
	{
		TRISA = 0xFE;			//Pin 1, 2, 3, 4 & 5 are inputs 0 output
      TRISB = 0x01;			//Pin 6 is input & all others are output
      TRISC = 0xC7;			//Pin 0,1,2 are inputs & 3 - 4 - 5 are outputs 1000 0111
      ADCON1 = 0x06;			// All Digital
      
		Start = Off;
		Stop = Off;
		LED = Off;
		
		uint8_t ref,result;
		
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
			REQUIRED_RING_COUNT = 1;
		else
			REQUIRED_RING_COUNT = 3;
			
		int8_t r= SIM300Init();
		_delay(1000000);  //1 SEC DELAY
		
		if(r == SIM300_OK)
			{
				//Enable	CLIP
				SIM300Cmd("AT+CLIP=1");
				_delay(1000000);  //1 SEC DELAY
				//Enable Text Messages
				SIM300Cmd("AT+CMGF=1");
				_delay(1000000);  //1 SEC DELAY
				//Delete 1st Message 
				SIM300Cmd("AT+CMGD=1");
				_delay(1000000);  //1 SEC DELAY
				//Clear Buffer
				USARTFlushBuffer();
				//Single LED blink
				Modem = On;
				_delay(1000000);  //1SEC DELAY
				//Modem = Off;
				//_delay(500000);  // 1/2 SEC DELAY
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
								
								//Check Dry Run
								if(Dry_Run == Off)
								   {
   								   Dry_Run_Timer++;
   								   if(Dry_Run_Timer > 6)
   								      {
      								      //Dry Run is on for 2 minutes. Off the motor
      								      stop();
										      LP_FLAG = 0;
										      MOTOR_FLAG = 0;
										      REQUIRED_RING_COUNT = 3;
										      eeprom_write(0x01,0); 
										   }
								   }
								else
								   {
   								   Dry_Run_Timer = 0;
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
							
						//Check SMS
						SMSCommunication();
					   
					   if(RING_COUNT != 0)
							{
								if(Timer > 2)
									{
										RING_COUNT = 0;
										Timer = 0;
									}	
								else
									{
										Timer++;
									}	
							}
						   
						   if(RING_COUNT == 0)
						      {
						         //Check Modem
						         r= SIM300Init();
		                     _delay(250000);  //250 M.SEC DELAY                   
		
		                     if(r != SIM300_OK)
			                     {
				                     //Remain here until modem responds. Keep LED blinking
				                     while(r != SIM300_OK)
					                     {
						                     Modem = On;
						                     _delay(100000);  //100 Mili SEC DELAY
						                     Modem = Off;
						                     //Check Modem
						                     r= SIM300Init();
		                                 _delay(250000);  //250 M.SEC DELAY
		                                 USARTFlushBuffer();
					                     }
					                  Modem = On;   
			                     }
			                  USARTFlushBuffer();
			               }            
					}
				
				//If code match check motors current state
            if ( MOTOR_FLAG == 0 )
            	{
               	//Motor is off check phase & levels
                  if ( phase_check() == 1 )
                  	{
                     	_delay(5000000);  //5SEC DELAY for 3 rings
                                    
                        //Cut the phone
                        SIM300Cmd("ATH");
								_delay(1000000);  //1SEC DELAY
								
								// If Phase & level is OK then set it's flag & start the motor
                        LP_FLAG = 1;
                        start();
                        MOTOR_FLAG = 1;	//Set motor flag
                        REQUIRED_RING_COUNT = 1;
                        Dry_Run_Timer = 0;
								
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
										
										//Save phone number in eeprom
										char i = 3;
										while(phone_number[i] != ';')
											{
												eeprom_write(i,phone_number[i]);
												i++;
											}	
										eeprom_write(i,';');
										
										//Send SMS to owner
										//uint8_t ref,result;
										result=SIM300SendMsg("9403585436","MOTOR IS STARTED ...!",&ref);	//Change phone number to some valid value!
										_delay(5000000);  //5SEC DELAY
										result=SIM300SendMsg("9819895913","MOTOR IS STARTED ...!",&ref);	//Change phone number to some valid value!
										_delay(5000000);  //5SEC DELAY
										//result=SIM300SendMsg("9819895913","MOTOR IS STARTED ...!",&ref);	//Change phone number to some valid value!
										//_delay(5000000);  //5SEC DELAY
									}
								else
									{
										stop();
										uint8_t i = 3;
										while(phone_number[i] != ';')
											{
												MSG_number[i-3] = phone_number[i];
												i++;
											}
										MSG_number[i-3] = '\0';
										//uint8_t ref,result;
										result=SIM300SendMsg(MSG_number,"STARTER PROBLEM...!",&ref);	//Change phone number to some valid value!
										_delay(1000000);  //1SEC DELAY
										MOTOR_FLAG = 0;
										LP_FLAG = 0;
									}	
                   	}
                     //If Phase or level is not OK
                  else
                     {
                       	//Wait 35 seconds to cut the phone 
                        _delay(35000000);  //35 SEC DELAY    
                        //Cut the phone
                        SIM300Cmd("ATH");
								_delay(1000000);  //1SEC DELAY
                    	}
                  continue;
    				}
    			
            //If motor is running ie. motor flag is 1 then stop it
            if( MOTOR_FLAG == 1 )
            	{
	            	_delay(6000000);  //6 SEC DELAY for 7 rings
                  		
                  //Cut the phone
                  SIM300Cmd("ATH");
						_delay(1000000);  //1SEC DELAY
						
						stop();	//Stop the motor
                  MOTOR_FLAG = 0;	//Reset motor flag
                  LP_FLAG = 0;	//Reset lp_flag for next interrupt
                  REQUIRED_RING_COUNT = 3;
				      
                  //Wait 10 seconds to call back
                  _delay(10000000);
                        
                  //Call back
		            SIM300Cmd(phone_number);
		            _delay(30000000);  //30 SEC DELAY
		            SIM300Cmd("ATH");
						_delay(1000000);  //1SEC DELAY
						
						eeprom_write(0x01,0); 
						
						//Save phone number in eeprom
						char i = 3;
						while(phone_number[i] != ';')
							{
								eeprom_write(i,phone_number[i]);
								i++;
							}	
						eeprom_write(i,';');
						
						//Send SMS to owner
						//uint8_t ref,result;
						result=SIM300SendMsg("9403585436","MOTOR IS STOPPED ...!",&ref);	//Change phone number to some valid value!
						_delay(5000000);  //5SEC DELAY
						result=SIM300SendMsg("9819895913","MOTOR IS STOPPED ...!",&ref);	//Change phone number to some valid value!
						_delay(5000000);  //5SEC DELAY
						//result=SIM300SendMsg("9819895913","MOTOR IS STOPPED ...!",&ref);	//Change phone number to some valid value!
						//_delay(5000000);  //5SEC DELAY
						continue;
           		}
			}
	}
int8_t SIM300WaitForValidCall()
	{
		//Clear buffer for next ring
		//USARTFlushBuffer();
		//Wait for a unsolicited response for 1s
		uint8_t len=SIM300RingResponse(15000);
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
								Timer = 0;
								//Clear buffer for next ring
								USARTFlushBuffer();
								return SIM300_OK;
							}
						else
							{
								RING_COUNT++;
								Timer = 0;
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
				//USARTFlushBuffer();
				return SIM300_FAIL;
			}		
	}

//SMS related tasks
void SMSCommunication()
	{
		uint8_t result;
		char len, i, c;
		result = SIM300WaitForValidMsg();
		if(result == SIM300_OK)
 			{
				if(MOTOR_FLAG == 1)
					{
						if(LP_FLAG == 1)
							{
								strcpy(phone_number,"");	//Clear the string to hold new message
								strcpy(phone_number,"MOTOR ON BY: ");
								len = strlen(phone_number);
								i = 3;
								c = '+';
								while(c != ';')
									{
										c = (char)eeprom_read(i);
										phone_number[len] = c;
										i++;
										len++;
									}
								phone_number[len-1] = '\0';
								strcat(phone_number,"\nPOWER OK!");
								uint8_t ref;
								result=SIM300SendMsg(MSG_number,phone_number,&ref);	//Change phone number to some valid value!
   							_delay(1000000);  //1SEC DELAY
								strcpy(phone_number,"");	//Clear the string for ATD
								strcpy(phone_number,"ATD");	//Restore ATD command
      						return;
							}
						if(LP_FLAG == 0)
							{
								strcpy(phone_number,"");	//Clear thr string to hold message
								strcpy(phone_number,"POWER FAIL ON PHASE ");
								if(Phase_1 == Off)
									{
										len = strlen(phone_number);
										phone_number[len] = '-';
										len++;
										phone_number[len] = '1';
										len++;
										phone_number[len] = '\0';
									}
								if(Phase_2 == Off)
									{
										len = strlen(phone_number);
										phone_number[len] = '-';
										len++;
										phone_number[len] = '2';
										len++;
										phone_number[len] = '\0';
									}
								if(Phase_3 == Off)
									{
										len = strlen(phone_number);
										phone_number[len] = '-';
										len++;
										phone_number[len] = '3';
										len++;
										phone_number[len] = '\0';
									}
								uint8_t ref;
								result=SIM300SendMsg(MSG_number,phone_number,&ref);	//Change phone number to some valid value!
								_delay(1000000);  //1SEC DELAY
								strcpy(phone_number,"");	//Clear the string for ATD
								strcpy(phone_number,"ATD");	//Restore ATD command
      						return;
      					}								
					}
				if(MOTOR_FLAG == 0)
					{
						if(Dry_Run_Timer > 6)
   				      {
      						//Dry Run is on for 2 minutes. Off the motor
      						strcpy(phone_number,"");	//Clear the string to hold new message
						      strcpy(phone_number,"DRY RUN.");
							}
						else 
						   {
						      strcpy(phone_number,"");	//Clear the string to hold new message
						      strcpy(phone_number,"MOTOR OFF BY: ");
						      len = strlen(phone_number);
						      i = 3;
						      c = '+';
						      while(c != ';')
							      {
								      c = (char)eeprom_read(i);
								      phone_number[len] = c;
								      i++;
								      len++;
							      }
						      phone_number[len-1] = '\0';
						   }
						      
						if(phase_check() == 1)
							{
								strcat(phone_number,"\nPOWER OK!");
							}
						else
							{
								strcat(phone_number,"\nPOWER FAIL!");
							}
									
						uint8_t ref;
						result=SIM300SendMsg(MSG_number,phone_number,&ref);	//Change phone number to some valid value!
						_delay(1000000);  //1SEC DELAY
						strcpy(phone_number,"");	//Clear the string for ATD
						strcpy(phone_number,"ATD");	//Restore ATD command
      				return;
     				} 				
			}					
		if(result == SIM300_WRONG_KEYWORD)
			{
				uint8_t ref;
				result=SIM300SendMsg(MSG_number,"Invalid Keyword",&ref);	//Change phone number to some valid value!
				_delay(1000000);  //1SEC DELAY
      		return;
			}
		//Clear Buffer.   
	   USARTFlushBuffer();		
		return;
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
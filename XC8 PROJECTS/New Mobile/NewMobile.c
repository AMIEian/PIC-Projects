#include <xc.h>
#include <stdint.h>
#include <string.h>

#define LED RB7
#define On 1
#define Off 0
#define Water_Sen RA5
#define Phase_1 RC0
#define Phase_2 RC1
#define Phase_3 RC2
#define Start RC3
#define Stop RC4

//Function declarations
void USARTHandleRxInt();
void USARTWriteChar(char ch);
void USARTWritestring(const char *str);
void ATCommand(const char *str);
void USARTInit(uint16_t baud_rate);
void start();
void stop();
char phase_check();

//Communication Flags
unsigned char CLIP_FLAG = 0, PLUSE_FLAG = 0, NUMBER_FLAG = 0, CUT_FLAG = 0, CALL_FLAG = 0, WRONG_NUMBER = 0;

//Motor flags
unsigned char MOTOR_FLAG = 0, LP_FLAG = 0;

//Data holding buffer
char buffer[15];
unsigned char index = 0;

unsigned char RING_COUNT = 0;	//Counts number of rings before cutting call

void main(void)
	{
		TRISA = 0xFE;			//Pin 1, 2, 3, 4 & 5 are inputs 0 output
      TRISB = 0x00;			//Pin 0 is input & all others are output
      TRISC = 0x87;			//Pin 0,1,2 are inputs & 3 - 4 - 5 are outputs 1000 0111
      ADCON1 = 0x06;			// All Digital
		char count = 0;	//General loop counter
		
		//Read EEPROM
		EEADR = 0x01;	//EEPROM Adress
		EECON1bits.EEPGD = 0;	//Clear EEPGD
		EECON1bits.RD = 1;	//Start reading data
		while(EECON1bits.RD == 1)
			{
				//Remain here until data is available
			}
		MOTOR_FLAG = EEDATA;	//Get MOTOR_FLAG
		//Check MOTOR_FLAG for 1 or 0. Set it 0 for default
		if(MOTOR_FLAG != 1 || MOTOR_FLAG != 0)
			MOTOR_FLAG = 0;	//Default	
		
		//LED blinking for crystal check
		for(count = 0; count <= 10; count++)
			{
				LED = On;
				_delay(1000000);  //1SEC DELAY
				LED = Off;
				_delay(1000000);  //1SEC DELAY
			}	
			
		//Initiate USART with baud rate 9600 and interrupt	
		USARTInit(9600);
		
		di();	//Disable interrupts to skip echo
		ATCommand("AT+CLIP=1");	//Turn on +CLIP
		_delay(10000000);  //1SEC DELAY
		ei();	//Enable interrupts
		
		while(1)
			{
				//Turn on motor
				if(MOTOR_FLAG == 1)
					{
						//Check water level and phase. Disable interrupts while this checking is going on
						di();
						if( phase_check() == 1 )
            			{
               			//Check level & phase flag if it is 0 then motor was off due to Power faillure or level failure Start it again
                  		if( LP_FLAG == 0 )
                  			{
                     			start();
                        		LP_FLAG = 1;
                        		//Cut the phone if FLAG says
                        		if(CUT_FLAG == 1)
                        			{
												ATCommand("ATH");	//Cut the call
												_delay(1000000);  //1 SEC DELAY
	                        			CUT_FLAG = 0;	//Reset CUT_FLAG
	                        			count = 0;	//Initiate 1 minute counter
	                        		}	
                     		}
               		}
            		//If level or Phase is not ok then stop the motor & set it's flag to 0
            		else
               		{
               			//Level or Power is fail check that the motor was running or not if it was running stop it now
                  		if( LP_FLAG == 1 )
                  			{
                     			stop();
                        		LP_FLAG = 0;
                        		//Cut the phone if FLAG says
                        		if(CUT_FLAG == 1)
                        			{
												//Remain here for 1 Minute
												char i;
												for(i = 0; i<=59; i++)
													{
														_delay(1000000);  //1 SEC DELAY
													}	
	                        			CUT_FLAG = 0;	//Reset CUT_FLAG
	                        			CALL_FLAG = 0;	//Dont make any call
	                        			MOTOR_FLAG = 0;	//Reset MOTOR_FLAG
	                        		}
	                        	//Dont make any call if it is pending
	                        	if(CALL_FLAG == 1)
	                        		{
		                        		CALL_FLAG = 0;
		                        		MOTOR_FLAG = 0;
		                        	}	
                     		}
               		}
             		//Checking is over. Enable Interrupts only if CALL_FLAG is not set
             		if(CALL_FLAG == 0)
             			{
	             			ei();
	            		}	
            		//1 minute is complete 
            		if(count == 4)
            			{
	            			//Water is pumping
	            			if(Water_Sen == 1)
	            				{
		            				//Call the owner
		            				if(CALL_FLAG == 1)
		            					{
			            					USARTWritestring("ATD");			            					
			            					ATCommand(buffer);
			            					_delay(30000000);  //30 SEC DELAY
			            					ATCommand("ATH");	//Cut the call
												_delay(1000000);  //1 SEC DELAY
												CALL_FLAG = 0;
												
												//Write Motor Flag to EEPROM
												EEADR = 0x01;	//EEPROM Address
												EEDATA = 0x01;	//Write 1 to EEPROM as MOTOR_FLAG is 1
												EECON1bits.EEPGD = 0;	//Clear EEPGD to point data memory
												EECON1bits.WREN = 1;	//Write enable
												EECON2 = 0x55;
												EECON2 = 0xAA;
												EECON1bits.WR = 1;	//Start writing
												while(EECON1bits.WR == 1)
													{
														//Remain here until writting is going on
													}	
												EECON1bits.WREN = 0;	//Write disable
												
												ei();
											}
									}
								else
									{
										//If motor is on
										if(LP_FLAG == 1)
											{
												//Water is not pumping stop the motor
												stop();
												MOTOR_FLAG = 0;	//Reset Motor Flag
												LP_FLAG = 0;	//Reset LP_FLAG
												if(CALL_FLAG == 1)
		            							{
			            							CALL_FLAG = 0;	//Reset CALL_FLAG
			            							ei();
													}
											}				
									}
								count = 0;
							}
						else
							{
								count++;
							}
						//15 Second Delay
						char seconds = 0;
						while(seconds < 14 && MOTOR_FLAG == 1)
							{
								_delay(1000000);  //1 SEC DELAY
								seconds++;
							}
					}
				//If MOTOR_FLAG is 0 and CUT_FLAG, CALL_FLAG are set		
				if(MOTOR_FLAG == 0)
					{
						if(CUT_FLAG == 1)
							{
								//Disable interrupts
								di();
								//Stop the motor
								stop();
								LP_FLAG = 0;
								ATCommand("ATH");	//Cut the call
								_delay(1000000);  //1 SEC DELAY
	                     CUT_FLAG = 0;	//Reset CUT_FLAG
	                     //Make call
	                     USARTWritestring("ATD");
			            	ATCommand(buffer);
			            	_delay(30000000);  //30 SEC DELAY
			            	ATCommand("ATH");	//Cut the call
								_delay(1000000);  //1 SEC DELAY
								CALL_FLAG = 0;
								
								//Write Motor Flag to EEPROM
								EEADR = 0x01;	//EEPROM Address
								EEDATA = 0x00;	//Write 0 to EEPROM as MOTOR_FLAG is 0
								EECON1bits.EEPGD = 0;	//Clear EEPGD to point data memory
								EECON1bits.WREN = 1;	//Write enable
								EECON2 = 0x55;
								EECON2 = 0xAA;
								EECON1bits.WR = 1;	//Start writing
								while(EECON1bits.WR == 1)
									{
										//Remain here until writting is going on
									}
								EECON1bits.WREN = 0;	//Write disable
													
								ei();
	      				} 
	    			}
	    		//If wrong number is calling then cut the call
	    		if(WRONG_NUMBER == 1)
	    			{
		    			//Disable interrupts
						di();
						ATCommand("ATH");	//Cut the call
						_delay(1000000);  //1 SEC DELAY
	               WRONG_NUMBER = 0;	//Reset CUT_FLAG
	               ei();
	       		}    
	       	//If Owner gives a sigle ring this will handle it
	       	if(RING_COUNT != 0)
	       		{
		       		char temp = 0;
		       		temp = RING_COUNT;
		       		_delay(6000000);  //6 SEC DELAY. Wait here for 6 seconds.
		       		if(RING_COUNT == temp)	//RING_COUNT has not changed in 6 seconds
		       			RING_COUNT = 0;
			       }				
	  		}  		
	  			  			              		
	}
	
void interrupt ISR(void)
{
    if (RCIE && RCIF) {
        USARTHandleRxInt();
        return;
    }
}		

void USARTHandleRxInt()
	{
		char data = RCREG;	//Empty RCREG
		LED = 1;
		//Make +CLIP from incoming data
		if(CLIP_FLAG == 0)
			{
				//+CLIP is not yet received. Search for + first
				if(PLUSE_FLAG == 0)
					{
						if(data == '+')
							{
								PLUSE_FLAG = 1;	//Pluse is received
								buffer[index] = data;
								index++;
								Start = 1;
								return;
							}
						else
							{
								return;
							}
					}
					
				//+ is received			
				if(PLUSE_FLAG == 1)
					{
						//We have got +. Now get remaing CLIP
						if(index == 4)
							{
								//All 5 characters are received ie +CLIP
								buffer[index] = data;
								index++;
								buffer[index] = '\0';
								//Now +CLIP string is ready. Check it and set CLIP_FLAG
								if(strcmp(buffer,"+CLIP") == 0)
									{
										//+CLIP is received
										CLIP_FLAG = 1;
										Stop = 1;
										//Reset PLUSE_FLAG and index
										PLUSE_FLAG = 0;
										index = 0;
										return;
									}
								else
									{
										//+CLIP is not received. Reset PLUSE_FLAG and index
										PLUSE_FLAG = 0;
										index = 0;
										return;
									}
							}	
						else
							{
								//Collect remaing characters of CLIP
								buffer[index] = data;
								index++;
								return;
							}
					}
			}
		//We have received +CLIP. Now extract phone number	
		if(CLIP_FLAG == 1 && NUMBER_FLAG == 0)
			{
				//+CLIP is received. This means incoming call is there.
				//Now Extract calling number from incoming data
				//Every phone number starts with + or 0, so find + first
				if(PLUSE_FLAG == 0)
					{
						if(data == '+' || data == '0')
							{
								PLUSE_FLAG = 1;	//Pluse is received
								buffer[index] = data;
								index++;
								return;
							}
						else
							{
								return;
							}
					}
				if(PLUSE_FLAG == 1)
					{
						//+ is received. Now extract phone number one by one digit
						//Phone number ends with ", so stop extracting as soon as " is received
						if(data == '"')
							{
								buffer[index] = '\0';	//Terminate phone number string
								//Reset PLUSE_FLAG and index for next use to find +CLIP
								PLUSE_FLAG = 0;
								index = 0;
								//Set NUMBER_FLAG
								NUMBER_FLAG = 1;
								return;
							}	
						else
							{
								//Append the digit to phone number string
								buffer[index] = data;
								index++;
								return;
							}
					}	
			}				
									
		//+CLIP and Calling number is under our belt. Check for valid number	
		if(CLIP_FLAG == 1 && NUMBER_FLAG == 1)
			{
				//At this stage we have +CLIP as well as Phone number under our belt.
				//Our final task is to go through remaing data and search for 'A' or '0x0A'
				//If it contains 'A' then it's valid number. If it contains 0x0A then it's invalid number
				if(data == 'A')
					{
						//Valid Number
						if(MOTOR_FLAG == 0)
							{
								if(RING_COUNT < 3)
									{
										CUT_FLAG = 1;	//Cut the phone
										CALL_FLAG = 1;	//Make a call;
										MOTOR_FLAG = 1;	//Start the motor
										CLIP_FLAG = 0;	//Reset CLIP_FLAG
										NUMBER_FLAG = 0;	//Reset NUMBER_FLAG
										RING_COUNT = 0;	//Reset RING_COUNT
										return;
									}
								else
									{
										//Reset CLIP_FLAG and NUMBER_FLAG for one more ring
										CLIP_FLAG = 0;
										NUMBER_FLAG = 0;
										RING_COUNT++;
										return;
									}
							}
						//Valid Number
						if(MOTOR_FLAG == 1)
							{
								if(RING_COUNT < 6)
									{
										CUT_FLAG = 1;	//Cut the phone
										CALL_FLAG = 1;	//Make a call;
										MOTOR_FLAG = 0;	//Stop the motor
										CLIP_FLAG = 0;	//Reset CLIP_FLAG
										NUMBER_FLAG = 0;	//Reset NUMBER_FLAG
										RING_COUNT = 0;	//Reset RING_COUNT
										return;
									}
								else
									{
										//Reset CLIP_FLAG and NUMBER_FLAG for one more ring
										CLIP_FLAG = 0;
										NUMBER_FLAG = 0;
										RING_COUNT++;
										return;
									}
							}
					}
				if(data == 0x0A)
					{
						//This phone number is invalid as end of response is occured
						//Invalid number is calling. Cut the call
						WRONG_NUMBER = 1;	//Cut the phone
						CLIP_FLAG = 0;	//Reset CLIP_FLAG
						NUMBER_FLAG = 0; //Reset NUMBER_FLAG
						return;
					}	
				//Skip all other garbage data
				return;
			}
	}									
		
//This function sends a single given character on USART
void USARTWriteChar(char ch)
	{
  		while(!PIR1bits.TXIF);
  			TXREG=ch;
	}

//This function sends a given string over USART
void ATCommand(const char *str)
	{
  		while(*str!='\0')
  			{
      		USARTWriteChar(*str);
      		str++;
  			}
  		USARTWriteChar(0x0D);	//CR
	}		
			
//This function sends a given string over USART
void USARTWritestring(const char *str)
	{
  		while(*str!='\0')
  			{
      		USARTWriteChar(*str);
      		str++;
  			}
	}	
	
void USARTInit(uint16_t baud_rate)
	{   
    	//SPBRG
    	switch(baud_rate)
    		{
     			case 9600:
        			SPBRG=25;
        			break;
     			case 19200:
        			SPBRG=12;
        			break;
     			case 28800:
        			SPBRG=8;
        			break;
     			case 33600:
        			SPBRG=6;
        			break;
    		}
    	//TXSTA
    	TXSTAbits.TX9=0;  //8 bit transmission
    	TXSTAbits.TXEN=1; //Transmit enable
    	TXSTAbits.SYNC=0; //Async mode
    	TXSTAbits.BRGH=1; //High speed baud rate

    	//RCSTA
    	RCSTAbits.SPEN=1;   //Serial port enabled
    	RCSTAbits.RX9=0;    //8 bit mode
    	RCSTAbits.CREN=1;   //Enable receive
    	RCSTAbits.ADDEN=0;  //Disable address detection

    	//Receive interrupt
    	RCIE=1;
    	PEIE=1;
		
		//Enable interrupt
    	ei();
	}
	
// It Starts the motor
void start()
   {
       // PORTC 3 = START
       _delay(1000000);  //1SEC DELAY
       Start = On;
       _delay(8000000);  //8SEC DELAY
       Start = Off;
       LED = On;	//Glow On Off lamp
       return;
   }

// It Stops the motor
void stop()
   {
      // PORTC 4 = STOP
      _delay(1000000);  //1SEC DELAY
      Stop = On;
      _delay(8000000);  //8SEC DELAY
      Stop = Off;
      LED = Off;	//Off the on off lamp
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

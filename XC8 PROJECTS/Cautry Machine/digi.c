#define USE_OR_MASKS
#include <xc.h>
#include <EEP.h>
#include <p18f452.h>
#include <math.h>
#include <stdio.h>

#pragma config OSC=HS, OSCS=OFF, PWRT=OFF, BOR=OFF, WDT=OFF, LVP=OFF

void interrupt tmr_int();


volatile unsigned char count = 0, adr = 0, values[14] = {0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00};
volatile signed char hold = 0;
unsigned char RXBUF = 0,DATAI = 0,_txbuf = 0,txbuf = 0,addrh = 0,addrl = 0,step = 0,train = 0,datao = 0,rxbuf = 0,wrfl = 0,rdfl = 0,dry_fl = 0;

unsigned char hundreds = 0,cutpowerh = 0,cutpowerl = 0,coagpower = 0, i = 0,j = 0,R1 = 0x11,R2 = 0,temp = 0,cnt = 0,bipopower = 0,cutmode = 0,coagmode = 0,bipomode = 0,units = 0,tens = 0,debounce = 0,progno = 0;
unsigned int cutpower = 0,temp_a,wait = 0;

void main() 
   { 
      TRISA = 0xFF;  //ALL INPUT
      TRISE = 0x00;	//ALL OUTPUTS FOR ADDRESS SELECTION
      TRISB = 0x00;	//ALL OUTPUTS FOR DATA,
      TRISD = 0x1F;  // RD0>4 INPUT & RD5#>7 OUTPUT
      TRISC = 0xF7;  //ALL INPUTS FOR SWITCHES 1111 0111
      
	   ADCON1 = 0x07;
      RCON = 0x9F;	//DISABLE INTERRUPT PRIORITY
      INTCON = 0xA0;	//ENABLE TIMER 0 INTERRUPT
      T0CON = 0xC2;	//ENABLE TIMER0 WITH 1 : 8 PRESCALAR
      TMR0 = 0x00;   //RESET TIME
	
		
		cutmode = 0;
		coagmode = 0;
		bipomode = 0;
		values[5] = 0x20;
		values[4] = 0x10;
		values[11] = 0x20;
		values[7] = 0x20;
		
		values[8] = 0x80;
		values[3] = 0x30;
		values[2] = 0x20;
		
      //SELECT FIRST IC
      RB0 = 0;
      RB1 = 0;
      
      //TURN OF BOTH VALVES
      RB2 = 0;
   	RB3 = 0;
    	RB1 = 0;
		RC7 = 0;  // 0/P
		RD5 = 1; // CS				      
      while (1)
		{ 
			
			RB1 = 0;
			if(RA3 == 1)
				{
					dry_fl = 0;
					wait = 0;
				}
			
			//Read values from EEPROM if read flag is set
			if( rdfl == 1 )
				{
					addrh = progno * 8;
					addrl = addrh + 1;
					DATAI =	Read_b_eep(addrl);
					_delay(1000);
					cutpowerh = DATAI;
					
					addrl = addrh + 2;
					DATAI =	Read_b_eep(addrl);
					_delay(1000);
					cutpowerl = DATAI;

					addrl = addrh + 3;
					DATAI =	Read_b_eep(addrl);
					_delay(1000);
					cutmode = DATAI;

					addrl = addrh + 4;
					DATAI =	Read_b_eep(addrl);
					_delay(1000);
					coagpower = DATAI;

					addrl = addrh + 5;
					DATAI =	Read_b_eep(addrl);
					_delay(1000);
					coagmode = DATAI;

					addrl = addrh + 6;
					DATAI =	Read_b_eep(addrl);
					_delay(1000);
					bipopower = DATAI;

					addrl = addrh + 7;
					DATAI =	Read_b_eep(addrl);
					_delay(1000);
					bipomode = DATAI;
					rdfl = 0;
					
					//UPDATE MODE LEDS
					//BIPOLAR MODE
					if( bipomode == 0X03 )
						{
							bipomode = 0x00;
						}
					
					if( bipomode == 0x00 )
						{
							values[7] = 0x20;
						}
					
					if( bipomode == 0x01 )
						{
							values[7] = 0x40;
						}
					
					if( bipomode == 0x02 )
						{
							values[7] = 0x10;
						}
               
               //COAG MODE
               if( coagmode == 0x03 )
						{
							coagmode = 0x00;
						}
					
					if( coagmode == 0x00 )
						{
							values[11] = 0x20;
						}
					
					if( coagmode == 0x01 )
						{
							values[11] = 0x40;
						}
				   
				   if( coagmode ==  0x02 )
						{
							values[11] = 0x10;	
						}

					if(cutmode == 0x04)
						{ 
							cutmode = 0x00;
						}		

					//CUT MODE
					if( cutmode == 0x00 )
						{
							values[5] = 0x20;
							values[4] = 0x10;
						}
					
					if( cutmode == 0x01 )
						{
							values[5] = 0x40;
							values[4] = 0x10;
						}
							
					if( cutmode == 0x02 )
						{
							values[4] = 0x20;
							values[5] = 0x10;
						}		
						
					if( cutmode == 0x03 )
						{
							values[4] = 0x40;
							values[5] = 0x10;
						}	
					
					//UPDATE 7 SEGMENT DISPLAYS WITH VALUES
					//CUT
					cutpower = cutpowerh << 8;
					cutpower = cutpower + cutpowerl;
					hundreds = cutpower / 100;
					temp = (cutpower - ( hundreds * 100 ));
					units = temp  % 10;
					units = units << 4;
					values[8] = units;
					tens = temp / 10;
					tens = tens << 4;
					values[3] = tens;
					hundreds = hundreds << 4;
					values[2] = hundreds;
					
					//COAG		
               hundreds = coagpower / 100;
					temp = (coagpower - ( hundreds * 100 ));
					units = temp  % 10;
					units = units << 4;
					values[12] = units;
					tens = temp / 10;
					tens = tens << 4;
					values[10] = tens;
					hundreds = hundreds << 4;
					values[9] = hundreds;

					//BIPOLAR
					tens = bipopower  / 10;
					tens = tens << 4;
					values[13] = tens;
         		units =  bipopower % 10;
					units = units << 4;
					values[6] = units;
				}				
			else
				{	
					//SET DIGITAL POT. TO HIGHER VALUE
					//DIGITAL POT. CONNECTIONS -
					//CS = RD5
					//CLK = RD6
					//DATA = RD7
					temp = 0xFF;
					RD5 = 0;   //CS
					_delay(25);
			    	for( j = 0;j <= 7;j ++ )
						{
							R1 = R1 << 1;
							if(CARRY == 1)
							  	{
								   RD7 = 1;
								}
							else
								{
									RD7 = 0;
								}
							RD6 = 1;
							_delay(5);
							RD6 = 0;
							RD7 = 0;
						}
					for(i = 0;i <= 7;i ++ )
						{	
							temp = temp << 1;
							if(CARRY == 1)
								{
									RD7 = 1;
							   }
							else
								{
									RD7 = 0;
								}
							RD6 = 1;
							_delay(5);
							RD6 = 0;
							RD7 = 0;
						}		
					RD5 = 1;
					R1 = 0x11;	
				}				
		
		   //  =-------- SWITCHES -------------		
				
			if(RA1 == 0)
				{		
					RB2 = 0; //SWITCH OFF BIPOLAR. IF COAG IS ON
				}		
			if(( RA2 || RA3 )== 0)
				{
					RB3 = 0; //SWITCH OFF COAG. IF BIPOLAR OR LIGA IS ON
				}
			
			//---------------CUT OPERATION---------------//
	    	if( RA0 == 0 )  // CUT IS ON
    	     	{
					RB2 = 0; //TURN OFF BIPOLAR
					_delay(100);
					RB3 = 0; //TURN OFF COAG.
					_delay(100);																		
					
					if( RA4 == 0 )  //CHECK INACT
						{
						   //ALARM INACT
						   _delay(10000);
						}
			 		else
				   	{
						   //INACT OK. CALCULATE CUT POWER FOR PULSE GENERATION
						   temp = sqrt(cutpower);
				    	   temp = temp * 4;
							temp = ~temp;
							
							//STORE CUTPOWER IN DIGITAL POT.
					      //DIGITAL POT. CONNECTIONS -
					      //CS = RD5
					      //CLK = RD6
					      //DATA = RD7
							RD5 = 0;   //CS
							_delay(25);
			    			for( j = 0;j <= 7;j ++ )
								{
									R1 = R1 << 1;
									if(CARRY == 1)
							  	    {
								    	RD7 = 1;
								    }
							    	else
								  	{
									RD7 = 0;
								  	}
									RD6 = 1;
									_delay(5);
									RD6 = 0;
									RD7 = 0;
								}
							for(i = 0;i <= 7;i ++ )
								{	
									temp = temp << 1;
									if(CARRY == 1)
								  		{
											RD7 = 1;
							   	  		}
										else
								  		{
											RD7 = 0;
								  		}
										RD6 = 1;
										_delay(5);
										RD6 = 0;
										RD7 = 0;
								}	
							RD5 = 1;
							R1 = 0x11;
							//POWER STORED 
							
							//APPLY POWER UNTIL CUT SWITCH IS PRESSED TO PERFORM ACTUAL OPERATION!
							//GENERATE PULSES ON RB1 
							//PULSES GENERATION CODE
							while(RA0 == 0)
								{
									#asm
										movlw 0x0A
										MOVWF _train
								      loop:
											BSF PORTB,1
								      	NOP
											NOP
											NOP
											NOP
											NOP
											NOP
											NOP
											NOP
											NOP
											BCF PORTB,1
											NOP
											NOP
											NOP
								 			NOP
											NOP
											NOP
											decfsz _train,f
										      goto loop
									#endasm
								 	
								 	//CHANGE OFF TIME AS PER ACTIVE CUT MODE	
									if( cutmode == 0 )  // PURE
										{
											_delay(5);      //OFF TIME
										}
										
									if( cutmode == 1 )  // BLEND 1
										{
											_delay(40);      //OFF TIME
								      }
			   			      
			   			      if( cutmode == 2 ) //BLEND 2
										{
											_delay(60);      //OFF TIME
										}
									
									if( cutmode == 3 ) //ENDO
										{
											_delay(100);      //OFF TIME
										}
							    }
						}
				}
			
			//-----------COAG. OPERATION-------------//
			if(RA1 == 0) // COAG ON
				{
					if(RA4 == 0) //CHECK INACT
						{
							_delay(10000);	//ALARM INACT
						}
				    else
						{
							//INACT OK. TURN ON COAG RELAY. CALCULATED COAG POWER 
							RB3 = 1;   //COAG RELAY ON
							_delay(25);
							temp = sqrt(coagpower);
							temp = temp * 10;
							temp = ~temp;
							
							//STORE COAG. POWER IN DIGITAL POT.
					      //DIGITAL POT. CONNECTIONS -
					      //CS = RD5
					      //CLK = RD6
					      //DATA = RD7
							RD5 = 0;   //CS
							_delay(25);
							R1 = 0x11;
			    			for( j = 0; j <= 7; j ++ )
								{
									R1 = R1 << 1;
									if(CARRY == 1)
							  	    {
								    	RD7 = 1;
								    }
							    	else
								  	{
									   RD7 = 0;
								  	}
									RD6 = 1;
									_delay(5);
									RD6 = 0;
									RD7 = 0;
								}
							for( i = 0; i <= 7; i ++ )
								{	
									temp = temp << 1;
									if(CARRY == 1)
								  		{
											RD7 = 1;
							   	  	}
									else
								  		{
											RD7 = 0;
								  		}
									RD6 = 1;
									_delay(5);
									RD6 = 0;
									RD7 = 0;
								}	
							RD5 = 1;
							R1 = 0x11;
                     //POWER STORED 
							
							//APPLY POWER UNTIL COAG SWITCH IS PRESSED TO PERFORM ACTUAL OPERATION!
							//GENERATE PULSES ON RB1 
							//PULSES GENERATION CODE
							while(RA1 == 0)
								{
									if(coagmode == 0)
						     			{		
											#asm
												movlw 0x01
												MOVWF _train
										   loop_1:
												BSF PORTB,1
								      		NOP
												NOP
												NOP
												NOP
												NOP
												NOP
												NOP
												NOP
												NOP
												BCF PORTB,1
												NOP
												NOP
												NOP
								 				NOP
												NOP
												NOP
												decfsz _train,f
												   goto loop_1
											#endasm
											_delay(50);
										}
										
									if( coagmode == 1 )   // FULGRATE 1
										{
											#asm
												movlw 0x03
												MOVWF _train
											loop_2:
												BSF PORTB,1
								      		NOP
												NOP
												NOP
												NOP
												NOP
												NOP
												NOP
												NOP
												NOP
												BCF PORTB,1
												NOP
												NOP
												NOP
								 				NOP
												NOP
												NOP
												decfsz _train,f
													goto loop_2
											#endasm
											_delay(50);
										}
											
								   if( coagmode == 2 )   // DISSICATE
								      {
								 			#asm
												movlw 0x03
												MOVWF _train
											loop_3:
												BSF PORTB,1
								      		NOP
												NOP
												NOP
												NOP
												NOP
												NOP
												NOP
												NOP
												NOP
												BCF PORTB,1
												NOP
												NOP
												NOP
								 				NOP
												NOP
												NOP
												decfsz _train,f
													goto loop_3
											#endasm
											_delay(50);
										}	
								}
						}
				}
			
			//-----------BIPOLAR OPERATION-------------//	
			if(RA2 == 0 )   //BIPO ON
				{
					if(bipomode == 2)  //SEAL WAS SELECTED BY MODE SWITCH
						{
							bipomode = 0;
						}
					else
						{
							//TURN ON BIPOLAR RELAY. CALCULATE BIPOLAR POWER
							RB2 = 1; // BIPO RELAY ON
							_delay(25);
							
							temp = sqrt(bipopower);
							temp = temp * 10;
							temp = ~temp;
							
							//STORE BIPOLAR POWER IN DIGITAL POT.
							//DIGITAL POT. CONNECTIONS -
							//CS = RD5
					      //CLK = RD6
					      //DATA = RD7
							RD5 = 0;   //CS
							_delay(25);
							R1 = 0x11;
							for( j = 0;j <= 7;j ++ )
								{
									R1 = R1 << 1;
									if(CARRY == 1)
							  	  		{
											RD7 = 1;
								 		}
									else
								  		{
											RD7 = 0;
								  		}
									RD6 = 1;
									_delay(5);
									RD6 = 0;
									RD7 = 0;	
								}
							for(i = 0;i <= 7;i ++ )
								{
									temp = temp << 1;
									if(CARRY == 1)
								 		{
											RD7 = 1;
							    		}
									else
								  		{
											RD7 = 0;
								 		}
									RD6 = 1;
									_delay(5);
									RD6 = 0;
									RD7 = 0;
								}
							RD5 = 1;
							R1 = 0x11;
							//POWER STORED 
							
							//APPLY POWER UNTIL BIPOLAR SWITCH IS PRESSED TO PERFORM ACTUAL OPERATION!
							//GENERATE PULSES ON RB1 
							//PULSES GENERATION CODE
							while(RA2 == 0)
								{
					    			#asm
										movlw 0x0A
										MOVWF _train
									   loop_4:
											BSF PORTB,1
								      	NOP
											NOP
											NOP
											NOP
											NOP
											NOP
											NOP
											NOP
											NOP
											BCF PORTB,1
											NOP
											NOP
											NOP
								 			NOP
											NOP
											NOP
											decfsz _train,f
												goto loop_4
										#endasm
												
							         if( bipomode == 0 ) 
											{
												_delay(100);
											}	
										if(bipomode == 1)
						        			{		
								  				 _delay(600);
											}
					            } 	  
						}
							
				}
				
			//-----------LIGA. OPERATION-------------//
			if( RA3 == 0 )    //LIGA ON
				{
					bipomode = 2;
					
				   //TURN ON BIPOLAR RELAY. CALCULATE BIPOLAR POWER
					RB2 = 1; // BIPO RELAY ON
					_delay(25);

					temp = sqrt(bipopower);
					temp = temp * 12;
					temp = ~temp;
					
					//STORE BIPOLAR POWER IN DIGITAL POT.
					//DIGITAL POT. CONNECTIONS -
					//CS = RD5
					//CLK = RD6
					//DATA = RD7
					RD5 = 0;   //CS
					R1 = 0x11;
					for( j = 0;j <= 7;j ++ )
						{
							R1 = R1 << 1;
							if(CARRY == 1)
							  	{
									RD7 = 1;
								}
							else
								{
									RD7 = 0;
								}
							RD6 = 1;
							_delay(5);
							RD6 = 0;
							RD7 =0;	
				  	    }
					for(i = 0;i <= 7;i ++ )
						{
						   temp = temp << 1;
							if(CARRY == 1)
								 {
									RD7 = 1;
							   	 }
								else
								 {
									RD7 = 0;
								 }
								RD6 = 1;
								_delay(5);
								RD6 = 0;
								RD7 = 0;
						}
					RD5 = 1;
				   _delay(25);
					R1 = 0x11;
					//POWER STORED
					
					//APPLY POWER UNTIL LIGA. SWITCH IS PRESSED TO PERFORM ACTUAL OPERATION!
					//GENERATE PULSES ON RB1 
					//PULSES GENERATION CODE
					wait = 0;
					while(RA3 == 0)
						{
							if(dry_fl == 0)
								{
									#asm
									   movlw 0x05
									   MOVWF _train
							      loop_5:
									   BSF PORTB,1
								   	NOP
									   NOP
									   NOP
								   	NOP
									   NOP
									   NOP
									   NOP
									   NOP
									   NOP
									   BCF PORTB,1
									   NOP
									   NOP
									   NOP
								 	   NOP
									   NOP
									   NOP
									   decfsz _train,f
									      goto loop_5
								   #endasm

								   wait = wait + 1;
								   if(wait > 5000)
									   {	
										   if(RA5 == 1)
											   {
												   dry_fl = 1;
									         } 	
									   }
								}
							RB1 = 0;
							_delay(600);						
						}		
				}
  
         
         //--------------------   SWITCHES PANEL -----------------------------
		
			PORTD = PORTD & 0x1F;
			PORTC = PORTC & 0xF7;

         //CHECK WHETHER ANY KEY IS PRESSED
			if (( PORTC == 0xF7 ) &&( PORTD == 0x1F))//C =1110 0111 D= 0001 1111;
				{
					{
						cnt = 0;
					}
				}
			if(( RC0 == 0 ) && ( cnt == 0 ))
				{
				 	for (debounce = 0; debounce <= 99; debounce ++)
               	{
                   	_delay(250); //DELAY FOR 250 INSTRUCTION CYCLES
               	}
            }
            
			if( RC0 == 0 ) //PROG_UP
            {
				   while(RC0 == 0)
					   {
						   if( progno < 99 )
							   {
								   progno = progno + 1;
								   tens = progno  / 10;
								   tens = tens << 4;
								   values[0] = tens;
         						units =  progno % 10;
								   units = units << 4;
								   values[1] = units;
								}
						   if(cnt == 0)
							   {
								   for (debounce = 0; debounce <= 200; debounce ++)
                 					{
                 			  			_delay(30000); //DELAY FOR 250 INSTRUCTION CYCLES
                		    		}	
								   cnt = cnt + 1;	
							   }	
				   		else	
							   {						  		
					     			for (debounce = 0; debounce <= 200; debounce ++)
                 					{
              			 			   _delay(3000); //DELAY FOR 250 INSTRUCTION CYCLES
                 		    		}	
							   }
					   }
				   rdfl = 1;			
		  		}
		  		
		  	//-------------  PROG DN   ----------------//	
			if(( RC1 == 0 ) && ( cnt == 0 ))
				{
					for (debounce = 0; debounce <= 99; debounce ++)
           			{
           	  			_delay(250); //DELAY FOR 250 INSTRUCTION CYCLES
           			}	
        		}
			if( RC1 == 0 ) //PROG_DN
            {
					while(RC1 == 0)
						{
							if( progno > 0 )
								{
									progno = progno - 1;
									tens = progno  / 10;
									tens = tens << 4;
									values[0] = tens;
         						units =  progno % 10;
									units = units << 4;
									values[1] = units;
								}
							if(cnt == 0)
								{
									for (debounce = 0; debounce <= 200; debounce ++)
                    			   {
                     	  		   _delay(30000); //DELAY FOR 250 INSTRUCTION CYCLES
                   	    		}
									cnt = cnt + 1;	
								}
				 	  		else	
								{
						  			for (debounce = 0; debounce <= 200; debounce ++)
                  				{
                     	   		_delay(3000); //DELAY FOR 250 INSTRUCTION CYCLES
                   	    		}	
								}
						}
					rdfl = 1;
				}
		   
		   //----------------- CUT UP --------------------
			if(( RC2 == 0 ) && ( cnt == 0 ))
		      {
		 			for (debounce = 0; debounce <= 99; debounce ++)
                 	{
                  	_delay(250); //DELAY FOR 250 INSTRUCTION CYCLES
               	}	
				}
			if( RC2 == 0 ) //CUT UP
            {
				   while(RC2 == 0)
					{		
						if( cutpower < 400 )
						   {
						//	cutpower = 0x0190;//===400===========

							cutpower = cutpower + 1;
							hundreds = cutpower / 100;
							temp = (cutpower - ( hundreds * 100 ));
							units = temp  % 10;
							units = units << 4;
							values[8] = units;
							tens = temp / 10;
							tens = tens << 4;
							values[3] = tens;
							hundreds = hundreds << 4;
							values[2] = hundreds;
							cutpowerl =cutpower & 0x00FF;
							cutpowerh =cutpower >> 8;

						
							
								
							}
						if(cnt == 0)
							{
								for (debounce = 0; debounce <= 200; debounce ++)
                   					{
                    			  		_delay(30000); //DELAY FOR 250 INSTRUCTION CYCLES
                    		    	}
								cnt = cnt + 1;	
							}
					 	else	
							{
						  		
				         		for (debounce = 0; debounce <= 200; debounce ++)
                   					{
                   			  			_delay(3000); //DELAY FOR 250 INSTRUCTION CYCLES
                		    		}	
							}
					}
					addrl =	(progno * 8) + 1;
					GIE = 0;
					Write_b_eep(addrl,cutpowerh);
					Busy_eep();
					_delay(100);
					addrl =	(progno * 8) + 2;
					Write_b_eep(addrl,cutpowerl);
					Busy_eep();
					GIE = 1;
					
					//---- -----------CUT DN ---------------------------------

				}
			if(( RD0 == 0 ) && ( cnt == 0 ))
				{
				 			
					for (debounce = 0; debounce <= 99; debounce ++)
                    	{
                     		 _delay(250); //DELAY FOR 250 INSTRUCTION CYCLES
               			}
       		    }
			if( RD0 == 0 ) //CUT DN
           		{
				   while(RD0 == 0)
					{	
				   	  if( cutpower > 0 )
						{
							cutpower = cutpower - 1;
							hundreds = cutpower / 100;
							temp = (cutpower - ( hundreds * 100 ));
							units = temp  % 10;
							units = units << 4;
							values[8] = units;
							tens = temp / 10;
							tens = tens << 4;
							values[3] = tens;
							hundreds = hundreds << 4;
							values[2] = hundreds;
							cutpowerl =cutpower & 0x00FF;
							cutpowerh =cutpower >> 8;

						
						}
						if(cnt == 0)
						{
							for (debounce = 0; debounce <= 200; debounce ++)
                    			{
                     	  			_delay(30000); //DELAY FOR 250 INSTRUCTION CYCLES
                    			}
							cnt = cnt + 1;	
						}
					 else	
						{
						  		
					        for (debounce = 0; debounce <= 200; debounce ++)
                   				{
               			  			_delay(3000); //DELAY FOR 250 INSTRUCTION CYCLES
               		    		}	
						}			
					}
					addrl =	(progno * 8) + 1;
					GIE = 0;
					Write_b_eep(addrl,cutpowerh);
					Busy_eep();
					_delay(100);
					addrl =	(progno * 8) + 2;
					Write_b_eep(addrl,cutpowerl);
					Busy_eep();
					GIE = 1;
			
 				
	//---------------CUT MODE --------
						

				}
			if(( RD1 == 0 ) && ( cnt == 0 ))
				{
				 		
					for (debounce = 0; debounce <= 99; debounce ++)
               			{
                     	 	 _delay(250); //DELAY FOR 250 INSTRUCTION CYCLES
                    	}
                }
			if( RD1 == 0 ) //CUT MODE
				{
					cutmode = cutmode + 1;
					while(RD1 == 0)
						{
								
							if(cutmode == 0x04)
								{ 
									cutmode = 0x00;
									
								}		

							if( cutmode == 0x00 )
								{
									values[5] = 0x20;
									values[4] = 0x10;
								
								}
							if( cutmode == 0x01 )
								{

									values[5] = 0x40;
									values[4] = 0x10;
								}
							if( cutmode == 0x02 )
								{
									values[4] = 0x20;
									values[5] = 0x10;
										
								}		
						
							if( cutmode == 0x03 )
								{
									values[4] = 0x40;
									values[5] = 0x10;	
								}
						
					
							for (debounce = 0; debounce <= 200; debounce ++)
                   		   		{
                     	 		_delay(25000); //DELAY FOR 250 INSTRUCTION CYCLES
                    		    }
						}
					addrl =	(progno * 8) + 3;
					GIE = 0;
					Write_b_eep(addrl,cutmode);
					Busy_eep();
					GIE = 1;

						//---------------  COAG UP -----------------
				}
			if( RD2 == 0 ) //COAG 
				{		
				    while(RD2 == 0)
						{
							if( coagpower < 150 )
								{

								 	coagpower = coagpower + 1;
				
									hundreds = coagpower / 100;
									temp = (coagpower - ( hundreds * 100 ));
									units = temp  % 10;
									units = units << 4;
									values[12] = units;
									tens = temp / 10;
									tens = tens << 4;
									values[10] = tens;
									hundreds = hundreds << 4;
									values[9] = hundreds;
												
								}
		 					if(cnt == 0)
								{
									for (debounce = 0; debounce <= 200; debounce ++)
                    					{
                     			  			_delay(30000); //DELAY FOR 250 INSTRUCTION CYCLES
                   		    			}
									cnt = cnt + 1;	
								}
					 	  	else	
								{
						  		
					         		for (debounce = 0; debounce <= 200; debounce ++)
                    					{
                     			  			_delay(3000); //DELAY FOR 250 INSTRUCTION CYCLES
                    		    		}
								}
						}
					addrl =	(progno * 8) + 4;
					GIE = 0;
					Write_b_eep(addrl,coagpower);
					Busy_eep();
					GIE = 1;	
			 					
								
				 //---------------- COAG DN ----------------------
						
				
                }
			if( RD3 == 0 ) //COAG DN
				{
					while(RD3 == 0)
						{
							if( coagpower > 0 )
								{

									coagpower = coagpower - 1;
									hundreds = coagpower / 100;
									temp = (coagpower - ( hundreds * 100 ));
									units = temp  % 10;
									units = units << 4;
									values[12] = units;
									tens = temp / 10;
									tens = tens << 4;
									values[10] = tens;
									hundreds = hundreds << 4;
									values[9] = hundreds;
									
									
								}
		 					if(cnt == 0)
								{
									for (debounce = 0; debounce <= 200; debounce ++)
                    					{
                     			  			_delay(30000); //DELAY FOR 250 INSTRUCTION CYCLES
                    		    		}
									cnt = cnt + 1;	
								}
					 	  	else	
								{
						  		
					         	   for (debounce = 0; debounce <= 200; debounce ++)
                    				  {
                     			 		 _delay(3000); //DELAY FOR 250 INSTRUCTION CYCLES
                    		    	  }
								}
						}
					addrl =	(progno * 8) + 4;
					GIE = 0;
					Write_b_eep(addrl,coagpower);
					Busy_eep();
					GIE = 1;		
					
												
				}
						//---------------COAG MODE ---------------------
						
								
			if(( RC5 == 0 ) && ( cnt == 0 ))
				{
				 		
					for (debounce = 0; debounce <= 200; debounce ++)
                    	{
                     	  _delay(250); //DELAY FOR 250 INSTRUCTION CYCLES
                    	}
               	}
			if( RC5 == 0 ) 
				{
					coagmode = coagmode + 1;

					while(RC5 == 0)
						{
								
								if( coagmode == 0x03 )
									{
									coagmode = 0x00;
									
									}
								if( coagmode == 0x00 )
									{
									values[7] = 0x20;
						
									}
						     	if( coagmode == 0x01 )
									{
									values[7] = 0x40;
			
									}
						    	if( coagmode ==  0x02 )
									{
									values[7] = 0x10;	
								
									}

						
								
						}
					addrl =	(progno * 8) + 5;
					GIE = 0;
					Write_b_eep(addrl,coagmode);
					Busy_eep();
					GIE =1;

	
					// ------------   BIPO UP   -----------------         -------
				}		
			if(( RC6 == 0 ) && ( cnt == 0 ))
				{
				 		
					for (debounce = 0; debounce <= 99; debounce ++)
                    	{
                     	  	_delay(250); //DELAY FOR 250 INSTRUCTION CYCLES
                    	}
              	}
			if( RC6 == 0 ) 
                {
					while(RC6  == 0)
						{
							if( bipopower < 99 )
								{
									bipopower = bipopower + 1;
									tens = bipopower  / 10;
									tens = tens << 4;
									values[13] = tens;
         							units =  bipopower % 10;
									units = units << 4;
									values[6] = units;
								}
							if(cnt == 0)
								{
									for (debounce = 0; debounce <= 200; debounce ++)
                    					{
                     			  			_delay(30000); //DELAY FOR 250 INSTRUCTION CYCLES
                    		   			}
									cnt = cnt + 1;	
								}
							 else	
								{
						  		
					       			for (debounce = 0; debounce <= 200; debounce ++)
                    					{
                     			  			_delay(3000); //DELAY FOR 250 INSTRUCTION CYCLES
                    		   			}	
								}
						}
					addrl =	(progno * 8) + 6;
					GIE = 0;
					Write_b_eep(addrl,bipopower);
					Busy_eep();
					GIE = 1;
				
					       	// --------------  BIPO DN ------------------

				}

			if(( RC7 == 0 ) && ( cnt == 0 ))
				{
				 		
						for (debounce = 0; debounce <= 99; debounce ++)
                    		{
                     	 	 _delay(250); //DELAY FOR 250 INSTRUCTION CYCLES
                    		}
                }
			if( RC7 == 0 ) 
                {
					while(RC7 == 0)
						{
							if( bipopower > 0 )
								{
									bipopower = bipopower - 1;
									tens = bipopower  / 10;
									tens = tens << 4;
									values[13] = tens;
         							units =  bipopower % 10;
									units = units << 4;
									values[6] = units;
								}
							if(cnt == 0)
								{
									for (debounce = 0; debounce <= 200; debounce ++)
                    					{
                     			 			 _delay(30000); //DELAY FOR 250 INSTRUCTION CYCLES
                    		   			}
									cnt = cnt + 1;	
								}
			 				else	
								{
						  		
					         		for (debounce = 0; debounce <= 200; debounce ++)
                    					{
                     			  			_delay(3000); //DELAY FOR 250 INSTRUCTION CYCLES
                    		    		}	
								}
						}
					addrl =	(progno * 8) + 6;
					GIE = 0;
					Write_b_eep(addrl,bipopower);
					Busy_eep();
					GIE = 1;
				
			//------------ BIPO MODE ------

				
				}
			if((RD4 == 0 ) && ( cnt == 0 ))
				{
				 		
					for (debounce = 0; debounce <= 99; debounce ++)
               			{
                     	 	 _delay(250); //DELAY FOR 250 INSTRUCTION CYCLES
                    	}
               	}
			if(RD4 == 0 ) //BIPO MODE
				{
					bipomode = bipomode + 1;
					while(RD4 = 0);
						{
						
						
							if( bipomode == 0X03 )
								{
									bipomode = 0x00;
								//	_delay(25000);
				    			}
							if( bipomode == 0x00 )
								{
									values[11] = 0x20;
								//	_delay(25000);
								}
							if( bipomode == 0x01 )
								{
									values[11] = 0x40;
								//	_delay(25000);
								}
							if( bipomode == 0x02 )
								{
									values[11] = 0x10;
								//	_delay(25000);
								}
						
							
							for (debounce = 0; debounce <= 200; debounce ++)
                    			{
                     	 			_delay(25000); //DELAY FOR 250 INSTRUCTION CYCLES
                    	
	   			    			}
						}
					addrl =	(progno * 8) + 7;
					GIE = 0;
					Write_b_eep(addrl,bipomode);
					Busy_eep();
					GIE = 1;
				
				}
      
		}
   }



//TIMER INTERRUPT FUNCTION
void interrupt tmr_int()
   {
      if(adr == 7)
         {
            RB0 = ~(RB0);  //CHANGE THE IC
            adr = 0; //RESET THE ADRESS VALUE
         }
      PORTE = adr;   //SELECT THE ADRESS OF 7 SEGMENT
      PORTB = PORTB & 0x0F;   //CLEAR UPPER NIBBLE OF PORTB
      PORTB = PORTB | values[count];   //APPLY ACTUAL VALUE TO 7 SEGMENT
      adr = adr + 1; //INCREMENT ADRESS OF 7 SEGMENT
      count = count + 1;   //INCREMENT COUNTRER OF DATA
      if(count == 14)
         {
            count = 0;  //RESET VALUE ARRAY COUNTER
         }
      hold = hold - 1;   //DECREMENT TIMER FOR CONTROLING
      
      T0IF = 0;   //RESET TIMER INTERRUPT FLAG
      TMR0 = 0;   //CLEAR TIMER
      return;

   }
// void rdall()
   
		/*
			addrrd = progno * 8;
		    cutpowerh = EERandomRead(0xA0,addrrd);
			_delay(50);

			addrrd = addrrd + 1;
			cutpowerl = EERandomRead(0xA0,addrrd);
			_delay(50);

			addrrd =addrrd + 1;
			cutmode = EERandomRead(0xA0,addrrd);
			_delay(50);

			addrrd = addrrd + 1;
			coagpower = EERandomRead(0xA0,addrrd);
			_delay(50);

			addrrd = addrrd + 1;
			coagmode = EERandomRead(0xA0,addrrd);
			_delay(50);

			addrrd = addrrd + 1;
			bipopower = EERandomRead(0xA0,addrrd);
			_delay(50);

			addrrd = addrrd + 1;
			bipomode = EERandomRead(0xA0,addrrd);
			_delay(50);

// ---------- COAG POWER -----
			hundreds = coagpower / 100;
			temp = (coagpower - ( hundreds * 100 ));
			units = temp  % 10;
			units = units << 4;
			values[12] = units;
			tens = temp / 10;
			tens = tens << 4;
			values[10] = tens;
			hundreds = hundreds << 4;
			values[9] = hundreds;

//---------------CUT POWER --------
//
				cutpower = cutpowerh;
				cutpower =( cutpower << 8  );
				cutpower = (cutpower + cutpowerl);

				hundreds = cutpower / 100;
				temp = (cutpower - ( hundreds * 100 ));
				units = temp  % 10;
				units = units << 4;
				values[8] = units;
				tens = temp / 10;
				tens = tens << 4;
				values[3] = tens;
				hundreds = hundreds << 4;
				values[2] = hundreds;
			
//------------------- BIPO DISPLAY --

				tens = bipopower  / 10;
				tens = tens << 4;
				values[13] = tens;
         		units =  bipopower % 10;
				units = units << 4;
				values[6] = units;

//---------------------MODE DISPLAY----

					if( cutmode == 0x00 )
						{
							values[5] = 0x70;
							_delay(25000);
						}
					if( cutmode == 0x01 )
						{

							values[5] = 0x40;
							_delay(25000);
						}
					if( cutmode == 0x02 )
						{
							values[5] = 0xF0;
							_delay(25000);	
						}
						
					if( cutmode ==0x03 )
						{
							values[4] = 0x70;
							_delay(25000);
						}
				
		////---------------COAG MODE ---
	
					if( coagmode == 0x00 )
						{
							values[4] = 0x40;
							_delay(25000);
						}
					if( coagmode == 0x01 )
						{
							values[4] = 0xF0;
							_delay(25000);
						}
					if( coagmode ==  0x02 )
						{
							values[11] = 0x70;	
							_delay(25000);
						}
			//----------------BIPO MODE ---

						if( bipomode == 0x00 )
						{
							values[11] = 0x40;
							_delay(25000);
						}
					if( bipomode == 0x01 )
						{
							values[7] = 0x70;
							_delay(25000);
						}
					if( bipomode == 0x02 )
						{
							values[7] = 0x40;
							_delay(25000);
						}	
	
                     return;
		
   
 void wrbyte()  
   {

				txbuf = 0xA0;
				BSTART();
				TXA();
				ACK();
				txbuf = addrh;
				TXA();
				ACK();
				txbuf = addrl;
				TXA();
				ACK();
				txbuf = datao;
				TXA();
				ACK();
				BSTOP();
				return;
   }
void BSTART()
   {
		
				TRISC = 0xE7;
				PORTC = PORTC | 0x18;       //MAKE RC4 HIGH,SDA 0001 0000
			//	_delay(5);
			//	PORTC = PORTC | 0x08;       //MAKE RC3 HIGH,SCL
				_delay(15);
				PORTC =~ (PORTC & 0x10);       //MAKE RC4 LOW
				_delay(10);
				PORTC = 0XE7;     //MAKE RC3 LOW         0000 1000
				return;
   }
void TXA()
   {             
				cnt = 8;
				PORTC = 0;
				TRISC = 0xE7;    // MAKE SDA OUTPUT 0001 0000
				PORTC = 0;
		//BITOUT
				#asm
				BCF PORTC,4
		TXLP:
		;-------- BITOUT  ------
				BTFSS	_txbuf,7
				GOTO	BIT0
				BSF 	PORTC,4
				GOTO	CLK1
		BIT0:
				BCF	PORTC,4
				NOP
				NOP
		CLK1:	
				NOP
				NOP
				NOP
				NOP
				NOP
				NOP
				NOP
				NOP
				NOP
				NOP
				NOP
				NOP
				NOP
				NOP
				NOP
				NOP
				NOP
				NOP
				BSF	PORTC,3
				NOP
				NOP
				NOP
				NOP
				NOP
				NOP
				NOP
				NOP
				NOP
				NOP
				NOP
				NOP
				NOP
				NOP
				NOP
				NOP
				NOP
				NOP
				NOP
				NOP
				NOP
				NOP
				NOP
				NOP
				NOP
				NOP
				NOP
				BCF	PORTC,3
				NOP
				NOP
				NOP
				NOP
				NOP
				NOP
				NOP
				NOP
				RLCF	_txbuf,F
				DECFSZ	_cnt,F
				GOTO	TXLP
				NOP
				BCF    PORTC,4
				NOP
				MOVLW   0xF7;
				MOVWF	TRISC
				#endasm
    			return;
   }
void BSTOP()
   {
		PORTC = 0;
		TRISC = 0XE7;						
	//	PORTC =~( PORTC & 0x10); //SDA 0
		_delay(20);
		PORTC = PORTC | 0x08; // CLOCK 1
		_delay(20);
		PORTC = PORTC | 0x10; //SDA 1
		return;
   }
 void ACK()
   {
		
		TRISC = 0xF7;       //INPUT
		PORTC = 0;
		_delay(5);
		
		PORTC = PORTC | 0x08;    //CLOCK 1
		_delay(25);
		PORTC = ~(PORTC & 0x08);
		return;
   }
void rdbyte()		
   {
		txbuf = 0xA0;
		BSTART();
		TXA();
		ACK();
		txbuf = addrh;
		TXA();
		ACK();	
		txbuf = addrl;
		TXA();
		ACK();

		txbuf = 0xA1;
	//	CARRY = 0;
		BSTART();
	 	TXA();
		ACK();
		RXA();
		BSTOP();
		DATAI = RXBUF;
		return;
   }
void RXA()
   {
			cnt = 0;
			TRISC = 0xF7; //SDA INPUT
			RXBUF = 0;
			CARRY = 0;


		for( cnt = 0; cnt < 8; cnt++ )
			{
				RXBUF = RXBUF << 1;
			
				if(RC4 == 1)
					{
						RXBUF = RXBUF + 1;
					}
					else
					{
						CARRY = 0;
					}
				RC3 = 0;
				_delay(20);  // clock
				RC3 = 1;
				_delay(20);
				RC3 = 0;	
				_delay(5);
				
			}
			TRISC = 0xE7;
			return;
   }
*/

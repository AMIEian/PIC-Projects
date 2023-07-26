#include <xc.h>
#include <EEP.h>
#include <i2c.h>

void interrupt tmr_int();
//void wrbyte();
//void rdbyte();
//void rdall();

volatile unsigned char count = 0, adr = 0, values[14] = {0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00};
volatile signed char hold = 0;
unsigned char txbuf = 0,addrl = 0,addrh = 0,datai = 0,datao =0,rxbuf = 0,wrfl = 0,rdfl = 0;

 unsigned char hundreds = 0,cutpowerh = 0,cutpowerl = 0,coagpower = 0, i = 0,j = 0,R1 = 0x11,R2 = 0,temp = 0,cnt = 0,bipopower = 0,cutmode = 0,coagmode = 0,bipomode = 0,units = 0,tens = 0,debounce = 0,progno = 0;
 unsigned int cutpower = 0,temp_a;

void main() 
   {
     
       
          
      TRISA = 0xFF;  //ALL INPUT
      TRISE = 0x00;	//ALL OUTPUTS FOR ADDRESS SELECTION
      TRISB = 0x00;	//ALL OUTPUTS FOR DATA
      TRISD = 0x0F;  // RD0>3 INPUT & RD4>7 OUTPUT
      TRISC = 0x7F;  //ALL INPUTS FOR SWITCHES
      
	  ADCON1 = 0x07;
      RCON = 0x9F;	//DISABLE INTERRUPT PRIORITY
      INTCON = 0xA0;	//ENABLE TIMER 0 INTERRUPT
      T0CON = 0xC2;	//ENABLE TIMER0 WITH 1 : 8 PRESCALAR
      TMR0 = 0x00;   //RESET TIMER
		cutmode = 0;
		coagmode = 0;
		bipomode = 0;
		//I2C EEPROM EXAMPLE THAT WRITES DATA AT 0x03 IN EEPROM AND THEN READ IT
		OpenI2C(MASTER, SLEW_ON);// Initialize I2C module
      SSPADD = 9; //400kHz Baud clock(9) @16MHz
                  //100kHz Baud clock(39) @16MHz
                  
      EEByteWrite(0xA0, 0x30, 0x04);
      cutmode = EERandomRead(0xA0,0x30);
	   
      Write_b_eep(progno,coagpower);
   /**   //READ EEPROM
    //  set_cuth = Read_b_eep( 0x01 );  //READ SET PRESSURE
   //   _delay(50);
      set_cutl = Read_b_eep( 0x02 );  //READ SET FLOW
      _delay(50)

	  set_coag = Read_b_eep( 0x03 );
	  set_bip  = Read_b_eep( 0x04 );
 
      //READ VOLUME
      hundreds = Read_b_eep( 0x03 );  //READ HUNDRED VALUE
      _delay(50);
      tens = Read_b_eep( 0x04 );  //READ TENS VALUE
      _delay(50);
      **/
      
    
      //SELECT FIRST IC
      	RB0 = 0;
      	RB1 = 0;
      
      //TURN OF BOTH VALVES
      	RB2 = 0;
   		RB3 = 0;
    	RD4 = 0;
		RC7 = 0;  // 0/P
		RD5 = 1; // CS				      
      while (1)
		{ 
			if(( wrfl == 1) && ( RD1 == 1 || RD2 ==1) )		
				{
					Write_b_eep( progno,coagpower);
					_delay(50);
					wrfl = 0;
				}
			if(( rdfl == 1 ) && (RC0 == 1 || RC1 == 1))
				{
									coagpower =Read_b_eep( progno);
									_delay(50);
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
									rdfl = 0;
 							
				}
			
		 //---------- FOOT SWITCHES ------------------
		
			if(RA1 == 1)
				{
					RB3 = 0; //SWITCH OFF COAG
				}		
			if(( RA2 || RA3 )== 1)
				{
					RB2 = 0; //SWITCH OFF BIPOLAR
				}
				RC7 = 0;
	    	if( RA0 == 0 )  // CUT
    	     	{
																								
					if( RA4 == 1 )  //INACT
						{
						RC7 = 1;	//ALARM INACT
						_delay(100);
						}
			 		  else
				   		{
						
							
				    		temp_a = cutpower >> 2; //DIV BY 4...
							temp = temp_a & 0x00FF;
							temp = ~temp;
							RD5 = 0;   //CS
							_delay(25);
							j = 0;
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
							i = 0;
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
	
							if(cutmode == 0)																																		if((cutmode == 0) && (hold <= 0))  // PURE
				        		{
				        				i = 0; //
						      		while(RA0 == 0)
								 	{
				    		     	while( i < 10 )
											{
												RD4 = 1;
												_delay(6);
												i = i + 1;
												RD4 = 0;
			    							}
											_delay(8);
											i = 0;
								      }
								
								} 	
							if( cutmode == 1 )  // BLEND 1
								{
						
										
									_delay(5);      //OFF TIME

								}
			   				if( cutmode == 2 ) //BLEND 2
								{
									
				
										
									_delay(5);      //OFF TIME
								}
							if( cutmode == 3 ) //ENDO
								{
									
										
									_delay(5);      //OFF TIME
								}
						}
				}
			if(RA1 == 0) // COAG ON
				{
					if(RA4 == 1) //  INACT
						{

							RC7 = 1;	//ALARM INACT
						}
				    else
						{
							RB3 = 1;   //COAG RELAY ON
							_delay(25);
					
							temp = coagpower;
							temp = ~temp;
							RD5 = 0;   //CS
							_delay(25);
						
							j = 0;
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
							i = 0;
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
//------------------------------------------------------------

						if(coagmode == 0)   // SPRAY
							{
						     	i = 0; //
						      	while(RA1 == 0)
								 	{
					    		     	while( i < 1 )
											{
												RD4 = 1;
												_delay(6);
												i = i + 1;
												RD4 = 0;
			    							}
											_delay(80);
											i = 0;
								      }
						
					        }
						 if( coagmode == 1 )   // FULGRATE 1
							{
									i = 0; //
									while(RA1 == 0)
									 { 
										while(i < 3 )
											{
												RD4 = 1;
												_delay(6);
												i = i + 1;
								  				RD4 = 0;
			    							}
								 		 _delay(50);
								 		 i = 0;
									}
						
					        }
						if( coagmode == 2 )   // DISSICATE
							{
									i = 0; //
									while(RA1 == 0)
										{
											while(i < 4)
												{
													RD4 = 1;	
													_delay(6);
													i = i + 1;
													RD4 = 0;
												}
			    								_delay(40);
												i = 0;	
			    						}
								  
							}
						}
				}
			if(RA2 == 0)   //BIPO ON
				{
					if(bipomode == 2)  //SEAL WAS SELECTED BY MODE SWITCH
						{
							bipomode = 0;
						}	
					else
						{
							RB2 = 1;; // BIPO RELAY ON
							_delay(25);
							
						
							temp = bipopower;
							temp = ~temp;
							RD5 = 0;   //CS
							_delay(25);
							j = 0;
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
							i = 0;
				
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
									
							if(bipomode == 0)   // SPAY
								{
									i = 0; //
									while(RA2 == 0)
										{
					    					while( i < 1 )
												{
													RD4 = 1;
													_delay(6);
													i = i + 1;
													RD4 = 0;
			    								}
											_delay(80);
											i = 0;
										}
						
								}
							if( bipomode == 1 )   // FULGRATE 1
								{
									i = 0; //
									while(RA2 == 0)
										{
											while(i < 3 )
												{
													RD4 = 1;
													_delay(6);
													i = i + 1;
								  					RD4 = 0;
			    								}
								  			_delay(50);
								 		 											}
					    		}
						}
							
				}
			if(RA3 == 0)   //LIGA ON
				{
					bipomode = 2;
				
					RB2 = 1;; // BIPO RELAY ON
					_delay(25);
					temp = bipopower;
					temp = ~temp;
					RD5 = 0;   //CS
					
				
					j = 0;
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
					 i = 0;
					
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
					RB2 = 0;
					_delay(25);
					R1 = 0x11;
					i = 0; //
					while(RA3 == 0)
						{
							while(i < 3 )
								{
									RD4 = 1;
									_delay(6);
									i = i + 1;
								  	RD4 = 0;
			    				}
							_delay(50);
							i = 0;
						}
	
				}
  
//--------------------   SWITCHES PANEL -----------------------------
		
				PORTD = PORTD & 0X0F;
				PORTC = PORTC & 0x7F;

			if (( PORTC == 0x7F ) &&( PORTD == 0x0F))
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
						if( progno < 99 )
							{
								progno = progno + 1;
								tens = progno  / 10;
								tens = tens << 4;
								values[0] = tens;
         						units =  progno % 10;
								units = units << 4;
								values[1] = units;

								rdfl = 1;
								
							}
						if(cnt == 0)
							{
								for (debounce = 0; debounce <= 200; debounce ++)
                    				{
                   			  			_delay(20000); //DELAY FOR 250 INSTRUCTION CYCLES
                   		    		}	
								cnt = cnt + 1;	
							}
				 		else	
							{						  		
					       		for (debounce = 0; debounce <= 100; debounce ++)
                    				{
              	 			 			 _delay(3000); //DELAY FOR 250 INSTRUCTION CYCLES
                   		    		}	
							}
								
		
       //-------------  PROG DN   -----------------------------------------------------
	
				}
			if(( RC1 == 0 ) && ( cnt == 0 ))
				{
				 		
						for (debounce = 0; debounce <= 99; debounce ++)
                  			{
                   	  			_delay(250); //DELAY FOR 250 INSTRUCTION CYCLES
                   			}	
           		}
			if( RC1 == 0 ) //PROG_DN
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
							
							rdfl = 1;
						}
					if(cnt == 0)
						{
							for (debounce = 0; debounce <= 200; debounce ++)
                    			{
                     	  			_delay(20000); //DELAY FOR 250 INSTRUCTION CYCLES
                   	    		}
							cnt = cnt + 1;	
						}
				 	  else	
						{
						  		
			         		for (debounce = 0; debounce <= 100; debounce ++)
                  				{
                     	  			_delay(3000); //DELAY FOR 250 INSTRUCTION CYCLES
                   	    		}	
						}
				
               //----------------- CUT UP --------------------
				}
			if(( RC2 == 0 ) && ( cnt == 0 ))
		        {
		 			for (debounce = 0; debounce <= 99; debounce ++)
                    	{
               	  			_delay(250); //DELAY FOR 250 INSTRUCTION CYCLES
               			}
                		
				}
			if( RC2 == 0 ) //CUT UP
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
                    			  		_delay(20000); //DELAY FOR 250 INSTRUCTION CYCLES
                    		    	}
								cnt = cnt + 1;	
							}
					 	else	
							{
						  		
				         		for (debounce = 0; debounce <= 100; debounce ++)
                   					{
                   			  			_delay(3000); //DELAY FOR 250 INSTRUCTION CYCLES
                		    		}	
							}
					

					//---- -----------CUT DN ---------------------------------

				}
			if(( RC3 == 0 ) && ( cnt == 0 ))
				{
				 		
					for (debounce = 0; debounce <= 99; debounce ++)
                    	{
                     		 _delay(250); //DELAY FOR 250 INSTRUCTION CYCLES
               			}
       		    }
			if( RC3 == 0 ) //CUT DN
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
                     	  			_delay(20000); //DELAY FOR 250 INSTRUCTION CYCLES
                    			}
							cnt = cnt + 1;	
						}
					 else	
						{
						  		
					        for (debounce = 0; debounce <= 100; debounce ++)
                   				{
               			  			_delay(3000); //DELAY FOR 250 INSTRUCTION CYCLES
               		    		}	
						}			
	
						//---------------CUT MODE --------


				}
			if(( RD0 == 0 ) && ( cnt == 0 ))
				{
				 		
					for (debounce = 0; debounce <= 99; debounce ++)
               			{
                     	 	 _delay(250); //DELAY FOR 250 INSTRUCTION CYCLES
                    	}
                }
			if( RD0 == 0 ) //CUT MODE
				{
					cutmode = cutmode + 1;
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
					if(cutmode ==0x04)
						{ 
							cutmode = 0xFF;
							_delay(25000);
						}
					
					for (debounce = 0; debounce <= 200; debounce ++)
                   		{   	{
                     	 		_delay(25000); //DELAY FOR 250 INSTRUCTION CYCLES
                    		    }
						}
						//---------------  COAG UP -----------------
				}
			if( RD1 == 0 ) //COAG 
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
									
								wrfl = 1;
									
								}
		 					if(cnt == 0)
								{
									for (debounce = 0; debounce <= 200; debounce ++)
                    					{
                     			  			_delay(20000); //DELAY FOR 250 INSTRUCTION CYCLES
                   		    		}
									cnt = cnt + 1;	
								}
					 	  	else	
								{
						  		
					         		for (debounce = 0; debounce <= 100; debounce ++)
                    					{
                     			  			_delay(3000); //DELAY FOR 250 INSTRUCTION CYCLES
                    		    		}
								}
							
			 							
								
				 //---------------- COAG DN ----------------------
						
				
                }
			if( RD2 == 0 ) //COAG DN
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

									wrfl = 1;
								}
		 					if(cnt == 0)
								{
									for (debounce = 0; debounce <= 200; debounce ++)
                    					{
                     			  			_delay(20000); //DELAY FOR 250 INSTRUCTION CYCLES
                    		    		}
									cnt = cnt + 1;	
								}
					 	  	else	
								{
						  		
					         	   for (debounce = 0; debounce <= 100; debounce ++)
                    				  {
                     			 		 _delay(3000); //DELAY FOR 250 INSTRUCTION CYCLES
                    		    	  }
								}
							
									
												
				}
						//---------------COAG MODE ---------------------
						
								
			if(( RD3 == 0 ) && ( cnt == 0 ))
				{
				 		
					for (debounce = 0; debounce <= 200; debounce ++)
                    	{
                     	  _delay(25000); //DELAY FOR 250 INSTRUCTION CYCLES
                    	}
               	}
			if( RD3 == 0 ) 
				{
					coagmode = coagmode + 1;

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

					if( coagmode == 0x03 )
						{
							coagmode = 0xFF;
							_delay(25000);
						}
						
					// ------------   BIPO UP   -----------------         -------
				}		
			if(( RC4 == 0 ) && ( cnt == 0 ))
				{
				 		
					for (debounce = 0; debounce <= 99; debounce ++)
                    	{
                     	  	_delay(250); //DELAY FOR 250 INSTRUCTION CYCLES
                    	}
              	}
			if( RC4 == 0 ) 
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
                     			  	_delay(20000); //DELAY FOR 250 INSTRUCTION CYCLES
                    		   	}
							cnt = cnt + 1;	
						}
					 else	
						{
						  		
					       for (debounce = 0; debounce <= 100; debounce ++)
                    			{
                     			  	_delay(3000); //DELAY FOR 250 INSTRUCTION CYCLES
                    		   	}	
						}

					       	// --------------  BIPO DN ------------------

				}
			if(( RC5 == 0 ) && ( cnt == 0 ))
				{
				 		
						for (debounce = 0; debounce <= 99; debounce ++)
                    		{
                     	 	 _delay(250); //DELAY FOR 250 INSTRUCTION CYCLES
                    		}
                }
			if( RC5 == 0 ) 
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
                     			 	 _delay(20000); //DELAY FOR 250 INSTRUCTION CYCLES
                    		   		}
								cnt = cnt + 1;	
							}
			 			else	
							{
						  		
					         	for (debounce = 0; debounce <= 100; debounce ++)
                    				{
                     			  		_delay(3000); //DELAY FOR 250 INSTRUCTION CYCLES
                    		    	}	
							}
		
             	
							//------------ BIPO MODE ------

				
				}
			if(( RC6 == 0 ) && ( cnt == 0 ))
				{
				 		
					for (debounce = 0; debounce <= 99; debounce ++)
               			{
                     	 	 _delay(250); //DELAY FOR 250 INSTRUCTION CYCLES
                    	}
               	}
			if( RC6 == 0 ) //BIPO MODE
				{
					bipomode = bipomode + 1;
						

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
						
					if( bipomode == 0X03 )
						{
							bipomode = 0xFF;
							_delay(25000);
				    	}
					for (debounce = 0; debounce <= 200; debounce ++)
                    	{
                     	 	_delay(25000); //DELAY FOR 250 INSTRUCTION CYCLES
                    	
	   			    	}
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
/*void wrbyte()
   {	
//----- -START BYTE -----
unsigned char y = 0;
		TRISB = 0x00;
		txbuf = 0xA0;		
		RB1 = 1;   //SDA	
		_delay(5);			
		RD6 = 1;   //CLK
		_delay(20);
		RB1 = 0;
		_delay(20);
		RD6 = 0;

//--------SEND THE BYTE --
  
		TRISB = 0x00;
	     y = 0;
		for( y = 0; y <= 7; y ++ )
			{	
			txbuf = txbuf << 1;
			if(CARRY == 1)
				{
			    	RB1 = 1;
				}
			else
				{
					RB1 = 0;
				}
			_delay(20);
			RD6 = 1;
	    	_delay(20);
			RD6 = 0;
			_delay(20);							
			}

//------   ACK  ---

			TRISB = 0x02;
			RD6 = 0;  
			RD6 = 1;
			_delay(20);
			RD6 = 0;
			_delay(5);
	
//--     ADDRH ----

			TRISB = 0x00;
		   y = 0;
		for( y = 0; y <= 7; y ++ )
			{	
			addrh = addrh << 1;
			if(CARRY == 1)
				{
			    	RB1 = 1;
				}
			else
				{
					RB1 = 0;
				}
			_delay(20);
			RD6 = 1;
	    	_delay(20);
			RD6 = 0;
			_delay(20);							
			}

//------   ACK  ---

			TRISB = 0x02;
			RD6 = 0;  
			RD6 = 1;
			_delay(20);
			RD6 = 0;
			_delay(5);
										
			
	
//-------- ADDRL ----

			TRISB = 0x00;
			 y = 0;
		for( y = 0; y <= 7; y ++ )
			{	
			addrl = addrl << 1;
			if(CARRY == 1)
				{
			    	RB1 = 1;
				}
			else
				{
					RB1 = 0;
				}
			_delay(20);
			RD6 = 1;
	    	_delay(20);
			RD6 = 0;
			_delay(20);							
			}

//------   ACK  ---

			TRISB = 0x02;
			RD6 = 0;  
			RD6 = 1;
			_delay(20);
			RD6 = 0;
			_delay(5);
	
//----    DATAO ---
			TRISB = 0x00;
			 y = 0;
		for( y = 0; y <= 7; y ++ )
			{	
			datao = datao << 1;
			if(CARRY == 1)
				{
			    	RB1 = 1;
				}
			else
				{
					RB1 = 0;
				}
			_delay(20);
			RD6 = 1;
	    	_delay(20);
			RD6 = 0;
			_delay(20);							
			}

//------   ACK  ---

			TRISB = 0x02;
			RD6 = 0;  
			RD6 = 1;
			_delay(20);
			RD6 = 0;
			_delay(5);

//.......  BSTOP ............
			TRISB = 0x00;
			RB1 = 0;
			_delay(20);
			RD6 = 1;
			_delay(20);
			RB1 = 1;
			_delay(20);
			RD6 = 0;  //////////////////////////////////?????????
			return;
   }

void rdbyte()
   {	
		//----- -START BYTE -----

	unsigned char x = 0;
		rxbuf = 0;
		 TRISB = 0x02;  //RB1 INPUT
		txbuf = 0xA0;		
		RB1 = 1;   //SDA	
		_delay(20);			
		RD6 = 1;   //CLK
		_delay(20);
		RB1 = 0;
		_delay(20);
		RD6 = 0;
		 
//--------SEND THE CONTROL BYTE --
  
		TRISB = 0x00;

	       x = 0;
		for( x = 0; x <= 7; x ++ )
			{	
			txbuf = txbuf << 1;
			if(CARRY == 1)
				{
			    	RB1 = 1;
				}
			else
				{
					RB1 = 0;
				}
			_delay(20);
			RD6 = 1;
	    	_delay(20);
			RD6 = 0;
			_delay(20);							
			}

//------   ACK  ---

			TRISB = 0x02;
			RD6 = 0;  
			RD6 = 1;
			_delay(20);
			RD6 = 0;
			_delay(5);
	
//--     ADDRH ----
			TRISB = 0x00;
		   x = 0;
		for( x = 0; x <= 7; x ++ )
			{	
			addrh = addrh << 1;
			if(CARRY == 1)
				{
			    	RB1 = 1;
				}
			else
				{
					RB1 = 0;
				}
			_delay(20);
			RD6 = 1;
	    	_delay(20);
			RD6 = 0;
			_delay(20);							
			}

//------   ACK  --

			TRISB = 0x02;
			RD6 = 0;  
			RD6 = 1;
			_delay(20);
			RD6 = 0;
			_delay(5);
	
//-------- ADDRL ----

			TRISB = 0x00;
			 x = 0;
		for( x = 0; x <= 7; x ++ )
			{	
			addrl = addrl << 1;
			if(CARRY == 1)
				{
			    	RB1 = 1;
				}
			else
				{
					RB1 = 0;
				}
			_delay(20);
			RD6 = 1;
	    	_delay(20);
			RD6 = 0;
			_delay(20);							
			}

//------   ACK  ---

			TRISB = 0x02;
			RD6 = 0;  
			RD6 = 1;
			_delay(20);
			RD6 = 0;
			_delay(5);

			//----- -START BYTE -----

		TRISB = 0x00;
				
		RB1 = 1;   //SDA	
		_delay(5);			
		RD6 = 1;   //CLK
		_delay(20);
		RB1 = 0;
		_delay(20);
		RD6 = 0;

//--------SEND THE CONTROL BYTE --

  			TRISB = 0x00;
			txbuf = 0xA1;
	      x = 0;
		for( x = 0; x <= 7; x ++ )
			{	
			txbuf = txbuf << 1;
			if(CARRY == 1)
				{
			    	RB1 = 1;
				}
			else
				{
					RB1 = 0;
				}
			_delay(20);
			RD6 = 1;
	    	_delay(20);
			RD6 = 0;
			_delay(20);							
			}

//------   ACK  ---

			TRISB = 0x02;
			RD6 = 0;  
			RD6 = 1;
			_delay(20);
			RD6 = 0;
			_delay(5);
	
//--     RECEIVE ----
			TRISB =0x02;
			rxbuf = 0x00;
			CARRY = 0;
	       x = 0;
		for(x = 0; x <= 7; x ++ )
	    		{
					if ( RB1 == 1 )
  						{
	                   		 #asm
							BSF  STATUS,0
							RLCF  _rxbuf,f
							#endasm
							//	rxbuf = rxbuf | 0x01;
							//	rxbuf = rxbuf << 1;
				
			  			}      
			     	 else
			    		{ 
				    		#asm
				     		BCF   STATUS,0
				     		RLCF _rxbuf,f
				    		#endasm
						}
					RD6 = 0;
			    	_delay(20);
		     	    RD6 = 1;
	    	        _delay(20);
			       RD6 = 0;
			      _delay(20);						
				}
				txbuf = txbuf | 0x80;
				TRISB = 0x00;
				if (txbuf & 0x80) ///?????????????????????
					{
						RB1 = 1;
						_delay(20);
					}
					else
					{
						RB1 = 0;
						_delay(20);
					}
					RD6 = 1;
					_delay(20);
					RD6 = 0;
					_delay(5);		 
					return;
   }
 void rdall()
   {			
				addrh = progno;
				addrl = 0x00;
				rdbyte();
				cutpowerh = rxbuf;

				addrh = progno;
				addrl = 1;
				rdbyte();
				cutpowerl = rxbuf;

				addrh = progno;
				addrl = 2;
				rdbyte();
				cutmode = rxbuf;

				addrh = progno;
				addrl = 3;
				rdbyte();
				coagpower = rxbuf;

				addrh = progno;
				addrl = 4;
				rdbyte();
			    coagmode = rxbuf;

				addrh = progno;
				addrl = 5;
				rdbyte();
				bipopower = rxbuf;

				addrh = progno;
				addrl = 6;
				rdbyte();
				bipomode = rxbuf;


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
			
//-------COAG DISPLAY ---------------------

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
   }
 */  

#include <xc.h>
#include "pins.h"
#include "cautery.h"
#include "my_serial.h"
#include <math.h>

void init_Values()
   {
      Cut_Power = 0x0000;
      Coag_Power = 0x0000;
      Bi_Power = 0x0000;
      
      Cut_Mode = 0x00;
      Coag_Mode = 0x00;
      Bi_Mode = 0x00;
      
      load_Digipot(25, 2);
   }
   
void cut_Operation()
   {
      while(Cut == Off)
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
				if( Cut_Mode == 0 )  // PURE
					{
						_delay(5);      //OFF TIME
					}
										
				if( Cut_Mode == 1 )  // BLEND 1
					{
						_delay(40);      //OFF TIME
					}
			   			      
			   if( Cut_Mode == 2 ) //BLEND 2
					{
						_delay(60);      //OFF TIME
					}
									
				if( Cut_Mode == 3 ) //ENDO
					{
						_delay(100);      //OFF TIME
					}
			}
		Pulses = Off;
   }  
   
void coag_Operation()
   {
      while(Coag == Off)
			{
			   if(Coag_Mode == 0)
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
										
				if( Coag_Mode == 1 )   // FULGRATE 1
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
											
				if( Coag_Mode == 2 )   // DISSICATE
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
		Pulses = Off;
   }    
   
void bi_Operation()
   {
      while(Bipo == Off)
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
												
				if(Bi_Mode == 0) 
					{
						_delay(100);
					}	
				if(Bi_Mode == 1)
					{		
						_delay(600);
					}
			}
		Pulses = Off;
   }
   
void liga_Operation()
   {
      char dry_fl = 0;
      unsigned int wait = 0;
		while(Liga == Off)
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
						if(wait > 50000)
							{	
								if(Sens == On)
									{
										dry_fl = 1;
										put_char('T');
									} 	
							}
					}
				Pulses = Off;
				_delay(600);						
			}
   }
   
void load_Digipot(int Power, char Mode)
   {
      char temp;
      char R1, i, j;
      
      if(Mode == 1 || Mode == 3)
         {
            temp = (char)sqrt(Power);
		      temp = temp * 10;
		      temp = ~temp;
		   }
		else if(Mode == 4)
		   {
   		   temp = (char)sqrt(Power);
		      temp = temp * 15;
		      temp = ~temp;
   		}  
   	else 
		   {
		      temp = (char)sqrt(Power);
		      temp = temp * 17;
		      temp = ~temp;
		   }
		 
		CS = 0;   //CS
		_delay(25);
		R1 = 0x11;
		for( j = 0;j <= 7;j ++ )
			{
				R1 = R1 << 1;
				if(CARRY == 1)
					{
						DATA = 1;
					}
				if(CARRY != 1)
					{
						DATA = 0;
					}
					
				CLK = On;
				_delay(5);
				CLK = Off;
				DATA = 0;	
			}
		for(i = 0;i <= 7;i ++ )
			{
				temp = temp << 1;
				if(CARRY == 1)
					{
						DATA = 1;
					}
				if(CARRY != 1)
					{
						DATA = 0;
					}
				CLK = On;
				_delay(5);
				CLK = Off;
				DATA = 0;
			}
		CS = 1;
		//POWER STORED
   }            

// RA5 = LL
// RA3 = LU
// RA2 = UL
// RA1 = UU
// RC4 = RELAY
// RC5 = Motor LED

#include <xc.h>

char txr_not_received = 0;

void main()
   {
      char count = 0, level_check = 0, lp_flag = 0, motor_flag = 0;
      char uu = 0, ul = 0, lu = 0, ll = 0, dry_run = 0;
      
      ADCON1 = 0x06; //ALL DIGITAL
      TRISA = 0x00;  //ALL OUTPUTS
      TRISB = 0x01;  //RB0 IS INPUT, ALL OTHER OUTPUTS
      TRISC = 0x00;  //ALL OUTPUTS
      
      OPTION_REG = 0xC0;	// Set the Interrupt on falling edge
      INTCON = 0x90;	// Enable GIE, INTE
      
      PORTB = 0x00;
      PORTA = 0x00;
      PORTC = 0x00;
      
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
      
      while(1)
         {
            TRISA = 0x20;   //ONLY RA5 INPUT 0010 0000
            PORTA = 0xDF;; //MAKE LU = 1
            _delay(1000);   //1 MS WAIT
            //CHECK LL = 1 OR NOT
            if( RA5 == 1 )
               {
                  _delay(1000);
				  		if( RA5 == 1 )
                     {
                        ll = 1;
                        RB4 = 1; //TURN ON LL LED
                     }
               }
            else
               {
                  ll = 0;
                  RB4 = 0; //TURN OFF LL LED
               }
         
            //MAKE ALL PROBE 0
            TRISA = 0x00;  //ALL OUTPUTS
            PORTA = 0x00; //OFF ALL PROBES
            
            TRISA = 0x04;  //ONLY RA2 INPUT 0000 0100
            PORTA = 0xFB; //MAKE UU = 1
            _delay(1000);

            //CHECK UL = 1 
            if( RA2 == 1 )
               {
                  _delay(1000);
                  if( RA2 == 1 )
                     {
                        ul = 1;
                        RB2 = 1; //TURN ON UL LED
								//Check dry run. If it is on turn it off
								if(dry_run == 1)
									{
										dry_run = 0;
									}
                     }
               }
            else
               {
                  ul = 0;
                  RB2 = 0; //TURN OFF UL LED
				  		//Check dry run if it on turn off motor and remain there until reset
				  		if(dry_run == 1)
							{
								RC4 = 0;   //stop();
                        lp_flag = 0;
                        motor_flag = 0;
								RC5 = 0;
								//Blink dry run led
								while(1)
									{
										RB7 = 1;
										_delay(1000000);  //DELAY OF 1 SECOND
										RB7 = 0;
										_delay(1000000);  //DELAY OF 1 SECOND
									}
							}
               }
            
            //MAKE ALL PROBE 0
            TRISA = 0x00;  //ALL OUTPUTS
            PORTA = 0x00; //OFF ALL PROBES
            
            TRISA = 0x08;   //ONLY RA3 INPUT 0000 1000
            PORTA = 0xF7; //MAKE LL = 1
            _delay(1000);
            //CHECK LU = 1 OR NOT
            if( RA3 == 1 )
               {
                  _delay(1000);
                  if( RA3 == 1 )
                     {
                        lu = 1;
                        RB3 = 1; //TURN ON LU LED
                     }
               }
            else
               {
                  lu = 0;
                  RB3 = 0; //TURN OFF LU LED
               }
               
            //MAKE ALL PROBE 0
            TRISA = 0x00;  //ALL OUTPUTS
            PORTA = 0x00; //OFF ALL PROBES
      
            TRISA = 0x02;  //ONLY RA1 IS INPUT 0000 0010
            PORTA = 0xFD; //MAKE UL = 1
            _delay(1000);   //1 MS WAIT
            //CHECK UU = 1 OR NOT
            if( RA1 == 1 )
               {
                  _delay(1000);
                  if( RA1 == 1 )
                     {
                        uu = 1;
                        RB1 = 1; //TURN ON UU LED
                     }
               }
            else
               {
                  uu = 0;
                  RB1 = 0; //TURN OFF UU LED
               }
              
            //MAKE ALL PROBE 0
            TRISA = 0x00;  //ALL OUTPUTS
            PORTA = 0x00; //OFF ALL PROBES
      
            if( motor_flag == 1 )
               {
                  txr_not_received ++;
                  
                  if( uu == 0 && ll == 1 )
                     {
                        level_check = 1;
                     }
                  else
                     {
                        level_check = 0;
                     }
               }
            else 
               {
                  if( (uu == 0 && ul == 0) && (lu == 1 && ll == 1) )
                     {
                        level_check = 1;
                     }
                  else 
                     {
                        level_check = 0;
                     }
               }
            
            if( level_check == 1 && txr_not_received <= 20 )
               {
                   //Check level & phase flag if it is 0 then motor was off due to Power faillure or level failure Start it again
                   if( lp_flag == 0 )
                      {
                         RC4 = 1;   //start()
                         lp_flag = 1;
                         motor_flag = 1;
						 		 RC5 = 1;
						 		 dry_run = 0;
                      }
               }
            //If level or Phase is not ok then stop the motor & set it's flag to 0
            else
               {
                   //Level or Power is fail check that the motor was running or not if it was running stop it now
                   if( lp_flag == 1 )
                      {
                         RC4 = 0;   //start();
                         lp_flag = 0;
                         motor_flag = 0;
						 		 RC5 = 0;
                      }
               }
            //Wait for 15 seconds
            for( count = 0; count < 15; count++ )
               {
                  _delay(1000000);  //DELAY OF 1 SECOND
               }
         }
   }
   
// Interrupt
void interrupt Tx_Received(void)
   {
		txr_not_received = 0;
   }
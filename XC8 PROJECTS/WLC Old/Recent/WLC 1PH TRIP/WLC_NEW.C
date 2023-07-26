#include <xc.h>

#define LL_Prob RA5
#define LU_Prob RA3
#define UL_Prob RA2
#define UU_Prob RA1

#define UU_LED RB1
#define UL_LED RB2
#define LU_LED RB3
#define LL_LED RB4

#define Relay RC4
#define Motor_LED RC5

#define Dry_Run RB7
#define Dry_Run_LED RB6

#define On 1
#define Off 0
#define Full 1
#define Empty 0
#define OK 1
#define Fail 0

char txr_not_received = 0;
char uu = 0, ul = 0, lu = 0, ll = 0;
char count = 0, level_check = 0, lp_flag = 0, motor_flag = 0, DRY_RUN_NEEDED = On, Dry_Run_Timer = 0;

void main()
   {
      ADCON1 = 0x06; //ALL DIGITAL
      TRISA = 0x00;  //ALL OUTPUTS
      TRISB = 0x81;  //RB0 AND RB7 IS INPUT, ALL OTHER OUTPUTS
      TRISC = 0x00;  //ALL OUTPUTS

	   OPTION_REG = 0xC0;	// Set the Interrupt on falling edge
      INTCON = 0x90;	// Enable GIE, INTE
      
      PORTB = 0x00;
      PORTA = 0x00;
      PORTC = 0x00;
      
      for(count = 0; count <= 4; count++)
         {
            PORTB = 0xFF;
            _delay(1000000);  //DELAY OF 1 SECOND
            PORTB = 0x00;
            _delay(1000000);  //DELAY OF 1 SECOND
         }  
      count = 0;  //Reset count for reuse 
      
      while(1)
         {      
            //If motor is running
            if( motor_flag == On )
               {
                  txr_not_received ++;
                  
                  if( uu == Empty && ll == Full )
                     {
                        level_check = OK;
                     }
                  else
                     {
                        level_check = Fail;
                     }
               }
            //If motor is stoped
            else 
               {
                  if( (uu == Empty && ul == Empty) && (lu == Full && ll == Full) )
                     {
                        level_check = OK;
                     }
                  else 
                     {
                        level_check = Fail;
                     }
               }
            
            if( level_check == OK && txr_not_received <= 20 )
               {
                   //Check level & phase flag if it is 0 then motor was off due to Power faillure or level failure Start it again
                   if( lp_flag == Off )
                      {
                         Relay = On;   //start()
                         lp_flag = On;
                         motor_flag = On;
						 		 Motor_LED = On;
                      }
               }
            //If level or Phase is not ok then stop the motor & set it's flag to 0
            else
               {
                   //Level or Power is fail check that the motor was running or not if it was running stop it now
                   if( lp_flag == On )
                      {
                         Relay = Off;   //stop();
                         lp_flag = Off;
                         motor_flag = Off;
						 		 Motor_LED = Off;
                      }
               }
            
            //Check Dry Run while motor is running
				if(DRY_RUN_NEEDED == On && Dry_Run == Off && motor_flag == On)
					{
   					Dry_Run_Timer++;
   					if(Dry_Run_Timer > 6)
   						{
      						//Dry Run is on for 2 minutes. Off the motor
      						Relay = Off;   //stop();
                        lp_flag = Off;
                        motor_flag = Off;
						 		Motor_LED = Off;
						 		while(1)
						 		   {
   						 		   //Remain here untill reset
   						 		   Dry_Run_LED = On;
                              _delay(1000000);  //DELAY OF 1 SECOND
                              Dry_Run_LED = Off;
                              _delay(1000000);  //DELAY OF 1 SECOND
   						 		}   
							}
					}
				else
					{
   					Dry_Run_Timer = 0;
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
		
		//MAKE ALL PROBE 0
      TRISA = 0x00;  //ALL OUTPUTS
      PORTA = 0x00; //OFF ALL PROBES
      
      TRISA = 0x04;  //ONLY RA2 INPUT 0000 0100

      //CHECK UL = 1 
      if( UL_Prob == On )
         {
            _delay(1000);
            if( UL_Prob == On )
               {
                  ul = Full;
               }
         }
      else
         {
            ul = Empty;
         }
            
      //MAKE ALL PROBE 0
      TRISA = 0x00;  //ALL OUTPUTS
      PORTA = 0x00; //OFF ALL PROBES
      
      TRISA = 0x02;  //ONLY RA1 IS INPUT 0000 0010
      
      //CHECK BOTH PROBS IN WATER
      if( UU_Prob == On )
         {
            _delay(1000);
            if( UU_Prob == On )
               {
                  uu = Full;
                  ul = Full;
               }
         }
      //UU IS OUT OF WATER
      else
         {
            uu = Empty;
         }
      
      //Turn on or off led according to uu & ul
      if(uu == Full)
      	{
	      	UU_LED = On;
      	}
      else
      	{
      		UU_LED = Off;
      	}
      	
      if(ul == Full)
      	{
	      	UL_LED = On;
      	}
      else
      	{
      		UL_LED = Off;
      	}
      	
      //MAKE ALL PROBE 0
      TRISA = 0x00;  //ALL OUTPUTS
      PORTA = 0x00; //OFF ALL PROBES
		
		TRISA = 0x20;   //ONLY RA5 INPUT 0010 0000
      LU_Prob = On;  //PORTA = 0x08; //MAKE LU_PROB = ON	0000 1000
      _delay(1000);   //1 MS WAIT
      //CHECK LL_PROB = ON OR NOT
      if( LL_Prob == On )
         {
            _delay(1000);
				if( LL_Prob == On )
               {
                  ll = Full;
               }
         }
      else
         {
            ll = Empty;
         }
         
      //MAKE ALL PROBE 0
      TRISA = 0x00;  //ALL OUTPUTS
      PORTA = 0x00; //OFF ALL PROBES
            
      TRISA = 0x08;   //ONLY RA3 INPUT 0000 1000
      LL_Prob = On;  //PORTA = 0x20; //MAKE LL_PROB = ON	0010 0000
      _delay(1000);
      //CHECK LU_PROB = ON OR NOT
      if( LU_Prob == On )
         {
            _delay(1000);
            if( LU_Prob == On )
               {
                  lu = Full;
               }
         }
      else
         {
            lu = Empty;
         }
               
      //MAKE ALL PROBE 0
      TRISA = 0x00;  //ALL OUTPUTS
      PORTA = 0x00; //OFF ALL PROBES
            
      //Turn on or off led according to lu & ll
      if(lu == Full)
      	{
	      	LU_LED = On;
      	}
      else
      	{
      		LU_LED = Off;
      	}
      	
      if(ll == Full)
      	{
	      	LL_LED = On;
      	}
      else
      	{
      		LL_LED = Off;
      	}
      //Reset interrupt flag
      INTF = Off;
   }
#include <xc.h>
#include "pins.h"
#include "audio_player.h"
#include "dtmf_lib.h"
#include "motor.h"
#include "ivr.h"

#define _XTAL_FREQ 4000000

void press_button();
char welcome_user();
char get_user_input(char group);

void main()
   {
      TRISA = 0x00;  //All output
      TRISB = 0xFF;  //All input
      TRISC = 0x47;  //0100 0111
      ADCON1 = 0x06;	// All Digital
      PORTA = 0x00;
      
      char timer = 0;
      char Dry_Run_Timer = 0;
      char count = 0;
      
      //LED Blinking to check the crystal
		for(count = 0; count <= 10; count++)
			{
				Motor_LED = On;
				_delay(1000000);  //1SEC DELAY
				Motor_LED = Off;
				_delay(1000000);  //1SEC DELAY
			}
			
		init_DTMF();	
			
		//Read Motor Flag
		MOTOR_FLAG = (char)eeprom_read(11);
		if(MOTOR_FLAG != 0 && MOTOR_FLAG != 1)
			MOTOR_FLAG = 0;	//Default
      
      while(1)
         {
            while(phone_received() == 0)
               {
                  //Remain here until phone rings and do all motor related tasks
						if(MOTOR_FLAG == 1)
							{
								if(timer == 150)
									{		
										timer = 0;
										if(phase_check() == 1)
											{
												if(LP_FLAG == 0)
													{
														motor_start();
														LP_FLAG = 1;
													}
											}
										else
											{
												if(LP_FLAG == 1)
													{
														motor_stop();	
														LP_FLAG = 0;
													}
											}
											
										//Check Dry Run
										if(Dry_Run == Off)
										   {
   										   Dry_Run_Timer++;
   										   if(Dry_Run_Timer == 8)
   										      {
      										      //Dry Run is on for 2 minutes. Off the motor
      										      motor_stop();
      										      MOTOR_FLAG = 0;
												      LP_FLAG = 0;
												      Dry_Run_Timer = 0;
												   }
										   }
										else
										   {
   										   Dry_Run_Timer = 0;
   										}   
									}
								timer++;
							}
					}
			   //Loop is terminated as phone is ringing
			   //Receive phone
			   char input;
			   char res;
			   char repeat = 1;
			   char chances = 0;
			   
			   //Welcome user and check password
			   char valid_user = welcome_user();
			   
			   if(valid_user == 1)
			      {
   			      if(phase_check() == 0)
   			         {
      			         //Inform user about power failure and cut the phone
      			         res = power_message();
      			         //2 Sec delay
      			         res = thanks_message();
      			         press_button();
      			      }
      			   else
      			      {
         			      //Turn On Motor
         			      if(MOTOR_FLAG == 0)
         			         {
            			         while(repeat == 1)
            			            {
            			               input = get_user_input(0);
            			               chances++;
            			               
            			               //No input is received from user then cut the call
            			               if(input == Message_End)
            			                  repeat = 0; //Terminate loop
            			                  
               			            //Password change is requested
               			            if(input == 0x06)
               			               {
                  			               res = change_password();
                  			               //Password not changed. Cut the phone
                  			               if(res != Change_OK)
                  			                  repeat = 0; //Terminate loop
               			                  else
               			                     {
                  			                     //Play Password changed message
                  			                     play_message(10);
               			                        repeat = 0; //Terminate loop
                  			                  }         
                  			            }   
                  			         
                  			         //Motor On requested
                  			         if(input == 0x02)
                  			            {
                     			            if(phase_check() == 0)
   			                                 {
      			                                 //Inform user about power failure and cut the phone
      			                                 res = power_message();
      			                                 repeat = 0; //Terminate loop
      			                              }
      			                           else
      			                              {
                     			                  //Turn On Motor
                     			                  motor_start();
                     			                  MOTOR_FLAG = 1;
                     			                  LP_FLAG = 1;
                     			                  //__delay_ms(1000);
                     			                  //Play motor on message
                     			                  play_message(4);
               			                        repeat = 0; //Terminate loop
               			                     }   
               			               }
               			               
               			            //No valid input is received for 3 times
               			            if(chances >= 3)
               			               repeat = 0;   //Terminate loop
               			         }
               			      //Play thanks message
               			      __delay_ms(1000); //2 Sec Delay
               			      res = thanks_message();
               			      //Cut the phone
               			      press_button();               
                  		   }
                  		//Turn Off Motor   
                  		else
                  		   {
                     		   while(repeat == 1)
            			            {
            			               input = get_user_input(1);
            			               chances++;
            			               
            			               //No input is received from user then cut the call
            			               if(input == Message_End)
            			                  repeat = 0; //Terminate loop
            			                  
               			            //Password change is requested
               			            if(input == 0x06)
               			               {
                  			               res = change_password();
                  			               //Password not changed. Cut the phone
                  			               if(res != Change_OK)
                  			                  repeat = 0; //Terminate loop
               			                  else
               			                     {
                  			                     //Play Password changed message
                  			                     play_message(10);
               			                        repeat = 0; //Terminate loop
                  			                  }         
                  			            }   
                  			            
                  			         //Motor Off requested
                  			         if(input == 0x01)
                  			            {
                     			             //Turn Off Motor
                     			             motor_stop();
                     			             MOTOR_FLAG = 0;
                     			             LP_FLAG = 0;
                     			             //__delay_ms(1000);
                     			             //Play motor on message
                     			             play_message(5);
               			                   repeat = 0; //Terminate loop  
               			               }
               			               
               			            //No valid input is received   
               			            if(chances >= 3)
               			               repeat = 0;
               			         }
               			      //Play thanks message
               			      //__delay_ms(2000); //2 Sec Delay
               			      res = thanks_message();
               			      //Cut the phone
               			      press_button();
                     		}   
            			}            
   			   }   
			}
	}
	
char welcome_user()
   {
      press_button();
      
      //Play welcome message
      char result;
      result = welcome_message();
      
      //__delay_ms(1000);
      
      //Get password from user
      result = check_password();
      
      if(result != Correct_Password)
         {
            //Inform user about wrong password
            play_message(8);
            //Remain here until message ends
            while(audio_stoped() == 0)
               {
               }
            //Give One more chance to enter password
            Latest_Input = 0xFF;
            result = check_password();
         }
         
       if(result == Correct_Password)
         return 1;
       else
         {
            //Play thank you message and cut the phone
            result = thanks_message(); 
            //Cut the phone
            press_button();
            return 0;
         }     
   }
   
char get_user_input(char group)
   {
      char result = Message_End;
      char attempts = 0;
      while(attempts < 3 && result == Message_End)
         {
            result = play_message_group(group);
            if(result == Message_End)
               {
                  //Wait for 10 Secs for input
               	//Or play the message once again
               	int Input_Timer = 0;
               	while(Input_Timer < 10000 && Latest_Input == 0xFF)
               		{
                  		__delay_ms(1); //1 ms delay
                  		Input_Timer++;
                  	}
                  //10 secs complete. Give one more chance to user to give an input	
                  if(Input_Timer >= 10000)
                  	attempts++;
                  else
                  	{
                     	//Input received. Copy it to result and terminate loop
                     	result = Latest_Input;
                     	Latest_Input = 0xFF;
                     }      
               }
         }
      return result;
   }      
      	
void press_button()
   {
      //Receive phone
      //Call_Receive = On;
      //__delay_ms(300);  //Delay 300ms. Same as pressing button
      //Call_Receive = Off;
      //__delay_ms(2000); //2 Sec delay to settel down
   }   
      
      
      
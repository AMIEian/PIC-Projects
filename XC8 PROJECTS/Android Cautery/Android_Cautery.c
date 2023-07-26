#include <xc.h>
#include "pins.h"
#include "cautery.h"
#include "my_serial.h"

#pragma config OSC=HSPLL, OSCS=OFF, PWRT=OFF, BOR=OFF, WDT=OFF, LVP=OFF

#define _XTAL_FREQ 40000000 //The speed of your internal(or)external oscillator

void MY_DELAY(int ms);

void main()
   {
      TRISA = 0xFF;  //All inputs
      TRISB = 0x00;  //All outputs
      TRISC = 0x80;  //Rx pin is input only
      ADCON1 = 0x06;	// All Digital
      
      init_Values();    //Initialise all powers and modes to 0
      //Initialise all output pins
      Pulses = Off;
      CS = On;
      CLK = Off;
      DATA = Off;
      BP_Relay = Off;
      Coag_Relay = Off;
      Receiver_LED = Off;
      Data_Error = Off;
      
      int addition = 0;
      unsigned char inact_flag = Off;
      char value = 0, multiplier = 1;
      char count;
      char communication;
      int  milis = 0;
	   unsigned char data_flag = Off;
	   unsigned char e_enable = Off;

      for(count = 0; count < 5; count++)
         {
            LED = On;
            MY_DELAY(1000); //1 sec delay
            LED = Off;
            MY_DELAY(1000); //1 sec delay
         }   
      count = 0;
      
      USARTInit();  //Initialise Serial communication with 9600
      
      while(1)
         {
            __delay_ms(1);
            milis++;
            if(inact_flag == Off && e_enable == On)
               {
                  if(milis >= 2000) 
                     {
                        milis = 0;
                        //Send command to tab to enable controls
                        put_char('N');
                        LED = ~LED;
                        communication = 'X';
                        communication = get_char();
                        if(communication == 'S')
                           Receiver_LED = ~Receiver_LED;                           
                     }   
               }   
            if(Inact == On)
               {
                  if(inact_flag == On)
                     {
                        put_char('K');
                        inact_flag = Off;
                     }
                  MY_DELAY(1);   //1/2 sec delay   
               }
            if(Cut == Off)
               {
                  __delay_ms(10);
                  if(Cut == Off)
                     {
                        if(Inact == Off)
                           {
                              if(inact_flag == Off)
                                 {
                                    put_char('I');
                                    inact_flag = On;
                                 }
                              MY_DELAY(500);   //1/2 sec delay   
                           }
                        else
                           {
                              data_flag = 0;
						            //Request tab for cut power and cut mode
                              put_char('A');
                              multiplier = 1;
                              //Get units, tens and hundreds from tab and calculate power from it
                              for(count = 0; count < 3; count++)
                                 {
                                    value = 0;
                                    addition = 0;
                                    value = get_char();
                                    value = value - 48;  //Convert ASCII to actual value
                                    if(value >= 0 && value <= 9)
                                       {
                                          //Value is number between 0 to 9
                                          addition = value * multiplier;
                                          Cut_Power = Cut_Power + addition;
                                          multiplier = multiplier * 10;
                                       }
							               else
									            data_flag = 1;  
                                 }
                              //Get cut mode value   
                              Cut_Mode = get_char();
						            if(Cut_Mode != 'X')
						               Cut_Mode = Cut_Mode - 48; //ASCII to real value
						            else
						               data_flag = 1;
                              if(data_flag == 0)
                                 {
                                    //Load digital pot with cut power
                                    load_Digipot(Cut_Power, 1);
                                    //Send command to tab to disable controls
                                    put_char('D');
                                    //Start cut operation
                                    cut_Operation();
                                 }   
                              //Cut operation is finished reset power and mode
                              init_Values();
                              MY_DELAY(50);
                              //Send command to tab to enable controls
                              put_char('E');   
                              MY_DELAY(50);
                              if(e_enable == Off)
                                 e_enable = On;
                              milis = 0;
                              //---------------Cut Operation Finished---------------//    
                           } 
                     }      
               }       
               
             if(Coag == Off)
               {
                  __delay_ms(10);
                  if(Coag == Off)
                     {
                        if(Inact == Off)
                           {
                              if(inact_flag == Off)
                                 {
                                    put_char('I');
                                    inact_flag = On;
                                 }
                              MY_DELAY(500);   //1/2 sec delay  
                           }
                        else
                           {
                              data_flag = 0;
                              //Request tab for coag power and coag mode
                              put_char('B');
                              multiplier = 1;
                              //Get units, tens and hundreds from tab and calculate power from it
                              for(count = 0; count < 3; count++)
                                 {
                                    value = 0;
                                    addition = 0;
                                    value = get_char();
                                    value = value - 48;  //Convert ASCII to actual value
                                    if(value >= 0 && value <= 9)
                                       {
                                          //Value is number between 0 to 9
                                          addition = value * multiplier;
                                          Coag_Power = Coag_Power + addition;
                                          multiplier = multiplier * 10;
                                       }   
                                    else 
                                       data_flag = 1;
                                 }
                              //Get coag mode value   
                              Coag_Mode = get_char();
                              if(Coag_Mode != 'X')
                                 Coag_Mode = Coag_Mode - 48; //ASCII to real value
                              else
                                 data_flag = 1;
                              if(data_flag == 0)
                                 {
                                    //Load digital pot with coag power
                                    load_Digipot(Coag_Power, 2);
                                    //Send command to tab to disable controls
                                    put_char('D');
                                    //Start coag operation
                                    Coag_Relay = On;  //Turn on coag relay
                                    _delay(25);
                                    coag_Operation();
                                 }   
                              //Coag operation is finished reset power and mode
                              init_Values();
                              //Turn off coag relay
                              Coag_Relay = Off;
                              MY_DELAY(50);
                              //Send command to tab to enable controls
                              put_char('E');
                              MY_DELAY(50);
                              if(e_enable == Off)
                                 e_enable = On;
                              milis = 0;
                              //---------------Coag Operation Finished---------------//   
                           } 
                     }        
               }
               
             if(Bipo == Off)
               {
                  __delay_ms(10);
                  if(Bipo == Off)
                     {
                        data_flag = 0;                 
                        //Request tab for bipolar power and bipolar mode
                        put_char('C');
                        multiplier = 1;
                        //Get units, tens and hundreds from tab and calculate power from it
                        for(count = 0; count < 3; count++)
                           {
                              value = 0;
                              addition = 0;
                              value = get_char();
                              value = value - 48;  //Convert ASCII to actual value
                              if(value >= 0 && value <= 9)
                                 {
                                    //Value is number between 0 to 9
                                    addition = value * multiplier;
                                    Bi_Power = Bi_Power + addition;
                                    multiplier = multiplier * 10;
                                 }   
                              else 
                                 data_flag = 1;
                           }
                        //Get bipolar mode value   
                        Bi_Mode = get_char();
                        if(Bi_Mode != 'X')
                           {
                              Bi_Mode = Bi_Mode - 48; //ASCII to real value
                              if(Bi_Mode == 2)
                                 Bi_Mode = 0;
                           }
                        else 
                           data_flag = 1; 
                        if(data_flag == 0)
                           {     
                              //Load digital pot with bipolar power
                              load_Digipot(Bi_Power, 3);
                              //Send command to tab to disable controls
                              put_char('D');
                              //Start bipolar operation
                              BP_Relay = On; //Turn on bipolar relay
                              _delay(25);
                              bi_Operation();
                           }   
                        //Bipolar operation is finished reset power and mode
                        init_Values();
                        //Turn off bipolar relay
                        BP_Relay = Off;
                        MY_DELAY(50);
                        //Send command to tab to enable controls
                        put_char('E');
                        MY_DELAY(50);
                        if(e_enable == Off)
                           e_enable = On;
                        milis = 0;
                        //---------------Bipolar Operation Finished---------------//   
                     }   
               }
               
            if(Liga == Off)
               {
                  __delay_ms(10);
                  if(Liga == Off)
                     {
                        data_flag = 0;                  
                        //Request tab for bipolar power and bipolar mode
                        put_char('L');
                        multiplier = 1;
                        //Get units, tens and hundreds from tab and calculate power from it
                        for(count = 0; count < 3; count++)
                           {
                              value = 0;
                              addition = 0;
                              value = get_char();
                              value = value - 48;  //Convert ASCII to actual value
                              if(value >= 0 && value <= 9)
                                 {
                                    //Value is number between 0 to 9
                                    addition = value * multiplier;
                                    Bi_Power = Bi_Power + addition;
                                    multiplier = multiplier * 10;
                                 }  
                              else 
                                 data_flag = 1; 
                           }
                        //Get bipolar mode value   
                        Bi_Mode = get_char();
                        Bi_Mode = 2;
                        if(data_flag == 0)
                           {
                              //Load digital pot with bipolar power
                              load_Digipot(Bi_Power, 4);
                              //Send command to tab to disable controls
                              put_char('D');
                              //Start liga operation
                              BP_Relay = On; //Turn on bipolar relay
                              _delay(25);
                              liga_Operation();
                              MY_DELAY(50);
                           }   
                        //Liga operation is finished reset power and mode
                        init_Values();
                        //Turn off bipolar relay
                        BP_Relay = Off;
                        MY_DELAY(50);
                        //Send command to tab to enable controls
                        put_char('E');
                        MY_DELAY(50);
                        if(e_enable == Off)
                           e_enable = On;
                        milis = 0;
                        //---------------Liga Operation Finished---------------//   
                     }   
               }     
         }
   }         

void MY_DELAY(int ms)
   {
      while(ms > 0)
         {
            __delay_ms(1);
            ms--;
         }
      return;
   }

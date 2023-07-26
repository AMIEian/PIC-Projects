#include <xc.h>

void interrupt tmr_int();
signed int timer = 0;

void main()
   {
      char trans_on = 1, breaker = 1;
      int voltage = 0, error = 0;
      
      TRISA = 0xFF;  //PORTA IS INPUT
      TRISB = 0x00;  //PORTB IS OUTPUT
      
      OPTION_REG = 0x81;   //TIMER0 SELECTED WITH 1:4 PRESCALER
      INTCON = 0xA0; //TIMER0 INTERRUPT ENABLE, TIMER STARTED
      
      ADCON1 = 0x8E; //ONLY AN0 IS ANALOG INPUT
      ADCON0 = 0x40; //FOSC / 8, AN0 ANLOG CHANEL
      
      RB0 = 1; //TURN ON TRANSISTOR
      RB1 = 0; //CIRCUIT BREAKER ON
      RB3 = 0; //COIL DIRECTION RELAY OFF
      
      while(1)
         {
            if(timer == 0)
               {
                  if(trans_on == 1)
                     {
                        //TAKE ANALOG READING
                        ADON = 1;   //TURN ON AD MODULE
                        GO_nDONE = 1;  //START CONVERSION
                        
                        while(GO_nDONE)
                           {
                              //WAIT HERE TILL CONVERSION IS IN PROGRESS
                           }
                        
                        voltage = ADRESH;
                        voltage = voltage << 8;
                        voltage = voltage + ADRESL;
                        
                        //IF VOLTAGE IS EXTREME
                        if(voltage > 290 || voltage < 140)
                           {
                              //TURN OFF THE CIRCUIT
                              RB1 = 0;
                              timer = 20;
                              breaker = 1;
                           }
                        
                        //IF VOLTAGE IS WITHIN THE RANGE
                        if(voltage >= 200 && voltage <= 240)
                           {
                              RB1 = 1; //TURN ON CIRCUIT
                              breaker = 0;   //TURN OFF BREAKER
                              //KEEP THE TRANSISTOR OSCILLATING AT CURRENT FREQUENCY
                              timer = error; //KEEP TURN OFF TIME ON CURRENT ERROR VALUE
                              RB0 = 0; //TURN OFF TRANSISTOR
                              trans_on = 0;
                           }
                           
                        //IF VOLTAGE IS BELOW 200 VOLTS
                        if(voltage < 200 && breaker == 0)
                           {
                              error = 200 - voltage;  //FIND THE ERROR
                              timer = error; //SET THE TRANSISTOR TURN OFF TIME ACCORDING TO ERROR
                              RB3 = 0; //CHANGE TRANSFORMER COIL CURRENT DIRECTION
                              RB0 = 0; //TURN OFF TRANSISTOR
                              trans_on = 0;
                           }
                           
                        //IF VOLTAGE IS ABOVE 240 VOLTS
                        if(voltage > 240 && breaker == 0)
                           {
                              error = voltage - 240;  //FIND THE ERROR
                              timer = error; //SET THE TRANSISTOR OFF TIME ACCORDING TO ERROR
                              RB3 = 1; //CHANGE TRANSFORMER COIL CURRENT DIRECTION
                              RB0 = 0; //TURN OFF TRANSISTOR
                              trans_on = 0;
                           }
                     }
                  else
                     {
                        RB0 = 1; //TURN ON TRANSISTOR
                        trans_on = 1;
                        timer = error; //SET THE TRANSISTOR ON TIME ACCORDING TO ERROR
                     }
               }
         }
   }
   
//THIS WILL FIRE AFTER EVERY 1 MILI SECOND
void interrupt tmr_int()
   {
      timer = timer - 1;   //DECREMENT TIMER
      //TIME CAN NOT BE NEGATIVE
      if(timer < 0)
         timer = 0;
      TMR0 = 0;    //RESET TMR0
      T0IF = 0;   //RESET INTERRUPT FLAG
      return;
   }
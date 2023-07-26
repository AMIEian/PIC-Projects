#include <xc.h>

#define LED PORTC

void interrupt tmr_int();
void MY_DELAY(char sec);

volatile unsigned char blink, count = 0, adr = 0, values[14] = {0x10,0x20,0x30,0x40,0x50,0x60,0x70,0x80,0x90,0x00,0x10,0x20,0x30,0x40};

void main()
   {
      unsigned char set_pressure = 0, set_flow = 0, portd_old_status = 0xFF, units = 0, tens = 0, debounce = 0;
      
      ADCON1 = 0x06; //ALL DIGITAL
      
      TRISE = 0x00;	//ALL OUTPUTS FOR ADDRESS SELECTION
      TRISB = 0x00;	//ALL OUTPUTS FOR DATA
      TRISD = 0xFF;  //ALL INPUTS FOR SWITCHES
      TRISC = 0x00;	//ALL OUTPUTS FOR DATA
      
      RCON = 0x9F;	//DISABLE INTERRUPT PRIORITY
      INTCON = 0xA0;	//ENABLE TIMER 0 INTERRUPT
      T0CON = 0xC2;	//ENABLE TIMER0 WITH 1 : 8 PRESCALAR
      TMR0 = 0x00;   //RESET TIMER
      //SELECT FIRST IC
      RB0 = 0;
      RB1 = 0;
      
      //LED blinking for 10 secs.
      for(blink = 0; blink < 5; blink ++)
         {
            LED = 0xFF;
            MY_DELAY(1);  //1SEC DELAY
            LED = 0x00;
            MY_DELAY(1);  //1SEC DELAY
         }
      
      while (1)
         { 
            //CHECK WHETHER ANY KEY IS PRESSED
            if( portd_old_status != PORTD )
               {
                  //DEBOUNCING DELAY FOR 10 MS.
                  for (debounce = 0; debounce <= 99; debounce ++)
                     {
                        _delay(250); //DELAY FOR 250 INSTRUCTION CYCLES
                     }
                  ////CHECK WHETHER KEY IS STILL PRESSED?   
                  if( portd_old_status != PORTD )
                     {
                        portd_old_status = PORTD;  //PRSERVE CURRENT VALUE OF PORTD TO CHECK NEXT CHANGE IN PORTD
                        switch( PORTD )
                           {
                              case 0xFE : //FLOW UP KEY IS PRESSED
                              //LIMIT THE HIGHEST FLOW TO 30
                              if( set_flow < 30 )
                                 {
                                    set_flow = set_flow + 1;   //INCREASE SET FLOW VALUE BY 1
                                    units = 0x00;  //RESET UNITS
                                    units = set_flow % 10;  //UPDATE UNIT VALUE OF SET FLOW
                                    units = units << 4;  //4 TIMES LEFT SHIFT TO SWAP NIBBLES
                                    values[5] = units;   //STORE THE VALUE IN DISPLAY ARRAY
                                    tens = 0x00;   //RESET TENS
                                    tens = set_flow / 10;   //UPDATE TENS VALUE OF SET FLOW
                                    tens = tens << 4; //4 TIME LEFT SHIFT TO SWAP NIBBLES
                                    values[4] = tens;   //STORE THE VALUE IN DISPLAY ARRAY
                                 }
                              break;         
                        
                              case 0xFD : //FLOW DOWN KEY IS PRESSED
                              //LIMIT THE LOWEST FLOW TO 0
                              if( set_flow > 0 )
                                 {
                                    set_flow = set_flow - 1;   //DECREASE SET FLOW VALUE BY 1
                                    units = 0x00;  //RESET UNITS
                                    units = set_flow % 10;  //UPDATE UNIT VALUE OF SET FLOW
                                    units = units << 4;  //4 TIMES LEFT SHIFT TO SWAP NIBBLES
                                    values[5] = units;   //STORE THE VALUE IN DISPLAY ARRAY
                                    tens = 0x00;   //RESET TENS
                                    tens = set_flow / 10;   //UPDATE TENS VALUE OF SET FLOW
                                    tens = tens << 4; //4 TIME LEFT SHIFT TO SWAP NIBBLES
                                    values[4] = tens;   //STORE THE VALUE IN DISPLAY ARRAY
                                 }
                              break;      
                        
                              case 0xFB : //PRESSURE DOWN KEY IS PRESSED
                              //LIMIT THE LOWEST PRESSURE TO 0
                              if( set_pressure > 0 )
                                 {
                                    set_pressure = set_pressure - 1;   //DECREASE SET PRESSURE VALUE BY 1
                                    units = 0x00;   //RESET UNITS
                                    units = set_pressure % 10;  //UPDATE UNIT VALUE OF SET PRESSURE
                                    units = units << 4;  //4 TIME LEFT SHIFT TO SWAP NIBBLES
                                    values[3] = units;  //STORE THE VALUE IN DISPLAY ARRAY
                                    tens = 0x00;   //RESET TENS
                                    tens = set_pressure / 10;  //UPDATE TENS VALUE OF SET PRESSURE
                                    tens = tens << 4; //4 TIMES LEFT SHIFT TO SWAP NIBBLES
                                    values[2] = tens;   //STORE THE VALUE IN DISPLAY ARRAY
                                 }
                              break; 
                        
                              case 0xF7 : //HEATER KEY IS PRESSED
                              break;
                           
                              case 0xEF : //PRESSURE UP KEY IS PRESSED
                              //LIMIT THE HIGHEST PRESSURE TO 12
                              if( set_pressure < 12 )
                                 {
                                    set_pressure = set_pressure + 1;   //INCREASE SET PRESSURE VALUE BY 1
                                    units = 0x00;   //RESET UNITS
                                    units = set_pressure % 10;  //UPDATE UNIT VALUE OF SET PRESSURE
                                    units = units << 4;  //4 TIMES LEFT SHIFT TO SWAP NIBBLES
                                    values[3] = units;  //STORE THE VALUE IN DISPLAY ARRAY
                                    tens = 0x00;   //RESET TENS
                                    tens = set_pressure / 10;  //UPDATE TENS VALUE OF SET PRESSURE
                                    tens = tens << 4; //4 TIMES LEFT SHIFT TO SWAP NIBBLES
                                    values[2] = tens;   //4 TIMES LEFT SHIFT TO BRING THIS VALUE IN UPPER NIBBLE
                                 }
                              break;   
                        
                              case 0xDF : //START STOP KEY IS PRESSED
                              break;                   
                           
                              case 0x7F :   //AIR KEY IS PRESSED
                              break;
                           
                              default : //INVALID INPUT. MULTIPLE KEYS MAY BE PRESSED, NOTHING TO DO
                              break;
                           }     
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
      T0IF = 0;   //RESET TIMER INTERRUPT FLAG
      TMR0 = 0;   //CLEAR TIMER
      return;
   }
   
void MY_DELAY(char sec)
   {
      while(sec > 0)
         {
            char Count = 0;
            T1CON = 0b00000001;
            while(Count != 38)
               {
                  while (!TMR1IF);
                  TMR1IF = 0;
                  Count ++;
               }
            sec--;   
         }      
   }

#include <xc.h>
#include <EEP.h>
#include <adc.h>

void interrupt tmr_int();

volatile unsigned char count = 0, adr = 0, values[14] = {0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x30,0x00,0x00};
volatile signed int timer = 0, temperature_timer = 10000;
int analog_result = 0, analog_temp_result = 0;

void main()
   {
      unsigned char set_pressure = 0, set_flow = 0, actual_flow = 0, actual_pressure = 0, real_pressure = 0, portd_old_status = 0xFF, units = 0, tens = 0, hundreds = 0, debounce = 0, control = 0, volve = 0, temp_time = 0, air = 0, temp = 0, hand_flag = 0;
      float real_volume = 0, temp_volume = 0, real_temp = 0;
      unsigned int volume = 0;
            
      TRISA = 0x0B;  //A0,A1 & A3 ARE ANALOG INPUTS
      TRISE = 0x00;	//ALL OUTPUTS FOR ADDRESS SELECTION
      TRISB = 0x00;	//ALL OUTPUTS FOR DATA
      TRISD = 0xFF;  //ALL INPUTS FOR SWITCHES
      TRISC = 0x00;  //ALL OUTPUTS
      
      RCON = 0x9F;	//DISABLE INTERRUPT PRIORITY
      INTCON = 0xA0;	//ENABLE TIMER 0 INTERRUPT
      T0CON = 0xC2;	//ENABLE TIMER0 WITH 1 : 8 PRESCALAR
      TMR0 = 0x00;   //RESET TIMER
      
      //READ EEPROM
      set_pressure = Read_b_eep( 0x01 );  //READ SET PRESSURE
      _delay(50);
      set_flow = Read_b_eep( 0x02 );  //READ SET FLOW
      _delay(50);
      
      //READ VOLUME
      hundreds = Read_b_eep( 0x03 );  //READ HUNDRED VALUE
      _delay(50);
      real_volume = 100 * hundreds; //CALCULATE VOLUME
      hundreds = hundreds << 4;  //4 LEFT SHIFTS TO STORE IN DISPLAY ARRAY
      values[8] = hundreds; //STORE IN DISPLAY ARRAY
      
      tens = Read_b_eep( 0x04 );  //READ TENS VALUE
      _delay(50);
      real_volume = real_volume + (10 * tens); //CALCULATE VOLUME
      tens = tens << 4; //4 LEFT SHIFTS TO STORE IN DISPLAY ARRAY
      values[9] = tens; //STORE IN DISPLAY ARRAY
       
      units = Read_b_eep( 0x05 );  //READ TENS VALUE
      _delay(50);
      real_volume = real_volume + units; //CALCULATE VOLUME
      units = units << 4;  //4 LEFT SHIFTS TO STORE IN DISPLAY ARRAY
      values[10] = units; //STORE IN DISPLAY ARRAY
      
      //UPDATE SET PRESSURE DISPLAY
      units = 0x00;   //RESET UNITS
      units = set_pressure % 10;  //UPDATE UNIT VALUE OF SET PRESSURE
      units = units << 4;  //4 TIMES LEFT SHIFT TO SWAP NIBBLES
      values[3] = units;  //STORE THE VALUE IN DISPLAY ARRAY
      tens = 0x00;   //RESET TENS
      tens = set_pressure / 10;  //UPDATE TENS VALUE OF SET PRESSURE
      tens = tens << 4; //4 TIMES LEFT SHIFT TO SWAP NIBBLES
      values[2] = tens;   //4 TIMES LEFT SHIFT TO BRING THIS VALUE IN UPPER NIBBLE
      
      //UPDATE SET FLOW DISPLAY
      units = 0x00;  //RESET UNITS
      units = set_flow % 10;  //UPDATE UNIT VALUE OF SET FLOW
      units = units << 4;  //4 TIMES LEFT SHIFT TO SWAP NIBBLES
      values[5] = units;   //STORE THE VALUE IN DISPLAY ARRAY
      tens = 0x00;   //RESET TENS
      tens = set_flow / 10;   //UPDATE TENS VALUE OF SET FLOW
      tens = tens << 4; //4 TIME LEFT SHIFT TO SWAP NIBBLES
      values[4] = tens;   //STORE THE VALUE IN DISPLAY ARRAY
      
      //SELECT FIRST IC
      RB0 = 0;
      RB1 = 0;
      
      //TURN OF BOTH VOLVES
      RC2 = 0;
      RC3 = 0;
      
      RC0 = 1; //TURN OFF START STOP LED
      
      RC7 = 0; //TURN OFF MOTOR
      RB2 = 1; //TURN OFF AIR LED
      
      RC1 = 1; //TURN OFF HEATER
      RA4 = 1; //TURN OFF HEATER LED
      
      RC6 = 1; //TURN OFF ALARM
      
      OpenADC( ADC_FOSC_16 & ADC_RIGHT_JUST & ADC_3ANA_0REF, ADC_CH0 & ADC_INT_OFF );
      _delay( 50 ); // Delay for 50TCY
      
      while (1)
         { 
            if( control == 1 )   //IF CONTROLING IS ON
               {
                  if( timer <= 0 )  //CHECK WHETHER TIMER IS COMPLETE
                     {
                        if( volve == 0 )  //CHECK WHETHER VOLVE IS CLOSED
                              {
                              SetChanADC( ADC_CH0 );                              
                              ConvertADC(); // Start conversion
                              while( BusyADC() )
                                 {
                                    // Wait for completion
                                 }
                              analog_result = ReadADC(); // Read result
                              
                              analog_result = analog_result - 512;  //NULLIFY OFFSET
                              
                              //ADJUSTMENTS FOR REAL CALIBRATION
                              analog_result = analog_result >> 1;
                              real_pressure = analog_result / 2.78;
                              
                              if(real_pressure < 90)
                                 {
                                    actual_pressure = real_pressure;
                                 }
                              
                              if( actual_pressure > 30 )
                                 {
                                    RC6 = 0; //TURN ON ALARM
                                 }
                              if( actual_pressure < 14 )
                                 {
                                    //IF ANY KEY IS NOT PRESSED THEN OFF THE BUZZER
                                    if(PORTD == 0xFF)
                                       {
                                          RC6 = 1; //TURN OFF ALARM
                                       }
                                 }
                              
                              if( (actual_pressure <= (set_pressure - 1)) && air == 1 ) //TURN ON MOTOR FOR FIX TIME SAY 1 SECOND
                                 {
                                    if((set_pressure - actual_pressure) <= 3)
                                       {
                                          timer = 100;
                                       }
                                    else
                                       {
                                          timer = 1000;  //SET TIMER FOR 1 SEC DELAY
                                       }
                                    RC2 = 0; //TURN OFF EXHAUSH VOLVE
                                    RC7 = 1; //TURN ON MOTOR
                                    volve = 1;  //SET VOLVE 1
                                    hand_flag = 0;//RESET HAND FLAG
                                    
                                    //UPDATE ACTUAL FLOW DISPLAY WITH CONSTANT 05 VALUE
                                    values[7] = 0x50;  //SET UNITS VALUE TO 5
                                    values[6] = 0x00;  //SET TENS VALUE TO 0
                                 }
                                 
                              //IF ACTUAL PRESSURE IS LESS THAN 12 (UP TO 11) PROGRAM WILL GO IN THIS BLOCK
                              if( (actual_pressure <= (set_pressure - 1)) && air == 0 )   //TURN ON THE CO2 VOLVE
                                 {
                                    if(( set_pressure - actual_pressure ) <= 6 )
                                       {
                                          timer = 18;
                                          actual_flow = 2;
                                       }
                                    else
                                       {
                                          //CALCULATE TURN ON TIME
                                          timer = set_flow * 9;
                                          actual_flow = set_flow;
                                       }
                                    
                                    RC2 = 0; //TURN OFF EXHAUSH VOLVE
                                    RC3 = 1; //OPEN THE CONTROL VOLVE
                                    volve = 1;  //SET VOLVE 1
                                    hand_flag = 0; //RESET HAND FLAG
                                    //UPDATE ACTUAL FLOW DISPLAY
                                    units = 0x00;  //RESET UNITS
                                    units = actual_flow % 10;  //UPDATE UNIT VALUE OF ACTUAL FLOW
                                    units = units << 4;  //4 TIMES LEFT SHIFT TO SWAP NIBBLES
                                    values[7] = units;   //STORE THE VALUE IN DISPLAY ARRAY
                                    tens = 0x00;   //RESET TENS
                                    tens = actual_flow / 10;   //UPDATE TENS VALUE OF ACTUAL FLOW
                                    tens = tens << 4; //4 TIME LEFT SHIFT TO SWAP NIBBLES
                                    values[6] = tens;   //STORE THE VALUE IN DISPLAY ARRAY
                                 }
                             
							  //IF ACTUAL PRESSURE IS FROM 12 TO 14 PROGRAM WILL GO IN THIS BLOCK   
                              if( actual_pressure >= set_pressure && actual_pressure <= (set_pressure + 2) )
                                 {
                                    timer = 500;  //TAKE NEXT READING AFTER 500 MS
                                    
                                    hand_flag = hand_flag + 1;
                                    if(hand_flag >= 5)
                                       {
                                          hand_flag = 5;
                                       }                                    
                                    
                                    RC2 = 0; //TURN OFF EXHAUSH VOLVE
                                    actual_flow = 0;  //STOP THE FLOW
                                    
                                    //UPDATE ACTUAL FLOW DISPLAY
                                    values[7] = 0x00; //UPDATE UNITS
                                    values[6] = 0x00; //UPDATE TENS
                                 }
                                                    
                              //IF ACTUAL PRESSURE IS GREATOR THAN OR EQUAL TO 15 PROGRAM WILL GO IN THIS BLOCK 
                              if( actual_pressure >= (set_pressure + 3) )
                                 {
                                    if(hand_flag < 5)
                                       {                          
                                          RC2 = 1;
                                       }  
                                    
                                    timer = 100;   //SET TIMER 100 MS
                                    hand_flag = 0;
                                    //UPDATE ACTUAL FLOW DISPLAY
                                    values[7] = 0x00; //UPDATE UNITS
                                    values[6] = 0x00; //UPDATE TENS
                                 }
                                 
                              if(actual_pressure > set_pressure)
                                 {
                                    //IF ACTUAL PRESSURE IS OVER THE SET PRESSURE CHECK WHETHER IT IS GREATOR THAN 2 OR LESS
                                    if((actual_pressure - set_pressure) > 2 )
                                       {
                                          //IF ACTUAL PRESSURE IS MORE THAN 2 OVER SET PRESSURE THEN DISPLAY ACTUAL PRESSURE
                                          //UPDATE PRESSURE DISPLAY
                                          units = 0x00;  //RESET UNITS
                                          units = actual_pressure % 10;  //UPDATE UNIT VALUE OF ACTUAL FLOW
                                          units = units << 4;  //4 TIMES LEFT SHIFT TO SWAP NIBBLES
                                          values[1] = units;   //STORE THE VALUE IN DISPLAY ARRAY
                                          tens = 0x00;   //RESET TENS
                                          tens = actual_pressure / 10;   //UPDATE TENS VALUE OF ACTUAL FLOW
                                          tens = tens << 4; //4 TIME LEFT SHIFT TO SWAP NIBBLES
                                          values[0] = tens;   //STORE THE VALUE IN DISPLAY ARRAY
                                       }
                                    else
                                       {
                                          //IF ACTUAL PRESSURE IS NOT MORE THAN 2 OVER SET PRESSURE THEN DISPLAY ACTUAL PRESSURE AS SET PRESSURE
                                          //UPDATE PRESSURE DISPLAY
                                          units = 0x00;  //RESET UNITS
                                          units = set_pressure % 10;  //UPDATE UNIT VALUE OF ACTUAL FLOW
                                          units = units << 4;  //4 TIMES LEFT SHIFT TO SWAP NIBBLES
                                          values[1] = units;   //STORE THE VALUE IN DISPLAY ARRAY
                                          tens = 0x00;   //RESET TENS
                                          tens = set_pressure / 10;   //UPDATE TENS VALUE OF ACTUAL FLOW
                                          tens = tens << 4; //4 TIME LEFT SHIFT TO SWAP NIBBLES
                                          values[0] = tens;   //STORE THE VALUE IN DISPLAY ARRAY
                                       }
                                 }
                              else
                                 {
                                    //IF ACTUAL PRESSURE IS LESS THAN SET PRESSURE THEN DIS[LAY ACTUAL PRESSURE
                                    //UPDATE PRESSURE DISPLAY
                                    units = 0x00;  //RESET UNITS
                                    units = actual_pressure % 10;  //UPDATE UNIT VALUE OF ACTUAL FLOW
                                    units = units << 4;  //4 TIMES LEFT SHIFT TO SWAP NIBBLES
                                    values[1] = units;   //STORE THE VALUE IN DISPLAY ARRAY
                                    tens = 0x00;   //RESET TENS
                                    tens = actual_pressure / 10;   //UPDATE TENS VALUE OF ACTUAL FLOW
                                    tens = tens << 4; //4 TIME LEFT SHIFT TO SWAP NIBBLES
                                    values[0] = tens;   //STORE THE VALUE IN DISPLAY ARRAY
                                 }
                           }
                        else  //IF VOLVE IS OPEN
                           {
                              if( air == 0 )
                                 {
                                    //TURN OFF VOLVE
                                    RC3 = 0;
                                    volve = 0;
                                    
                                    //CALCULATE TURN OF TIME
                                    temp_time = 0;
                                    temp_time = set_flow * 9;
                                    
                                    temp_volume = 0.0005 * temp_time;   //CALCULATE VOLUME OF C02 SUPPLIED DURING ON TIME OF VOLVE
                                    real_volume = real_volume + temp_volume;  //ADD THIS VOLUME TO TOTAL VOLUME
                                    volume = real_volume;   //GET INTEGER PART OF VOLUME FOR DISPLAY PURPOSE
                                    
                                    hundreds = 0x00;  //RESET HUNDREDTH DIGIT
                                    hundreds = volume / 100;   //EXTRACT HUNDREDTH DIGIT OF VOLUME
                                    volume = volume - ( 100*hundreds );   //UPDATE VOLUME TO GET UNITS AND TENS VALUES
                                    hundreds = hundreds << 4;  //4 LEFT SHIFT TO STORE IN DISPLAY ARRAY
                                    values[8] = hundreds;   //STORE IN DISPLAY ARRAY
                                    
                                    units = 0x00;  //RESET UNITS
                                    units = volume % 10;  //UPDATE UNIT VALUE OF VOLUME
                                    units = units << 4;  //4 TIMES LEFT SHIFT TO SWAP NIBBLES
                                    values[10] = units;   //STORE THE VALUE IN DISPLAY ARRAY
                                    
                                    tens = 0x00;   //RESET TENS
                                    tens = volume / 10;   //UPDATE TENS VALUE OF VOLUME
                                    tens = tens << 4; //4 TIME LEFT SHIFT TO SWAP NIBBLES
                                    values[9] = tens;   //STORE THE VALUE IN DISPLAY ARRAY
                                    
                                    temp_time = 270 - temp_time;
                                    timer = 500 + temp_time;
                                 }
                              else
                                 {
                                    RC7 = 0; //TURN OFF THE MOTOR
                                    volve = 0;
                                    timer = 500;  //SET OFF TIME = 500 MS
                                 }
                           }
                     }
               }
            else  //IF CONTROLING IS OFF TAKE PRESSURE READING AND UPDATE DISPLAY AFTER EVERY 10 MS
               {     
                  if(timer <= 0) //10 MS TIMER IS OVER TAKE PRESSURE READING
                     {
                        SetChanADC( ADC_CH0 );                      
                        ConvertADC(); // Start conversion
                        while( BusyADC() )
                           {
                              // Wait for completion
                           }
                        analog_result = ReadADC(); // Read result                       
                        
                        analog_result = analog_result - 512;  //NULLIFY OFFSET                              
                        //ADJUSTMENTS FOR REAL CALIBRATION
                        analog_result = analog_result >> 1;
                        real_pressure = analog_result / 2.78;
                              
                        if(real_pressure < 90)
                           {
                              actual_pressure = real_pressure;
                           }
                        
                        if( actual_pressure > 30 )
                           {
                              RC6 = 0; //TURN ON ALARM
                              RC2 = 1; //TURN ON EXHAUST
                           }
                        if( actual_pressure < 14 )
                           {
                              //IF ANY KEY IS NOT PRESSED THEN OFF THE BUZZER
                              if(PORTD == 0xFF)
                                 {
                                    RC6 = 1; //TURN OFF ALARM
                                 }
                              RC2 = 0; //TURN OFF EXHAUST
                           }
                                 
                        units = 0x00;  //RESET UNITS
                        units = actual_pressure % 10;  //UPDATE UNIT VALUE OF ACTUAL FLOW
                        units = units << 4;  //4 TIMES LEFT SHIFT TO SWAP NIBBLES
                        values[1] = units;   //STORE THE VALUE IN DISPLAY ARRAY
                        tens = 0x00;   //RESET TENS
                        tens = actual_pressure / 10;   //UPDATE TENS VALUE OF ACTUAL FLOW
                        tens = tens << 4; //4 TIME LEFT SHIFT TO SWAP NIBBLES
                        values[0] = tens;   //STORE THE VALUE IN DISPLAY ARRAY
                        timer = 10; //RESET TIMER FOR NEXT 10 MS
                     }
               }
            
            //IF AIR IS NOT USED CHECK CO2 BLOCK TEMPERATURE AFTER EVERY 15 MS
            if( air == 0 )
               {
                  if( temperature_timer <= 0)
                     {
                        //TAKE THE TEMPERATURE READING
                        SetChanADC( ADC_CH1 );                        
                        ConvertADC(); // Start conversion
                        while( BusyADC() )
                           {
                              // Wait for completion
                           }
                        analog_temp_result = ReadADC(); // Read result                      
                        
                        temp = analog_temp_result >> 3;
                        
                        if(control == 1)
                           {
                              real_temp = analog_temp_result / 8;
                              if(real_temp >= 35.0)
                                 {
                                    RA4 = 1; //TURN OFF HEATER LED
                                    RC1 = 1; //TURN OFF HEATER
                                 }
                              if(real_temp <= 34.8)
                                 {
                                    RA4 = 0; //TURN ON HEATER LED
                                    RC1 = 0; //TURN ON HEATER
                                 }
                           }
                  
                        //UPDATE TEMERATURE DISPLAY
                        units = 0x00;  //RESET UNITS
                        units = temp % 10;  //UPDATE UNIT VALUE OF TEMP.
                        units = units << 4;  //4 TIMES LEFT SHIFT TO SWAP NIBBLES
                        values[12] = units;   //STORE THE VALUE IN DISPLAY ARRAY
                        tens = 0x00;   //RESET TENS
                        tens = temp / 10;   //UPDATE TENS VALUE OF TEMP
                        tens = tens << 4; //4 TIME LEFT SHIFT TO SWAP NIBBLES
                        values[11] = tens;   //STORE THE VALUE IN DISPLAY ARRAY
                        temperature_timer = 10127;
                     }
               }
            else
               {
                  temperature_timer = 0;  //MAINTAIN TEMPERATURE TIMER AT 0
               }      
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
                              case 0xFF : //KEY IS RELEASED
                                 RC6 = 1; //TURN OFF BUZZER
                              break;
                              
                              case 0xFE : //FLOW UP KEY IS PRESSED
                              RC6 = 0; //TURN ON BUZZER
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
                                    
                                    TMR0 = 0;   //RESET TMR0 TO PREVENT TIMER INTERRUPT WHILE EEPROM WRITTING
                                    //WRITE SET FLOW AT MEMORY LOCATION 2
                                    Write_b_eep( 0x02, set_flow );
                                    _delay(50);
                                 }
                              break;         
                        
                              case 0xFD : //FLOW DOWN KEY IS PRESSED
                              RC6 = 0; //TURN ON BUZZER
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
                                    
                                    TMR0 = 0;   //RESET TMR0 TO PREVENT TIMER INTERRUPT WHILE EEPROM WRITTING
                                    //WRITE SET FLOW AT MEMORY LOCATION 2
                                    Write_b_eep( 0x02, set_flow );
                                    _delay(50);
                                 }
                              break;      
                        
                              case 0xFB : //PRESSURE DOWN KEY IS PRESSED
                              RC6 = 0; //TURN ON BUZZER
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
                                    
                                    TMR0 = 0;   //RESET TMR0 TO PREVENT TIMER INTERRUPT WHILE EEPROM WRITTING
                                    //WRITE SET PRESSURE AT MEMORY LOCATION 1
                                    Write_b_eep( 0x01, set_pressure );
                                    _delay(50);
                                 }
                              break; 
                        
                              case 0xF7 : //AIR KEY IS PRESSED
                              RC6 = 0; //TURN ON BUZZER
                                 if( air == 0 )
                                    {
                                       air = 1; //TURN ON AIR MODE
                                       RB2 = 0; //TURN ON AIR LED
                                       RC3 = 0; //TURN OFF CO2 VOLVE
                                       RA4 = 1; //TURN OFF HEATER LED
                                       RC1 = 1; //TURN OFF HEATER
                                       volve = 0;
                                       timer = 0;
                                    }
                                 else
                                    {
                                       air = 0; //TURN OFF AIR MODE; CO2 MODE ON
                                       RB2 = 1; //TURN OFF AIR LED
                                       RC7 = 0; //TURN OFF MOTOR
                                       volve = 0;
                                       timer = 0;
                                    }
                              break;
                           
                              case 0xEF : //PRESSURE UP KEY IS PRESSED
                              RC6 = 0; //TURN ON BUZZER
                              //LIMIT THE HIGHEST PRESSURE TO 12
                              if( set_pressure < 30 )
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
                                    
                                    TMR0 = 0;   //RESET TMR0 TO PREVENT TIMER INTERRUPT WHILE EEPROM WRITTING
                                    //WRITE SET PRESSURE AT MEMORY LOCATION 1
                                    Write_b_eep( 0x01, set_pressure );
                                    _delay(50);
                                 }
                              break;   
                        
                              case 0xDF : //START STOP KEY IS PRESSED
                              RC6 = 0; //TURN ON BUZZER
                                 if( control == 0 )
                                    {
                                       control = 1;   //START CONTROLING
                                       RC0 = 0; //TURN ON CONTROL LED
                                       timer = 0;
                                    }
                                 else
                                    {
                                       control = 0;   //STOP CONTROLING
                                       RC0 = 1; //TURN OFF CONTROL LED
                                       
                                       RC2 = 0; //TURN OFF EX-VOLVE
                                       RC3 = 0; //TURN OFF CO2 VOLVE
                                       
                                       RC7 = 0; //TURN OFF MOTOR
                                       
                                       RA4 = 1; //TURN OFF HEATER LED
                                       RC1 = 1; //TURN OFF HEATER
                                       volve = 0;                     
                                       
                                       //WRITE VOLUME INTO EEPROM
                                       hundreds = values[8];
                                       hundreds = hundreds >> 4;
                                       Write_b_eep( 0x03, hundreds );
                                       _delay(50);
                                       
                                       tens = values[9];
                                       tens = tens >> 4;
                                       Write_b_eep( 0x04, tens );
                                       _delay(50);
                                       
                                       units = values[10];
                                       units = units >> 4;
                                       Write_b_eep( 0x05, units );
                                       _delay(50);
                                       
                                       timer = 10; //RESET TIMER FOR NORMAL ANALOG MONITORING
                                    }
                              break;                   
                           
                              case 0x7F :   //VOLUME RESET KEY IS PRESSED
                              RC6 = 0; //TURN ON BUZZER
                                 real_volume = 0;  //RESET VOLUME
                                 
                                 //CLEAR VOLUME DISPLAY
                                 values[8] = 0x00;
                                 values[9] = 0x00;
                                 values[10] = 0x00;
                                 
                                 //WRITE EEPROM
                                 Write_b_eep( 0x03, 0x00 );
                                 _delay(50);
                                 
                                 Write_b_eep( 0x04, 0x00 );
                                 _delay(50);
                                 
                                 Write_b_eep( 0x05, 0x00 );
                                 _delay(50);
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
      timer = timer - 1;   //DECREMENT TIMER FOR CONTROLING
      temperature_timer = temperature_timer - 1;   //DECREMENT TIMER FOR TEMPERATURE READING
      T0IF = 0;   //RESET TIMER INTERRUPT FLAG
      TMR0 = 0;   //CLEAR TIMER
      return;
   }
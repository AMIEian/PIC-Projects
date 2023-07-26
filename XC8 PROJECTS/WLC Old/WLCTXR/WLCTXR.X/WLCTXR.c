// RB0 = LOWER PROBE
// RB1 = UPPER PROBE
//RB5 = LOWER DATA
//RB6 = UPPER DATA
// RB4 = TE

#include <xc.h>

void main()
   {
      char upper, lower, i;
      while(1)
         {
            TRISB = 0x01;  //RB0 IS INPUT 0000 0001
            PORTB = 0xFE;  //RB0 = 0 IS INPUT
            _delay(1000);
            if(RB0 == 1)
               {
                  lower = 1;
               }
            else
               {
                  lower = 0;
               }


            TRISB = 0x00;  //ALL OUTPUT
            PORTB = 0x10;  //TE = 1 , ALL PINS ARE 0
            _delay(1000);

            TRISB = 0x02;  //RB1 IS INPUT 0000 0010
            PORTB = 0xFD;  //RB1 = 0 IS INPUT
            _delay(1000);
            if(RB1 == 1)
               {
                  upper = 1;
               }
            else
               {
                  upper = 1;
               }

            TRISB = 0x00;  //ALL OUTPUT
            PORTB = 0x10;  //TE = 1 , ALL PINS ARE 0

            if(upper == 1)
               {
                  RB6 = 1;
               }
            else
               {
                  RB6 = 0;
               }

            if(lower == 1)
               {
                  RB5 = 1;
               }
            else
               {
                  RB5 = 0;
               }

            for(i = 0; i <= 4; i++)
               {
                  RB4 = 0; //ENABLE TRANSMISSION
                  _delay(1000000);   //DELAY OF 1 SECOND
                  RB4 = 1; //DISABLE TRANSMISSION
                  _delay(1000000);   //DELAY OF 1 SECOND
               }

            //Wait for 15 seconds
            for( i = 0; i < 15; i++ )
               {
                  _delay(1000000);  //DELAY OF 1 SECOND
               }
         }
   }

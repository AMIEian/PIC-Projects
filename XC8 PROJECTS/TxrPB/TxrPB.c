#include<xc.h>

void pbisr();

int x = 0; 
char y = 0;

void main(void)
   {
      PCON = 0x00;
      TRISB = 0x6F;	//PIN RB5, RB6 ARE INPUTS, ALL OTHER PINS ARE OUTPUTS
      RB4 = 1;	//SET HIGH ON TE PIN
      INTCON = 0x88;	//ENABLE GIE & RBIE
      
      while(1)
         {
            #asm
               sleep	;GO TO SLEEP MODE
            #endasm
         }
   }
   
// Interrupt
void interrupt myisr(void)
   {
      pbisr();
   }

void pbisr()
   {
      RB4 = 0;	//SET LOW ON TE PIN & ENABLE TRANSMISSION
      x = 0; 
      y = 0;
      while ( y < 1 )
         {
            x++;
            if ( x == 0 )
               {
                  y++;
               }
         }
      RB4 = 1;	//SET HIGH ON TE PIN & DISABLE TRANSMISSION
      
      x = 0; 
      y = 0;
      while ( y < 1 )
         {
            x++;
            if ( x == 0 )
               {
                  y++;
               }
         }
      
      RB4 = 0;	//SET LOW ON TE PIN & ENABLE TRANSMISSION
      x = 0; 
      y = 0;
      while ( y < 1 )
         {
            x++;
            if ( x == 0 )
               {
                  y++;
               }
         }
      RB4 = 1;	//SET HIGH ON TE PIN & DISABLE TRANSMISSION
      
      INTCON = 0x88;	//ENABLE GIE & RBIE
      
      return;
   }

#include <xc.h>

// Define 74HC595 (data) connections
#define Serial_Data RC0
#define SH_Clk RC1
#define ST_Clk RC2

// Define 74HC595 (columns) connections
#define Col_Serial_Data RB0
#define Col_SH_Clk RB1
#define Col_ST_Clk RB2

void Send_Data(unsigned int number);
void Scan_Column();

unsigned char column = 0;

void main()
   {
      ADCON1 = 0x06; //ALL DIGITAL
      
      TRISA = 0x00;	//ALL OUTPUTS
      TRISB = 0x00;  //ALL OUTPUTS
      TRISC = 0x00;	//ALL OUTPUTS
      PORTA = 0x00;
      PORTB = 0x00;
      PORTC = 0x00;
      
      while(1)
         {
            Send_Data(0xFFFF);
            _delay(1);
            Scan_Column();
            _delay(1);
         }   
   }   

void Scan_Column()
   {
      if(column == 0)
         {
            Col_Serial_Data = 1;
            _delay(1);
            Col_SH_Clk = 1;
            _delay(1);  //1SEC DELAY
            Col_SH_Clk = 0;
            _delay(1);  //1SEC DELAY
            // Apply clock on ST_Clk
            Col_ST_Clk = 1;
            _delay(1);  //1SEC DELAY
            Col_ST_Clk = 0;
         }
       if(column != 0)
         {
            Col_Serial_Data = 0;
            _delay(1);
            Col_SH_Clk = 1;
            _delay(1);  //1SEC DELAY
            Col_SH_Clk = 0;
            _delay(1);  //1SEC DELAY
            // Apply clock on ST_Clk
            Col_ST_Clk = 1;
            _delay(1);  //1SEC DELAY
            Col_ST_Clk = 0;
         }
      column++;  
      if(column > 39)
         column = 0;
   }
void Send_Data(unsigned int number)
   {
      unsigned short bits, Flag;
      unsigned int Mask;
      PORTC = 0x00;
      //Each byte has 8 bits.
      Mask = 0x0001;
      for (bits=0; bits<16; bits++)
         {
            Flag = number & Mask;
            if(Flag == 0) 
               {
                  Serial_Data = 0;
                  _delay(1);  //1SEC DELAY
                  SH_Clk = 1;
                  _delay(1);  //1SEC DELAY
                  SH_Clk = 0;
               }   
            if(Flag > 0) 
               {
                  Serial_Data = 1;
                  _delay(1);  //1SEC DELAY
                  SH_Clk = 1;
                  _delay(1);  //1SEC DELAY
                  SH_Clk = 0;
               }   
            Mask = Mask << 1;
         }
      // Apply clock on ST_Clk
      ST_Clk = 1;
      _delay(1);  //1SEC DELAY
      ST_Clk = 0;
   }
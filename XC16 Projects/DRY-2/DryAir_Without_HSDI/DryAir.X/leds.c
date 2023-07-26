#include "mcc_generated_files/mcc.h"
#include "leds.h"

volatile COLUMNS COLUMN[5];
volatile ROWS ROW;

uint8_t LEDrow = 0, LEDcol = 0;

void SetColValue(int colNo, unsigned int value) {
   
    COLUMN[colNo].w = value;
        
    _LATA0  = COLUMN[colNo].LED0;
    _LATA1 = COLUMN[colNo].LED1;
    _LATA2 = COLUMN[colNo].LED2;
    _LATA3  = COLUMN[colNo].LED3;
    _LATA4  = COLUMN[colNo].LED4;
    _LATA5 = COLUMN[colNo].LED5;
    _LATA6  = COLUMN[colNo].LED6;
    _LATA7  = COLUMN[colNo].LED7;
}

unsigned int GetColValue(int colNo) {
    return COLUMN[colNo].w;
}

void SetColumn(int colNo) {
    _LATA0  = COLUMN[colNo].LED0;
    _LATA1 = COLUMN[colNo].LED1;
    _LATA2 = COLUMN[colNo].LED2;
    _LATA3  = COLUMN[colNo].LED3;
    _LATA4  = COLUMN[colNo].LED4;
    _LATA5 = COLUMN[colNo].LED5;
    _LATA6  = COLUMN[colNo].LED6;
    _LATA7  = COLUMN[colNo].LED7;
}

void SetRow(int rowNo){
    if(rowNo == 0)
    {
        _LATG15  = 1;
        _LATE9 = 0;
        _LATE8 = 0;
        _LATA15  = 0;
        _LATA14  = 0;
    }else if(rowNo == 1)
    {
        _LATG15  = 0;
        _LATE9 = 1;
        _LATE8 = 0;
        _LATA15  = 0;
        _LATA14  = 0;
    }else if(rowNo == 2)
    {
        _LATG15  = 0;
        _LATE9 = 0;
        _LATE8 = 1;
        _LATA15  = 0;
        _LATA14  = 0;
    }else if(rowNo == 3)
    {
        _LATG15  = 0;
        _LATE9 = 0;
        _LATE8 = 0;
        _LATA15  = 1;
        _LATA14  = 0;
    }else if(rowNo == 4)
    {
        _LATG15  = 0;
        _LATE9 = 0;
        _LATE8 = 0;
        _LATA15  = 0;
        _LATA14  = 1;
    }
}

void updateLEDs()
{
    clearLEDs();
    SetColumn(LEDcol);
    SetRow(LEDrow);
    LEDcol++;
    LEDrow++;
    if(LEDcol > 4)
        {
            LEDcol = 0;
            LEDrow = 0;
        }
}

void clearLEDs()
{
    _LATG15  = 0;
    _LATE9 = 0;
    _LATE8 = 0;
    _LATA15  = 0;
    _LATA14  = 0;
    
    _LATA0  = 0;
    _LATA1 = 0;
    _LATA2 = 0;
    _LATA3  = 0;
    _LATA4  = 0;
    _LATA5 = 0;
    _LATA6  = 0;
    _LATA7  = 0;
    
}
/**
 End of File
 */
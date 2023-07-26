#include "mcc_generated_files/mcc.h"
#include "leds.h"

volatile COLUMNS COLUMN[5];
volatile ROWS ROW;

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

void SetRow(int rowNo) {
    ROW.w = 0;
    ROW.w = 1 << rowNo;
    _LATG15  = ROW.ROW0;
    _LATE9 = ROW.ROW1;
    _LATE8 = ROW.ROW2;
    _LATA15  = ROW.ROW3;
    _LATA14  = ROW.ROW4;
}
/**
 End of File
 */
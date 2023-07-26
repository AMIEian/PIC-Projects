#include "mcc_generated_files/mcc.h"
#include "Out.h"
#include "mcc_generated_files/pin_manager.h"

volatile LAT_OUTSBITS LAT_OUTSbits;

/*****************************************************************************
 * Function: DisplayValueOnLEDs
 * Precondition: None.
 * Overview: Display input value on Explorer 16 LEDs
 * Input: Value to display
 * Output: None.
 *****************************************************************************/
void SetOutPins(unsigned int value) {

    _OUTSL = value & 0x00FF;
    _OUTSH = value >> 8;
        
    LATAbits.LATA0  = _OUT0;
    LATAbits.LATA1 = _OUT1;
    LATAbits.LATA2 = _OUT2;
    LATAbits.LATA3  = _OUT3;
    LATAbits.LATA4  = _OUT4;
    LATAbits.LATA5 = _OUT5;
    LATAbits.LATA6  = _OUT6;
    LATCbits.LATC0  = _OUT7;
    LATCbits.LATC1  = _OUT8;
    LATCbits.LATC2  = _OUT9;
    LATCbits.LATC3  = _OUT10;
    LATCbits.LATC4  = _OUT11;

}

void SetDOs(unsigned int value)
{
    unsigned int res;
    
    res = value & 0x0001;
    if(res != 0)
        DO_0_SetHigh();
    else
        DO_0_SetLow();
    
    res = value & 0x0002;
    if(res != 0)
        DO_1_SetHigh();
    else
        DO_1_SetLow();
    
    res = value & 0x0004;
    if(res != 0)
        DO_2_SetHigh();
    else
        DO_2_SetLow();
    
    res = value & 0x0008;
    if(res != 0)
        DO_3_SetHigh();
    else
        DO_3_SetLow();
    
    res = value & 0x0010;
    if(res != 0)
        DO_4_SetHigh();
    else
        DO_4_SetLow();
    
    res = value & 0x0020;
    if(res != 0)
        DO_5_SetHigh();
    else
        DO_5_SetLow();
    
    res = value & 0x0040;
    if(res != 0)
        DO_6_SetHigh();
    else
        DO_6_SetLow();
    
    res = value & 0x0080;
    if(res != 0)
        DO_7_SetHigh();
    else
        DO_7_SetLow();
    
    res = value & 0x0100;
    if(res != 0)
        DO_8_SetHigh();
    else
        DO_8_SetLow();
    
    res = value & 0x0200;
    if(res != 0)
        DO_9_SetHigh();
    else
        DO_9_SetLow();
    
    res = value & 0x0400;
    if(res != 0)
        DO_10_SetHigh();
    else
        DO_10_SetLow();
    
    res = value & 0x0800;
    if(res != 0)
        DO_11_SetHigh();
    else
        DO_11_SetLow();
}
/**
 End of File
 */
#include "mcc_generated_files/mcc.h"
#include "Ins.h"

volatile LAT_INSBITS LAT_INSbits;

/*****************************************************************************
 * Function: DisplayValueOnLEDs
 * Precondition: None.
 * Overview: Display input value on Explorer 16 LEDs
 * Input: Value to display
 * Output: None.
 *****************************************************************************/
unsigned char GetInPins() {
    _IN0 = IP_0_GetValue();
    _IN1 = IP_1_GetValue();
    _IN2 = IP_2_GetValue();
    _IN3 = IP_3_GetValue();
    _IN4 = IP_4_GetValue();
    _IN5 = IP_5_GetValue();
    _IN6 = IP_6_GetValue();
    _IN7 = IP_7_GetValue();
    return _INS;
}
/**
 End of File
 */
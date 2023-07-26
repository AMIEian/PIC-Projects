#include <xc.h>
#include <stdint.h>

#include "adc_pic16.h"
#include "adxl335.h"

#define _XTAL_FREQ 4000000

float GetXAccl()
{
    //Temperature
    float t;

    //Read ADC
    uint16_t adc_value=ReadADC(X_Input);
    __delay_us(100);

    adc_value+=ReadADC(X_Input);
    __delay_us(100);

     adc_value+=ReadADC(X_Input);
    __delay_us(100);

    adc_value=adc_value/3;

    //Convert to degree Centrigrade
    t=((adc_value/1023.00)*500.00);

    return t;
}

float GetYAccl()
{
    //Temperature
    float t;

    //Read ADC
    uint16_t adc_value=ReadADC(Y_Input);
    __delay_us(100);

    adc_value+=ReadADC(Y_Input);
    __delay_us(100);

     adc_value+=ReadADC(Y_Input);
    __delay_us(100);

    adc_value=adc_value/3;

    //Convert to degree Centrigrade
    t=((adc_value/1023.00)*500.00);

    return t;
}

float GetZAccl()
{
    //Temperature
    float t;

    //Read ADC
    uint16_t adc_value=ReadADC(Z_Input);
    __delay_us(100);

    adc_value+=ReadADC(Z_Input);
    __delay_us(100);

     adc_value+=ReadADC(Z_Input);
    __delay_us(100);

    adc_value=adc_value/3;

    //Convert to degree Centrigrade
    t=((adc_value/1023.00)*500.00);

    return t;
}

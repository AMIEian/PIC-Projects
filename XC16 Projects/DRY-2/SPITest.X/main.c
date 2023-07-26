/**
  Generated main.c file from MPLAB Code Configurator

  @Company
    Microchip Technology Inc.

  @File Name
    main.c

  @Summary
    This is the generated main.c using PIC24 / dsPIC33 / PIC32MM MCUs.

  @Description
    This source file provides main entry point for system intialization and application code development.
    Generation Information :
        Product Revision  :  PIC24 / dsPIC33 / PIC32MM MCUs - 1.95-b-SNAPSHOT
        Device            :  PIC24FJ128GA310
    The generated drivers are tested against the following:
        Compiler          :  XC16 v1.36
        MPLAB 	          :  MPLAB X v5.10
*/

/*
    (c) 2016 Microchip Technology Inc. and its subsidiaries. You may use this
    software and any derivatives exclusively with Microchip products.

    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
    WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
    PARTICULAR PURPOSE, OR ITS INTERACTION WITH MICROCHIP PRODUCTS, COMBINATION
    WITH ANY OTHER PRODUCTS, OR USE IN ANY APPLICATION.

    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
    BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
    FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
    ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
    THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.

    MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE
    TERMS.
*/

/**
  Section: Included Files
*/
#define FRC 16000000UL
#define FCY 8000000UL
#define _XTAL_FREQ  16000000UL

#include "mcc_generated_files/system.h"
#include "mcp4922.h"
#include "mcc_generated_files/pin_manager.h"
#include <libpic30.h>

/*
                         Main application
 */
int main(void)
{
    // initialize the device
    SYSTEM_Initialize();
    
    uint16_t res;
    
    DAC1_SetHigh();
    DAC2_SetHigh();
    DAC3_SetHigh();
    
    __delay_ms(1);
    
    //Set Dac1 channel A
    DAC1_SetLow();
    res = setChannelA(1800);
    DAC1_SetHigh();
    __delay_ms(1);
    //Set Dac1 channel B
    DAC1_SetLow();
    res = setChannelB(900);
    DAC1_SetHigh();
    __delay_ms(1);
    
    //Set Dac2 channel A
    DAC2_SetLow();
    res = setChannelA(3600);
    DAC2_SetHigh();
    __delay_ms(1);
    //Set Dac2 channel B
    DAC2_SetLow();
    res = setChannelB(1800);
    DAC2_SetHigh();
    __delay_ms(1);

    //Set Dac3 channel A
    DAC3_SetLow();
    res = setChannelA(900);
    DAC3_SetHigh();
    __delay_ms(1);
    //Set Dac3 channel B
    DAC3_SetLow();
    res = setChannelB(3600);
    DAC3_SetHigh();
    __delay_ms(1);
    
    while (1)
    {
        
    }

    return 1;
}
/**
 End of File
*/


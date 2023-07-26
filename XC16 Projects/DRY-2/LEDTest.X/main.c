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
//#define FRC 16000000UL
//#define FCY 8000000UL
//#define _XTAL_FREQ  16000000UL
#include "mcc_generated_files/system.h"
#include "mcc_generated_files/pin_manager.h"
#include "mcc_generated_files/tmr5.h"
#include "Out.h"
#include "leds.h"
//#include <libpic30.h>
/*
                         Main application
 */
int i = 0;
unsigned long currentMillis = 0;

int main(void)
{
    // initialize the device
    SYSTEM_Initialize();
    
    while (1)
    {
        
        if(millis() - currentMillis >= 1000)
        {
            currentMillis = millis();
            printf("Hello World...! ");
            SetRow(i);
            i++;
            if(i>4)
                i = 0;
        }
        /*
        printf("Hello Word...!");
        ROW5_SetHigh();
        while(i < 256)
        {
            SetOutPins(i);
            i = i*2;
             __delay_ms(500);
        }
        i = 1;
        // Delay change on LEDs so visible
        ROW5_SetLow();
        
        ROW4_SetHigh();
        while(i < 256)
        {
            SetOutPins(i);
            i = i*2;
             __delay_ms(500);
        }
        i = 1;
        ROW4_SetLow();
        
        ROW3_SetHigh();
        while(i < 256)
        {
            SetOutPins(i);
            i = i*2;
             __delay_ms(500);
        }
        i = 1;
        ROW3_SetLow();
        
        ROW2_SetHigh();
        while(i < 256)
        {
            SetOutPins(i);
            i = i*2;
             __delay_ms(500);
        }
        i = 1;
        ROW2_SetLow();
        
        ROW1_SetHigh();
        while(i < 256)
        {
            SetOutPins(i);
            i = i*2;
             __delay_ms(500);
        }
        i = 1;
        ROW1_SetLow();
        
        RELAY1_SetHigh();
        __delay_ms(2000);
        RELAY1_SetLow();
        __delay_ms(2000);
        
        RELAY2_SetHigh();
        __delay_ms(2000);
        RELAY2_SetLow();
        __delay_ms(2000);
        
        RELAY3_SetHigh();
        __delay_ms(2000);
        RELAY3_SetLow();
        __delay_ms(2000);
        
        RELAY4_SetHigh();
        __delay_ms(2000);
        RELAY4_SetLow();
        __delay_ms(2000);
        
        RELAY5_SetHigh();
        __delay_ms(2000);
        RELAY5_SetLow();
        __delay_ms(2000);
        
        RELAY6_SetHigh();
        __delay_ms(2000);
        RELAY6_SetLow();
        __delay_ms(2000);
        
        RELAY7_SetHigh();
        __delay_ms(2000);
        RELAY7_SetLow();
        __delay_ms(2000);
        
        RELAY8_SetHigh();
        __delay_ms(2000);
        RELAY8_SetLow();
        __delay_ms(2000);
        /*D0_SetHigh();
        __delay_ms(1000);
        D0_SetLow();
        __delay_ms(1000);*/
    }

    return 1;
}
/**
 End of File
*/


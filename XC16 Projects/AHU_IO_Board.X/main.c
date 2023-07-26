/**
  Generated main.c file from MPLAB Code Configurator

  @Company
    Microchip Technology Inc.

  @File Name
    main.c

  @Summary
    This is the generated main.c using PIC24 / dsPIC33 / PIC32MM MCUs.

  @Description
    This source file provides main entry point for system initialization and application code development.
    Generation Information :
        Product Revision  :  PIC24 / dsPIC33 / PIC32MM MCUs - 1.166.1
        Device            :  PIC24FJ128GA310
    The generated drivers are tested against the following:
        Compiler          :  XC16 v1.41
        MPLAB 	          :  MPLAB X v5.30
*/

/*
    (c) 2020 Microchip Technology Inc. and its subsidiaries. You may use this
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
#include "mcc_generated_files/system.h"
#include "mcc_generated_files/uart1.h"
#include "mcc_generated_files/tmr5.h"
#include "mcc_generated_files/pin_manager.h"
#include "mcc_generated_files/adc1.h"

#include "AI.h"
#include "AO.h"
#include "DI.h"
#include "RelayOut.h"
#include "comm.h"
#include "mcp4922.h"
#include "sht3x.h"
#include "storage.h"
#include "variables.h"

/*
                         Main application
 */

unsigned long DI_Interval = 0;
unsigned long AI_Check_Interval = 0;
unsigned long SHT_Check_Interval = 0;
int8_t ANALOG_Channel = 0;

int main(void)
{
    uint8_t res;
    uint16_t result;
    int temp = 0;
    float ratio;
    // initialize the device
    SYSTEM_Initialize();
    
    DAC1_SetHigh();
    DAC2_SetHigh();
    setAOs();
    
    while (1)
    {
        //printf("Hello World ...!");
        
        if(millis() - DI_Interval >= 5)
            {
                DI_Interval = millis();
                checkDI();
            }
        
        if(millis() - AI_Check_Interval >= 100)
            {
                AI_Check_Interval = millis();
                getAnalogReading(ANALOG_Channel);
                ANALOG_Channel++;
                if(ANALOG_Channel > 5)
                    ANALOG_Channel = 0;
            }
        
        if(millis() - SHT_Check_Interval >= 200)
            {
                SHT_Check_Interval = millis();
                UpdateData();
                UpdateFine();
                UpdateHepa();
                /*
                printf("%f ", sht3x_temp);
                printf("%f ", sht3x_humidity);
                printf("\n");
                */
            }
        
        serialEvent();
        
        if(checkNewDataRequest())
            {
                sendNewData(&counts[0], 21, ' ');
            }
        
        if(getPCCommandReceived())
            {
                temp = parsePCCommand();
                if(temp != 0)
                {
                    temp = 0;
                    SetROs();
                    setAOs();
                }
            }
    }

    return 1;
}
/**
 End of File
*/

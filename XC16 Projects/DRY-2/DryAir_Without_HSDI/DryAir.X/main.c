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
#include "mcc_generated_files/system.h"
#include "mcc_generated_files/tmr5.h"
#include "mcc_generated_files/pin_manager.h"
#include "mcc_generated_files/adc1.h"
#include "mcc_generated_files/uart1.h"
#include "mcc_generated_files/oc1.h"
#include "mcc_generated_files/oc2.h"
#include "mcc_generated_files/oc3.h"
#include "mcc_generated_files/oc4.h"

#include "leds.h"
#include "DI.h"
#include "HSDI.h"
#include "AI.h"
#include "AC_DI.h"
#include "RTD.h"
#include "RelayOut.h"
#include "HSDO.h"
#include "AO.h"
#include "mcp4922.h"
#include "mcp3424.h"
#include "comm.h"
#include "storage.h"
#include "variables.h"

/*
                         Main application
 */
unsigned long DI_Interval = 0;
unsigned long AC_Check_Interval = 0;
unsigned long AI_Check_Interval = 0;
unsigned long MCP_Check_Interval = 0;
unsigned long WDT_Interval = 0;

uint8_t MCPChannel = 1;
int8_t ANALOG_Channel = 0;
int8_t RTD_Number = 0;

int main(void)
{
    uint8_t res;
    uint16_t result;
    int temp;
    float ratio;
    
    // initialize the device
    SYSTEM_Initialize();
    
    OC1_Stop();
    OC2_Stop();
    OC3_Stop();
    OC4_Stop();
    
    loadFlashPage();
    clearPCCommand();
    setMCPChannel(MCPChannel);
    
    DAC1_SetHigh();
    DAC2_SetHigh();
    DAC3_SetHigh();
    
    while (1)
    {        
        //printf("Hello World ...!");
        if(millis() - WDT_Interval >= 500)
            {
                WDT_Interval = millis();
                ClrWdt();
            }
        
        if(millis() - DI_Interval >= 5)
            {
                DI_Interval = millis();
                checkACDI();
                res = checkDI();
                counts[DI_INDEX] = res;
            }
        
        if(millis() - AI_Check_Interval >= 20)
            {
                AI_Check_Interval = millis();
                getAnalogReading(ANALOG_Channel);
                ANALOG_Channel++;
                if(ANALOG_Channel > 5)
                    ANALOG_Channel = 0;
                
                getRTDReading(RTD_Number);
                RTD_Number++;
                if(RTD_Number > 2)
                    RTD_Number = 0;
            }
        
        if(millis() - AC_Check_Interval >= 80)
            {
                AC_Check_Interval = millis();
                result = checkAC();
                counts[ACDI_INDEX] = result;
                
                checkHSDI();
            }
        
        if(millis() - MCP_Check_Interval >= 100)
            {
                MCP_Check_Interval = millis();
                temp = 0;
                temp = MCP_AI_INDEX + MCPChannel - 1;
                counts[temp] = readMCPChannel();
                
                //Apply Calibrations
                counts[temp] = counts[temp] - zeroVals[temp];
                ratio = (float)counts[temp]/(float)fullVals[temp];
                counts[temp] = (int16_t)(ratio * ADC_MAX_COUNTS);
                temp = 0;
                
                MCPChannel = MCPChannel + 1;
                if(MCPChannel > 4)
                    MCPChannel = 1;
                setMCPChannel(MCPChannel);
            }
        
        serialEvent();
        
        if(checkNewDataRequest())
        {
            sendNewData(&counts[0], 21, ' ');
        }
        
        if(getPCCommandReceived())
        {
            temp = parsePCCommand();
            if(temp == 1)
            {
                temp = 0;
                SetROs(inputCounts[RO_INDEX]);
                setAOs();
                setHSDOs();
            }
        }
    }

    return 1;
}
/**
 End of File
*/


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
#include "mcc_generated_files/I2C1.h"
#include "mcc_generated_files/uart1.h"
#include <libpic30.h>
#include "mcp3424.h"

/*
                         Main application
 */

int Voltage[4];
int i;
uint8_t MCPaddress = 0x68;
uint8_t config_word = 0xE0;
uint8_t buff[4];
int result;
//I2C1_MESSAGE_STATUS status = I2C1_MESSAGE_PENDING;

int main(void)
{
    // initialize the device
    SYSTEM_Initialize();
    
    printf("Hello ");
    
    MCPbegin(0);
    /*
    for(i=1;i<=4;i++)
        {
            MCPconfiguration(i,12,0,1); // MCP3424 is configured to channel i with 12 bits resolution, one shot mode and gain defined to 1 

            Voltage[i-1]=MCPmeasure(); // Measure is stocked in array Voltage, note that the library will wait for a completed conversion that takes around 200 ms@18bits

            printf("%ld ", Voltage[i-1]); // print results
        }
    
    
    status = I2C1_MESSAGE_PENDING;
    I2C1_MasterWrite(&config_word, 1, MCPaddress, &status);
    while(status == I2C1_MESSAGE_PENDING);      // blocking
    
    status = I2C1_MESSAGE_PENDING;
    I2C1_MasterRead(&buff[0], 3, MCPaddress, &status);
    while(status == I2C1_MESSAGE_PENDING);      // blocking
    
    result = (buff[0] << 8) | buff[1];
    printf("%d ", result);
    __delay_ms(1000);
    
    printf("%d ", buff[0]);
    printf("%d ", buff[1]);
    printf("%d ", buff[2]);
    */
    /*
    printf("Hello ");
    ///i2c init 
    I2C_HWini(); 
    I2C_SWini(); 
    I2C_ModuleStart(); 

    result = I2C1_M_Poll(0x68);  ///0x50 is the device address;
    
    printf("%d ", result);
    */
    while (1)
    {
        /*
        status = I2C1_MESSAGE_PENDING;
        I2C1_MasterWrite(&config_word, 1, MCPaddress, &status);
        while(status == I2C1_MESSAGE_PENDING);      // blocking

        status = I2C1_MESSAGE_PENDING;
        I2C1_MasterRead(&buff[0], 3, MCPaddress, &status);
        while(status == I2C1_MESSAGE_PENDING);      // blocking

        result = (buff[0] << 8) | buff[1];
        printf("%d ", result);
        */
        
        
        for(i=1;i<=4;i++)
        {
            MCPconfiguration(i,16,0,1); // MCP3424 is configured to channel i with 12 bits resolution, one shot mode and gain defined to 1 

            Voltage[i-1]=MCPmeasure(); // Measure is stocked in array Voltage, note that the library will wait for a completed conversion that takes around 200 ms@18bits

            printf("%d ", Voltage[i-1]); // print results
        }
    }
    return 1;
}
/**
 End of File
*/


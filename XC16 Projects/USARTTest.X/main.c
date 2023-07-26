/**
  Generated Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This is the main file generated using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  Description:
    This header file provides implementations for driver APIs for all modules selected in the GUI.
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.65.2
        Device            :  PIC16F1937
        Driver Version    :  2.00
*/

/*
    (c) 2018 Microchip Technology Inc. and its subsidiaries. 
    
    Subject to your compliance with these terms, you may use Microchip software and any 
    derivatives exclusively with Microchip products. It is your responsibility to comply with third party 
    license terms applicable to your use of third party software (including open source software) that 
    may accompany Microchip software.
    
    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER 
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY 
    IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS 
    FOR A PARTICULAR PURPOSE.
    
    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP 
    HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO 
    THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL 
    CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT 
    OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS 
    SOFTWARE.
*/
#include <xc.h>
#include <string.h>
#include "mcc_generated_files/mcc.h"
//#include "mcc_generated_files/interrupt_manager.h"
#include "mcc_generated_files/device_config.h"
#include "mcc_generated_files/eusart.h"
#include "mcc_generated_files/pin_manager.h"
#include "mcc_generated_files/tmr6.h"
//#include "i2c_rajesh.h"
#include "mcc_generated_files/i2c.h"
//#include <libpic30.h>
/*
                         Main application
 */
long Voltage[4];
int i;
uint8_t config_word = 0x80;
uint8_t buff[4];
uint8_t result;
//I2C_MESSAGE_STATUS status = I2C_MESSAGE_PENDING;
/*
char dataString[100];
bool stringComplete = false;

void appendCharToString(char* s, char c) 
{
        int len = strlen(s);
        s[len] = c;
        s[len+1] = '\0';
}

void clearString(char* s)
{
    s[0] = '\0';
}

void serialEvent()
{
    char rxData;
    while(EUSART_is_rx_ready())
    {
        rxData = (char)EUSART_Read();
        //printf("%c", rxData);
        if(rxData == '\n' || rxData == '\r')
            stringComplete = true;
        else
            appendCharToString(dataString, rxData);
    }
}


uint8_t MCP_Read(uint8_t reg, uint8_t *pData, uint8_t len)
{
    static I2C_TRANSACTION_REQUEST_BLOCK trb[2];
 
    I2C_MasterWriteTRBBuild(&trb[0], &reg, len, 0xD0);
    I2C_MasterReadTRBBuild(&trb[1], pData, len, 0xD0);                
    I2C_MasterTRBInsert(2, &trb[0], &status);
 
    while(status == I2C_MESSAGE_PENDING);      // blocking
 
    return (status == I2C_MESSAGE_COMPLETE); 
}
*/
void main(void)
{
    // initialize the device
    SYSTEM_Initialize();

    // When using interrupts, you need to set the Global and Peripheral Interrupt Enable bits
    // Use the following macros to:

    // Enable the Global Interrupts
    //INTERRUPT_GlobalInterruptEnable();

    // Enable the Peripheral Interrupts
    //INTERRUPT_PeripheralInterruptEnable();
    /*
    status = I2C_MESSAGE_PENDING;
    I2C_MasterWrite(&config_word, 1, 0x00D0, status);
    while(status == I2C_MESSAGE_PENDING);      // blocking
    printf("Hello World...!");
    status = I2C_MESSAGE_PENDING;
    I2C_MasterRead(&buff[0], 3, 0x00D0, status);
    while(status == I2C_MESSAGE_PENDING);      // blocking
    */
    int16_t reading;
    int8_t ana;
    int8_t i;
    
    //printf("Hello World...! ");
    
    start_i2c();
    write_byte_i2c(0xD0);
    write_byte_i2c(0xD8);
    stop_i2c();
    fun_nop();					
    fun_nop();					
    fun_nop();					
    fun_nop();
    start_i2c();
    write_byte_i2c(0xD1);
    ana = read_byte_i2c();
    ack_i2c();
    reading = ana;
    
    ana = read_byte_i2c();
    ack_i2c();
    reading = (reading << 8) | ana;
    
    ana = read_byte_i2c();
    no_ack_i2c();
    stop_i2c();
    fun_nop();					
    fun_nop();					
    fun_nop();					
    fun_nop();					
    i = ana & 0x7f;   
    printf("%d ", i);
    printf("%d", reading);
    //__delay_ms(500);
    /*
    for(i=1;i<=4;i++)
            {
                
                //printf(" Hello World ...!"); 
                
                MCPconfiguration(i,16,1,1); // MCP3424 is configured to channel i with 18 bits resolution, continous mode and gain defined to 8 
                //__delay_ms(50);
                Voltage[i-1]=MCPmeasure(); // Measure is stocked in array Voltage, note that the library will wait for a completed conversion that takes around 200 ms@18bits
                //__delay_ms(50);
                printf("%l ", Voltage[i-1]);
                
            }
     */
    // Disable the Global Interrupts
    //INTERRUPT_GlobalInterruptDisable();

    // Disable the Peripheral Interrupts
    //INTERRUPT_PeripheralInterruptDisable();
    //unsigned long currentMillis = 0;
    //button_SetDigitalMode();
    //button_SetDigitalInput();
    while (1)
    {
        /*
        //1 min loop
        if(button_GetValue() == HIGH)
        {
            //printf("Hello World...! ");
            for(int i = -10; i<=0; i++)
            {
                printf("%d", i);
                printf(" ");
            }
            while(button_GetValue() == HIGH);
        }
        
        if(stringComplete)
        {
            //printf("%s", dataString);
            int i = atoi(dataString);
            printf("%d", i);
            i++;
            printf("%d", i);
            stringComplete = false;
            clearString(dataString);
        }
        
        if(millis() - currentMillis >= 1000)
        {
            currentMillis = millis();
            //printf("Hello World...! ");
        }
        
        serialEvent();
        */
    }
}
/**
 End of File
*/
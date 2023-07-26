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
#include "i2c_rajesh.h"
#include "mcc_generated_files/uart1.h"
/*
                         Main application
 */
int main(void)
{
    // initialize the device
    SYSTEM_Initialize();
    int16_t reading;
    int8_t ana;
    int8_t i;
    
    //printf("Hello World...! ");
    
    start_i2c();
    write_byte_i2c(0xD0);
    write_byte_i2c(0x80);
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
    
    while (1)
    {
        // Add your application code
    }

    return 1;
}
/**
 End of File
*/


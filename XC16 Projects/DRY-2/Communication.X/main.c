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
        Product Revision  :  PIC24 / dsPIC33 / PIC32MM MCUs - 1.125
        Device            :  PIC24FJ128GA310
    The generated drivers are tested against the following:
        Compiler          :  XC16 v1.36B
        MPLAB 	          :  MPLAB X v5.20
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
#include "mcc_generated_files/memory/flash_demo.h"
#include "comm.h"
#include "storage.h"
#include "variables.h"
#include "mcc_generated_files/uart1.h"
#include <stdbool.h>

/*
                         Main application
 */
int16_t flash_counts[21];
bool res = false;
int16_t flashInt;
int16_t x = 1234;
int16_t y = 4231;
int16_t z = -100;
int i;

char calDone,k = 'F';
char flashChar;
char command[25] = "Hello World...!";
char flashStr[25];

int main(void)
{
    // initialize the device
    SYSTEM_Initialize();
    //FlashDemo();
    /*
    storeInt(x, 0);
    storeInt(y, 1);
    storeInt(z, 2);
    
    storeIntArray(&counts[0], 21, 3);
    readIntArray(&flash_counts[0], 21, 3);
    
    for(i = 0; i < 21; i++)
        printf("%d ",flash_counts[i]);
    
    printf('\n');
    flashInt = readInt(0);
    printf("%d ",flashInt);
    flashInt = readInt(1);
    printf("%d ",flashInt);
    flashInt = readInt(2);
    printf("%d ",flashInt);
    
    storeChar(k, 41);
    flashChar = readChar(41);
    printf("%c ",flashChar);
    i = strlen(command);
    storeString(command, i, 51);
    readString(flashStr, 51);
    printf("%s ",flashStr);
    
    //Save new factory calibration
    res = storeChar('F', 100);
    calDone = readChar(100);
    printf("%c ", calDone);
    */
    loadFlashPage();
    clearPCCommand();
    while (1)
    {
        if(getPCCommandReceived())
        {
            i = parsePCCommand();
            if(i == 1)
                sendNewData(&inputCounts[0], 20, ' ');
        }
        if(checkNewDataRequest())
        {
            setNewDataRequest(false);
            sendNewData(&counts[0], 21, ' ');
            sendNewData(&zeroVals[0], 20, ' ');
            sendNewData(&fullVals[0], 20, ' ');
        }
        serialEvent();
    }
    return 1;
}
/**
 End of File
*/


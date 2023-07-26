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
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.77
        Device            :  PIC16F1939
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

#include <string.h>
#include "mcc_generated_files/mcc.h"
#include "DI.h"
#include "Out.h"
#include "mcc_generated_files/eusart.h"

/*
                         Main application
 */

char dataString[5];
bool stringComplete = false;
unsigned int diValue;
char newline = '\n';

char getCharAt(char* s, int loc)
{
    if(strlen(s) < loc)
        return NULL;
    else
        return s[loc];
}

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
        if (rxData == '#')// && commandReceiving == false) 
          {
            printf("%d", diValue);
            printf("%c", newline);
          }
        else if (rxData == '\n')// && commandReceiving == false) 
          {
            return;
          }
        else
          {
            if(rxData == '\r')
                stringComplete = true;
            else
                appendCharToString(dataString, rxData);
          }
    }
}

void main(void)
{
    // initialize the device
    SYSTEM_Initialize();

    // When using interrupts, you need to set the Global and Peripheral Interrupt Enable bits
    // Use the following macros to:

    // Enable the Global Interrupts
    INTERRUPT_GlobalInterruptEnable();

    // Enable the Peripheral Interrupts
    INTERRUPT_PeripheralInterruptEnable();

    // Disable the Global Interrupts
    //INTERRUPT_GlobalInterruptDisable();

    // Disable the Peripheral Interrupts
    //INTERRUPT_PeripheralInterruptDisable();
    SetDOs(0);
    /*
    while (1)
    {
        
        _delay(20000000);
        SetDOs(0xFFFF);
        _delay(20000000);
    }
    */
    while (1)
    {
        diValue = checkDI();
        serialEvent();
        if(stringComplete == true)
        {
            char number[10] = {0,0,0,0,0,0,0,0,0,0};
            int i;
            int index = 0;
            while(dataString[index] != '\0')
            {
                if(dataString[index] >= '0' || dataString[index] <= '9')
                    number[index] = dataString[index];
                index++;
            }
            i = atoi(number);
            //printf("%d", i);
            SetDOs(i);
            stringComplete = false;
            clearString(dataString);
        }
        //printf("Hello World...!");
        //_delay(500000);
        //DO_0_SetHigh();
        _delay(50);
        //DO_0_SetLow();
    }
}
/**
 End of File
*/
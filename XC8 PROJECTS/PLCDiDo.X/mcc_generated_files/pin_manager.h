/**
  @Generated Pin Manager Header File

  @Company:
    Microchip Technology Inc.

  @File Name:
    pin_manager.h

  @Summary:
    This is the Pin Manager file generated using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  @Description
    This header file provides APIs for driver for .
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.77
        Device            :  PIC16F1939
        Driver Version    :  2.11
    The generated drivers are tested against the following:
        Compiler          :  XC8 2.05 and above
        MPLAB 	          :  MPLAB X 5.20	
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

#ifndef PIN_MANAGER_H
#define PIN_MANAGER_H

/**
  Section: Included Files
*/

#include <xc.h>

#define INPUT   1
#define OUTPUT  0

#define HIGH    1
#define LOW     0

#define ANALOG      1
#define DIGITAL     0

#define PULL_UP_ENABLED      1
#define PULL_UP_DISABLED     0

// get/set DO_0 aliases
#define DO_0_TRIS                 TRISAbits.TRISA0
#define DO_0_LAT                  LATAbits.LATA0
#define DO_0_PORT                 PORTAbits.RA0
#define DO_0_ANS                  ANSELAbits.ANSA0
#define DO_0_SetHigh()            do { LATAbits.LATA0 = 1; } while(0)
#define DO_0_SetLow()             do { LATAbits.LATA0 = 0; } while(0)
#define DO_0_Toggle()             do { LATAbits.LATA0 = ~LATAbits.LATA0; } while(0)
#define DO_0_GetValue()           PORTAbits.RA0
#define DO_0_SetDigitalInput()    do { TRISAbits.TRISA0 = 1; } while(0)
#define DO_0_SetDigitalOutput()   do { TRISAbits.TRISA0 = 0; } while(0)
#define DO_0_SetAnalogMode()      do { ANSELAbits.ANSA0 = 1; } while(0)
#define DO_0_SetDigitalMode()     do { ANSELAbits.ANSA0 = 0; } while(0)

// get/set DO_1 aliases
#define DO_1_TRIS                 TRISAbits.TRISA1
#define DO_1_LAT                  LATAbits.LATA1
#define DO_1_PORT                 PORTAbits.RA1
#define DO_1_ANS                  ANSELAbits.ANSA1
#define DO_1_SetHigh()            do { LATAbits.LATA1 = 1; } while(0)
#define DO_1_SetLow()             do { LATAbits.LATA1 = 0; } while(0)
#define DO_1_Toggle()             do { LATAbits.LATA1 = ~LATAbits.LATA1; } while(0)
#define DO_1_GetValue()           PORTAbits.RA1
#define DO_1_SetDigitalInput()    do { TRISAbits.TRISA1 = 1; } while(0)
#define DO_1_SetDigitalOutput()   do { TRISAbits.TRISA1 = 0; } while(0)
#define DO_1_SetAnalogMode()      do { ANSELAbits.ANSA1 = 1; } while(0)
#define DO_1_SetDigitalMode()     do { ANSELAbits.ANSA1 = 0; } while(0)

// get/set DO_2 aliases
#define DO_2_TRIS                 TRISAbits.TRISA2
#define DO_2_LAT                  LATAbits.LATA2
#define DO_2_PORT                 PORTAbits.RA2
#define DO_2_ANS                  ANSELAbits.ANSA2
#define DO_2_SetHigh()            do { LATAbits.LATA2 = 1; } while(0)
#define DO_2_SetLow()             do { LATAbits.LATA2 = 0; } while(0)
#define DO_2_Toggle()             do { LATAbits.LATA2 = ~LATAbits.LATA2; } while(0)
#define DO_2_GetValue()           PORTAbits.RA2
#define DO_2_SetDigitalInput()    do { TRISAbits.TRISA2 = 1; } while(0)
#define DO_2_SetDigitalOutput()   do { TRISAbits.TRISA2 = 0; } while(0)
#define DO_2_SetAnalogMode()      do { ANSELAbits.ANSA2 = 1; } while(0)
#define DO_2_SetDigitalMode()     do { ANSELAbits.ANSA2 = 0; } while(0)

// get/set DO_3 aliases
#define DO_3_TRIS                 TRISAbits.TRISA3
#define DO_3_LAT                  LATAbits.LATA3
#define DO_3_PORT                 PORTAbits.RA3
#define DO_3_ANS                  ANSELAbits.ANSA3
#define DO_3_SetHigh()            do { LATAbits.LATA3 = 1; } while(0)
#define DO_3_SetLow()             do { LATAbits.LATA3 = 0; } while(0)
#define DO_3_Toggle()             do { LATAbits.LATA3 = ~LATAbits.LATA3; } while(0)
#define DO_3_GetValue()           PORTAbits.RA3
#define DO_3_SetDigitalInput()    do { TRISAbits.TRISA3 = 1; } while(0)
#define DO_3_SetDigitalOutput()   do { TRISAbits.TRISA3 = 0; } while(0)
#define DO_3_SetAnalogMode()      do { ANSELAbits.ANSA3 = 1; } while(0)
#define DO_3_SetDigitalMode()     do { ANSELAbits.ANSA3 = 0; } while(0)

// get/set DO_4 aliases
#define DO_4_TRIS                 TRISAbits.TRISA4
#define DO_4_LAT                  LATAbits.LATA4
#define DO_4_PORT                 PORTAbits.RA4
#define DO_4_ANS                  ANSELAbits.ANSA4
#define DO_4_SetHigh()            do { LATAbits.LATA4 = 1; } while(0)
#define DO_4_SetLow()             do { LATAbits.LATA4 = 0; } while(0)
#define DO_4_Toggle()             do { LATAbits.LATA4 = ~LATAbits.LATA4; } while(0)
#define DO_4_GetValue()           PORTAbits.RA4
#define DO_4_SetDigitalInput()    do { TRISAbits.TRISA4 = 1; } while(0)
#define DO_4_SetDigitalOutput()   do { TRISAbits.TRISA4 = 0; } while(0)
#define DO_4_SetAnalogMode()      do { ANSELAbits.ANSA4 = 1; } while(0)
#define DO_4_SetDigitalMode()     do { ANSELAbits.ANSA4 = 0; } while(0)

// get/set DO_5 aliases
#define DO_5_TRIS                 TRISAbits.TRISA5
#define DO_5_LAT                  LATAbits.LATA5
#define DO_5_PORT                 PORTAbits.RA5
#define DO_5_ANS                  ANSELAbits.ANSA5
#define DO_5_SetHigh()            do { LATAbits.LATA5 = 1; } while(0)
#define DO_5_SetLow()             do { LATAbits.LATA5 = 0; } while(0)
#define DO_5_Toggle()             do { LATAbits.LATA5 = ~LATAbits.LATA5; } while(0)
#define DO_5_GetValue()           PORTAbits.RA5
#define DO_5_SetDigitalInput()    do { TRISAbits.TRISA5 = 1; } while(0)
#define DO_5_SetDigitalOutput()   do { TRISAbits.TRISA5 = 0; } while(0)
#define DO_5_SetAnalogMode()      do { ANSELAbits.ANSA5 = 1; } while(0)
#define DO_5_SetDigitalMode()     do { ANSELAbits.ANSA5 = 0; } while(0)

// get/set DO_6 aliases
#define DO_6_TRIS                 TRISAbits.TRISA6
#define DO_6_LAT                  LATAbits.LATA6
#define DO_6_PORT                 PORTAbits.RA6
#define DO_6_SetHigh()            do { LATAbits.LATA6 = 1; } while(0)
#define DO_6_SetLow()             do { LATAbits.LATA6 = 0; } while(0)
#define DO_6_Toggle()             do { LATAbits.LATA6 = ~LATAbits.LATA6; } while(0)
#define DO_6_GetValue()           PORTAbits.RA6
#define DO_6_SetDigitalInput()    do { TRISAbits.TRISA6 = 1; } while(0)
#define DO_6_SetDigitalOutput()   do { TRISAbits.TRISA6 = 0; } while(0)

// get/set DI_6 aliases
#define DI_6_TRIS                 TRISBbits.TRISB0
#define DI_6_LAT                  LATBbits.LATB0
#define DI_6_PORT                 PORTBbits.RB0
#define DI_6_WPU                  WPUBbits.WPUB0
#define DI_6_ANS                  ANSELBbits.ANSB0
#define DI_6_SetHigh()            do { LATBbits.LATB0 = 1; } while(0)
#define DI_6_SetLow()             do { LATBbits.LATB0 = 0; } while(0)
#define DI_6_Toggle()             do { LATBbits.LATB0 = ~LATBbits.LATB0; } while(0)
#define DI_6_GetValue()           PORTBbits.RB0
#define DI_6_SetDigitalInput()    do { TRISBbits.TRISB0 = 1; } while(0)
#define DI_6_SetDigitalOutput()   do { TRISBbits.TRISB0 = 0; } while(0)
#define DI_6_SetPullup()          do { WPUBbits.WPUB0 = 1; } while(0)
#define DI_6_ResetPullup()        do { WPUBbits.WPUB0 = 0; } while(0)
#define DI_6_SetAnalogMode()      do { ANSELBbits.ANSB0 = 1; } while(0)
#define DI_6_SetDigitalMode()     do { ANSELBbits.ANSB0 = 0; } while(0)

// get/set DI_7 aliases
#define DI_7_TRIS                 TRISBbits.TRISB1
#define DI_7_LAT                  LATBbits.LATB1
#define DI_7_PORT                 PORTBbits.RB1
#define DI_7_WPU                  WPUBbits.WPUB1
#define DI_7_ANS                  ANSELBbits.ANSB1
#define DI_7_SetHigh()            do { LATBbits.LATB1 = 1; } while(0)
#define DI_7_SetLow()             do { LATBbits.LATB1 = 0; } while(0)
#define DI_7_Toggle()             do { LATBbits.LATB1 = ~LATBbits.LATB1; } while(0)
#define DI_7_GetValue()           PORTBbits.RB1
#define DI_7_SetDigitalInput()    do { TRISBbits.TRISB1 = 1; } while(0)
#define DI_7_SetDigitalOutput()   do { TRISBbits.TRISB1 = 0; } while(0)
#define DI_7_SetPullup()          do { WPUBbits.WPUB1 = 1; } while(0)
#define DI_7_ResetPullup()        do { WPUBbits.WPUB1 = 0; } while(0)
#define DI_7_SetAnalogMode()      do { ANSELBbits.ANSB1 = 1; } while(0)
#define DI_7_SetDigitalMode()     do { ANSELBbits.ANSB1 = 0; } while(0)

// get/set DI_8 aliases
#define DI_8_TRIS                 TRISBbits.TRISB2
#define DI_8_LAT                  LATBbits.LATB2
#define DI_8_PORT                 PORTBbits.RB2
#define DI_8_WPU                  WPUBbits.WPUB2
#define DI_8_ANS                  ANSELBbits.ANSB2
#define DI_8_SetHigh()            do { LATBbits.LATB2 = 1; } while(0)
#define DI_8_SetLow()             do { LATBbits.LATB2 = 0; } while(0)
#define DI_8_Toggle()             do { LATBbits.LATB2 = ~LATBbits.LATB2; } while(0)
#define DI_8_GetValue()           PORTBbits.RB2
#define DI_8_SetDigitalInput()    do { TRISBbits.TRISB2 = 1; } while(0)
#define DI_8_SetDigitalOutput()   do { TRISBbits.TRISB2 = 0; } while(0)
#define DI_8_SetPullup()          do { WPUBbits.WPUB2 = 1; } while(0)
#define DI_8_ResetPullup()        do { WPUBbits.WPUB2 = 0; } while(0)
#define DI_8_SetAnalogMode()      do { ANSELBbits.ANSB2 = 1; } while(0)
#define DI_8_SetDigitalMode()     do { ANSELBbits.ANSB2 = 0; } while(0)

// get/set DI_9 aliases
#define DI_9_TRIS                 TRISBbits.TRISB3
#define DI_9_LAT                  LATBbits.LATB3
#define DI_9_PORT                 PORTBbits.RB3
#define DI_9_WPU                  WPUBbits.WPUB3
#define DI_9_ANS                  ANSELBbits.ANSB3
#define DI_9_SetHigh()            do { LATBbits.LATB3 = 1; } while(0)
#define DI_9_SetLow()             do { LATBbits.LATB3 = 0; } while(0)
#define DI_9_Toggle()             do { LATBbits.LATB3 = ~LATBbits.LATB3; } while(0)
#define DI_9_GetValue()           PORTBbits.RB3
#define DI_9_SetDigitalInput()    do { TRISBbits.TRISB3 = 1; } while(0)
#define DI_9_SetDigitalOutput()   do { TRISBbits.TRISB3 = 0; } while(0)
#define DI_9_SetPullup()          do { WPUBbits.WPUB3 = 1; } while(0)
#define DI_9_ResetPullup()        do { WPUBbits.WPUB3 = 0; } while(0)
#define DI_9_SetAnalogMode()      do { ANSELBbits.ANSB3 = 1; } while(0)
#define DI_9_SetDigitalMode()     do { ANSELBbits.ANSB3 = 0; } while(0)

// get/set DI_10 aliases
#define DI_10_TRIS                 TRISBbits.TRISB4
#define DI_10_LAT                  LATBbits.LATB4
#define DI_10_PORT                 PORTBbits.RB4
#define DI_10_WPU                  WPUBbits.WPUB4
#define DI_10_ANS                  ANSELBbits.ANSB4
#define DI_10_SetHigh()            do { LATBbits.LATB4 = 1; } while(0)
#define DI_10_SetLow()             do { LATBbits.LATB4 = 0; } while(0)
#define DI_10_Toggle()             do { LATBbits.LATB4 = ~LATBbits.LATB4; } while(0)
#define DI_10_GetValue()           PORTBbits.RB4
#define DI_10_SetDigitalInput()    do { TRISBbits.TRISB4 = 1; } while(0)
#define DI_10_SetDigitalOutput()   do { TRISBbits.TRISB4 = 0; } while(0)
#define DI_10_SetPullup()          do { WPUBbits.WPUB4 = 1; } while(0)
#define DI_10_ResetPullup()        do { WPUBbits.WPUB4 = 0; } while(0)
#define DI_10_SetAnalogMode()      do { ANSELBbits.ANSB4 = 1; } while(0)
#define DI_10_SetDigitalMode()     do { ANSELBbits.ANSB4 = 0; } while(0)

// get/set DI_11 aliases
#define DI_11_TRIS                 TRISBbits.TRISB5
#define DI_11_LAT                  LATBbits.LATB5
#define DI_11_PORT                 PORTBbits.RB5
#define DI_11_WPU                  WPUBbits.WPUB5
#define DI_11_ANS                  ANSELBbits.ANSB5
#define DI_11_SetHigh()            do { LATBbits.LATB5 = 1; } while(0)
#define DI_11_SetLow()             do { LATBbits.LATB5 = 0; } while(0)
#define DI_11_Toggle()             do { LATBbits.LATB5 = ~LATBbits.LATB5; } while(0)
#define DI_11_GetValue()           PORTBbits.RB5
#define DI_11_SetDigitalInput()    do { TRISBbits.TRISB5 = 1; } while(0)
#define DI_11_SetDigitalOutput()   do { TRISBbits.TRISB5 = 0; } while(0)
#define DI_11_SetPullup()          do { WPUBbits.WPUB5 = 1; } while(0)
#define DI_11_ResetPullup()        do { WPUBbits.WPUB5 = 0; } while(0)
#define DI_11_SetAnalogMode()      do { ANSELBbits.ANSB5 = 1; } while(0)
#define DI_11_SetDigitalMode()     do { ANSELBbits.ANSB5 = 0; } while(0)

// get/set DO_7 aliases
#define DO_7_TRIS                 TRISCbits.TRISC0
#define DO_7_LAT                  LATCbits.LATC0
#define DO_7_PORT                 PORTCbits.RC0
#define DO_7_SetHigh()            do { LATCbits.LATC0 = 1; } while(0)
#define DO_7_SetLow()             do { LATCbits.LATC0 = 0; } while(0)
#define DO_7_Toggle()             do { LATCbits.LATC0 = ~LATCbits.LATC0; } while(0)
#define DO_7_GetValue()           PORTCbits.RC0
#define DO_7_SetDigitalInput()    do { TRISCbits.TRISC0 = 1; } while(0)
#define DO_7_SetDigitalOutput()   do { TRISCbits.TRISC0 = 0; } while(0)

// get/set DO_8 aliases
#define DO_8_TRIS                 TRISCbits.TRISC1
#define DO_8_LAT                  LATCbits.LATC1
#define DO_8_PORT                 PORTCbits.RC1
#define DO_8_SetHigh()            do { LATCbits.LATC1 = 1; } while(0)
#define DO_8_SetLow()             do { LATCbits.LATC1 = 0; } while(0)
#define DO_8_Toggle()             do { LATCbits.LATC1 = ~LATCbits.LATC1; } while(0)
#define DO_8_GetValue()           PORTCbits.RC1
#define DO_8_SetDigitalInput()    do { TRISCbits.TRISC1 = 1; } while(0)
#define DO_8_SetDigitalOutput()   do { TRISCbits.TRISC1 = 0; } while(0)

// get/set DO_9 aliases
#define DO_9_TRIS                 TRISCbits.TRISC2
#define DO_9_LAT                  LATCbits.LATC2
#define DO_9_PORT                 PORTCbits.RC2
#define DO_9_SetHigh()            do { LATCbits.LATC2 = 1; } while(0)
#define DO_9_SetLow()             do { LATCbits.LATC2 = 0; } while(0)
#define DO_9_Toggle()             do { LATCbits.LATC2 = ~LATCbits.LATC2; } while(0)
#define DO_9_GetValue()           PORTCbits.RC2
#define DO_9_SetDigitalInput()    do { TRISCbits.TRISC2 = 1; } while(0)
#define DO_9_SetDigitalOutput()   do { TRISCbits.TRISC2 = 0; } while(0)

// get/set DO_10 aliases
#define DO_10_TRIS                 TRISCbits.TRISC3
#define DO_10_LAT                  LATCbits.LATC3
#define DO_10_PORT                 PORTCbits.RC3
#define DO_10_SetHigh()            do { LATCbits.LATC3 = 1; } while(0)
#define DO_10_SetLow()             do { LATCbits.LATC3 = 0; } while(0)
#define DO_10_Toggle()             do { LATCbits.LATC3 = ~LATCbits.LATC3; } while(0)
#define DO_10_GetValue()           PORTCbits.RC3
#define DO_10_SetDigitalInput()    do { TRISCbits.TRISC3 = 1; } while(0)
#define DO_10_SetDigitalOutput()   do { TRISCbits.TRISC3 = 0; } while(0)

// get/set DO_11 aliases
#define DO_11_TRIS                 TRISCbits.TRISC4
#define DO_11_LAT                  LATCbits.LATC4
#define DO_11_PORT                 PORTCbits.RC4
#define DO_11_SetHigh()            do { LATCbits.LATC4 = 1; } while(0)
#define DO_11_SetLow()             do { LATCbits.LATC4 = 0; } while(0)
#define DO_11_Toggle()             do { LATCbits.LATC4 = ~LATCbits.LATC4; } while(0)
#define DO_11_GetValue()           PORTCbits.RC4
#define DO_11_SetDigitalInput()    do { TRISCbits.TRISC4 = 1; } while(0)
#define DO_11_SetDigitalOutput()   do { TRISCbits.TRISC4 = 0; } while(0)

// get/set RC6 procedures
#define RC6_SetHigh()            do { LATCbits.LATC6 = 1; } while(0)
#define RC6_SetLow()             do { LATCbits.LATC6 = 0; } while(0)
#define RC6_Toggle()             do { LATCbits.LATC6 = ~LATCbits.LATC6; } while(0)
#define RC6_GetValue()              PORTCbits.RC6
#define RC6_SetDigitalInput()    do { TRISCbits.TRISC6 = 1; } while(0)
#define RC6_SetDigitalOutput()   do { TRISCbits.TRISC6 = 0; } while(0)

// get/set RC7 procedures
#define RC7_SetHigh()            do { LATCbits.LATC7 = 1; } while(0)
#define RC7_SetLow()             do { LATCbits.LATC7 = 0; } while(0)
#define RC7_Toggle()             do { LATCbits.LATC7 = ~LATCbits.LATC7; } while(0)
#define RC7_GetValue()              PORTCbits.RC7
#define RC7_SetDigitalInput()    do { TRISCbits.TRISC7 = 1; } while(0)
#define RC7_SetDigitalOutput()   do { TRISCbits.TRISC7 = 0; } while(0)

// get/set DI_0 aliases
#define DI_0_TRIS                 TRISDbits.TRISD0
#define DI_0_LAT                  LATDbits.LATD0
#define DI_0_PORT                 PORTDbits.RD0
#define DI_0_ANS                  ANSELDbits.ANSD0
#define DI_0_SetHigh()            do { LATDbits.LATD0 = 1; } while(0)
#define DI_0_SetLow()             do { LATDbits.LATD0 = 0; } while(0)
#define DI_0_Toggle()             do { LATDbits.LATD0 = ~LATDbits.LATD0; } while(0)
#define DI_0_GetValue()           PORTDbits.RD0
#define DI_0_SetDigitalInput()    do { TRISDbits.TRISD0 = 1; } while(0)
#define DI_0_SetDigitalOutput()   do { TRISDbits.TRISD0 = 0; } while(0)
#define DI_0_SetAnalogMode()      do { ANSELDbits.ANSD0 = 1; } while(0)
#define DI_0_SetDigitalMode()     do { ANSELDbits.ANSD0 = 0; } while(0)

// get/set DI_1 aliases
#define DI_1_TRIS                 TRISDbits.TRISD1
#define DI_1_LAT                  LATDbits.LATD1
#define DI_1_PORT                 PORTDbits.RD1
#define DI_1_ANS                  ANSELDbits.ANSD1
#define DI_1_SetHigh()            do { LATDbits.LATD1 = 1; } while(0)
#define DI_1_SetLow()             do { LATDbits.LATD1 = 0; } while(0)
#define DI_1_Toggle()             do { LATDbits.LATD1 = ~LATDbits.LATD1; } while(0)
#define DI_1_GetValue()           PORTDbits.RD1
#define DI_1_SetDigitalInput()    do { TRISDbits.TRISD1 = 1; } while(0)
#define DI_1_SetDigitalOutput()   do { TRISDbits.TRISD1 = 0; } while(0)
#define DI_1_SetAnalogMode()      do { ANSELDbits.ANSD1 = 1; } while(0)
#define DI_1_SetDigitalMode()     do { ANSELDbits.ANSD1 = 0; } while(0)

// get/set DI_2 aliases
#define DI_2_TRIS                 TRISDbits.TRISD2
#define DI_2_LAT                  LATDbits.LATD2
#define DI_2_PORT                 PORTDbits.RD2
#define DI_2_ANS                  ANSELDbits.ANSD2
#define DI_2_SetHigh()            do { LATDbits.LATD2 = 1; } while(0)
#define DI_2_SetLow()             do { LATDbits.LATD2 = 0; } while(0)
#define DI_2_Toggle()             do { LATDbits.LATD2 = ~LATDbits.LATD2; } while(0)
#define DI_2_GetValue()           PORTDbits.RD2
#define DI_2_SetDigitalInput()    do { TRISDbits.TRISD2 = 1; } while(0)
#define DI_2_SetDigitalOutput()   do { TRISDbits.TRISD2 = 0; } while(0)
#define DI_2_SetAnalogMode()      do { ANSELDbits.ANSD2 = 1; } while(0)
#define DI_2_SetDigitalMode()     do { ANSELDbits.ANSD2 = 0; } while(0)

// get/set DI_3 aliases
#define DI_3_TRIS                 TRISDbits.TRISD3
#define DI_3_LAT                  LATDbits.LATD3
#define DI_3_PORT                 PORTDbits.RD3
#define DI_3_ANS                  ANSELDbits.ANSD3
#define DI_3_SetHigh()            do { LATDbits.LATD3 = 1; } while(0)
#define DI_3_SetLow()             do { LATDbits.LATD3 = 0; } while(0)
#define DI_3_Toggle()             do { LATDbits.LATD3 = ~LATDbits.LATD3; } while(0)
#define DI_3_GetValue()           PORTDbits.RD3
#define DI_3_SetDigitalInput()    do { TRISDbits.TRISD3 = 1; } while(0)
#define DI_3_SetDigitalOutput()   do { TRISDbits.TRISD3 = 0; } while(0)
#define DI_3_SetAnalogMode()      do { ANSELDbits.ANSD3 = 1; } while(0)
#define DI_3_SetDigitalMode()     do { ANSELDbits.ANSD3 = 0; } while(0)

// get/set DI_4 aliases
#define DI_4_TRIS                 TRISDbits.TRISD4
#define DI_4_LAT                  LATDbits.LATD4
#define DI_4_PORT                 PORTDbits.RD4
#define DI_4_ANS                  ANSELDbits.ANSD4
#define DI_4_SetHigh()            do { LATDbits.LATD4 = 1; } while(0)
#define DI_4_SetLow()             do { LATDbits.LATD4 = 0; } while(0)
#define DI_4_Toggle()             do { LATDbits.LATD4 = ~LATDbits.LATD4; } while(0)
#define DI_4_GetValue()           PORTDbits.RD4
#define DI_4_SetDigitalInput()    do { TRISDbits.TRISD4 = 1; } while(0)
#define DI_4_SetDigitalOutput()   do { TRISDbits.TRISD4 = 0; } while(0)
#define DI_4_SetAnalogMode()      do { ANSELDbits.ANSD4 = 1; } while(0)
#define DI_4_SetDigitalMode()     do { ANSELDbits.ANSD4 = 0; } while(0)

// get/set DI_5 aliases
#define DI_5_TRIS                 TRISDbits.TRISD5
#define DI_5_LAT                  LATDbits.LATD5
#define DI_5_PORT                 PORTDbits.RD5
#define DI_5_ANS                  ANSELDbits.ANSD5
#define DI_5_SetHigh()            do { LATDbits.LATD5 = 1; } while(0)
#define DI_5_SetLow()             do { LATDbits.LATD5 = 0; } while(0)
#define DI_5_Toggle()             do { LATDbits.LATD5 = ~LATDbits.LATD5; } while(0)
#define DI_5_GetValue()           PORTDbits.RD5
#define DI_5_SetDigitalInput()    do { TRISDbits.TRISD5 = 1; } while(0)
#define DI_5_SetDigitalOutput()   do { TRISDbits.TRISD5 = 0; } while(0)
#define DI_5_SetAnalogMode()      do { ANSELDbits.ANSD5 = 1; } while(0)
#define DI_5_SetDigitalMode()     do { ANSELDbits.ANSD5 = 0; } while(0)

/**
   @Param
    none
   @Returns
    none
   @Description
    GPIO and peripheral I/O initialization
   @Example
    PIN_MANAGER_Initialize();
 */
void PIN_MANAGER_Initialize (void);

/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Interrupt on Change Handling routine
 * @Example
    PIN_MANAGER_IOC();
 */
void PIN_MANAGER_IOC(void);



#endif // PIN_MANAGER_H
/**
 End of File
*/
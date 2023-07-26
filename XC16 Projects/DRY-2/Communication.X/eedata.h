/* Microchip Technology Inc. and its subsidiaries.  You may use this software 
 * and any derivatives exclusively with Microchip products. 
 * 
 * THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS".  NO WARRANTIES, WHETHER 
 * EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED 
 * WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A 
 * PARTICULAR PURPOSE, OR ITS INTERACTION WITH MICROCHIP PRODUCTS, COMBINATION 
 * WITH ANY OTHER PRODUCTS, OR USE IN ANY APPLICATION. 
 *
 * IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
 * INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
 * WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS 
 * BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE.  TO THE 
 * FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS 
 * IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF 
 * ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
 *
 * MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE 
 * TERMS. 
 */

/*-------------------------------------------------------------------
* PICF32KA304 Data EEPROM header
*
* (c) Copyright 1999-2015 Microchip Technology, All rights reserved
*
<See generated header files for additional copyright information.>
*/
/********************************************************************
* Function: EEData_WTL
* Precondition: None.
* Overview: Write one word of EEData
* Input: Action to take: Erase or Write, Data to write
* Output: None.
*******************************************************************/
void EEData_WTL(unsigned int action, unsigned int data);
/********************************************************************
* Function: EEData_Erase
* Precondition: None.
* Overview: Set up erase of one word of EEData
* Input: None.
* Output: None.
*******************************************************************/
void EEData_Erase(void);
/********************************************************************
* Function: EEData_Write
* Precondition: None.
* Overview: Set up write of one word of EEData
* Input: Data to write
* Output: None.
*******************************************************************/
void EEData_Write(unsigned int data);
/********************************************************************
* Function: EEData_Read
* Precondition: None.
* Overview: Read one word of EEData
* Input: None.
* Output: Value read from EEData
*******************************************************************/
unsigned int EEData_Read(void);
/**
End of File
*/
/*
 * File:   eedata.c
 * Author: AMIEian
 *
 * Created on July 15, 2019, 7:23 PM
 */
/**
Data EEPROM Write and Read
<See eedata.c for file description information.>
*/
/*
Copyright (c) 2013 - 2015 released Microchip Technology Inc. All
rights reserved.
<See generated header files for additional copyright information.>
*/
#include <xc.h>
#include "eedata.h"
#define ERASE_EEWORD 0x4058
#define WRITE_EEWORD 0x4004
int __attribute__ ((space(eedata))) eeData = 0x0;
unsigned int offset = 0x0;
/********************************************************************
* Function: EEData_WTL
* Precondition: None.
* Overview: Write one word of EEData
* Input: Action to take: Erase or Write, Data to write
* Output: None.
*******************************************************************/
void EEData_WTL(unsigned int action, unsigned int data) {
// Set up NVMCON to write one word of data EEPROM
NVMCON = action;
// Set up a pointer to the EEPROM location to be written
TBLPAG = __builtin_tblpage(&eeData);
offset = __builtin_tbloffset(&eeData);
__builtin_tblwtl(offset, data);
// Issue Unlock Sequence & Start Write Cycle
__builtin_write_NVM();
// Wait for completion
while(NVMCONbits.WR);
}
/********************************************************************
* Function: EEData_Erase
* Precondition: None.
* Overview: Set up erase of one word of EEData
* Input: None.
* Output: None.
*******************************************************************/
void EEData_Erase(void) {
EEData_WTL(ERASE_EEWORD, 0);
}
/********************************************************************
* Function: EEData_Write
* Precondition: None.
* Overview: Set up write of one word of EEData
* Input: Data to write
* Output: None.
*******************************************************************/
void EEData_Write(unsigned int data) {
EEData_WTL(WRITE_EEWORD, data);
}
/********************************************************************
* Function: EEData_Read
* Precondition: None.
* Overview: Read one word of EEData
* Input: None.
* Output: Value read from EEData
*******************************************************************/
unsigned int EEData_Read(void) {
// Set up a pointer to the EEPROM location to be read
TBLPAG = __builtin_tblpage(&eeData);
offset = __builtin_tbloffset(&eeData);
// Read the EEPROM data
return __builtin_tblrdl(offset);
}
/**
End of File
*/
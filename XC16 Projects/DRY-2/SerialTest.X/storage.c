/*
 * File:   storage.c
 * Author: AMIEian
 *
 * Created on July 14, 2019, 6:34 PM
 */


#include "mcc_generated_files/memory/flash.h"

// Allocate and reserve a page of flash for this test to use.  The compiler/linker will reserve this for data and not place any code here.
static __prog__ uint8_t flashTestPage[FLASH_ERASE_PAGE_SIZE_IN_PC_UNITS] __attribute__((space(prog),aligned(FLASH_ERASE_PAGE_SIZE_IN_PC_UNITS)));

bool storeInt(int16_t data, int16_t adr)
{
    uint32_t flash_storage_address;
    bool result = false;
    
    // Get flash page aligned address of flash reserved above for this test.
    flash_storage_address = FLASH_GetErasePageAddress((uint32_t)&flashTestPage[0]);
    adr = adr * 2;
    flash_storage_address = flash_storage_address + adr;

    // Program Valid Key for NVM Commands
    FLASH_Unlock(FLASH_UNLOCK_KEY);
    
    // Erase the page of flash at this address
    result = FLASH_ErasePage(flash_storage_address);
    
    result = FLASH_WriteWord16(flash_storage_address, data);

    // Clear Key for NVM Commands so accidental call to flash routines will not corrupt flash
    FLASH_Lock();
    
    return result;
}

bool storeIntArray(int16_t* dataPtr, int16_t arrayLength, int16_t adr)
{
    uint32_t flash_storage_address;
    bool result;
    int16_t i;
    
    // Get flash page aligned address of flash reserved above for this test.
    flash_storage_address = FLASH_GetErasePageAddress((uint32_t)&flashTestPage[0]);
    adr = adr * 2;
    flash_storage_address = flash_storage_address + adr;

    // Program Valid Key for NVM Commands
    FLASH_Unlock(FLASH_UNLOCK_KEY);
    
    // Erase the page of flash at this address
    result = FLASH_ErasePage(flash_storage_address);
    
    for(i = 0; i < arrayLength; i++)
    {
        result = FLASH_WriteWord16(flash_storage_address, dataPtr[i]);
        if(result == false)
            break;
        flash_storage_address = flash_storage_address + 2;
    }
    
    // Clear Key for NVM Commands so accidental call to flash routines will not corrupt flash
    FLASH_Lock();
    
    return result;
}

int16_t readInt(int16_t adr)
{
    uint32_t flash_storage_address;
    int16_t result;
    
    // Get flash page aligned address of flash reserved above for this test.
    flash_storage_address = FLASH_GetErasePageAddress((uint32_t)&flashTestPage[0]);
    adr = adr * 2;
    flash_storage_address = flash_storage_address + adr;
    
    result = FLASH_ReadWord16(flash_storage_address);
    
    return result;
}

void readIntArray(int16_t* dataPtr, int16_t arrayLength, int16_t adr)
{
    uint32_t flash_storage_address;
    int16_t result;
    int16_t i;
    
    // Get flash page aligned address of flash reserved above for this test.
    flash_storage_address = FLASH_GetErasePageAddress((uint32_t)&flashTestPage[0]);
    adr = adr * 2;
    flash_storage_address = flash_storage_address + adr;
    
    for(i = 0; i < arrayLength; i++)
    {
        result = (int16_t)FLASH_ReadWord16(flash_storage_address);
        dataPtr[i] = result;
        flash_storage_address = flash_storage_address + 2;
    }
}

bool storeChar(char ch, int16_t adr)
{
    uint32_t flash_storage_address;
    bool result;
    
    // Get flash page aligned address of flash reserved above for this test.
    flash_storage_address = FLASH_GetErasePageAddress((uint32_t)&flashTestPage[0]);
    adr = adr * 2;
    flash_storage_address = flash_storage_address + adr;

    // Program Valid Key for NVM Commands
    FLASH_Unlock(FLASH_UNLOCK_KEY);
    
    // Erase the page of flash at this address
    result = FLASH_ErasePage(flash_storage_address);
    
    result = FLASH_WriteWord16(flash_storage_address, ch);
    
    // Clear Key for NVM Commands so accidental call to flash routines will not corrupt flash
    FLASH_Lock();
    
    return result;
}

bool storeString(char* strPtr, int16_t strLength, int16_t adr)
{
    uint32_t flash_storage_address;
    bool result;
    int i;
    char ch;
    
    // Get flash page aligned address of flash reserved above for this test.
    flash_storage_address = FLASH_GetErasePageAddress((uint32_t)&flashTestPage[0]);
    adr = adr * 2;
    flash_storage_address = flash_storage_address + adr;

    // Program Valid Key for NVM Commands
    FLASH_Unlock(FLASH_UNLOCK_KEY);
    
    // Erase the page of flash at this address
    result = FLASH_ErasePage(flash_storage_address);
    
    for(i = 0; i < strLength; i++)
    {
        ch = strPtr[i];
        result = FLASH_WriteWord16(flash_storage_address, ch);
        if(result == false)
            break;
        flash_storage_address = flash_storage_address + 2;
    }
    
    ch = '\0';
    if(result == true)
        //Store end of string character
        result = FLASH_WriteWord16(flash_storage_address, ch);
    
    // Clear Key for NVM Commands so accidental call to flash routines will not corrupt flash
    FLASH_Lock();
    
    return result;
}

char readChar(int16_t adr)
{
    uint32_t flash_storage_address;
    char result;
    
    // Get flash page aligned address of flash reserved above for this test.
    flash_storage_address = FLASH_GetErasePageAddress((uint32_t)&flashTestPage[0]);
    adr = adr * 2;
    flash_storage_address = flash_storage_address + adr;
    
    result = (char)FLASH_ReadWord16(flash_storage_address);
    
    return result;
}

void readString(char* strPtr, int16_t adr)
{
    uint32_t flash_storage_address;
    char result;
    int16_t i = 0;
    
    // Get flash page aligned address of flash reserved above for this test.
    flash_storage_address = FLASH_GetErasePageAddress((uint32_t)&flashTestPage[0]);
    adr = adr * 2;
    flash_storage_address = flash_storage_address + adr;
    
    result = '0';
    while(result != '\0')
    {
        result = (char)FLASH_ReadWord16(flash_storage_address);
        strPtr[i] = result;
        flash_storage_address = flash_storage_address + 2;
        i++;
    }
}

bool clearStorageLocation(int16_t adr)
{
    uint32_t flash_storage_address;
    bool result;
    int16_t data = 0x0000;
    
    // Get flash page aligned address of flash reserved above for this test.
    flash_storage_address = FLASH_GetErasePageAddress((uint32_t)&flashTestPage[0]);
    adr = adr * 2;
    flash_storage_address = flash_storage_address + adr;

    // Program Valid Key for NVM Commands
    FLASH_Unlock(FLASH_UNLOCK_KEY);
    
    // Erase the page of flash at this address
    result = FLASH_ErasePage(flash_storage_address);
    
    result = FLASH_WriteWord16(flash_storage_address, data);
    
    // Clear Key for NVM Commands so accidental call to flash routines will not corrupt flash
    FLASH_Lock();
    
    return result;
}

bool clearStorage(int16_t storageLength, int16_t adr)
{
    uint32_t flash_storage_address;
    bool result;
    int16_t i;
    int16_t data = 0x0000;
    
    // Get flash page aligned address of flash reserved above for this test.
    flash_storage_address = FLASH_GetErasePageAddress((uint32_t)&flashTestPage[0]);
    adr = adr * 2;
    flash_storage_address = flash_storage_address + adr;

    // Program Valid Key for NVM Commands
    FLASH_Unlock(FLASH_UNLOCK_KEY);
    
    // Erase the page of flash at this address
    result = FLASH_ErasePage(flash_storage_address);
    
    for(i = 0; i < storageLength; i++)
    {
        result = FLASH_WriteWord16(flash_storage_address, data);
        if(result == false)
            break;
        flash_storage_address = flash_storage_address + 2;
    }

    // Clear Key for NVM Commands so accidental call to flash routines will not corrupt flash
    FLASH_Lock();
    
    return result;
}
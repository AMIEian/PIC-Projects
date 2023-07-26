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

#include "flash.h"

static __eds__ uint8_t testPage[FLASH_ERASE_PAGE_SIZE_IN_PC_UNITS] __attribute__((space(psv),aligned(FLASH_ERASE_PAGE_SIZE_IN_PC_UNITS)));

void FlashDemo()
{
    uint32_t flash_storage_address;
    uint16_t result;
    uint32_t write_data[2]= {0};
    uint32_t read_data[2] = {0};

    flash_storage_address = __builtin_tbladdress(testPage);

    // Program Valid Key for NVM Commands
    FLASH_Unlock(FLASH_UNLOCK_KEY);

    // Erase the page of flash at this address
    result = FLASH_ErasePage(flash_storage_address);
    
    //if result was not true, then an error occured during the ErasePage call.
    if (result==false)
    {
        while(1);
    }
    // read the data to verify the data
    read_data[0] = FLASH_ReadWord24(flash_storage_address);
    read_data[1] = FLASH_ReadWord24(flash_storage_address+2);

    // Write 24 bit Data to the first location.
    write_data[0] = 0x00112233;
    write_data[1] = 0x00445566;
    result = FLASH_WriteWord24(flash_storage_address, write_data[0]);
    result = FLASH_WriteWord24(flash_storage_address+2, write_data[1]);
    
    // read the data to verify the data
    read_data[0] = FLASH_ReadWord24(flash_storage_address);
    read_data[1] = FLASH_ReadWord24(flash_storage_address+2);

    // Stop if the read data does not match the write data;
    if ( (write_data[0] != read_data[0]) ||
         (write_data[1] != read_data[1]) ) {
        while(1);
    }

    // Clear Key for NVM Commands so accidental call to flash routines will not corrupt flash
    FLASH_Lock();

}



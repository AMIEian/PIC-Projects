#include "myeeprom.h"
#include <i2c.h>

void rom_byte_write(unsigned char device, int address, unsigned char byte)
    {
        unsigned char msb, lsb;
        msb = address >> 8;
        lsb = address & 0x00FF;
        
        IdleI2C();
        StartI2C();
        WriteI2C(device & 0xFE);
        IdleI2C();
        WriteI2C(msb);
        IdleI2C();
        WriteI2C(lsb);
        IdleI2C();
        WriteI2C(byte);
        IdleI2C();
        StopI2C();
        _delay(100000);
    }    
    
unsigned char rom_byte_read(unsigned char device, int address)
    {
        unsigned char data = 0;
        unsigned char msb, lsb;
        msb = address >> 8;
        lsb = address & 0x00FF;
        
        IdleI2C();
        StartI2C();
        WriteI2C(device & 0xFE);
        IdleI2C();
        WriteI2C(msb);
        IdleI2C();
        WriteI2C(lsb);
        IdleI2C();
        
        RestartI2C();
        WriteI2C(device | 0x01);
        IdleI2C();
        data = ReadI2C();
        NotAckI2C();
        StopI2C();
        return data;
    }    
    
void rom_page_write(unsigned char device, int address, unsigned char *array)
    {
        unsigned char *ptr, count;
        unsigned char msb, lsb;
        msb = address >> 8;
        lsb = address & 0x00FF;
        
        ptr = array;
        IdleI2C();
        StartI2C();
        WriteI2C(device & 0xFE);
        IdleI2C();
        WriteI2C(msb);
        IdleI2C();
        WriteI2C(lsb);
        IdleI2C();
        
        for(count = 0; count < 128; count++)
            {
                WriteI2C(*ptr);
                IdleI2C();
                ptr++;
            }
        
        StopI2C();
        _delay(100000);
        return;
    }
    
void rom_page_read(unsigned char device, int address, unsigned char *array)
    {
        unsigned char *ptr, count;
        unsigned char msb, lsb;
        msb = address >> 8;
        lsb = address & 0x00FF;
        
        ptr = array;
        IdleI2C();
        StartI2C();
        WriteI2C(device & 0xFE);
        IdleI2C();
        WriteI2C(msb);
        IdleI2C();
        WriteI2C(lsb);
        IdleI2C();
        
        RestartI2C();
        WriteI2C(device | 0x01);
        IdleI2C();
        
        for(count = 0; count < 127; count++)
            {
                *ptr = ReadI2C();
                AckI2C();
                ptr++;
            }
            
        *ptr = ReadI2C();    
        NotAckI2C();
        StopI2C();
        return;
    } 
    
void clear_rom(unsigned char device)
    {
        char word;
        int page;
        
        IdleI2C();
        StartI2C();
        WriteI2C(device & 0xFE);
        IdleI2C();
        WriteI2C(0x00);
        IdleI2C();
        WriteI2C(0x00);
        IdleI2C();
        
        for(page = 0; page < 512; page++)
            {
                for(word = 0; word < 128; word++)
                    {
                        WriteI2C(0xFF);
                        IdleI2C();
                    }
            }        
        
        StopI2C();
        _delay(100000);
        return;
    }               
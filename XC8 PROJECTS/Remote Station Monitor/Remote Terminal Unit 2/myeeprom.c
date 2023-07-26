#include "myeeprom.h"
#include "packet.h"
#include <i2c.h>
#include <EEP.h>
#include "pins.h"

void rom_byte_write(unsigned int address, unsigned char byte)
    {
        unsigned char msb, lsb;
        msb = address >> 8;
        lsb = address & 0x00FF;
        
        LED2 = On;
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
        LED2 = Off;
    }    
    
unsigned char rom_byte_read(unsigned int address)
    {
        unsigned char data = 0;
        unsigned char msb, lsb;
        msb = address >> 8;
        lsb = address & 0x00FF;
        
        LED2 = On;
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
        LED2 = Off;
        return data;
    }    
    
void rom_page_write(unsigned int page_no, unsigned char *array)
    {
        unsigned char *ptr, count;
        unsigned char msb, lsb;
        unsigned int address;
        
        address = page_no * PAGE_SIZE;
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
        
        for(count = 0; count < PAGE_SIZE; count++)
            {
                WriteI2C(*ptr);
                IdleI2C();
                ptr++;
            }
        
        StopI2C();
        _delay(100000);
        return;
    }
    
void rom_page_read(unsigned int page_no, unsigned char *array)
    {
        unsigned char *ptr, count;
        unsigned char msb, lsb;
        unsigned int address;
        
        address = page_no * PAGE_SIZE;
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
        
        for(count = 0; count < PAGE_SIZE - 1; count++)
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
    
void write_packet_to_page(unsigned int page_no)
    {
        unsigned char count = 0;
        unsigned char msb = 0, lsb = 0;
        unsigned int address = 0;
        
        address = page_no * PAGE_SIZE;
        
        count = 0;
        while(PACKET[count] != END_CHAR)
         {
            rom_byte_write(address,PACKET[count]);
            count++;
            address++;
         }
        rom_byte_write(address,PACKET[count]);
        
        return;
    }
    
void read_packet_from_page(unsigned int page_no)
    {
        unsigned char count = 0, data = 0;
        unsigned char msb = 0, lsb = 0;
        unsigned int address = 0;
        
        address = page_no * PAGE_SIZE;
        
        //Traverse data till end of packet
        count = 0;
        while(1)
            {
                PACKET[count] = rom_byte_read(address);
                if(PACKET[count] == END_CHAR)
                  {
                     return;
                  }
                else
                  {   
                     address++;
                     count++;
                  }   
            }
    }
/*
void write_packet_to_page(unsigned int page_no)
    {
        unsigned char count = 0;
        unsigned char msb = 0, lsb = 0;
        unsigned int address = 0;
        
        address = page_no * PAGE_SIZE;
        
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
        
        count = 0;
        while(PACKET[count] != END_CHAR)
         {
            WriteI2C(PACKET[count]);
            IdleI2C();
            count++;
         }   
        //Write End Char
        WriteI2C(PACKET[count]);
        IdleI2C();
        
        StopI2C();
        _delay(100000);
        
        return;
    }
    
void read_packet_from_page(unsigned int page_no)
    {
        unsigned char count = 0, data = 0;
        unsigned char msb = 0, lsb = 0;
        unsigned int address = 0;
        
        address = page_no * PAGE_SIZE;
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
    
        //Traverse data till end of packet
        count = 0;
        while(1)
            {
                PACKET[count] = ReadI2C();
                if(PACKET[count] == END_CHAR)
                  {
                     NotAckI2C();
                     StopI2C();
                     return;
                  }
                else
                  {   
                     AckI2C();
                     count++;
                  }   
            }
        _delay(100000);    
    }    
*/
    
void clear_rom()
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

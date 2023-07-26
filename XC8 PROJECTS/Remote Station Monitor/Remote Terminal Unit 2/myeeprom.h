//This file contains eeprom related fuctions

#ifndef MYEEPROM_H_
#define MYEEPROM_H_

#define PAGE_SIZE 128
#define MAX_PAGE_NO 2

//Variables
unsigned char device;
volatile unsigned int Current_Write_Page;
volatile unsigned int Current_Read_Page;

//Functions
void rom_byte_write(unsigned int address, unsigned char byte);
unsigned char rom_byte_read(unsigned int address);

void rom_page_write(unsigned int page_no, unsigned char *array);
void rom_page_read(unsigned int page_no, unsigned char *array);

void write_packet_to_page(unsigned int page_no);
void read_packet_from_page(unsigned int page_no);

void clear_rom();

#endif

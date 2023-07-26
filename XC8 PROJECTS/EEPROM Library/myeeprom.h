//This file contains eeprom related fuctions

#ifndef MYEEPROM_H_
#define MYEEPROM_H_

void rom_byte_write(unsigned char device, int address, unsigned char byte);
unsigned char rom_byte_read(unsigned char device, int address);
void rom_page_write(unsigned char device, int address, unsigned char *array);
void rom_page_read(unsigned char device, int address, unsigned char *array);
void clear_rom(unsigned char device);

#endif

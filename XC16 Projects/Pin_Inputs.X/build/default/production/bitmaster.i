# 1 "bitmaster.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "bitmaster.c" 2
int setBit(int number, int position)
    {
        int newNumber;
        newNumber = (1 << position) | number;
        return newNumber;
    }

int clearBit(int number, int position)
    {
        int newNumber;
        newNumber = number & (~(1 << position));
        return newNumber;
    }

int toggleBit(int number, int position)
    {
        int newNumber;
        newNumber = number ^ (1 << position);
        return newNumber;
    }

int getBit(int number, int position)
    {
        int bitStatus;
        bitStatus = (number >> position) & 1;
        return bitStatus;
    }

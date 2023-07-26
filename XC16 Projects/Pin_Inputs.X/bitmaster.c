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
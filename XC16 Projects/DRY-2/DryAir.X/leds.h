typedef union {
    struct {
      unsigned LED0:1;
      unsigned LED1:1;
      unsigned LED2:1;
      unsigned LED3:1;
      unsigned LED4:1;
      unsigned LED5:1;
      unsigned LED6:1;
      unsigned LED7:1;
    };
    struct {
      unsigned w:16;  
    };
} COLUMNS;
extern volatile COLUMNS COLUMN[5];

typedef union {
    struct {
      unsigned ROW0:1;
      unsigned ROW1:1;
      unsigned ROW2:1;
      unsigned ROW3:1;
      unsigned ROW4:1;
      unsigned ROW5:1;
      unsigned ROW6:1;
      unsigned ROW7:1;
    };
    struct {
      unsigned w:16;  
    };
} ROWS;
extern volatile ROWS ROW;

/* LED Alias */
#define DI0_LED COLUMN[0].LED0
#define DI1_LED COLUMN[0].LED1
#define DI2_LED COLUMN[0].LED2
#define DI3_LED COLUMN[0].LED3
#define DI4_LED COLUMN[0].LED4
#define DI5_LED COLUMN[0].LED5
#define DI6_LED COLUMN[0].LED6
#define DI7_LED COLUMN[0].LED7

#define DI8_LED COLUMN[1].LED0
#define DI9_LED COLUMN[1].LED1
#define AC_DI0_LED COLUMN[1].LED2
#define AC_DI1_LED COLUMN[1].LED3
#define AC_DI2_LED COLUMN[1].LED4
#define AC_DI3_LED COLUMN[1].LED5
#define AC_DI4_LED COLUMN[1].LED6
#define AC_DI5_LED COLUMN[1].LED7

#define AC_DI6_LED COLUMN[2].LED0
#define AC_DI7_LED COLUMN[2].LED1
#define AC_DI8_LED COLUMN[2].LED2
#define AC_DI9_LED COLUMN[2].LED3
#define AC_DI10_LED COLUMN[2].LED4
#define AC_DI11_LED COLUMN[2].LED5
#define RO0_OUT_LED COLUMN[2].LED6
#define RO1_OUT_LED COLUMN[2].LED7

#define RO2_OUT_LED COLUMN[3].LED0
#define RO3_OUT_LED COLUMN[3].LED1
#define RO4_OUT_LED COLUMN[3].LED2
#define RO5_OUT_LED COLUMN[3].LED3
#define RO6_OUT_LED COLUMN[3].LED4
#define RO7_OUT_LED COLUMN[3].LED5
#define DO0_LED COLUMN[3].LED6
#define DO1_LED COLUMN[3].LED7

#define DO2_LED COLUMN[4].LED0
#define DO3_LED COLUMN[4].LED1
#define COM0_LED COLUMN[4].LED2
#define COM1_LED COLUMN[4].LED3
#define COM2_LED COLUMN[4].LED4

void SetColValue(int colNo, unsigned int value);
unsigned int GetColValue(int colNo);
void SetColumn(int colNo);

void SetRow(int rowNo);

void updateLEDs();

void clearLEDs();
/**
 End of File
 */


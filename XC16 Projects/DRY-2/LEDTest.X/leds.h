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

void SetColValue(int colNo, unsigned int value);
unsigned int GetColValue(int colNo);
void SetColumn(int colNo);

void SetRow(int rowNo);
/**
 End of File
 */


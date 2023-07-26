/* uart.h
	Mode  		-  Asynchronous 
	Data_Buffer	- 8-bit 
	Baudrate	- 9600 bps
	Parity		- NA
*/


void UART_Init(void);					// Initialize UART
void UART_PutC(unsigned char);			// Transmit Character
void UART_PutS (const unsigned char *);	// Transmit String
unsigned char UART_GetC(void);			// Read Character
unsigned char UART_GetC_OR(void);		// Read Charcter with Over Run Error Check 
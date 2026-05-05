#include <xc.h>

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

void main(void)
{
	unsigned char sensor;
	TRISB = 0xC0;
	TRISD = 0x00;

	while (1)
	{
		sensor = PORTB & 0xC0;
		switch (sensor)
		{
			case 0x40:
				PORTD = 0x06;
				break;
			case 0x80:
				PORTD = 0x09;
				break;
			case 0xC0:
				PORTD = 0x05;
				break;
			default:
				PORTD = 0x00;
				break;
		}
	}
}
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
		sensor = PORTB & 0xF8;
		switch (sensor)
		{
			//1010 forward
			//1000 right
			//0010 left
			//1001 hard right
			//0110 hard left
			case 0x20: // 0010 0000 -> Center sensor only
				PORTD = 0x05; // Go straight
				break;

			case 0x40: // 0100 0000 -> Inner Left sensor
				PORTD = 0x02; // Turn left (slight/soft turn)
				break;

			case 0x80: // 1000 0000 -> Outer Left sensor
				PORTD = 0x06; // Turn left (hard turn)
				break;

			case 0x10: // 0001 0000 -> Inner Right sensor
				PORTD = 0x08; // Turn right (slight/soft turn)
				break;

			case 0x08: // 0000 1000 -> Outer Right sensor
				PORTD = 0x09; // Turn right (hard turn)
				break;

			case 0x00: // 0000 0000 -> No sensors active (Lost line)
				PORTD = 0x00; // Stop
				break;

			default:
				// Handles overlapping sensor reads (e.g., Center + Inner Left = 0x60)
				// Defaulting to straight keeps the robot moving forward smoothly
				PORTD = 0x05; // Go straight
				break;
		}
	}
}
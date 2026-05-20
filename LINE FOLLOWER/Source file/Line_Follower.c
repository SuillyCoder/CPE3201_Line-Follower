#include <xc.h>

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

void delay_ms(unsigned int ms) {
    unsigned int i, j;
    for (i = 0; i < ms; i++)
        for (j = 0; j < 110; j++);
}

void main(void) {
    unsigned char sensor;

    ADCON1 = 0x06;  // PORTE as digital
    TRISD = 0x00;   // PORTD all output (Motor Direction)
    TRISE = 0x00;   // PORTE all output (Motor Enable)
    TRISB = 0xFF;   // PORTB all input  (IR Sensors)
    TRISC = 0x00;   // PORTC all output

    PORTD = 0x00;
    PORTE = 0x00;
    PORTC = 0x00;

    while (1) {
        sensor = PORTB & 0x07;  // Read RB0, RB1, RB2 only

        switch (sensor) {
            case 0x02:  // Center only: X010 
                PORTE = 0x03;
                PORTD = 0x50;
                PORTC = 0x01;
                break;
            case 0x04:  // Left sensor: X100 
				PORTE = 0x03;
                PORTD = 0x90;   // Turn right
                PORTC = 0x00;
                break;
            case 0x01:  // Right sensor: X001 -> RB2=1, RB1=1, RB0=0
                PORTE = 0x03;
                PORTD = 0x60;   // Turn right
                PORTC = 0x00;
                break;
            case 0x07:  // All black = lost line, stop -> X111
                PORTE = 0x00;
                PORTD = 0x00;
                PORTC = 0x00;
                break;
			//EXTRA CASES

			case 0x05: // X101
				PORTE = 0x03;
                PORTD = 0x50;
                PORTC = 0x01;
				break;

			case 0x03: // X011
				PORTE = 0x03;
                PORTD = 0x60;   // Turn right
                PORTC = 0x00;
				break;
				
			case 0x06:// X110
				PORTE = 0x03;
                PORTD = 0x90;   // Turn right
                PORTC = 0x00;
                break;
				
            default: // X000
                PORTE = 0x03;
                PORTD = 0x50;   // Default go straight
                PORTC = 0x01;
                break;
        }
        delay_ms(10);
    }
}
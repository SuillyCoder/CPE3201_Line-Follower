#include <xc.h>

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

#define _XTAL_FREQ 4000000


// ================ DELAY FUNCTIONS ================== //
void delay_ms(unsigned int ms) {
    unsigned int i, j;
    for (i = 0; i < ms; i++)
        for (j = 0; j < 110; j++);
}

void run_motors(unsigned char portd_val, unsigned char duty_l, unsigned char duty_r, unsigned int duration_ms) {
    unsigned int i;
    unsigned char on_l, on_r, off_l, off_r;

    on_l  = duty_l;          // ON ticks out of 10
    off_l = 10 - duty_l;     // OFF ticks out of 10
    on_r  = duty_r;
    off_r = 10 - duty_r;

    PORTD = portd_val;

    for (i = 0; i < duration_ms; i++) {  //RE0 is used as the manual enabler pins for the EN1 and EN2 pins of the L298 Motor Driver
        // LEFT channel
        PORTE |= 0x01;           // RE0 high
        delay_ms(on_l);
        PORTE &= ~0x01;          // RE0 low
        delay_ms(off_l);

        // RIGHT channel
        PORTE |= 0x02;           // RE1 high
        delay_ms(on_r);
        PORTE &= ~0x02;          // RE1 low
        delay_ms(off_r);
    }
}


// ================ MAIN FUNCTIONS ==================== //

void main(void) {
    unsigned char sensor;

    ADCON1 = 0x06;  // PORTE as digital
    TRISD = 0x00;   // PORTD all output (Motor Direction)
    TRISE = 0x00;   // PORTE all output (Motor Enable)
    TRISB = 0xFF;   // PORTB all input  (IR Sensors)

    PORTD = 0x00; //Initially set the motors off
    PORTE = 0x00; //Initially set the enable pins for the driver off

    while (1) {
        sensor = PORTB & 0x07;  // Read RB0, RB1, RB2 only

        switch (sensor) {
            case 0x02:  // Center only: X010
                run_motors(0x50, 10, 10, 1);
                break;
            case 0x04:  // Left sensor: X100
			    run_motors(0x90, 10, 8, 1);
                break;
            case 0x01:  // Right sensor: X001 -> RB2=1, RB1=1, RB0=0
                run_motors(0x60, 8, 10, 1);
                break;
            case 0x07:  // All black = lost line, stop -> X111
				run_motors(0x90, 10, 8, 1);
				run_motors(0x60, 8, 10, 1);
                break;

			//EXTRA CASES

			case 0x05: // X101 -> Black sides, white center
				run_motors(0x50, 10, 10, 1); // -> Move forward
				break;

			case 0x03: // X011 -> Center and Right
				run_motors(0x60, 8, 10, 1); // -> Turn Left
				break;

			case 0x06:// X110 -> Center and Left
				run_motors(0x90, 10, 8, 1); // -> Turn Right
                break;

            default: // X000 -> All White
				run_motors(0x50, 10, 10, 1); // -> Move Forward
                break;
        }
        delay_ms(10);
    }
}

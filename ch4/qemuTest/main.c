#define F_CPU 16000000UL // 16MHz delay함수에서 사용하기 위함
#include <avr/io.h>
#include <util/delay.h>

#define LED_PIN PB0 // ATmega328P의 핀 8번 (Arduino의 디지털 13번)

int main(void) {
    DDRB |= (1 << LED_PIN);

    while (1) {
        PORTB |= (1 << LED_PIN);
        _delay_ms(500);

        PORTB &= ~(1 << LED_PIN);
        _delay_ms(500);
    }
}

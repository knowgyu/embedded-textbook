#include <avr/io.h>

void uart_init(void) {
    UBRR0H = 0;
    UBRR0L = 103; // 9600 baud for 16MHz
    UCSR0B = (1 << TXEN0); // Enable transmitter
}

void uart_transmit(char data) {
    while (!(UCSR0A & (1 << UDRE0))); // Wait for empty transmit buffer
    UDR0 = data; // Send data
}

int main(void) {
    uart_init();
    while (1) {
        uart_transmit('A');
    }
    return 0;
}


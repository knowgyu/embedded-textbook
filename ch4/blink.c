#include <avr/io.h>

int main()
{
	int i;
	DDRB |= (1<<PB1);

	while(1)
	{
		PORTB ^= (1<<PB1);
		for(i=0; i<1000000; i++){}; 
	}
	return 0;
}

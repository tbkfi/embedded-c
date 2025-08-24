#include <stdio.h>
#include "pico/stdlib.h"

const uint P_LED1 = 20;


void init_led(uint PIN) {
	gpio_init(PIN); gpio_set_dir(PIN, true);
}

int main() {
	stdio_init_all();
	fprintf(stdout, "\n<BOOT>\n");
	
	init_led(P_LED1);

	while (true) {
		fprintf(stdout, "Blinking...\n");
		gpio_put(P_LED1, !gpio_get(P_LED1));
		sleep_ms(500);
	}
}

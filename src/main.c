#include "pico/stdlib.h"

const uint P_LED1 = 25;


void init_led(uint PIN) {
	gpio_init(PIN); gpio_set_dir(PIN, true);
}

int main() {
	init_led(P_LED1);

	while (true) {
		gpio_put(P_LED1, !gpio_get(P_LED1));
		sleep_ms(500);
	}
}

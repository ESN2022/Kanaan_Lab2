#include <stdio.h>
#include <sys/alt_irq.h>
#include <io.h>
#include <alt_types.h>
#include <priv/alt_legacy_irq.h>
#include "system.h"
#include "sys/alt_sys_init.h"
#include "altera_avalon_pio_regs.h"
#include "unistd.h"

 // volatile alt_u32 count = 0;
// // static void irq_increment_handler(void *context, alt_u32 id)
// // {
	// // count += 50;
	// // IOWR_ALTERA_AVALON_PIO_DATA(TIMER_0_BASE, count);

	// // /* Reset the edge capture register. */
	// // IOWR_ALTERA_AVALON_PIO_EDGE_CAP(TIMER_0_BASE, 0x0);
// // }

// int main(void)
// {
	// //IOWR_ALTERA_AVALON_PIO_IRQ_MASK(TIMER_0_BASE, 0x03);
	// //IOWR_ALTERA_AVALON_PIO_EDGE_CAP(TIMER_0_BASE, 0x0);
	// //alt_irq_register(TIMER_0_IRQ, NULL, (void *)irq_increment_handler); // register the irq
	
	// while (1)
	// {
		// IOWR_ALTERA_AVALON_PIO_DATA(PIO_0_BASE, count);
		// ++count;
		// if (count == 999)
		// {
			// count = 0;
		// }
		// usleep(15000);
	// }
	// return 0;
// }

int main(void){
	int i=0;
	while(1){
		for (i=0;i<999;i++){
			IOWR_ALTERA_AVALON_PIO_DATA(PIO_0_BASE,i);
			usleep(100000);
		}
	}
	return 0;
}
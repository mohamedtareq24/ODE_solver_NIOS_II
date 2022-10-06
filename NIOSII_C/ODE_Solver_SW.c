#include "sys/alt_stdio.h"
#include "system.h"
#include"io.h"
#include"altera_avalon_pio_regs.h"

#define V 0x00000
#define X 0x08000
#define K 0x10000
#define B 0x0028f

int main()
{ 
	char reset;
	 alt_putstr("SPRING MASS SYSTEM SIM\n");
	 alt_putstr("press 'r' to reset or 's' to start\r\n");
while(1)
{
  reset = alt_getchar();
  if (reset == 'r'){
  IOWR_ALTERA_AVALON_PIO_DATA(RST_BASE,0b0);
  }
  else if (reset == 's'){
  IOWR_ALTERA_AVALON_PIO_DATA(CLK_EN_BASE,0b0);

  IOWR_ALTERA_AVALON_PIO_DATA(RST_BASE,0b1);  // rst the solver

  IOWR_ALTERA_AVALON_PIO_DATA(V_BASE,V);
  IOWR_ALTERA_AVALON_PIO_DATA(X_BASE,X);  
  IOWR_ALTERA_AVALON_PIO_DATA(K_BASE,K); 
  IOWR_ALTERA_AVALON_PIO_DATA(B_BASE,B);

  IOWR_ALTERA_AVALON_PIO_DATA(CLK_EN_BASE,0b1); // clk is enabled 
 }
}
  return 0;
}
 

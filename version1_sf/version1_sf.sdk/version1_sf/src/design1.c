/*
 * version1.c demo code
 *
 *  Created on: 12/2/2019
 *      Author: Josep Altet
*/



#include "xparameters.h"
#include "xgpio.h"

#define BACKGROUND 0
#define SQUARE 4
#define Y_ADDRESS 64
	
// Pointer and variable declaration
    XGpio rgb, push, adr, sws;
	
void init_gpios()
{
// Check out your own XPAR ID symbol name declared in xparameters.h
// The format is always XPAR_<NAME_IN_VIVADO>_DEVICE_ID


	XGpio_Initialize(&push, XPAR_BUTTONS_DEVICE_ID);
	XGpio_SetDataDirection(&push, 1, 0xffffffff); //input

	XGpio_Initialize(&sws, XPAR_SWS_DEVICE_ID);
	XGpio_SetDataDirection(&sws, 1, 0xffffffff); //input

	XGpio_Initialize(&adr, XPAR_ADDRESS_DEVICE_ID);
	XGpio_SetDataDirection(&adr, 1, 0x00000000); //output

	XGpio_Initialize(&rgb, XPAR_COLOR_DEVICE_ID);
	XGpio_SetDataDirection(&rgb, 1, 0x00000000); //output	
	
}

void write_square(int xad, int yad, int color)
{
	int i, j;
	int add;
	
	add = ((yad >> 1 )<< 9) | (xad >> 1);
	for(j=0; j<8; j++)
	{
		for(i=0; i<8; i++)
		{
			XGpio_DiscreteWrite(&adr, 1, add);
			XGpio_DiscreteWrite(&rgb, 1, color);
			add++;
		}
		yad = yad +2;
		add = ((yad >> 1 )<< 9) | (xad >> 1);
	}
}
	
//====================================================

int main (void)
{

// Pointer and variable declaration
	int btn;
	int x_new, y_new, y_old, x_old;

    xil_printf("-- Start of the Program --\r\n");
	init_gpios();
	
// Pointer initialization
	y_new = Y_ADDRESS;
	x_new = 0;

	y_old = Y_ADDRESS;
	x_old = 0;
	
	while (1)
	{
// Read value of buttons
	  btn = XGpio_DiscreteRead(&push, 1);
	  
	  if(btn&1)
	  {
		  xil_printf("-- Button Pressed --\r\n");
		  x_new = XGpio_DiscreteRead(&sws, 1)<< 4;
		  xil_printf("-- Address --%d\r\n", x_new);
		  write_square(x_old, y_old, BACKGROUND);
		  write_square(x_new, y_new, SQUARE);
		  x_old = x_new;
		  y_old = y_new;
		  while (XGpio_DiscreteRead(&push, 1));
	  }
	}
}
		  

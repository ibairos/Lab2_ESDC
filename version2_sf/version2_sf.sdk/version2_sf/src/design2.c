/*
 * version2.c demo code
 * This version presents the use of software state machines.
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
    XGpio rgb, push, adr, sws, vsync;
	
void init_gpios()
{
// Check out your own XPAR ID symbol name declared in xparameters.h
// The format is always XPAR_<NAME_IN_VIVADO>_DEVICE_ID


	XGpio_Initialize(&push, XPAR_BUTTONS_DEVICE_ID);
	XGpio_SetDataDirection(&push, 1, 0xffffffff); //input

	XGpio_Initialize(&sws, XPAR_SWS_DEVICE_ID);
	XGpio_SetDataDirection(&sws, 1, 0xffffffff); //input

	XGpio_Initialize(&vsync, XPAR_V_SYNC_DEVICE_ID);
	XGpio_SetDataDirection(&vsync, 1, 0xffffffff); //input

	XGpio_Initialize(&adr, XPAR_ADDRESS_DEVICE_ID);
	XGpio_SetDataDirection(&adr, 1, 0x00000000); //output

	XGpio_Initialize(&rgb, XPAR_COLOR_DEVICE_ID);
	XGpio_SetDataDirection(&rgb, 1, 0x00000000); //output	
	
}
/* Routine that writes the memory cells to represent a square */
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
/* Software State Machine */
void control_state_machine(void)
{
	static int state = 0;
	int v_sync, btn;
	static int x_new = 0;
	static int y_new = Y_ADDRESS;
	static int y_old = Y_ADDRESS;
	static int x_old = 0;

	switch (state)
	{
		case 0:
			btn = XGpio_DiscreteRead(&push, 1);
			if(btn & 1)
				  {
					  state = 1;
					 /* xil_printf("-- Button Pressed --\r\n");*/
				  }
			break;
		case 1:
			v_sync = XGpio_DiscreteRead(&vsync, 1);
			if (!v_sync)
			{
				state = 2;
				 write_square(x_old, y_old, BACKGROUND);
				 write_square(x_new, y_new, SQUARE);
				 x_old = x_new;
				 y_old = y_new;
				 x_new = (x_new >= 624) ? 0 : x_new+2;
			}
		case 2:
			v_sync = XGpio_DiscreteRead(&vsync, 1);
			if (v_sync) state = 0;

	}
}
int main (void)
{

    xil_printf("-- Start of the Program --\r\n");
	init_gpios();
	
	while (1)
	{
		/* The main just invoque the state machine inside an infinite loop */
		control_state_machine();
	}
}
		  

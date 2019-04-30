#include <unistd.h>
#include <stdio.h>
#include "font.h"
#include "LCD.h"
#include "spi.h"


static const char *device = "/dev/spidev32766.1";
static uint8_t mode = 0; /* SPI通信使用全双工，设置CPOL＝0，CPHA＝0。 */
static uint8_t bits = 8; /* 8ｂiｔｓ读写，MSB first。*/
static uint32_t speed = 96 * 1000 * 1000;/* 设置96M传输速度 */
//int g_SPI_Fd = 0;


int main()
{
	Lcd_Init();


	while(1)
	{
		test_color();

	}


}

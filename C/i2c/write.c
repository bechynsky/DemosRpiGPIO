#include <wiringPiI2C.h>
#include <stdio.h>

int address = 0x34;

int main(void)
{
	int device = wiringPiI2CSetup(address);

	if (device < 0)
	{
		return 1;
	}

	int data = wiringPiI2CWriteReg8(device, 0x00, 0xff);

	printf("%d\n", data);

	return 0;
}

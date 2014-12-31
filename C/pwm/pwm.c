#include <stdio.h>
#include <wiringPi.h>
#include <softPwm.h>

int led = 0;

int main(void)
{
	if (wiringPiSetup() == -1)
	{
		printf("Error: wiringPi setup failed.\n");
		return 1;
	}

	if (softPwmCreate(led, 0, 100) == -1)
	{
		printf("Can't create soft pwm.\n");
		return 2;
	}

	int up;
	int down;
	while (1)
	{
		for(up = 1; up <= 100; up++)
		{
      			softPwmWrite (led, up);
      			delay(10);
    		}

    		delay(100);

		for(down = up; down >= 5; down--)
    		{
			softPwmWrite (led, down);
      			delay(10);
    		}
	}
	return 0;
}

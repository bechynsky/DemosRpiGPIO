#include <wiringPi.h>

int led = 0;

int main (void)
{
  wiringPiSetup () ;
  pinMode (led, OUTPUT) ;
  for (;;)
  {
    digitalWrite (led, HIGH) ; 
    delay (1000) ;
    digitalWrite (led,  LOW) ; 
    delay (1000) ;
  }
  return 0 ;
}

import RPi.GPIO as GPIO
import time

GPIO.setmode(GPIO.BOARD)

led = 11
GPIO.setup(led, GPIO.OUT)

try:
	while True:
		GPIO.output(led, 0)
		time.sleep(1)
		GPIO.output(led, 1)
		time.sleep(1)		
except KeyboardInterrupt:
	GPIO.cleanup()

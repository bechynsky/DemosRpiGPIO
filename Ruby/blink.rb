require 'wiringpi'

# initialize the GPIO port:
gpio = WiringPi::GPIO.new
# name the pins, for easier reference:
led = 0

# initialize the pin functions:
gpio.mode led, OUTPUT

# turn off the led, just in case:
gpio.write led, 0

loop do
	gpio.write led, 1
	sleep 1
	gpio.write led, 0
	sleep 1
end

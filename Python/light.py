import smbus
import time

bus = smbus.SMBus(0)
address = 0x34

try:
	while True:
		try:
			light = bus.read_byte_data(address, 1)
			print light
		except:
			next

		time.sleep(1)

except KeyboardInterrupt:
	print 'Bye'

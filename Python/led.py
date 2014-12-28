import smbus
import time
bus = smbus.SMBus(0)
address = 0x34

i = 0
while i < 255:
	try:
		bus.write_byte_data(address, 0, i)
	except:
		continue
	time.sleep(0.5)
	i = i + 20


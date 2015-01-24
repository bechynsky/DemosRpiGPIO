import smbus
import time

bus = smbus.SMBus(0)
address = 0x34

for i in range(0, 10):
	bus.write_byte_data(address, 0x00, i)
	time.sleep(1)

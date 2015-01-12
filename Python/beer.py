import smbus

data = [
0b00111111,
0b11110000,
0b11110000,
0b11110000,
0b11110000,
0b00111111,
0b00010010,
0b00001100,
	]


bus = smbus.SMBus(0)
address = 0x70

bus.write_byte_data(address, 0x21, 1)
bus.write_byte_data(address, 0x81, 1)

row = 0

for b in data:
	bus.write_byte_data(address, row, b)
	row = row + 2

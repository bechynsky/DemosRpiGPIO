import smbus

bus = smbus.SMBus(0)
address = 0x34

ad = bus.read_byte_data(address, 1)

mV = (3300 / 256) * ad

temperature = mV / 20

print temperature

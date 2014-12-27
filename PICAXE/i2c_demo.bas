#no_data
#no_table

hi2csetup i2cslave, %01101000

main:
	readadc 9, b0
	put 2, b0
	debug
	pause 1000
	goto main
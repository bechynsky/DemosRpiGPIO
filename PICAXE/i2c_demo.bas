#no_data
#no_table

init:
	' set 7-bit address
	hi2csetup i2cslave, %01101000
	' incoming i2c communication interrupt
	' http://www.picaxe.com/BASIC-Commands/Interrupts-and-Multi-Tasking/setintflags/
	setintflags %01000000, %01000000
	' start pwm
	hpwm 0, 0, %0001, 150, 100	
main:
	readadc 9, b1
	put 1, b1
	debug
	pause 1000
	goto main
	
interrupt:
	get 0, b0
	debug
	' change pwm duty
	hpwmduty b0
	let hi2cflag = 0       'clear interrupt & reset
	setintflags %01000000,%01000000
	return
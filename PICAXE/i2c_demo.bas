#no_data
#no_table

init:
	' B pins as output
	let dirsB = %11111111
	' set 7-bit address
	hi2csetup i2cslave, %01101000
	' incoming i2c communication interrupt
	' http://www.picaxe.com/BASIC-Commands/Interrupts-and-Multi-Tasking/setintflags/
	setintflags %01000000, %01000000
main:
	readadc 22, b1
	put 1, b1
	debug
	pause 1000
	goto main
	
interrupt:
	get 0, b0
	select case b0
	case 0
		let pinsB= %11000000
	case 1
		let pinsB= %11111001
	case 2
		let pinsB= %10100100
	case 3
		let pinsB= %10110000
	case 4
		let pinsB= %10011001
	case 5
		let pinsB= %10010010
	case 6
		let pinsB= %10000010
	case 7
		let pinsB= %11111000
	case 8
		let pinsB= %10000000
	case 9
		let pinsB= %10010000
	case 46
		let pinsB= %01111111
	endselect 
	
	debug
	
	let hi2cflag = 0       'clear interrupt & reset
	setintflags %01000000,%01000000
	return
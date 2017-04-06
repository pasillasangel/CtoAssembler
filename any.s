	.global _start
	_start:
	MOV R1, #0xA @ Put 10 in R1
	ADD R0, R1, #0x14 @ Add 10 + 20, store in R0
	MOV R7, #1 @ Exit with a system call
	SWI 0 @ End program and return to terminal

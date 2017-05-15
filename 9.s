	.arch armv6
	.eabi_attribute 27, 3
	.eabi_attribute 28, 1
	.fpu vfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"9.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Atraccion gravitacional: %f\000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	ldr	r3, .L3
	str	r3, [fp, #-8]	@ float
	ldr	r3, .L3+4
	str	r3, [fp, #-12]	@ float
	ldr	r3, .L3+8
	str	r3, [fp, #-16]	@ float
	mov	r3, #1073741824
	str	r3, [fp, #-20]	@ float
	flds	s14, [fp, #-20]
	flds	s15, [fp, #-20]
	fmuls	s15, s14, s15
	fsts	s15, [fp, #-20]
	flds	s14, [fp, #-8]
	flds	s15, [fp, #-12]
	fmuls	s14, s14, s15
	flds	s15, [fp, #-16]
	fmuls	s14, s14, s15
	flds	s15, [fp, #-20]
	fdivs	s15, s14, s15
	fsts	s15, [fp, #-24]
	flds	s15, [fp, #-24]
	fcvtds	d7, s15
	ldr	r0, .L3+12
	fmrrd	r2, r3, d7
	bl	printf
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L4:
	.align	2
.L3:
	.word	1092406477
	.word	1117782016
	.word	1119092736
	.word	.LC0
	.size	main, .-main
	.ident	"GCC: (Raspbian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",%progbits

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
	.file	"7.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Valor: %f\012\000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	ldr	r3, .L5+16
	str	r3, [fp, #-8]	@ float
	b	.L2
.L3:
	flds	s15, [fp, #-8]
	flds	s14, .L5
	fadds	s15, s15, s14
	flds	s14, .L5+4
	fdivs	s15, s15, s14
	fsts	s15, [fp, #-12]
	flds	s15, [fp, #-12]
	fcvtds	d7, s15
	ldr	r0, .L5+20
	fmrrd	r2, r3, d7
	bl	printf
	flds	s15, [fp, #-8]
	flds	s14, .L5+8
	fadds	s15, s15, s14
	fsts	s15, [fp, #-8]
.L2:
	flds	s15, [fp, #-8]
	flds	s14, .L5+12
	fcmpes	s15, s14
	fmstat
	bls	.L3
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L6:
	.align	2
.L5:
	.word	1109393408
	.word	1082130432
	.word	1092616192
	.word	1125515264
	.word	1109393408
	.word	.LC0
	.size	main, .-main
	.ident	"GCC: (Raspbian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",%progbits

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
	.file	"2.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Ingrese distancia: \000"
	.align	2
.LC1:
	.ascii	"%f\000"
	.align	2
.LC2:
	.ascii	"La Iluminacion es de :\000"
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
	ldr	r0, .L3+4
	bl	printf
	sub	r3, fp, #12
	ldr	r0, .L3+8
	mov	r1, r3
	bl	__isoc99_scanf
	flds	s14, [fp, #-12]
	flds	s15, [fp, #-12]
	fmuls	s15, s14, s15
	fsts	s15, [fp, #-12]
	flds	s15, [fp, #-12]
	flds	s14, .L3
	fdivs	s15, s14, s15
	fsts	s15, [fp, #-8]
	ldr	r0, .L3+12
	bl	printf
	flds	s15, [fp, #-8]
	fcvtds	d7, s15
	ldr	r0, .L3+8
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
	.word	1133903872
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.size	main, .-main
	.ident	"GCC: (Raspbian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",%progbits

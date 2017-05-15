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
	.file	"3.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Ingrese Coeficiente de Arrastre: \000"
	.align	2
.LC1:
	.ascii	"%f\000"
	.align	2
.LC2:
	.ascii	"Ingrese Coeficiente de Elevacion: \000"
	.align	2
.LC3:
	.ascii	"Ingrese Densidad del Aire: \000"
	.align	2
.LC4:
	.ascii	"Ingrese Area transversal: \000"
	.align	2
.LC5:
	.ascii	"Ingrese Velocidad: \000"
	.align	2
.LC6:
	.ascii	" - Arrastre = \000"
	.align	2
.LC7:
	.ascii	" - Elevacion = \000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	ldr	r0, .L3
	bl	printf
	sub	r3, fp, #20
	ldr	r0, .L3+4
	mov	r1, r3
	bl	__isoc99_scanf
	ldr	r0, .L3+8
	bl	printf
	sub	r3, fp, #16
	ldr	r0, .L3+4
	mov	r1, r3
	bl	__isoc99_scanf
	ldr	r0, .L3+12
	bl	printf
	sub	r3, fp, #24
	ldr	r0, .L3+4
	mov	r1, r3
	bl	__isoc99_scanf
	ldr	r0, .L3+16
	bl	printf
	sub	r3, fp, #28
	ldr	r0, .L3+4
	mov	r1, r3
	bl	__isoc99_scanf
	ldr	r0, .L3+20
	bl	printf
	sub	r3, fp, #32
	ldr	r0, .L3+4
	mov	r1, r3
	bl	__isoc99_scanf
	flds	s14, [fp, #-32]
	flds	s15, [fp, #-32]
	fmuls	s15, s14, s15
	fsts	s15, [fp, #-32]
	flds	s14, [fp, #-20]
	flds	s15, [fp, #-24]
	fmuls	s14, s14, s15
	flds	s15, [fp, #-28]
	fmuls	s14, s14, s15
	flds	s15, [fp, #-32]
	fmuls	s15, s14, s15
	fsts	s15, [fp, #-8]
	flds	s14, [fp, #-16]
	flds	s15, [fp, #-24]
	fmuls	s14, s14, s15
	flds	s15, [fp, #-28]
	fmuls	s14, s14, s15
	flds	s15, [fp, #-32]
	fmuls	s15, s14, s15
	fsts	s15, [fp, #-12]
	ldr	r0, .L3+24
	bl	printf
	flds	s15, [fp, #-8]
	fcvtds	d7, s15
	ldr	r0, .L3+4
	fmrrd	r2, r3, d7
	bl	printf
	ldr	r0, .L3+28
	bl	printf
	flds	s15, [fp, #-12]
	fcvtds	d7, s15
	ldr	r0, .L3+4
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
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.size	main, .-main
	.ident	"GCC: (Raspbian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",%progbits

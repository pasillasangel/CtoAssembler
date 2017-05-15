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
	.file	"1.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"%i\012\000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #48
	mvn	r3, #4
	str	r3, [fp, #-8]
	mov	r3, #5
	str	r3, [fp, #-12]
	mov	r3, #15
	str	r3, [fp, #-16]
	mov	r3, #25
	str	r3, [fp, #-20]
	mov	r3, #35
	str	r3, [fp, #-24]
	mov	r3, #45
	str	r3, [fp, #-28]
	mov	r3, #45
	str	r3, [fp, #-32]
	mov	r3, #65
	str	r3, [fp, #-36]
	mov	r3, #85
	str	r3, [fp, #-40]
	mov	r3, #105
	str	r3, [fp, #-44]
	mov	r3, #125
	str	r3, [fp, #-48]
	mov	r3, #145
	str	r3, [fp, #-52]
	ldr	r0, .L3
	ldr	r1, [fp, #-8]
	bl	printf
	ldr	r0, .L3
	ldr	r1, [fp, #-12]
	bl	printf
	ldr	r0, .L3
	ldr	r1, [fp, #-16]
	bl	printf
	ldr	r0, .L3
	ldr	r1, [fp, #-20]
	bl	printf
	ldr	r0, .L3
	ldr	r1, [fp, #-24]
	bl	printf
	ldr	r0, .L3
	ldr	r1, [fp, #-28]
	bl	printf
	ldr	r0, .L3
	ldr	r1, [fp, #-32]
	bl	printf
	ldr	r0, .L3
	ldr	r1, [fp, #-36]
	bl	printf
	ldr	r0, .L3
	ldr	r1, [fp, #-40]
	bl	printf
	ldr	r0, .L3
	ldr	r1, [fp, #-44]
	bl	printf
	ldr	r0, .L3
	ldr	r1, [fp, #-48]
	bl	printf
	ldr	r0, .L3
	ldr	r1, [fp, #-52]
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
	.size	main, .-main
	.ident	"GCC: (Raspbian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",%progbits

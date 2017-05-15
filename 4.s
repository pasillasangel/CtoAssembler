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
	.file	"4.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Energia del Oro: %f\000"
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
	mov	r2, #1241513984
	ldr	r3, .L3
	strd	r2, [fp, #-12]
	ldr	r2, .L3+4
	ldr	r3, .L3+8
	strd	r2, [fp, #-20]
	fldd	d6, [fp, #-12]
	fldd	d7, [fp, #-12]
	fmuld	d7, d6, d7
	fstd	d7, [fp, #-12]
	fldd	d6, [fp, #-20]
	fldd	d7, [fp, #-12]
	fmuld	d7, d6, d7
	fstd	d7, [fp, #-28]
	ldr	r0, .L3+12
	ldrd	r2, [fp, #-28]
	bl	printf
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L4:
	.align	2
.L3:
	.word	1102175864
	.word	1374389535
	.word	1080598200
	.word	.LC0
	.size	main, .-main
	.ident	"GCC: (Raspbian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",%progbits

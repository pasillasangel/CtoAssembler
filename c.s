	.file	1 ""
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 1
	.abicalls
	.text
	.align	2
	.globl	main
$LFB0 = .
	.set	nomips16
	.ent	main
	.type	main, @function
main:
	.frame	$fp,32,$31		# vars= 16, regs= 1/0, args= 0, gp= 8
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-32
$LCFI0:
	sw	$fp,28($sp)
$LCFI1:
	move	$fp,$sp
	movz	$31,$31,$0
$LCFI2:
	li	$2,5			# 0x5
	sw	$2,20($fp)
	li	$2,5			# 0x5
	sw	$2,16($fp)
	sw	$0,12($fp)
	sw	$0,8($fp)
	lw	$3,20($fp)
	lw	$2,16($fp)
	nop
	addu	$2,$3,$2
	sw	$2,12($fp)
	lw	$2,12($fp)
	nop
	bne	$2,$0,$L2
	nop

	sw	$0,8($fp)
	b	$L3
	nop

$L2:
	lw	$2,12($fp)
	nop
	blez	$2,$L4
	nop

	li	$2,1			# 0x1
	sw	$2,8($fp)
	b	$L3
	nop

$L4:
	lw	$2,12($fp)
	nop
	bgez	$2,$L3
	nop

	li	$2,-1			# 0xffffffffffffffff
	sw	$2,8($fp)
$L3:
	move	$2,$0
	move	$sp,$fp
	lw	$fp,28($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	main
$LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 4.4.5-8) 4.4.5"

.syntax unified

.word 0x20000100
.word _start

.global _start
.type _start, %function
_start:
	nop
	movs	r0,	#100
	movs	r1,	#0x11000000
	mov	r2,	#102
	movw	r3,	#103
	//
	//branch w/o link
	//
	push {r0, r1, r2}
	pop {r2, r1, r0}
	b	label01

label01:
	nop

	//
	//branch w/ link
	//
	push {r2, r1, r0}
	pop {r0, r1, r2}
	bl	sleep

sleep:
	nop
	b	.

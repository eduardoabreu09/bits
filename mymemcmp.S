/*
 * mymemcmp.S
 *
 *  Created on: Sep 8, 2018
 *      Author: osboxes
 */
.syntax unified
.text
.macro ret
    bx lr
.endm

.globl mymemcmp

mymemcmp:

	subs r3,r0,r0
	subs r4,r0,r0
	subs r5,r0,r0
	adds r2,#0
	BEQ rets

	laco:
	ldrb r3,[r0]
	ldrb r4,[r1]
	subs r5,r3,r4
	BNE rets
	adds r0,#4
	adds r1,#4
	subs r2,#1
	BNE laco
rets:
	subs r0,r3,r4
ret



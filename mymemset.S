/*
 * mymemset.S
 *
 *  Created on: Sep 8, 2018
 *      Author: osboxes
 */

.syntax unified
.text
.macro ret
    bx lr
.endm

.globl mymemset

mymemset:
	adds r2,#0
	BEQ rets
	subs r3,r0,r0
	adds r3,r3,r0

	laco:
		strb r1,[r3]
		adds r3,#4
		subs r2,#1
		BNE laco
rets:
ret



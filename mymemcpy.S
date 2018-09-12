/*
 * mymemcpy.S
 *
 *  Created on: Sep 8, 2018
 *      Author: osboxes
 */

.syntax unified
.text
.macro ret
    bx lr
.endm

.globl mymemcpy

mymemcpy:
	adds r2,#0
	BEQ rets

	subs r3,r0,r0




		laco:
		ldrb r3,[r1]
		strb r3,[r0]
		adds r0,#4
		adds r1,#4
		subs r2,#1
		BNE laco


rets:
ret

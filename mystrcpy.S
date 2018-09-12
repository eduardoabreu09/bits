/*
 * mystrcpy.S
 *
 *  Created on: Sep 8, 2018
 *      Author: osboxes
 */
.syntax unified
.text
.macro ret
    bx lr
.endm

.globl mystrcpy

mystrcpy:
	subs r2,r0,r0
	subs r3,r0,r0
	subs r4,r0,r0
	adds r4,r4,r1
	adds r3,r3,r0
	laco:
		ldrb r2,[r4]
		strb r2,[r3]
		adds r3,#4
		adds r4,#4
		adds r2,#0
		BNE laco

ret




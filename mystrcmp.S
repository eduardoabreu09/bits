/*
 * mystrcmp.S
 *
 *  Created on: Sep 11, 2018
 *      Author: osboxes
 */
.syntax unified
.text
.macro ret
    bx lr
.endm

.globl mystrcmp

mystrcmp:
	subs r3,r0,r0
	subs r4,r0,r0
	subs r2,r0,r0


	laco:
	ldrb r3,[r0]
	ldrb r4,[r1]
	subs r2,r3,r4
	BNE rets
	adds r0,#4
	adds r1,#4
	subs r3,#0
	BNE laco
rets:
	subs r0,r3,r4
ret




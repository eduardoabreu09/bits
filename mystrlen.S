/*
 * mystrler.S
 *
 *  Created on: Sep 11, 2018
 *      Author: osboxes
 */

.syntax unified
.text
.macro ret
    bx lr
.endm

.globl mystrlen

mystrlen:
	subs r2,r0,r0
	subs r3,r0,r0
	subs r1,r0,r0


	laco:
		ldrb r2,[r0]
		adds r3,#1
		adds r0,#4
		adds r2,#0
		BNE laco
	subs r0,r0,r0
	adds r0,r3,r0
ret


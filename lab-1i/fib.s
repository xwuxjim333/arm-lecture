	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	@ ADD/MODIFY CODE BELOW
	@ PROLOG
	push {r3, r4, r5, r6, lr}

	mov r3, #-1	@ r3 = F(n-2)
	mov r4, #1	@ r4 = F(n-1)
	mov r5, #0	@ r5 = F(n)
	mov r6, r0	@ r6 = i

	@ END CODE MODIFICATION
.loop:
	add r5, r3, r4	@ F(n) = F(n-2)+F(n-1)
	mov r3, r4	@ F(n-2) = F(n-1)
	mov r4, r5	@ F(n-1) = F(n)
	subs r6, r6, #1	@ i = i-1
	bge .loop	@ if i>= 0, goto loop

	mov r0, r5
	pop {r3, r4, r5, r6, pc}

	.size fibonacci, .-fibonacci
	.end

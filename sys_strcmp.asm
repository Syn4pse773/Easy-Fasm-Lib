format ELF64

public sys_strcmp

section '.text' executable



sys_strcmp:




@@:
	movzx        	rax, 		byte [rdi]
	movzx 		rdx, 		byte [rsi]
	cmp 		rax, 		rdx
	jne 		@f
	cmp 		rax, 		0		
	jz 		.equal
	inc 		rdi
	inc		rsi
	jmp		@b


@@:
	sub 		rax, 		rdx
	jmp 		.done

.equal:
	xor 		rax, 		rax



.done:
	ret
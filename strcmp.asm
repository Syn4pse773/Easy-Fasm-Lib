format ELF64

public sys_strcmp

section '.text' executable



sys_strcmp:




.loop:
	movzx rax, 	byte [rdi]
	movzx rdx, 	byte [rsi]
	cmp rax, 	rdx
	jne 		.not_equal
	cmp rax, 	0	
	jz 		.equal
	inc 		rdi
	inc		rsi
	jmp		.loop


.not_equal:
	sub rax, 	rdx
	jmp 		.done

.equal:
	xor rax, rax



.done:
	ret
format ELF64

public sys_strncpy
section '.text' executable


sys_strncpy:
	lea rax, 	[rdi]

.copy:
	test rdx, 	rdx
	jz .done
	mov cl, 	byte [rsi]
	mov byte [rdi], cl
	inc rdi
	inc rsi
	dec rdx
	cmp cl, 	0
	jnz .copy
	jz .end_loop

.end_loop:
	cmp rdx, 	0
	jz .done
	mov byte [rdi], 0
	inc rdi
	dec rdx
	jmp .end_loop

.done:
	ret

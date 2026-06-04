format ELF64 

public sys_strcat
section 'text' executable


sys_strcat:
	mov rax, 	rdi

.loop:
	cmp byte [rdi], 0
	jz .loopcop
	inc rdi
	jmp .loop

.loopcop:
	mov cl, byte 	[rsi]
	mov byte [rdi], cl
	test cl, 	cl
	jz .done
	inc rdi
	inc rsi
	jmp .loopcop


.done:
	ret

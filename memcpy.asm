format ELF64

public sys_memcpy
section 'text' executable

sys_memcpy:
	mov rax, rdi

.loop:
	cmp rdx, 	0
	jz .done

	mov cl, 	byte [rsi]
	mov byte [rdi], cl
	inc rsi
	inc rdi
	dec rdx
	jmp .loop






.done:
	ret
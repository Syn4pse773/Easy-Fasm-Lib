format ELF64
public sys_memset

section '.text' executable

sys_memset:
	mov rax, rdi

.loop:
	cmp rdx, 	0
	jz .done

	mov byte [rdi], sil 
	inc rdi
	dec rdx
	jmp .loop
	





.done:
	ret
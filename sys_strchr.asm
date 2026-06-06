format ELF64

public sys_strchr
section '.text' executable

sys_strchr:
	

.loop:
	mov dl, byte [rdi]
	cmp dl, 	sil
	je .found
	cmp dl, 	0
	jz .not_found
	inc rdi
	jmp .loop


.found:
	lea rax, 	[rdi]
	ret 

.not_found:
	xor rax, 	rax
	ret

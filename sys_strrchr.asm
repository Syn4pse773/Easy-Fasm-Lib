format ELF64

public sys_strrchr

section '.text' executable

sys_strrchr:
	mov 	rcx, rdi
	@@:
	cmp 	byte [rcx], 0
	jz	@f
	inc     rcx
	jmp     @b
	@@:
	dec	rcx
	jmp 	.search
	


.search:
	cmp 	rcx, rdi
	jb	.notfound
	mov 	dl, byte [rcx]
	cmp 	dl, sil
	je	.found
	dec	rcx
	jmp	.search	



.notfound:
	xor	rax, rax
	ret

.found:
	mov	rax, rcx
	ret


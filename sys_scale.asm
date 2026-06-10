format ELF64
public sys_scale

section '.text' executable

sys_scale:
	mov	rax, rdi
	shl 	rax, 3
	shr 	rax, 2
	ret
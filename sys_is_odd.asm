format ELF64
public sys_is_odd
section '.text' executable

sys_is_odd:
	test	rdi, 1
	jz	.even
	mov	rax, 1
	ret


.even:
	mov	rax, 0
	ret
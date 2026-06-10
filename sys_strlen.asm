format ELF64

public sys_strlen

section '.text' executable



sys_strlen:
	xor 	rax, 	rax
		

@@:
	cmp 	byte [rdi + rax], 0
	jz 	@f

	inc 	rax
	jmp 	@b




@@:
	ret
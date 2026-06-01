format ELF64

public sys_strlen

section '.text' executable



sys_strlen:
	xor rax, 		rax


.loop:
	cmp byte [rdi + rax], 	0
	jz 			.done

	inc 			rax
	jmp .loop




.done:
	ret
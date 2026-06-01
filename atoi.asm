format ELF64

public sys_atoi

section '.text' executable

sys_atoi:
	xor rax, 	rax

.loop:
	movzx rdx, 	byte [rdi]
	cmp rdx, 	48
	jl 	.done

	cmp rdx, 	57
	jg 	.done
	sub rdx, 	48
	imul rax, 	10
	add rax, 	rdx

	inc rdi
	jmp .loop

.done:
	ret

format ELF64 

public sys_tolowercase

section '.text' executable

sys_tolowercase:


.loop:
	movzx rdx, 	byte [rdi]
	cmp rdx, 	0
	jz .done
	cmp rdx, 	65
	jl .next
	cmp rdx, 	90
	jg .next 
	or rdx, 	0x20
	mov byte [rdi], dl




.next:
	inc rdi
	jmp .loop

.done:
	ret
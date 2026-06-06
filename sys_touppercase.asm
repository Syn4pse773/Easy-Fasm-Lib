format ELF64

public sys_touppercase

section 'text' executable

sys_touppercase:

.loop:
	movzx rdx, byte [rdi]
	cmp rdx, 		0
	jz .done
	cmp rdx,		97
	jb .next
	cmp rdx,		122
	jg .next
	and rdx, 		0xDF
	mov [rdi], dl


.next:
	inc rdi
	jmp .loop




.done:
	ret
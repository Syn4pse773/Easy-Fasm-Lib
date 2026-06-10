format ELF64 

public sys_itoa
extrn sys_reverse_string
section '.text' executable

sys_itoa:
	push rsi
	mov rax, 	rdi
	mov rcx, 	10


.loop:
	xor rdx, 	rdx
	div rcx	
	add rdx,	48
	mov byte [rsi], dl
	inc rsi
	cmp rax, 	0
	jz .done
	jmp .loop

.done:
	mov byte [rsi], 0
	pop rdi
	push rdi
	call sys_reverse_string
	pop rax
	ret

format ELF64

public sys_reverse_string

section '.text' executable

sys_reverse_string:
	mov 	rsi, 	rdi


.loop:
	cmp byte [rsi], 0
	jz		.fe
	inc rsi
	jmp .loop


.fe:
	dec	rsi	

swaploop:
	cmp rdi,	 rsi
	jae 		done
	mov al, 	byte [rdi]
	mov cl, 	byte [rsi]
	mov byte [rdi], cl
	mov byte [rsi], al
	inc rdi
	dec rsi
	jmp swaploop




notzero:
	dec rsi
	jmp swaploop


done:
	ret
format ELF64
public sys_ispalindrome

section '.text' executable

sys_ispalindrome:
	mov rsi, 	rdi
.loop:
	cmp byte [rsi], 0
	jz .zero
	inc 		rsi
	jmp .loop

.compare:
	cmp rdi, 	rsi
	jae .yes
	mov al, 	byte [rdi]
	mov cl, 	byte [rsi]
	cmp al, 	cl
	jne .no
	inc rdi
	dec rsi
	jmp .compare
.yes:
	mov rax, 	1
	jmp .done
.no:
	xor rax, 	rax
	jmp .done
.zero:
	dec 		rsi
	jmp .compare

.done:
	ret
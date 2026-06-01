format ELF64

public sys_fnv1a_64
include 'std.inc'
FNV_OFFSET_BASIS = 0xcbf29ce484222325
FNV_PRIME        = 0x100000001b3

section ".text" executable


sys_fnv1a_64:
    mov 	rax,	FNV_OFFSET_BASIS
    mov 	rcx, 	FNV_PRIME




.loop:		
    	movzx 	rdx,	byte [rdi]
    	test 	rdx, 	rdx  
    	jz 		.done
    	xor 	rax, 	rdx
	imul 	rax, 	rcx
	inc 	rdi
	jmp 	.loop
	



.done:	
	ret
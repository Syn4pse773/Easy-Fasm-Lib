format ELF64
public sys_testtwo
section '.text' executable

sys_testtwo:
        mov     rax, rdi
        dec     rdi
        test    rax, rdi
        jz      .is_pow2
        xor     rax, rax
        ret

.is_pow2:
        mov     rax, 1
        ret
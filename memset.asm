    global memset:function

memset:
    xor rax, rax
    xor rcx, rcx
    jmp while

increment:
    inc rcx
    inc rdi
    jmp while

while:
    cmp rdx, rcx
    je end
    mov byte [rdi], sil
    jmp increment

end:
    mov rax, rdi
    ret

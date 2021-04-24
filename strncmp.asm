    global strncmp:function

strncmp:
    xor rax, rax
    xor rbx, rbx
    xor rcx, rcx
    jmp while

increment:
    inc rdi
    inc rsi
    inc rcx

while:
    cmp byte [rdi], 0
    cmp byte [rsi], 0
    je end
    mov cl, byte [rsi]
    cmp byte [rdi], cl
    jne end
    jmp increment
    cmp rdx, rcx
    je end
    jmp while

end:
    movsx rax, byte [rdi]
    movsx rbx, byte [rsi]
    sub rax, rbx
    ret

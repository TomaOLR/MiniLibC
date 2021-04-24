    global strcmp:function

strcmp:
    xor rax, rax
    xor rcx, rcx
    jmp while

increment:
    inc rdi
    inc rsi
    jmp while

while:
    cmp byte [rsi], 0
    cmp byte [rdi], 0
    je end
    mov cl, byte [rsi]
    cmp byte [rdi], cl
    je increment
    jmp end

end:
    movsx rax, byte [rdi]
    movsx rcx, byte [rsi]
    sub rax, rcx
    ret

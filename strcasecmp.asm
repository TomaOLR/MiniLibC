    global strcasecmp:function

strcasecmp:
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
    jmp compare
    je increment
    jmp end

compare:
    cmp byte [rdi], cl
    je increment
    add cl, 32
    cmp byte [rdi], cl
    je increment
    sub cl, 64
    cmp byte [rdi], cl
    je increment

end:
    movsx rax, byte [rdi]
    movsx rcx, byte [rsi]
    sub rax, rcx
    ret

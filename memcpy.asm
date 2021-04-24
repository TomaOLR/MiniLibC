    global memcpy:function

memcpy:
    xor rax, rax
    xor rcx, rcx
    jmp while

increment:
    inc rcx
    inc rdi
    inc rsi

while:
    cmp rcx, rdx
    je end
    cmp byte [rsi], 0
    je end
    mov bl, byte [rsi]
    mov byte [rdi], bl
    jmp increment
    jmp while

end:
    mov rax, rdi
    ret

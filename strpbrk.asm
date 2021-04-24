    global mstrpbrk:function

mstrpbrk:
    xor rax, rax
    xor cl, cl
    mov rdx, rsi
    jmp while

while:
    cmp byte [rdi], 0
    je end_null
    jmp while

end:
    mov rax, rdi
    ret

end_null:
    mov rax, 0
    ret

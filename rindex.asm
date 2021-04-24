    global rindex:function

rindex:
    xor rax, rax
    xor rcx, rcx
    jmp go_to_end

increment:
    inc rdi
    inc rcx

go_to_end:
    cmp byte [rdi], 0
    jne increment
    jmp while

decrement:
    dec rcx
    cmp rcx, 0
    je end_null
    dec rdi

while:
    cmp byte [rdi], sil
    jne decrement
    jmp end

end_null:
    mov rax, 0
    ret

end:
    mov rax, rdi
    ret

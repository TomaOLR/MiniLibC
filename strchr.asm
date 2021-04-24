    global strchr:function

strchr:
    xor rax, rax
    jmp while

increment:
    inc rdi
    jmp while

while:
    cmp byte [rdi], sil
    je end
    cmp byte [rdi], 0
    je end_null
    jmp increment

end:
    mov rax, rdi
    ret

end_null:
    mov rax, 0
    ret

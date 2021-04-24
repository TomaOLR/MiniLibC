    global strlen:function

strlen:
    xor rax, rax
    jmp while

increment:
    inc rax
    inc rdi
    jmp while

while:
    cmp [rdi], byte 0
    jz end
    jmp increment

end:
    ret

section .data
    str: db '0123456789'
    br: db 10

section .text
    global _start

write:
    mov eax, 4
    mov ebx, 1
    int 80h
    ret

nl:
    mov ecx, br
    mov edx, 1
    call write
    ret

print_int:
    pop rbx
    pop rax
    push rbx
    mov rcx, 0
digit_loop:
    mov ebx, 10
    mov edx, 0
    div ebx

    push rdx
    add rcx, 1
    cmp eax, 0
    jnz digit_loop
print_loop:
    pop rdx
    push rcx

    mov ecx, str
    add ecx, edx
    mov edx, 1
    call write

    pop rcx
    dec rcx
    cmp rcx, 0
    jnz print_loop

    ret

_start:
    mov rcx, 999
    push 0
iter:
    mov edx, 0
    mov rax, rcx
    mov ebx, 3
    div ebx
    cmp edx, 0
    jz acc

    mov edx, 0
    mov rax, rcx
    mov ebx, 5
    div ebx
    cmp edx, 0
    jnz next
acc:
    pop rax
    add rax, rcx
    push rax
next:
    dec rcx
    cmp rcx, 0
    jnz iter

    call print_int
    call nl

    mov eax, 1
    mov ebx, 0
    int 80h

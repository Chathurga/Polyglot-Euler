extern printf

section .data
    fmt: db "%d", 10, 0

section .text
    global main

main:
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
    
    pop rax
    mov edi, fmt
    mov esi, eax
    mov eax, 0
    call printf
    ret

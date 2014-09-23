extern printf

section .data
    fmt: db "%d", 10, 0

section .text
    global main

main:
    mov eax, 0      ; x1 = 0
    mov ebx, 1      ; x2 = 0
    mov ecx, 0      ; acc = 0

iter:
    mov edx, 0      ; tmp = 0
    add edx, eax    ; tmp += x1
    add edx, ebx    ; tmp += x2

    cmp edx, 4000000; if (tmp - 4000000
    jns exit        ;                   >= 0) goto exit;

    mov eax, ebx    ; x1 = x2
    mov ebx, edx    ; x2 = tmp

    and edx, 1      ; if (tmp & 1
    jnz iter        ;             != 0) goto iter;

    add ecx, ebx    ; acc += x2
    jmp iter

exit:
    mov edi, fmt    ; Fist argument in 64-bit ABI
    mov esi, ecx    ; Second argument
    mov eax, 0      ; printf needs eax to contain the number of non int args
    call printf     ; print("%d", eax);
    ret

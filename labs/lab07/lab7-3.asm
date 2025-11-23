%include 'in_out.asm'

SECTION .data
msg_x: DB 'Введите значение переменной x: ', 0
msg_a: DB 'Введите значение переменной a: ', 0
msg_f: DB 'Результат f(x): ', 0

SECTION .bss
x: RESB 80
a: RESB 80

SECTION .text
GLOBAL _start

_start:
    mov eax, msg_x
    call sprint

    mov ecx, x
    mov edx, 80
    call sread

    mov eax, x
    call atoi
    mov edi, eax

    mov eax, msg_a
    call sprint

    mov ecx, a
    mov edx, 80
    call sread

    mov eax, a
    call atoi
    mov esi, eax

    cmp edi, esi
    jl less_than_a

    mov eax, 8
    jmp print_answer

less_than_a:
    mov eax, esi
    shl eax, 1
    sub eax, edi

print_answer:
    mov ebx, eax

    mov eax, msg_f
    call sprint

    mov eax, ebx
    call iprintLF

    call quit

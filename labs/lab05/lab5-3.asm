
%include "in_out.asm"        ; подключаем подпрограммы

SECTION .data
    prompt db 'Введите строку:', 0

SECTION .bss
    buf    resb 80

SECTION .text
    global _start

_start:
    ; 1) печать приглашения
    mov eax, prompt
    call sprintLF

    ; 2) чтение строки в buf
    mov ecx, buf
    mov edx, 80
    call sread

    ; 3) вывод введённой строки
    mov eax, buf
    call sprintLF

    ; 4) выход
    call quit

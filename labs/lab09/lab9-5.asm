%include "in_out.asm"

SECTION .data
    msg_result  db "Результат: ",0

SECTION .text
GLOBAL _start

_start:
    ; ---- Вычисление выражения (3 + 2) * 4 + 5
    mov ebx, 3
    mov eax, 2
    add ebx, eax

    mov eax, ebx      ; <<< ИСПРАВЛЕНИЕ: для mul EAX должен содержать 5
    mov ecx, 4
    mul ecx
    add eax, 5
    mov edi, eax

    ; ---- Вывод результата
    mov eax, msg_result
    call sprint

    mov eax, edi      ; выводим результат
    call iprintLF

    call quit


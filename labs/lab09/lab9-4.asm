%include "in_out.asm"

SECTION .data
    msg_func    db "Функция: f(x) = 2x + 15", 0
    msg_result  db "Результат: ", 0

SECTION .text
GLOBAL _start

_start:
    mov ecx, msg_func
    call sprintLF

    pop ecx
    pop ecx
    pop eax
    pop 

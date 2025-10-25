SECTION .data                 ; Начало секции данных
    hello: DB 'Hello world!',10 ; 'Hello world!' плюс символ перевода строки
    helloLen: EQU $-hello       ; Длина строки hello

SECTION .text                 ; Начало секции кода
    GLOBAL _start

_start:
    mov eax,4                 ; Системный вызов для записи (sys_write)
    mov ebx,1                 ; Описатель файла 1 = stdout
    mov ecx,hello             ; Адрес строки hello
    mov edx,helloLen          ; Длина строки
    int 80h                   ; Вызов ядра

    mov eax,1                 ; Системный вызов выхода (sys_exit)
    xor ebx,ebx               ; Код возврата 0
    int 80h                   ; Вызов ядра

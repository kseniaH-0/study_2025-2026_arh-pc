%include 'in_out.asm' ; подключение внешнего ф файла
SECTION .data
div: DB 'Результат: ',0
rem: DB 'Остаток от деления: ',0
66 Демидова А. В.
Архитектура ЭВМ
SECTION .text
GLOBAL _start
_start:
mov eax,5 ;
mov ebx,2 ; 
mul ebx ;
add eax, 3 ; +3
xor edx,edx ; обнуляем E для корректной работы div
mov ebx,3 ; =3
div ebx ; /3,ED=остаток от деления
mov edi,eax ; запись результата вычисления в 'edi'
; --вод результата на экран
mov eax,div ; вызов подпрограммы печати
call sprint ; сообщения "Результат:
mov eax,edi ; вызов подпрограммы печати значения
call iprintLF ; из 'e edi в виде символов
mov eax,rem ; вызов подпрограммы печати
call sprint ; сообщения 'Остаток от деления: '
mov eax,edx ; вызов подпрограммы печати значения
call iprintLF ; из 'edx' (остаток) в виде символов
call quit ; вызов подпрограммы завершения

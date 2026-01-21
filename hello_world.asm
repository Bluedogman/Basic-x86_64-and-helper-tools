section .data
    text1 db "Hewwoo world!",10

section .text
    global _start

%macro exit 1
    mov rax, 60
    mov rdi, %1
    syscall
%endmacro

_start:
    call _PrintHewwoWorld

    exit 0

_PrintHewwoWorld:
    mov rax, 1
    mov rdi, 1
    mov rsi, text1
    mov rdx, 14
    syscall
    ret
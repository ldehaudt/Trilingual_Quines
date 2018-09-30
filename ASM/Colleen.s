section .data
string.str db "section .data%cstring.str db %c%s%c%c%csection .text%cglobal _print%cglobal _main%cextern _printf%c%c_main:%cpush rbp%cmov rbp, rsp%csub rsp, 16%ccall _print%cleave%c;Very cool comment... WOWZA%cret%c%c_print:%cpush rbp%cmov rbp, rsp%csub rsp, 16%clea rdi, [rel string.str]%cmov rsi, 10%cmov rdx, 34%clea rcx, [rdi]%cmov r8d, 34%cmov r9d, 10%cmov r15, 40%cjmp loop%c%cloop:%cpush 10%csub r15, 1%ccmp r15, 0%cjg loop%cjmp end%c%cend:%ccall _printf%cleave%cret%c%c;In a perfect world, men like me would not exist"

section .text
global _print
global _main
extern _printf

_main:
push rbp
mov rbp, rsp
sub rsp, 16
call _print
leave
;Very cool comment... WOWZA
ret

_print:
push rbp
mov rbp, rsp
sub rsp, 16
lea rdi, [rel string.str]
mov rsi, 10
mov rdx, 34
lea rcx, [rdi]
mov r8d, 34
mov r9d, 10
mov r15, 40
jmp loop

loop:
push 10
sub r15, 1
cmp r15, 0
jg loop
jmp end

end:
call _printf
leave
ret

;In a perfect world, men like me would not exist
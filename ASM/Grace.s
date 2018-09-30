string.str db "string.str db %c%s%c, 0%cstring.grace db %cGrace_kid.s%c, 0%cstring.flag db %cw%c, 0%c%c%%define MAIN _main:%c%%define GMAIN global _main%c%%define WEEWOO very cool beans%c%csection .text%cGMAIN%cextern _fprintf%cextern _fopen%cextern _fclose%c%cMAIN%cpush rbp%cmov rbp, rsp%csub rsp, 32%clea rdi, [rel string.grace]%clea rsi, [rel string.flag]%ccall _fopen%cmov rdi, rax%clea rsi, [rel string.str]%cmov rdx, 34%clea rcx, [rsi]%cmov r8d, 34%cmov r9d, 10%cmov r15, 51%c%cloop:%cpush 10%csub r15, 1%ccmp r15, 0%cjg loop%cpush 34%cpush 34%cpush 10%cpush 34%cpush 34%ccall _fprintf%cmov rax, 0%cleave%cret%c%c;But this is not a perfect world%c", 0
string.grace db "Grace_kid.s", 0
string.flag db "w", 0

%define MAIN _main:
%define GMAIN global _main
%define WEEWOO very cool beans

section .text
GMAIN
extern _fprintf
extern _fopen
extern _fclose

MAIN
push rbp
mov rbp, rsp
sub rsp, 32
lea rdi, [rel string.grace]
lea rsi, [rel string.flag]
call _fopen
mov rdi, rax
lea rsi, [rel string.str]
mov rdx, 34
lea rcx, [rsi]
mov r8d, 34
mov r9d, 10
mov r15, 51

loop:
push 10
sub r15, 1
cmp r15, 0
jg loop
push 34
push 34
push 10
push 34
push 34
call _fprintf
mov rax, 0
leave
ret

;But this is not a perfect world

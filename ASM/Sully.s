string.str db "string.str db %c%s%c, 0%cstring.sully db %cSully_%%d.s%c, 0%cstring.base db %c./Sully%c, 0%cstring.flag db %cw%c, 0%cstring.sysCall db %cnasm -f macho64 Sully_%%d.s;gcc Sully_%%d.o -o Sully_%%d;./Sully_%%d%c, 0%c%csection .text%cglobal _main%cextern _fprintf%cextern _sprintf%cextern _system%cextern _printf%cextern _fopen%cextern _fclose%cextern _strcmp%cextern _malloc%cextern _free%c%c_main:%cpush rbp%cmov rbp, rsp%csub rsp, 16%cmov rdi, [rsi]%clea rsi, [rel string.base]%ccall _strcmp%cmov rdx, %d%c%ccmp rdx, 0%cjle end%ccmp rax, 0%cje cont%csub rdx, 1%c%ccont:%cmov r13, rdx%cmov rdi, 100%ccall _malloc%cmov rdx, r13%cmov rdi, rax%cmov r14, rax%clea rsi, [rel string.sully]%c%c%ccall _sprintf%cmov rdi, r14%clea rsi, [rel string.flag]%ccall _fopen%cmov rdi, rax%cmov r12, rax%clea rsi, [rel string.str]%cmov rdx, 34%clea rcx, [rsi]%cmov r8d, 34%cmov r9d, 10%cmov r15, 95%c%cloop:%cpush 10%csub r15, 1%ccmp r15, 0%cjg loop%cpush r13%cpush 10%cpush 10%cpush 10%cpush 10%cpush 10%cpush 10%cpush 10%cpush 10%cpush 10%cpush 10%cpush 10%cpush 10%cpush 10%cpush 10%cpush 10%cpush 10%cpush 10%cpush 10%cpush 10%cpush 10%cpush 10%cpush 34%cpush 34%cpush 10%cpush 34%cpush 34%cpush 10%cpush 34%cpush 34%cpush 10%cpush 34%cpush 34%ccall _fprintf%cmov rax, 0%cmov rdi, r12%ccall _fclose%cmov rdx, r13%cmov rcx, r13%cmov r8, r13%cmov r9, r13%cmov rdi, r14%clea rsi, [rel string.sysCall]%ccall _sprintf%cmov rdi, r14%ccall _system%cmov rdi, r14%ccall _free%c%cend:%cleave%cret", 0
string.sully db "Sully_%d.s", 0
string.base db "./Sully", 0
string.flag db "w", 0
string.sysCall db "nasm -f macho64 Sully_%d.s;gcc Sully_%d.o -o Sully_%d;./Sully_%d", 0

section .text
global _main
extern _fprintf
extern _sprintf
extern _system
extern _printf
extern _fopen
extern _fclose
extern _strcmp
extern _malloc
extern _free

_main:
push rbp
mov rbp, rsp
sub rsp, 16
mov rdi, [rsi]
lea rsi, [rel string.base]
call _strcmp
mov rdx, 5

cmp rdx, 0
jle end
cmp rax, 0
je cont
sub rdx, 1

cont:
mov r13, rdx
mov rdi, 100
call _malloc
mov rdx, r13
mov rdi, rax
mov r14, rax
lea rsi, [rel string.sully]


call _sprintf
mov rdi, r14
lea rsi, [rel string.flag]
call _fopen
mov rdi, rax
mov r12, rax
lea rsi, [rel string.str]
mov rdx, 34
lea rcx, [rsi]
mov r8d, 34
mov r9d, 10
mov r15, 95

loop:
push 10
sub r15, 1
cmp r15, 0
jg loop
push r13
push 10
push 10
push 10
push 10
push 10
push 10
push 10
push 10
push 10
push 10
push 10
push 10
push 10
push 10
push 10
push 10
push 10
push 10
push 10
push 10
push 10
push 34
push 34
push 10
push 34
push 34
push 10
push 34
push 34
push 10
push 34
push 34
call _fprintf
mov rax, 0
mov rdi, r12
call _fclose
mov rdx, r13
mov rcx, r13
mov r8, r13
mov r9, r13
mov rdi, r14
lea rsi, [rel string.sysCall]
call _sprintf
mov rdi, r14
call _system
mov rdi, r14
call _free

end:
leave
ret
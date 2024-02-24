section     .text
global      _start 
_start: 
    mov     eax,4			; __NR_write from asm/unistd_64.h (https://github.com/ilbers/linux/blob/master/arch/sh/include/uapi/asm/unistd_64.h)
    mov     ebx,1			; stdout fileno
    mov     ecx,msg		; Point c to message
    mov     edx,len		; Point d to length
    int     0x80			; Interrupt: execute systemcall
    mov     eax,1			; __NR_exit
    int     0x80			; Interrupt: execute systemcall
section     .data
msg     db  'Hello world!',0xa  
len     equ $ - msg   

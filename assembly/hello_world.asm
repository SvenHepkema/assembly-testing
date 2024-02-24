; Good example of how to execute a syscall, in this case we execute write() and exit()
; 	write (https://man7.org/linux/man-pages/man2/write.2.html)
; 		C: ssize_t write(int fd, const void buf[.count], size_t count);
; 		In assembly we can call this by inserting the following values into the following registers:
; 			eax <= system call identifier: __NR_write == 4 in this case. You can find these values here: 
;							asm/unistd_64.h (https://github.com/ilbers/linux/blob/master/arch/sh/include/uapi/asm/unistd_64.h)
; 			ebx <= fd / file descriptor (in this case we use 1, the stdout fd)
; 			ecx <= pointer to start of string
; 			edx <= length of string
; 	exit (https://man7.org/linux/man-pages/man3/exit.3.html)
;			C: void exit(int status);
;				eax <= system call identifier: __NR_exit == 1
;				ebx == status int

section     .text
global      _start 
_start: 
    mov     eax,4			; __NR_write 
    mov     ebx,1			; stdout fileno
    mov     ecx,msg		; Point c to message
    mov     edx,len		; Point d to length
    int     0x80			; Interrupt: execute systemcall
    mov     eax,1			; __NR_exit
    int     0x80			; Interrupt: execute systemcall
section     .data
msg     db  'Hello world!',0xa  
len     equ $ - msg   

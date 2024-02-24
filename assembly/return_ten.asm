section     .text
global      _start 
_start: 
    mov     eax,1			; __NR_exit
		mov			ebx,10		; status, or in this case return int
    int     0x80			; Interrupt: execute systemcall

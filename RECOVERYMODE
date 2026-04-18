section .data
	hello5:     db 'OS RECOOVERY MODE.',10   ; 'Hello, World!' plus a linefeed character
	helloLen5:  equ $-hello5            ; Length of the 'Hello world!' string


	hello6:     db '==================',10   ; 'Hello, World!' plus a linefeed character
	helloLen6:  equ $-hello6             ; Length of the 'Hello world!' string


	hello7:     db 'SHUTDOWN',10    ; 'Hello, World!' plus a linefeed character
	helloLen7:  equ $-hello7             ; Length of the 'Hello world!' string

	hello8:     db 'RECOVERY MODE',10    ; 'Hello, World!' plus a linefeed character
	helloLen8:  equ $-hello8 
	section .text
global _start
_start:

mov rsp, 0
mov rdi, 1
cmp rdi, rsp
jne jmpstart
	mov eax,4            ; The system call for write (sys_write)
	mov ebx,1            ; File descriptor 1 - standard output
	mov ecx,hello5        ; Put the offset of hello in ecx
	mov edx,helloLen5  

	
	
		mov eax,4            ; The system call for write (sys_write)
	mov ebx,1           ; File descriptor 1 - standard output
	mov ecx,hello6        ; Put the offset of hello in ecx
	mov edx,helloLen6 

	
		mov eax,4            ; The system call for write (sys_write)
	mov ebx,1            ; File descriptor 1 - standard output
	mov ecx,hello7        ; Put the offset of hello in ecx
	mov edx,helloLen7  

	
			mov eax,4            ; The system call for write (sys_write)
	mov ebx,1            ; File descriptor 1 - standard output
	mov ecx,hello8        ; Put the offset of hello in ecx
	mov edx,helloLen8
	jmpstart:
		mov eax,1            ; The system call for exit (sys_exit)
	mov ebx,0            ; Exit with return "code" of 0 (no error)

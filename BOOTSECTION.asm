org 0x7C00
;16 bit 

;i hate evey fucking bit of this asm code.
    mov si, title      
    mov ah, 0x0e

start:
cmp ah, 1Ch
Jz NOENTER

int 0x0e 
mov al, 0x0D
int 0x10
mov al, 0x0A
int 0x10

mov Al, '#'
int 0x10
mov Al, ':'
int 0x10
NOENTER:
;print

    lodsb             
    or al, al        
    int 0x10          
title db "Kernaline os bootloader.", 0
Jmp start
Times 510 db 0
db 0x55, 0xaa 

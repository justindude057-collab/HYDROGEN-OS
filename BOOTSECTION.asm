org 0x7C00
;16 bit 

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


mov ah, 0x0e
mov al, [title]       
    inc al            
title db "Kernaline os bootloader.", 10
    int 0x10 
jmp start

Jmp $
Times 510 db 0
db 0x55, 0xaa 

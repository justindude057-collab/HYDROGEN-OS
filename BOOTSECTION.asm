org 0x7C00
;16 bit 
mov ax, 0xb800
mov es, ax
xor di, di
mov ax, 0x1f00
mov cx, 2000
rep 

mov ah, 0x0E
mov Al, '#'
int 0x10
mov Al, ':'
int 0x10

start:
mov ah, 0
Int 0x16
mov ah, 0x0E
int 0x10

mov ah, 0
Int 16h
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

jmp start

Jmp $
Times 510 db 0
db 0x55, 0xaa 

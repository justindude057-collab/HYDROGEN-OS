mov ax, 0
mov bx, 1
cmp ax, bx
jne A

mov ax, 0xb800
mov es, ax
xor di, di
mov ax, 0x1f00
mov cx, 2000
rep stosw

mov ah, 0x0e
mov al, 'something went wrong.'
int 0x10
A:

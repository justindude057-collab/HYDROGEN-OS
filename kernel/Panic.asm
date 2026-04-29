mov ax, 0
mov bx, 1
cmp ax, bx
jne A
mov ah, 0x0e
mov al, 'something went wrong.'
int 0x10
A:

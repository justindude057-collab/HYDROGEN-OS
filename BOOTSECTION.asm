org 0x7C00
;16 bit 
start:
;i hate evey fucking bit of this asm 
Jmp start
Times 510 db 0
db 0x55, 0xaa 

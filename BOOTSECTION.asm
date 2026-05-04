org 0x7C00
;16 bit 

;i hate evey fucking bit of this asm 

    mov si, title    
    mov ah, 0x0e       

start:
    lodsb              
    or al, al       
    jz halt            
    int 0x10           
Jmp start

halt:
hlt

title db "Kernaline os bootloader.", 0 



    mov si, select    
    mov ah, 0x0e       

A:
    lodsb              
    or al, al       
    jz halt            
    int 0x10           
Jmp A


select db "select a drive..", 0 


Times 510 db 0
db 0x55, 0xaa 

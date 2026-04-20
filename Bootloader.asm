jl 0x2
mov edx, 0xddaadeda
jmp 0xaa1:0xfceebe0e
adc dh, cl
lods eax, DWORD PTR ds:[esi]
fdivp st(6), st
in eax, 0x10
fisttp DWORD PTR [edx]
aad 0x10
mov esi, 0xae5ba5da
.byte 0xbe
push ecx
.byte 0x15
.byte 0x12

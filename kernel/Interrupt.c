int main() {
syscall();
return 0;}

int syscall() {
_asm_ ("cmp ah, bp"
       "jne H:"
        //interrupt code here
        "H:");
return 0;}


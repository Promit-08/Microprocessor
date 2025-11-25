org 100h

mov ah,01h
int 21h
sub al,'0'
mov bl,al

mov ah,01h
int 21h
sub al,'0'
mov bh,al

mov ah,01h
int 21h
sub al,'0'
mov cl,al

cmp bl,bh
jg print_a
    cmp bh,cl
    jg print_2nd
    
    mov dl,cl
    jmp exit
    
print_a:
    cmp bl,cl
    jg print_1st
    
print_1st:
    mov dl,bl
    jmp exit
    
print_2nd:    
    mov dl,bh
    jmp exit
    
exit:
add dl,'0'
mov ah,02h
int 21h
ret    
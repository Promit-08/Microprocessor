org 100h

mov ah,01h
int 21h
sub al,'0'
mov [num1],al 

mov ah,01h
int 21h
sub al,'0'
mov [num2],al

mov al,[num1]  

cmp al,[num2] 
jg greater

mov dl,[num2]
add dl,'0'
mov ah,02h
int 21h
ret
        
greater:
    mov dl,[num1]
    add dl,'0'
    mov ah,02h
    int 21h
ret   

num1 db 0
num2 db 0
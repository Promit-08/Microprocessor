org 100h

mov cx,10
mov bx,0

start_loop:
    add bx,cx
    loop start_loop

mov al,bl
mov cl,10
div cl  
mov bh,ah

mov dl,al
add dl,"0"
mov ah,02h
int 21h 

mov dl,bh
add dl,"0"
mov ah,02h
int 21h

ret





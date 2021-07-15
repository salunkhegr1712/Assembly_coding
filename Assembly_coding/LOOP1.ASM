.model small
.data
.code
main proc

mov cx,10
mov dx,48
mov bx,48

l1:
    mov dx,0
    mov dx,bx

    mov ah,2
    int 21h
    

    mov dx,10
    mov ah,2
    int 21h
    
    mov dx,13
    mov ah,2
    int 21h

    inc bx


loop l1

mov ah,4ch
int 21h

main endp
end main

.model small
.data
.code
main PROC
    mov cx,10
    mov ax,1
    mov bx,0
    loop1:
    
    mov dx,ax
    add ax,bx
    mov bx,dx
    mov dx,ax
    loop loop1


    call exit
main ENDP
exit PROC
    mov ah,4CH
    int 21h
exit ENDP
end main
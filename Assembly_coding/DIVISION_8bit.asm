     
.model small
.stack 100h
.data
n1 db ?
n2 db ?
.code
main PROC
    mov ax,@data
    mov ds,ax
    mov ax,71
    mov bl,8
    div bl
    mov n1,al
    mov n2,ah
    mov dl,n1
    add dl,48
    mov ah,2
    int 21h

    mov dl,10
    mov ah,2
    int 21h
    mov dl,13
    mov ah,2
    int 21h

    mov dl,n2
    add dl,48
    mov ah,2
    int 21h   
    
    call exit

main ENDP
exit proc
    mov ah,4ch
    int 21h
exit ENDP
end main
.model small
.data 
ans db ?
.code
main proc
    mov ax,@data
    mov ds,ax

    mov al,3
    mov bl,al
    sub bl,1
    mov cl,bl
    l1:
    mul bl
    sub bl,1
    loop l1
    mov ans,al

    mov dl,offset ans
    mov ah,2
    int 21h
    call exit1
main endp
;description
exit1 PROC
    mov ah,4ch
    int 21h
exit1 ENDP
end main
    
    
    
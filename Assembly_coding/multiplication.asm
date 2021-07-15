.model small
.data 
.code
main proc
    mov al,5
    mov bl,4
    mul bl
    aam
    mov ch,ah
    mov cl,al
    add ch,48
    add cl,48
    mov dl,ch
    mov ah,2
    int 21h

    mov dl,cl
    mov ah,2
    int 21h
    

main endp
;description
exit1 PROC
    mov ah,4ch
    int 21h
exit1 ENDP
end main
    
    
    
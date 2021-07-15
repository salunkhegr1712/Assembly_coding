;code to add 2 numbers by inputing
.model small
.data
.code
main proc
    mov ah,01h
    int 21h
    mov bl,al 
    
    mov ah,01h
    int 21h
    mov cl,al
    
    add bl,cl  ;with addition of ascii value we get a very
               ;high number 
    
    sub bl,48  ;so that we substract 48 from add and we get solution
    
    mov dl,bl
    
    mov ah,02h
    int 21h
    
    mov ah,4ch
    int 21h
    
    main endp
end main
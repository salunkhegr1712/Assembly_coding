;code to sub 2 numbers by inputing
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
    
    sub bl,cl ;substracting the ascii value
    
    add bl,48 ;so for correction we add 48 to get original ascii value of answer
    
    mov dl,bl
    
    mov ah,02h
    int 21h
    
    mov ah,4ch
    int 21h
    
    main endp
end main
    
    
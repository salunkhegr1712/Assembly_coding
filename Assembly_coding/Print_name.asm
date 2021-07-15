;programme to print word with the help of the characters
; name GHANSHAM  
.model small
.data
.code
main proc
    mov dl,'G'; adding the name letter by letter
    mov ah,2  ;print character throught accumulator
    int 21h   ; exit from accumulator
    
    mov dl,'h'
    mov ah,2
    int 21h
    
    mov dl,'a'
    mov ah,2
    int 21h
    
    mov dl,'n'
    mov ah,2
    int 21h
    
    mov dl,'s'
    mov ah,2
    int 21h
    
    mov dl,'h'
    mov ah,2
    int 21h
    
    mov dl,'a'
    mov ah,2
    int 21h
    
    mov dl,'m'
    mov ah,2
    int 21h
    
    mov ah,4ch   ; at last exit fro the register
    int 21h                               

    main endp
end main
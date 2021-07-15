;a simple program to print a letter

.model small ; basic starting material
.data 
.code
main proc        ;starting procedure
    mov dl,'a'   ; adding alphabet a to dl

    mov ah,2     ; calling accumulator to run the code
    int 21h
    mov ah,4ch   ;stopping execution of accumulator
    int 21h
    main endp
end main




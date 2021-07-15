.model small ;create memory for programme in the ram
.data
.code
main proc   ;start procedure 
    
    mov bl,3       ;immediate addresing to add value to cl and bl
    mov cl,5
    
    add bl,cl      ;add bl and cl and store the data in bl
    
    mov dl,bl      ;mov data from bl to dl 
    
    add dl,48      ;to print the value first write ascii code of number which 
                   ;we can get by adding 48 in it
    
    mov ah,02h     ;accumulator to print value you also use only 2 or 02h doesn't matter allot
    int 21h
    
    mov ah,4ch     ;after printing giving controll back to program
    int 21h
    
    main endp      ;ending commands to end the programme
end main

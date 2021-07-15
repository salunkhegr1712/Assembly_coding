;programme to substract 2 numbers

.model small ;startup material for programme
.data
.code
main proc
    
    mov bl,9  ;immediate addressing of numbers to registers
    mov cl,4
    
    sub bl,cl ; opcode reg1,reg2
    ;here we do bl - cl and result will be stored in first register here in bl
    
    add bl,48  ;as we know that opcode gives ascii code as output
               ;as here just single digit is present ascii code of 0=48 , 1=49, 2=50
               ;so in ordeer to print a digit we have add 48 to it
    
    mov dl,bl  ;as operation done so move data from bl to al  
               ; in mov reg1(destination),reg2(source) 
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main
                                                       
                                                       
     
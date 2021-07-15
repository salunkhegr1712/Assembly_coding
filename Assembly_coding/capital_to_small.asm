;code to convert capital alphabet to smaller once
;ascii of A-Z are from 65 to 90
;ascii of a-z are from 97 to 122
;so a=97 while A=65
;so if we have to get a from A we have to add 32(97 -65) to ascii value of A

.model small
.data 
.code
main proc
    mov ah, 01h ;take input character BUT INPUT MUST BE CAPITAL LETTER
    int 21h
    
    mov dl,al ;move al to dl  
    
    add dl,32 ;main line to convert capital letter to smaller 
    
    mov ah,2  ;print output
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main
    
    
    
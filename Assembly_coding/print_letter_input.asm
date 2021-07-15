; print character, by taking input from user and print it
.model small
.data
.code  
;note that if you pass input to ah it stored in al

main proc   
    mov ah,1;take input and store in al
    int 21h
    
    mov dl,al ;move the data from al to dl  
    mov ah,2
    int 21h
    main endp
end main
    
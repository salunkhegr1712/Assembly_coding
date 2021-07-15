.model small
.data
.code
main proc
   
   mov bl,48
   k:
        mov ah,1
        int 21h
        inc bl
        cmp al,13
        je b
        loop k
   b:
        mov dl,bl
        mov ah,2
        int 21h 
        call exit1
main ENDP  
;description
exit1 PROC
    mov ah,4ch
    int 21h
    ret 
exit1 ENDP
end main
 
    
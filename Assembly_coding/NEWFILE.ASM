.model small
.data
.code
main proc
        mov ah,01h
        int 21h
        mov dl,al
;     mov dx,10    ; ascii value for space is 10
;     mov ah,02h
;     int 21h
    
;     mov dx,13    ; ascii value for new line is 13
;     mov ah,02h
;     int 21h 
        mov dl,10
        mov ah,02h
        int 21h

        mov dl,13
        mov ah,02h
        int 21h

        mov ah,02h
        int 21h
        mov ah,4ch
        int 21h
        main endp
end main

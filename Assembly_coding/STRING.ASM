.model small
.data
msg1 db 'hello$'
msg2 db 'world$'
.code
main proc
        mov ax,@data;inputing the data
        mov ds,ax
        mov dx,offset msg1
        mov ah,9
        int 21h
        mov dx,32
        mov ah,2
        int 21h
            
        mov dx,offset msg2
        mov ah,9
        int 21h

        mov ah,4ch
        int 21h

        main endp
end main

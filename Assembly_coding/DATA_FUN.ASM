.model small
.data
var1 db '1 $'
var2 db '2$'
.code
main proc
        mov ax,@data
        mov ds,ax

        mov dx,offset var1
        mov ah,9
        int 21h

        mov dx,offset var2
        mov ah,9
        int 21h
         
        mov ah,4ch
        int 21h
        main endp
end main

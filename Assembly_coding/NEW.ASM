.model small
.data
.code
main proc
mov ah,1
int 21h
mov bl,al
sub bl,32
mov dl,bl
mov ah,2
int 21h
mov ah,4ch
int 21h
main endp
end main

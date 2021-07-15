.model small
.stack 100h
.data
.code
main proc 


mov bx,'3'
mov cx,'4'


push bx
push cx
pop bx
pop cx

mov dx,bx
mov ah,2
int 21h

mov dx,10
mov ah,2
int 21h

mov dx,13
mov ah,2
int 21h

mov dx,cx
mov ah,2
int 21h

mov ah,4ch
int 21h

main endp

end main
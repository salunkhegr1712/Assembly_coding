;programme to print word with the help of the characters
; name GHANSHAM  
.model small
.stack 100h
.data
string db 'ghansham'
.code
main proc
mov ax,@data
mov ds,ax
mov si,offset string
mov cx,8
l1:
mov bx,[si]
push bx
inc si
loop l1
mov cx,8

l2:
pop dx
mov ah,2
int 21h
loop l2

mov ah,4ch
int 21h

main endp
end main
;the programme to create an string vis input and print it

.model small
.stack
.data 
var db 100 dup('$')  ;create an string of duplicates
var2 db "inputed word is ::$"
.code
main proc
mov cx,1
;include data member
mov ax,@data
mov ds,ax

mov si,offset var

li:
mov ah,1
int 21h

cmp al,13 ;enter in ascii is 13
je endl
mov [si],al
inc si
jmp li
endl:
mov dx,offset var2
mov ah,9 ;to print the string
int 21h

mov dx,32
mov ah,2
int 21h

mov dx,offset var
mov ah,9 ;to print the string
int 21h




mov ah,4ch
int 21h


main endp
end main

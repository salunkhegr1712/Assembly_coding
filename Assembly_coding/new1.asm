;the programme to create an string vis input and print it
print MACRO v
    mov dx,offset v
    mov ah,9 ;to print the string
    int 21h
ENDM
.model small
.stack 100h
.data 

str1 db 10 dup('dcsf$')
str2 db 10 dup('sacd$')
empty db 20 dup('$')

.code
main proc
;include data member
mov ax,@data
mov ds,ax
    print str1
    call enter1
    print str2
    mov si,offset str1
    mov cx,4

main endp
exit PROC
    mov ah,4ch
    int 21h
    ret 
exit ENDP
;description
enter1 PROC
    mov dx,10
    mov ah,2
    int 21h
    mov dx,13
    mov ah,2
    int 21h
    ret
enter1 ENDP
end main
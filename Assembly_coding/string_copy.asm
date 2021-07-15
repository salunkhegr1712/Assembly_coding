print MACRO v
    mov dx,offset v
    mov ah,9 ;to print the string
    int 21h
ENDM
.model small
.data
msg1 db 10,13,'the original string is:'
msg2 db 10,13,'the duplicate string is'
str1 db "ksalllds$"
str2 db 20 dup('$')
.code
main proc
    mov ax,@data
    mov ds,ax

    mov si,offset str1
    mov di,offset str2

    mov cx,8
    l1:
    mov al,[si]
    mov [di],al
    inc si
    inc di
    loop l1

    print str1
    call newline
    print str2
    call exit1
main ENDP  
;description
exit1 PROC
    mov ah,4ch
    int 21h
    ret
exit1 ENDP
;description
newline PROC
    mov dx,10
    mov ah,2
    int 21h
    mov dx,13
    mov ah,2
    int 21h
    ret
newline ENDP
end main
 
    
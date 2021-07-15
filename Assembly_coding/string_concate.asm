;the programme to create an string vis input and print it
print MACRO v
    mov dx,offset v
    mov ah,9 ;to print the string
    int 21h
ENDM
.model small
.stack 100h
.data 
msg1 db 10,13,"enter 1st word::$"
msg2 db 10,13,"enter 2nd word::$"
msg3 db 10,13,"CONCATATNATION is::$"

str1 db 10 dup('$')
str2 db 10 dup('$')
empty db 20 dup('$')

.code
main proc
;include data member
mov ax,@data
mov ds,ax
    mov si,offset str1
    mov di,offset str2
    mov cx,0
    li:
    
        mov ah,1
        int 21h
        inc cx
        cmp al,13 ;enter in ascii is 13
        je endl
        mov [si],al
        inc si
        jmp li
    endl:
        print msg1
        print str1
        jmp b1
    b1:
        mov si,offset str1
        jmp b2
    b2:
        call enter1
        mov bx,[si]
        cmp bx,36
        je l2
        push bx
        inc si
        jmp b2
    l2:
        jmp lj
    lj:
        mov ah,1
        int 21h
        inc cx
        cmp al,13 ;enter in ascii is 13
        je endk
        mov [di],al
        inc di
        jmp lj
    endk:
        print msg2
        print str2
        jmp lm

    lm:
        mov si,offset empty
        pop bx
        mov si,bx
        cmp cx,0
        je lh
        loop lm
    lh:
        print empty
        call exit    


main endp

;description

exit PROC
    mov ah,4ch
    int 21h
    ret 
exit ENDP
;description
enter1 PROC
    mov dx,13
        mov ah,2
        int 21h
    ret
enter1 ENDP
end main
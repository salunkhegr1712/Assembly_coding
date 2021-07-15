print MACRO v
    mov dx,offset v
    mov ah,9 ;to print the string
    int 21h
ENDM     
.model small
.data
str1 db 'hello'
str2 db 'hello'
ans1 db 10,13,"the given strings are not same$"
ans2 db 10,13,"the given strings are same$"
.code
main proc
    mov ax,@data
    mov ds,ax
    mov si,offset str1
    mov di,offset str2
    mov cx,5
    l1:
    mov al,[si]
    mov bl,[di]
    cmp al,bl
    jnz not_same
    inc si
    inc di
    loop l1
        
    print ans2
    call exit1
    not_same:
    print ans1
    call exit1
main endp

;description
exit1 PROC
    mov ah,4ch
    int 21h
exit1 ENDP
end main   
    
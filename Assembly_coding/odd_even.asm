print MACRO v
    mov dx,offset v
    mov ah,9 ;to print the string
    int 21h
ENDM     
.model small
.stack 100h
.data
msg1 db 10,13,'enter number:$'
msg2 db 10,13,'number is even:$'
msg3 db 10,13,'number is odd$'
.code
main PROC
    mov ax,@data
    mov ds,ax
    print msg1
    input:
        mov ah,1
        int 21h
        cmp al,13
        je c2
        jmp input
    c2:    
    mov bl,2
    div bl
    cmp ah,0
    je even1
    print msg3
    call exit
    even1:
    print msg2
    call exit 

main ENDP
exit proc
    mov ah,4ch
    int 21h
    ret
exit ENDP
end main
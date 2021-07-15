print MACRO v
    mov dx,v
    mov ah,2 ;to print the string
    int 21h
ENDM     
.model small
.data
num dw 0000h
num2 dw ?
num3 dw ?
.code
main proc
    mov ax,@data
    mov ds,ax

    mov ax,num
    not ax   ;neg find our 2's complement of number
    mov num2,ax
    inc ax
    mov num3,ax;2s complement
    call exit1
    main endp

;description
exit1 PROC
    mov ah,4ch
    int 21h
exit1 ENDP
end main   
    
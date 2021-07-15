
.model small
.stack 100h
.data
array db 6,1,2,4,5
.code
main PROC
    mov ax,@data
    mov ds,ax

    mov si,offset array
    mov cx,5
    mov bl,[si]

    loop1:
    cmp [si],bl
    jge big
    increament:
    inc si
    loop loop1
    add bl,48
    mov dl,bl
    mov ah,2
    int 21h
    call exit
    big:
    mov bl,[si]
    jmp increament

main ENDP
exit PROC
    mov ah,4ch
    int 21h
    ret
exit ENDP
end main
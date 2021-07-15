.model small
.data 
array db 4,5,7,2
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ch,4
    outerloop:
    mov si,offset array
    mov cl,4
    compare_loop:
    mov al,array[si]
    mov bl,array[si+1]
    cmp al,bl
    jc noswap
    mov array[si],bl
    mov array[si+1],al
    noswap:
    inc si
    dec cl
    jnz compare_loop
    dec ch
    jnz outerloop
    call exit1

main endp
;description
exit1 PROC
    mov ah,4ch
    int 21h
exit1 ENDP
end main
    
    
    
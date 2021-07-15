print MACRO par  
    mov dx,offset par
    mov ah,9
    int 21h
ENDM
input  MACRO l1
    mov ah,1
    int 21h
    mov l1,al
ENDM

.model small
.stack 100h
.data
msg1 db 10,13,'enter number 1::$'
msg2 db 10,13,'enter number 2::$'
msg3 db 10,13,'enter number 3::$';10,13 is for new line
msg4 db 10,13,'BIGGEST NUMBER IS::$'

ans1 db 10,13,'first number is maximum$'
ans2 db 10,13,'second number is maximum$'
ans3 db 10,13,'third number is maximum$'
num1 db ?;we are not declaring value so we use question mark
num2 db ?
num3 db ?
.code
main PROC
    mov ax,@data
    mov ds,ax
;first input
    print msg1
    input num1
    
;second input
    print msg2
    input num2
;third input
    print msg3
    input num3

    mov bl,num1
    cmp bl,num2
    jge first

    mov bl,num2
    cmp bl,num3
    jge second
    jmp third

first:
    CMP BL,num3
    JGE first1
    jmp third 
first1:
    print ans1
    call exit
second:
    mov bl,num2
    cmp bl,num1
    jge second1
    jmp first1

second1:
    print ans2
    call exit
    
third:
    print ans3
   
    call exit
main ENDP

exit PROC
    mov ah,4ch
    int 21h
    ret
exit ENDP
end main
.model small
.stack 100h
.data
msg1 db 'the biggest no is:: $'
var1 db 4
var2 db 6
var3 db 1
;one extra variable to store largest number
max db ?

.code
main PROC
;including the data from the data segment
mov ax,@data
mov ds,ax

mov bl,var1
mov max,bl

cmp bl,var2
jg node1
mov max,offset var2

cmp max,var3
jg node2

mov max,var3
cmp max,var3
je node2
node1:
cmp max,var3
jg node2

node2:

mov dx,offset msg1
mov ah,9
int 21h
mov dx, max
mov ah,2
int 21h
mov ah,4ch
int 21h

main ENDP
end main
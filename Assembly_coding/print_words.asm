; a programme to print the two word in two lines
.model small
.data
msg1 db 'Hello$';declaring the variables and here we write the string and string must be in 
msg2 db 'World$';singl quotes and we have end with dollar sign($)
.code
main proc
    mov ax,@data   ;give address of data so that we can access the variables 
                   ; inside the data 
    
    mov ds,ax    ;generate a heap for easy to navigate the the variables
                     
    mov dx,offset msg1 ;here we use the offset code to navigate variables 
                       ;inside the data
    
    mov ah,09h   ;for printing the whole string we have to use o9h code
    int 21h   
  ;#  
    mov dx,10    ; ascii value for space is 10
    mov ah,02h
    int 21h
    
    mov dx,13    ; ascii value for new line is 13
    mov ah,02h
    int 21h  
   ;#this is code for adding text to new line 
   
    mov dx,offset msg2 ;here we use the offset code to navigate variables 
                       ;inside the data
    
    mov ah,09h   ;for printing the whole string we have to use o9h code
    int 21h   
    
    mov ah,4ch    ;stp[ accumulator
    int 21h
    
    
    main endp
end main
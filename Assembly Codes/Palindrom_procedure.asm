
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.code

mov ax,len
mov bx,2
div bx
lea si,str
lea di,str
add di,len-1  
mov cx,ax
                                      ; palindrom check using procedure 


call palindrom    
ret
                                           
                                      ;if var remain 1 that means its a palindrom
palindrom proc near
                                      ;var become 0 means its not.
level:

mov bl,[di]
cmp [si],bl
je here

mov var,0
ret

here:
inc si
dec di

loop level
ret  
palindrom endp  


.data

str db 'madam'
len equ ($-str)
var db 1
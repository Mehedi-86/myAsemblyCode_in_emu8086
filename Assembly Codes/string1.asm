
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.code
lea si,var
lea di,var2

mov cl,len

here:
mov al,[si]
mov ah,[di]
cmp al,ah
je compare
 here2:
inc si
loop here



 
 ret

         
        
 compare:
 mov [si],' '
 
 inc di
 
 jmp here2
 

; add your code here

ret  

.data
       
var db 'we love kuet'

len equ ($-var)

var2 db 'evut'

len2 equ ($-var2)




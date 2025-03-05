
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.code

lea si,var
lea di,var2

mov cl,len

mov dl,2
mov dh,0

here:
cmp dh,2 

je compare

inc si
inc dh

loop here 





ret  

compare:

mov dl,cl
mov cl,len2

here2:

mov al,[si]
mov ah,[di]
mov [si],ah
mov [di],al
inc si
inc di

loop here2
hlt



 .data
 
 var db 'wekuet'
 len equ ($-var)
 
 
 arr db 2
 
 var2 db 'love'
 len2 equ ($-1)


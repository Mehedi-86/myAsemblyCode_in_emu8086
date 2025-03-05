
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov al,2

call  adding


mov al,9
ret


adding proc near
    
    inc al
    inc al
    inc al
    
adding endp    
    

ret





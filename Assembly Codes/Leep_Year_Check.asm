
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.code
mov ax, year      ; Load the year into AX

mov dx, 0
mov cx, 4
div cx            ; AX / 4 ? Quotient in AX, remainder in DX
cmp dx, 0         ; If remainder is 0, year is divisible by 4
jne not_leap      ; If remainder ? 0, not a leap year

mov ax, year
mov dx, 0
mov cx, 100
div cx            ; AX / 100 ? Check divisibility by 100
cmp dx, 0
jne leap_year     ; If remainder ? 0, it's a leap year

mov ax, year
mov dx, 0
mov cx, 400
div cx            ; AX / 400 ? Check divisibility by 400
cmp dx, 0
je leap_year      ; If remainder = 0, it's a leap year

not_leap:
mov dx, offset msg_not_leap  ; Load "Not a Leap Year" message
jmp print_msg

leap_year:
mov dx, offset msg_leap       ; Load "Leap Year" message

print_msg:
mov ah, 09h                   ; DOS print string function
int 21h                       ; Print message

mov ah, 4Ch                   ; Exit program
int 21h

.data
year dw 2024                  ; Change this value to test

msg_leap db 'Leap Year!$'      ; Message for leap year
msg_not_leap db 'Not a Leap Year!$'  ; Message for non-leap year




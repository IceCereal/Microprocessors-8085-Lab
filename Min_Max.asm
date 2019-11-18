
; A Program to find the Minimum and Maximum of a list of Numbers

jmp start

start: nop

MVI A, 00H 

LXI H, 2502H ; "Array" begins here
MOV A, M

STA 2500H ; MINIMUM
STA 2501H ; MAXIMUM

MOV B, A ; Minimum
MOV C, A ; Maximum

MVI D, 9 ; Length of the "Array" [Counter]

loop: MOV A, M

; Minimum
CMP B
JNC Max_Chk

MOV B, A ; Replace Minimum

; Maximum
Max_Chk: CMP C
JC Loop_End

MOV C, A ; Replace Maximum

Loop_End: INX H
DCR D
JNZ loop

MOV A, B
STA 2500H

MOV A, C
STA 2501H

hlt
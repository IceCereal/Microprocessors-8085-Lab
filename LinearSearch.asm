; Linear Search

jmp start

start: nop
MVI A, 00H
STA 2500H ; Found-or-Not location
LDA 2501H ; Number to look for

MOV B, A

LXI H, 2502H ; "Array" begins from here
MVI D, 10 ; Length of the "Array" [This is the Counter]

loop: MOV A, M
CMP B
JNZ loop_continue

MVI A, 01H ; Found!
STA 2500H 

loop_continue: INX H
DCR D ; Decrement Counter
JNZ loop

hlt
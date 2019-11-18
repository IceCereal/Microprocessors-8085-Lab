; Even or Odd

jmp start

start: nop

MVI C, 00H ; Quotient set to 0
LDA 2500H ; Load our test subject from 2500H

CALL divide

HLT

; This repeatedly subtracts 2 from A and stops when A = 0/1
divide: MVI B, 02H

loop: CMP B ; Compare A with B (2)

JC finish_divide ; Jump if A < 2 to

SUB B ; Subtract 2 from A
INR C ; Increment our Quotient
JMP loop

finish_divide: STA 2501H ; Store Remainder in 2501H
MOV A, C
STA 2502H ; Store Quotient in 2502H
RET
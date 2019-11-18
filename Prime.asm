; Detect whether a number is prime or not
; Number at 2500H
; Result (0/1) at 2501H

jmp start

start: nop

MVI A, 00H
MVI C, 00H ; Number of Divisors
STA 2501H ; Our Result. Defaults: 0
LDA 2500H ; Number exists here

MOV E, A ; Iterator
MOV B, A ; Perma Copy

prime_loop: MOV D, E ; D is the current divisor

call divisor_check ; Checks whether D divides B

DCR E
JNZ prime_loop

MOV A, C

CPI 02H ; Compare Counter = 2?
JZ prime_end 
hlt

prime_end: MVI A, 01H
STA 2501H ; Store 1 at 2501H
hlt

; check [B % D = 0]
divisor_check: MOV A, B

divide_loop: CMP D
JC loop_end
SUB D
JMP divide_loop

loop_end: CPI 0H ; Check whatever's left = 0?
JNZ end
INR C ; This is a divisor; increment our counter

end: ret
; One's & Two's Complement

jmp start

start: nop

LDA 2500H

; One's Complement
CMA

STA 2501H ; Store Result of One's Complement

; Two's Complement
MVI C, 0 ; Set Carry to 0
ADI 01 ; Add 1 to A'

JNC pass

INR C ; Increment Carry

pass: STA 2502H ; Store Result of Two's Complement

MOV A, C ; Move Carry to Accumulator

STA 2503H ; Store Carry

hlt
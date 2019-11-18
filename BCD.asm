
; BCD Addition of Two Numbers

jmp start

start: nop

MVI C, 00H ; Our Carry

LHLD 2500H ; Load 2500H, 2501H to L-H respectively

MOV A, L
ADD H

DAA ; Decimal Adjust Accumulator = If sum > 9, add 6

JNC pass

INR C ; Increment Carry

pass: STA 2502H ; Store Sum in 2502H

MOV A, C ; Move Carry to Accumulator

STA 2503H ; Store Carry in 2503H

hlt
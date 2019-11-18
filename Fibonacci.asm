; Fibonnaci Series

jmp start

start: nop
LDA 2500H ; Counter
LXI H, 2501H; Storage begins from here

MOV D, A ; Move Counter from A to C

MVI B, 00H ; Init B to 0
MVI C, 01H ; Init C to 1

MOV M, B ; Move B to M (location)

INX H ; Increment H-L

MOV M, C ; Move C to M (location)

loop: MOV A, B
ADD C ; Add C to Accumulator

MOV B, C ; Move C to B
MOV C, A ; Move Accumulator to C

INX H ; Increment H (For location)

MOV M, A ; Move Accumulator to M (location)

DCR D ; Decrement Counter
JNZ loop ; Start loop again

hlt
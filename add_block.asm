; Initialize the program
ORG 0000H    ; Start address of the program

; Define variables
DATA_START  EQU 30H    ; Start address of the data block
DATA_END    EQU 3FH    ; End address of the data block
SUM         EQU 40H    ; Define a variable for sum at address 40H

; Main program
START:
    MVI C, DATA_START   ; Initialize C register with start address of data block
    MVI A, 00H          ; Clear accumulator (initialize sum to 0)
    
    ; Loop to add data block
    ADD_LOOP:
        MOV B, A        ; Move accumulator to B register (for sum accumulation)
        MOV A, M        ; Move data from memory location pointed by C to accumulator
        ADD B           ; Add data to accumulator
        MOV A, C        ; Move C to next memory location
        INX H           Accumulator Register Lore High

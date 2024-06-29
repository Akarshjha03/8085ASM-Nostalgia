; Initialize the program
ORG 0000H    ; Start address of the program

; Define variables
NUM1    EQU 30H    ; Define variable for first number at address 30H
NUM2    EQU 31H    ; Define variable for second number at address 31H
MAX     EQU 32H    ; Define variable for maximum at address 32H

; Main program
START:
    MVI A, 05H        ; Example: Load first number (NUM1) into accumulator (example: 05H)
    MOV B, A          ; Move NUM1 to B register
    
    MVI A, 03H        ; Example: Load second number (NUM2) into accumulator (example: 03H)
    
    CMP B             ; Compare NUM1 (B) with NUM2 (A)
    JC LARGER         ; Jump if NUM1 is less than NUM2
    
    MOV C, B          ; Move NUM1 to C (NUM1 is larger or equal)
    JMP CONTINUE      ; Jump to CONTINUE
    
LARGER:
    MOV C, A          ; Move NUM2 to C (NUM2 is larger)
    
CONTINUE:
    MOV MAX, C        ; Store the maximum value in MAX
    
    HLT               ; Halt the program execution

    END               ; End of the program

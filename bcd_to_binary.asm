; Initialize the program
ORG 0000H    ; Start address of the program

; Define variables
BCD_NUM     EQU 30H    ; Define variable for BCD number at address 30H
BINARY_NUM  EQU 31H    ; Define variable for binary result at address 31H

; Main program
START:
    MOV A, M         ; Load BCD number from memory into accumulator
    ANI 0FH          ; Mask lower nibble to get units digit
    MOV B, A         ; Move units digit to B register
    
    MOV A, M         ; Load BCD number from memory again
    ANI F0H          ; Mask upper nibble to get tens digit
    RRC              ; Rotate right to align tens digit to LSB
    RRC              ; Rotate right again to place tens digit in LSB position
    ADD B            ; Add units digit (in B) to accumulator
    
    MOV M, A         ; Store binary result in memory
    
    HLT               ; Halt the program execution

    END               ; End of the program

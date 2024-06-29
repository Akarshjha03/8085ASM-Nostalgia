; Initialize the program
ORG 0000H    ; Start address of the program

; Define variables
BINARY_NUM  EQU 30H    ; Define variable for binary number at address 30H
ASCII_NUM   EQU 31H    ; Define variable for ASCII result at address 31H

; Main program
START:
    MOV A, M         ; Load binary number from memory into accumulator
    
    MVI B, 00H       ; Initialize B register to 0 (for storing ASCII result)
    
    ; Convert tens digit to ASCII
    MOV C, A         ; Move binary number to C register
    ANI 0FH          ; Mask lower nibble to get units digit
    ADD 30H          ; Convert units digit to ASCII character ('0' to '9')
    MOV ASCII_NUM, A ; Store tens digit ASCII in ASCII_NUM
    
    ; Convert units digit to ASCII
    MOV A, C         ; Reload binary number from C register
    ANI 0FH          ; Mask lower nibble to get units digit
    ADD 30H          ; Convert units digit to ASCII character ('0' to '9')
    MOV ASCII_NUM+1, A ; Store units digit ASCII in ASCII_NUM+1
    
    HLT               ; Halt the program execution

    END               ; End of the program

; Initialize the program
ORG 0000H    ; Start address of the program

; Define variables
BINARY_NUM  EQU 30H    ; Define variable for binary number at address 30H
BCD_RESULT  EQU 31H    ; Define variable for BCD result at address 31H

; Main program
START:
    MOV A, M         ; Load binary number from memory into accumulator
    
    MVI B, 00H       ; Initialize B register to 0 (for storing BCD result)
    
    ; Convert tens digit to BCD
    MOV C, A         ; Move binary number to C register
    ANI 0FH          ; Mask lower nibble to get units digit
    CPI 0AH          ; Compare with 10
    JC SKIP_TENS     ; Jump if units digit is less than 10
    ADI 06H          ; Adjust if necessary (add 6 to tens digit)
SKIP_TENS:
    MOV BCD_RESULT, A ; Store tens digit in BCD_RESULT
    
    ; Convert units digit to BCD
    MOV A, C         ; Reload binary number from C register
    ANI 0FH          ; Mask lower nibble to get units digit
    CPI 0AH          ; Compare with 10
    JC SKIP_UNITS    ; Jump if units digit is less than 10
    ADI 06H          ; Adjust if necessary (add 6 to units digit)
SKIP_UNITS:
    MOV BCD_RESULT+1, A ; Store units digit in BCD_RESULT+1
    
    HLT               ; Halt the program execution

    END               ; End of the program

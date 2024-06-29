;Adding 2 eight bit numbers
; Initialize the program
ORG 0000H    ; Start address of the program

; Define variables
NUM1    EQU 30H    ; Define a variable NUM1 at address 30H
NUM2    EQU 31H    ; Define a variable NUM2 at address 31H
SUM     EQU 32H    ; Define a variable SUM at address 32H

; Main program
START:
    MVI A, 05H    ; Load the first number into register A (example: 05H)
    MOV B, A      ; Move the contents of A to B (NUM1 = 05H)
    
    MVI A, 0AH    ; Load the second number into register A (example: 0AH)
    MOV C, A      ; Move the contents of A to C (NUM2 = 0AH)
    
    ADD B         ; Add contents of B (NUM1) to A (accumulator)
    MOV D, A      ; Move the sum from A to D (store result temporarily)
    
    MOV A, C      ; Move the contents of C (NUM2) to A
    ADD D         ; Add contents of D (previous sum) to A
    
    MOV E, A      ; Move the final sum from A to E (SUM = NUM1 + NUM2)
    
    HLT           ; Halt the program execution

    END           ; End of the program

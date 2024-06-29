;Subtracting 2 eight bit numbers
; Initialize the program
ORG 0000H    ; Start address of the program

; Define variables
MINUEND   EQU 30H    ; Define a variable MINUEND at address 30H
SUBTRAHEND EQU 31H    ; Define a variable SUBTRAHEND at address 31H
DIFFERENCE EQU 32H    ; Define a variable DIFFERENCE at address 32H

; Main program
START:
    MVI A, 0AH        ; Load the first number (minuend) into register A (example: 0AH)
    MOV B, A          ; Move the contents of A to B (MINUEND = 0AH)
    
    MVI A, 05H        ; Load the second number (subtrahend) into register A (example: 05H)
    MOV C, A          ; Move the contents of A to C (SUBTRAHEND = 05H)
    
    SUB C             ; Subtract contents of C (subtrahend) from A (accumulator)
    MOV D, A          ; Move the difference from A to D (store result temporarily)
    
    MOV A, B          ; Move the contents of B (minuend) back into A
    MOV E, A          ; Move the minuend from A to E (store it as DIFFERENCE = MINUEND - SUBTRAHEND)
    
    HLT               ; Halt the program execution

    END               ; End of the program

; Initialize the program
ORG 0000H    ; Start address of the program

; Define variables
ASCII_NUM   EQU 30H    ; Define variable for ASCII number at address 30H
BINARY_NUM  EQU 31H    ; Define variable for binary result at address 31H

; Main program
START:
    MOV A, ASCII_NUM   ; Load ASCII number from memory into accumulator
    
    ; Convert tens digit from ASCII to binary
    SUB 30H            ; Subtract '0' (30H) from ASCII character to get numeric value
    MOV B, A           ; Store tens digit in B register
    
    INX H               ; Increment memory.
  executed

;Multiplying 2 eight bit numbers
; Initialize the program
ORG 0000H    ; Start address of the program

; Define variables
MULTIPLICAND EQU 30H    ; Define a variable MULTIPLICAND at address 30H
MULTIPLIER   EQU 31H    ; Define a variable MULTIPLIER at address 31H
PRODUCT_L    EQU 32H    ; Define low byte of PRODUCT at address 32H
PRODUCT_H    EQU 33H    ; Define high byte of PRODUCT at address 33H

; Main program
START:
    MVI A, 00H        ; Clear accumulator
    MOV B, A          ; Clear B register (used for looping)
    MOV C, A          ; Clear C register (used for looping)
    
    ; Load MULTIPLICAND (A) and MULTIPLIER (B)
    MVI A, 05H        ; Example: Load MULTIPLICAND (A) with 05H
    MVI B, 03H        ; Example: Load MULTIPLIER (B) with 03H
    
    ; Initialize PRODUCT to 0
    MVI C, 00H        ; Clear C register for low byte of PRODUCT
    MVI D, 00H        ; Clear D register for high byte of PRODUCT
    
    ; Loop to perform multiplication (B * A)
    LOOP:
        ADD C          ; Add MULTIPLICAND (A) to accumulator
        JNC NO_OVER    ; Jump if no overflow (carry flag not set)
        INR D          ; Increment high byte of PRODUCT if carry occurred
    NO_OVER:
        DCR B          ; Decrement MULTIPLIER
        JNZ LOOP       ; Jump back to LOOP if MULTIPLIER is not zero
    
    ; Store the result (16-bit PRODUCT) in memory
    MOV PRODUCT_L, A  ; Store low byte of PRODUCT
    MOV PRODUCT_H, D  ; Store high byte of PRODUCT
    
    HLT               ; Halt the program execution

    END               ; End of the program

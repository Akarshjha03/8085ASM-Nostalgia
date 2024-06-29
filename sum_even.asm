; Initialize the program
ORG 0000H    ; Start address of the program

; Define constants
ARRAY_START EQU 30H    ; Start address of the array
ARRAY_END   EQU 3FH    ; End address of the array (assuming an array of 16 elements)
SIZE        EQU 10H    ; Number of elements in the array (16 elements)

; Main program
START:
    MVI C, SIZE       ; Initialize C register with the size of the array
    MVI B, 00H        ; Initialize B register to store the sum of even numbers
    MVI D, ARRAY_START ; Initialize D register with the start address of the array
    
    ; Loop through the array
    LOOP:
        MOV A, M     ; Load current element of the array into accumulator
        ANI 01H      ; Mask the LSB to check if the number is even
        JZ ADD_NUM   ; Jump to ADD_NUM if LSB is 0 (number is even)
        JMP CONTINUE ; Jump to CONTINUE if number is odd
        
    ADD_NUM:
        ADD B        ; Add current number (even) to sum in B register
    
    CONTINUE:
        INX H        

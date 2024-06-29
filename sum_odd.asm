; Initialize the program
ORG 0000H    ; Start address of the program

; Define constants
ARRAY_START EQU 30H    ; Start address of the array
ARRAY_END   EQU 3FH    ; End address of the array (assuming an array of 16 elements)
SIZE        EQU 10H    ; Number of elements in the array (16 elements)

; Main program
START:
    MVI C, SIZE       ; Initialize C register with the size of the array
    MVI B, 00H        ; Initialize B register to store the sum of odd numbers
    MVI D, ARRAY_START ; Initialize D register with the start address of the array
    
    ; Loop through the array
    LOOP:
        MOV A, M     ; Load current element of the array into accumulator
        ANI 01H      ; Mask the LSB to check if the number is odd
        JNZ ADD_NUM  ; Jump to ADD_NUM if LSB is 1 (number is odd)
        JMP CONTINUE ; Jump to CONTINUE if number is even
        
    ADD_NUM:
        ADD B        ; Add current number (odd) to sum in B register
    
    CONTINUE:
        INX H         ; Increment memory pointer
        DCR C         ; Decrement the counter
        
        JNZ LOOP      ; Jump to LOOP if C is not zero (more elements to process)
    
    ; Store the result in memory
    MOV M, B         ; Store the sum of odd numbers in memory
    
    HLT               ; Halt the program execution

    END               ; End of the program

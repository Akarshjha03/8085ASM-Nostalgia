; Initialize the program
ORG 0000H    ; Start address of the program

; Define constants
ARRAY_START EQU 30H    ; Start address of the array
ARRAY_END   EQU 3FH    ; End address of the array (assuming an array of 16 elements)
SIZE        EQU 10H    ; Number of elements in the array (16 elements)

; Main program
START:
    MVI C, SIZE       ; Initialize C register with the size of the array
    
    ; Outer loop for passes
    OUTER_LOOP:
        MOV A, C       ; Move the counter (size) to accumulator
        DCX A          ; Decrement the counter
        JZ END_SORT    ; Jump to END_SORT if the counter is zero
        
        ; Inner loop for comparisons and swaps
        INNER_LOOP:
            MOV B, A   ; Move the counter to B register
            DCR B      ; Decrement the counter
            
            MOV H, M   ; Load the current element (H)
            INX H      ; Incrementer the counter
            
            MOV L, M   ; Loading

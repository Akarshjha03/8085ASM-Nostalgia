;Ading 2 sixteen bit number
; Initialize the program
ORG 0000H    ; Start address of the program

; Define variables
NUM1_L   EQU 30H    ; Define low byte of NUM1 at address 30H
NUM1_H   EQU 31H    ; Define high byte of NUM1 at address 31H
NUM2_L   EQU 32H    ; Define low byte of NUM2 at address 32H
NUM2_H   EQU 33H    ; Define high byte of NUM2 at address 33H
SUM_L    EQU 34H    ; Define low byte of SUM at address 34H
SUM_H    EQU 35H    ; Define high byte of SUM at address 35H

; Main program
START:
    ; Load NUM1 (16-bit number) into registers B and C
    MVI B, 00H      ; Load high byte of NUM1 (example: 00H)
    MVI C, 0AH      ; Load low byte of NUM1 (example: 0AH)
    
    ; Load NUM2 (16-bit number) into registers D and E
    MVI D, 01H      ; Load high byte of NUM2 (example: 01H)
    MVI E, 05H      ; Load low byte of NUM2 (example: 05H)
    
    ; Add low bytes first
    MOV A, C        ; Move low byte of NUM1 (C) to accumulator
    ADD E           ; Add low byte of NUM2 (E) to accumulator
    MOV SUM_L, A    ; Move result (low byte of SUM) to memory location
    
    ; Check carry
    MOV A, 00H      ; Clear accumulator
    MOV B, 00H      ; Clear B register
    MOV C, 00H      ; Clear C register
    MOV A, day

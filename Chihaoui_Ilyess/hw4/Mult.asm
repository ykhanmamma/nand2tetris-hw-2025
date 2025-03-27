// Mult.asm - Repetitive addition (inefficient way to multiply two numbers)

// Input: 
//  R0 = first number (multiplicand)
//  R1 = second number (multiplier)
// Output: 
//  R2 = result (multiplication of R0 and R1)

// Initialize the result to 0
@R2
M=0

// Check if the multiplier (R1) is zero
@R1
D=M
@END
D;JEQ   // If R1 is zero, skip the loop

// Start of the loop
(LOOP)
    // Add the multiplicand (R0) to the result (R2)
    @R0
    D=M
    @R2
    M=D+M

    // Decrement the multiplier (R1)
    @R1
    D=M
    @LOOP
    D=D-1
    M=D
    @R1
    D=M
    @LOOP
    D;JNE

(END)
    // End of the program
    @END
    0;JMP
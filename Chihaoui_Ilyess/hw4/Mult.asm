// Mult.asm - Repetitive Addition (Simple and Inefficient)

// Inputs: 
//  R0 = multiplicand (first number)
//  R1 = multiplier (second number)

// Output:
//  R2 = result of multiplication (multiplicand * multiplier)

(LOOP)
    // Check if multiplier is zero, if so, end the loop
    D=M
    @END
    D;JEQ

    // Add multiplicand (R0) to the result (R2)
    @R0
    D=M
    @R2
    M=D+M

    // Decrement multiplier (R1) by 1
    @R1
    M=M-1

    // Repeat the loop
    @LOOP
    0;JMP

(END)
    // End of program
    @END
    0;JMP
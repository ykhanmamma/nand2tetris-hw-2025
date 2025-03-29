// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.

//// Replace this comment with your code.
// Initialize R2 to 0 (this will store the result)
@R2
M=0

// Load R0 (first number) into D
@R0
D=M
@END
D;JEQ       // If R0 is 0, jump to END (result is already 0)

// Load R1 (second number) into counter
@R1
D=M
@END
D;JEQ       // If R1 is 0, jump to END (result is already 0)
@COUNTER
M=D         // COUNTER = R1 (number of times to add)

// Loop to add R0 to R2, R1 times
(LOOP)
    @R0
    D=M
    @R2
    M=M+D     // R2 = R2 + R0

    // Decrement counter
    @COUNTER
    M=M-1
    D=M
    @LOOP
    D;JGT     // If COUNTER > 0, repeat

// End the program
(END)
@END
0;JMP        // Infinite loop to stop execution

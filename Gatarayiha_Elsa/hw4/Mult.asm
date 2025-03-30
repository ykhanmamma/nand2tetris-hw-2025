// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.

//// Replace this comment with your code.
@ i 
M = 1
@ 2 
M = 0
(LOOP)
@ i //selects i
D = M
@ 1  
D = D - A //setting limits
@ END
D; JGT   //if (i-RAM[1] > 0) goto END
@ 0    //select value in RAM[0]
D = M
@ 2
M = D + M   //stores the value of RAM[0] to itself
@ i
M = M + 1  //increase the iteration
@LOOP
0; JMP //repeats the LOOP
(END)
@ END
0;JMP

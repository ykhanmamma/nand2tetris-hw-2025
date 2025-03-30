// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.

//// Replace this comment with your code.

@0
D=M        
@i
M=D       

@1
D=M        
@sum
M=0        

(LOOP)
@i
D=M
@END
D;JEQ      

@1
D=M    
@sum
M=D+M      

@i
M=M-1      

@LOOP
0;JMP

(END)
@sum
D=M
@2
M=D        

(ENDLOOP)
@ENDLOOP
0;JMP

@R0
D=M
@result
M=0
@R1
D=M
@LOOP
D;JEQ

(LOOP)
    @R0
    D=M
    @result
    M=M+D
    @R1
    MD=M-1
    @LOOP
    D;JGT

(END)
    @result
    D=M
    @R2
    M=D
    @END
    0;JMP
    @2
    M=0
    @0
    D=M
    @END
    D;JEQ
    @counter
    M=D

(LOOP)
    @1
    D=M
    @2
    M=M+D
    @counter
    M=M-1
    D=M
    @LOOP
    D;JGT

(END)
    @END
    0;JMP

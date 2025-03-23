@0
D=M
@2
M=0
(Loop)
@1
D=M
@END
D;JEQ

@1
M=M-1

@0
D=M
@2
M=D+M

@1
D=M
@LOOP
D;JGT

@END
(END)
0;JMP
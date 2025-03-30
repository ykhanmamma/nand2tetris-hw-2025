    @SCREEN
    D=A
    @address
    M=D
    @KBD
    D=A
    @endAddress
    M=D

(LOOP)
    @0
    D=M
    @FILL
    D;JNE
    @CLEAR

(CLEAR)
    D=0
    @WRITE
    0;JMP

(FILL)
    D=-1

(WRITE)
    @address
    A=M
    M=D
    @address
    M=M+1
    D=M
    @endAddress
    D=D-M
    @LOOP
    D;JLT


(END)
    @END
    0;JMP

@FLAG
M=0

@SCREEN
D=A
@arr
M=D

@8192
D=A
@n
M=D

@i
M=0

(LOOP)
    @KBD
    D=M
    @BLACK
    D;JNE
    @WHITE
    D;JEQ

    @LOOP
    0;JMP

(BLACK)
    @FLAG
    D=M-1
    @LOOP
    D;JEQ
    @FLAG
    M=1
    @i
    M=0
    (SETBLACKLOOP)
        @i
        D=M
        @n
        D=D-M
        @LOOP
        D;JEQ
        @arr
        D=M
        @i
        A=D+M
        M=-1
        @i
        M=M+1
        @SETBLACKLOOP
        0;JMP

(WHITE)
    @FLAG
    D=M
    @LOOP
    D;JEQ
    @FLAG
    M=0
    @i
    M=0
    (SETWHITELOOP)
        @i
        D=M
        @n
        D=D-M
        @LOOP
        D;JEQ
        @arr
        D=M
        @i
        A=D+M
        M=0

        @i
        M=M+1
        @SETWHITELOOP
        0;JMP
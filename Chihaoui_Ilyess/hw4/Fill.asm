(LOOP)
    @KBD
    D=M
    @FILL_SCREEN
    D;JNE
    @CLEAR_SCREEN
    0;JMP

(FILL_SCREEN)
    @SCREEN
    D=A
    @R0
    M=D

(FILL_LOOP)
    @R0
    A=M
    M=1      // Use 1 instead of -1
    @R0
    M=M+1
    D=M
    @16383   // Adjust the boundary to the correct memory size (16K max address)
    D=D-A
    @FILL_LOOP
    D;JLT
    @LOOP
    0;JMP

(CLEAR_SCREEN)
    @SCREEN
    D=A
    @R0
    M=D

(CLEAR_LOOP)
    @R0
    A=M
    M=0      // Clear memory with 0
    @R0
    M=M+1
    D=M
    @16383   // Adjust the boundary again
    D=D-A
    @CLEAR_LOOP
    D;JLT
    @LOOP
    0;JMP
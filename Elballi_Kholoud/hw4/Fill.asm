(LOOP)
    @KBD
    D=M
    @BLACK
    D;JNE
    @WHITE
    
    @LOOP
    0;JMP

(WHITE)
    @SCREEN
    D=A
    @8192
    D=D+A 
    @addr
    M=D

(LOOPW)
    @SCREEN
    D=A
    @addr
    D=D-M
    D;JGE
    A=D
    M=0

   @LOOPW
   0;JMP

(BLACK)
    @SCREEN
    D=A
    @8192
    D=D+A
    @addr
    M=D

(LOOPB)
    @SCREEN
    D=A
    @addr
    D=D-M
    D;JGE
    A=D
    M=-1
    
    @LOOPB
    0;JMP
  
@result
M=0

@multiplicand
D=M
@tempMultiplicand
M=D

@multiplier
D=M
@counter
M=D

(LOOP)
  @counter
  D=M
  @END
  D;JEQ

  @tempMultiplicand
  D=M
  @result
  M=D+M

  @counter
  M=M-1

  @LOOP
  0;JMP

(END)
  @END
  0;JMP

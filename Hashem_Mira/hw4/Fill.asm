(MAIN_LOOP)
  @KBD
  D=M
  @FILL_WHITE
  D;JGT
  @FILL_BLACK
  0;JMP

(FILL_WHITE)
  @pixelValue
  M=-1
  @DRAW_SCREEN
  0;JMP

(FILL_BLACK)
  @pixelValue
  M=0
  @DRAW_SCREEN
  0;JMP

(DRAW_SCREEN)
  @8191
  D=A
  @pixelCount
  M=D

  @SCREEN
  D=A
  @pixelAddress
  M=D

(DRAW_NEXT)
  @pixelCount
  D=M
  @MAIN_LOOP
  D;JEQ

  @pixelValue
  D=M
  @pixelAddress
  A=M
  M=D

  @pixelAddress
  M=M+1

  @pixelCount
  M=M-1

  @DRAW_NEXT
  0;JMP

// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

//// Replace this comment with your code.
@SCREEN 
D = A 
@ i 
M = D //gives i = SCREEN 

(LOOP)
@ KBD 
D = M //fetches the keyboard state
@ BLACKEN
D; JNE //goes to BLACKEN if value is not 0
@ CLEAR 
0;JMP //ELSE goes to CLEAR

(BLACKEN)
@ i
D = M  //fetches current i value
@END_SCREEN
D - A ; JGE //goes to END_SCREEN if (i) >= END_SCREEN
@ i 
D = D + A
@SCREEN
A = D
M = -1 //darkens the cell at position (i+SCREEN)
@ i
D = M //gets current i values
D = D + 1
M = D //store incremented i value
@BLACKEN 
0; JMP //repats BLACKEN section

(CLEAR)
@ i
D = M //fetches current i value
@END_SCREEN
D - A ; JGE //goes to END_SCREEN if (i) >= 0
@ i 
D = M
@SCREEN
A = D
M = 0 //clears the cell at position (i+SCREEN)
@ i
D = M //fetches current i values
D = D + 1
M = D //stores incremented i value
@CLEAR
0; JMP //repeats CLEAR section

@END_SCREEN
M = 24575


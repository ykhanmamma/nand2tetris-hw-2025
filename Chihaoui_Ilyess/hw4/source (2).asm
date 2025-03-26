// Fill.asm: Turns the screen black if a key is pressed, and white if no key is pressed.

// Infinite loop to constantly check key state
@LOOP
0;JMP

// Check if any key is pressed
@KEYBOARD      // Keyboard input (RAM[0])
D=M          // D = RAM[0] (1 if key is pressed, 0 if not)

@IS_KEY_PRESSED
D;JEQ           // If no key is pressed (D == 0), jump to IS_KEY_PRESSED (white screen)

// If key is pressed, fill the screen with black (1)
@SCREEN
M=1           // Set first pixel to black (1)
@FILL_BLACK
(LOOP_BLACK)
@SCREEN
D=M           // Get current pixel value
@SCREEN
M=1           // Set current pixel to black (1)

@SCREEN
D=D-1       // Decrement screen pointer (move to next pixel)
@END_BLACK_LOOP
D;JNE           // Continue looping until all pixels are filled

(END_BLACK_LOOP)
@END_BLACK_LOOP
0;JMP

// If no key is pressed, fill the screen with white (0)
(IS_KEY_PRESSED)
@SCREEN
M=0           // Set first pixel to white (0)
@FILL_WHITE
(LOOP_WHITE)
@SCREEN
D=M           // Get current pixel value
@SCREEN
M=0           // Set current pixel to white (0)

@SCREEN
D=D-1       // Decrement screen pointer (move to next pixel)
@END_WHITE_LOOP
D;JNE           // Continue looping until all pixels are filled

(END_WHITE_LOOP)
@END_WHITE_LOOP
0;JMP
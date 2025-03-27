// Fill.asm: Interactive program to change the screen color based on key press
// This program will turn the screen black when a key is pressed and white when no key is pressed.

@16384      // Start address of the screen memory
D=A         // Load the screen starting address into D

@24576      // Address of the keyboard input (Key press check)
D=M         // Get the value of the keyboard input (0 if no key is pressed, otherwise non-zero)

(LOOP)      
    @24576      // Check keyboard input again
    D=M         // Load the keyboard input
    @KEY_PRESSED
    D;JNE       // If a key is pressed (D != 0), jump to KEY_PRESSED

    // No key pressed, fill screen with white (0)
    @16384      // Address of the first pixel on the screen
    D=A         // Load the address of the first pixel
    @FILL_WHITE // Jump to the subroutine to fill the screen white
    0;JMP

(KEY_PRESSED)
    // Key pressed, fill screen with black (1)
    @16384      // Address of the first pixel on the screen
    D=A         // Load the address of the first pixel
    @FILL_BLACK // Jump to the subroutine to fill the screen black
    0;JMP

(FILL_WHITE)
    @16384      // Start from the first pixel
    D=A         // Load screen address into D
    @END_WHITE  // Go to the end label once the screen is filled
    M=0         // Store 0 (white) at the current pixel

    (LOOP_FILL_WHITE)
        @END_WHITE
        D=M         // Check if we reached the last pixel address
        @LOOP_FILL_WHITE
        D;JNE       // Keep looping if not done
        M=0         // Write white (0) to the current screen pixel
        @END_WHITE
        D=D+1       // Move to next pixel in memory
        @END_WHITE
        0;JMP

(END_WHITE)
    @END_LOOP

(FILL_BLACK)
    @16384
    D=A         // Load screen address into D
    @END_BLACK  // Go to the end label once the screen is filled
    M=1         // Store 1 (black) at the current pixel

    (LOOP_FILL_BLACK)
        @END_BLACK
        D=M         // Check if we reached the last pixel address
        @LOOP_FILL_BLACK
        D;JNE       // Keep looping if not done
        M=1         // Write black (1) to the current screen pixel
        @END_BLACK
        D=D+1       // Move to next pixel in memory
        @END_BLACK
        0;JMP

(END_BLACK)
    @END_LOOP
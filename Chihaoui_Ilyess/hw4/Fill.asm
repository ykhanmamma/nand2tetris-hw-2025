// Fill.asm - Screen Blackout on Keypress

// Define screen memory location
@SCREEN
D=M  // D = address of screen memory (beginning)

// Infinite loop to check for key press
(LOOP)
    // Check if any key is pressed (KBD == 1)
    @KBD
    D=M  // D = value from keyboard input (1 if a key is pressed, 0 otherwise)

    // If a key is pressed, fill the screen with black (1)
    @BLACK
    D;JNE   // Jump to BLACK if a key is pressed

    // If no key is pressed, fill the screen with white (0)
    @WHITE
    D;JEQ   // Jump to WHITE if no key is pressed

(BLACK)
    // Set every pixel on the screen to black (1)
    @SCREEN
    M=-1    // All pixels set to 1 (black)

    // Wait for the key to be released (check KBD value)
    @KBD
    D=M     // Get the current value of the keyboard
    @BLACK
    D;JNE   // If the key is still pressed, stay in BLACK

    @LOOP
    0;JMP   // Repeat the loop if key is released

(WHITE)
    // Set every pixel on the screen to white (0)
    @SCREEN
    M=0     // All pixels set to 0 (white)

    // Continue checking for key press
    @LOOP
    0;JMP   // Continue the loop to check for key press
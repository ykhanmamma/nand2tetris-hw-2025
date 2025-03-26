// Mult.asm - Repetitive Addition (Simple but Inefficient)

@x            // Load address of x
D=M           // D = x (the first number to multiply)
@result       // Clear result to 0
M=0

@y            // Load address of y
D=M           // D = y (the second number to multiply)
@counter      // Initialize counter to y
M=D

// Loop to add x to the result, y times
(LOOP)
    @counter   // Load counter value
    D=M        // D = counter
    @END       // If counter is 0, we are done
    D;JEQ      // Jump to END if counter is 0

    @result    // Add x to result
    D=M        // D = result
    @x         // Load x
    D=D+A      // D = result + x
    @result    // Store back to result
    M=D

    @counter   // Decrement counter
    D=M
    @counter
    M=D-1      // Decrement the counter by 1
    @LOOP      // Repeat the loop
    0;JMP

(END)
    @result   // Done, result contains the multiplication
    D=M
    @SCREEN   // Print the result to the screen (for visualization)
    M=D


@x            
D=M          
@result       
M=0

@y           
D=M         
@counter     
M=D


(LOOP)
    @counter   
    D=M        
    @END      
    D;JEQ      

    @result   
    D=M        
    @x         
    D=D+A      
    @result   
    M=D

    @counter   
    D=M
    @counter
    M=D-1      
    @LOOP      
    0;JMP

(END)
    @result   
    D=M
    @SCREEN   
    M=D
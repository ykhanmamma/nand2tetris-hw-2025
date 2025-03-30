.data
num1:   .word 5
num2:   .word 7
result: .word 0
message: .asciiz " product is: "

.text
.globl main

main:
    lw $t0, num1
    lw $t1, num2
    
    mul $t2, $t0, $t1
    
    sw $t2, result
    
    li $v0, 4
    la $a0, message
    syscall
    
    li $v0, 1
    lw $a0, result
    syscall
    
    li $v0, 10
    syscall
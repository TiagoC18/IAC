	.data
numbers: .word  -2,3,6,4,8,126,-131,17

	.text
main: 	li $s0, 8  #size 8
	li $t0, 0  #i=0
	la $s1, numbers
	
for:	beq $t0, $s0, exit
	sll $t4, $t0, 2
	addu $t1, $s1, $t4
	lw $t2, 0($t1)
	
	andi $t3, $t2,1
	bne $t3, $0, endif
	li $v0, 1
	move $a0, $t2
     	syscall
     	li $v0, 11
     	li $a0, ','
     	syscall
     	
endif: addi $t0, $t0, 1    #i++
	j for       
           
exit:	li $v0, 10
	syscall           #exit() 

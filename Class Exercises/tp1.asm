	.data
nums:	.word -2,3,-19,4,8,126,-131,17
msg:	.asciiz "O nr de impares: "

	.text
main:	li $t0, 0	#i=0
	li $s0, 8	#size=8
	li $s1, 0	#imps=0
	la $s2, nums
	
for:	bge $t0, $s0, exit
	sll $t1, $t0, 2
	add $t2, $s2, $t1
	lw $t3, 0($t2) 
	andi $t4, $t3, 1
	beq $t4, $0, endif
	add $s1, $s1, 1
	
endif: add $t0, $t0, 1
	j for
	
exit:	li $v0, 4
	la $a0, msg
	syscall
	li $v0, 1
	move $a0, $s1
	syscall
	li $v0, 10
	syscall
	

	.text
nr_minus:li $t0, 0	#mins=0
while:	lb $t1, 0($a0)
	beq $t1, '\0', return
	blt $t1, 'a', endif
	bgt $t1, 'z', endif
	add $t0, $t0, 1
endif:	add $a0, $a0, 1
	j while
	
return:	move $v0, $a0
	jr $ra
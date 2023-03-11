	.text
n_alphas:	li $t0, 0 #i=0
		li $t1, 0 #alfas = 0
	
		
for:	addu $t3, $a0, $t0
	lb $t4, 0($t3)
	beq $t4, '\0', endfor
	blt $t4, 'A', endif
	bgt $t4, 'z', endif
	addi $t1,$t1,1
	
	
	
	
endif:	addi $t0, $t0, 1
	j for
	
	
endfor:	jr $ra
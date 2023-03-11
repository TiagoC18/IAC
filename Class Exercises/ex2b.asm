	.data
	.eqv print_str, 4
	.eqv print_int10, 1
	.eqv exit, 10
frase:	.asciiz "Te3m In5tei1ros Mis8tura9dos"
msg:	.asciiz  "\nO nr de Alfas e: " 

	.text
main:	li $v0, print_str
	la $a0, msg
	syscall
	
	la $a0, frase
	jal n_alphas
	move $a0, $v0
	li $v0, print_int10
	syscall
	li $v0, exit
	syscall
	
######################################################################	
	
n_alphas:	li $t0, 0 #i=0
		li $v0, 0 #alfas = 0
	
		
for:	addu $t1, $a0, $t0
	lb $t2, 0($t1)
	beq $t2, '\0', endfor
	blt $t2, 'A', endif
	bgt $t2, 'z', endif
	addi $v0,$v0,1
	
	
	
	
endif:	addi $t0, $t0, 1
	j for
	
	
endfor:	jr $ra
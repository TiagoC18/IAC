	.data
minus: .asciiz "texto com minusculas"
maius: .space 20
	.text
main:	li $t0,0
while:	la $a0, minus
	add $t1, $a0, $t0
	lb $t2, 0($t1)
	beq $t2, '\0', endwhile
	addi $t2, $t2, 'A'
	subi $t2, $t2, 'a'
	la $a1, maius
	addu $t3, $a1, $t0
	sb $t2, 0($t3)
	addi $t0,$t0,1
	j while
	endwhile
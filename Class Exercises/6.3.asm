	.data
number:	.asciiz "Introduza 2 números: "
print:	.asciiz "A soma dos números é: "

	.text
main:	la $a0, number
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	
	move $t1, $v0
	
	li $v0, 5
	syscall
	
	move $t0, $v0
	.ali
	la $a0, print
	li $v0, 4
	syscall
	add $a0, $t1, $t0
	li $v0, 1
	syscall
	
	li $v0, 10
	syscall
	
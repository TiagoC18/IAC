	.data
msg:	.asciiz "\n-->Teste2 de IAC, ex2b<--"
minus:	.asciiz "\nO nr de minusculas e: "

	.text
	li $v0, 4
	la $a0, msg
	syscall
	li $v0, 4
	la $a0, minus
	syscall
	la $a0, msg
	jal nr_minus
	move $a0, $v0
	li $v0, 1
	syscall
	li $v0, 10
	syscall
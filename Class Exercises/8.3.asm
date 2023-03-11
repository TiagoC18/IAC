.data
prompt:	.asciiz "Introduza um numero.\n"
result:	.asciiz	"O fatorial do número inserido é: "

	.text
	.globl main
	
main:	
	la $a0, prompt
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	li $t1, 1
	
ciclo:	
	ble $t0, 0, end
	
	mult $t1, $t0
	mflo $t1
	
	subi $t0, $t0, 1
	
	j ciclo
	
end:	
	la $a0, result
	li $v0, 4
	syscall
	
	move $a0, $t1
	li $v0, 1
	syscall
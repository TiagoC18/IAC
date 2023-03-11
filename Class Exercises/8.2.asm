	.data
prompt: .asciiz "Introduza um número.\n"
dash: .asciiz "-"

	.text
	.globl main
main:
	la $a0, prompt
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	li $t1, 0
	
ciclo:
	beq $t1, $t0, end
	
	la $a0, dash
	li $v0, 4
	syscall
	
	addi $t1, $t1, 1
	j ciclo
	
end:	li $v0,10
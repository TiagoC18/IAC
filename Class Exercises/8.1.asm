	.data
prompt: .asciiz "Introduza um n�mero.\n"
par: .asciiz "O n�mero � par.\n"
impar: .asciiz "O n�mero � �mpar.\n"

	.text
	.globl main
	
main:
	la $a0, prompt
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	andi $t1, $t0, 1
if:	bne $t1, $0, impar
	
	la $a0, par
	li $v0, 4
	syscall
	j end
	
else:	la $a0, par
	li $v0, 4
	syscall
	
end:	li $v0,10
	syscall			#exit					
	
	
	
	
	
	
	
	
	
	
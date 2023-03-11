.text
main: li $t0 0X12345678
	li $t1 0X0000000f
	and $t2, $t1, $t0
	or $t3, $t1, $t0
	nor $t4, $t1, $t0
	xor $t5, $t1, $t0
	not $t6, $t0

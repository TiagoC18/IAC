	.data

	.text

main: 	li $t0 0X12345678
	li $t1 0X0000000f
	and $t2, $t0, $t1
	or $t3, $t0, $t1
	nor $t4, $t0, $t1
	xor $t5, $t0, $t1 
#Assignment 4
.text
	li $s1, 0xffffffff
	li $s2, 0x80000000
start:
	li $t0, 0
	addu $s3, $s1, $s2
	xor $t1, $s1, $s2
	bltz $t1, EXIT
	xor $t2, $s1, $s3
	bltz $t2, OVERFLOW
	j OVERFLOW
OVERFLOW:
	li $t0, 1
EXIT:
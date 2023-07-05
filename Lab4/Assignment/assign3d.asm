#Assignment 3d
.text
	li $s0, 2
	li $s1, 3
	slt $t0, $s0, $s1	#s0<s1 -> t0=1
	bne $t0, $zero, L
L:
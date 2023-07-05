#Assignment 3a
.text
	li $s1, 5
start:
	slt $t0, $s1, $zero
	bne $t0, $zero, else
	add $s0, $s1, $zero
	j endif
else:
	sub $s0, $zero, $s1
endif:
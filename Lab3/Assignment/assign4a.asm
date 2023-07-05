#Assignment 4a
.data
	X: .word 5
	Y: .word 2
	Z: .word 3
.text
	la $t4, X
	la $t5, Y
	la $t6, Z
	lw $t1, 0($t4)
	lw $t2, 0($t5)
	lw $t3, 0($t6)
	li $s1, 2
	li $s2, 4

start:
	sle $t0, $s2, $s1	#s2<=s1 -> t0=1
	bne $t0, $zero, else	#ktra gtri t0
	addi $t1, $t1, 1
	addi $t3, $zero, 1
	j endif			#skip "else" part
else:
	addi $t2, $t2, -1
	add $t3, $t3, $t3
endif:
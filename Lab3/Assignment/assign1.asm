#Assignment 1
.data
	X: .word 5
	Y: .word 2
	Z: .word 3
	i: .word 10
	j: .word 5
.text
	la $t4, X
	la $t5, Y
	la $t6, Z
	la $t7, i
	la $t8, j
	lw $s1, 0($t7)
	lw $s2, 0($t8)
	lw $t1, 0($t4)
	lw $t2, 0($t5)
	lw $t3, 0($t6)

start:
	slt $t0, $s2, $s1	#s2<s1 -> t0=1
	bne $t0, $zero, else	#ktra gtri t0
	addi $t1, $t1, 1
	addi $t3, $zero, 1
	j endif			#skip "else" part
else:
	addi $t2, $t2, -1
	add $t3, $t3, $t3
endif:

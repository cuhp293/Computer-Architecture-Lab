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
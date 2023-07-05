#Laboratory Exercise 2, Assignment 4
.text
 # Assign X, Y
	addi $t1, $zero, 5 # X = $t1 = ?
	addi $t2, $zero, -1 # Y = $t2 = ?
 # Expression Z = 2X + Y
	#add $s0, $t1, $t1 # $s0 = $t1 + $t1 = X + X = 2X
	#add $s0, $s0, $t2 # $s0 = $s0 + $t2 = 2X + Y
 # Expression Z = 4X + 3Y - 5
 	add $s0, $t1, $t1
 	add $s1, $s0, $s0
 	add $s2, $t2, $t2
 	add $s3, $s2, $t2
 	add $s4, $s1, $s3
 	addi $s5, $s4, -5
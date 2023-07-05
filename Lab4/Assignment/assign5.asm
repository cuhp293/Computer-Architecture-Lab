#Assignment 5
.text
	li $s0,2
	li $s1,0
	li $s4,1
	li $s5,10
loop:
	add $s1,$s1,$s4 
	sllv $s6,$s0,$s1
	bne $s1,$s5,loop 
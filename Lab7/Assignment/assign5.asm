#Laboratory Exercise 7 Assignment 5
.text
	li $s0, 39
	li $s1, 13
	li $s2, 6
	li $s3, 29
	li $s4, 98
	li $s5, 8
	li $s6, 12
	li $s7, 0
push:
	addi $sp, $sp, -32
	sw $s0, 0($sp)
	sw $s1, 4($sp)
	sw $s2, 8($sp)
	sw $s3, 12($sp)
	sw $s4, 16($sp)
	sw $s5, 20($sp)
	sw $s6, 24($sp)
	sw $s7, 28($sp)
work:
	nop
	
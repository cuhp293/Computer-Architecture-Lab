#Laboratory Exercise 7 Assignment 5
.data
	A: .asciiz "Max: "
	B: .asciiz "\nMin: "
	C: .asciiz ", "
.text
push:
	li $s0, 19
	li $s1, 13
	li $s2, 6
	li $s3, 8
	li $s4, 9
	li $s5, 29
	li $s6, 12
	li $s7, 40
	addi $t0, $s0,0		#max
	addi $t1, $s0,0		#min
	li $t2, 0		#i
	li $t3, 8		#n
	li $a1, 0		#index of max = 0
	li $a3, 0		#index of min = 0
	addi $sp, $sp, -32
	sw $s0, 0($sp)
	sw $s1, 4($sp)
	sw $s2, 8($sp)
	sw $s3, 12($sp)
	sw $s4, 16($sp)
	sw $s5, 20($sp)
	sw $s6, 24($sp)
	sw $s7, 28($sp)
main:
	jal work
	j print
work:
	slt $t5, $t2, $t3
	beq $t5, $zero, done
	mul $t6, $t2, 4
	add $t7, $t6, $sp
	lw $t8, 0($t7)
	slt $t5, $t8, $t0
	beq $t5, $zero, swap_max
continue1:
	slt $t5, $t8, $t1
	bne $t5, $zero, swap_min
continue:
	addi $t2, $t2, 1
	j work
swap_max:
	add $t0, $t8, $zero
	addi $a1, $t2, 0
	j continue1
swap_min:
	add $t1, $t8, $zero
	addi $a3, $t2, 0
	j continue
done:
	jr $ra
print:
	li $v0, 4
	la $a0, A
	syscall
	
	li $v0, 1
	move $a0, $t0
	syscall
	
	li $v0, 4
	la $a0, C
	syscall
	
	li $v0, 1
	move $a0, $a1
	syscall
	
	li $v0, 4
	la $a0, B
	syscall
	
	li $v0, 1
	move $a0, $t1
	syscall
	
	li $v0, 4
	la $a0, C
	syscall
	
	li $v0, 1
	move $a0, $a3
	syscall
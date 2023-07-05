#Assignment 3
.data
	A: .word 7, -3, 5, 1, 5, 6, 7, 3, 6, 8, 8, 59, 5
	B: .asciiz " "
.text
	li $s0, 12	#n-1
	la $a0, A	#Address of A
	li $t0, 0	#i
	li $t1, 0	#j
for1:
	slt $t2, $t0, $s0	#i < n - 1
	beq $t2, $zero, end_for1
	li $t1, 0		#j=0
	sub $s1, $s0, $t0	#j = n - i - 1
for2:
	slt $t3, $t1, $s1	#j < n - i - 1
	beq $t3, $zero, end_for2
	
	mul $t4, $t1, 4
	add $t5, $t4, $a0	#A[j]
	lw $t6, 0($t5)
	lw $t7, 4($t5)
	
	slt $t3, $t7, $t6	#if (arr[j] > arr[j + 1])
	bne $t3, $zero, swap
	addi $t1, $t1, 1	#j++
	j for2
swap:
	sw $t6, 4($t5)
	sw $t7, 0($t5)
	addi $t1, $t1, 1
	j for2
end_for2:
	addi $t0, $t0, 1
	j for1
end_for1:
	li $s0, 13
	li $t0, 0
	la $s1, A
print:
	add $t2, $t0, $t0
	add $t2, $t2, $t2
	add $t3, $t2, $s1
	lw $t4, 0($t3)
	
	li $v0, 1
	move $a0, $t4
	syscall
	
	li $v0, 4
	la $a0, B
	syscall
	
	addi $t0, $t0, 1
	slt $t5, $t0, $s0
	bne $t5, $zero, print
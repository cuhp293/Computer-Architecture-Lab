#Assignment 4
.data
	A:.word 7, -4, 5, 1, 5, 6, 7, 3, 6, 8, 8, 59, 5
	B: .asciiz " "
.text
main:
	la $a0,A
	addi $a1,$a0,0#A[key-1]
	li $t0,1#i

max:
	addi $a1,$a1,4#A[key]
	lw $t2,0($a1)#key
	addi $t1,$t0,-1#j = i - 1;
	addi $t3,$a1,0#A[j+1]
	addi $t5,$a1,-4#A[j]
loop:
# while (j >= 0 && arr[j] > key)
	slt $t4,$t1,$0
	bne $t4,$0,x

	lw $t6,0($t5)#value of A[j]
	slt $t4,$t2,$t6
	bne $t4,1,x
#
	sw $t6,0($t3)# A[j + 1] = A[j];
	addi $t3,$t3,-4#giảm địa chỉ của A[j+1] = A[j]
	addi $t5,$t5,-4# giảm địa chỉ của A[j] = A[j-1]
	addi $t1,$t1,-1# j = j - 1;
	j	loop
x:
	sw $t2,0($t3)#arr[j + 1] = key;
	addi $t0,$t0,1
	beq $t0,13,end
	j	max
end:
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
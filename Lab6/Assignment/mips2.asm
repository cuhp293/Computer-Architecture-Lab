.data
	A: .word 7, -2, 5, 1, 5, 6, 7, 3, 6, 8, 8, 59, 5
	Aend: .word
	B: .asciiz " "
.text
main:
	la $a0, A #$a0 = Address(A[0])
	la $a1, Aend
	addi $a1, $a1, -4 #$a1 = Address(A[n-1])
	j sort #sort
end_main:
sort:
	addi $s0, $zero, 0 # init i = 0
loop_i:
	bge $s0, $a1, end_sort # if i >= end, exit loop
	addi $s1, $s0, 1 # init j = i + 1
loop_j:
	bge $s1, $a1, next_i # if j >= end, exit inner loop
	lw $t0, 0($s0) # load A[i] into $t0
	lw $t1, 4($s1) # load A[j] into $t1
	bgt $t0, $t1, swap # if A[i] > A[j], swap
	addi $s1, $s1, 1 # increment j
	j loop_j
swap:
	sw $t0, 4($s1) # store A[i] into A[j]
	sw $t1, 0($s0) # store A[j] into A[i]
	addi $s1, $s1, -1 # decrement j
	j loop_j
next_i:
	addi $s0, $s0, 4 # increment i
	j loop_i
end_sort:
	j end
end:

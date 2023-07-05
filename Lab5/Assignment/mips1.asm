.data
	str: .space 100
.text
inputStr:
	li $v0, 8
	la $a0, str
	li $a1, 21	#chua ca ENTER
	syscall
getLen:
	li $v0, 0	#len=0
	li $t0, 0	#i=0
count_char:
	add $t1, $a0, $t0	#address of str[i]
	lb $t2, 0($t1)
	beq $t2, $zero, done1
	addi $v0, $v0, 1
	addi $t0, $t0, 1
	j count_char
done1:
	addi $t0, $v0, -1	#t0 = length (ignore '\n')
	move $s0, $a0		#s0 = address pf str
print_reverse:
	li $v0, 11
	add $t1, $s0, $t0
	lb $a0, 0($t1)
	syscall
	addi $t0, $t0, -1
	blt $t0, $zero, done2
	j print_reverse
done2:
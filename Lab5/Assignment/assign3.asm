#Assignment 5
.data
	string: .space 100
.text
main:
get_string:
	li $v0, 8
	la $a0, string
	la $a1, 21
	syscall
get_length:
	li $v0, 0	# v0 = length = 0
	li $t0, 0	# t0 = i = 0
check_char:
	add $t1, $a0, $t0	# t1 = a0 + t0 
				#    = Address(string[0]+i) 
	lb $t2, 0($t1)		# t2 = string[i]
	beq $t2, $zero, end_of_str	# Is null char? 
	addi $v0, $v0, 1	# v0=v0+1->length=length+1
	addi $t0, $t0, 1	# t0=t0+1->i = i + 1
	j check_char
end_of_str:
	addi $t0, $v0, -1	#t0 = length (ignore '\n')
	move $s0, $a0		#s0 = address pf str
print_reverse:
	li $v0, 11
	add $t1, $s0, $t0
	lb $a0, 0($t1)
	syscall
	addi $t0, $t0, -1
	blt $t0, $zero, end
	j print_reverse
end:
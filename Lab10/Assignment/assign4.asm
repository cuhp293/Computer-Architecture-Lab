#Home Assignment 4
.eqv KEY_CODE 0xFFFF0004
.eqv KEY_READY 0xFFFF0000
.eqv DISPLAY_CODE 0xFFFF000C
.eqv DISPLAY_READY 0xFFFF0008
.text
	li $k0, KEY_CODE
	li $k1, KEY_READY

	li $s0, DISPLAY_CODE
	li $s1, DISPLAY_READY
loop:
	nop
WaitForKey:
	lw $t1, 0($k1)
	nop
	beq $t1, $zero, WaitForKey
	nop
ReadKey:
	lw $t0, 0($k0)
	addi $t9, $t8, 0
	addi $t8, $t7, 0
	addi $t7, $t6, 0
	addi $t6, $t0, 0
	nop
WaitForDis:
	lw $t2, 0($s1)
	nop
	beq $t2, $zero, WaitForDis
	nop
Encrypt:
	addi $t0, $t0, 1
ShowKey:
	sw $t0, 0($s0)
	nop
CheckExit:
	li $t5, 'e'
    	li $t4, 'x'
    	li $t3, 'i'
    	li $t2, 't'
	bne $t9, $t5, loop
	bne $t8, $t4, loop
	bne $t7, $t3, loop
	bne $t6, $t2, loop
	
	li $v0, 10
	syscall

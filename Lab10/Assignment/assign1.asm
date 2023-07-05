#Home Assignment 1
.eqv SEVENSEG_LEFT 0xFFFF0011
.eqv SEVENSEG_RIGHT 0xFFFF0010
.text
main:
	li $a0, 0x6		#set value for segments
	jal SHOW_7SEG_LEFT	#show
	nop
	li $a0, 0x7F		#set value for segments
	jal SHOW_7SEG_RIGHT	#show
	nop
exit:
	li $v0, 10
	syscall
endmain:

SHOW_7SEG_LEFT:
	li $t0, SEVENSEG_LEFT	# assign port's address
	sb $a0, 0($t0)		# assign new value 
	nop
	jr $ra
	nop

SHOW_7SEG_RIGHT:
	li $t0, SEVENSEG_RIGHT	# assign port's address
	sb $a0, 0($t0)		# assign new value
	nop
	jr $ra 
	nop
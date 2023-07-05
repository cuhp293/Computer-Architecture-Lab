.text
	li $t0, 0xFFFF0011	#left 7-SEG
	li $a0, 0x3F
	sb $a0, 0($t0)
	
	li $t1, 0xFFFF0010	#right 7-SEG
	li $a0, 0x4F
	sb $a0, 0($t1)
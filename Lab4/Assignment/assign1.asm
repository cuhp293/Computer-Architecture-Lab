#Assignment 1
#kiểm tra tràn số trong phép cộng s1 + s2
.text
start:
	li $s1, 0xffffffff
	li $s2, 0x80000000
	
	li $t0, 0		#No Overflow is default status, khởi tạo t0 = 0
	addu $s3, $s1, $s2	#s3 = s1 + s2
	xor $t1, $s1, $s2	#Test if s1 and s2 have the same sign (có cùng dấu không, lưu kết quả vào t1)
	
	bltz $t1, EXIT		#If not, exit (không cùng dấu -> thoát chương trình) nếu t1<0
	slt $t2, $s3, $s1	#s3<s1 -> t2=1 (thì s1 là số âm)
	bltz $s1, NEGATIVE	#Test if s1 and s2 is negative?
	beq $t2, $zero, EXIT	#s1 and s2 are positive (?nếu t2 = 0 thì exit)
		#if s3 > s1 then the result is not overflow
	j OVERFLOW
NEGATIVE:
	bne $t2, $zero, EXIT	#s1 and s2 are negative (nếu t2 # 0 thì exit)
		#if s3 < s1 then the result is not overflow
OVERFLOW:
	li $t0, 1		#the result is overflow
EXIT:

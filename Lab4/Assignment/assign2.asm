#Assignment 2
#trích xuất các bit cụ thể từ giá trị lưu trong thanh ghi s0
.text
	li $s0, 0x56342131		#load test value for these function -> sử dụng cho việc kiểm tra các bit
	addi $t0, $s0, 0xff000000	#extract MSB of s0
	andi $t1, $s0, 0xffffff00	#clear LSB of s0
	ori $t2, $s0, 0xff		#set LSB of s0
	xor $t3, $s0, $s0		#clear s0
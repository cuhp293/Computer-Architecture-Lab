#Laboratory Exercise 4, Home Assignment 2
#trích xuất các bit cụ thể từ giá trị lưu trong thanh ghi s0
.text
	li $s0, 0x0563		#load test value for these function -> sử dụng cho việc kiểm tra các bit
	andi $t0, $s0, 0xff	#extract the LSB of s0 (lấy giá trị bit LSB - giữ lại 8 bit cuối của s0 và lưu vào t0)
	andi $t1, $s0, 0x0400	#extract bit 10 of s0 (lấy giá trị bit 10 tính từ phải -> trái của s0 và lưu vào t1)
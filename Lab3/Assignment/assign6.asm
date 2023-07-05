#Tìm phần tử có trị tuyệt đối lớn nhất trong mảng
#Assignment 6
.data
	A: .word 1, 2, 3, 4, 5, 6, 7, 8, 9
.text
	li $s1, 1	#i=1
	la $s2, A	#get address of array A
	li $s3, 9	#number of elements
	li $s4, 1	#step=1
	li $s5, 0	#max=0
	li $s6, 1
	li $t8, -1
loop:
	add  $s1, $s1, $s4	#i=i+step
	add  $t1, $s1, $s1	#t1=2*s1 
	add $t1, $t1, $t1	#t1=4*s1  
	add $t1, $t1, $s2	#t1 store the address of A[i] 
	lw $t0, 0($t1)		#load value of A[i] in $t0 
start:
	slt $t4, $t0, $zero	#A[i]<0 -> t4=1
	bne $t4, $zero, else
	mul $s7, $t0, $s6
	j endif 
else: 
	mul $s7, $t0, $t8
endif:

starts:
	slt $t5, $s7, $s5	#s7<s5 -> t5=1
	bne $t0, $zero, elses 
	mul $s5, $s7, $s6
	j endifs 
elses:
	mul $s5, $s5, $s6
endifs:
	bne $s1, $s3, loop 

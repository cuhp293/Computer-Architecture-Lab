#Assignment 5a
.data
	A: .word 1, 2, 3, 4, 5, 6, 7, 8, 9
.text
	li $s1, -1	#i=-1
	la $s2, A	#a2 stores the address of array A
	li $s3, 9	#number of elements of A
	li $s4, 1	#step=1
	li $s5, 0	#sum=0
loop:
	add  $s1,$s1,$s4  #i=i+step
	#sll $t1, $s1, 2 
	add  $t1,$s1,$s1  #t1=2*s1 
	add $t1,$t1,$t1  #t1=4*s1  
	add $t1,$t1,$s2  #t1 store the address of A[i] 
	lw $t0,0($t1)  #load value of A[i] in $t0 
	add $s5,$s5,$t0  #sum=sum+A[i] 
	
	slt $t2,$s1,$s3 #s1<s3 -> t2=1
	bne $t2, $zero, loop
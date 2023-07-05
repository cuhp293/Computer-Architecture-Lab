#Home Assignment 2
.eqv MONITOR_SCREEN 0x10010000		#Dia chi bat dau cua bo nho man hinh
.eqv RED 0x00FF0000			#Cac gia tri mau thuong su dung
.eqv GREEN 0x0000FF00
.eqv BLUE 0x000000FF
.eqv WHITE 0x00FFFFFF
.eqv YELLOW 0x00FFFF00
.text
	li $k0, MONITOR_SCREEN
	li $a0, BLUE
	li $s0, 0
	li $s1, 256
scan:
	add $t0, $k0, $s0
	sw $a0, 0($t0)
	addi $s0, $s0, 4
	ble $s0, $s1, scan
.data
	num1: .word 5
	num2: .word 10

.text
.main
	lw $t0, num1($zero)
	lw $t1, num2($zero)
	
	add $t2, $t0, $t1
	li $v0, 1
#	la $a0, $t2 doesnt work
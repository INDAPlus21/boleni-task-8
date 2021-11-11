.data
	num1: .word 5
	num2: .word 10

.text
main:
	li $a0, 3
	li $a1, 1
	
	jal multiply
	
	li $v0, 1
	move $a0, $v0
	syscall
	

multiply:
	move $t0, $0
	move $t1, $0
	addi $t1, $t1, $a1
	move $t2, $0
	loop:
		addi $t2, $a1
		addi $t0, $t0, 1
		bne $t0, $t1, loop
	li $v0, $0
	add $v0, $0, $t2
	jr $ra
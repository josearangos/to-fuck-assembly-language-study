.data
	number1: .word 5
	number2: .word 10
.text

	lw $t0, number1($zero)
	lw $t1, number2($zero)
	
	#add $t2, $t0,$t1
	#sub $t2,$t1,$t0
	mul $t2,$t1,$t0
	mult $t1,$t0
	li $v0,1
	
	
	move $a0,$t2
	syscall
	



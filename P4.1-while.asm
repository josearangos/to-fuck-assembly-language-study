.data
	message: .asciiz "Afert while loop is done"
	space: .asciiz ","


.text
     main:
     	addi $t0, $zero, 0 # i = 0
     	
     	loop:
     		bgt $t0, 10, exit# mayor que 10
     		jal printNumber
     		addi $t0,$t0,1 # i++		
		j loop
		


	printNumber:
		li $v0,1
		addi $a0,$t0,0
		syscall
				
		
		li $v0,4
		la $a0,space
		syscall
		
		jr $ra

	exit:
		li $v0,4
		la $a0,message
		syscall
				
		li $v0,10
		
		syscall
.data
	message: .asciiz "hi, My name is Jose \n"
.text
     main:
     	jal displayMessages
     
     	addi $t0,$zero,19
     	li $v0,1
     	move $a0,$t0
     	syscall  
     
     
    	jal exit
     
     
     displayMessages:
     	li $v0, 4
     	la $a0, message
     	syscall
     	jr $ra
     
     
     exit:
     	li $v0, 10
     	syscall
	
	
	
	
	

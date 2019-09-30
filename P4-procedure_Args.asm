.data



.text
     main:
     	addi $a0,$zero,13
     	addi $a1,$zero,17
     	jal addNumbers
     	add $a2,$zero,$v0
     	jal showResult     	
     	jal exit
     	   	
     	
    addNumbers:
    	add $v0, $a0,$a1
    	jr $ra
    	
    showResult:
    	li $v0,1
    	addi $a0,$a2,0
    	syscall
    	jr $ra
    
    exit:
    	li $v0,10
    	syscall
     
 
     

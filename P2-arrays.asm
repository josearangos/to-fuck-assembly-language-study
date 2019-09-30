.data
	myArray: .space 12 #Reservo el espacio en memoria con un array de 3 pocisiones
	newLine: .asciiz "\n"
	myArrayI: .word 100:6 # llena el array con 3 veces el 100
.text
	main:
	
	 addi $s0,$zero,4
	 addi $s1,$zero,34
	 addi $s2,$zero,17
	
	 #Index del vector = $t0
	 addi $t0,$zero,0
	 
	 sw $s0, myArray($t0)
	   addi $t0,$t0,4
	   
	 sw $s1, myArray($t0)
	   addi $t0,$t0,4
	   
	 sw $s2, myArray($t0)
	   addi $t0,$t0,4   
	
	#addi $t2, $zero,8 # 2 pocision del vector el numero 17
	#lw $t6, myArray($t2)
	addi $t0,$zero,0 #index del vector
	jal loop2

      loop:
      	beq $t0,12,Exit 
	lw $t6,myArray($t0)
	
	#Print current number
	li $v0,1
	move $a0,$t6
	syscall
	
	#Print new line
	li $v0,4
	la $a0,newLine
	syscall
	
	addi $t0,$t0,4
	j loop

    loop2:	
    	beq $t0,24,Exit 
	lw $t6,myArrayI($t0)
	
	#Print current number
	li $v0,1
	move $a0,$t6
	syscall
	
	#Print new line
	li $v0,4
	la $a0,newLine
	syscall
	
	addi $t0,$t0,4
	j loop2 
	
      Exit:
      	li $v0, 10
      	syscall
	
	
	
	
	
	
	
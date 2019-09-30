.data
	space: .asciiz"\n"
.text

      # 1. Macro para imprimir numero
      .macro print_int (%x)
	li $v0, 1
	add $a0, $zero, %x
	syscall
	li $v0,4
	la $a0,space
	syscall
      .end_macro
		
	#Test macro
	#addi $s0,$zero,13
	#print_int ($s0)
	#print_int (10)
	#------------------------------------------------------------
      	
	#2. Macro para imprimir texto con su propia estructura de data y text
	.macro print_str (%str)
	 .data
	    myLabel: .asciiz %str
	 .text
	   li $v0, 4
	   la $a0, myLabel
	   syscall
	.end_macro
	
	#print_str("Jose alberto")
	
	#------------------------------------------------------------
	
	#3. MACRO FOR LOOP
	# generic looping mechanism
	.macro for(%regIterator,%from, %to,%macroExecute)
	   #add %regIterator, $zero, %from
	   Loop:
	   	%macroExecute () # Ejecuta la funcion pasada por parametro
	   	addi %regIterator,%regIterator,1
	   	ble %regIterator, %to, Loop # Menor o igual que
	.end_macro 
	
	#Macro a ejecutar en el for
	.macro macroExecute()
		print_int ($t0)
		print_str("\n")	
	.end_macro
	
	# Test macro
	#Print el index del vector
	for($t0,1,10,macroExecute)
	
	#------------------------------------------------------------
#Include macros

.include "doneMacro.asm"



.data


.text
      main:

	   li $v0,1
	   addi $a0,$zero,9
	   syscall
	   done # Esta funcion esta en el archivo doneMacro

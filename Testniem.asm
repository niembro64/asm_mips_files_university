# ############################################################### #

# ############################################################### #   

.data
	age: .word 23
.text
	li $v0, 1
	lw $a0, age
	syscall
	jr $31                  # Return from main (stop the program)

# END OF THE LINES ###############################################
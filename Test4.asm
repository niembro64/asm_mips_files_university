# ############################################################### #
# Test4.ASM                                                       #
#                                                                 #
# Sample assembly code No. 4 for testing conditional branch       #
# instrustions.                                                   #
#                                                                 #
# ############################################################### #   


.data

MESSAGE1: .asciiz "the two numbers in t0 and t1 registers are EQUAL"

MESSAGE2: .asciiz "the two numbers in t0 and t1 registers are NOT EQUAL"


.text
.globl main

main:      li $t0, 10		   # 10 (decimal 10) is assigned to t0 register
	   li $t1, 8		   # 8 (decimal 8) is assigned to t1 register

           #move $t0, $t1        # AN ILLEGAL INSTRUDTION

           beq $t0, $t1, EQUAL     # jump if equal

           li $v0, 4               # system call #4 (print message)
           la $a0, MESSAGE2        # load the memory sddress of the
                                   # first character in the message
           syscall		   # Do it!

           j  ENDING

EQUAL:     li $v0, 4               # system call #4 (print message)
           la $a0, MESSAGE1        # load the memory sddress of the
                                   # first character in the message
           syscall		   # Do it!

ENDING:    jr $31                  # stop the program

# END OF THE LINES ###############################################

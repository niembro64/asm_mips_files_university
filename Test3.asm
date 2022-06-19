# ############################################################### #
# Test3.ASM                                                       #
#                                                                 #
# Sample assembly code No. 3 for testing SPIM Simulator.          #
# This sample program is just for understanding SPIM assebmbler.  #
#                                                                 #
# ############################################################### #   


.data

STR_MESSAGE1: .asciiz "Enter an positive integer: "

STR_MESSAGE2: .asciiz "You entered 7 ..."

STR_MESSAGE3: .asciiz "You entered some # other than 7 ..."

.text
.globl main

main:      li $v0, 4               # system call #4 (print message)
           la $a0, STR_MESSAGE1    # load the memory sddress of the
                                   # first character in the message
           syscall                 # Do it!

           li $v0, 5               # system call #5 (user input)
           syscall                 # Do it!

           li $v1, 7               # set constnat "7" to v1 register

           beq $v0, $v1, ITS_EQUAL # jump if equal

           li $v0, 4               # system call #4 (print message)
           la $a0, STR_MESSAGE3    # load the memory sddress of the
                                   # first character in the message
           syscall		   # Do it!

           j  ENDING

ITS_EQUAL: li $v0, 4               # system call #4 (print message)
           la $a0, STR_MESSAGE2    # load the memory sddress of the
                                   # first character in the message
           syscall		   # Do it!

ENDING:    jr $31                  # stop the program

# END OF THE LINES ###############################################

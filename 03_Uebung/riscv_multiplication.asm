##################################
#CESP Exercise 3: Multiplication #
##################################                                 

.globl  main


.text
j main


#STEP 1: Implement multiplication function according to C Code in Task sheet

multiplication:

li t0, 1
li t1, 0 #result
add t2, zero, a2 #factor

li t3, 32
li t4, 0

for_start:
	bge t4, t3, for_end
	
	andi t5, t2, 1 
	bne t5, t0, skip
		sll t6, a1, t4
		add t1, t1, t6
skip:	srli t2, t2, 1
	addi t4, t4, 1
	beq zero, zero, for_start
for_end:
	mv a0, t1
	jalr zero, ra, 0

# Input
# ------------------
#   a1: factor_1
#   a2: factor_2

# Output
# ------------------
#   a0: factor_1 * factor_2

	# ADD YOUR STEP 1 CODE HERE


#STEP 2: Open the files unit_test.asm with RARS and select from the contect mentu: Settings -> Assemble all files currently open

main:
#STEP 3: Use the asm file unit_test.asm to verify your implementation of the multiplication function

# Unit test to see if 2*2 == 4
	li a1, -4
	li a2, -6
	jal multiplication

	mv a1, a0
	li a2, 24
	jal unittest

#STEP 4: Test if the result is correct for the following calculations
#	  2 * 2
#	 45 * 32
#	 -2 * 3
#	 -4 * 7
#	 -5 * -6

	# ADD YOUR STEP 4 CODE HERE
#STEP 5: Exit 
	addi a0, zero, 0
	addi a7, zero, 93
	ecall
	# ADD YOUR STEP 5 CODE HERE
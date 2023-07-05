.text
start:
	la a2, array
	la a3, n
	lw t1, (a3)
	addi t1, t1, -1	# t1 = n - 1
loop_i:
	blt t1,	zero, end	# t1 >= 0? 
	and t2, t2, zero	# t2 = 0
	and t3, t3, zero	# t3 = 0
loop_j:	
	beq t2, t1, exit_j	# t2 == t1
	slli t3, t1, 2		# t3 = t1 * 4
	add t3, a2, t3 
	lw t5, (t3)
	slli t4, t2, 2		# t4 = t2 * 4
	add t4, a2, t4
	lw t6, (t4)
	blt t5, t6, smaller
	sw t6, (t3)
	sw t5, (t4)
smaller:
	addi t2, t2, 1
	jal zero, loop_j
exit_j:
	addi t1, t1, -1
	jal zero, loop_i	  	  
end:

	addi a1,zero,1
	and t1, t1, zero

back_end:
	jal zero, back_end
		
	
.data
n:
	.word 5
array:
	.word 3,4,10,5,3,565


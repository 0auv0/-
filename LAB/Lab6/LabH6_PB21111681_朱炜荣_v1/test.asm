.text
start:
#	la a0,mmio	#a0 作为mmio的基地址
	addi a0, zero, 0x7f
	slli a0, a0, 8
	addi t1, zero, 1
	sw t1,0(a0)
loop1:
	lw t2,0x10(a0)
	beq t2,zero,loop1
	lw t3,0x014(a0)
	
	addi t1,t1,1
	sw t1,0(a0)
loop2:
	lw t2,0x10(a0)
	beq t2,zero,loop2
	lw t4,0x014(a0)

	la a3, n
	sw t3, 0(a3)	# 存入生成数组长度
	blt zero,t3,lawful
	la a2,array
	sw t4,0(a2)
	jal zero, store_end
	
lawful:	
	la a2, array
	add t1, zero, zero
	addi s2, zero, 1
	slli t2, s2, 9
	slli s2, s2, 6 
# t3:num t4:current_data a2:addr t1:counter t5:offset s2:1<<6 t2:1<<9
store:	
	slli t5, t1, 2	
	add t6, t5, a2
	sw t4,0(t6)	#存储
    	
    	and a1, t4, t2
    	srli a1, a1, 9
    	and s1, t4, s2
    	srli s1, s1, 6
    	xor a1, a1, s1
    	slli t4, t4, 1
	add t4, t4, a1
	
	addi t1, t1, 1
    	beq  t1, t3, store_end  
    	jal zero, store

store_end:
	lw a4,0x18(a0)
	
start_sort:
	la a2, array
	la a3, n
	lw t1, 0(a3)
	addi t1, t1, -1	# t1 = n - 1
loop_i:
	blt t1,	zero, end	# t1 >= 0? 
	and t2, t2, zero	# t2 = 0
	and t3, t3, zero	# t3 = 0
loop_j:	
	beq t2, t1, exit_j	# t2 == t1
	slli t3, t1, 2		# t3 = t1 * 4
	add t3, a2, t3 
	lw t5, 0(t3)
	slli t4, t2, 2		# t4 = t2 * 4
	add t4, a2, t4
	lw t6, 0(t4)
	blt t5, t6, smaller
	sw t6, 0(t3)
	sw t5, 0(t4)
smaller:
	addi t2, t2, 1
	jal zero, loop_j
exit_j:
	addi t1, t1, -1
	jal zero, loop_i	  	  
end:
	lw a5,0x18(a0)
	sub a1, a5, a4
loop3:	
	lw t1, 0x08(a0)
	beq t1, zero, loop3
	sw a1, 0x0c(a0)
	#addi a1,zero,1
	#and t1, t1, zero
	addi t1, zero, 0
	
	la a2, array
	la a3, n
	lw t2, 0(a3)
	addi t3, zero, 1
	lw t5, 0(a2)
normal:	
	beq t3, t2, back_end
	add t4, t5, zero 
	slli t6, t3, 2
	add t6, t6, a2
	lw t5, 0(t6)
	addi t3, t3, 1
	blt t5, t4, normal
	beq t5, t4 ,normal
	addi t1, t1, 1
	jal zero, back_end
	

back_end:
	sw t1,0(a0)
final:
	jal zero, final
		
	
.data
#mark:
	#.word 0x0241
#mmio:
#	.word 0x7f00
n:
	.word 0
array:
	


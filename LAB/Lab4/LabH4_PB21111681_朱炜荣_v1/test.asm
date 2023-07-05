.data
test_add:
	.word 4, 8, 12
test_addi:
	.word 2, 7
test_sub:
	.word 4, 9, -5
test_auipc:
	.word 4096
test_lui:
	.word 8192
test_and:
	.word 4095, 5
test_or:
	.word 5, 6, 7
test_xor:
	.word 5, 6, 3
test_slli:
	.word 4, 16
test_srli:
	.word -32768, 2147467264
test_srai:
	.word -32768, -16384
test_lw:
	.word 0
test_sw:
	.word 23
test_blt:
	.word 1, 2, -1
test_bltu:
	.word 1, 2, -1

.text
start:
	auipc t6, 1
	beq zero, zero, pass_beq	#test_beq
	addi t5, zero, 1
pass_beq:
	jal zero, pass_jal		#test_jal
	beq zero, zero, wrong_answer
pass_jal:	
	
	lw t1, test_lw			#test_lw
	beq t1, zero, pass_lw
	jal zero, wrong_answer
pass_lw:	
	la t0, test_add 		#test_add
	lw t1, (t0)
	lw t2, 4(t0)
	lw t3, 8(t0)
	add t4, t1, t2
	beq t3, t4, pass_add
	jal zero, wrong_answer
pass_add:
	la t0, test_addi		#test_addi
	lw t1, (t0)
	lw t2, 4(t0)
	addi t1 , t1, 5
	beq t1, t2, pass_addi
	jal zero, wrong_answer
pass_addi:
	la t0, test_sub 		#test_sub
	lw t1, (t0)
	lw t2, 4(t0)
	lw t3, 8(t0)
	sub t4, t1, t2
	beq t3, t4, pass_sub
	jal zero, wrong_answer
pass_sub:
	lw t1, test_auipc		#test_auipc
	beq t6, t1, pass_auipc	
	jal zero, wrong_answer
pass_auipc:
	lw t1, test_lui			#test_lui
	lui t2, 2
	beq t1, t2, pass_lui
	jal zero,wrong_answer
pass_lui:
	la t0, test_and			#test_and
	lw t1, (t0)
	lw t2, 4(t0)
	and t3, t1, t2
	addi t4, zero, 5
	beq t3, t4, pass_and
	jal zero, wrong_answer
pass_and:
	la t0, test_or 			#test_or
	lw t1, (t0)
	lw t2, 4(t0)
	lw t3, 8(t0)
	or t4, t1, t2
	beq t3, t4, pass_or
	jal zero, wrong_answer
pass_or:
	la t0, test_xor 		#test_xor
	lw t1, (t0)
	lw t2, 4(t0)
	lw t3, 8(t0)
	xor t4, t1, t2
	beq t3, t4, pass_xor
	jal zero, wrong_answer
pass_xor:
	la t0, test_slli		#test_slli
	lw t1, (t0)
	lw t2, 4(t0)
	slli t1 , t1, 2
	beq t1, t2, pass_slli
	jal zero, wrong_answer
pass_slli:
	la t0, test_srli		#test_srli
	lw t1, (t0)
	lw t2, 4(t0)
	srli t1 , t1, 1
	beq t1, t2, pass_srli
	jal zero, wrong_answer
pass_srli:
	la t0, test_srai		#test_srai
	lw t1, (t0)
	lw t2, 4(t0)
	srai t1 , t1, 1
	beq t1, t2, pass_srai
	jal zero, wrong_answer
pass_srai:
	la t0, test_sw			#test_sw
	lw t1, (t0)
	addi t2, t1,1
	sw t2, (t0)
	lw t3, (t0)
	beq t1, t3, wrong_answer
	 
	la t0, test_blt			#test_blt
	lw t1, (t0)
	lw t2, 4(t0)
	blt t2, t1, wrong_answer
	lw t3, 8(t0)
	blt t3, t1, pass_blt
	jal zero, wrong_answer
pass_blt:
	la t0, test_bltu		#test_bltu
	lw t1, (t0)
	lw t2, 4(t0)
	bltu t2, t1, wrong_answer
	lw t3, 8(t0)
	bltu t3, t1, wrong_answer


	la t0, test_jalr
	auipc t6, 0
	jalr t1, t0, 0
						
right_answer:
#	la a0, str2
#        li a7, 4
#        ecall
#	li a7, 10
#        ecall
 	addi a1, zero, 1
 	and t1, t1, zero

 	lw a4, 0x00003f20
 	sw a1, 0x00003f00,t1
back_right:
        jal t1, back_right
        

test_jalr:
	addi t1, t1, -8
	beq t1, t6, pass_jalr
	jal zero, wrong_answer
pass_jalr:
	jal zero, right_answer
	
wrong_answer:
#	la a0, str1
#       li a7, 4
#        ecall
#	li a7, 10
#        ecall
        and t6, t6, zero
wrong_back:
        jal zero, wrong_back
        beq zero, zero, wrong_back


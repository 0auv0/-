// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri Mar 31 17:18:39 2023
// Host        : LAPTOP-OQP20KEP running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/COD/ALU/ALU.sim/sim_1/synth/func/xsim/test_banch_func_synth.v
// Design      : ALU
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* WIDTH = "32" *) 
(* NotValidForBitStream *)
module ALU
   (a,
    b,
    f,
    y,
    t);
  input [31:0]a;
  input [31:0]b;
  input [2:0]f;
  output [31:0]y;
  output [2:0]t;

  wire [31:0]a;
  wire [31:0]a_IBUF;
  wire [31:0]b;
  wire [31:0]b_IBUF;
  wire [31:0]data0;
  wire [2:0]f;
  wire [2:0]f_IBUF;
  wire [0:0]p_0_out;
  wire [2:0]t;
  wire t1;
  wire t2;
  wire [2:0]t_OBUF;
  wire \t_OBUF[2]_inst_i_10_n_0 ;
  wire \t_OBUF[2]_inst_i_11_n_0 ;
  wire \t_OBUF[2]_inst_i_12_n_0 ;
  wire \t_OBUF[2]_inst_i_13_n_0 ;
  wire \t_OBUF[2]_inst_i_14_n_0 ;
  wire \t_OBUF[2]_inst_i_15_n_0 ;
  wire \t_OBUF[2]_inst_i_16_n_0 ;
  wire \t_OBUF[2]_inst_i_17_n_0 ;
  wire \t_OBUF[2]_inst_i_18_n_0 ;
  wire \t_OBUF[2]_inst_i_18_n_1 ;
  wire \t_OBUF[2]_inst_i_18_n_2 ;
  wire \t_OBUF[2]_inst_i_18_n_3 ;
  wire \t_OBUF[2]_inst_i_19_n_0 ;
  wire \t_OBUF[2]_inst_i_20_n_0 ;
  wire \t_OBUF[2]_inst_i_21_n_0 ;
  wire \t_OBUF[2]_inst_i_22_n_0 ;
  wire \t_OBUF[2]_inst_i_23_n_0 ;
  wire \t_OBUF[2]_inst_i_23_n_1 ;
  wire \t_OBUF[2]_inst_i_23_n_2 ;
  wire \t_OBUF[2]_inst_i_23_n_3 ;
  wire \t_OBUF[2]_inst_i_24_n_0 ;
  wire \t_OBUF[2]_inst_i_25_n_0 ;
  wire \t_OBUF[2]_inst_i_26_n_0 ;
  wire \t_OBUF[2]_inst_i_27_n_0 ;
  wire \t_OBUF[2]_inst_i_28_n_0 ;
  wire \t_OBUF[2]_inst_i_29_n_0 ;
  wire \t_OBUF[2]_inst_i_2_n_0 ;
  wire \t_OBUF[2]_inst_i_30_n_0 ;
  wire \t_OBUF[2]_inst_i_31_n_0 ;
  wire \t_OBUF[2]_inst_i_32_n_0 ;
  wire \t_OBUF[2]_inst_i_33_n_0 ;
  wire \t_OBUF[2]_inst_i_34_n_0 ;
  wire \t_OBUF[2]_inst_i_35_n_0 ;
  wire \t_OBUF[2]_inst_i_36_n_0 ;
  wire \t_OBUF[2]_inst_i_36_n_1 ;
  wire \t_OBUF[2]_inst_i_36_n_2 ;
  wire \t_OBUF[2]_inst_i_36_n_3 ;
  wire \t_OBUF[2]_inst_i_37_n_0 ;
  wire \t_OBUF[2]_inst_i_38_n_0 ;
  wire \t_OBUF[2]_inst_i_39_n_0 ;
  wire \t_OBUF[2]_inst_i_3_n_2 ;
  wire \t_OBUF[2]_inst_i_3_n_3 ;
  wire \t_OBUF[2]_inst_i_40_n_0 ;
  wire \t_OBUF[2]_inst_i_41_n_0 ;
  wire \t_OBUF[2]_inst_i_42_n_0 ;
  wire \t_OBUF[2]_inst_i_43_n_0 ;
  wire \t_OBUF[2]_inst_i_44_n_0 ;
  wire \t_OBUF[2]_inst_i_45_n_0 ;
  wire \t_OBUF[2]_inst_i_46_n_0 ;
  wire \t_OBUF[2]_inst_i_47_n_0 ;
  wire \t_OBUF[2]_inst_i_48_n_0 ;
  wire \t_OBUF[2]_inst_i_49_n_0 ;
  wire \t_OBUF[2]_inst_i_4_n_1 ;
  wire \t_OBUF[2]_inst_i_4_n_2 ;
  wire \t_OBUF[2]_inst_i_4_n_3 ;
  wire \t_OBUF[2]_inst_i_50_n_0 ;
  wire \t_OBUF[2]_inst_i_51_n_0 ;
  wire \t_OBUF[2]_inst_i_52_n_0 ;
  wire \t_OBUF[2]_inst_i_5_n_0 ;
  wire \t_OBUF[2]_inst_i_5_n_1 ;
  wire \t_OBUF[2]_inst_i_5_n_2 ;
  wire \t_OBUF[2]_inst_i_5_n_3 ;
  wire \t_OBUF[2]_inst_i_6_n_0 ;
  wire \t_OBUF[2]_inst_i_7_n_0 ;
  wire \t_OBUF[2]_inst_i_8_n_0 ;
  wire \t_OBUF[2]_inst_i_9_n_0 ;
  wire \t_OBUF[2]_inst_i_9_n_1 ;
  wire \t_OBUF[2]_inst_i_9_n_2 ;
  wire \t_OBUF[2]_inst_i_9_n_3 ;
  wire [31:0]y;
  wire [31:0]y_OBUF;
  wire \y_OBUF[0]_inst_i_2_n_0 ;
  wire \y_OBUF[0]_inst_i_3_n_0 ;
  wire \y_OBUF[0]_inst_i_4_n_0 ;
  wire \y_OBUF[0]_inst_i_5_n_0 ;
  wire \y_OBUF[0]_inst_i_6_n_0 ;
  wire \y_OBUF[10]_inst_i_2_n_0 ;
  wire \y_OBUF[10]_inst_i_3_n_0 ;
  wire \y_OBUF[10]_inst_i_4_n_0 ;
  wire \y_OBUF[10]_inst_i_5_n_0 ;
  wire \y_OBUF[10]_inst_i_6_n_0 ;
  wire \y_OBUF[11]_inst_i_10_n_0 ;
  wire \y_OBUF[11]_inst_i_11_n_0 ;
  wire \y_OBUF[11]_inst_i_12_n_0 ;
  wire \y_OBUF[11]_inst_i_2_n_0 ;
  wire \y_OBUF[11]_inst_i_3_n_0 ;
  wire \y_OBUF[11]_inst_i_4_n_0 ;
  wire \y_OBUF[11]_inst_i_5_n_0 ;
  wire \y_OBUF[11]_inst_i_5_n_1 ;
  wire \y_OBUF[11]_inst_i_5_n_2 ;
  wire \y_OBUF[11]_inst_i_5_n_3 ;
  wire \y_OBUF[11]_inst_i_6_n_0 ;
  wire \y_OBUF[11]_inst_i_7_n_0 ;
  wire \y_OBUF[11]_inst_i_8_n_0 ;
  wire \y_OBUF[11]_inst_i_9_n_0 ;
  wire \y_OBUF[12]_inst_i_2_n_0 ;
  wire \y_OBUF[12]_inst_i_3_n_0 ;
  wire \y_OBUF[12]_inst_i_4_n_0 ;
  wire \y_OBUF[12]_inst_i_5_n_0 ;
  wire \y_OBUF[12]_inst_i_6_n_0 ;
  wire \y_OBUF[12]_inst_i_7_n_0 ;
  wire \y_OBUF[13]_inst_i_2_n_0 ;
  wire \y_OBUF[13]_inst_i_3_n_0 ;
  wire \y_OBUF[13]_inst_i_4_n_0 ;
  wire \y_OBUF[13]_inst_i_5_n_0 ;
  wire \y_OBUF[13]_inst_i_6_n_0 ;
  wire \y_OBUF[13]_inst_i_7_n_0 ;
  wire \y_OBUF[14]_inst_i_2_n_0 ;
  wire \y_OBUF[14]_inst_i_3_n_0 ;
  wire \y_OBUF[14]_inst_i_4_n_0 ;
  wire \y_OBUF[14]_inst_i_5_n_0 ;
  wire \y_OBUF[14]_inst_i_6_n_0 ;
  wire \y_OBUF[14]_inst_i_7_n_0 ;
  wire \y_OBUF[15]_inst_i_10_n_0 ;
  wire \y_OBUF[15]_inst_i_11_n_0 ;
  wire \y_OBUF[15]_inst_i_12_n_0 ;
  wire \y_OBUF[15]_inst_i_13_n_0 ;
  wire \y_OBUF[15]_inst_i_14_n_0 ;
  wire \y_OBUF[15]_inst_i_15_n_0 ;
  wire \y_OBUF[15]_inst_i_16_n_0 ;
  wire \y_OBUF[15]_inst_i_17_n_0 ;
  wire \y_OBUF[15]_inst_i_18_n_0 ;
  wire \y_OBUF[15]_inst_i_19_n_0 ;
  wire \y_OBUF[15]_inst_i_20_n_0 ;
  wire \y_OBUF[15]_inst_i_2_n_0 ;
  wire \y_OBUF[15]_inst_i_3_n_0 ;
  wire \y_OBUF[15]_inst_i_4_n_0 ;
  wire \y_OBUF[15]_inst_i_5_n_0 ;
  wire \y_OBUF[15]_inst_i_6_n_0 ;
  wire \y_OBUF[15]_inst_i_6_n_1 ;
  wire \y_OBUF[15]_inst_i_6_n_2 ;
  wire \y_OBUF[15]_inst_i_6_n_3 ;
  wire \y_OBUF[15]_inst_i_7_n_0 ;
  wire \y_OBUF[15]_inst_i_8_n_0 ;
  wire \y_OBUF[15]_inst_i_9_n_0 ;
  wire \y_OBUF[16]_inst_i_2_n_0 ;
  wire \y_OBUF[16]_inst_i_3_n_0 ;
  wire \y_OBUF[16]_inst_i_4_n_0 ;
  wire \y_OBUF[16]_inst_i_5_n_0 ;
  wire \y_OBUF[17]_inst_i_2_n_0 ;
  wire \y_OBUF[17]_inst_i_3_n_0 ;
  wire \y_OBUF[17]_inst_i_4_n_0 ;
  wire \y_OBUF[17]_inst_i_5_n_0 ;
  wire \y_OBUF[17]_inst_i_6_n_0 ;
  wire \y_OBUF[18]_inst_i_2_n_0 ;
  wire \y_OBUF[18]_inst_i_3_n_0 ;
  wire \y_OBUF[18]_inst_i_4_n_0 ;
  wire \y_OBUF[18]_inst_i_5_n_0 ;
  wire \y_OBUF[18]_inst_i_6_n_0 ;
  wire \y_OBUF[18]_inst_i_7_n_0 ;
  wire \y_OBUF[19]_inst_i_10_n_0 ;
  wire \y_OBUF[19]_inst_i_11_n_0 ;
  wire \y_OBUF[19]_inst_i_12_n_0 ;
  wire \y_OBUF[19]_inst_i_2_n_0 ;
  wire \y_OBUF[19]_inst_i_3_n_0 ;
  wire \y_OBUF[19]_inst_i_4_n_0 ;
  wire \y_OBUF[19]_inst_i_5_n_0 ;
  wire \y_OBUF[19]_inst_i_5_n_1 ;
  wire \y_OBUF[19]_inst_i_5_n_2 ;
  wire \y_OBUF[19]_inst_i_5_n_3 ;
  wire \y_OBUF[19]_inst_i_6_n_0 ;
  wire \y_OBUF[19]_inst_i_7_n_0 ;
  wire \y_OBUF[19]_inst_i_8_n_0 ;
  wire \y_OBUF[19]_inst_i_9_n_0 ;
  wire \y_OBUF[1]_inst_i_10_n_0 ;
  wire \y_OBUF[1]_inst_i_11_n_0 ;
  wire \y_OBUF[1]_inst_i_12_n_0 ;
  wire \y_OBUF[1]_inst_i_2_n_0 ;
  wire \y_OBUF[1]_inst_i_3_n_0 ;
  wire \y_OBUF[1]_inst_i_4_n_0 ;
  wire \y_OBUF[1]_inst_i_5_n_0 ;
  wire \y_OBUF[1]_inst_i_6_n_0 ;
  wire \y_OBUF[1]_inst_i_7_n_0 ;
  wire \y_OBUF[1]_inst_i_8_n_0 ;
  wire \y_OBUF[1]_inst_i_9_n_0 ;
  wire \y_OBUF[20]_inst_i_2_n_0 ;
  wire \y_OBUF[20]_inst_i_3_n_0 ;
  wire \y_OBUF[20]_inst_i_4_n_0 ;
  wire \y_OBUF[20]_inst_i_5_n_0 ;
  wire \y_OBUF[20]_inst_i_6_n_0 ;
  wire \y_OBUF[20]_inst_i_7_n_0 ;
  wire \y_OBUF[21]_inst_i_2_n_0 ;
  wire \y_OBUF[21]_inst_i_3_n_0 ;
  wire \y_OBUF[21]_inst_i_4_n_0 ;
  wire \y_OBUF[21]_inst_i_5_n_0 ;
  wire \y_OBUF[21]_inst_i_6_n_0 ;
  wire \y_OBUF[21]_inst_i_7_n_0 ;
  wire \y_OBUF[22]_inst_i_2_n_0 ;
  wire \y_OBUF[22]_inst_i_3_n_0 ;
  wire \y_OBUF[22]_inst_i_4_n_0 ;
  wire \y_OBUF[22]_inst_i_5_n_0 ;
  wire \y_OBUF[22]_inst_i_6_n_0 ;
  wire \y_OBUF[23]_inst_i_10_n_0 ;
  wire \y_OBUF[23]_inst_i_11_n_0 ;
  wire \y_OBUF[23]_inst_i_12_n_0 ;
  wire \y_OBUF[23]_inst_i_13_n_0 ;
  wire \y_OBUF[23]_inst_i_2_n_0 ;
  wire \y_OBUF[23]_inst_i_3_n_0 ;
  wire \y_OBUF[23]_inst_i_4_n_0 ;
  wire \y_OBUF[23]_inst_i_5_n_0 ;
  wire \y_OBUF[23]_inst_i_6_n_0 ;
  wire \y_OBUF[23]_inst_i_6_n_1 ;
  wire \y_OBUF[23]_inst_i_6_n_2 ;
  wire \y_OBUF[23]_inst_i_6_n_3 ;
  wire \y_OBUF[23]_inst_i_7_n_0 ;
  wire \y_OBUF[23]_inst_i_8_n_0 ;
  wire \y_OBUF[23]_inst_i_9_n_0 ;
  wire \y_OBUF[24]_inst_i_2_n_0 ;
  wire \y_OBUF[24]_inst_i_3_n_0 ;
  wire \y_OBUF[24]_inst_i_4_n_0 ;
  wire \y_OBUF[24]_inst_i_5_n_0 ;
  wire \y_OBUF[24]_inst_i_6_n_0 ;
  wire \y_OBUF[24]_inst_i_7_n_0 ;
  wire \y_OBUF[24]_inst_i_8_n_0 ;
  wire \y_OBUF[24]_inst_i_9_n_0 ;
  wire \y_OBUF[25]_inst_i_2_n_0 ;
  wire \y_OBUF[25]_inst_i_3_n_0 ;
  wire \y_OBUF[25]_inst_i_4_n_0 ;
  wire \y_OBUF[25]_inst_i_5_n_0 ;
  wire \y_OBUF[25]_inst_i_6_n_0 ;
  wire \y_OBUF[25]_inst_i_7_n_0 ;
  wire \y_OBUF[25]_inst_i_8_n_0 ;
  wire \y_OBUF[26]_inst_i_10_n_0 ;
  wire \y_OBUF[26]_inst_i_2_n_0 ;
  wire \y_OBUF[26]_inst_i_3_n_0 ;
  wire \y_OBUF[26]_inst_i_4_n_0 ;
  wire \y_OBUF[26]_inst_i_5_n_0 ;
  wire \y_OBUF[26]_inst_i_6_n_0 ;
  wire \y_OBUF[26]_inst_i_7_n_0 ;
  wire \y_OBUF[26]_inst_i_8_n_0 ;
  wire \y_OBUF[26]_inst_i_9_n_0 ;
  wire \y_OBUF[27]_inst_i_10_n_0 ;
  wire \y_OBUF[27]_inst_i_11_n_0 ;
  wire \y_OBUF[27]_inst_i_12_n_0 ;
  wire \y_OBUF[27]_inst_i_13_n_0 ;
  wire \y_OBUF[27]_inst_i_14_n_0 ;
  wire \y_OBUF[27]_inst_i_2_n_0 ;
  wire \y_OBUF[27]_inst_i_3_n_0 ;
  wire \y_OBUF[27]_inst_i_4_n_0 ;
  wire \y_OBUF[27]_inst_i_5_n_0 ;
  wire \y_OBUF[27]_inst_i_6_n_0 ;
  wire \y_OBUF[27]_inst_i_7_n_0 ;
  wire \y_OBUF[27]_inst_i_7_n_1 ;
  wire \y_OBUF[27]_inst_i_7_n_2 ;
  wire \y_OBUF[27]_inst_i_7_n_3 ;
  wire \y_OBUF[27]_inst_i_8_n_0 ;
  wire \y_OBUF[27]_inst_i_9_n_0 ;
  wire \y_OBUF[28]_inst_i_2_n_0 ;
  wire \y_OBUF[28]_inst_i_3_n_0 ;
  wire \y_OBUF[28]_inst_i_4_n_0 ;
  wire \y_OBUF[28]_inst_i_5_n_0 ;
  wire \y_OBUF[28]_inst_i_6_n_0 ;
  wire \y_OBUF[28]_inst_i_7_n_0 ;
  wire \y_OBUF[29]_inst_i_2_n_0 ;
  wire \y_OBUF[29]_inst_i_3_n_0 ;
  wire \y_OBUF[29]_inst_i_4_n_0 ;
  wire \y_OBUF[29]_inst_i_5_n_0 ;
  wire \y_OBUF[29]_inst_i_6_n_0 ;
  wire \y_OBUF[29]_inst_i_7_n_0 ;
  wire \y_OBUF[29]_inst_i_8_n_0 ;
  wire \y_OBUF[29]_inst_i_9_n_0 ;
  wire \y_OBUF[2]_inst_i_2_n_0 ;
  wire \y_OBUF[2]_inst_i_3_n_0 ;
  wire \y_OBUF[2]_inst_i_4_n_0 ;
  wire \y_OBUF[2]_inst_i_5_n_0 ;
  wire \y_OBUF[2]_inst_i_6_n_0 ;
  wire \y_OBUF[2]_inst_i_7_n_0 ;
  wire \y_OBUF[2]_inst_i_8_n_0 ;
  wire \y_OBUF[30]_inst_i_2_n_0 ;
  wire \y_OBUF[30]_inst_i_3_n_0 ;
  wire \y_OBUF[30]_inst_i_4_n_0 ;
  wire \y_OBUF[30]_inst_i_5_n_0 ;
  wire \y_OBUF[30]_inst_i_6_n_0 ;
  wire \y_OBUF[30]_inst_i_7_n_0 ;
  wire \y_OBUF[30]_inst_i_8_n_0 ;
  wire \y_OBUF[30]_inst_i_9_n_0 ;
  wire \y_OBUF[31]_inst_i_10_n_0 ;
  wire \y_OBUF[31]_inst_i_11_n_0 ;
  wire \y_OBUF[31]_inst_i_12_n_0 ;
  wire \y_OBUF[31]_inst_i_13_n_0 ;
  wire \y_OBUF[31]_inst_i_14_n_0 ;
  wire \y_OBUF[31]_inst_i_15_n_0 ;
  wire \y_OBUF[31]_inst_i_16_n_0 ;
  wire \y_OBUF[31]_inst_i_17_n_0 ;
  wire \y_OBUF[31]_inst_i_18_n_0 ;
  wire \y_OBUF[31]_inst_i_19_n_0 ;
  wire \y_OBUF[31]_inst_i_20_n_0 ;
  wire \y_OBUF[31]_inst_i_21_n_0 ;
  wire \y_OBUF[31]_inst_i_22_n_0 ;
  wire \y_OBUF[31]_inst_i_23_n_0 ;
  wire \y_OBUF[31]_inst_i_24_n_0 ;
  wire \y_OBUF[31]_inst_i_25_n_0 ;
  wire \y_OBUF[31]_inst_i_26_n_0 ;
  wire \y_OBUF[31]_inst_i_2_n_0 ;
  wire \y_OBUF[31]_inst_i_3_n_0 ;
  wire \y_OBUF[31]_inst_i_4_n_0 ;
  wire \y_OBUF[31]_inst_i_5_n_0 ;
  wire \y_OBUF[31]_inst_i_6_n_0 ;
  wire \y_OBUF[31]_inst_i_7_n_0 ;
  wire \y_OBUF[31]_inst_i_8_n_1 ;
  wire \y_OBUF[31]_inst_i_8_n_2 ;
  wire \y_OBUF[31]_inst_i_8_n_3 ;
  wire \y_OBUF[31]_inst_i_9_n_0 ;
  wire \y_OBUF[3]_inst_i_10_n_0 ;
  wire \y_OBUF[3]_inst_i_11_n_0 ;
  wire \y_OBUF[3]_inst_i_12_n_0 ;
  wire \y_OBUF[3]_inst_i_13_n_0 ;
  wire \y_OBUF[3]_inst_i_14_n_0 ;
  wire \y_OBUF[3]_inst_i_16_n_0 ;
  wire \y_OBUF[3]_inst_i_17_n_0 ;
  wire \y_OBUF[3]_inst_i_18_n_0 ;
  wire \y_OBUF[3]_inst_i_19_n_0 ;
  wire \y_OBUF[3]_inst_i_20_n_0 ;
  wire \y_OBUF[3]_inst_i_21_n_0 ;
  wire \y_OBUF[3]_inst_i_2_n_0 ;
  wire \y_OBUF[3]_inst_i_3_n_0 ;
  wire \y_OBUF[3]_inst_i_4_n_0 ;
  wire \y_OBUF[3]_inst_i_5_n_0 ;
  wire \y_OBUF[3]_inst_i_6_n_0 ;
  wire \y_OBUF[3]_inst_i_6_n_1 ;
  wire \y_OBUF[3]_inst_i_6_n_2 ;
  wire \y_OBUF[3]_inst_i_6_n_3 ;
  wire \y_OBUF[3]_inst_i_7_n_0 ;
  wire \y_OBUF[3]_inst_i_8_n_0 ;
  wire \y_OBUF[3]_inst_i_9_n_0 ;
  wire \y_OBUF[4]_inst_i_2_n_0 ;
  wire \y_OBUF[4]_inst_i_3_n_0 ;
  wire \y_OBUF[4]_inst_i_4_n_0 ;
  wire \y_OBUF[5]_inst_i_2_n_0 ;
  wire \y_OBUF[5]_inst_i_3_n_0 ;
  wire \y_OBUF[5]_inst_i_4_n_0 ;
  wire \y_OBUF[5]_inst_i_5_n_0 ;
  wire \y_OBUF[6]_inst_i_2_n_0 ;
  wire \y_OBUF[6]_inst_i_3_n_0 ;
  wire \y_OBUF[6]_inst_i_4_n_0 ;
  wire \y_OBUF[6]_inst_i_5_n_0 ;
  wire \y_OBUF[7]_inst_i_10_n_0 ;
  wire \y_OBUF[7]_inst_i_11_n_0 ;
  wire \y_OBUF[7]_inst_i_12_n_0 ;
  wire \y_OBUF[7]_inst_i_2_n_0 ;
  wire \y_OBUF[7]_inst_i_3_n_0 ;
  wire \y_OBUF[7]_inst_i_4_n_0 ;
  wire \y_OBUF[7]_inst_i_5_n_0 ;
  wire \y_OBUF[7]_inst_i_5_n_1 ;
  wire \y_OBUF[7]_inst_i_5_n_2 ;
  wire \y_OBUF[7]_inst_i_5_n_3 ;
  wire \y_OBUF[7]_inst_i_6_n_0 ;
  wire \y_OBUF[7]_inst_i_7_n_0 ;
  wire \y_OBUF[7]_inst_i_8_n_0 ;
  wire \y_OBUF[7]_inst_i_9_n_0 ;
  wire \y_OBUF[8]_inst_i_2_n_0 ;
  wire \y_OBUF[8]_inst_i_3_n_0 ;
  wire \y_OBUF[8]_inst_i_4_n_0 ;
  wire \y_OBUF[8]_inst_i_5_n_0 ;
  wire \y_OBUF[8]_inst_i_6_n_0 ;
  wire \y_OBUF[9]_inst_i_2_n_0 ;
  wire \y_OBUF[9]_inst_i_3_n_0 ;
  wire \y_OBUF[9]_inst_i_4_n_0 ;
  wire \y_OBUF[9]_inst_i_5_n_0 ;
  wire \y_OBUF[9]_inst_i_6_n_0 ;
  wire [3:0]\NLW_t_OBUF[2]_inst_i_18_O_UNCONNECTED ;
  wire [3:0]\NLW_t_OBUF[2]_inst_i_23_O_UNCONNECTED ;
  wire [3:3]\NLW_t_OBUF[2]_inst_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_t_OBUF[2]_inst_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_t_OBUF[2]_inst_i_36_O_UNCONNECTED ;
  wire [3:0]\NLW_t_OBUF[2]_inst_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_t_OBUF[2]_inst_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_t_OBUF[2]_inst_i_9_O_UNCONNECTED ;
  wire [3:3]\NLW_y_OBUF[31]_inst_i_8_CO_UNCONNECTED ;

  IBUF \a_IBUF[0]_inst 
       (.I(a[0]),
        .O(a_IBUF[0]));
  IBUF \a_IBUF[10]_inst 
       (.I(a[10]),
        .O(a_IBUF[10]));
  IBUF \a_IBUF[11]_inst 
       (.I(a[11]),
        .O(a_IBUF[11]));
  IBUF \a_IBUF[12]_inst 
       (.I(a[12]),
        .O(a_IBUF[12]));
  IBUF \a_IBUF[13]_inst 
       (.I(a[13]),
        .O(a_IBUF[13]));
  IBUF \a_IBUF[14]_inst 
       (.I(a[14]),
        .O(a_IBUF[14]));
  IBUF \a_IBUF[15]_inst 
       (.I(a[15]),
        .O(a_IBUF[15]));
  IBUF \a_IBUF[16]_inst 
       (.I(a[16]),
        .O(a_IBUF[16]));
  IBUF \a_IBUF[17]_inst 
       (.I(a[17]),
        .O(a_IBUF[17]));
  IBUF \a_IBUF[18]_inst 
       (.I(a[18]),
        .O(a_IBUF[18]));
  IBUF \a_IBUF[19]_inst 
       (.I(a[19]),
        .O(a_IBUF[19]));
  IBUF \a_IBUF[1]_inst 
       (.I(a[1]),
        .O(a_IBUF[1]));
  IBUF \a_IBUF[20]_inst 
       (.I(a[20]),
        .O(a_IBUF[20]));
  IBUF \a_IBUF[21]_inst 
       (.I(a[21]),
        .O(a_IBUF[21]));
  IBUF \a_IBUF[22]_inst 
       (.I(a[22]),
        .O(a_IBUF[22]));
  IBUF \a_IBUF[23]_inst 
       (.I(a[23]),
        .O(a_IBUF[23]));
  IBUF \a_IBUF[24]_inst 
       (.I(a[24]),
        .O(a_IBUF[24]));
  IBUF \a_IBUF[25]_inst 
       (.I(a[25]),
        .O(a_IBUF[25]));
  IBUF \a_IBUF[26]_inst 
       (.I(a[26]),
        .O(a_IBUF[26]));
  IBUF \a_IBUF[27]_inst 
       (.I(a[27]),
        .O(a_IBUF[27]));
  IBUF \a_IBUF[28]_inst 
       (.I(a[28]),
        .O(a_IBUF[28]));
  IBUF \a_IBUF[29]_inst 
       (.I(a[29]),
        .O(a_IBUF[29]));
  IBUF \a_IBUF[2]_inst 
       (.I(a[2]),
        .O(a_IBUF[2]));
  IBUF \a_IBUF[30]_inst 
       (.I(a[30]),
        .O(a_IBUF[30]));
  IBUF \a_IBUF[31]_inst 
       (.I(a[31]),
        .O(a_IBUF[31]));
  IBUF \a_IBUF[3]_inst 
       (.I(a[3]),
        .O(a_IBUF[3]));
  IBUF \a_IBUF[4]_inst 
       (.I(a[4]),
        .O(a_IBUF[4]));
  IBUF \a_IBUF[5]_inst 
       (.I(a[5]),
        .O(a_IBUF[5]));
  IBUF \a_IBUF[6]_inst 
       (.I(a[6]),
        .O(a_IBUF[6]));
  IBUF \a_IBUF[7]_inst 
       (.I(a[7]),
        .O(a_IBUF[7]));
  IBUF \a_IBUF[8]_inst 
       (.I(a[8]),
        .O(a_IBUF[8]));
  IBUF \a_IBUF[9]_inst 
       (.I(a[9]),
        .O(a_IBUF[9]));
  IBUF \b_IBUF[0]_inst 
       (.I(b[0]),
        .O(b_IBUF[0]));
  IBUF \b_IBUF[10]_inst 
       (.I(b[10]),
        .O(b_IBUF[10]));
  IBUF \b_IBUF[11]_inst 
       (.I(b[11]),
        .O(b_IBUF[11]));
  IBUF \b_IBUF[12]_inst 
       (.I(b[12]),
        .O(b_IBUF[12]));
  IBUF \b_IBUF[13]_inst 
       (.I(b[13]),
        .O(b_IBUF[13]));
  IBUF \b_IBUF[14]_inst 
       (.I(b[14]),
        .O(b_IBUF[14]));
  IBUF \b_IBUF[15]_inst 
       (.I(b[15]),
        .O(b_IBUF[15]));
  IBUF \b_IBUF[16]_inst 
       (.I(b[16]),
        .O(b_IBUF[16]));
  IBUF \b_IBUF[17]_inst 
       (.I(b[17]),
        .O(b_IBUF[17]));
  IBUF \b_IBUF[18]_inst 
       (.I(b[18]),
        .O(b_IBUF[18]));
  IBUF \b_IBUF[19]_inst 
       (.I(b[19]),
        .O(b_IBUF[19]));
  IBUF \b_IBUF[1]_inst 
       (.I(b[1]),
        .O(b_IBUF[1]));
  IBUF \b_IBUF[20]_inst 
       (.I(b[20]),
        .O(b_IBUF[20]));
  IBUF \b_IBUF[21]_inst 
       (.I(b[21]),
        .O(b_IBUF[21]));
  IBUF \b_IBUF[22]_inst 
       (.I(b[22]),
        .O(b_IBUF[22]));
  IBUF \b_IBUF[23]_inst 
       (.I(b[23]),
        .O(b_IBUF[23]));
  IBUF \b_IBUF[24]_inst 
       (.I(b[24]),
        .O(b_IBUF[24]));
  IBUF \b_IBUF[25]_inst 
       (.I(b[25]),
        .O(b_IBUF[25]));
  IBUF \b_IBUF[26]_inst 
       (.I(b[26]),
        .O(b_IBUF[26]));
  IBUF \b_IBUF[27]_inst 
       (.I(b[27]),
        .O(b_IBUF[27]));
  IBUF \b_IBUF[28]_inst 
       (.I(b[28]),
        .O(b_IBUF[28]));
  IBUF \b_IBUF[29]_inst 
       (.I(b[29]),
        .O(b_IBUF[29]));
  IBUF \b_IBUF[2]_inst 
       (.I(b[2]),
        .O(b_IBUF[2]));
  IBUF \b_IBUF[30]_inst 
       (.I(b[30]),
        .O(b_IBUF[30]));
  IBUF \b_IBUF[31]_inst 
       (.I(b[31]),
        .O(b_IBUF[31]));
  IBUF \b_IBUF[3]_inst 
       (.I(b[3]),
        .O(b_IBUF[3]));
  IBUF \b_IBUF[4]_inst 
       (.I(b[4]),
        .O(b_IBUF[4]));
  IBUF \b_IBUF[5]_inst 
       (.I(b[5]),
        .O(b_IBUF[5]));
  IBUF \b_IBUF[6]_inst 
       (.I(b[6]),
        .O(b_IBUF[6]));
  IBUF \b_IBUF[7]_inst 
       (.I(b[7]),
        .O(b_IBUF[7]));
  IBUF \b_IBUF[8]_inst 
       (.I(b[8]),
        .O(b_IBUF[8]));
  IBUF \b_IBUF[9]_inst 
       (.I(b[9]),
        .O(b_IBUF[9]));
  IBUF \f_IBUF[0]_inst 
       (.I(f[0]),
        .O(f_IBUF[0]));
  IBUF \f_IBUF[1]_inst 
       (.I(f[1]),
        .O(f_IBUF[1]));
  IBUF \f_IBUF[2]_inst 
       (.I(f[2]),
        .O(f_IBUF[2]));
  OBUF \t_OBUF[0]_inst 
       (.I(t_OBUF[0]),
        .O(t[0]));
  LUT4 #(
    .INIT(16'h0100)) 
    \t_OBUF[0]_inst_i_1 
       (.I0(f_IBUF[2]),
        .I1(f_IBUF[1]),
        .I2(f_IBUF[0]),
        .I3(t1),
        .O(t_OBUF[0]));
  OBUF \t_OBUF[1]_inst 
       (.I(t_OBUF[1]),
        .O(t[1]));
  LUT6 #(
    .INIT(64'h0004000004040004)) 
    \t_OBUF[1]_inst_i_1 
       (.I0(f_IBUF[2]),
        .I1(\t_OBUF[2]_inst_i_2_n_0 ),
        .I2(t1),
        .I3(b_IBUF[31]),
        .I4(a_IBUF[31]),
        .I5(t2),
        .O(t_OBUF[1]));
  OBUF \t_OBUF[2]_inst 
       (.I(t_OBUF[2]),
        .O(t[2]));
  LUT6 #(
    .INIT(64'h0000040004000404)) 
    \t_OBUF[2]_inst_i_1 
       (.I0(f_IBUF[2]),
        .I1(\t_OBUF[2]_inst_i_2_n_0 ),
        .I2(t1),
        .I3(b_IBUF[31]),
        .I4(a_IBUF[31]),
        .I5(t2),
        .O(t_OBUF[2]));
  LUT4 #(
    .INIT(16'h20F2)) 
    \t_OBUF[2]_inst_i_10 
       (.I0(a_IBUF[30]),
        .I1(b_IBUF[30]),
        .I2(a_IBUF[31]),
        .I3(b_IBUF[31]),
        .O(\t_OBUF[2]_inst_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \t_OBUF[2]_inst_i_11 
       (.I0(a_IBUF[28]),
        .I1(b_IBUF[28]),
        .I2(b_IBUF[29]),
        .I3(a_IBUF[29]),
        .O(\t_OBUF[2]_inst_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \t_OBUF[2]_inst_i_12 
       (.I0(a_IBUF[26]),
        .I1(b_IBUF[26]),
        .I2(b_IBUF[27]),
        .I3(a_IBUF[27]),
        .O(\t_OBUF[2]_inst_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \t_OBUF[2]_inst_i_13 
       (.I0(a_IBUF[24]),
        .I1(b_IBUF[24]),
        .I2(b_IBUF[25]),
        .I3(a_IBUF[25]),
        .O(\t_OBUF[2]_inst_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \t_OBUF[2]_inst_i_14 
       (.I0(b_IBUF[30]),
        .I1(a_IBUF[30]),
        .I2(b_IBUF[31]),
        .I3(a_IBUF[31]),
        .O(\t_OBUF[2]_inst_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \t_OBUF[2]_inst_i_15 
       (.I0(b_IBUF[28]),
        .I1(a_IBUF[28]),
        .I2(a_IBUF[29]),
        .I3(b_IBUF[29]),
        .O(\t_OBUF[2]_inst_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \t_OBUF[2]_inst_i_16 
       (.I0(b_IBUF[26]),
        .I1(a_IBUF[26]),
        .I2(a_IBUF[27]),
        .I3(b_IBUF[27]),
        .O(\t_OBUF[2]_inst_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \t_OBUF[2]_inst_i_17 
       (.I0(b_IBUF[24]),
        .I1(a_IBUF[24]),
        .I2(a_IBUF[25]),
        .I3(b_IBUF[25]),
        .O(\t_OBUF[2]_inst_i_17_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \t_OBUF[2]_inst_i_18 
       (.CI(1'b0),
        .CO({\t_OBUF[2]_inst_i_18_n_0 ,\t_OBUF[2]_inst_i_18_n_1 ,\t_OBUF[2]_inst_i_18_n_2 ,\t_OBUF[2]_inst_i_18_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_t_OBUF[2]_inst_i_18_O_UNCONNECTED [3:0]),
        .S({\t_OBUF[2]_inst_i_32_n_0 ,\t_OBUF[2]_inst_i_33_n_0 ,\t_OBUF[2]_inst_i_34_n_0 ,\t_OBUF[2]_inst_i_35_n_0 }));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \t_OBUF[2]_inst_i_19 
       (.I0(a_IBUF[22]),
        .I1(b_IBUF[22]),
        .I2(b_IBUF[21]),
        .I3(a_IBUF[21]),
        .I4(a_IBUF[23]),
        .I5(b_IBUF[23]),
        .O(\t_OBUF[2]_inst_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \t_OBUF[2]_inst_i_2 
       (.I0(f_IBUF[1]),
        .I1(f_IBUF[0]),
        .O(\t_OBUF[2]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \t_OBUF[2]_inst_i_20 
       (.I0(a_IBUF[20]),
        .I1(b_IBUF[20]),
        .I2(a_IBUF[18]),
        .I3(b_IBUF[18]),
        .I4(a_IBUF[19]),
        .I5(b_IBUF[19]),
        .O(\t_OBUF[2]_inst_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \t_OBUF[2]_inst_i_21 
       (.I0(a_IBUF[16]),
        .I1(b_IBUF[16]),
        .I2(b_IBUF[15]),
        .I3(a_IBUF[15]),
        .I4(a_IBUF[17]),
        .I5(b_IBUF[17]),
        .O(\t_OBUF[2]_inst_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \t_OBUF[2]_inst_i_22 
       (.I0(a_IBUF[14]),
        .I1(b_IBUF[14]),
        .I2(a_IBUF[12]),
        .I3(b_IBUF[12]),
        .I4(a_IBUF[13]),
        .I5(b_IBUF[13]),
        .O(\t_OBUF[2]_inst_i_22_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \t_OBUF[2]_inst_i_23 
       (.CI(\t_OBUF[2]_inst_i_36_n_0 ),
        .CO({\t_OBUF[2]_inst_i_23_n_0 ,\t_OBUF[2]_inst_i_23_n_1 ,\t_OBUF[2]_inst_i_23_n_2 ,\t_OBUF[2]_inst_i_23_n_3 }),
        .CYINIT(1'b0),
        .DI({\t_OBUF[2]_inst_i_37_n_0 ,\t_OBUF[2]_inst_i_38_n_0 ,\t_OBUF[2]_inst_i_39_n_0 ,\t_OBUF[2]_inst_i_40_n_0 }),
        .O(\NLW_t_OBUF[2]_inst_i_23_O_UNCONNECTED [3:0]),
        .S({\t_OBUF[2]_inst_i_41_n_0 ,\t_OBUF[2]_inst_i_42_n_0 ,\t_OBUF[2]_inst_i_43_n_0 ,\t_OBUF[2]_inst_i_44_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \t_OBUF[2]_inst_i_24 
       (.I0(a_IBUF[22]),
        .I1(b_IBUF[22]),
        .I2(b_IBUF[23]),
        .I3(a_IBUF[23]),
        .O(\t_OBUF[2]_inst_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \t_OBUF[2]_inst_i_25 
       (.I0(a_IBUF[20]),
        .I1(b_IBUF[20]),
        .I2(b_IBUF[21]),
        .I3(a_IBUF[21]),
        .O(\t_OBUF[2]_inst_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \t_OBUF[2]_inst_i_26 
       (.I0(a_IBUF[18]),
        .I1(b_IBUF[18]),
        .I2(b_IBUF[19]),
        .I3(a_IBUF[19]),
        .O(\t_OBUF[2]_inst_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \t_OBUF[2]_inst_i_27 
       (.I0(a_IBUF[16]),
        .I1(b_IBUF[16]),
        .I2(b_IBUF[17]),
        .I3(a_IBUF[17]),
        .O(\t_OBUF[2]_inst_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \t_OBUF[2]_inst_i_28 
       (.I0(b_IBUF[22]),
        .I1(a_IBUF[22]),
        .I2(a_IBUF[23]),
        .I3(b_IBUF[23]),
        .O(\t_OBUF[2]_inst_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \t_OBUF[2]_inst_i_29 
       (.I0(b_IBUF[20]),
        .I1(a_IBUF[20]),
        .I2(a_IBUF[21]),
        .I3(b_IBUF[21]),
        .O(\t_OBUF[2]_inst_i_29_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \t_OBUF[2]_inst_i_3 
       (.CI(\t_OBUF[2]_inst_i_5_n_0 ),
        .CO({\NLW_t_OBUF[2]_inst_i_3_CO_UNCONNECTED [3],t1,\t_OBUF[2]_inst_i_3_n_2 ,\t_OBUF[2]_inst_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_t_OBUF[2]_inst_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,\t_OBUF[2]_inst_i_6_n_0 ,\t_OBUF[2]_inst_i_7_n_0 ,\t_OBUF[2]_inst_i_8_n_0 }));
  LUT4 #(
    .INIT(16'h9009)) 
    \t_OBUF[2]_inst_i_30 
       (.I0(b_IBUF[18]),
        .I1(a_IBUF[18]),
        .I2(a_IBUF[19]),
        .I3(b_IBUF[19]),
        .O(\t_OBUF[2]_inst_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \t_OBUF[2]_inst_i_31 
       (.I0(b_IBUF[16]),
        .I1(a_IBUF[16]),
        .I2(a_IBUF[17]),
        .I3(b_IBUF[17]),
        .O(\t_OBUF[2]_inst_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \t_OBUF[2]_inst_i_32 
       (.I0(a_IBUF[10]),
        .I1(b_IBUF[10]),
        .I2(b_IBUF[9]),
        .I3(a_IBUF[9]),
        .I4(a_IBUF[11]),
        .I5(b_IBUF[11]),
        .O(\t_OBUF[2]_inst_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \t_OBUF[2]_inst_i_33 
       (.I0(a_IBUF[8]),
        .I1(b_IBUF[8]),
        .I2(a_IBUF[6]),
        .I3(b_IBUF[6]),
        .I4(a_IBUF[7]),
        .I5(b_IBUF[7]),
        .O(\t_OBUF[2]_inst_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h9000009009000009)) 
    \t_OBUF[2]_inst_i_34 
       (.I0(b_IBUF[3]),
        .I1(a_IBUF[3]),
        .I2(b_IBUF[4]),
        .I3(b_IBUF[5]),
        .I4(a_IBUF[5]),
        .I5(a_IBUF[4]),
        .O(\t_OBUF[2]_inst_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \t_OBUF[2]_inst_i_35 
       (.I0(b_IBUF[1]),
        .I1(a_IBUF[1]),
        .I2(a_IBUF[2]),
        .I3(b_IBUF[2]),
        .I4(b_IBUF[0]),
        .I5(a_IBUF[0]),
        .O(\t_OBUF[2]_inst_i_35_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \t_OBUF[2]_inst_i_36 
       (.CI(1'b0),
        .CO({\t_OBUF[2]_inst_i_36_n_0 ,\t_OBUF[2]_inst_i_36_n_1 ,\t_OBUF[2]_inst_i_36_n_2 ,\t_OBUF[2]_inst_i_36_n_3 }),
        .CYINIT(1'b0),
        .DI({\t_OBUF[2]_inst_i_45_n_0 ,\t_OBUF[2]_inst_i_46_n_0 ,\t_OBUF[2]_inst_i_47_n_0 ,\t_OBUF[2]_inst_i_48_n_0 }),
        .O(\NLW_t_OBUF[2]_inst_i_36_O_UNCONNECTED [3:0]),
        .S({\t_OBUF[2]_inst_i_49_n_0 ,\t_OBUF[2]_inst_i_50_n_0 ,\t_OBUF[2]_inst_i_51_n_0 ,\t_OBUF[2]_inst_i_52_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \t_OBUF[2]_inst_i_37 
       (.I0(a_IBUF[14]),
        .I1(b_IBUF[14]),
        .I2(b_IBUF[15]),
        .I3(a_IBUF[15]),
        .O(\t_OBUF[2]_inst_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \t_OBUF[2]_inst_i_38 
       (.I0(a_IBUF[12]),
        .I1(b_IBUF[12]),
        .I2(b_IBUF[13]),
        .I3(a_IBUF[13]),
        .O(\t_OBUF[2]_inst_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \t_OBUF[2]_inst_i_39 
       (.I0(a_IBUF[10]),
        .I1(b_IBUF[10]),
        .I2(b_IBUF[11]),
        .I3(a_IBUF[11]),
        .O(\t_OBUF[2]_inst_i_39_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \t_OBUF[2]_inst_i_4 
       (.CI(\t_OBUF[2]_inst_i_9_n_0 ),
        .CO({t2,\t_OBUF[2]_inst_i_4_n_1 ,\t_OBUF[2]_inst_i_4_n_2 ,\t_OBUF[2]_inst_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\t_OBUF[2]_inst_i_10_n_0 ,\t_OBUF[2]_inst_i_11_n_0 ,\t_OBUF[2]_inst_i_12_n_0 ,\t_OBUF[2]_inst_i_13_n_0 }),
        .O(\NLW_t_OBUF[2]_inst_i_4_O_UNCONNECTED [3:0]),
        .S({\t_OBUF[2]_inst_i_14_n_0 ,\t_OBUF[2]_inst_i_15_n_0 ,\t_OBUF[2]_inst_i_16_n_0 ,\t_OBUF[2]_inst_i_17_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \t_OBUF[2]_inst_i_40 
       (.I0(a_IBUF[8]),
        .I1(b_IBUF[8]),
        .I2(b_IBUF[9]),
        .I3(a_IBUF[9]),
        .O(\t_OBUF[2]_inst_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \t_OBUF[2]_inst_i_41 
       (.I0(b_IBUF[14]),
        .I1(a_IBUF[14]),
        .I2(a_IBUF[15]),
        .I3(b_IBUF[15]),
        .O(\t_OBUF[2]_inst_i_41_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \t_OBUF[2]_inst_i_42 
       (.I0(b_IBUF[12]),
        .I1(a_IBUF[12]),
        .I2(a_IBUF[13]),
        .I3(b_IBUF[13]),
        .O(\t_OBUF[2]_inst_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \t_OBUF[2]_inst_i_43 
       (.I0(b_IBUF[10]),
        .I1(a_IBUF[10]),
        .I2(a_IBUF[11]),
        .I3(b_IBUF[11]),
        .O(\t_OBUF[2]_inst_i_43_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \t_OBUF[2]_inst_i_44 
       (.I0(b_IBUF[8]),
        .I1(a_IBUF[8]),
        .I2(a_IBUF[9]),
        .I3(b_IBUF[9]),
        .O(\t_OBUF[2]_inst_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \t_OBUF[2]_inst_i_45 
       (.I0(a_IBUF[6]),
        .I1(b_IBUF[6]),
        .I2(b_IBUF[7]),
        .I3(a_IBUF[7]),
        .O(\t_OBUF[2]_inst_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \t_OBUF[2]_inst_i_46 
       (.I0(a_IBUF[4]),
        .I1(b_IBUF[4]),
        .I2(b_IBUF[5]),
        .I3(a_IBUF[5]),
        .O(\t_OBUF[2]_inst_i_46_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \t_OBUF[2]_inst_i_47 
       (.I0(a_IBUF[2]),
        .I1(b_IBUF[2]),
        .I2(b_IBUF[3]),
        .I3(a_IBUF[3]),
        .O(\t_OBUF[2]_inst_i_47_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \t_OBUF[2]_inst_i_48 
       (.I0(a_IBUF[0]),
        .I1(b_IBUF[0]),
        .I2(b_IBUF[1]),
        .I3(a_IBUF[1]),
        .O(\t_OBUF[2]_inst_i_48_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \t_OBUF[2]_inst_i_49 
       (.I0(b_IBUF[6]),
        .I1(a_IBUF[6]),
        .I2(a_IBUF[7]),
        .I3(b_IBUF[7]),
        .O(\t_OBUF[2]_inst_i_49_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \t_OBUF[2]_inst_i_5 
       (.CI(\t_OBUF[2]_inst_i_18_n_0 ),
        .CO({\t_OBUF[2]_inst_i_5_n_0 ,\t_OBUF[2]_inst_i_5_n_1 ,\t_OBUF[2]_inst_i_5_n_2 ,\t_OBUF[2]_inst_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_t_OBUF[2]_inst_i_5_O_UNCONNECTED [3:0]),
        .S({\t_OBUF[2]_inst_i_19_n_0 ,\t_OBUF[2]_inst_i_20_n_0 ,\t_OBUF[2]_inst_i_21_n_0 ,\t_OBUF[2]_inst_i_22_n_0 }));
  LUT4 #(
    .INIT(16'h9009)) 
    \t_OBUF[2]_inst_i_50 
       (.I0(b_IBUF[5]),
        .I1(a_IBUF[5]),
        .I2(a_IBUF[4]),
        .I3(b_IBUF[4]),
        .O(\t_OBUF[2]_inst_i_50_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \t_OBUF[2]_inst_i_51 
       (.I0(b_IBUF[2]),
        .I1(a_IBUF[2]),
        .I2(a_IBUF[3]),
        .I3(b_IBUF[3]),
        .O(\t_OBUF[2]_inst_i_51_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \t_OBUF[2]_inst_i_52 
       (.I0(b_IBUF[0]),
        .I1(a_IBUF[0]),
        .I2(a_IBUF[1]),
        .I3(b_IBUF[1]),
        .O(\t_OBUF[2]_inst_i_52_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \t_OBUF[2]_inst_i_6 
       (.I0(b_IBUF[30]),
        .I1(a_IBUF[30]),
        .I2(b_IBUF[31]),
        .I3(a_IBUF[31]),
        .O(\t_OBUF[2]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \t_OBUF[2]_inst_i_7 
       (.I0(a_IBUF[28]),
        .I1(b_IBUF[28]),
        .I2(b_IBUF[27]),
        .I3(a_IBUF[27]),
        .I4(a_IBUF[29]),
        .I5(b_IBUF[29]),
        .O(\t_OBUF[2]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \t_OBUF[2]_inst_i_8 
       (.I0(a_IBUF[26]),
        .I1(b_IBUF[26]),
        .I2(a_IBUF[24]),
        .I3(b_IBUF[24]),
        .I4(a_IBUF[25]),
        .I5(b_IBUF[25]),
        .O(\t_OBUF[2]_inst_i_8_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \t_OBUF[2]_inst_i_9 
       (.CI(\t_OBUF[2]_inst_i_23_n_0 ),
        .CO({\t_OBUF[2]_inst_i_9_n_0 ,\t_OBUF[2]_inst_i_9_n_1 ,\t_OBUF[2]_inst_i_9_n_2 ,\t_OBUF[2]_inst_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({\t_OBUF[2]_inst_i_24_n_0 ,\t_OBUF[2]_inst_i_25_n_0 ,\t_OBUF[2]_inst_i_26_n_0 ,\t_OBUF[2]_inst_i_27_n_0 }),
        .O(\NLW_t_OBUF[2]_inst_i_9_O_UNCONNECTED [3:0]),
        .S({\t_OBUF[2]_inst_i_28_n_0 ,\t_OBUF[2]_inst_i_29_n_0 ,\t_OBUF[2]_inst_i_30_n_0 ,\t_OBUF[2]_inst_i_31_n_0 }));
  OBUF \y_OBUF[0]_inst 
       (.I(y_OBUF[0]),
        .O(y[0]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \y_OBUF[0]_inst_i_1 
       (.I0(\y_OBUF[0]_inst_i_2_n_0 ),
        .I1(\y_OBUF[0]_inst_i_3_n_0 ),
        .I2(\y_OBUF[27]_inst_i_4_n_0 ),
        .I3(\y_OBUF[0]_inst_i_4_n_0 ),
        .I4(\y_OBUF[25]_inst_i_4_n_0 ),
        .I5(\y_OBUF[1]_inst_i_5_n_0 ),
        .O(y_OBUF[0]));
  LUT5 #(
    .INIT(32'hFF020202)) 
    \y_OBUF[0]_inst_i_2 
       (.I0(data0[0]),
        .I1(f_IBUF[2]),
        .I2(f_IBUF[1]),
        .I3(a_IBUF[0]),
        .I4(\y_OBUF[1]_inst_i_11_n_0 ),
        .O(\y_OBUF[0]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00A00680)) 
    \y_OBUF[0]_inst_i_3 
       (.I0(b_IBUF[0]),
        .I1(a_IBUF[0]),
        .I2(f_IBUF[1]),
        .I3(f_IBUF[2]),
        .I4(f_IBUF[0]),
        .O(\y_OBUF[0]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFECECEC)) 
    \y_OBUF[0]_inst_i_4 
       (.I0(\y_OBUF[2]_inst_i_6_n_0 ),
        .I1(\y_OBUF[0]_inst_i_5_n_0 ),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(\y_OBUF[3]_inst_i_13_n_0 ),
        .I5(\y_OBUF[0]_inst_i_6_n_0 ),
        .O(\y_OBUF[0]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \y_OBUF[0]_inst_i_5 
       (.I0(a_IBUF[24]),
        .I1(a_IBUF[16]),
        .I2(b_IBUF[4]),
        .I3(b_IBUF[5]),
        .I4(b_IBUF[2]),
        .I5(b_IBUF[3]),
        .O(\y_OBUF[0]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000A000C)) 
    \y_OBUF[0]_inst_i_6 
       (.I0(a_IBUF[8]),
        .I1(a_IBUF[0]),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(b_IBUF[4]),
        .I5(b_IBUF[5]),
        .O(\y_OBUF[0]_inst_i_6_n_0 ));
  OBUF \y_OBUF[10]_inst 
       (.I(y_OBUF[10]),
        .O(y[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \y_OBUF[10]_inst_i_1 
       (.I0(\y_OBUF[10]_inst_i_2_n_0 ),
        .I1(\y_OBUF[31]_inst_i_6_n_0 ),
        .I2(\y_OBUF[11]_inst_i_3_n_0 ),
        .I3(\y_OBUF[31]_inst_i_4_n_0 ),
        .I4(\y_OBUF[10]_inst_i_3_n_0 ),
        .I5(\y_OBUF[10]_inst_i_4_n_0 ),
        .O(y_OBUF[10]));
  LUT6 #(
    .INIT(64'hAFAEABAAABAAABAA)) 
    \y_OBUF[10]_inst_i_2 
       (.I0(\y_OBUF[10]_inst_i_5_n_0 ),
        .I1(b_IBUF[2]),
        .I2(b_IBUF[3]),
        .I3(\y_OBUF[15]_inst_i_12_n_0 ),
        .I4(\y_OBUF[27]_inst_i_8_n_0 ),
        .I5(a_IBUF[7]),
        .O(\y_OBUF[10]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000003CFCAAC0AA)) 
    \y_OBUF[10]_inst_i_3 
       (.I0(data0[10]),
        .I1(a_IBUF[10]),
        .I2(b_IBUF[10]),
        .I3(f_IBUF[1]),
        .I4(f_IBUF[0]),
        .I5(f_IBUF[2]),
        .O(\y_OBUF[10]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \y_OBUF[10]_inst_i_4 
       (.I0(\y_OBUF[11]_inst_i_7_n_0 ),
        .I1(\y_OBUF[10]_inst_i_6_n_0 ),
        .I2(f_IBUF[0]),
        .I3(f_IBUF[2]),
        .I4(b_IBUF[1]),
        .O(\y_OBUF[10]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \y_OBUF[10]_inst_i_5 
       (.I0(a_IBUF[3]),
        .I1(a_IBUF[5]),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(b_IBUF[4]),
        .I5(b_IBUF[5]),
        .O(\y_OBUF[10]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \y_OBUF[10]_inst_i_6 
       (.I0(\y_OBUF[14]_inst_i_7_n_0 ),
        .I1(\y_OBUF[16]_inst_i_5_n_0 ),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(\y_OBUF[3]_inst_i_12_n_0 ),
        .I5(\y_OBUF[12]_inst_i_7_n_0 ),
        .O(\y_OBUF[10]_inst_i_6_n_0 ));
  OBUF \y_OBUF[11]_inst 
       (.I(y_OBUF[11]),
        .O(y[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \y_OBUF[11]_inst_i_1 
       (.I0(\y_OBUF[11]_inst_i_2_n_0 ),
        .I1(\y_OBUF[11]_inst_i_3_n_0 ),
        .I2(\y_OBUF[31]_inst_i_6_n_0 ),
        .I3(\y_OBUF[12]_inst_i_2_n_0 ),
        .I4(\y_OBUF[31]_inst_i_4_n_0 ),
        .I5(\y_OBUF[11]_inst_i_4_n_0 ),
        .O(y_OBUF[11]));
  LUT3 #(
    .INIT(8'h69)) 
    \y_OBUF[11]_inst_i_10 
       (.I0(b_IBUF[9]),
        .I1(f_IBUF[0]),
        .I2(a_IBUF[9]),
        .O(\y_OBUF[11]_inst_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_OBUF[11]_inst_i_11 
       (.I0(b_IBUF[8]),
        .I1(f_IBUF[0]),
        .I2(a_IBUF[8]),
        .O(\y_OBUF[11]_inst_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \y_OBUF[11]_inst_i_12 
       (.I0(a_IBUF[11]),
        .I1(a_IBUF[19]),
        .I2(a_IBUF[27]),
        .I3(b_IBUF[5]),
        .I4(b_IBUF[4]),
        .O(\y_OBUF[11]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000FCC0003CAAAA)) 
    \y_OBUF[11]_inst_i_2 
       (.I0(data0[11]),
        .I1(b_IBUF[11]),
        .I2(a_IBUF[11]),
        .I3(f_IBUF[0]),
        .I4(f_IBUF[2]),
        .I5(f_IBUF[1]),
        .O(\y_OBUF[11]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hAFAEABAA)) 
    \y_OBUF[11]_inst_i_3 
       (.I0(\y_OBUF[11]_inst_i_6_n_0 ),
        .I1(b_IBUF[2]),
        .I2(b_IBUF[3]),
        .I3(\y_OBUF[15]_inst_i_7_n_0 ),
        .I4(\y_OBUF[15]_inst_i_8_n_0 ),
        .O(\y_OBUF[11]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \y_OBUF[11]_inst_i_4 
       (.I0(\y_OBUF[12]_inst_i_6_n_0 ),
        .I1(\y_OBUF[11]_inst_i_7_n_0 ),
        .I2(f_IBUF[0]),
        .I3(f_IBUF[2]),
        .I4(b_IBUF[1]),
        .O(\y_OBUF[11]_inst_i_4_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \y_OBUF[11]_inst_i_5 
       (.CI(\y_OBUF[7]_inst_i_5_n_0 ),
        .CO({\y_OBUF[11]_inst_i_5_n_0 ,\y_OBUF[11]_inst_i_5_n_1 ,\y_OBUF[11]_inst_i_5_n_2 ,\y_OBUF[11]_inst_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI(a_IBUF[11:8]),
        .O(data0[11:8]),
        .S({\y_OBUF[11]_inst_i_8_n_0 ,\y_OBUF[11]_inst_i_9_n_0 ,\y_OBUF[11]_inst_i_10_n_0 ,\y_OBUF[11]_inst_i_11_n_0 }));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \y_OBUF[11]_inst_i_6 
       (.I0(a_IBUF[4]),
        .I1(a_IBUF[6]),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(b_IBUF[4]),
        .I5(b_IBUF[5]),
        .O(\y_OBUF[11]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \y_OBUF[11]_inst_i_7 
       (.I0(\y_OBUF[15]_inst_i_20_n_0 ),
        .I1(\y_OBUF[17]_inst_i_5_n_0 ),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(\y_OBUF[11]_inst_i_12_n_0 ),
        .I5(\y_OBUF[13]_inst_i_7_n_0 ),
        .O(\y_OBUF[11]_inst_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_OBUF[11]_inst_i_8 
       (.I0(b_IBUF[11]),
        .I1(f_IBUF[0]),
        .I2(a_IBUF[11]),
        .O(\y_OBUF[11]_inst_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_OBUF[11]_inst_i_9 
       (.I0(b_IBUF[10]),
        .I1(f_IBUF[0]),
        .I2(a_IBUF[10]),
        .O(\y_OBUF[11]_inst_i_9_n_0 ));
  OBUF \y_OBUF[12]_inst 
       (.I(y_OBUF[12]),
        .O(y[12]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \y_OBUF[12]_inst_i_1 
       (.I0(\y_OBUF[12]_inst_i_2_n_0 ),
        .I1(\y_OBUF[31]_inst_i_6_n_0 ),
        .I2(\y_OBUF[13]_inst_i_3_n_0 ),
        .I3(\y_OBUF[31]_inst_i_4_n_0 ),
        .I4(\y_OBUF[12]_inst_i_3_n_0 ),
        .I5(\y_OBUF[12]_inst_i_4_n_0 ),
        .O(y_OBUF[12]));
  LUT5 #(
    .INIT(32'hAFAEABAA)) 
    \y_OBUF[12]_inst_i_2 
       (.I0(\y_OBUF[12]_inst_i_5_n_0 ),
        .I1(b_IBUF[2]),
        .I2(b_IBUF[3]),
        .I3(\y_OBUF[15]_inst_i_11_n_0 ),
        .I4(\y_OBUF[15]_inst_i_12_n_0 ),
        .O(\y_OBUF[12]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000003CFCAAC0AA)) 
    \y_OBUF[12]_inst_i_3 
       (.I0(data0[12]),
        .I1(a_IBUF[12]),
        .I2(b_IBUF[12]),
        .I3(f_IBUF[1]),
        .I4(f_IBUF[0]),
        .I5(f_IBUF[2]),
        .O(\y_OBUF[12]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \y_OBUF[12]_inst_i_4 
       (.I0(\y_OBUF[13]_inst_i_6_n_0 ),
        .I1(\y_OBUF[12]_inst_i_6_n_0 ),
        .I2(f_IBUF[0]),
        .I3(f_IBUF[2]),
        .I4(b_IBUF[1]),
        .O(\y_OBUF[12]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \y_OBUF[12]_inst_i_5 
       (.I0(a_IBUF[5]),
        .I1(a_IBUF[7]),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(b_IBUF[4]),
        .I5(b_IBUF[5]),
        .O(\y_OBUF[12]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \y_OBUF[12]_inst_i_6 
       (.I0(\y_OBUF[16]_inst_i_5_n_0 ),
        .I1(\y_OBUF[18]_inst_i_7_n_0 ),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(\y_OBUF[12]_inst_i_7_n_0 ),
        .I5(\y_OBUF[14]_inst_i_7_n_0 ),
        .O(\y_OBUF[12]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \y_OBUF[12]_inst_i_7 
       (.I0(a_IBUF[12]),
        .I1(a_IBUF[20]),
        .I2(a_IBUF[28]),
        .I3(b_IBUF[5]),
        .I4(b_IBUF[4]),
        .O(\y_OBUF[12]_inst_i_7_n_0 ));
  OBUF \y_OBUF[13]_inst 
       (.I(y_OBUF[13]),
        .O(y[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \y_OBUF[13]_inst_i_1 
       (.I0(\y_OBUF[13]_inst_i_2_n_0 ),
        .I1(\y_OBUF[13]_inst_i_3_n_0 ),
        .I2(\y_OBUF[31]_inst_i_6_n_0 ),
        .I3(\y_OBUF[14]_inst_i_2_n_0 ),
        .I4(\y_OBUF[31]_inst_i_4_n_0 ),
        .I5(\y_OBUF[13]_inst_i_4_n_0 ),
        .O(y_OBUF[13]));
  LUT6 #(
    .INIT(64'h0000FCC0003CAAAA)) 
    \y_OBUF[13]_inst_i_2 
       (.I0(data0[13]),
        .I1(b_IBUF[13]),
        .I2(a_IBUF[13]),
        .I3(f_IBUF[0]),
        .I4(f_IBUF[2]),
        .I5(f_IBUF[1]),
        .O(\y_OBUF[13]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCEFFCEFCCECFCECC)) 
    \y_OBUF[13]_inst_i_3 
       (.I0(\y_OBUF[15]_inst_i_8_n_0 ),
        .I1(\y_OBUF[13]_inst_i_5_n_0 ),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(\y_OBUF[15]_inst_i_10_n_0 ),
        .I5(\y_OBUF[15]_inst_i_7_n_0 ),
        .O(\y_OBUF[13]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \y_OBUF[13]_inst_i_4 
       (.I0(\y_OBUF[14]_inst_i_6_n_0 ),
        .I1(\y_OBUF[13]_inst_i_6_n_0 ),
        .I2(f_IBUF[0]),
        .I3(f_IBUF[2]),
        .I4(b_IBUF[1]),
        .O(\y_OBUF[13]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \y_OBUF[13]_inst_i_5 
       (.I0(b_IBUF[5]),
        .I1(b_IBUF[4]),
        .I2(b_IBUF[3]),
        .I3(b_IBUF[2]),
        .I4(a_IBUF[6]),
        .O(\y_OBUF[13]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \y_OBUF[13]_inst_i_6 
       (.I0(\y_OBUF[17]_inst_i_5_n_0 ),
        .I1(\y_OBUF[19]_inst_i_7_n_0 ),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(\y_OBUF[13]_inst_i_7_n_0 ),
        .I5(\y_OBUF[15]_inst_i_20_n_0 ),
        .O(\y_OBUF[13]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \y_OBUF[13]_inst_i_7 
       (.I0(a_IBUF[13]),
        .I1(a_IBUF[21]),
        .I2(a_IBUF[29]),
        .I3(b_IBUF[5]),
        .I4(b_IBUF[4]),
        .O(\y_OBUF[13]_inst_i_7_n_0 ));
  OBUF \y_OBUF[14]_inst 
       (.I(y_OBUF[14]),
        .O(y[14]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \y_OBUF[14]_inst_i_1 
       (.I0(\y_OBUF[14]_inst_i_2_n_0 ),
        .I1(\y_OBUF[31]_inst_i_6_n_0 ),
        .I2(\y_OBUF[15]_inst_i_3_n_0 ),
        .I3(\y_OBUF[31]_inst_i_4_n_0 ),
        .I4(\y_OBUF[14]_inst_i_3_n_0 ),
        .I5(\y_OBUF[14]_inst_i_4_n_0 ),
        .O(y_OBUF[14]));
  LUT6 #(
    .INIT(64'hCEFFCEFCCECFCECC)) 
    \y_OBUF[14]_inst_i_2 
       (.I0(\y_OBUF[15]_inst_i_12_n_0 ),
        .I1(\y_OBUF[14]_inst_i_5_n_0 ),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(\y_OBUF[15]_inst_i_14_n_0 ),
        .I5(\y_OBUF[15]_inst_i_11_n_0 ),
        .O(\y_OBUF[14]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000003CFCAAC0AA)) 
    \y_OBUF[14]_inst_i_3 
       (.I0(data0[14]),
        .I1(a_IBUF[14]),
        .I2(b_IBUF[14]),
        .I3(f_IBUF[1]),
        .I4(f_IBUF[0]),
        .I5(f_IBUF[2]),
        .O(\y_OBUF[14]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \y_OBUF[14]_inst_i_4 
       (.I0(\y_OBUF[15]_inst_i_15_n_0 ),
        .I1(\y_OBUF[14]_inst_i_6_n_0 ),
        .I2(f_IBUF[0]),
        .I3(f_IBUF[2]),
        .I4(b_IBUF[1]),
        .O(\y_OBUF[14]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \y_OBUF[14]_inst_i_5 
       (.I0(b_IBUF[5]),
        .I1(b_IBUF[4]),
        .I2(b_IBUF[3]),
        .I3(b_IBUF[2]),
        .I4(a_IBUF[7]),
        .O(\y_OBUF[14]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \y_OBUF[14]_inst_i_6 
       (.I0(\y_OBUF[18]_inst_i_7_n_0 ),
        .I1(\y_OBUF[20]_inst_i_7_n_0 ),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(\y_OBUF[14]_inst_i_7_n_0 ),
        .I5(\y_OBUF[16]_inst_i_5_n_0 ),
        .O(\y_OBUF[14]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \y_OBUF[14]_inst_i_7 
       (.I0(a_IBUF[14]),
        .I1(a_IBUF[22]),
        .I2(a_IBUF[30]),
        .I3(b_IBUF[5]),
        .I4(b_IBUF[4]),
        .O(\y_OBUF[14]_inst_i_7_n_0 ));
  OBUF \y_OBUF[15]_inst 
       (.I(y_OBUF[15]),
        .O(y[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \y_OBUF[15]_inst_i_1 
       (.I0(\y_OBUF[15]_inst_i_2_n_0 ),
        .I1(\y_OBUF[15]_inst_i_3_n_0 ),
        .I2(\y_OBUF[31]_inst_i_6_n_0 ),
        .I3(\y_OBUF[15]_inst_i_4_n_0 ),
        .I4(\y_OBUF[31]_inst_i_4_n_0 ),
        .I5(\y_OBUF[15]_inst_i_5_n_0 ),
        .O(y_OBUF[15]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y_OBUF[15]_inst_i_10 
       (.I0(a_IBUF[4]),
        .I1(a_IBUF[12]),
        .I2(b_IBUF[5]),
        .I3(b_IBUF[4]),
        .O(\y_OBUF[15]_inst_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y_OBUF[15]_inst_i_11 
       (.I0(a_IBUF[3]),
        .I1(a_IBUF[11]),
        .I2(b_IBUF[5]),
        .I3(b_IBUF[4]),
        .O(\y_OBUF[15]_inst_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y_OBUF[15]_inst_i_12 
       (.I0(a_IBUF[1]),
        .I1(a_IBUF[9]),
        .I2(b_IBUF[5]),
        .I3(b_IBUF[4]),
        .O(\y_OBUF[15]_inst_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y_OBUF[15]_inst_i_13 
       (.I0(a_IBUF[7]),
        .I1(a_IBUF[15]),
        .I2(b_IBUF[5]),
        .I3(b_IBUF[4]),
        .O(\y_OBUF[15]_inst_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y_OBUF[15]_inst_i_14 
       (.I0(a_IBUF[5]),
        .I1(a_IBUF[13]),
        .I2(b_IBUF[5]),
        .I3(b_IBUF[4]),
        .O(\y_OBUF[15]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \y_OBUF[15]_inst_i_15 
       (.I0(\y_OBUF[19]_inst_i_7_n_0 ),
        .I1(\y_OBUF[21]_inst_i_6_n_0 ),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(\y_OBUF[15]_inst_i_20_n_0 ),
        .I5(\y_OBUF[17]_inst_i_5_n_0 ),
        .O(\y_OBUF[15]_inst_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_OBUF[15]_inst_i_16 
       (.I0(b_IBUF[15]),
        .I1(f_IBUF[0]),
        .I2(a_IBUF[15]),
        .O(\y_OBUF[15]_inst_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_OBUF[15]_inst_i_17 
       (.I0(b_IBUF[14]),
        .I1(f_IBUF[0]),
        .I2(a_IBUF[14]),
        .O(\y_OBUF[15]_inst_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_OBUF[15]_inst_i_18 
       (.I0(b_IBUF[13]),
        .I1(f_IBUF[0]),
        .I2(a_IBUF[13]),
        .O(\y_OBUF[15]_inst_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_OBUF[15]_inst_i_19 
       (.I0(b_IBUF[12]),
        .I1(f_IBUF[0]),
        .I2(a_IBUF[12]),
        .O(\y_OBUF[15]_inst_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000FCC0003CAAAA)) 
    \y_OBUF[15]_inst_i_2 
       (.I0(data0[15]),
        .I1(b_IBUF[15]),
        .I2(a_IBUF[15]),
        .I3(f_IBUF[0]),
        .I4(f_IBUF[2]),
        .I5(f_IBUF[1]),
        .O(\y_OBUF[15]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \y_OBUF[15]_inst_i_20 
       (.I0(a_IBUF[15]),
        .I1(a_IBUF[23]),
        .I2(a_IBUF[31]),
        .I3(b_IBUF[5]),
        .I4(b_IBUF[4]),
        .O(\y_OBUF[15]_inst_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \y_OBUF[15]_inst_i_3 
       (.I0(\y_OBUF[15]_inst_i_7_n_0 ),
        .I1(\y_OBUF[15]_inst_i_8_n_0 ),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(\y_OBUF[15]_inst_i_9_n_0 ),
        .I5(\y_OBUF[15]_inst_i_10_n_0 ),
        .O(\y_OBUF[15]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \y_OBUF[15]_inst_i_4 
       (.I0(\y_OBUF[15]_inst_i_11_n_0 ),
        .I1(\y_OBUF[15]_inst_i_12_n_0 ),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(\y_OBUF[15]_inst_i_13_n_0 ),
        .I5(\y_OBUF[15]_inst_i_14_n_0 ),
        .O(\y_OBUF[15]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \y_OBUF[15]_inst_i_5 
       (.I0(\y_OBUF[16]_inst_i_3_n_0 ),
        .I1(\y_OBUF[15]_inst_i_15_n_0 ),
        .I2(f_IBUF[0]),
        .I3(f_IBUF[2]),
        .I4(b_IBUF[1]),
        .O(\y_OBUF[15]_inst_i_5_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \y_OBUF[15]_inst_i_6 
       (.CI(\y_OBUF[11]_inst_i_5_n_0 ),
        .CO({\y_OBUF[15]_inst_i_6_n_0 ,\y_OBUF[15]_inst_i_6_n_1 ,\y_OBUF[15]_inst_i_6_n_2 ,\y_OBUF[15]_inst_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI(a_IBUF[15:12]),
        .O(data0[15:12]),
        .S({\y_OBUF[15]_inst_i_16_n_0 ,\y_OBUF[15]_inst_i_17_n_0 ,\y_OBUF[15]_inst_i_18_n_0 ,\y_OBUF[15]_inst_i_19_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y_OBUF[15]_inst_i_7 
       (.I0(a_IBUF[2]),
        .I1(a_IBUF[10]),
        .I2(b_IBUF[5]),
        .I3(b_IBUF[4]),
        .O(\y_OBUF[15]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y_OBUF[15]_inst_i_8 
       (.I0(a_IBUF[0]),
        .I1(a_IBUF[8]),
        .I2(b_IBUF[5]),
        .I3(b_IBUF[4]),
        .O(\y_OBUF[15]_inst_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y_OBUF[15]_inst_i_9 
       (.I0(a_IBUF[6]),
        .I1(a_IBUF[14]),
        .I2(b_IBUF[5]),
        .I3(b_IBUF[4]),
        .O(\y_OBUF[15]_inst_i_9_n_0 ));
  OBUF \y_OBUF[16]_inst 
       (.I(y_OBUF[16]),
        .O(y[16]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \y_OBUF[16]_inst_i_1 
       (.I0(\y_OBUF[16]_inst_i_2_n_0 ),
        .I1(\y_OBUF[17]_inst_i_3_n_0 ),
        .I2(\y_OBUF[25]_inst_i_4_n_0 ),
        .I3(\y_OBUF[16]_inst_i_3_n_0 ),
        .I4(\y_OBUF[27]_inst_i_4_n_0 ),
        .I5(\y_OBUF[16]_inst_i_4_n_0 ),
        .O(y_OBUF[16]));
  LUT6 #(
    .INIT(64'h0000A0000000C000)) 
    \y_OBUF[16]_inst_i_2 
       (.I0(\y_OBUF[15]_inst_i_4_n_0 ),
        .I1(\y_OBUF[17]_inst_i_6_n_0 ),
        .I2(f_IBUF[1]),
        .I3(f_IBUF[2]),
        .I4(f_IBUF[0]),
        .I5(b_IBUF[1]),
        .O(\y_OBUF[16]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \y_OBUF[16]_inst_i_3 
       (.I0(\y_OBUF[20]_inst_i_7_n_0 ),
        .I1(\y_OBUF[22]_inst_i_6_n_0 ),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(\y_OBUF[16]_inst_i_5_n_0 ),
        .I5(\y_OBUF[18]_inst_i_7_n_0 ),
        .O(\y_OBUF[16]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000003CFCAAC0AA)) 
    \y_OBUF[16]_inst_i_4 
       (.I0(data0[16]),
        .I1(a_IBUF[16]),
        .I2(b_IBUF[16]),
        .I3(f_IBUF[1]),
        .I4(f_IBUF[0]),
        .I5(f_IBUF[2]),
        .O(\y_OBUF[16]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y_OBUF[16]_inst_i_5 
       (.I0(a_IBUF[24]),
        .I1(a_IBUF[16]),
        .I2(b_IBUF[5]),
        .I3(b_IBUF[4]),
        .O(\y_OBUF[16]_inst_i_5_n_0 ));
  OBUF \y_OBUF[17]_inst 
       (.I(y_OBUF[17]),
        .O(y[17]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \y_OBUF[17]_inst_i_1 
       (.I0(\y_OBUF[17]_inst_i_2_n_0 ),
        .I1(\y_OBUF[18]_inst_i_3_n_0 ),
        .I2(\y_OBUF[25]_inst_i_4_n_0 ),
        .I3(\y_OBUF[17]_inst_i_3_n_0 ),
        .I4(\y_OBUF[27]_inst_i_4_n_0 ),
        .I5(\y_OBUF[17]_inst_i_4_n_0 ),
        .O(y_OBUF[17]));
  LUT6 #(
    .INIT(64'h0000FCC0003CAAAA)) 
    \y_OBUF[17]_inst_i_2 
       (.I0(data0[17]),
        .I1(b_IBUF[17]),
        .I2(a_IBUF[17]),
        .I3(f_IBUF[0]),
        .I4(f_IBUF[2]),
        .I5(f_IBUF[1]),
        .O(\y_OBUF[17]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \y_OBUF[17]_inst_i_3 
       (.I0(\y_OBUF[21]_inst_i_6_n_0 ),
        .I1(\y_OBUF[23]_inst_i_7_n_0 ),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(\y_OBUF[17]_inst_i_5_n_0 ),
        .I5(\y_OBUF[19]_inst_i_7_n_0 ),
        .O(\y_OBUF[17]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0000000C000)) 
    \y_OBUF[17]_inst_i_4 
       (.I0(\y_OBUF[17]_inst_i_6_n_0 ),
        .I1(\y_OBUF[18]_inst_i_5_n_0 ),
        .I2(f_IBUF[1]),
        .I3(f_IBUF[2]),
        .I4(f_IBUF[0]),
        .I5(b_IBUF[1]),
        .O(\y_OBUF[17]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y_OBUF[17]_inst_i_5 
       (.I0(a_IBUF[25]),
        .I1(a_IBUF[17]),
        .I2(b_IBUF[5]),
        .I3(b_IBUF[4]),
        .O(\y_OBUF[17]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \y_OBUF[17]_inst_i_6 
       (.I0(\y_OBUF[15]_inst_i_10_n_0 ),
        .I1(\y_OBUF[15]_inst_i_7_n_0 ),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(\y_OBUF[23]_inst_i_13_n_0 ),
        .I5(\y_OBUF[15]_inst_i_9_n_0 ),
        .O(\y_OBUF[17]_inst_i_6_n_0 ));
  OBUF \y_OBUF[18]_inst 
       (.I(y_OBUF[18]),
        .O(y[18]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \y_OBUF[18]_inst_i_1 
       (.I0(\y_OBUF[18]_inst_i_2_n_0 ),
        .I1(\y_OBUF[19]_inst_i_3_n_0 ),
        .I2(\y_OBUF[25]_inst_i_4_n_0 ),
        .I3(\y_OBUF[18]_inst_i_3_n_0 ),
        .I4(\y_OBUF[27]_inst_i_4_n_0 ),
        .I5(\y_OBUF[18]_inst_i_4_n_0 ),
        .O(y_OBUF[18]));
  LUT6 #(
    .INIT(64'h0000A0000000C000)) 
    \y_OBUF[18]_inst_i_2 
       (.I0(\y_OBUF[18]_inst_i_5_n_0 ),
        .I1(\y_OBUF[19]_inst_i_8_n_0 ),
        .I2(f_IBUF[1]),
        .I3(f_IBUF[2]),
        .I4(f_IBUF[0]),
        .I5(b_IBUF[1]),
        .O(\y_OBUF[18]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCEFFCEFCCECFCECC)) 
    \y_OBUF[18]_inst_i_3 
       (.I0(\y_OBUF[22]_inst_i_6_n_0 ),
        .I1(\y_OBUF[18]_inst_i_6_n_0 ),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(\y_OBUF[18]_inst_i_7_n_0 ),
        .I5(\y_OBUF[20]_inst_i_7_n_0 ),
        .O(\y_OBUF[18]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000003CFCAAC0AA)) 
    \y_OBUF[18]_inst_i_4 
       (.I0(data0[18]),
        .I1(a_IBUF[18]),
        .I2(b_IBUF[18]),
        .I3(f_IBUF[1]),
        .I4(f_IBUF[0]),
        .I5(f_IBUF[2]),
        .O(\y_OBUF[18]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \y_OBUF[18]_inst_i_5 
       (.I0(\y_OBUF[15]_inst_i_14_n_0 ),
        .I1(\y_OBUF[15]_inst_i_11_n_0 ),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(\y_OBUF[24]_inst_i_9_n_0 ),
        .I5(\y_OBUF[15]_inst_i_13_n_0 ),
        .O(\y_OBUF[18]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \y_OBUF[18]_inst_i_6 
       (.I0(b_IBUF[5]),
        .I1(b_IBUF[4]),
        .I2(b_IBUF[3]),
        .I3(b_IBUF[2]),
        .I4(a_IBUF[24]),
        .O(\y_OBUF[18]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y_OBUF[18]_inst_i_7 
       (.I0(a_IBUF[26]),
        .I1(a_IBUF[18]),
        .I2(b_IBUF[5]),
        .I3(b_IBUF[4]),
        .O(\y_OBUF[18]_inst_i_7_n_0 ));
  OBUF \y_OBUF[19]_inst 
       (.I(y_OBUF[19]),
        .O(y[19]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \y_OBUF[19]_inst_i_1 
       (.I0(\y_OBUF[19]_inst_i_2_n_0 ),
        .I1(\y_OBUF[20]_inst_i_3_n_0 ),
        .I2(\y_OBUF[25]_inst_i_4_n_0 ),
        .I3(\y_OBUF[19]_inst_i_3_n_0 ),
        .I4(\y_OBUF[27]_inst_i_4_n_0 ),
        .I5(\y_OBUF[19]_inst_i_4_n_0 ),
        .O(y_OBUF[19]));
  LUT3 #(
    .INIT(8'h69)) 
    \y_OBUF[19]_inst_i_10 
       (.I0(b_IBUF[18]),
        .I1(f_IBUF[0]),
        .I2(a_IBUF[18]),
        .O(\y_OBUF[19]_inst_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_OBUF[19]_inst_i_11 
       (.I0(b_IBUF[17]),
        .I1(f_IBUF[0]),
        .I2(a_IBUF[17]),
        .O(\y_OBUF[19]_inst_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_OBUF[19]_inst_i_12 
       (.I0(b_IBUF[16]),
        .I1(f_IBUF[0]),
        .I2(a_IBUF[16]),
        .O(\y_OBUF[19]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000FCC0003CAAAA)) 
    \y_OBUF[19]_inst_i_2 
       (.I0(data0[19]),
        .I1(b_IBUF[19]),
        .I2(a_IBUF[19]),
        .I3(f_IBUF[0]),
        .I4(f_IBUF[2]),
        .I5(f_IBUF[1]),
        .O(\y_OBUF[19]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCEFFCEFCCECFCECC)) 
    \y_OBUF[19]_inst_i_3 
       (.I0(\y_OBUF[23]_inst_i_7_n_0 ),
        .I1(\y_OBUF[19]_inst_i_6_n_0 ),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(\y_OBUF[19]_inst_i_7_n_0 ),
        .I5(\y_OBUF[21]_inst_i_6_n_0 ),
        .O(\y_OBUF[19]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0000000C000)) 
    \y_OBUF[19]_inst_i_4 
       (.I0(\y_OBUF[19]_inst_i_8_n_0 ),
        .I1(\y_OBUF[20]_inst_i_5_n_0 ),
        .I2(f_IBUF[1]),
        .I3(f_IBUF[2]),
        .I4(f_IBUF[0]),
        .I5(b_IBUF[1]),
        .O(\y_OBUF[19]_inst_i_4_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \y_OBUF[19]_inst_i_5 
       (.CI(\y_OBUF[15]_inst_i_6_n_0 ),
        .CO({\y_OBUF[19]_inst_i_5_n_0 ,\y_OBUF[19]_inst_i_5_n_1 ,\y_OBUF[19]_inst_i_5_n_2 ,\y_OBUF[19]_inst_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI(a_IBUF[19:16]),
        .O(data0[19:16]),
        .S({\y_OBUF[19]_inst_i_9_n_0 ,\y_OBUF[19]_inst_i_10_n_0 ,\y_OBUF[19]_inst_i_11_n_0 ,\y_OBUF[19]_inst_i_12_n_0 }));
  LUT5 #(
    .INIT(32'h10000000)) 
    \y_OBUF[19]_inst_i_6 
       (.I0(b_IBUF[5]),
        .I1(b_IBUF[4]),
        .I2(b_IBUF[3]),
        .I3(b_IBUF[2]),
        .I4(a_IBUF[25]),
        .O(\y_OBUF[19]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y_OBUF[19]_inst_i_7 
       (.I0(a_IBUF[27]),
        .I1(a_IBUF[19]),
        .I2(b_IBUF[5]),
        .I3(b_IBUF[4]),
        .O(\y_OBUF[19]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \y_OBUF[19]_inst_i_8 
       (.I0(\y_OBUF[15]_inst_i_9_n_0 ),
        .I1(\y_OBUF[15]_inst_i_10_n_0 ),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(\y_OBUF[25]_inst_i_8_n_0 ),
        .I5(\y_OBUF[23]_inst_i_13_n_0 ),
        .O(\y_OBUF[19]_inst_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_OBUF[19]_inst_i_9 
       (.I0(b_IBUF[19]),
        .I1(f_IBUF[0]),
        .I2(a_IBUF[19]),
        .O(\y_OBUF[19]_inst_i_9_n_0 ));
  OBUF \y_OBUF[1]_inst 
       (.I(y_OBUF[1]),
        .O(y[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \y_OBUF[1]_inst_i_1 
       (.I0(\y_OBUF[1]_inst_i_2_n_0 ),
        .I1(\y_OBUF[1]_inst_i_3_n_0 ),
        .I2(\y_OBUF[1]_inst_i_4_n_0 ),
        .I3(\y_OBUF[27]_inst_i_4_n_0 ),
        .I4(\y_OBUF[1]_inst_i_5_n_0 ),
        .I5(\y_OBUF[1]_inst_i_6_n_0 ),
        .O(y_OBUF[1]));
  LUT6 #(
    .INIT(64'h00000000000A000C)) 
    \y_OBUF[1]_inst_i_10 
       (.I0(a_IBUF[9]),
        .I1(a_IBUF[1]),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(b_IBUF[4]),
        .I5(b_IBUF[5]),
        .O(\y_OBUF[1]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00FF000040000000)) 
    \y_OBUF[1]_inst_i_11 
       (.I0(b_IBUF[1]),
        .I1(\y_OBUF[27]_inst_i_8_n_0 ),
        .I2(\y_OBUF[2]_inst_i_5_n_0 ),
        .I3(f_IBUF[2]),
        .I4(f_IBUF[1]),
        .I5(f_IBUF[0]),
        .O(\y_OBUF[1]_inst_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \y_OBUF[1]_inst_i_12 
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[2]),
        .O(\y_OBUF[1]_inst_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hEA00)) 
    \y_OBUF[1]_inst_i_2 
       (.I0(f_IBUF[2]),
        .I1(f_IBUF[0]),
        .I2(f_IBUF[1]),
        .I3(b_IBUF[1]),
        .O(\y_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF80FF80FF800080)) 
    \y_OBUF[1]_inst_i_3 
       (.I0(\y_OBUF[29]_inst_i_8_n_0 ),
        .I1(a_IBUF[0]),
        .I2(f_IBUF[1]),
        .I3(f_IBUF[0]),
        .I4(\y_OBUF[1]_inst_i_7_n_0 ),
        .I5(\y_OBUF[1]_inst_i_8_n_0 ),
        .O(\y_OBUF[1]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00A80600)) 
    \y_OBUF[1]_inst_i_4 
       (.I0(b_IBUF[1]),
        .I1(a_IBUF[1]),
        .I2(f_IBUF[0]),
        .I3(f_IBUF[2]),
        .I4(f_IBUF[1]),
        .O(\y_OBUF[1]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFECECEC)) 
    \y_OBUF[1]_inst_i_5 
       (.I0(\y_OBUF[3]_inst_i_8_n_0 ),
        .I1(\y_OBUF[1]_inst_i_9_n_0 ),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(\y_OBUF[3]_inst_i_9_n_0 ),
        .I5(\y_OBUF[1]_inst_i_10_n_0 ),
        .O(\y_OBUF[1]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hFF020202)) 
    \y_OBUF[1]_inst_i_6 
       (.I0(data0[1]),
        .I1(f_IBUF[2]),
        .I2(f_IBUF[1]),
        .I3(a_IBUF[1]),
        .I4(\y_OBUF[1]_inst_i_11_n_0 ),
        .O(\y_OBUF[1]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h33BB33BB33BB3088)) 
    \y_OBUF[1]_inst_i_7 
       (.I0(\y_OBUF[3]_inst_i_13_n_0 ),
        .I1(b_IBUF[2]),
        .I2(\y_OBUF[3]_inst_i_14_n_0 ),
        .I3(b_IBUF[3]),
        .I4(\y_OBUF[2]_inst_i_7_n_0 ),
        .I5(\y_OBUF[2]_inst_i_8_n_0 ),
        .O(\y_OBUF[1]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \y_OBUF[1]_inst_i_8 
       (.I0(\y_OBUF[1]_inst_i_12_n_0 ),
        .I1(b_IBUF[4]),
        .I2(b_IBUF[5]),
        .I3(a_IBUF[24]),
        .I4(a_IBUF[16]),
        .I5(a_IBUF[8]),
        .O(\y_OBUF[1]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \y_OBUF[1]_inst_i_9 
       (.I0(a_IBUF[25]),
        .I1(a_IBUF[17]),
        .I2(b_IBUF[4]),
        .I3(b_IBUF[5]),
        .I4(b_IBUF[2]),
        .I5(b_IBUF[3]),
        .O(\y_OBUF[1]_inst_i_9_n_0 ));
  OBUF \y_OBUF[20]_inst 
       (.I(y_OBUF[20]),
        .O(y[20]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \y_OBUF[20]_inst_i_1 
       (.I0(\y_OBUF[20]_inst_i_2_n_0 ),
        .I1(\y_OBUF[21]_inst_i_3_n_0 ),
        .I2(\y_OBUF[25]_inst_i_4_n_0 ),
        .I3(\y_OBUF[20]_inst_i_3_n_0 ),
        .I4(\y_OBUF[27]_inst_i_4_n_0 ),
        .I5(\y_OBUF[20]_inst_i_4_n_0 ),
        .O(y_OBUF[20]));
  LUT6 #(
    .INIT(64'h0000A0000000C000)) 
    \y_OBUF[20]_inst_i_2 
       (.I0(\y_OBUF[20]_inst_i_5_n_0 ),
        .I1(\y_OBUF[21]_inst_i_7_n_0 ),
        .I2(f_IBUF[1]),
        .I3(f_IBUF[2]),
        .I4(f_IBUF[0]),
        .I5(b_IBUF[1]),
        .O(\y_OBUF[20]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFAEABAA)) 
    \y_OBUF[20]_inst_i_3 
       (.I0(\y_OBUF[20]_inst_i_6_n_0 ),
        .I1(b_IBUF[2]),
        .I2(b_IBUF[3]),
        .I3(\y_OBUF[20]_inst_i_7_n_0 ),
        .I4(\y_OBUF[22]_inst_i_6_n_0 ),
        .O(\y_OBUF[20]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000003CFCAAC0AA)) 
    \y_OBUF[20]_inst_i_4 
       (.I0(data0[20]),
        .I1(a_IBUF[20]),
        .I2(b_IBUF[20]),
        .I3(f_IBUF[1]),
        .I4(f_IBUF[0]),
        .I5(f_IBUF[2]),
        .O(\y_OBUF[20]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \y_OBUF[20]_inst_i_5 
       (.I0(\y_OBUF[15]_inst_i_13_n_0 ),
        .I1(\y_OBUF[15]_inst_i_14_n_0 ),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(\y_OBUF[26]_inst_i_10_n_0 ),
        .I5(\y_OBUF[24]_inst_i_9_n_0 ),
        .O(\y_OBUF[20]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \y_OBUF[20]_inst_i_6 
       (.I0(a_IBUF[26]),
        .I1(a_IBUF[24]),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(b_IBUF[4]),
        .I5(b_IBUF[5]),
        .O(\y_OBUF[20]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y_OBUF[20]_inst_i_7 
       (.I0(a_IBUF[28]),
        .I1(a_IBUF[20]),
        .I2(b_IBUF[5]),
        .I3(b_IBUF[4]),
        .O(\y_OBUF[20]_inst_i_7_n_0 ));
  OBUF \y_OBUF[21]_inst 
       (.I(y_OBUF[21]),
        .O(y[21]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \y_OBUF[21]_inst_i_1 
       (.I0(\y_OBUF[21]_inst_i_2_n_0 ),
        .I1(\y_OBUF[22]_inst_i_3_n_0 ),
        .I2(\y_OBUF[25]_inst_i_4_n_0 ),
        .I3(\y_OBUF[21]_inst_i_3_n_0 ),
        .I4(\y_OBUF[27]_inst_i_4_n_0 ),
        .I5(\y_OBUF[21]_inst_i_4_n_0 ),
        .O(y_OBUF[21]));
  LUT6 #(
    .INIT(64'h0000FCC0003CAAAA)) 
    \y_OBUF[21]_inst_i_2 
       (.I0(data0[21]),
        .I1(b_IBUF[21]),
        .I2(a_IBUF[21]),
        .I3(f_IBUF[0]),
        .I4(f_IBUF[2]),
        .I5(f_IBUF[1]),
        .O(\y_OBUF[21]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFAEABAA)) 
    \y_OBUF[21]_inst_i_3 
       (.I0(\y_OBUF[21]_inst_i_5_n_0 ),
        .I1(b_IBUF[2]),
        .I2(b_IBUF[3]),
        .I3(\y_OBUF[21]_inst_i_6_n_0 ),
        .I4(\y_OBUF[23]_inst_i_7_n_0 ),
        .O(\y_OBUF[21]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0000000C000)) 
    \y_OBUF[21]_inst_i_4 
       (.I0(\y_OBUF[21]_inst_i_7_n_0 ),
        .I1(\y_OBUF[22]_inst_i_5_n_0 ),
        .I2(f_IBUF[1]),
        .I3(f_IBUF[2]),
        .I4(f_IBUF[0]),
        .I5(b_IBUF[1]),
        .O(\y_OBUF[21]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \y_OBUF[21]_inst_i_5 
       (.I0(a_IBUF[27]),
        .I1(a_IBUF[25]),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(b_IBUF[4]),
        .I5(b_IBUF[5]),
        .O(\y_OBUF[21]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y_OBUF[21]_inst_i_6 
       (.I0(a_IBUF[29]),
        .I1(a_IBUF[21]),
        .I2(b_IBUF[5]),
        .I3(b_IBUF[4]),
        .O(\y_OBUF[21]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \y_OBUF[21]_inst_i_7 
       (.I0(\y_OBUF[23]_inst_i_13_n_0 ),
        .I1(\y_OBUF[15]_inst_i_9_n_0 ),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(\y_OBUF[27]_inst_i_14_n_0 ),
        .I5(\y_OBUF[25]_inst_i_8_n_0 ),
        .O(\y_OBUF[21]_inst_i_7_n_0 ));
  OBUF \y_OBUF[22]_inst 
       (.I(y_OBUF[22]),
        .O(y[22]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \y_OBUF[22]_inst_i_1 
       (.I0(\y_OBUF[22]_inst_i_2_n_0 ),
        .I1(\y_OBUF[23]_inst_i_4_n_0 ),
        .I2(\y_OBUF[25]_inst_i_4_n_0 ),
        .I3(\y_OBUF[22]_inst_i_3_n_0 ),
        .I4(\y_OBUF[27]_inst_i_4_n_0 ),
        .I5(\y_OBUF[22]_inst_i_4_n_0 ),
        .O(y_OBUF[22]));
  LUT6 #(
    .INIT(64'h0000A0000000C000)) 
    \y_OBUF[22]_inst_i_2 
       (.I0(\y_OBUF[22]_inst_i_5_n_0 ),
        .I1(\y_OBUF[23]_inst_i_8_n_0 ),
        .I2(f_IBUF[1]),
        .I3(f_IBUF[2]),
        .I4(f_IBUF[0]),
        .I5(b_IBUF[1]),
        .O(\y_OBUF[22]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE4440000E444)) 
    \y_OBUF[22]_inst_i_3 
       (.I0(b_IBUF[3]),
        .I1(\y_OBUF[22]_inst_i_6_n_0 ),
        .I2(\y_OBUF[27]_inst_i_8_n_0 ),
        .I3(a_IBUF[26]),
        .I4(b_IBUF[2]),
        .I5(\y_OBUF[24]_inst_i_8_n_0 ),
        .O(\y_OBUF[22]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000003CFCAAC0AA)) 
    \y_OBUF[22]_inst_i_4 
       (.I0(data0[22]),
        .I1(a_IBUF[22]),
        .I2(b_IBUF[22]),
        .I3(f_IBUF[1]),
        .I4(f_IBUF[0]),
        .I5(f_IBUF[2]),
        .O(\y_OBUF[22]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \y_OBUF[22]_inst_i_5 
       (.I0(\y_OBUF[24]_inst_i_9_n_0 ),
        .I1(\y_OBUF[15]_inst_i_13_n_0 ),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(\y_OBUF[28]_inst_i_5_n_0 ),
        .I5(\y_OBUF[26]_inst_i_10_n_0 ),
        .O(\y_OBUF[22]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y_OBUF[22]_inst_i_6 
       (.I0(a_IBUF[30]),
        .I1(a_IBUF[22]),
        .I2(b_IBUF[5]),
        .I3(b_IBUF[4]),
        .O(\y_OBUF[22]_inst_i_6_n_0 ));
  OBUF \y_OBUF[23]_inst 
       (.I(y_OBUF[23]),
        .O(y[23]));
  LUT5 #(
    .INIT(32'hFFFFFEEE)) 
    \y_OBUF[23]_inst_i_1 
       (.I0(\y_OBUF[23]_inst_i_2_n_0 ),
        .I1(\y_OBUF[23]_inst_i_3_n_0 ),
        .I2(\y_OBUF[23]_inst_i_4_n_0 ),
        .I3(\y_OBUF[27]_inst_i_4_n_0 ),
        .I4(\y_OBUF[23]_inst_i_5_n_0 ),
        .O(y_OBUF[23]));
  LUT3 #(
    .INIT(8'h69)) 
    \y_OBUF[23]_inst_i_10 
       (.I0(b_IBUF[22]),
        .I1(f_IBUF[0]),
        .I2(a_IBUF[22]),
        .O(\y_OBUF[23]_inst_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_OBUF[23]_inst_i_11 
       (.I0(b_IBUF[21]),
        .I1(f_IBUF[0]),
        .I2(a_IBUF[21]),
        .O(\y_OBUF[23]_inst_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_OBUF[23]_inst_i_12 
       (.I0(b_IBUF[20]),
        .I1(f_IBUF[0]),
        .I2(a_IBUF[20]),
        .O(\y_OBUF[23]_inst_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \y_OBUF[23]_inst_i_13 
       (.I0(a_IBUF[16]),
        .I1(a_IBUF[8]),
        .I2(a_IBUF[0]),
        .I3(b_IBUF[5]),
        .I4(b_IBUF[4]),
        .O(\y_OBUF[23]_inst_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \y_OBUF[23]_inst_i_2 
       (.I0(\y_OBUF[25]_inst_i_4_n_0 ),
        .I1(\y_OBUF[24]_inst_i_4_n_0 ),
        .I2(b_IBUF[23]),
        .I3(a_IBUF[23]),
        .I4(\y_OBUF[29]_inst_i_6_n_0 ),
        .O(\y_OBUF[23]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00EE008800F000F0)) 
    \y_OBUF[23]_inst_i_3 
       (.I0(b_IBUF[23]),
        .I1(a_IBUF[23]),
        .I2(data0[23]),
        .I3(f_IBUF[2]),
        .I4(f_IBUF[0]),
        .I5(f_IBUF[1]),
        .O(\y_OBUF[23]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE4440000E444)) 
    \y_OBUF[23]_inst_i_4 
       (.I0(b_IBUF[3]),
        .I1(\y_OBUF[23]_inst_i_7_n_0 ),
        .I2(\y_OBUF[27]_inst_i_8_n_0 ),
        .I3(a_IBUF[27]),
        .I4(b_IBUF[2]),
        .I5(\y_OBUF[24]_inst_i_7_n_0 ),
        .O(\y_OBUF[23]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0000000C000)) 
    \y_OBUF[23]_inst_i_5 
       (.I0(\y_OBUF[23]_inst_i_8_n_0 ),
        .I1(\y_OBUF[24]_inst_i_6_n_0 ),
        .I2(f_IBUF[1]),
        .I3(f_IBUF[2]),
        .I4(f_IBUF[0]),
        .I5(b_IBUF[1]),
        .O(\y_OBUF[23]_inst_i_5_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \y_OBUF[23]_inst_i_6 
       (.CI(\y_OBUF[19]_inst_i_5_n_0 ),
        .CO({\y_OBUF[23]_inst_i_6_n_0 ,\y_OBUF[23]_inst_i_6_n_1 ,\y_OBUF[23]_inst_i_6_n_2 ,\y_OBUF[23]_inst_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI(a_IBUF[23:20]),
        .O(data0[23:20]),
        .S({\y_OBUF[23]_inst_i_9_n_0 ,\y_OBUF[23]_inst_i_10_n_0 ,\y_OBUF[23]_inst_i_11_n_0 ,\y_OBUF[23]_inst_i_12_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \y_OBUF[23]_inst_i_7 
       (.I0(a_IBUF[31]),
        .I1(a_IBUF[23]),
        .I2(b_IBUF[5]),
        .I3(b_IBUF[4]),
        .O(\y_OBUF[23]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \y_OBUF[23]_inst_i_8 
       (.I0(\y_OBUF[25]_inst_i_8_n_0 ),
        .I1(\y_OBUF[23]_inst_i_13_n_0 ),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(\y_OBUF[29]_inst_i_9_n_0 ),
        .I5(\y_OBUF[27]_inst_i_14_n_0 ),
        .O(\y_OBUF[23]_inst_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_OBUF[23]_inst_i_9 
       (.I0(b_IBUF[23]),
        .I1(f_IBUF[0]),
        .I2(a_IBUF[23]),
        .O(\y_OBUF[23]_inst_i_9_n_0 ));
  OBUF \y_OBUF[24]_inst 
       (.I(y_OBUF[24]),
        .O(y[24]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \y_OBUF[24]_inst_i_1 
       (.I0(\y_OBUF[24]_inst_i_2_n_0 ),
        .I1(\y_OBUF[25]_inst_i_4_n_0 ),
        .I2(\y_OBUF[24]_inst_i_3_n_0 ),
        .I3(\y_OBUF[27]_inst_i_4_n_0 ),
        .I4(\y_OBUF[24]_inst_i_4_n_0 ),
        .I5(\y_OBUF[24]_inst_i_5_n_0 ),
        .O(y_OBUF[24]));
  LUT6 #(
    .INIT(64'h0000A0000000C000)) 
    \y_OBUF[24]_inst_i_2 
       (.I0(\y_OBUF[24]_inst_i_6_n_0 ),
        .I1(\y_OBUF[25]_inst_i_7_n_0 ),
        .I2(f_IBUF[1]),
        .I3(f_IBUF[2]),
        .I4(f_IBUF[0]),
        .I5(b_IBUF[1]),
        .O(\y_OBUF[24]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0FFFFA0C00000)) 
    \y_OBUF[24]_inst_i_3 
       (.I0(a_IBUF[31]),
        .I1(a_IBUF[27]),
        .I2(\y_OBUF[27]_inst_i_8_n_0 ),
        .I3(b_IBUF[3]),
        .I4(b_IBUF[2]),
        .I5(\y_OBUF[24]_inst_i_7_n_0 ),
        .O(\y_OBUF[24]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0FFFFA0C00000)) 
    \y_OBUF[24]_inst_i_4 
       (.I0(a_IBUF[30]),
        .I1(a_IBUF[26]),
        .I2(\y_OBUF[27]_inst_i_8_n_0 ),
        .I3(b_IBUF[3]),
        .I4(b_IBUF[2]),
        .I5(\y_OBUF[24]_inst_i_8_n_0 ),
        .O(\y_OBUF[24]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000003CFCAAC0AA)) 
    \y_OBUF[24]_inst_i_5 
       (.I0(data0[24]),
        .I1(a_IBUF[24]),
        .I2(b_IBUF[24]),
        .I3(f_IBUF[1]),
        .I4(f_IBUF[0]),
        .I5(f_IBUF[2]),
        .O(\y_OBUF[24]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \y_OBUF[24]_inst_i_6 
       (.I0(\y_OBUF[26]_inst_i_10_n_0 ),
        .I1(\y_OBUF[24]_inst_i_9_n_0 ),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(\y_OBUF[30]_inst_i_5_n_0 ),
        .I5(\y_OBUF[28]_inst_i_5_n_0 ),
        .O(\y_OBUF[24]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h000A000C)) 
    \y_OBUF[24]_inst_i_7 
       (.I0(a_IBUF[29]),
        .I1(a_IBUF[25]),
        .I2(b_IBUF[4]),
        .I3(b_IBUF[5]),
        .I4(b_IBUF[3]),
        .O(\y_OBUF[24]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \y_OBUF[24]_inst_i_8 
       (.I0(a_IBUF[28]),
        .I1(a_IBUF[24]),
        .I2(b_IBUF[4]),
        .I3(b_IBUF[5]),
        .I4(b_IBUF[3]),
        .O(\y_OBUF[24]_inst_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \y_OBUF[24]_inst_i_9 
       (.I0(a_IBUF[17]),
        .I1(a_IBUF[9]),
        .I2(a_IBUF[1]),
        .I3(b_IBUF[5]),
        .I4(b_IBUF[4]),
        .O(\y_OBUF[24]_inst_i_9_n_0 ));
  OBUF \y_OBUF[25]_inst 
       (.I(y_OBUF[25]),
        .O(y[25]));
  LUT5 #(
    .INIT(32'hFFFFFEEE)) 
    \y_OBUF[25]_inst_i_1 
       (.I0(\y_OBUF[25]_inst_i_2_n_0 ),
        .I1(\y_OBUF[25]_inst_i_3_n_0 ),
        .I2(\y_OBUF[25]_inst_i_4_n_0 ),
        .I3(\y_OBUF[25]_inst_i_5_n_0 ),
        .I4(\y_OBUF[25]_inst_i_6_n_0 ),
        .O(y_OBUF[25]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \y_OBUF[25]_inst_i_2 
       (.I0(\y_OBUF[27]_inst_i_4_n_0 ),
        .I1(\y_OBUF[24]_inst_i_3_n_0 ),
        .I2(b_IBUF[25]),
        .I3(a_IBUF[25]),
        .I4(\y_OBUF[29]_inst_i_6_n_0 ),
        .O(\y_OBUF[25]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00EE008800F000F0)) 
    \y_OBUF[25]_inst_i_3 
       (.I0(b_IBUF[25]),
        .I1(a_IBUF[25]),
        .I2(data0[25]),
        .I3(f_IBUF[2]),
        .I4(f_IBUF[0]),
        .I5(f_IBUF[1]),
        .O(\y_OBUF[25]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \y_OBUF[25]_inst_i_4 
       (.I0(f_IBUF[0]),
        .I1(f_IBUF[2]),
        .I2(b_IBUF[1]),
        .O(\y_OBUF[25]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h30300000BB880000)) 
    \y_OBUF[25]_inst_i_5 
       (.I0(a_IBUF[28]),
        .I1(b_IBUF[2]),
        .I2(a_IBUF[30]),
        .I3(a_IBUF[26]),
        .I4(\y_OBUF[27]_inst_i_8_n_0 ),
        .I5(b_IBUF[3]),
        .O(\y_OBUF[25]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0000000C000)) 
    \y_OBUF[25]_inst_i_6 
       (.I0(\y_OBUF[25]_inst_i_7_n_0 ),
        .I1(\y_OBUF[26]_inst_i_9_n_0 ),
        .I2(f_IBUF[1]),
        .I3(f_IBUF[2]),
        .I4(f_IBUF[0]),
        .I5(b_IBUF[1]),
        .O(\y_OBUF[25]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \y_OBUF[25]_inst_i_7 
       (.I0(\y_OBUF[27]_inst_i_14_n_0 ),
        .I1(\y_OBUF[25]_inst_i_8_n_0 ),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(\y_OBUF[31]_inst_i_24_n_0 ),
        .I5(\y_OBUF[29]_inst_i_9_n_0 ),
        .O(\y_OBUF[25]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \y_OBUF[25]_inst_i_8 
       (.I0(a_IBUF[18]),
        .I1(a_IBUF[10]),
        .I2(a_IBUF[2]),
        .I3(b_IBUF[5]),
        .I4(b_IBUF[4]),
        .O(\y_OBUF[25]_inst_i_8_n_0 ));
  OBUF \y_OBUF[26]_inst 
       (.I(y_OBUF[26]),
        .O(y[26]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8880)) 
    \y_OBUF[26]_inst_i_1 
       (.I0(\y_OBUF[26]_inst_i_2_n_0 ),
        .I1(\y_OBUF[26]_inst_i_3_n_0 ),
        .I2(\y_OBUF[26]_inst_i_4_n_0 ),
        .I3(\y_OBUF[26]_inst_i_5_n_0 ),
        .I4(\y_OBUF[26]_inst_i_6_n_0 ),
        .I5(\y_OBUF[26]_inst_i_7_n_0 ),
        .O(y_OBUF[26]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \y_OBUF[26]_inst_i_10 
       (.I0(a_IBUF[19]),
        .I1(a_IBUF[11]),
        .I2(a_IBUF[3]),
        .I3(b_IBUF[5]),
        .I4(b_IBUF[4]),
        .O(\y_OBUF[26]_inst_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \y_OBUF[26]_inst_i_2 
       (.I0(f_IBUF[1]),
        .I1(f_IBUF[0]),
        .I2(f_IBUF[2]),
        .O(\y_OBUF[26]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \y_OBUF[26]_inst_i_3 
       (.I0(f_IBUF[2]),
        .I1(f_IBUF[1]),
        .O(\y_OBUF[26]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAEFEAAAAA)) 
    \y_OBUF[26]_inst_i_4 
       (.I0(\y_OBUF[26]_inst_i_8_n_0 ),
        .I1(\y_OBUF[26]_inst_i_9_n_0 ),
        .I2(b_IBUF[1]),
        .I3(\y_OBUF[27]_inst_i_9_n_0 ),
        .I4(f_IBUF[1]),
        .I5(f_IBUF[0]),
        .O(\y_OBUF[26]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hA0C0)) 
    \y_OBUF[26]_inst_i_5 
       (.I0(\y_OBUF[27]_inst_i_5_n_0 ),
        .I1(\y_OBUF[25]_inst_i_5_n_0 ),
        .I2(f_IBUF[0]),
        .I3(b_IBUF[1]),
        .O(\y_OBUF[26]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h30200000)) 
    \y_OBUF[26]_inst_i_6 
       (.I0(f_IBUF[0]),
        .I1(f_IBUF[2]),
        .I2(f_IBUF[1]),
        .I3(a_IBUF[26]),
        .I4(b_IBUF[26]),
        .O(\y_OBUF[26]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h0000C0AA)) 
    \y_OBUF[26]_inst_i_7 
       (.I0(data0[26]),
        .I1(a_IBUF[26]),
        .I2(f_IBUF[0]),
        .I3(f_IBUF[1]),
        .I4(f_IBUF[2]),
        .O(\y_OBUF[26]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0110)) 
    \y_OBUF[26]_inst_i_8 
       (.I0(f_IBUF[1]),
        .I1(f_IBUF[0]),
        .I2(b_IBUF[26]),
        .I3(a_IBUF[26]),
        .O(\y_OBUF[26]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \y_OBUF[26]_inst_i_9 
       (.I0(\y_OBUF[28]_inst_i_5_n_0 ),
        .I1(\y_OBUF[26]_inst_i_10_n_0 ),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(\y_OBUF[28]_inst_i_6_n_0 ),
        .I5(\y_OBUF[30]_inst_i_5_n_0 ),
        .O(\y_OBUF[26]_inst_i_9_n_0 ));
  OBUF \y_OBUF[27]_inst 
       (.I(y_OBUF[27]),
        .O(y[27]));
  LUT5 #(
    .INIT(32'hFFFFFEEE)) 
    \y_OBUF[27]_inst_i_1 
       (.I0(\y_OBUF[27]_inst_i_2_n_0 ),
        .I1(\y_OBUF[27]_inst_i_3_n_0 ),
        .I2(\y_OBUF[27]_inst_i_4_n_0 ),
        .I3(\y_OBUF[27]_inst_i_5_n_0 ),
        .I4(\y_OBUF[27]_inst_i_6_n_0 ),
        .O(y_OBUF[27]));
  LUT3 #(
    .INIT(8'h69)) 
    \y_OBUF[27]_inst_i_10 
       (.I0(b_IBUF[27]),
        .I1(f_IBUF[0]),
        .I2(a_IBUF[27]),
        .O(\y_OBUF[27]_inst_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_OBUF[27]_inst_i_11 
       (.I0(b_IBUF[26]),
        .I1(f_IBUF[0]),
        .I2(a_IBUF[26]),
        .O(\y_OBUF[27]_inst_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_OBUF[27]_inst_i_12 
       (.I0(b_IBUF[25]),
        .I1(f_IBUF[0]),
        .I2(a_IBUF[25]),
        .O(\y_OBUF[27]_inst_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_OBUF[27]_inst_i_13 
       (.I0(b_IBUF[24]),
        .I1(f_IBUF[0]),
        .I2(a_IBUF[24]),
        .O(\y_OBUF[27]_inst_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \y_OBUF[27]_inst_i_14 
       (.I0(a_IBUF[20]),
        .I1(a_IBUF[12]),
        .I2(a_IBUF[4]),
        .I3(b_IBUF[5]),
        .I4(b_IBUF[4]),
        .O(\y_OBUF[27]_inst_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \y_OBUF[27]_inst_i_2 
       (.I0(\y_OBUF[28]_inst_i_7_n_0 ),
        .I1(\y_OBUF[25]_inst_i_4_n_0 ),
        .I2(b_IBUF[27]),
        .I3(a_IBUF[27]),
        .I4(\y_OBUF[29]_inst_i_6_n_0 ),
        .O(\y_OBUF[27]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00EE008800F000F0)) 
    \y_OBUF[27]_inst_i_3 
       (.I0(b_IBUF[27]),
        .I1(a_IBUF[27]),
        .I2(data0[27]),
        .I3(f_IBUF[2]),
        .I4(f_IBUF[0]),
        .I5(f_IBUF[1]),
        .O(\y_OBUF[27]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \y_OBUF[27]_inst_i_4 
       (.I0(f_IBUF[0]),
        .I1(f_IBUF[2]),
        .I2(b_IBUF[1]),
        .O(\y_OBUF[27]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h30300000BB880000)) 
    \y_OBUF[27]_inst_i_5 
       (.I0(a_IBUF[29]),
        .I1(b_IBUF[2]),
        .I2(a_IBUF[31]),
        .I3(a_IBUF[27]),
        .I4(\y_OBUF[27]_inst_i_8_n_0 ),
        .I5(b_IBUF[3]),
        .O(\y_OBUF[27]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0000000C000)) 
    \y_OBUF[27]_inst_i_6 
       (.I0(\y_OBUF[27]_inst_i_9_n_0 ),
        .I1(\y_OBUF[28]_inst_i_2_n_0 ),
        .I2(f_IBUF[1]),
        .I3(f_IBUF[2]),
        .I4(f_IBUF[0]),
        .I5(b_IBUF[1]),
        .O(\y_OBUF[27]_inst_i_6_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \y_OBUF[27]_inst_i_7 
       (.CI(\y_OBUF[23]_inst_i_6_n_0 ),
        .CO({\y_OBUF[27]_inst_i_7_n_0 ,\y_OBUF[27]_inst_i_7_n_1 ,\y_OBUF[27]_inst_i_7_n_2 ,\y_OBUF[27]_inst_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI(a_IBUF[27:24]),
        .O(data0[27:24]),
        .S({\y_OBUF[27]_inst_i_10_n_0 ,\y_OBUF[27]_inst_i_11_n_0 ,\y_OBUF[27]_inst_i_12_n_0 ,\y_OBUF[27]_inst_i_13_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \y_OBUF[27]_inst_i_8 
       (.I0(b_IBUF[5]),
        .I1(b_IBUF[4]),
        .O(\y_OBUF[27]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \y_OBUF[27]_inst_i_9 
       (.I0(\y_OBUF[29]_inst_i_9_n_0 ),
        .I1(\y_OBUF[27]_inst_i_14_n_0 ),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(\y_OBUF[31]_inst_i_16_n_0 ),
        .I5(\y_OBUF[31]_inst_i_24_n_0 ),
        .O(\y_OBUF[27]_inst_i_9_n_0 ));
  OBUF \y_OBUF[28]_inst 
       (.I(y_OBUF[28]),
        .O(y[28]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \y_OBUF[28]_inst_i_1 
       (.I0(\y_OBUF[28]_inst_i_2_n_0 ),
        .I1(\y_OBUF[31]_inst_i_6_n_0 ),
        .I2(\y_OBUF[29]_inst_i_4_n_0 ),
        .I3(\y_OBUF[31]_inst_i_4_n_0 ),
        .I4(\y_OBUF[28]_inst_i_3_n_0 ),
        .I5(\y_OBUF[28]_inst_i_4_n_0 ),
        .O(y_OBUF[28]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \y_OBUF[28]_inst_i_2 
       (.I0(\y_OBUF[30]_inst_i_5_n_0 ),
        .I1(\y_OBUF[28]_inst_i_5_n_0 ),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(\y_OBUF[31]_inst_i_12_n_0 ),
        .I5(\y_OBUF[28]_inst_i_6_n_0 ),
        .O(\y_OBUF[28]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \y_OBUF[28]_inst_i_3 
       (.I0(\y_OBUF[29]_inst_i_5_n_0 ),
        .I1(\y_OBUF[28]_inst_i_7_n_0 ),
        .I2(f_IBUF[0]),
        .I3(f_IBUF[2]),
        .I4(b_IBUF[1]),
        .O(\y_OBUF[28]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000003CFCAAC0AA)) 
    \y_OBUF[28]_inst_i_4 
       (.I0(data0[28]),
        .I1(a_IBUF[28]),
        .I2(b_IBUF[28]),
        .I3(f_IBUF[1]),
        .I4(f_IBUF[0]),
        .I5(f_IBUF[2]),
        .O(\y_OBUF[28]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \y_OBUF[28]_inst_i_5 
       (.I0(a_IBUF[21]),
        .I1(a_IBUF[13]),
        .I2(a_IBUF[5]),
        .I3(b_IBUF[5]),
        .I4(b_IBUF[4]),
        .O(\y_OBUF[28]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \y_OBUF[28]_inst_i_6 
       (.I0(a_IBUF[9]),
        .I1(a_IBUF[1]),
        .I2(b_IBUF[4]),
        .I3(b_IBUF[5]),
        .I4(a_IBUF[25]),
        .I5(a_IBUF[17]),
        .O(\y_OBUF[28]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000AC)) 
    \y_OBUF[28]_inst_i_7 
       (.I0(a_IBUF[30]),
        .I1(a_IBUF[28]),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(b_IBUF[4]),
        .I5(b_IBUF[5]),
        .O(\y_OBUF[28]_inst_i_7_n_0 ));
  OBUF \y_OBUF[29]_inst 
       (.I(y_OBUF[29]),
        .O(y[29]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \y_OBUF[29]_inst_i_1 
       (.I0(\y_OBUF[29]_inst_i_2_n_0 ),
        .I1(\y_OBUF[29]_inst_i_3_n_0 ),
        .I2(\y_OBUF[31]_inst_i_4_n_0 ),
        .I3(\y_OBUF[30]_inst_i_2_n_0 ),
        .I4(\y_OBUF[31]_inst_i_6_n_0 ),
        .I5(\y_OBUF[29]_inst_i_4_n_0 ),
        .O(y_OBUF[29]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \y_OBUF[29]_inst_i_2 
       (.I0(\y_OBUF[29]_inst_i_5_n_0 ),
        .I1(\y_OBUF[27]_inst_i_4_n_0 ),
        .I2(b_IBUF[29]),
        .I3(a_IBUF[29]),
        .I4(\y_OBUF[29]_inst_i_6_n_0 ),
        .O(\y_OBUF[29]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F8F8F8F8F8)) 
    \y_OBUF[29]_inst_i_3 
       (.I0(\y_OBUF[30]_inst_i_9_n_0 ),
        .I1(data0[29]),
        .I2(\y_OBUF[29]_inst_i_7_n_0 ),
        .I3(\y_OBUF[25]_inst_i_4_n_0 ),
        .I4(\y_OBUF[29]_inst_i_8_n_0 ),
        .I5(a_IBUF[30]),
        .O(\y_OBUF[29]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \y_OBUF[29]_inst_i_4 
       (.I0(\y_OBUF[31]_inst_i_14_n_0 ),
        .I1(\y_OBUF[31]_inst_i_16_n_0 ),
        .I2(\y_OBUF[29]_inst_i_9_n_0 ),
        .I3(b_IBUF[3]),
        .I4(b_IBUF[2]),
        .O(\y_OBUF[29]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000AC)) 
    \y_OBUF[29]_inst_i_5 
       (.I0(a_IBUF[31]),
        .I1(a_IBUF[29]),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(b_IBUF[4]),
        .I5(b_IBUF[5]),
        .O(\y_OBUF[29]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \y_OBUF[29]_inst_i_6 
       (.I0(f_IBUF[0]),
        .I1(f_IBUF[2]),
        .I2(f_IBUF[1]),
        .O(\y_OBUF[29]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h30202000)) 
    \y_OBUF[29]_inst_i_7 
       (.I0(f_IBUF[0]),
        .I1(f_IBUF[2]),
        .I2(f_IBUF[1]),
        .I3(a_IBUF[29]),
        .I4(b_IBUF[29]),
        .O(\y_OBUF[29]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \y_OBUF[29]_inst_i_8 
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[3]),
        .I2(b_IBUF[4]),
        .I3(b_IBUF[5]),
        .O(\y_OBUF[29]_inst_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \y_OBUF[29]_inst_i_9 
       (.I0(a_IBUF[22]),
        .I1(a_IBUF[14]),
        .I2(a_IBUF[6]),
        .I3(b_IBUF[5]),
        .I4(b_IBUF[4]),
        .O(\y_OBUF[29]_inst_i_9_n_0 ));
  OBUF \y_OBUF[2]_inst 
       (.I(y_OBUF[2]),
        .O(y[2]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \y_OBUF[2]_inst_i_1 
       (.I0(\y_OBUF[2]_inst_i_2_n_0 ),
        .I1(\y_OBUF[2]_inst_i_3_n_0 ),
        .I2(\y_OBUF[27]_inst_i_4_n_0 ),
        .I3(\y_OBUF[2]_inst_i_4_n_0 ),
        .I4(\y_OBUF[25]_inst_i_4_n_0 ),
        .I5(\y_OBUF[3]_inst_i_4_n_0 ),
        .O(y_OBUF[2]));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \y_OBUF[2]_inst_i_2 
       (.I0(\y_OBUF[31]_inst_i_6_n_0 ),
        .I1(\y_OBUF[27]_inst_i_8_n_0 ),
        .I2(\y_OBUF[2]_inst_i_5_n_0 ),
        .I3(a_IBUF[1]),
        .I4(\y_OBUF[3]_inst_i_7_n_0 ),
        .I5(\y_OBUF[31]_inst_i_4_n_0 ),
        .O(\y_OBUF[2]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000003CFCAAC0AA)) 
    \y_OBUF[2]_inst_i_3 
       (.I0(data0[2]),
        .I1(a_IBUF[2]),
        .I2(b_IBUF[2]),
        .I3(f_IBUF[1]),
        .I4(f_IBUF[0]),
        .I5(f_IBUF[2]),
        .O(\y_OBUF[2]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \y_OBUF[2]_inst_i_4 
       (.I0(\y_OBUF[2]_inst_i_6_n_0 ),
        .I1(\y_OBUF[3]_inst_i_13_n_0 ),
        .I2(\y_OBUF[3]_inst_i_11_n_0 ),
        .I3(b_IBUF[3]),
        .I4(b_IBUF[2]),
        .O(\y_OBUF[2]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \y_OBUF[2]_inst_i_5 
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[2]),
        .O(\y_OBUF[2]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \y_OBUF[2]_inst_i_6 
       (.I0(\y_OBUF[3]_inst_i_14_n_0 ),
        .I1(b_IBUF[3]),
        .I2(\y_OBUF[2]_inst_i_7_n_0 ),
        .I3(\y_OBUF[2]_inst_i_8_n_0 ),
        .O(\y_OBUF[2]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h000000AC)) 
    \y_OBUF[2]_inst_i_7 
       (.I0(a_IBUF[10]),
        .I1(a_IBUF[2]),
        .I2(b_IBUF[4]),
        .I3(b_IBUF[5]),
        .I4(b_IBUF[3]),
        .O(\y_OBUF[2]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h0000AC00)) 
    \y_OBUF[2]_inst_i_8 
       (.I0(a_IBUF[26]),
        .I1(a_IBUF[18]),
        .I2(b_IBUF[4]),
        .I3(b_IBUF[5]),
        .I4(b_IBUF[3]),
        .O(\y_OBUF[2]_inst_i_8_n_0 ));
  OBUF \y_OBUF[30]_inst 
       (.I(y_OBUF[30]),
        .O(y[30]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \y_OBUF[30]_inst_i_1 
       (.I0(\y_OBUF[30]_inst_i_2_n_0 ),
        .I1(\y_OBUF[31]_inst_i_6_n_0 ),
        .I2(\y_OBUF[31]_inst_i_7_n_0 ),
        .I3(\y_OBUF[31]_inst_i_4_n_0 ),
        .I4(\y_OBUF[30]_inst_i_3_n_0 ),
        .I5(\y_OBUF[30]_inst_i_4_n_0 ),
        .O(y_OBUF[30]));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \y_OBUF[30]_inst_i_2 
       (.I0(\y_OBUF[31]_inst_i_10_n_0 ),
        .I1(\y_OBUF[31]_inst_i_12_n_0 ),
        .I2(\y_OBUF[30]_inst_i_5_n_0 ),
        .I3(b_IBUF[3]),
        .I4(b_IBUF[2]),
        .O(\y_OBUF[30]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAA08AA08AA08)) 
    \y_OBUF[30]_inst_i_3 
       (.I0(b_IBUF[30]),
        .I1(a_IBUF[30]),
        .I2(\y_OBUF[26]_inst_i_3_n_0 ),
        .I3(\y_OBUF[30]_inst_i_6_n_0 ),
        .I4(\y_OBUF[25]_inst_i_4_n_0 ),
        .I5(\y_OBUF[30]_inst_i_7_n_0 ),
        .O(\y_OBUF[30]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF488F488F488)) 
    \y_OBUF[30]_inst_i_4 
       (.I0(b_IBUF[30]),
        .I1(\y_OBUF[30]_inst_i_8_n_0 ),
        .I2(\y_OBUF[31]_inst_i_9_n_0 ),
        .I3(a_IBUF[30]),
        .I4(\y_OBUF[30]_inst_i_9_n_0 ),
        .I5(data0[30]),
        .O(\y_OBUF[30]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \y_OBUF[30]_inst_i_5 
       (.I0(a_IBUF[23]),
        .I1(a_IBUF[15]),
        .I2(a_IBUF[7]),
        .I3(b_IBUF[5]),
        .I4(b_IBUF[4]),
        .O(\y_OBUF[30]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \y_OBUF[30]_inst_i_6 
       (.I0(f_IBUF[0]),
        .I1(f_IBUF[1]),
        .I2(f_IBUF[2]),
        .O(\y_OBUF[30]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \y_OBUF[30]_inst_i_7 
       (.I0(b_IBUF[5]),
        .I1(b_IBUF[4]),
        .I2(b_IBUF[3]),
        .I3(b_IBUF[2]),
        .I4(a_IBUF[31]),
        .O(\y_OBUF[30]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \y_OBUF[30]_inst_i_8 
       (.I0(f_IBUF[2]),
        .I1(f_IBUF[0]),
        .I2(f_IBUF[1]),
        .O(\y_OBUF[30]_inst_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \y_OBUF[30]_inst_i_9 
       (.I0(f_IBUF[2]),
        .I1(f_IBUF[1]),
        .O(\y_OBUF[30]_inst_i_9_n_0 ));
  OBUF \y_OBUF[31]_inst 
       (.I(y_OBUF[31]),
        .O(y[31]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \y_OBUF[31]_inst_i_1 
       (.I0(\y_OBUF[31]_inst_i_2_n_0 ),
        .I1(\y_OBUF[31]_inst_i_3_n_0 ),
        .I2(\y_OBUF[31]_inst_i_4_n_0 ),
        .I3(\y_OBUF[31]_inst_i_5_n_0 ),
        .I4(\y_OBUF[31]_inst_i_6_n_0 ),
        .I5(\y_OBUF[31]_inst_i_7_n_0 ),
        .O(y_OBUF[31]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \y_OBUF[31]_inst_i_10 
       (.I0(\y_OBUF[28]_inst_i_6_n_0 ),
        .I1(b_IBUF[3]),
        .I2(\y_OBUF[31]_inst_i_22_n_0 ),
        .I3(\y_OBUF[31]_inst_i_23_n_0 ),
        .O(\y_OBUF[31]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \y_OBUF[31]_inst_i_11 
       (.I0(a_IBUF[7]),
        .I1(a_IBUF[15]),
        .I2(b_IBUF[4]),
        .I3(b_IBUF[5]),
        .I4(b_IBUF[2]),
        .I5(b_IBUF[3]),
        .O(\y_OBUF[31]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \y_OBUF[31]_inst_i_12 
       (.I0(a_IBUF[11]),
        .I1(a_IBUF[3]),
        .I2(b_IBUF[4]),
        .I3(b_IBUF[5]),
        .I4(a_IBUF[27]),
        .I5(a_IBUF[19]),
        .O(\y_OBUF[31]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000A000C)) 
    \y_OBUF[31]_inst_i_13 
       (.I0(a_IBUF[23]),
        .I1(a_IBUF[31]),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(b_IBUF[4]),
        .I5(b_IBUF[5]),
        .O(\y_OBUF[31]_inst_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \y_OBUF[31]_inst_i_14 
       (.I0(\y_OBUF[31]_inst_i_24_n_0 ),
        .I1(b_IBUF[3]),
        .I2(\y_OBUF[31]_inst_i_25_n_0 ),
        .I3(\y_OBUF[31]_inst_i_26_n_0 ),
        .O(\y_OBUF[31]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \y_OBUF[31]_inst_i_15 
       (.I0(a_IBUF[6]),
        .I1(a_IBUF[14]),
        .I2(b_IBUF[4]),
        .I3(b_IBUF[5]),
        .I4(b_IBUF[2]),
        .I5(b_IBUF[3]),
        .O(\y_OBUF[31]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \y_OBUF[31]_inst_i_16 
       (.I0(a_IBUF[10]),
        .I1(a_IBUF[2]),
        .I2(b_IBUF[4]),
        .I3(b_IBUF[5]),
        .I4(a_IBUF[26]),
        .I5(a_IBUF[18]),
        .O(\y_OBUF[31]_inst_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000A000C)) 
    \y_OBUF[31]_inst_i_17 
       (.I0(a_IBUF[22]),
        .I1(a_IBUF[30]),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(b_IBUF[4]),
        .I5(b_IBUF[5]),
        .O(\y_OBUF[31]_inst_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_OBUF[31]_inst_i_18 
       (.I0(f_IBUF[0]),
        .I1(a_IBUF[31]),
        .I2(b_IBUF[31]),
        .O(\y_OBUF[31]_inst_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_OBUF[31]_inst_i_19 
       (.I0(b_IBUF[30]),
        .I1(f_IBUF[0]),
        .I2(a_IBUF[30]),
        .O(\y_OBUF[31]_inst_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hFF020202)) 
    \y_OBUF[31]_inst_i_2 
       (.I0(data0[31]),
        .I1(f_IBUF[2]),
        .I2(f_IBUF[1]),
        .I3(a_IBUF[31]),
        .I4(\y_OBUF[31]_inst_i_9_n_0 ),
        .O(\y_OBUF[31]_inst_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_OBUF[31]_inst_i_20 
       (.I0(b_IBUF[29]),
        .I1(f_IBUF[0]),
        .I2(a_IBUF[29]),
        .O(\y_OBUF[31]_inst_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_OBUF[31]_inst_i_21 
       (.I0(b_IBUF[28]),
        .I1(f_IBUF[0]),
        .I2(a_IBUF[28]),
        .O(\y_OBUF[31]_inst_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h000000AC)) 
    \y_OBUF[31]_inst_i_22 
       (.I0(a_IBUF[21]),
        .I1(a_IBUF[29]),
        .I2(b_IBUF[4]),
        .I3(b_IBUF[5]),
        .I4(b_IBUF[3]),
        .O(\y_OBUF[31]_inst_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h0000AC00)) 
    \y_OBUF[31]_inst_i_23 
       (.I0(a_IBUF[5]),
        .I1(a_IBUF[13]),
        .I2(b_IBUF[4]),
        .I3(b_IBUF[5]),
        .I4(b_IBUF[3]),
        .O(\y_OBUF[31]_inst_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \y_OBUF[31]_inst_i_24 
       (.I0(a_IBUF[8]),
        .I1(a_IBUF[0]),
        .I2(b_IBUF[4]),
        .I3(b_IBUF[5]),
        .I4(a_IBUF[24]),
        .I5(a_IBUF[16]),
        .O(\y_OBUF[31]_inst_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h000000AC)) 
    \y_OBUF[31]_inst_i_25 
       (.I0(a_IBUF[20]),
        .I1(a_IBUF[28]),
        .I2(b_IBUF[4]),
        .I3(b_IBUF[5]),
        .I4(b_IBUF[3]),
        .O(\y_OBUF[31]_inst_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h0000AC00)) 
    \y_OBUF[31]_inst_i_26 
       (.I0(a_IBUF[4]),
        .I1(a_IBUF[12]),
        .I2(b_IBUF[4]),
        .I3(b_IBUF[5]),
        .I4(b_IBUF[3]),
        .O(\y_OBUF[31]_inst_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00C80600)) 
    \y_OBUF[31]_inst_i_3 
       (.I0(a_IBUF[31]),
        .I1(b_IBUF[31]),
        .I2(f_IBUF[0]),
        .I3(f_IBUF[2]),
        .I4(f_IBUF[1]),
        .O(\y_OBUF[31]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \y_OBUF[31]_inst_i_4 
       (.I0(f_IBUF[1]),
        .I1(f_IBUF[2]),
        .I2(f_IBUF[0]),
        .I3(b_IBUF[1]),
        .O(\y_OBUF[31]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFECECEC)) 
    \y_OBUF[31]_inst_i_5 
       (.I0(\y_OBUF[31]_inst_i_10_n_0 ),
        .I1(\y_OBUF[31]_inst_i_11_n_0 ),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(\y_OBUF[31]_inst_i_12_n_0 ),
        .I5(\y_OBUF[31]_inst_i_13_n_0 ),
        .O(\y_OBUF[31]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \y_OBUF[31]_inst_i_6 
       (.I0(f_IBUF[1]),
        .I1(f_IBUF[2]),
        .I2(f_IBUF[0]),
        .I3(b_IBUF[1]),
        .O(\y_OBUF[31]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFECECEC)) 
    \y_OBUF[31]_inst_i_7 
       (.I0(\y_OBUF[31]_inst_i_14_n_0 ),
        .I1(\y_OBUF[31]_inst_i_15_n_0 ),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(\y_OBUF[31]_inst_i_16_n_0 ),
        .I5(\y_OBUF[31]_inst_i_17_n_0 ),
        .O(\y_OBUF[31]_inst_i_7_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \y_OBUF[31]_inst_i_8 
       (.CI(\y_OBUF[27]_inst_i_7_n_0 ),
        .CO({\NLW_y_OBUF[31]_inst_i_8_CO_UNCONNECTED [3],\y_OBUF[31]_inst_i_8_n_1 ,\y_OBUF[31]_inst_i_8_n_2 ,\y_OBUF[31]_inst_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,a_IBUF[30:28]}),
        .O(data0[31:28]),
        .S({\y_OBUF[31]_inst_i_18_n_0 ,\y_OBUF[31]_inst_i_19_n_0 ,\y_OBUF[31]_inst_i_20_n_0 ,\y_OBUF[31]_inst_i_21_n_0 }));
  LUT6 #(
    .INIT(64'h40FF400000000000)) 
    \y_OBUF[31]_inst_i_9 
       (.I0(b_IBUF[1]),
        .I1(\y_OBUF[27]_inst_i_8_n_0 ),
        .I2(\y_OBUF[2]_inst_i_5_n_0 ),
        .I3(f_IBUF[2]),
        .I4(f_IBUF[1]),
        .I5(f_IBUF[0]),
        .O(\y_OBUF[31]_inst_i_9_n_0 ));
  OBUF \y_OBUF[3]_inst 
       (.I(y_OBUF[3]),
        .O(y[3]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \y_OBUF[3]_inst_i_1 
       (.I0(\y_OBUF[3]_inst_i_2_n_0 ),
        .I1(\y_OBUF[3]_inst_i_3_n_0 ),
        .I2(\y_OBUF[27]_inst_i_4_n_0 ),
        .I3(\y_OBUF[3]_inst_i_4_n_0 ),
        .I4(\y_OBUF[25]_inst_i_4_n_0 ),
        .I5(\y_OBUF[3]_inst_i_5_n_0 ),
        .O(y_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \y_OBUF[3]_inst_i_10 
       (.I0(a_IBUF[9]),
        .I1(a_IBUF[17]),
        .I2(a_IBUF[25]),
        .I3(b_IBUF[5]),
        .I4(b_IBUF[4]),
        .O(\y_OBUF[3]_inst_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \y_OBUF[3]_inst_i_11 
       (.I0(a_IBUF[8]),
        .I1(a_IBUF[16]),
        .I2(a_IBUF[24]),
        .I3(b_IBUF[5]),
        .I4(b_IBUF[4]),
        .O(\y_OBUF[3]_inst_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \y_OBUF[3]_inst_i_12 
       (.I0(a_IBUF[10]),
        .I1(a_IBUF[18]),
        .I2(a_IBUF[26]),
        .I3(b_IBUF[5]),
        .I4(b_IBUF[4]),
        .O(\y_OBUF[3]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \y_OBUF[3]_inst_i_13 
       (.I0(a_IBUF[20]),
        .I1(a_IBUF[28]),
        .I2(b_IBUF[4]),
        .I3(b_IBUF[5]),
        .I4(a_IBUF[4]),
        .I5(a_IBUF[12]),
        .O(\y_OBUF[3]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \y_OBUF[3]_inst_i_14 
       (.I0(a_IBUF[22]),
        .I1(a_IBUF[30]),
        .I2(b_IBUF[4]),
        .I3(b_IBUF[5]),
        .I4(a_IBUF[6]),
        .I5(a_IBUF[14]),
        .O(\y_OBUF[3]_inst_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \y_OBUF[3]_inst_i_15 
       (.I0(f_IBUF[0]),
        .O(p_0_out));
  LUT3 #(
    .INIT(8'h69)) 
    \y_OBUF[3]_inst_i_16 
       (.I0(b_IBUF[3]),
        .I1(f_IBUF[0]),
        .I2(a_IBUF[3]),
        .O(\y_OBUF[3]_inst_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_OBUF[3]_inst_i_17 
       (.I0(b_IBUF[2]),
        .I1(f_IBUF[0]),
        .I2(a_IBUF[2]),
        .O(\y_OBUF[3]_inst_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_OBUF[3]_inst_i_18 
       (.I0(b_IBUF[1]),
        .I1(f_IBUF[0]),
        .I2(a_IBUF[1]),
        .O(\y_OBUF[3]_inst_i_18_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \y_OBUF[3]_inst_i_19 
       (.I0(b_IBUF[0]),
        .O(\y_OBUF[3]_inst_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000FCC0003CAAAA)) 
    \y_OBUF[3]_inst_i_2 
       (.I0(data0[3]),
        .I1(b_IBUF[3]),
        .I2(a_IBUF[3]),
        .I3(f_IBUF[0]),
        .I4(f_IBUF[2]),
        .I5(f_IBUF[1]),
        .O(\y_OBUF[3]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000AC)) 
    \y_OBUF[3]_inst_i_20 
       (.I0(a_IBUF[11]),
        .I1(a_IBUF[3]),
        .I2(b_IBUF[4]),
        .I3(b_IBUF[5]),
        .I4(b_IBUF[3]),
        .O(\y_OBUF[3]_inst_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h0000AC00)) 
    \y_OBUF[3]_inst_i_21 
       (.I0(a_IBUF[27]),
        .I1(a_IBUF[19]),
        .I2(b_IBUF[4]),
        .I3(b_IBUF[5]),
        .I4(b_IBUF[3]),
        .O(\y_OBUF[3]_inst_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0000A0000000C000)) 
    \y_OBUF[3]_inst_i_3 
       (.I0(\y_OBUF[3]_inst_i_7_n_0 ),
        .I1(\y_OBUF[4]_inst_i_2_n_0 ),
        .I2(f_IBUF[1]),
        .I3(f_IBUF[2]),
        .I4(f_IBUF[0]),
        .I5(b_IBUF[1]),
        .O(\y_OBUF[3]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \y_OBUF[3]_inst_i_4 
       (.I0(\y_OBUF[3]_inst_i_8_n_0 ),
        .I1(\y_OBUF[3]_inst_i_9_n_0 ),
        .I2(\y_OBUF[3]_inst_i_10_n_0 ),
        .I3(b_IBUF[3]),
        .I4(b_IBUF[2]),
        .O(\y_OBUF[3]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \y_OBUF[3]_inst_i_5 
       (.I0(\y_OBUF[3]_inst_i_11_n_0 ),
        .I1(\y_OBUF[3]_inst_i_12_n_0 ),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(\y_OBUF[3]_inst_i_13_n_0 ),
        .I5(\y_OBUF[3]_inst_i_14_n_0 ),
        .O(\y_OBUF[3]_inst_i_5_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \y_OBUF[3]_inst_i_6 
       (.CI(1'b0),
        .CO({\y_OBUF[3]_inst_i_6_n_0 ,\y_OBUF[3]_inst_i_6_n_1 ,\y_OBUF[3]_inst_i_6_n_2 ,\y_OBUF[3]_inst_i_6_n_3 }),
        .CYINIT(a_IBUF[0]),
        .DI({a_IBUF[3:1],p_0_out}),
        .O(data0[3:0]),
        .S({\y_OBUF[3]_inst_i_16_n_0 ,\y_OBUF[3]_inst_i_17_n_0 ,\y_OBUF[3]_inst_i_18_n_0 ,\y_OBUF[3]_inst_i_19_n_0 }));
  LUT6 #(
    .INIT(64'h00000000000000AC)) 
    \y_OBUF[3]_inst_i_7 
       (.I0(a_IBUF[0]),
        .I1(a_IBUF[2]),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(b_IBUF[4]),
        .I5(b_IBUF[5]),
        .O(\y_OBUF[3]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \y_OBUF[3]_inst_i_8 
       (.I0(\y_OBUF[7]_inst_i_12_n_0 ),
        .I1(b_IBUF[3]),
        .I2(\y_OBUF[3]_inst_i_20_n_0 ),
        .I3(\y_OBUF[3]_inst_i_21_n_0 ),
        .O(\y_OBUF[3]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \y_OBUF[3]_inst_i_9 
       (.I0(a_IBUF[21]),
        .I1(a_IBUF[29]),
        .I2(b_IBUF[4]),
        .I3(b_IBUF[5]),
        .I4(a_IBUF[5]),
        .I5(a_IBUF[13]),
        .O(\y_OBUF[3]_inst_i_9_n_0 ));
  OBUF \y_OBUF[4]_inst 
       (.I(y_OBUF[4]),
        .O(y[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \y_OBUF[4]_inst_i_1 
       (.I0(\y_OBUF[4]_inst_i_2_n_0 ),
        .I1(\y_OBUF[31]_inst_i_6_n_0 ),
        .I2(\y_OBUF[5]_inst_i_2_n_0 ),
        .I3(\y_OBUF[31]_inst_i_4_n_0 ),
        .I4(\y_OBUF[4]_inst_i_3_n_0 ),
        .I5(\y_OBUF[4]_inst_i_4_n_0 ),
        .O(y_OBUF[4]));
  LUT6 #(
    .INIT(64'h00000000000000AC)) 
    \y_OBUF[4]_inst_i_2 
       (.I0(a_IBUF[1]),
        .I1(a_IBUF[3]),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(b_IBUF[4]),
        .I5(b_IBUF[5]),
        .O(\y_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F0A1D181D180500)) 
    \y_OBUF[4]_inst_i_3 
       (.I0(f_IBUF[1]),
        .I1(f_IBUF[0]),
        .I2(f_IBUF[2]),
        .I3(data0[4]),
        .I4(a_IBUF[4]),
        .I5(b_IBUF[4]),
        .O(\y_OBUF[4]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \y_OBUF[4]_inst_i_4 
       (.I0(\y_OBUF[5]_inst_i_5_n_0 ),
        .I1(\y_OBUF[3]_inst_i_5_n_0 ),
        .I2(f_IBUF[0]),
        .I3(f_IBUF[2]),
        .I4(b_IBUF[1]),
        .O(\y_OBUF[4]_inst_i_4_n_0 ));
  OBUF \y_OBUF[5]_inst 
       (.I(y_OBUF[5]),
        .O(y[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \y_OBUF[5]_inst_i_1 
       (.I0(\y_OBUF[5]_inst_i_2_n_0 ),
        .I1(\y_OBUF[31]_inst_i_6_n_0 ),
        .I2(\y_OBUF[6]_inst_i_2_n_0 ),
        .I3(\y_OBUF[31]_inst_i_4_n_0 ),
        .I4(\y_OBUF[5]_inst_i_3_n_0 ),
        .I5(\y_OBUF[5]_inst_i_4_n_0 ),
        .O(y_OBUF[5]));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \y_OBUF[5]_inst_i_2 
       (.I0(a_IBUF[4]),
        .I1(a_IBUF[2]),
        .I2(a_IBUF[0]),
        .I3(b_IBUF[2]),
        .I4(b_IBUF[3]),
        .I5(\y_OBUF[27]_inst_i_8_n_0 ),
        .O(\y_OBUF[5]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3327230B30242008)) 
    \y_OBUF[5]_inst_i_3 
       (.I0(b_IBUF[5]),
        .I1(f_IBUF[2]),
        .I2(f_IBUF[1]),
        .I3(f_IBUF[0]),
        .I4(a_IBUF[5]),
        .I5(data0[5]),
        .O(\y_OBUF[5]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \y_OBUF[5]_inst_i_4 
       (.I0(\y_OBUF[6]_inst_i_5_n_0 ),
        .I1(\y_OBUF[5]_inst_i_5_n_0 ),
        .I2(f_IBUF[0]),
        .I3(f_IBUF[2]),
        .I4(b_IBUF[1]),
        .O(\y_OBUF[5]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \y_OBUF[5]_inst_i_5 
       (.I0(\y_OBUF[3]_inst_i_10_n_0 ),
        .I1(\y_OBUF[11]_inst_i_12_n_0 ),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(\y_OBUF[3]_inst_i_9_n_0 ),
        .I5(\y_OBUF[7]_inst_i_12_n_0 ),
        .O(\y_OBUF[5]_inst_i_5_n_0 ));
  OBUF \y_OBUF[6]_inst 
       (.I(y_OBUF[6]),
        .O(y[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \y_OBUF[6]_inst_i_1 
       (.I0(\y_OBUF[6]_inst_i_2_n_0 ),
        .I1(\y_OBUF[31]_inst_i_6_n_0 ),
        .I2(\y_OBUF[7]_inst_i_3_n_0 ),
        .I3(\y_OBUF[31]_inst_i_4_n_0 ),
        .I4(\y_OBUF[6]_inst_i_3_n_0 ),
        .I5(\y_OBUF[6]_inst_i_4_n_0 ),
        .O(y_OBUF[6]));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \y_OBUF[6]_inst_i_2 
       (.I0(a_IBUF[5]),
        .I1(a_IBUF[3]),
        .I2(a_IBUF[1]),
        .I3(b_IBUF[2]),
        .I4(b_IBUF[3]),
        .I5(\y_OBUF[27]_inst_i_8_n_0 ),
        .O(\y_OBUF[6]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000003CFCAAC0AA)) 
    \y_OBUF[6]_inst_i_3 
       (.I0(data0[6]),
        .I1(a_IBUF[6]),
        .I2(b_IBUF[6]),
        .I3(f_IBUF[1]),
        .I4(f_IBUF[0]),
        .I5(f_IBUF[2]),
        .O(\y_OBUF[6]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \y_OBUF[6]_inst_i_4 
       (.I0(\y_OBUF[7]_inst_i_7_n_0 ),
        .I1(\y_OBUF[6]_inst_i_5_n_0 ),
        .I2(f_IBUF[0]),
        .I3(f_IBUF[2]),
        .I4(b_IBUF[1]),
        .O(\y_OBUF[6]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \y_OBUF[6]_inst_i_5 
       (.I0(\y_OBUF[3]_inst_i_12_n_0 ),
        .I1(\y_OBUF[12]_inst_i_7_n_0 ),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(\y_OBUF[3]_inst_i_14_n_0 ),
        .I5(\y_OBUF[3]_inst_i_11_n_0 ),
        .O(\y_OBUF[6]_inst_i_5_n_0 ));
  OBUF \y_OBUF[7]_inst 
       (.I(y_OBUF[7]),
        .O(y[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \y_OBUF[7]_inst_i_1 
       (.I0(\y_OBUF[7]_inst_i_2_n_0 ),
        .I1(\y_OBUF[7]_inst_i_3_n_0 ),
        .I2(\y_OBUF[31]_inst_i_6_n_0 ),
        .I3(\y_OBUF[8]_inst_i_2_n_0 ),
        .I4(\y_OBUF[31]_inst_i_4_n_0 ),
        .I5(\y_OBUF[7]_inst_i_4_n_0 ),
        .O(y_OBUF[7]));
  LUT3 #(
    .INIT(8'h69)) 
    \y_OBUF[7]_inst_i_10 
       (.I0(b_IBUF[5]),
        .I1(f_IBUF[0]),
        .I2(a_IBUF[5]),
        .O(\y_OBUF[7]_inst_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_OBUF[7]_inst_i_11 
       (.I0(b_IBUF[4]),
        .I1(f_IBUF[0]),
        .I2(a_IBUF[4]),
        .O(\y_OBUF[7]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \y_OBUF[7]_inst_i_12 
       (.I0(a_IBUF[23]),
        .I1(a_IBUF[31]),
        .I2(b_IBUF[4]),
        .I3(b_IBUF[5]),
        .I4(a_IBUF[7]),
        .I5(a_IBUF[15]),
        .O(\y_OBUF[7]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000FCC0003CAAAA)) 
    \y_OBUF[7]_inst_i_2 
       (.I0(data0[7]),
        .I1(b_IBUF[7]),
        .I2(a_IBUF[7]),
        .I3(f_IBUF[0]),
        .I4(f_IBUF[2]),
        .I5(f_IBUF[1]),
        .O(\y_OBUF[7]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF88800800)) 
    \y_OBUF[7]_inst_i_3 
       (.I0(\y_OBUF[27]_inst_i_8_n_0 ),
        .I1(b_IBUF[3]),
        .I2(b_IBUF[2]),
        .I3(a_IBUF[2]),
        .I4(a_IBUF[0]),
        .I5(\y_OBUF[7]_inst_i_6_n_0 ),
        .O(\y_OBUF[7]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hA000C000)) 
    \y_OBUF[7]_inst_i_4 
       (.I0(\y_OBUF[8]_inst_i_6_n_0 ),
        .I1(\y_OBUF[7]_inst_i_7_n_0 ),
        .I2(f_IBUF[0]),
        .I3(f_IBUF[2]),
        .I4(b_IBUF[1]),
        .O(\y_OBUF[7]_inst_i_4_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \y_OBUF[7]_inst_i_5 
       (.CI(\y_OBUF[3]_inst_i_6_n_0 ),
        .CO({\y_OBUF[7]_inst_i_5_n_0 ,\y_OBUF[7]_inst_i_5_n_1 ,\y_OBUF[7]_inst_i_5_n_2 ,\y_OBUF[7]_inst_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI(a_IBUF[7:4]),
        .O(data0[7:4]),
        .S({\y_OBUF[7]_inst_i_8_n_0 ,\y_OBUF[7]_inst_i_9_n_0 ,\y_OBUF[7]_inst_i_10_n_0 ,\y_OBUF[7]_inst_i_11_n_0 }));
  LUT6 #(
    .INIT(64'h00000000000000AC)) 
    \y_OBUF[7]_inst_i_6 
       (.I0(a_IBUF[4]),
        .I1(a_IBUF[6]),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(b_IBUF[4]),
        .I5(b_IBUF[5]),
        .O(\y_OBUF[7]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \y_OBUF[7]_inst_i_7 
       (.I0(\y_OBUF[11]_inst_i_12_n_0 ),
        .I1(\y_OBUF[13]_inst_i_7_n_0 ),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(\y_OBUF[7]_inst_i_12_n_0 ),
        .I5(\y_OBUF[3]_inst_i_10_n_0 ),
        .O(\y_OBUF[7]_inst_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_OBUF[7]_inst_i_8 
       (.I0(b_IBUF[7]),
        .I1(f_IBUF[0]),
        .I2(a_IBUF[7]),
        .O(\y_OBUF[7]_inst_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \y_OBUF[7]_inst_i_9 
       (.I0(b_IBUF[6]),
        .I1(f_IBUF[0]),
        .I2(a_IBUF[6]),
        .O(\y_OBUF[7]_inst_i_9_n_0 ));
  OBUF \y_OBUF[8]_inst 
       (.I(y_OBUF[8]),
        .O(y[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \y_OBUF[8]_inst_i_1 
       (.I0(\y_OBUF[8]_inst_i_2_n_0 ),
        .I1(\y_OBUF[31]_inst_i_6_n_0 ),
        .I2(\y_OBUF[9]_inst_i_3_n_0 ),
        .I3(\y_OBUF[31]_inst_i_4_n_0 ),
        .I4(\y_OBUF[8]_inst_i_3_n_0 ),
        .I5(\y_OBUF[8]_inst_i_4_n_0 ),
        .O(y_OBUF[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFF88800800)) 
    \y_OBUF[8]_inst_i_2 
       (.I0(\y_OBUF[27]_inst_i_8_n_0 ),
        .I1(b_IBUF[3]),
        .I2(b_IBUF[2]),
        .I3(a_IBUF[3]),
        .I4(a_IBUF[1]),
        .I5(\y_OBUF[8]_inst_i_5_n_0 ),
        .O(\y_OBUF[8]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000003CFCAAC0AA)) 
    \y_OBUF[8]_inst_i_3 
       (.I0(data0[8]),
        .I1(a_IBUF[8]),
        .I2(b_IBUF[8]),
        .I3(f_IBUF[1]),
        .I4(f_IBUF[0]),
        .I5(f_IBUF[2]),
        .O(\y_OBUF[8]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \y_OBUF[8]_inst_i_4 
       (.I0(\y_OBUF[9]_inst_i_6_n_0 ),
        .I1(\y_OBUF[8]_inst_i_6_n_0 ),
        .I2(f_IBUF[0]),
        .I3(f_IBUF[2]),
        .I4(b_IBUF[1]),
        .O(\y_OBUF[8]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000AC)) 
    \y_OBUF[8]_inst_i_5 
       (.I0(a_IBUF[5]),
        .I1(a_IBUF[7]),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(b_IBUF[4]),
        .I5(b_IBUF[5]),
        .O(\y_OBUF[8]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \y_OBUF[8]_inst_i_6 
       (.I0(\y_OBUF[12]_inst_i_7_n_0 ),
        .I1(\y_OBUF[14]_inst_i_7_n_0 ),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(\y_OBUF[3]_inst_i_11_n_0 ),
        .I5(\y_OBUF[3]_inst_i_12_n_0 ),
        .O(\y_OBUF[8]_inst_i_6_n_0 ));
  OBUF \y_OBUF[9]_inst 
       (.I(y_OBUF[9]),
        .O(y[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \y_OBUF[9]_inst_i_1 
       (.I0(\y_OBUF[9]_inst_i_2_n_0 ),
        .I1(\y_OBUF[9]_inst_i_3_n_0 ),
        .I2(\y_OBUF[31]_inst_i_6_n_0 ),
        .I3(\y_OBUF[10]_inst_i_2_n_0 ),
        .I4(\y_OBUF[31]_inst_i_4_n_0 ),
        .I5(\y_OBUF[9]_inst_i_4_n_0 ),
        .O(y_OBUF[9]));
  LUT6 #(
    .INIT(64'h0000FCC0003CAAAA)) 
    \y_OBUF[9]_inst_i_2 
       (.I0(data0[9]),
        .I1(b_IBUF[9]),
        .I2(a_IBUF[9]),
        .I3(f_IBUF[0]),
        .I4(f_IBUF[2]),
        .I5(f_IBUF[1]),
        .O(\y_OBUF[9]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFAEABAAABAAABAA)) 
    \y_OBUF[9]_inst_i_3 
       (.I0(\y_OBUF[9]_inst_i_5_n_0 ),
        .I1(b_IBUF[2]),
        .I2(b_IBUF[3]),
        .I3(\y_OBUF[15]_inst_i_8_n_0 ),
        .I4(\y_OBUF[27]_inst_i_8_n_0 ),
        .I5(a_IBUF[6]),
        .O(\y_OBUF[9]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hA000C000)) 
    \y_OBUF[9]_inst_i_4 
       (.I0(\y_OBUF[10]_inst_i_6_n_0 ),
        .I1(\y_OBUF[9]_inst_i_6_n_0 ),
        .I2(f_IBUF[0]),
        .I3(f_IBUF[2]),
        .I4(b_IBUF[1]),
        .O(\y_OBUF[9]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \y_OBUF[9]_inst_i_5 
       (.I0(a_IBUF[2]),
        .I1(a_IBUF[4]),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(b_IBUF[4]),
        .I5(b_IBUF[5]),
        .O(\y_OBUF[9]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \y_OBUF[9]_inst_i_6 
       (.I0(\y_OBUF[13]_inst_i_7_n_0 ),
        .I1(\y_OBUF[15]_inst_i_20_n_0 ),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .I4(\y_OBUF[3]_inst_i_10_n_0 ),
        .I5(\y_OBUF[11]_inst_i_12_n_0 ),
        .O(\y_OBUF[9]_inst_i_6_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif

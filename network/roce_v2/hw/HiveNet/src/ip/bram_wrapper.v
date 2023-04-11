// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="bram_wrapper_bram_wrapper,hls_ip_2020_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcu55c-fsvh2892-2L-e,HLS_INPUT_CLOCK=2.500000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=0.999750,HLS_SYN_LAT=0,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=0,HLS_SYN_LUT=16,HLS_VERSION=2020_2}" *)

module bram_wrapper (
        read_address,
        write_address,
        write_data,
        read_data,
        outToRead
);


input  [19:0] read_address;
input  [19:0] write_address;
input  [1:0] write_data;
input  [1:0] read_data;
output  [1:0] outToRead;

wire   [0:0] icmp_ln870_fu_63_p2;

assign icmp_ln870_fu_63_p2 = ((read_address == write_address) ? 1'b1 : 1'b0);

assign outToRead = ((icmp_ln870_fu_63_p2[0:0] == 1'b1) ? write_data : read_data);

endmodule //bram_wrapper
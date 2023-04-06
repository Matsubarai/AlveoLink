// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="ethHeader_fromICMP_ethHeader_fromICMP,hls_ip_2022_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcu55c-fsvh2892-2L-e,HLS_INPUT_CLOCK=3.000000,HLS_INPUT_ARCH=pipeline,HLS_SYN_CLOCK=0.631000,HLS_SYN_LAT=2,HLS_SYN_TPT=1,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=696,HLS_SYN_LUT=39,HLS_VERSION=2022_1}" *)

module ethHeader_fromICMP (
        ap_clk,
        ap_rst_n,
        p_in_TDATA,
        p_in_TVALID,
        p_in_TREADY,
        p_in_TKEEP,
        p_in_TSTRB,
        p_in_TLAST,
        p_out_TDATA,
        p_out_TVALID,
        p_out_TREADY,
        p_out_TKEEP,
        p_out_TSTRB,
        p_out_TLAST,
        smac
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst_n;
input  [511:0] p_in_TDATA;
input   p_in_TVALID;
output   p_in_TREADY;
input  [63:0] p_in_TKEEP;
input  [63:0] p_in_TSTRB;
input  [0:0] p_in_TLAST;
output  [511:0] p_out_TDATA;
output   p_out_TVALID;
input   p_out_TREADY;
output  [63:0] p_out_TKEEP;
output  [63:0] p_out_TSTRB;
output  [0:0] p_out_TLAST;
output  [47:0] smac;

 reg    ap_rst_n_inv;
reg   [0:0] isFirst_V;
reg   [47:0] lsmac_V;
reg    p_out_TDATA_blk_n;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] p_vld_reg_166;
reg    ap_enable_reg_pp0_iter2;
reg   [0:0] p_vld_reg_166_pp0_iter1_reg;
wire   [0:0] p_vld_fu_110_p1;
wire    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_state2_io;
wire    regslice_both_p_out_V_data_V_U_apdone_blk;
reg    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_state3_io;
reg    ap_block_pp0_stage0_11001;
reg   [511:0] tmp_data_V_reg_170;
reg   [63:0] tmp_keep_V_reg_176;
reg   [63:0] tmp_strb_V_reg_181;
reg   [0:0] tmp_last_V_reg_186;
wire   [0:0] isFirst_V_load_load_fu_130_p1;
reg   [0:0] isFirst_V_load_reg_191;
reg    ap_block_pp0_stage0_subdone;
reg   [0:0] ap_phi_mux_isFirst_V_flag_0_phi_fu_102_p4;
wire   [0:0] ap_phi_reg_pp0_iter0_isFirst_V_flag_0_reg_99;
wire   [0:0] or_ln21_fu_134_p2;
wire   [0:0] empty_nbread_fu_64_p5_0;
reg    ap_block_pp0_stage0_01001;
reg   [0:0] ap_NS_fsm;
wire    ap_reset_idle_pp0;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire    regslice_both_p_in_V_data_V_U_apdone_blk;
wire   [511:0] p_in_TDATA_int_regslice;
wire    p_in_TVALID_int_regslice;
reg    p_in_TREADY_int_regslice;
wire    regslice_both_p_in_V_data_V_U_ack_in;
wire    regslice_both_p_in_V_keep_V_U_apdone_blk;
wire   [63:0] p_in_TKEEP_int_regslice;
wire    regslice_both_p_in_V_keep_V_U_vld_out;
wire    regslice_both_p_in_V_keep_V_U_ack_in;
wire    regslice_both_p_in_V_strb_V_U_apdone_blk;
wire   [63:0] p_in_TSTRB_int_regslice;
wire    regslice_both_p_in_V_strb_V_U_vld_out;
wire    regslice_both_p_in_V_strb_V_U_ack_in;
wire    regslice_both_p_in_V_last_V_U_apdone_blk;
wire   [0:0] p_in_TLAST_int_regslice;
wire    regslice_both_p_in_V_last_V_U_vld_out;
wire    regslice_both_p_in_V_last_V_U_ack_in;
reg    p_out_TVALID_int_regslice;
wire    p_out_TREADY_int_regslice;
wire    regslice_both_p_out_V_data_V_U_vld_out;
wire    regslice_both_p_out_V_keep_V_U_apdone_blk;
wire    regslice_both_p_out_V_keep_V_U_ack_in_dummy;
wire    regslice_both_p_out_V_keep_V_U_vld_out;
wire    regslice_both_p_out_V_strb_V_U_apdone_blk;
wire    regslice_both_p_out_V_strb_V_U_ack_in_dummy;
wire    regslice_both_p_out_V_strb_V_U_vld_out;
wire    regslice_both_p_out_V_last_V_U_apdone_blk;
wire    regslice_both_p_out_V_last_V_U_ack_in_dummy;
wire    regslice_both_p_out_V_last_V_U_vld_out;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 isFirst_V = 1'd1;
#0 lsmac_V = 48'd0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
end

ethHeader_fromICMP_regslice_both #(
    .DataWidth( 512 ))
regslice_both_p_in_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(p_in_TDATA),
    .vld_in(p_in_TVALID),
    .ack_in(regslice_both_p_in_V_data_V_U_ack_in),
    .data_out(p_in_TDATA_int_regslice),
    .vld_out(p_in_TVALID_int_regslice),
    .ack_out(p_in_TREADY_int_regslice),
    .apdone_blk(regslice_both_p_in_V_data_V_U_apdone_blk)
);

ethHeader_fromICMP_regslice_both #(
    .DataWidth( 64 ))
regslice_both_p_in_V_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(p_in_TKEEP),
    .vld_in(p_in_TVALID),
    .ack_in(regslice_both_p_in_V_keep_V_U_ack_in),
    .data_out(p_in_TKEEP_int_regslice),
    .vld_out(regslice_both_p_in_V_keep_V_U_vld_out),
    .ack_out(p_in_TREADY_int_regslice),
    .apdone_blk(regslice_both_p_in_V_keep_V_U_apdone_blk)
);

ethHeader_fromICMP_regslice_both #(
    .DataWidth( 64 ))
regslice_both_p_in_V_strb_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(p_in_TSTRB),
    .vld_in(p_in_TVALID),
    .ack_in(regslice_both_p_in_V_strb_V_U_ack_in),
    .data_out(p_in_TSTRB_int_regslice),
    .vld_out(regslice_both_p_in_V_strb_V_U_vld_out),
    .ack_out(p_in_TREADY_int_regslice),
    .apdone_blk(regslice_both_p_in_V_strb_V_U_apdone_blk)
);

ethHeader_fromICMP_regslice_both #(
    .DataWidth( 1 ))
regslice_both_p_in_V_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(p_in_TLAST),
    .vld_in(p_in_TVALID),
    .ack_in(regslice_both_p_in_V_last_V_U_ack_in),
    .data_out(p_in_TLAST_int_regslice),
    .vld_out(regslice_both_p_in_V_last_V_U_vld_out),
    .ack_out(p_in_TREADY_int_regslice),
    .apdone_blk(regslice_both_p_in_V_last_V_U_apdone_blk)
);

ethHeader_fromICMP_regslice_both #(
    .DataWidth( 512 ))
regslice_both_p_out_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(tmp_data_V_reg_170),
    .vld_in(p_out_TVALID_int_regslice),
    .ack_in(p_out_TREADY_int_regslice),
    .data_out(p_out_TDATA),
    .vld_out(regslice_both_p_out_V_data_V_U_vld_out),
    .ack_out(p_out_TREADY),
    .apdone_blk(regslice_both_p_out_V_data_V_U_apdone_blk)
);

ethHeader_fromICMP_regslice_both #(
    .DataWidth( 64 ))
regslice_both_p_out_V_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(tmp_keep_V_reg_176),
    .vld_in(p_out_TVALID_int_regslice),
    .ack_in(regslice_both_p_out_V_keep_V_U_ack_in_dummy),
    .data_out(p_out_TKEEP),
    .vld_out(regslice_both_p_out_V_keep_V_U_vld_out),
    .ack_out(p_out_TREADY),
    .apdone_blk(regslice_both_p_out_V_keep_V_U_apdone_blk)
);

ethHeader_fromICMP_regslice_both #(
    .DataWidth( 64 ))
regslice_both_p_out_V_strb_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(tmp_strb_V_reg_181),
    .vld_in(p_out_TVALID_int_regslice),
    .ack_in(regslice_both_p_out_V_strb_V_U_ack_in_dummy),
    .data_out(p_out_TSTRB),
    .vld_out(regslice_both_p_out_V_strb_V_U_vld_out),
    .ack_out(p_out_TREADY),
    .apdone_blk(regslice_both_p_out_V_strb_V_U_apdone_blk)
);

ethHeader_fromICMP_regslice_both #(
    .DataWidth( 1 ))
regslice_both_p_out_V_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(tmp_last_V_reg_186),
    .vld_in(p_out_TVALID_int_regslice),
    .ack_in(regslice_both_p_out_V_last_V_U_ack_in_dummy),
    .data_out(p_out_TLAST),
    .vld_out(regslice_both_p_out_V_last_V_U_vld_out),
    .ack_out(p_out_TREADY),
    .apdone_blk(regslice_both_p_out_V_last_V_U_apdone_blk)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == 1'b1) & (p_vld_fu_110_p1 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln21_fu_134_p2 == 1'd1))) begin
        isFirst_V <= p_in_TLAST_int_regslice;
    end
end

always @ (posedge ap_clk) begin
    if (((p_vld_fu_110_p1 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        isFirst_V_load_reg_191 <= isFirst_V;
    end
end

always @ (posedge ap_clk) begin
    if (((isFirst_V_load_reg_191 == 1'd1) & (p_vld_reg_166 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lsmac_V <= {{tmp_data_V_reg_170[95:48]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_vld_reg_166 <= empty_nbread_fu_64_p5_0;
        p_vld_reg_166_pp0_iter1_reg <= p_vld_reg_166;
        tmp_data_V_reg_170 <= p_in_TDATA_int_regslice;
        tmp_keep_V_reg_176 <= p_in_TKEEP_int_regslice;
        tmp_last_V_reg_186 <= p_in_TLAST_int_regslice;
        tmp_strb_V_reg_181 <= p_in_TSTRB_int_regslice;
    end
end

always @ (*) begin
    if (((1'b1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((p_vld_fu_110_p1 == 1'd1)) begin
        if ((isFirst_V_load_load_fu_130_p1 == 1'd0)) begin
            ap_phi_mux_isFirst_V_flag_0_phi_fu_102_p4 = 1'd0;
        end else if ((isFirst_V_load_load_fu_130_p1 == 1'd1)) begin
            ap_phi_mux_isFirst_V_flag_0_phi_fu_102_p4 = 1'd1;
        end else begin
            ap_phi_mux_isFirst_V_flag_0_phi_fu_102_p4 = ap_phi_reg_pp0_iter0_isFirst_V_flag_0_reg_99;
        end
    end else begin
        ap_phi_mux_isFirst_V_flag_0_phi_fu_102_p4 = ap_phi_reg_pp0_iter0_isFirst_V_flag_0_reg_99;
    end
end

assign ap_reset_idle_pp0 = 1'b0;

always @ (*) begin
    if (((1'b1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (p_in_TVALID_int_regslice == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_in_TREADY_int_regslice = 1'b1;
    end else begin
        p_in_TREADY_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if ((((p_vld_reg_166_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((p_vld_reg_166 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        p_out_TDATA_blk_n = p_out_TREADY_int_regslice;
    end else begin
        p_out_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((p_vld_reg_166 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_out_TVALID_int_regslice = 1'b1;
    end else begin
        p_out_TVALID_int_regslice = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((ap_enable_reg_pp0_iter2 == 1'b1) & ((regslice_both_p_out_V_data_V_U_apdone_blk == 1'b1) | ((p_vld_reg_166_pp0_iter1_reg == 1'd1) & (p_out_TREADY_int_regslice == 1'b0)))) | ((p_vld_reg_166 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (p_out_TREADY_int_regslice == 1'b0)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_enable_reg_pp0_iter2 == 1'b1) & ((regslice_both_p_out_V_data_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((p_vld_reg_166_pp0_iter1_reg == 1'd1) & (p_out_TREADY_int_regslice == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state2_io) | ((p_vld_reg_166 == 1'd1) & (p_out_TREADY_int_regslice == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_enable_reg_pp0_iter2 == 1'b1) & ((regslice_both_p_out_V_data_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io) | ((p_vld_reg_166_pp0_iter1_reg == 1'd1) & (p_out_TREADY_int_regslice == 1'b0)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state2_io) | ((p_vld_reg_166 == 1'd1) & (p_out_TREADY_int_regslice == 1'b0)))));
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state2_io = ((p_vld_reg_166 == 1'd1) & (p_out_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((p_vld_reg_166 == 1'd1) & (p_out_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state3_io = ((p_vld_reg_166_pp0_iter1_reg == 1'd1) & (p_out_TREADY_int_regslice == 1'b0));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter2 = ((regslice_both_p_out_V_data_V_U_apdone_blk == 1'b1) | ((p_vld_reg_166_pp0_iter1_reg == 1'd1) & (p_out_TREADY_int_regslice == 1'b0)));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_phi_reg_pp0_iter0_isFirst_V_flag_0_reg_99 = 'bx;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign empty_nbread_fu_64_p5_0 = p_in_TVALID_int_regslice;

assign isFirst_V_load_load_fu_130_p1 = isFirst_V;

assign or_ln21_fu_134_p2 = (p_in_TLAST_int_regslice | ap_phi_mux_isFirst_V_flag_0_phi_fu_102_p4);

assign p_in_TREADY = regslice_both_p_in_V_data_V_U_ack_in;

assign p_out_TVALID = regslice_both_p_out_V_data_V_U_vld_out;

assign p_vld_fu_110_p1 = empty_nbread_fu_64_p5_0;

assign smac = lsmac_V;


reg find_kernel_block = 0;
// synthesis translate_off
`include "ethHeader_fromICMP_hls_deadlock_kernel_monitor_top.vh"
// synthesis translate_on

endmodule //ethHeader_fromICMP


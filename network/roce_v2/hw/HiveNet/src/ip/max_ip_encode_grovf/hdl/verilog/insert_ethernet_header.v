// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="insert_ethernet_header,hls_ip_2019_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xcu200-fsgd2104-2-e,HLS_INPUT_CLOCK=2.000000,HLS_INPUT_ARCH=pipeline,HLS_SYN_CLOCK=3.255000,HLS_SYN_LAT=2,HLS_SYN_TPT=1,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=2315,HLS_SYN_LUT=434,HLS_VERSION=2019_2}" *)

module insert_ethernet_header (
        ap_clk,
        ap_rst_n,
        mac_subnet_V,
        id_src_V,
        input_r_TDATA,
        input_r_TVALID,
        input_r_TREADY,
        input_r_TKEEP,
        input_r_TLAST,
        output_r_TDATA,
        output_r_TVALID,
        output_r_TREADY,
        output_r_TKEEP,
        output_r_TLAST,
        ip_output_V_ip_V_TDATA,
        ip_output_V_ip_V_TVALID,
        ip_output_V_ip_V_TREADY
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
parameter    ap_const_lv48_0 = 48'd0;
parameter    ap_const_lv512_lc_1 = 512'd0;

input   ap_clk;
input   ap_rst_n;
input  [47:0] mac_subnet_V;
input  [12:0] id_src_V;
input  [511:0] input_r_TDATA;
input   input_r_TVALID;
output   input_r_TREADY;
input  [63:0] input_r_TKEEP;
input  [0:0] input_r_TLAST;
output  [511:0] output_r_TDATA;
output   output_r_TVALID;
input   output_r_TREADY;
output  [63:0] output_r_TKEEP;
output  [0:0] output_r_TLAST;
output  [31:0] ip_output_V_ip_V_TDATA;
output   ip_output_V_ip_V_TVALID;
input   ip_output_V_ip_V_TREADY;

reg input_r_TREADY;

 reg    ap_rst_n_inv;
reg   [0:0] ls_writeRemainder;
reg   [511:0] prevWord_data_V;
reg   [63:0] prevWord_keep_V;
reg   [0:0] ls_firstWord;
reg    input_r_TDATA_blk_n;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_pp0_stage0;
wire   [0:0] ls_writeRemainder_lo_load_fu_339_p1;
wire   [0:0] tmp_nbreadreq_fu_200_p5;
reg    output_r_TDATA_blk_n;
reg    ap_enable_reg_pp0_iter1;
reg   [0:0] ls_writeRemainder_lo_reg_1058;
reg    ap_enable_reg_pp0_iter2;
reg   [0:0] ls_writeRemainder_lo_reg_1058_pp0_iter1_reg;
reg   [0:0] tmp_reg_1062;
reg   [0:0] tmp_reg_1062_pp0_iter1_reg;
reg    ip_output_V_ip_V_TDATA_blk_n;
reg   [0:0] ls_firstWord_load_reg_1075;
reg   [0:0] ls_firstWord_load_reg_1075_pp0_iter1_reg;
reg    ap_predicate_op10_read_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
reg    ap_predicate_op115_write_state2;
reg    ap_predicate_op119_write_state2;
reg    ap_block_state2_io;
wire    regslice_both_output_V_data_V_U_apdone_blk;
wire    regslice_both_ip_output_V_ip_V_U_apdone_blk;
reg    ap_block_state3_pp0_stage0_iter2;
reg    ap_predicate_op143_write_state3;
reg    ap_predicate_op144_write_state3;
reg    ap_block_state3_io;
reg    ap_block_pp0_stage0_11001;
reg   [511:0] tmp_data_V_reg_1066;
wire   [0:0] ls_firstWord_load_load_fu_366_p1;
wire   [511:0] p_Result_35_fu_374_p3;
wire   [63:0] p_Result_36_fu_386_p3;
wire   [511:0] p_Result_28_fu_942_p5;
wire   [511:0] p_Result_31_fu_966_p5;
wire   [63:0] p_Result_33_fu_982_p3;
wire   [0:0] sendWord_last_V_fu_990_p2;
reg   [0:0] sendWord_last_V_reg_1104;
wire   [111:0] grp_fu_310_p4;
reg   [111:0] p_Result_s_reg_1109;
wire   [13:0] grp_fu_319_p4;
reg   [13:0] p_Result_2_reg_1114;
wire   [511:0] p_Result_s_33_fu_1042_p3;
wire   [63:0] p_Result_4_fu_1050_p3;
reg    ap_block_pp0_stage0_subdone;
reg   [13:0] ap_phi_mux_p_01080_2_0_in_in_phi_fu_258_p4;
wire   [13:0] ap_phi_reg_pp0_iter0_p_01080_2_0_in_in_reg_255;
wire   [511:0] ap_phi_reg_pp0_iter0_empty_34_reg_264;
reg   [511:0] ap_phi_reg_pp0_iter1_empty_34_reg_264;
wire   [63:0] ap_phi_reg_pp0_iter0_tmp_keep_V_2_reg_273;
reg   [63:0] ap_phi_reg_pp0_iter1_tmp_keep_V_2_reg_273;
wire   [511:0] ap_phi_reg_pp0_iter0_tmp_data_V_2_reg_285;
reg   [511:0] ap_phi_reg_pp0_iter1_tmp_data_V_2_reg_285;
wire   [0:0] ap_phi_reg_pp0_iter0_ls_firstWord_new_0_reg_297;
reg   [0:0] ap_phi_reg_pp0_iter1_ls_firstWord_new_0_reg_297;
wire   [0:0] tmp_last_V_fu_362_p1;
wire   [0:0] xor_ln761_fu_1002_p2;
reg   [511:0] ap_sig_allocacmp_p_Val2_s;
reg   [0:0] ap_sig_allocacmp_ls_firstWord_load;
reg    ap_block_pp0_stage0_01001;
wire   [399:0] trunc_ln647_5_fu_370_p1;
wire   [49:0] trunc_ln647_6_fu_382_p1;
wire   [7:0] trunc_ln647_fu_394_p1;
wire   [47:0] p_Result_5_fu_398_p5;
wire   [7:0] p_Result_6_fu_410_p4;
wire   [47:0] p_Result_9_fu_420_p5;
wire   [7:0] p_Result_8_fu_432_p4;
wire   [47:0] p_Result_11_fu_442_p5;
wire   [7:0] p_Result_1_fu_454_p4;
wire   [47:0] p_Result_13_fu_464_p5;
wire   [7:0] p_Result_3_fu_476_p4;
wire   [47:0] p_Result_14_fu_486_p5;
wire   [7:0] p_Result_7_fu_498_p4;
wire   [47:0] p_Result_15_fu_508_p5;
wire   [7:0] p_Result_10_fu_520_p4;
wire   [47:0] p_Result_16_fu_530_p5;
wire   [4:0] p_Result_12_fu_542_p4;
wire   [47:0] p_Result_17_fu_552_p5;
wire   [511:0] p_Result_18_fu_564_p5;
wire   [511:0] p_Result_19_fu_576_p5;
wire   [511:0] p_Result_20_fu_588_p5;
wire   [511:0] p_Result_21_fu_600_p5;
wire   [511:0] p_Result_22_fu_612_p5;
wire   [511:0] p_Result_24_fu_624_p5;
wire   [511:0] p_Result_25_fu_636_p5;
wire   [7:0] trunc_ln647_1_fu_648_p1;
wire   [511:0] p_Result_26_fu_652_p5;
wire   [4:0] p_Result_23_fu_664_p4;
wire   [15:0] trunc_ln647_2_fu_686_p1;
wire   [15:0] p_Result_110_1_fu_694_p4;
wire   [15:0] p_Result_110_2_fu_708_p4;
wire   [15:0] p_Result_110_3_fu_722_p4;
wire   [15:0] p_Result_110_4_fu_736_p4;
wire   [15:0] p_Result_110_5_fu_750_p4;
wire   [15:0] p_Result_110_6_fu_764_p4;
wire   [15:0] p_Result_110_7_fu_778_p4;
wire   [15:0] p_Result_110_8_fu_792_p4;
wire   [15:0] p_Result_110_9_fu_806_p4;
wire   [16:0] zext_ln647_8_fu_802_p1;
wire   [16:0] zext_ln647_7_fu_788_p1;
wire   [16:0] add_ln700_fu_820_p2;
wire   [16:0] zext_ln647_4_fu_746_p1;
wire   [16:0] zext_ln647_5_fu_760_p1;
wire   [16:0] add_ln700_1_fu_830_p2;
wire   [17:0] zext_ln647_6_fu_774_p1;
wire   [17:0] zext_ln700_2_fu_836_p1;
wire   [17:0] add_ln700_2_fu_840_p2;
wire   [18:0] zext_ln700_1_fu_826_p1;
wire   [18:0] zext_ln700_3_fu_846_p1;
wire   [18:0] add_ln700_3_fu_850_p2;
wire   [16:0] zext_ln647_fu_690_p1;
wire   [16:0] zext_ln647_1_fu_704_p1;
wire   [16:0] add_ln700_4_fu_860_p2;
wire   [16:0] zext_ln700_fu_816_p1;
wire   [16:0] zext_ln647_2_fu_718_p1;
wire   [16:0] add_ln700_5_fu_870_p2;
wire   [17:0] zext_ln647_3_fu_732_p1;
wire   [17:0] zext_ln700_6_fu_876_p1;
wire   [17:0] add_ln700_6_fu_880_p2;
wire   [18:0] zext_ln700_5_fu_866_p1;
wire   [18:0] zext_ln700_7_fu_886_p1;
wire   [18:0] add_ln700_7_fu_890_p2;
wire   [19:0] zext_ln700_4_fu_856_p1;
wire   [19:0] zext_ln700_8_fu_896_p1;
wire   [18:0] add_ln700_9_fu_900_p2;
wire   [19:0] add_ln700_8_fu_906_p2;
wire   [3:0] tmp_2_fu_916_p4;
wire   [15:0] zext_ln357_fu_926_p1;
wire   [15:0] trunc_ln357_fu_912_p1;
wire   [15:0] add_ln215_fu_930_p2;
wire   [15:0] xor_ln248_fu_936_p2;
wire   [399:0] trunc_ln647_3_fu_954_p1;
wire   [511:0] p_Result_27_fu_674_p5;
wire   [415:0] tmp_1_fu_958_p3;
wire   [49:0] trunc_ln647_4_fu_978_p1;
reg   [0:0] ap_NS_fsm;
wire    ap_reset_idle_pp0;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg   [511:0] output_r_TDATA_int;
reg    output_r_TVALID_int;
wire    output_r_TREADY_int;
wire    regslice_both_output_V_data_V_U_vld_out;
wire    regslice_both_output_V_keep_V_U_apdone_blk;
reg   [63:0] output_r_TKEEP_int;
wire    regslice_both_output_V_keep_V_U_ack_in_dummy;
wire    regslice_both_output_V_keep_V_U_vld_out;
wire    regslice_both_output_V_last_V_U_apdone_blk;
reg   [0:0] output_r_TLAST_int;
wire    regslice_both_output_V_last_V_U_ack_in_dummy;
wire    regslice_both_output_V_last_V_U_vld_out;
wire   [31:0] ip_output_V_ip_V_TDATA_int;
reg    ip_output_V_ip_V_TVALID_int;
wire    ip_output_V_ip_V_TREADY_int;
wire    regslice_both_ip_output_V_ip_V_U_vld_out;
reg    ap_condition_166;
reg    ap_condition_159;
reg    ap_condition_178;
reg    ap_condition_216;
reg    ap_condition_219;
reg    ap_condition_244;

// power-on initialization
initial begin
#0 ls_writeRemainder = 1'd0;
#0 prevWord_data_V = 512'd0;
#0 prevWord_keep_V = 64'd0;
#0 ls_firstWord = 1'd1;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
end

regslice_both #(
    .DataWidth( 512 ))
regslice_both_output_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(output_r_TDATA_int),
    .vld_in(output_r_TVALID_int),
    .ack_in(output_r_TREADY_int),
    .data_out(output_r_TDATA),
    .vld_out(regslice_both_output_V_data_V_U_vld_out),
    .ack_out(output_r_TREADY),
    .apdone_blk(regslice_both_output_V_data_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 64 ))
regslice_both_output_V_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(output_r_TKEEP_int),
    .vld_in(output_r_TVALID_int),
    .ack_in(regslice_both_output_V_keep_V_U_ack_in_dummy),
    .data_out(output_r_TKEEP),
    .vld_out(regslice_both_output_V_keep_V_U_vld_out),
    .ack_out(output_r_TREADY),
    .apdone_blk(regslice_both_output_V_keep_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 1 ))
regslice_both_output_V_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(output_r_TLAST_int),
    .vld_in(output_r_TVALID_int),
    .ack_in(regslice_both_output_V_last_V_U_ack_in_dummy),
    .data_out(output_r_TLAST),
    .vld_out(regslice_both_output_V_last_V_U_vld_out),
    .ack_out(output_r_TREADY),
    .apdone_blk(regslice_both_output_V_last_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 32 ))
regslice_both_ip_output_V_ip_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(ip_output_V_ip_V_TDATA_int),
    .vld_in(ip_output_V_ip_V_TVALID_int),
    .ack_in(ip_output_V_ip_V_TREADY_int),
    .data_out(ip_output_V_ip_V_TDATA),
    .vld_out(regslice_both_ip_output_V_ip_V_U_vld_out),
    .ack_out(ip_output_V_ip_V_TREADY),
    .apdone_blk(regslice_both_ip_output_V_ip_V_U_apdone_blk)
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
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
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
    if ((1'b1 == ap_condition_178)) begin
        if ((1'b1 == ap_condition_159)) begin
            ap_phi_reg_pp0_iter1_empty_34_reg_264 <= input_r_TDATA;
        end else if ((1'b1 == ap_condition_166)) begin
            ap_phi_reg_pp0_iter1_empty_34_reg_264 <= p_Result_28_fu_942_p5;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_empty_34_reg_264 <= ap_phi_reg_pp0_iter0_empty_34_reg_264;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_178)) begin
        if ((1'b1 == ap_condition_219)) begin
            ap_phi_reg_pp0_iter1_ls_firstWord_new_0_reg_297 <= 1'd0;
        end else if ((1'b1 == ap_condition_216)) begin
            ap_phi_reg_pp0_iter1_ls_firstWord_new_0_reg_297 <= 1'd1;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_ls_firstWord_new_0_reg_297 <= ap_phi_reg_pp0_iter0_ls_firstWord_new_0_reg_297;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_178)) begin
        if ((1'b1 == ap_condition_159)) begin
            ap_phi_reg_pp0_iter1_tmp_data_V_2_reg_285 <= p_Result_35_fu_374_p3;
        end else if ((1'b1 == ap_condition_166)) begin
            ap_phi_reg_pp0_iter1_tmp_data_V_2_reg_285 <= p_Result_31_fu_966_p5;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_tmp_data_V_2_reg_285 <= ap_phi_reg_pp0_iter0_tmp_data_V_2_reg_285;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_178)) begin
        if ((1'b1 == ap_condition_159)) begin
            ap_phi_reg_pp0_iter1_tmp_keep_V_2_reg_273 <= p_Result_36_fu_386_p3;
        end else if ((1'b1 == ap_condition_166)) begin
            ap_phi_reg_pp0_iter1_tmp_keep_V_2_reg_273 <= p_Result_33_fu_982_p3;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_tmp_keep_V_2_reg_273 <= ap_phi_reg_pp0_iter0_tmp_keep_V_2_reg_273;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_178)) begin
        if ((ls_writeRemainder_lo_load_fu_339_p1 == 1'd1)) begin
            ls_writeRemainder <= 1'd0;
        end else if ((1'b1 == ap_condition_216)) begin
            ls_writeRemainder <= xor_ln761_fu_1002_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_reg_1062 == 1'd1) & (ls_writeRemainder_lo_reg_1058 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ls_firstWord <= ap_phi_reg_pp0_iter1_ls_firstWord_new_0_reg_297;
        prevWord_data_V <= ap_phi_reg_pp0_iter1_empty_34_reg_264;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_nbreadreq_fu_200_p5 == 1'd1) & (ls_writeRemainder == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ls_firstWord_load_reg_1075 <= ap_sig_allocacmp_ls_firstWord_load;
        sendWord_last_V_reg_1104 <= sendWord_last_V_fu_990_p2;
        tmp_data_V_reg_1066 <= input_r_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ls_firstWord_load_reg_1075_pp0_iter1_reg <= ls_firstWord_load_reg_1075;
        ls_writeRemainder_lo_reg_1058 <= ls_writeRemainder;
        ls_writeRemainder_lo_reg_1058_pp0_iter1_reg <= ls_writeRemainder_lo_reg_1058;
        tmp_reg_1062_pp0_iter1_reg <= tmp_reg_1062;
    end
end

always @ (posedge ap_clk) begin
    if (((ls_writeRemainder_lo_load_fu_339_p1 == 1'd1) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_Result_2_reg_1114 <= {{prevWord_keep_V[63:50]}};
        p_Result_s_reg_1109 <= {{ap_sig_allocacmp_p_Val2_s[511:400]}};
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_nbreadreq_fu_200_p5 == 1'd1) & (ls_writeRemainder == 1'd0) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        prevWord_keep_V <= input_r_TKEEP;
    end
end

always @ (posedge ap_clk) begin
    if (((ls_writeRemainder == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_reg_1062 <= tmp_nbreadreq_fu_200_p5;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((((tmp_nbreadreq_fu_200_p5 == 1'd1) & (ls_firstWord_load_load_fu_366_p1 == 1'd1) & (ls_writeRemainder == 1'd0)) | ((tmp_nbreadreq_fu_200_p5 == 1'd1) & (ls_writeRemainder == 1'd0) & (ls_firstWord_load_load_fu_366_p1 == 1'd0)))) begin
        ap_phi_mux_p_01080_2_0_in_in_phi_fu_258_p4 = {{input_r_TKEEP[63:50]}};
    end else begin
        ap_phi_mux_p_01080_2_0_in_in_phi_fu_258_p4 = ap_phi_reg_pp0_iter0_p_01080_2_0_in_in_reg_255;
    end
end

assign ap_reset_idle_pp0 = 1'b0;

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (tmp_reg_1062 == 1'd1) & (ls_writeRemainder_lo_reg_1058 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_ls_firstWord_load = ap_phi_reg_pp0_iter1_ls_firstWord_new_0_reg_297;
    end else begin
        ap_sig_allocacmp_ls_firstWord_load = ls_firstWord;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (tmp_reg_1062 == 1'd1) & (ls_writeRemainder_lo_reg_1058 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_p_Val2_s = ap_phi_reg_pp0_iter1_empty_34_reg_264;
    end else begin
        ap_sig_allocacmp_p_Val2_s = prevWord_data_V;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (tmp_nbreadreq_fu_200_p5 == 1'd1) & (ls_writeRemainder == 1'd0) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_r_TDATA_blk_n = input_r_TVALID;
    end else begin
        input_r_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op10_read_state1 == 1'b1) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        input_r_TREADY = 1'b1;
    end else begin
        input_r_TREADY = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ls_firstWord_load_reg_1075_pp0_iter1_reg == 1'd1) & (tmp_reg_1062_pp0_iter1_reg == 1'd1) & (ls_writeRemainder_lo_reg_1058_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0) & (ls_firstWord_load_reg_1075 == 1'd1) & (tmp_reg_1062 == 1'd1) & (ls_writeRemainder_lo_reg_1058 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ip_output_V_ip_V_TDATA_blk_n = ip_output_V_ip_V_TREADY_int;
    end else begin
        ip_output_V_ip_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op115_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ip_output_V_ip_V_TVALID_int = 1'b1;
    end else begin
        ip_output_V_ip_V_TVALID_int = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (tmp_reg_1062_pp0_iter1_reg == 1'd1) & (ls_writeRemainder_lo_reg_1058_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0) & (ls_writeRemainder_lo_reg_1058_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0) & (tmp_reg_1062 == 1'd1) & (ls_writeRemainder_lo_reg_1058 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0) & (ls_writeRemainder_lo_reg_1058 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        output_r_TDATA_blk_n = output_r_TREADY_int;
    end else begin
        output_r_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_244)) begin
        if ((ls_writeRemainder_lo_reg_1058 == 1'd1)) begin
            output_r_TDATA_int = p_Result_s_33_fu_1042_p3;
        end else if ((ap_predicate_op119_write_state2 == 1'b1)) begin
            output_r_TDATA_int = ap_phi_reg_pp0_iter1_tmp_data_V_2_reg_285;
        end else begin
            output_r_TDATA_int = 'bx;
        end
    end else begin
        output_r_TDATA_int = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_244)) begin
        if ((ls_writeRemainder_lo_reg_1058 == 1'd1)) begin
            output_r_TKEEP_int = p_Result_4_fu_1050_p3;
        end else if ((ap_predicate_op119_write_state2 == 1'b1)) begin
            output_r_TKEEP_int = ap_phi_reg_pp0_iter1_tmp_keep_V_2_reg_273;
        end else begin
            output_r_TKEEP_int = 'bx;
        end
    end else begin
        output_r_TKEEP_int = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_244)) begin
        if ((ls_writeRemainder_lo_reg_1058 == 1'd1)) begin
            output_r_TLAST_int = 1'd1;
        end else if ((ap_predicate_op119_write_state2 == 1'b1)) begin
            output_r_TLAST_int = sendWord_last_V_reg_1104;
        end else begin
            output_r_TLAST_int = 'bx;
        end
    end else begin
        output_r_TLAST_int = 'bx;
    end
end

always @ (*) begin
    if ((((ls_writeRemainder_lo_reg_1058 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op119_write_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        output_r_TVALID_int = 1'b1;
    end else begin
        output_r_TVALID_int = 1'b0;
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

assign add_ln215_fu_930_p2 = (zext_ln357_fu_926_p1 + trunc_ln357_fu_912_p1);

assign add_ln700_1_fu_830_p2 = (zext_ln647_4_fu_746_p1 + zext_ln647_5_fu_760_p1);

assign add_ln700_2_fu_840_p2 = (zext_ln647_6_fu_774_p1 + zext_ln700_2_fu_836_p1);

assign add_ln700_3_fu_850_p2 = (zext_ln700_1_fu_826_p1 + zext_ln700_3_fu_846_p1);

assign add_ln700_4_fu_860_p2 = (zext_ln647_fu_690_p1 + zext_ln647_1_fu_704_p1);

assign add_ln700_5_fu_870_p2 = (zext_ln700_fu_816_p1 + zext_ln647_2_fu_718_p1);

assign add_ln700_6_fu_880_p2 = (zext_ln647_3_fu_732_p1 + zext_ln700_6_fu_876_p1);

assign add_ln700_7_fu_890_p2 = (zext_ln700_5_fu_866_p1 + zext_ln700_7_fu_886_p1);

assign add_ln700_8_fu_906_p2 = (zext_ln700_4_fu_856_p1 + zext_ln700_8_fu_896_p1);

assign add_ln700_9_fu_900_p2 = (add_ln700_7_fu_890_p2 + add_ln700_3_fu_850_p2);

assign add_ln700_fu_820_p2 = (zext_ln647_8_fu_802_p1 + zext_ln647_7_fu_788_p1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((ap_enable_reg_pp0_iter2 == 1'b1) & ((regslice_both_ip_output_V_ip_V_U_apdone_blk == 1'b1) | (regslice_both_output_V_data_V_U_apdone_blk == 1'b1))) | ((ap_predicate_op10_read_state1 == 1'b1) & (input_r_TVALID == 1'b0) & (1'b1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_enable_reg_pp0_iter2 == 1'b1) & ((1'b1 == ap_block_state3_io) | (regslice_both_ip_output_V_ip_V_U_apdone_blk == 1'b1) | (regslice_both_output_V_data_V_U_apdone_blk == 1'b1))) | ((1'b1 == ap_block_state2_io) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_predicate_op10_read_state1 == 1'b1) & (input_r_TVALID == 1'b0) & (1'b1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_enable_reg_pp0_iter2 == 1'b1) & ((1'b1 == ap_block_state3_io) | (regslice_both_ip_output_V_ip_V_U_apdone_blk == 1'b1) | (regslice_both_output_V_data_V_U_apdone_blk == 1'b1))) | ((1'b1 == ap_block_state2_io) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_predicate_op10_read_state1 == 1'b1) & (input_r_TVALID == 1'b0) & (1'b1 == 1'b1)));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_predicate_op10_read_state1 == 1'b1) & (input_r_TVALID == 1'b0));
end

always @ (*) begin
    ap_block_state2_io = (((output_r_TREADY_int == 1'b0) & (ls_writeRemainder_lo_reg_1058 == 1'd1)) | ((ap_predicate_op119_write_state2 == 1'b1) & (output_r_TREADY_int == 1'b0)) | ((ap_predicate_op115_write_state2 == 1'b1) & (ip_output_V_ip_V_TREADY_int == 1'b0)));
end

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_io = (((output_r_TREADY_int == 1'b0) & (ls_writeRemainder_lo_reg_1058_pp0_iter1_reg == 1'd1)) | ((ap_predicate_op144_write_state3 == 1'b1) & (output_r_TREADY_int == 1'b0)) | ((ap_predicate_op143_write_state3 == 1'b1) & (ip_output_V_ip_V_TREADY_int == 1'b0)));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter2 = ((regslice_both_ip_output_V_ip_V_U_apdone_blk == 1'b1) | (regslice_both_output_V_data_V_U_apdone_blk == 1'b1));
end

always @ (*) begin
    ap_condition_159 = ((tmp_nbreadreq_fu_200_p5 == 1'd1) & (ls_writeRemainder == 1'd0) & (ls_firstWord_load_load_fu_366_p1 == 1'd0));
end

always @ (*) begin
    ap_condition_166 = ((tmp_nbreadreq_fu_200_p5 == 1'd1) & (ls_firstWord_load_load_fu_366_p1 == 1'd1) & (ls_writeRemainder == 1'd0));
end

always @ (*) begin
    ap_condition_178 = ((1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001));
end

always @ (*) begin
    ap_condition_216 = ((tmp_nbreadreq_fu_200_p5 == 1'd1) & (tmp_last_V_fu_362_p1 == 1'd1) & (ls_writeRemainder == 1'd0));
end

always @ (*) begin
    ap_condition_219 = ((tmp_nbreadreq_fu_200_p5 == 1'd1) & (ls_writeRemainder == 1'd0) & (tmp_last_V_fu_362_p1 == 1'd0));
end

always @ (*) begin
    ap_condition_244 = ((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_phi_reg_pp0_iter0_empty_34_reg_264 = 'bx;

assign ap_phi_reg_pp0_iter0_ls_firstWord_new_0_reg_297 = 'bx;

assign ap_phi_reg_pp0_iter0_p_01080_2_0_in_in_reg_255 = 'bx;

assign ap_phi_reg_pp0_iter0_tmp_data_V_2_reg_285 = 'bx;

assign ap_phi_reg_pp0_iter0_tmp_keep_V_2_reg_273 = 'bx;

always @ (*) begin
    ap_predicate_op10_read_state1 = ((tmp_nbreadreq_fu_200_p5 == 1'd1) & (ls_writeRemainder == 1'd0));
end

always @ (*) begin
    ap_predicate_op115_write_state2 = ((ls_firstWord_load_reg_1075 == 1'd1) & (tmp_reg_1062 == 1'd1) & (ls_writeRemainder_lo_reg_1058 == 1'd0));
end

always @ (*) begin
    ap_predicate_op119_write_state2 = ((tmp_reg_1062 == 1'd1) & (ls_writeRemainder_lo_reg_1058 == 1'd0));
end

always @ (*) begin
    ap_predicate_op143_write_state3 = ((ls_firstWord_load_reg_1075_pp0_iter1_reg == 1'd1) & (tmp_reg_1062_pp0_iter1_reg == 1'd1) & (ls_writeRemainder_lo_reg_1058_pp0_iter1_reg == 1'd0));
end

always @ (*) begin
    ap_predicate_op144_write_state3 = ((tmp_reg_1062_pp0_iter1_reg == 1'd1) & (ls_writeRemainder_lo_reg_1058_pp0_iter1_reg == 1'd0));
end

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign grp_fu_310_p4 = {{ap_sig_allocacmp_p_Val2_s[511:400]}};

assign grp_fu_319_p4 = {{prevWord_keep_V[63:50]}};

assign ip_output_V_ip_V_TDATA_int = {{tmp_data_V_reg_1066[159:128]}};

assign ip_output_V_ip_V_TVALID = regslice_both_ip_output_V_ip_V_U_vld_out;

assign ls_firstWord_load_load_fu_366_p1 = ap_sig_allocacmp_ls_firstWord_load;

assign ls_writeRemainder_lo_load_fu_339_p1 = ls_writeRemainder;

assign output_r_TVALID = regslice_both_output_V_data_V_U_vld_out;

assign p_Result_10_fu_520_p4 = {{input_r_TDATA[159:152]}};

assign p_Result_110_1_fu_694_p4 = {{input_r_TDATA[31:16]}};

assign p_Result_110_2_fu_708_p4 = {{input_r_TDATA[47:32]}};

assign p_Result_110_3_fu_722_p4 = {{input_r_TDATA[63:48]}};

assign p_Result_110_4_fu_736_p4 = {{input_r_TDATA[79:64]}};

assign p_Result_110_5_fu_750_p4 = {{input_r_TDATA[95:80]}};

assign p_Result_110_6_fu_764_p4 = {{input_r_TDATA[111:96]}};

assign p_Result_110_7_fu_778_p4 = {{input_r_TDATA[127:112]}};

assign p_Result_110_8_fu_792_p4 = {{input_r_TDATA[143:128]}};

assign p_Result_110_9_fu_806_p4 = {{input_r_TDATA[159:144]}};

assign p_Result_11_fu_442_p5 = {{p_Result_9_fu_420_p5[47:32]}, {p_Result_8_fu_432_p4}, {p_Result_9_fu_420_p5[23:0]}};

assign p_Result_12_fu_542_p4 = {{input_r_TDATA[148:144]}};

assign p_Result_13_fu_464_p5 = {{p_Result_11_fu_442_p5[47:24]}, {p_Result_1_fu_454_p4}, {p_Result_11_fu_442_p5[15:0]}};

assign p_Result_14_fu_486_p5 = {{p_Result_13_fu_464_p5[47:16]}, {p_Result_3_fu_476_p4}, {p_Result_13_fu_464_p5[7:0]}};

assign p_Result_15_fu_508_p5 = {{p_Result_14_fu_486_p5[47:8]}, {p_Result_7_fu_498_p4}};

assign p_Result_16_fu_530_p5 = {{p_Result_10_fu_520_p4}, {p_Result_15_fu_508_p5[39:0]}};

assign p_Result_17_fu_552_p5 = {{p_Result_16_fu_530_p5[47:37]}, {p_Result_12_fu_542_p4}, {p_Result_16_fu_530_p5[31:0]}};

assign p_Result_18_fu_564_p5 = {{ap_const_lv512_lc_1[511:48]}, {p_Result_17_fu_552_p5}};

assign p_Result_19_fu_576_p5 = {{p_Result_18_fu_564_p5[511:96]}, {trunc_ln647_fu_394_p1}, {p_Result_18_fu_564_p5[87:0]}};

assign p_Result_1_fu_454_p4 = {{mac_subnet_V[31:24]}};

assign p_Result_20_fu_588_p5 = {{p_Result_19_fu_576_p5[511:88]}, {p_Result_6_fu_410_p4}, {p_Result_19_fu_576_p5[79:0]}};

assign p_Result_21_fu_600_p5 = {{p_Result_20_fu_588_p5[511:80]}, {p_Result_8_fu_432_p4}, {p_Result_20_fu_588_p5[71:0]}};

assign p_Result_22_fu_612_p5 = {{p_Result_21_fu_600_p5[511:72]}, {p_Result_1_fu_454_p4}, {p_Result_21_fu_600_p5[63:0]}};

assign p_Result_23_fu_664_p4 = {{id_src_V[12:8]}};

assign p_Result_24_fu_624_p5 = {{p_Result_22_fu_612_p5[511:64]}, {p_Result_3_fu_476_p4}, {p_Result_22_fu_612_p5[55:0]}};

assign p_Result_25_fu_636_p5 = {{p_Result_24_fu_624_p5[511:56]}, {p_Result_7_fu_498_p4}, {p_Result_24_fu_624_p5[47:0]}};

assign p_Result_26_fu_652_p5 = {{p_Result_25_fu_636_p5[511:96]}, {trunc_ln647_1_fu_648_p1}, {p_Result_25_fu_636_p5[87:0]}};

assign p_Result_27_fu_674_p5 = {{p_Result_26_fu_652_p5[511:85]}, {p_Result_23_fu_664_p4}, {p_Result_26_fu_652_p5[79:0]}};

assign p_Result_28_fu_942_p5 = {{input_r_TDATA[511:96]}, {xor_ln248_fu_936_p2}, {input_r_TDATA[79:0]}};

assign p_Result_31_fu_966_p5 = {{tmp_1_fu_958_p3}, {p_Result_27_fu_674_p5[95:0]}};

assign p_Result_33_fu_982_p3 = {{trunc_ln647_4_fu_978_p1}, {14'd16383}};

assign p_Result_35_fu_374_p3 = {{trunc_ln647_5_fu_370_p1}, {grp_fu_310_p4}};

assign p_Result_36_fu_386_p3 = {{trunc_ln647_6_fu_382_p1}, {grp_fu_319_p4}};

assign p_Result_3_fu_476_p4 = {{mac_subnet_V[39:32]}};

assign p_Result_4_fu_1050_p3 = {{50'd0}, {p_Result_2_reg_1114}};

assign p_Result_5_fu_398_p5 = {{trunc_ln647_fu_394_p1}, {ap_const_lv48_0[39:0]}};

assign p_Result_6_fu_410_p4 = {{mac_subnet_V[15:8]}};

assign p_Result_7_fu_498_p4 = {{mac_subnet_V[47:40]}};

assign p_Result_8_fu_432_p4 = {{mac_subnet_V[23:16]}};

assign p_Result_9_fu_420_p5 = {{p_Result_5_fu_398_p5[47:40]}, {p_Result_6_fu_410_p4}, {p_Result_5_fu_398_p5[31:0]}};

assign p_Result_s_33_fu_1042_p3 = {{400'd0}, {p_Result_s_reg_1109}};

assign sendWord_last_V_fu_990_p2 = ((ap_phi_mux_p_01080_2_0_in_in_phi_fu_258_p4 == 14'd0) ? 1'b1 : 1'b0);

assign tmp_1_fu_958_p3 = {{trunc_ln647_3_fu_954_p1}, {16'd8}};

assign tmp_2_fu_916_p4 = {{add_ln700_8_fu_906_p2[19:16]}};

assign tmp_last_V_fu_362_p1 = input_r_TLAST;

assign tmp_nbreadreq_fu_200_p5 = input_r_TVALID;

assign trunc_ln357_fu_912_p1 = add_ln700_9_fu_900_p2[15:0];

assign trunc_ln647_1_fu_648_p1 = id_src_V[7:0];

assign trunc_ln647_2_fu_686_p1 = input_r_TDATA[15:0];

assign trunc_ln647_3_fu_954_p1 = p_Result_28_fu_942_p5[399:0];

assign trunc_ln647_4_fu_978_p1 = input_r_TKEEP[49:0];

assign trunc_ln647_5_fu_370_p1 = input_r_TDATA[399:0];

assign trunc_ln647_6_fu_382_p1 = input_r_TKEEP[49:0];

assign trunc_ln647_fu_394_p1 = mac_subnet_V[7:0];

assign xor_ln248_fu_936_p2 = (16'd65535 ^ add_ln215_fu_930_p2);

assign xor_ln761_fu_1002_p2 = (sendWord_last_V_fu_990_p2 ^ 1'd1);

assign zext_ln357_fu_926_p1 = tmp_2_fu_916_p4;

assign zext_ln647_1_fu_704_p1 = p_Result_110_1_fu_694_p4;

assign zext_ln647_2_fu_718_p1 = p_Result_110_2_fu_708_p4;

assign zext_ln647_3_fu_732_p1 = p_Result_110_3_fu_722_p4;

assign zext_ln647_4_fu_746_p1 = p_Result_110_4_fu_736_p4;

assign zext_ln647_5_fu_760_p1 = p_Result_110_5_fu_750_p4;

assign zext_ln647_6_fu_774_p1 = p_Result_110_6_fu_764_p4;

assign zext_ln647_7_fu_788_p1 = p_Result_110_7_fu_778_p4;

assign zext_ln647_8_fu_802_p1 = p_Result_110_8_fu_792_p4;

assign zext_ln647_fu_690_p1 = trunc_ln647_2_fu_686_p1;

assign zext_ln700_1_fu_826_p1 = add_ln700_fu_820_p2;

assign zext_ln700_2_fu_836_p1 = add_ln700_1_fu_830_p2;

assign zext_ln700_3_fu_846_p1 = add_ln700_2_fu_840_p2;

assign zext_ln700_4_fu_856_p1 = add_ln700_3_fu_850_p2;

assign zext_ln700_5_fu_866_p1 = add_ln700_4_fu_860_p2;

assign zext_ln700_6_fu_876_p1 = add_ln700_5_fu_870_p2;

assign zext_ln700_7_fu_886_p1 = add_ln700_6_fu_880_p2;

assign zext_ln700_8_fu_896_p1 = add_ln700_7_fu_890_p2;

assign zext_ln700_fu_816_p1 = p_Result_110_9_fu_806_p4;

endmodule //insert_ethernet_header
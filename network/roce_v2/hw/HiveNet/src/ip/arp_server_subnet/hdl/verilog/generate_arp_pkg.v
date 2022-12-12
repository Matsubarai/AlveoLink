// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module generate_arp_pkg (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        myMacAddress_i_V_dout,
        myMacAddress_i_V_empty_n,
        myMacAddress_i_V_read,
        myIpAddress_i_V_dout,
        myIpAddress_i_V_empty_n,
        myIpAddress_i_V_read,
        arpRequestMetaFifo_V_dout,
        arpRequestMetaFifo_V_empty_n,
        arpRequestMetaFifo_V_read,
        arpReplyMetaFifo_V_dout,
        arpReplyMetaFifo_V_empty_n,
        arpReplyMetaFifo_V_read,
        m_axis_TREADY,
        m_axis_TDATA,
        m_axis_TVALID,
        m_axis_TKEEP,
        m_axis_TLAST
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [47:0] myMacAddress_i_V_dout;
input   myMacAddress_i_V_empty_n;
output   myMacAddress_i_V_read;
input  [31:0] myIpAddress_i_V_dout;
input   myIpAddress_i_V_empty_n;
output   myIpAddress_i_V_read;
input  [31:0] arpRequestMetaFifo_V_dout;
input   arpRequestMetaFifo_V_empty_n;
output   arpRequestMetaFifo_V_read;
input  [127:0] arpReplyMetaFifo_V_dout;
input   arpReplyMetaFifo_V_empty_n;
output   arpReplyMetaFifo_V_read;
input   m_axis_TREADY;
output  [511:0] m_axis_TDATA;
output   m_axis_TVALID;
output  [63:0] m_axis_TKEEP;
output  [0:0] m_axis_TLAST;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg myMacAddress_i_V_read;
reg myIpAddress_i_V_read;
reg arpRequestMetaFifo_V_read;
reg arpReplyMetaFifo_V_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire   [0:0] gap_state_load_load_fu_179_p1;
wire   [0:0] tmp_nbreadreq_fu_126_p3;
wire   [0:0] tmp_3_nbreadreq_fu_134_p3;
reg    ap_predicate_op12_read_state1;
reg    ap_predicate_op20_read_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
reg   [0:0] gap_state_load_reg_426;
reg    ap_block_state2_io;
wire    regslice_both_dataOut_V_data_V_U_apdone_blk;
reg    ap_block_state3_pp0_stage0_iter2;
reg   [0:0] gap_state_load_reg_426_pp0_iter1_reg;
reg    ap_block_state3_io;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] gap_state;
reg   [15:0] header_idx_1;
reg   [335:0] header_header_V_1;
reg    m_axis_TDATA_blk_n;
wire    ap_block_pp0_stage0;
reg    myMacAddress_i_V_blk_n;
reg    myIpAddress_i_V_blk_n;
reg    arpReplyMetaFifo_V_blk_n;
reg    arpRequestMetaFifo_V_blk_n;
reg    ap_block_pp0_stage0_subdone;
wire   [15:0] select_ln82_fu_399_p3;
wire   [335:0] p_Result_6_fu_221_p5;
wire   [335:0] p_Result_s_fu_289_p5;
reg    ap_block_pp0_stage0_01001;
wire   [335:0] p_Result_9_fu_183_p5;
wire   [335:0] p_Result_10_fu_195_p5;
wire   [175:0] tmp_6_fu_207_p6;
wire   [47:0] trunc_ln321_fu_239_p1;
wire   [335:0] p_Result_7_fu_243_p5;
wire   [79:0] tmp_4_fu_267_p4;
wire   [335:0] p_Result_8_fu_255_p5;
wire   [175:0] tmp_5_fu_277_p5;
wire   [24:0] Lo_assign_fu_327_p3;
wire   [0:0] icmp_ln647_fu_341_p2;
wire   [0:0] trunc_ln647_fu_347_p1;
wire   [0:0] tmp_7_fu_351_p3;
wire   [0:0] select_ln647_fu_359_p3;
wire   [335:0] zext_ln647_fu_367_p1;
wire   [335:0] select_ln647_1_fu_371_p3;
wire   [335:0] select_ln647_2_fu_379_p3;
wire   [0:0] icmp_ln82_fu_335_p2;
wire   [15:0] add_ln85_fu_393_p2;
wire   [335:0] p_Result_11_fu_387_p2;
wire   [335:0] sendWord_data_V_fu_407_p3;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to1;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
wire   [511:0] m_axis_TDATA_int;
reg    m_axis_TVALID_int;
wire    m_axis_TREADY_int;
wire    regslice_both_dataOut_V_data_V_U_vld_out;
wire    regslice_both_dataOut_V_keep_V_U_apdone_blk;
wire    regslice_both_dataOut_V_keep_V_U_ack_in_dummy;
wire    regslice_both_dataOut_V_keep_V_U_vld_out;
wire    regslice_both_dataOut_V_last_V_U_apdone_blk;
wire    regslice_both_dataOut_V_last_V_U_ack_in_dummy;
wire    regslice_both_dataOut_V_last_V_U_vld_out;
reg    ap_condition_378;
reg    ap_condition_164;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 gap_state = 1'd0;
#0 header_idx_1 = 16'd0;
#0 header_header_V_1 = 336'd22969770278074827527357335424865723297445183488;
end

regslice_both #(
    .DataWidth( 512 ))
regslice_both_dataOut_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(m_axis_TDATA_int),
    .vld_in(m_axis_TVALID_int),
    .ack_in(m_axis_TREADY_int),
    .data_out(m_axis_TDATA),
    .vld_out(regslice_both_dataOut_V_data_V_U_vld_out),
    .ack_out(m_axis_TREADY),
    .apdone_blk(regslice_both_dataOut_V_data_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 64 ))
regslice_both_dataOut_V_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(64'd4398046511103),
    .vld_in(m_axis_TVALID_int),
    .ack_in(regslice_both_dataOut_V_keep_V_U_ack_in_dummy),
    .data_out(m_axis_TKEEP),
    .vld_out(regslice_both_dataOut_V_keep_V_U_vld_out),
    .ack_out(m_axis_TREADY),
    .apdone_blk(regslice_both_dataOut_V_keep_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 1 ))
regslice_both_dataOut_V_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(1'd1),
    .vld_in(m_axis_TVALID_int),
    .ack_in(regslice_both_dataOut_V_last_V_U_ack_in_dummy),
    .data_out(m_axis_TLAST),
    .vld_out(regslice_both_dataOut_V_last_V_U_vld_out),
    .ack_out(m_axis_TREADY),
    .apdone_blk(regslice_both_dataOut_V_last_V_U_apdone_blk)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((gap_state_load_load_fu_179_p1 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        gap_state <= 1'd0;
    end else if ((((tmp_nbreadreq_fu_126_p3 == 1'd1) & (gap_state == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((tmp_3_nbreadreq_fu_134_p3 == 1'd1) & (tmp_nbreadreq_fu_126_p3 == 1'd0) & (gap_state == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        gap_state <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_378)) begin
        if ((tmp_nbreadreq_fu_126_p3 == 1'd1)) begin
            header_header_V_1 <= p_Result_s_fu_289_p5;
        end else if (((tmp_3_nbreadreq_fu_134_p3 == 1'd1) & (tmp_nbreadreq_fu_126_p3 == 1'd0))) begin
            header_header_V_1 <= p_Result_6_fu_221_p5;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_164)) begin
        if ((gap_state_load_reg_426 == 1'd1)) begin
            header_idx_1 <= select_ln82_fu_399_p3;
        end else if ((gap_state_load_reg_426 == 1'd0)) begin
            header_idx_1 <= 16'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        gap_state_load_reg_426 <= gap_state;
        gap_state_load_reg_426_pp0_iter1_reg <= gap_state_load_reg_426;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to1 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op20_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        arpReplyMetaFifo_V_blk_n = arpReplyMetaFifo_V_empty_n;
    end else begin
        arpReplyMetaFifo_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op20_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        arpReplyMetaFifo_V_read = 1'b1;
    end else begin
        arpReplyMetaFifo_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op12_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        arpRequestMetaFifo_V_blk_n = arpRequestMetaFifo_V_empty_n;
    end else begin
        arpRequestMetaFifo_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op12_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        arpRequestMetaFifo_V_read = 1'b1;
    end else begin
        arpRequestMetaFifo_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((((gap_state_load_reg_426_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((gap_state_load_reg_426 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        m_axis_TDATA_blk_n = m_axis_TREADY_int;
    end else begin
        m_axis_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((gap_state_load_reg_426 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        m_axis_TVALID_int = 1'b1;
    end else begin
        m_axis_TVALID_int = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        myIpAddress_i_V_blk_n = myIpAddress_i_V_empty_n;
    end else begin
        myIpAddress_i_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        myIpAddress_i_V_read = 1'b1;
    end else begin
        myIpAddress_i_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        myMacAddress_i_V_blk_n = myMacAddress_i_V_empty_n;
    end else begin
        myMacAddress_i_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        myMacAddress_i_V_read = 1'b1;
    end else begin
        myMacAddress_i_V_read = 1'b0;
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

assign Lo_assign_fu_327_p3 = {{header_idx_1}, {9'd0}};

assign add_ln85_fu_393_p2 = (header_idx_1 + 16'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((regslice_both_dataOut_V_data_V_U_apdone_blk == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (myIpAddress_i_V_empty_n == 1'b0) | (myMacAddress_i_V_empty_n == 1'b0) | (ap_done_reg == 1'b1) | ((arpReplyMetaFifo_V_empty_n == 1'b0) & (ap_predicate_op20_read_state1 == 1'b1)) | ((arpRequestMetaFifo_V_empty_n == 1'b0) & (ap_predicate_op12_read_state1 == 1'b1)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_io)) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (myIpAddress_i_V_empty_n == 1'b0) | (myMacAddress_i_V_empty_n == 1'b0) | (ap_done_reg == 1'b1) | ((arpReplyMetaFifo_V_empty_n == 1'b0) & (ap_predicate_op20_read_state1 == 1'b1)) | ((arpRequestMetaFifo_V_empty_n == 1'b0) & (ap_predicate_op12_read_state1 == 1'b1)))) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((regslice_both_dataOut_V_data_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_io)) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (myIpAddress_i_V_empty_n == 1'b0) | (myMacAddress_i_V_empty_n == 1'b0) | (ap_done_reg == 1'b1) | ((arpReplyMetaFifo_V_empty_n == 1'b0) & (ap_predicate_op20_read_state1 == 1'b1)) | ((arpRequestMetaFifo_V_empty_n == 1'b0) & (ap_predicate_op12_read_state1 == 1'b1)))) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((regslice_both_dataOut_V_data_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_start == 1'b0) | (myIpAddress_i_V_empty_n == 1'b0) | (myMacAddress_i_V_empty_n == 1'b0) | (ap_done_reg == 1'b1) | ((arpReplyMetaFifo_V_empty_n == 1'b0) & (ap_predicate_op20_read_state1 == 1'b1)) | ((arpRequestMetaFifo_V_empty_n == 1'b0) & (ap_predicate_op12_read_state1 == 1'b1)));
end

always @ (*) begin
    ap_block_state2_io = ((gap_state_load_reg_426 == 1'd1) & (m_axis_TREADY_int == 1'b0));
end

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_io = ((gap_state_load_reg_426_pp0_iter1_reg == 1'd1) & (m_axis_TREADY_int == 1'b0));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter2 = (regslice_both_dataOut_V_data_V_U_apdone_blk == 1'b1);
end

always @ (*) begin
    ap_condition_164 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001));
end

always @ (*) begin
    ap_condition_378 = ((gap_state == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

always @ (*) begin
    ap_predicate_op12_read_state1 = ((tmp_3_nbreadreq_fu_134_p3 == 1'd1) & (tmp_nbreadreq_fu_126_p3 == 1'd0) & (gap_state == 1'd0));
end

always @ (*) begin
    ap_predicate_op20_read_state1 = ((tmp_nbreadreq_fu_126_p3 == 1'd1) & (gap_state == 1'd0));
end

assign gap_state_load_load_fu_179_p1 = gap_state;

assign icmp_ln647_fu_341_p2 = ((Lo_assign_fu_327_p3 > 25'd335) ? 1'b1 : 1'b0);

assign icmp_ln82_fu_335_p2 = ((Lo_assign_fu_327_p3 < 25'd336) ? 1'b1 : 1'b0);

assign m_axis_TDATA_int = sendWord_data_V_fu_407_p3;

assign m_axis_TVALID = regslice_both_dataOut_V_data_V_U_vld_out;

assign p_Result_10_fu_195_p5 = {{p_Result_9_fu_183_p5[335:96]}, {myMacAddress_i_V_dout}, {p_Result_9_fu_183_p5[47:0]}};

assign p_Result_11_fu_387_p2 = (select_ln647_2_fu_379_p3 & select_ln647_1_fu_371_p3);

assign p_Result_6_fu_221_p5 = {{tmp_6_fu_207_p6}, {p_Result_10_fu_195_p5[159:0]}};

assign p_Result_7_fu_243_p5 = {{header_header_V_1[335:48]}, {trunc_ln321_fu_239_p1}};

assign p_Result_8_fu_255_p5 = {{p_Result_7_fu_243_p5[335:96]}, {myMacAddress_i_V_dout}, {p_Result_7_fu_243_p5[47:0]}};

assign p_Result_9_fu_183_p5 = {{header_header_V_1[335:48]}, {48'd281474976710655}};

assign p_Result_s_fu_289_p5 = {{tmp_5_fu_277_p5}, {p_Result_8_fu_255_p5[159:0]}};

assign select_ln647_1_fu_371_p3 = ((icmp_ln647_fu_341_p2[0:0] === 1'b1) ? zext_ln647_fu_367_p1 : header_header_V_1);

assign select_ln647_2_fu_379_p3 = ((icmp_ln647_fu_341_p2[0:0] === 1'b1) ? 336'd383123885216472214589586756787577295904684780545900543 : 336'd139984046386112763159840142535527767382602843577165595931249318810236991948760059086304843329475444735);

assign select_ln647_fu_359_p3 = ((icmp_ln647_fu_341_p2[0:0] === 1'b1) ? trunc_ln647_fu_347_p1 : tmp_7_fu_351_p3);

assign select_ln82_fu_399_p3 = ((icmp_ln82_fu_335_p2[0:0] === 1'b1) ? add_ln85_fu_393_p2 : header_idx_1);

assign sendWord_data_V_fu_407_p3 = ((icmp_ln82_fu_335_p2[0:0] === 1'b1) ? p_Result_11_fu_387_p2 : 336'd0);

assign tmp_3_nbreadreq_fu_134_p3 = arpRequestMetaFifo_V_empty_n;

assign tmp_4_fu_267_p4 = {{arpReplyMetaFifo_V_dout[127:48]}};

assign tmp_5_fu_277_p5 = {{{{tmp_4_fu_267_p4}, {myIpAddress_i_V_dout}}, {myMacAddress_i_V_dout}}, {16'd512}};

assign tmp_6_fu_207_p6 = {{{{{arpRequestMetaFifo_V_dout}, {48'd0}}, {myIpAddress_i_V_dout}}, {myMacAddress_i_V_dout}}, {16'd256}};

assign tmp_7_fu_351_p3 = header_header_V_1[32'd335];

assign tmp_nbreadreq_fu_126_p3 = arpReplyMetaFifo_V_empty_n;

assign trunc_ln321_fu_239_p1 = arpReplyMetaFifo_V_dout[47:0];

assign trunc_ln647_fu_347_p1 = header_header_V_1[0:0];

assign zext_ln647_fu_367_p1 = select_ln647_fu_359_p3;

endmodule //generate_arp_pkg
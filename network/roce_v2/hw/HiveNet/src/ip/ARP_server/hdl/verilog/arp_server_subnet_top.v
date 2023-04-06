// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="arp_server_subnet_top,hls_ip_2019_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xcu200-fsgd2104-2-e,HLS_INPUT_CLOCK=4.500000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=2.226000,HLS_SYN_LAT=8,HLS_SYN_TPT=1,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=1915,HLS_SYN_LUT=3843,HLS_VERSION=2019_2}" *)

module arp_server_subnet_top (
        s_axis_TDATA,
        s_axis_TKEEP,
        s_axis_TLAST,
        s_axis_arp_lookup_request_V_V_TDATA,
        s_axis_host_arp_lookup_request_V_V_TDATA,
        m_axis_TDATA,
        m_axis_TKEEP,
        m_axis_TLAST,
        m_axis_arp_lookup_reply_V_macAddress_V_TDATA,
        m_axis_arp_lookup_reply_V_hit_TDATA,
        m_axis_host_arp_lookup_reply_V_macAddress_V_TDATA,
        m_axis_host_arp_lookup_reply_V_hit_TDATA,
        read_arpTableValid_V_address0,
        read_arpTableValid_V_ce0,
        read_arpTableValid_V_d0,
        read_arpTableValid_V_q0,
        read_arpTableValid_V_we0,
        arp_clear_n_V,
        myMacAddress_V,
        myIpAddress_V,
        ap_clk,
        ap_rst_n,
        s_axis_TVALID,
        s_axis_TREADY,
        s_axis_arp_lookup_request_V_V_TVALID,
        s_axis_arp_lookup_request_V_V_TREADY,
        s_axis_host_arp_lookup_request_V_V_TVALID,
        s_axis_host_arp_lookup_request_V_V_TREADY,
        m_axis_arp_lookup_reply_V_macAddress_V_TVALID,
        m_axis_arp_lookup_reply_V_macAddress_V_TREADY,
        m_axis_arp_lookup_reply_V_hit_TVALID,
        m_axis_arp_lookup_reply_V_hit_TREADY,
        m_axis_host_arp_lookup_reply_V_macAddress_V_TVALID,
        m_axis_host_arp_lookup_reply_V_macAddress_V_TREADY,
        m_axis_host_arp_lookup_reply_V_hit_TVALID,
        m_axis_host_arp_lookup_reply_V_hit_TREADY,
        m_axis_TVALID,
        m_axis_TREADY
);


input  [511:0] s_axis_TDATA;
input  [63:0] s_axis_TKEEP;
input  [0:0] s_axis_TLAST;
input  [31:0] s_axis_arp_lookup_request_V_V_TDATA;
input  [31:0] s_axis_host_arp_lookup_request_V_V_TDATA;
output  [511:0] m_axis_TDATA;
output  [63:0] m_axis_TKEEP;
output  [0:0] m_axis_TLAST;
output  [47:0] m_axis_arp_lookup_reply_V_macAddress_V_TDATA;
output  [7:0] m_axis_arp_lookup_reply_V_hit_TDATA;
output  [47:0] m_axis_host_arp_lookup_reply_V_macAddress_V_TDATA;
output  [7:0] m_axis_host_arp_lookup_reply_V_hit_TDATA;
output  [12:0] read_arpTableValid_V_address0;
output   read_arpTableValid_V_ce0;
output  [0:0] read_arpTableValid_V_d0;
input  [0:0] read_arpTableValid_V_q0;
output   read_arpTableValid_V_we0;
input  [0:0] arp_clear_n_V;
input  [47:0] myMacAddress_V;
input  [31:0] myIpAddress_V;
input   ap_clk;
input   ap_rst_n;
input   s_axis_TVALID;
output   s_axis_TREADY;
input   s_axis_arp_lookup_request_V_V_TVALID;
output   s_axis_arp_lookup_request_V_V_TREADY;
input   s_axis_host_arp_lookup_request_V_V_TVALID;
output   s_axis_host_arp_lookup_request_V_V_TREADY;
output   m_axis_arp_lookup_reply_V_macAddress_V_TVALID;
input   m_axis_arp_lookup_reply_V_macAddress_V_TREADY;
output   m_axis_arp_lookup_reply_V_hit_TVALID;
input   m_axis_arp_lookup_reply_V_hit_TREADY;
output   m_axis_host_arp_lookup_reply_V_macAddress_V_TVALID;
input   m_axis_host_arp_lookup_reply_V_macAddress_V_TREADY;
output   m_axis_host_arp_lookup_reply_V_hit_TVALID;
input   m_axis_host_arp_lookup_reply_V_hit_TREADY;
output   m_axis_TVALID;
input   m_axis_TREADY;

 reg    ap_rst_n_inv;
wire    process_arp_pkg185_U0_ap_start;
wire    process_arp_pkg185_U0_ap_done;
wire    process_arp_pkg185_U0_ap_continue;
wire    process_arp_pkg185_U0_ap_idle;
wire    process_arp_pkg185_U0_ap_ready;
wire   [12:0] process_arp_pkg185_U0_arpTableInsertFifo_V_din;
wire    process_arp_pkg185_U0_arpTableInsertFifo_V_write;
wire   [47:0] process_arp_pkg185_U0_arpReplyMetaFifo_V_s_din;
wire    process_arp_pkg185_U0_arpReplyMetaFifo_V_s_write;
wire   [47:0] process_arp_pkg185_U0_arpReplyMetaFifo_V_s_1_din;
wire    process_arp_pkg185_U0_arpReplyMetaFifo_V_s_1_write;
wire   [31:0] process_arp_pkg185_U0_arpReplyMetaFifo_V_s_2_din;
wire    process_arp_pkg185_U0_arpReplyMetaFifo_V_s_2_write;
wire    process_arp_pkg185_U0_s_axis_TREADY;
wire    arp_table_U0_ap_start;
wire    arp_table_U0_ap_done;
wire    arp_table_U0_ap_continue;
wire    arp_table_U0_ap_idle;
wire    arp_table_U0_ap_ready;
wire    arp_table_U0_arpTableInsertFifo_V_read;
wire   [31:0] arp_table_U0_arpRequestMetaFifo_V_din;
wire    arp_table_U0_arpRequestMetaFifo_V_write;
wire    arp_table_U0_macIpEncode_req_V_V_TREADY;
wire    arp_table_U0_hostIpEncode_req_V_V_TREADY;
wire   [47:0] arp_table_U0_macIpEncode_rsp_V_macAddress_V_TDATA;
wire    arp_table_U0_macIpEncode_rsp_V_macAddress_V_TVALID;
wire   [7:0] arp_table_U0_macIpEncode_rsp_V_hi_TDATA;
wire    arp_table_U0_macIpEncode_rsp_V_hi_TVALID;
wire   [47:0] arp_table_U0_hostIpEncode_rsp_V_macAddress_V_TDATA;
wire    arp_table_U0_hostIpEncode_rsp_V_macAddress_V_TVALID;
wire   [7:0] arp_table_U0_hostIpEncode_rsp_V_h_TDATA;
wire    arp_table_U0_hostIpEncode_rsp_V_h_TVALID;
wire   [12:0] arp_table_U0_arpTableValid_V_address0;
wire    arp_table_U0_arpTableValid_V_ce0;
wire    arp_table_U0_arpTableValid_V_we0;
wire   [0:0] arp_table_U0_arpTableValid_V_d0;
wire    ap_sync_continue;
wire    generate_arp_pkg_U0_ap_start;
wire    generate_arp_pkg_U0_ap_done;
wire    generate_arp_pkg_U0_ap_continue;
wire    generate_arp_pkg_U0_ap_idle;
wire    generate_arp_pkg_U0_ap_ready;
wire    generate_arp_pkg_U0_arpReplyMetaFifo_V_s_read;
wire    generate_arp_pkg_U0_arpReplyMetaFifo_V_s_1_read;
wire    generate_arp_pkg_U0_arpReplyMetaFifo_V_s_2_read;
wire    generate_arp_pkg_U0_arpRequestMetaFifo_V_read;
wire   [511:0] generate_arp_pkg_U0_m_axis_TDATA;
wire    generate_arp_pkg_U0_m_axis_TVALID;
wire   [63:0] generate_arp_pkg_U0_m_axis_TKEEP;
wire   [0:0] generate_arp_pkg_U0_m_axis_TLAST;
wire    arpTableInsertFifo_V_full_n;
wire   [12:0] arpTableInsertFifo_V_dout;
wire    arpTableInsertFifo_V_empty_n;
wire    arpReplyMetaFifo_V_s_full_n;
wire   [47:0] arpReplyMetaFifo_V_s_dout;
wire    arpReplyMetaFifo_V_s_empty_n;
wire    arpReplyMetaFifo_V_s_1_full_n;
wire   [47:0] arpReplyMetaFifo_V_s_1_dout;
wire    arpReplyMetaFifo_V_s_1_empty_n;
wire    arpReplyMetaFifo_V_s_2_full_n;
wire   [31:0] arpReplyMetaFifo_V_s_2_dout;
wire    arpReplyMetaFifo_V_s_2_empty_n;
wire    arpRequestMetaFifo_V_full_n;
wire   [31:0] arpRequestMetaFifo_V_dout;
wire    arpRequestMetaFifo_V_empty_n;

process_arp_pkg185 process_arp_pkg185_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(process_arp_pkg185_U0_ap_start),
    .ap_done(process_arp_pkg185_U0_ap_done),
    .ap_continue(process_arp_pkg185_U0_ap_continue),
    .ap_idle(process_arp_pkg185_U0_ap_idle),
    .ap_ready(process_arp_pkg185_U0_ap_ready),
    .s_axis_TVALID(s_axis_TVALID),
    .arpTableInsertFifo_V_din(process_arp_pkg185_U0_arpTableInsertFifo_V_din),
    .arpTableInsertFifo_V_full_n(arpTableInsertFifo_V_full_n),
    .arpTableInsertFifo_V_write(process_arp_pkg185_U0_arpTableInsertFifo_V_write),
    .arpReplyMetaFifo_V_s_din(process_arp_pkg185_U0_arpReplyMetaFifo_V_s_din),
    .arpReplyMetaFifo_V_s_full_n(arpReplyMetaFifo_V_s_full_n),
    .arpReplyMetaFifo_V_s_write(process_arp_pkg185_U0_arpReplyMetaFifo_V_s_write),
    .arpReplyMetaFifo_V_s_1_din(process_arp_pkg185_U0_arpReplyMetaFifo_V_s_1_din),
    .arpReplyMetaFifo_V_s_1_full_n(arpReplyMetaFifo_V_s_1_full_n),
    .arpReplyMetaFifo_V_s_1_write(process_arp_pkg185_U0_arpReplyMetaFifo_V_s_1_write),
    .arpReplyMetaFifo_V_s_2_din(process_arp_pkg185_U0_arpReplyMetaFifo_V_s_2_din),
    .arpReplyMetaFifo_V_s_2_full_n(arpReplyMetaFifo_V_s_2_full_n),
    .arpReplyMetaFifo_V_s_2_write(process_arp_pkg185_U0_arpReplyMetaFifo_V_s_2_write),
    .s_axis_TDATA(s_axis_TDATA),
    .s_axis_TREADY(process_arp_pkg185_U0_s_axis_TREADY),
    .s_axis_TKEEP(s_axis_TKEEP),
    .s_axis_TLAST(s_axis_TLAST),
    .myIpAddress_V(myIpAddress_V)
);

arp_table arp_table_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(arp_table_U0_ap_start),
    .ap_done(arp_table_U0_ap_done),
    .ap_continue(arp_table_U0_ap_continue),
    .ap_idle(arp_table_U0_ap_idle),
    .ap_ready(arp_table_U0_ap_ready),
    .hostIpEncode_req_V_V_TVALID(s_axis_host_arp_lookup_request_V_V_TVALID),
    .macIpEncode_req_V_V_TVALID(s_axis_arp_lookup_request_V_V_TVALID),
    .arpTableInsertFifo_V_dout(arpTableInsertFifo_V_dout),
    .arpTableInsertFifo_V_empty_n(arpTableInsertFifo_V_empty_n),
    .arpTableInsertFifo_V_read(arp_table_U0_arpTableInsertFifo_V_read),
    .hostIpEncode_rsp_V_macAddress_V_TREADY(m_axis_host_arp_lookup_reply_V_macAddress_V_TREADY),
    .macIpEncode_rsp_V_macAddress_V_TREADY(m_axis_arp_lookup_reply_V_macAddress_V_TREADY),
    .arpRequestMetaFifo_V_din(arp_table_U0_arpRequestMetaFifo_V_din),
    .arpRequestMetaFifo_V_full_n(arpRequestMetaFifo_V_full_n),
    .arpRequestMetaFifo_V_write(arp_table_U0_arpRequestMetaFifo_V_write),
    .macIpEncode_req_V_V_TDATA(s_axis_arp_lookup_request_V_V_TDATA),
    .macIpEncode_req_V_V_TREADY(arp_table_U0_macIpEncode_req_V_V_TREADY),
    .hostIpEncode_req_V_V_TDATA(s_axis_host_arp_lookup_request_V_V_TDATA),
    .hostIpEncode_req_V_V_TREADY(arp_table_U0_hostIpEncode_req_V_V_TREADY),
    .macIpEncode_rsp_V_macAddress_V_TDATA(arp_table_U0_macIpEncode_rsp_V_macAddress_V_TDATA),
    .macIpEncode_rsp_V_macAddress_V_TVALID(arp_table_U0_macIpEncode_rsp_V_macAddress_V_TVALID),
    .macIpEncode_rsp_V_hi_TDATA(arp_table_U0_macIpEncode_rsp_V_hi_TDATA),
    .macIpEncode_rsp_V_hi_TVALID(arp_table_U0_macIpEncode_rsp_V_hi_TVALID),
    .macIpEncode_rsp_V_hi_TREADY(m_axis_arp_lookup_reply_V_hit_TREADY),
    .hostIpEncode_rsp_V_macAddress_V_TDATA(arp_table_U0_hostIpEncode_rsp_V_macAddress_V_TDATA),
    .hostIpEncode_rsp_V_macAddress_V_TVALID(arp_table_U0_hostIpEncode_rsp_V_macAddress_V_TVALID),
    .hostIpEncode_rsp_V_h_TDATA(arp_table_U0_hostIpEncode_rsp_V_h_TDATA),
    .hostIpEncode_rsp_V_h_TVALID(arp_table_U0_hostIpEncode_rsp_V_h_TVALID),
    .hostIpEncode_rsp_V_h_TREADY(m_axis_host_arp_lookup_reply_V_hit_TREADY),
    .myMacAddress_V(myMacAddress_V),
    .arpTableValid_V_address0(arp_table_U0_arpTableValid_V_address0),
    .arpTableValid_V_ce0(arp_table_U0_arpTableValid_V_ce0),
    .arpTableValid_V_we0(arp_table_U0_arpTableValid_V_we0),
    .arpTableValid_V_d0(arp_table_U0_arpTableValid_V_d0),
    .arpTableValid_V_q0(read_arpTableValid_V_q0)
);

generate_arp_pkg generate_arp_pkg_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(generate_arp_pkg_U0_ap_start),
    .ap_done(generate_arp_pkg_U0_ap_done),
    .ap_continue(generate_arp_pkg_U0_ap_continue),
    .ap_idle(generate_arp_pkg_U0_ap_idle),
    .ap_ready(generate_arp_pkg_U0_ap_ready),
    .arpReplyMetaFifo_V_s_dout(arpReplyMetaFifo_V_s_dout),
    .arpReplyMetaFifo_V_s_empty_n(arpReplyMetaFifo_V_s_empty_n),
    .arpReplyMetaFifo_V_s_read(generate_arp_pkg_U0_arpReplyMetaFifo_V_s_read),
    .arpReplyMetaFifo_V_s_1_dout(arpReplyMetaFifo_V_s_1_dout),
    .arpReplyMetaFifo_V_s_1_empty_n(arpReplyMetaFifo_V_s_1_empty_n),
    .arpReplyMetaFifo_V_s_1_read(generate_arp_pkg_U0_arpReplyMetaFifo_V_s_1_read),
    .arpReplyMetaFifo_V_s_2_dout(arpReplyMetaFifo_V_s_2_dout),
    .arpReplyMetaFifo_V_s_2_empty_n(arpReplyMetaFifo_V_s_2_empty_n),
    .arpReplyMetaFifo_V_s_2_read(generate_arp_pkg_U0_arpReplyMetaFifo_V_s_2_read),
    .arpRequestMetaFifo_V_dout(arpRequestMetaFifo_V_dout),
    .arpRequestMetaFifo_V_empty_n(arpRequestMetaFifo_V_empty_n),
    .arpRequestMetaFifo_V_read(generate_arp_pkg_U0_arpRequestMetaFifo_V_read),
    .m_axis_TREADY(m_axis_TREADY),
    .m_axis_TDATA(generate_arp_pkg_U0_m_axis_TDATA),
    .m_axis_TVALID(generate_arp_pkg_U0_m_axis_TVALID),
    .m_axis_TKEEP(generate_arp_pkg_U0_m_axis_TKEEP),
    .m_axis_TLAST(generate_arp_pkg_U0_m_axis_TLAST),
    .myMacAddress_V(myMacAddress_V),
    .myIpAddress_V(myIpAddress_V)
);

fifo_w13_d4_A arpTableInsertFifo_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(process_arp_pkg185_U0_arpTableInsertFifo_V_din),
    .if_full_n(arpTableInsertFifo_V_full_n),
    .if_write(process_arp_pkg185_U0_arpTableInsertFifo_V_write),
    .if_dout(arpTableInsertFifo_V_dout),
    .if_empty_n(arpTableInsertFifo_V_empty_n),
    .if_read(arp_table_U0_arpTableInsertFifo_V_read)
);

fifo_w48_d4_A arpReplyMetaFifo_V_s_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(process_arp_pkg185_U0_arpReplyMetaFifo_V_s_din),
    .if_full_n(arpReplyMetaFifo_V_s_full_n),
    .if_write(process_arp_pkg185_U0_arpReplyMetaFifo_V_s_write),
    .if_dout(arpReplyMetaFifo_V_s_dout),
    .if_empty_n(arpReplyMetaFifo_V_s_empty_n),
    .if_read(generate_arp_pkg_U0_arpReplyMetaFifo_V_s_read)
);

fifo_w48_d4_A arpReplyMetaFifo_V_s_1_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(process_arp_pkg185_U0_arpReplyMetaFifo_V_s_1_din),
    .if_full_n(arpReplyMetaFifo_V_s_1_full_n),
    .if_write(process_arp_pkg185_U0_arpReplyMetaFifo_V_s_1_write),
    .if_dout(arpReplyMetaFifo_V_s_1_dout),
    .if_empty_n(arpReplyMetaFifo_V_s_1_empty_n),
    .if_read(generate_arp_pkg_U0_arpReplyMetaFifo_V_s_1_read)
);

fifo_w32_d4_A arpReplyMetaFifo_V_s_2_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(process_arp_pkg185_U0_arpReplyMetaFifo_V_s_2_din),
    .if_full_n(arpReplyMetaFifo_V_s_2_full_n),
    .if_write(process_arp_pkg185_U0_arpReplyMetaFifo_V_s_2_write),
    .if_dout(arpReplyMetaFifo_V_s_2_dout),
    .if_empty_n(arpReplyMetaFifo_V_s_2_empty_n),
    .if_read(generate_arp_pkg_U0_arpReplyMetaFifo_V_s_2_read)
);

fifo_w32_d4_A arpRequestMetaFifo_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(arp_table_U0_arpRequestMetaFifo_V_din),
    .if_full_n(arpRequestMetaFifo_V_full_n),
    .if_write(arp_table_U0_arpRequestMetaFifo_V_write),
    .if_dout(arpRequestMetaFifo_V_dout),
    .if_empty_n(arpRequestMetaFifo_V_empty_n),
    .if_read(generate_arp_pkg_U0_arpRequestMetaFifo_V_read)
);

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ap_sync_continue = 1'b0;

assign arp_table_U0_ap_continue = 1'b1;

assign arp_table_U0_ap_start = 1'b1;

assign generate_arp_pkg_U0_ap_continue = 1'b1;

assign generate_arp_pkg_U0_ap_start = 1'b1;

assign m_axis_TDATA = generate_arp_pkg_U0_m_axis_TDATA;

assign m_axis_TKEEP = generate_arp_pkg_U0_m_axis_TKEEP;

assign m_axis_TLAST = generate_arp_pkg_U0_m_axis_TLAST;

assign m_axis_TVALID = generate_arp_pkg_U0_m_axis_TVALID;

assign m_axis_arp_lookup_reply_V_hit_TDATA = arp_table_U0_macIpEncode_rsp_V_hi_TDATA;

assign m_axis_arp_lookup_reply_V_hit_TVALID = arp_table_U0_macIpEncode_rsp_V_hi_TVALID;

assign m_axis_arp_lookup_reply_V_macAddress_V_TDATA = arp_table_U0_macIpEncode_rsp_V_macAddress_V_TDATA;

assign m_axis_arp_lookup_reply_V_macAddress_V_TVALID = arp_table_U0_macIpEncode_rsp_V_macAddress_V_TVALID;

assign m_axis_host_arp_lookup_reply_V_hit_TDATA = arp_table_U0_hostIpEncode_rsp_V_h_TDATA;

assign m_axis_host_arp_lookup_reply_V_hit_TVALID = arp_table_U0_hostIpEncode_rsp_V_h_TVALID;

assign m_axis_host_arp_lookup_reply_V_macAddress_V_TDATA = arp_table_U0_hostIpEncode_rsp_V_macAddress_V_TDATA;

assign m_axis_host_arp_lookup_reply_V_macAddress_V_TVALID = arp_table_U0_hostIpEncode_rsp_V_macAddress_V_TVALID;

assign process_arp_pkg185_U0_ap_continue = 1'b1;

assign process_arp_pkg185_U0_ap_start = 1'b1;

assign read_arpTableValid_V_address0 = arp_table_U0_arpTableValid_V_address0;

assign read_arpTableValid_V_ce0 = arp_table_U0_arpTableValid_V_ce0;

assign read_arpTableValid_V_d0 = arp_table_U0_arpTableValid_V_d0;

assign read_arpTableValid_V_we0 = arp_table_U0_arpTableValid_V_we0;

assign s_axis_TREADY = process_arp_pkg185_U0_s_axis_TREADY;

assign s_axis_arp_lookup_request_V_V_TREADY = arp_table_U0_macIpEncode_req_V_V_TREADY;

assign s_axis_host_arp_lookup_request_V_V_TREADY = arp_table_U0_hostIpEncode_req_V_V_TREADY;

endmodule //arp_server_subnet_top

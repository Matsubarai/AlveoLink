-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Version: 2022.1
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ethHeader_forICMP is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    p_in_TDATA : IN STD_LOGIC_VECTOR (511 downto 0);
    p_in_TVALID : IN STD_LOGIC;
    p_in_TREADY : OUT STD_LOGIC;
    p_in_TKEEP : IN STD_LOGIC_VECTOR (63 downto 0);
    p_in_TSTRB : IN STD_LOGIC_VECTOR (63 downto 0);
    p_in_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
    hivenet_out_TDATA : OUT STD_LOGIC_VECTOR (511 downto 0);
    hivenet_out_TVALID : OUT STD_LOGIC;
    hivenet_out_TREADY : IN STD_LOGIC;
    hivenet_out_TKEEP : OUT STD_LOGIC_VECTOR (63 downto 0);
    hivenet_out_TSTRB : OUT STD_LOGIC_VECTOR (63 downto 0);
    hivenet_out_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
    icmp_out_TDATA : OUT STD_LOGIC_VECTOR (511 downto 0);
    icmp_out_TVALID : OUT STD_LOGIC;
    icmp_out_TREADY : IN STD_LOGIC;
    icmp_out_TKEEP : OUT STD_LOGIC_VECTOR (63 downto 0);
    icmp_out_TSTRB : OUT STD_LOGIC_VECTOR (63 downto 0);
    icmp_out_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
    icpm_dmac : IN STD_LOGIC_VECTOR (47 downto 0) );
end;


architecture behav of ethHeader_forICMP is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "ethHeader_forICMP_ethHeader_forICMP,hls_ip_2022_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcu55c-fsvh2892-2L-e,HLS_INPUT_CLOCK=3.000000,HLS_INPUT_ARCH=pipeline,HLS_SYN_CLOCK=1.063000,HLS_SYN_LAT=3,HLS_SYN_TPT=1,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=1418,HLS_SYN_LUT=228,HLS_VERSION=2022_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_60 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001100000";
    constant ap_const_lv32_6F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001101111";
    constant ap_const_lv16_8 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000001000";
    constant ap_const_lv32_B8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010111000";
    constant ap_const_lv32_BF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010111111";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_lv32_2F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101111";

    signal ap_rst_n_inv : STD_LOGIC;
    signal isFirst_V : STD_LOGIC_VECTOR (0 downto 0) := "1";
    signal isHivenet_V : STD_LOGIC_VECTOR (0 downto 0) := "1";
    signal hivenet_out_TDATA_blk_n : STD_LOGIC;
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal p_vld_reg_260 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_vld_reg_260_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal isHivenet_V_load_reg_305 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal p_vld_reg_260_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal isHivenet_V_load_reg_305_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_out_TDATA_blk_n : STD_LOGIC;
    signal temp_out_data_V_reg_150 : STD_LOGIC_VECTOR (511 downto 0);
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_predicate_op55_write_state3 : BOOLEAN;
    signal ap_predicate_op56_write_state3 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state3_io : BOOLEAN;
    signal ap_predicate_op57_write_state4 : BOOLEAN;
    signal ap_predicate_op59_write_state4 : BOOLEAN;
    signal regslice_both_hivenet_out_V_data_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_icmp_out_V_data_V_U_apdone_blk : STD_LOGIC;
    signal ap_block_state4_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_state4_io : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal p_vld_fu_164_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal tmp_keep_V_reg_270 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_keep_V_reg_270_pp0_iter1_reg : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_strb_V_reg_276 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_strb_V_reg_276_pp0_iter1_reg : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_last_V_reg_282 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_last_V_reg_282_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_s_fu_226_p5 : STD_LOGIC_VECTOR (511 downto 0);
    signal isFirst_V_load_load_fu_184_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1065_fu_198_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln1065_1_fu_214_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_phi_mux_isFirst_V_flag_0_phi_fu_139_p6 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_reg_pp0_iter0_isFirst_V_flag_0_reg_136 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_reg_pp0_iter0_temp_out_data_V_reg_150 : STD_LOGIC_VECTOR (511 downto 0);
    signal ap_phi_reg_pp0_iter1_temp_out_data_V_reg_150 : STD_LOGIC_VECTOR (511 downto 0);
    signal or_ln28_fu_244_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal empty_nbread_fu_92_p5_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal tmp_fu_188_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_s_fu_204_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal regslice_both_p_in_V_data_V_U_apdone_blk : STD_LOGIC;
    signal p_in_TDATA_int_regslice : STD_LOGIC_VECTOR (511 downto 0);
    signal p_in_TVALID_int_regslice : STD_LOGIC;
    signal p_in_TREADY_int_regslice : STD_LOGIC;
    signal regslice_both_p_in_V_data_V_U_ack_in : STD_LOGIC;
    signal regslice_both_p_in_V_keep_V_U_apdone_blk : STD_LOGIC;
    signal p_in_TKEEP_int_regslice : STD_LOGIC_VECTOR (63 downto 0);
    signal regslice_both_p_in_V_keep_V_U_vld_out : STD_LOGIC;
    signal regslice_both_p_in_V_keep_V_U_ack_in : STD_LOGIC;
    signal regslice_both_p_in_V_strb_V_U_apdone_blk : STD_LOGIC;
    signal p_in_TSTRB_int_regslice : STD_LOGIC_VECTOR (63 downto 0);
    signal regslice_both_p_in_V_strb_V_U_vld_out : STD_LOGIC;
    signal regslice_both_p_in_V_strb_V_U_ack_in : STD_LOGIC;
    signal regslice_both_p_in_V_last_V_U_apdone_blk : STD_LOGIC;
    signal p_in_TLAST_int_regslice : STD_LOGIC_VECTOR (0 downto 0);
    signal regslice_both_p_in_V_last_V_U_vld_out : STD_LOGIC;
    signal regslice_both_p_in_V_last_V_U_ack_in : STD_LOGIC;
    signal hivenet_out_TVALID_int_regslice : STD_LOGIC;
    signal hivenet_out_TREADY_int_regslice : STD_LOGIC;
    signal regslice_both_hivenet_out_V_data_V_U_vld_out : STD_LOGIC;
    signal regslice_both_hivenet_out_V_keep_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_hivenet_out_V_keep_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_hivenet_out_V_keep_V_U_vld_out : STD_LOGIC;
    signal regslice_both_hivenet_out_V_strb_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_hivenet_out_V_strb_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_hivenet_out_V_strb_V_U_vld_out : STD_LOGIC;
    signal regslice_both_hivenet_out_V_last_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_hivenet_out_V_last_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_hivenet_out_V_last_V_U_vld_out : STD_LOGIC;
    signal icmp_out_TVALID_int_regslice : STD_LOGIC;
    signal icmp_out_TREADY_int_regslice : STD_LOGIC;
    signal regslice_both_icmp_out_V_data_V_U_vld_out : STD_LOGIC;
    signal regslice_both_icmp_out_V_keep_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_icmp_out_V_keep_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_icmp_out_V_keep_V_U_vld_out : STD_LOGIC;
    signal regslice_both_icmp_out_V_strb_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_icmp_out_V_strb_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_icmp_out_V_strb_V_U_vld_out : STD_LOGIC;
    signal regslice_both_icmp_out_V_last_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_icmp_out_V_last_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_icmp_out_V_last_V_U_vld_out : STD_LOGIC;
    signal ap_condition_169 : BOOLEAN;
    signal ap_condition_147 : BOOLEAN;
    signal ap_condition_163 : BOOLEAN;
    signal ap_ce_reg : STD_LOGIC;

    component ethHeader_forICMP_regslice_both IS
    generic (
        DataWidth : INTEGER );
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        data_in : IN STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_in : IN STD_LOGIC;
        ack_in : OUT STD_LOGIC;
        data_out : OUT STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_out : OUT STD_LOGIC;
        ack_out : IN STD_LOGIC;
        apdone_blk : OUT STD_LOGIC );
    end component;



begin
    regslice_both_p_in_V_data_V_U : component ethHeader_forICMP_regslice_both
    generic map (
        DataWidth => 512)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => p_in_TDATA,
        vld_in => p_in_TVALID,
        ack_in => regslice_both_p_in_V_data_V_U_ack_in,
        data_out => p_in_TDATA_int_regslice,
        vld_out => p_in_TVALID_int_regslice,
        ack_out => p_in_TREADY_int_regslice,
        apdone_blk => regslice_both_p_in_V_data_V_U_apdone_blk);

    regslice_both_p_in_V_keep_V_U : component ethHeader_forICMP_regslice_both
    generic map (
        DataWidth => 64)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => p_in_TKEEP,
        vld_in => p_in_TVALID,
        ack_in => regslice_both_p_in_V_keep_V_U_ack_in,
        data_out => p_in_TKEEP_int_regslice,
        vld_out => regslice_both_p_in_V_keep_V_U_vld_out,
        ack_out => p_in_TREADY_int_regslice,
        apdone_blk => regslice_both_p_in_V_keep_V_U_apdone_blk);

    regslice_both_p_in_V_strb_V_U : component ethHeader_forICMP_regslice_both
    generic map (
        DataWidth => 64)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => p_in_TSTRB,
        vld_in => p_in_TVALID,
        ack_in => regslice_both_p_in_V_strb_V_U_ack_in,
        data_out => p_in_TSTRB_int_regslice,
        vld_out => regslice_both_p_in_V_strb_V_U_vld_out,
        ack_out => p_in_TREADY_int_regslice,
        apdone_blk => regslice_both_p_in_V_strb_V_U_apdone_blk);

    regslice_both_p_in_V_last_V_U : component ethHeader_forICMP_regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => p_in_TLAST,
        vld_in => p_in_TVALID,
        ack_in => regslice_both_p_in_V_last_V_U_ack_in,
        data_out => p_in_TLAST_int_regslice,
        vld_out => regslice_both_p_in_V_last_V_U_vld_out,
        ack_out => p_in_TREADY_int_regslice,
        apdone_blk => regslice_both_p_in_V_last_V_U_apdone_blk);

    regslice_both_hivenet_out_V_data_V_U : component ethHeader_forICMP_regslice_both
    generic map (
        DataWidth => 512)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => temp_out_data_V_reg_150,
        vld_in => hivenet_out_TVALID_int_regslice,
        ack_in => hivenet_out_TREADY_int_regslice,
        data_out => hivenet_out_TDATA,
        vld_out => regslice_both_hivenet_out_V_data_V_U_vld_out,
        ack_out => hivenet_out_TREADY,
        apdone_blk => regslice_both_hivenet_out_V_data_V_U_apdone_blk);

    regslice_both_hivenet_out_V_keep_V_U : component ethHeader_forICMP_regslice_both
    generic map (
        DataWidth => 64)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => tmp_keep_V_reg_270_pp0_iter1_reg,
        vld_in => hivenet_out_TVALID_int_regslice,
        ack_in => regslice_both_hivenet_out_V_keep_V_U_ack_in_dummy,
        data_out => hivenet_out_TKEEP,
        vld_out => regslice_both_hivenet_out_V_keep_V_U_vld_out,
        ack_out => hivenet_out_TREADY,
        apdone_blk => regslice_both_hivenet_out_V_keep_V_U_apdone_blk);

    regslice_both_hivenet_out_V_strb_V_U : component ethHeader_forICMP_regslice_both
    generic map (
        DataWidth => 64)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => tmp_strb_V_reg_276_pp0_iter1_reg,
        vld_in => hivenet_out_TVALID_int_regslice,
        ack_in => regslice_both_hivenet_out_V_strb_V_U_ack_in_dummy,
        data_out => hivenet_out_TSTRB,
        vld_out => regslice_both_hivenet_out_V_strb_V_U_vld_out,
        ack_out => hivenet_out_TREADY,
        apdone_blk => regslice_both_hivenet_out_V_strb_V_U_apdone_blk);

    regslice_both_hivenet_out_V_last_V_U : component ethHeader_forICMP_regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => tmp_last_V_reg_282_pp0_iter1_reg,
        vld_in => hivenet_out_TVALID_int_regslice,
        ack_in => regslice_both_hivenet_out_V_last_V_U_ack_in_dummy,
        data_out => hivenet_out_TLAST,
        vld_out => regslice_both_hivenet_out_V_last_V_U_vld_out,
        ack_out => hivenet_out_TREADY,
        apdone_blk => regslice_both_hivenet_out_V_last_V_U_apdone_blk);

    regslice_both_icmp_out_V_data_V_U : component ethHeader_forICMP_regslice_both
    generic map (
        DataWidth => 512)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => temp_out_data_V_reg_150,
        vld_in => icmp_out_TVALID_int_regslice,
        ack_in => icmp_out_TREADY_int_regslice,
        data_out => icmp_out_TDATA,
        vld_out => regslice_both_icmp_out_V_data_V_U_vld_out,
        ack_out => icmp_out_TREADY,
        apdone_blk => regslice_both_icmp_out_V_data_V_U_apdone_blk);

    regslice_both_icmp_out_V_keep_V_U : component ethHeader_forICMP_regslice_both
    generic map (
        DataWidth => 64)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => tmp_keep_V_reg_270_pp0_iter1_reg,
        vld_in => icmp_out_TVALID_int_regslice,
        ack_in => regslice_both_icmp_out_V_keep_V_U_ack_in_dummy,
        data_out => icmp_out_TKEEP,
        vld_out => regslice_both_icmp_out_V_keep_V_U_vld_out,
        ack_out => icmp_out_TREADY,
        apdone_blk => regslice_both_icmp_out_V_keep_V_U_apdone_blk);

    regslice_both_icmp_out_V_strb_V_U : component ethHeader_forICMP_regslice_both
    generic map (
        DataWidth => 64)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => tmp_strb_V_reg_276_pp0_iter1_reg,
        vld_in => icmp_out_TVALID_int_regslice,
        ack_in => regslice_both_icmp_out_V_strb_V_U_ack_in_dummy,
        data_out => icmp_out_TSTRB,
        vld_out => regslice_both_icmp_out_V_strb_V_U_vld_out,
        ack_out => icmp_out_TREADY,
        apdone_blk => regslice_both_icmp_out_V_strb_V_U_apdone_blk);

    regslice_both_icmp_out_V_last_V_U : component ethHeader_forICMP_regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => tmp_last_V_reg_282_pp0_iter1_reg,
        vld_in => icmp_out_TVALID_int_regslice,
        ack_in => regslice_both_icmp_out_V_last_V_U_ack_in_dummy,
        data_out => icmp_out_TLAST,
        vld_out => regslice_both_icmp_out_V_last_V_U_vld_out,
        ack_out => icmp_out_TREADY,
        apdone_blk => regslice_both_icmp_out_V_last_V_U_apdone_blk);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                end if; 
            end if;
        end if;
    end process;


    ap_phi_reg_pp0_iter1_temp_out_data_V_reg_150_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_const_logic_1) and (isFirst_V_load_load_fu_184_p1 = ap_const_lv1_0) and (p_vld_fu_164_p1 = ap_const_lv1_1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_const_logic_1) and (((icmp_ln1065_fu_198_p2 = ap_const_lv1_0) and (isFirst_V_load_load_fu_184_p1 = ap_const_lv1_1) and (p_vld_fu_164_p1 = ap_const_lv1_1)) or ((icmp_ln1065_1_fu_214_p2 = ap_const_lv1_0) and (isFirst_V_load_load_fu_184_p1 = ap_const_lv1_1) and (p_vld_fu_164_p1 = ap_const_lv1_1)))))) then 
                ap_phi_reg_pp0_iter1_temp_out_data_V_reg_150 <= p_in_TDATA_int_regslice;
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_const_logic_1) and (icmp_ln1065_1_fu_214_p2 = ap_const_lv1_1) and (icmp_ln1065_fu_198_p2 = ap_const_lv1_1) and (isFirst_V_load_load_fu_184_p1 = ap_const_lv1_1) and (p_vld_fu_164_p1 = ap_const_lv1_1))) then 
                ap_phi_reg_pp0_iter1_temp_out_data_V_reg_150 <= p_Result_s_fu_226_p5;
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_const_logic_1))) then 
                ap_phi_reg_pp0_iter1_temp_out_data_V_reg_150 <= ap_phi_reg_pp0_iter0_temp_out_data_V_reg_150;
            end if; 
        end if;
    end process;

    isHivenet_V_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_163)) then
                if ((ap_const_boolean_1 = ap_condition_147)) then 
                    isHivenet_V <= ap_const_lv1_0;
                elsif ((ap_const_boolean_1 = ap_condition_169)) then 
                    isHivenet_V <= ap_const_lv1_1;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (or_ln28_fu_244_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_const_logic_1) and (p_vld_fu_164_p1 = ap_const_lv1_1))) then
                isFirst_V <= p_in_TLAST_int_regslice;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((p_vld_reg_260 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                isHivenet_V_load_reg_305 <= isHivenet_V;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                isHivenet_V_load_reg_305_pp0_iter2_reg <= isHivenet_V_load_reg_305;
                p_vld_reg_260_pp0_iter2_reg <= p_vld_reg_260_pp0_iter1_reg;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                p_vld_reg_260 <= empty_nbread_fu_92_p5_0;
                p_vld_reg_260_pp0_iter1_reg <= p_vld_reg_260;
                tmp_keep_V_reg_270 <= p_in_TKEEP_int_regslice;
                tmp_keep_V_reg_270_pp0_iter1_reg <= tmp_keep_V_reg_270;
                tmp_last_V_reg_282 <= p_in_TLAST_int_regslice;
                tmp_last_V_reg_282_pp0_iter1_reg <= tmp_last_V_reg_282;
                tmp_strb_V_reg_276 <= p_in_TSTRB_int_regslice;
                tmp_strb_V_reg_276_pp0_iter1_reg <= tmp_strb_V_reg_276;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then
                temp_out_data_V_reg_150 <= ap_phi_reg_pp0_iter1_temp_out_data_V_reg_150;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_block_pp0_stage0_subdone, ap_reset_idle_pp0)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3, ap_predicate_op55_write_state3, ap_predicate_op56_write_state3, ap_predicate_op57_write_state4, ap_predicate_op59_write_state4, regslice_both_hivenet_out_V_data_V_U_apdone_blk, regslice_both_icmp_out_V_data_V_U_apdone_blk, hivenet_out_TREADY_int_regslice, icmp_out_TREADY_int_regslice)
    begin
                ap_block_pp0_stage0_01001 <= (((ap_enable_reg_pp0_iter3 = ap_const_logic_1) and ((regslice_both_icmp_out_V_data_V_U_apdone_blk = ap_const_logic_1) or (regslice_both_hivenet_out_V_data_V_U_apdone_blk = ap_const_logic_1) or ((ap_predicate_op59_write_state4 = ap_const_boolean_1) and (hivenet_out_TREADY_int_regslice = ap_const_logic_0)) or ((ap_predicate_op57_write_state4 = ap_const_boolean_1) and (icmp_out_TREADY_int_regslice = ap_const_logic_0)))) or ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (((ap_predicate_op56_write_state3 = ap_const_boolean_1) and (hivenet_out_TREADY_int_regslice = ap_const_logic_0)) or ((ap_predicate_op55_write_state3 = ap_const_boolean_1) and (icmp_out_TREADY_int_regslice = ap_const_logic_0)))));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3, ap_predicate_op55_write_state3, ap_predicate_op56_write_state3, ap_block_state3_io, ap_predicate_op57_write_state4, ap_predicate_op59_write_state4, regslice_both_hivenet_out_V_data_V_U_apdone_blk, regslice_both_icmp_out_V_data_V_U_apdone_blk, ap_block_state4_io, hivenet_out_TREADY_int_regslice, icmp_out_TREADY_int_regslice)
    begin
                ap_block_pp0_stage0_11001 <= (((ap_enable_reg_pp0_iter3 = ap_const_logic_1) and ((regslice_both_icmp_out_V_data_V_U_apdone_blk = ap_const_logic_1) or (regslice_both_hivenet_out_V_data_V_U_apdone_blk = ap_const_logic_1) or (ap_const_boolean_1 = ap_block_state4_io) or ((ap_predicate_op59_write_state4 = ap_const_boolean_1) and (hivenet_out_TREADY_int_regslice = ap_const_logic_0)) or ((ap_predicate_op57_write_state4 = ap_const_boolean_1) and (icmp_out_TREADY_int_regslice = ap_const_logic_0)))) or ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and ((ap_const_boolean_1 = ap_block_state3_io) or ((ap_predicate_op56_write_state3 = ap_const_boolean_1) and (hivenet_out_TREADY_int_regslice = ap_const_logic_0)) or ((ap_predicate_op55_write_state3 = ap_const_boolean_1) and (icmp_out_TREADY_int_regslice = ap_const_logic_0)))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3, ap_predicate_op55_write_state3, ap_predicate_op56_write_state3, ap_block_state3_io, ap_predicate_op57_write_state4, ap_predicate_op59_write_state4, regslice_both_hivenet_out_V_data_V_U_apdone_blk, regslice_both_icmp_out_V_data_V_U_apdone_blk, ap_block_state4_io, hivenet_out_TREADY_int_regslice, icmp_out_TREADY_int_regslice)
    begin
                ap_block_pp0_stage0_subdone <= (((ap_enable_reg_pp0_iter3 = ap_const_logic_1) and ((regslice_both_icmp_out_V_data_V_U_apdone_blk = ap_const_logic_1) or (regslice_both_hivenet_out_V_data_V_U_apdone_blk = ap_const_logic_1) or (ap_const_boolean_1 = ap_block_state4_io) or ((ap_predicate_op59_write_state4 = ap_const_boolean_1) and (hivenet_out_TREADY_int_regslice = ap_const_logic_0)) or ((ap_predicate_op57_write_state4 = ap_const_boolean_1) and (icmp_out_TREADY_int_regslice = ap_const_logic_0)))) or ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and ((ap_const_boolean_1 = ap_block_state3_io) or ((ap_predicate_op56_write_state3 = ap_const_boolean_1) and (hivenet_out_TREADY_int_regslice = ap_const_logic_0)) or ((ap_predicate_op55_write_state3 = ap_const_boolean_1) and (icmp_out_TREADY_int_regslice = ap_const_logic_0)))));
    end process;

        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state3_io_assign_proc : process(ap_predicate_op55_write_state3, ap_predicate_op56_write_state3, hivenet_out_TREADY_int_regslice, icmp_out_TREADY_int_regslice)
    begin
                ap_block_state3_io <= (((ap_predicate_op56_write_state3 = ap_const_boolean_1) and (hivenet_out_TREADY_int_regslice = ap_const_logic_0)) or ((ap_predicate_op55_write_state3 = ap_const_boolean_1) and (icmp_out_TREADY_int_regslice = ap_const_logic_0)));
    end process;


    ap_block_state3_pp0_stage0_iter2_assign_proc : process(ap_predicate_op55_write_state3, ap_predicate_op56_write_state3, hivenet_out_TREADY_int_regslice, icmp_out_TREADY_int_regslice)
    begin
                ap_block_state3_pp0_stage0_iter2 <= (((ap_predicate_op56_write_state3 = ap_const_boolean_1) and (hivenet_out_TREADY_int_regslice = ap_const_logic_0)) or ((ap_predicate_op55_write_state3 = ap_const_boolean_1) and (icmp_out_TREADY_int_regslice = ap_const_logic_0)));
    end process;


    ap_block_state4_io_assign_proc : process(ap_predicate_op57_write_state4, ap_predicate_op59_write_state4, hivenet_out_TREADY_int_regslice, icmp_out_TREADY_int_regslice)
    begin
                ap_block_state4_io <= (((ap_predicate_op59_write_state4 = ap_const_boolean_1) and (hivenet_out_TREADY_int_regslice = ap_const_logic_0)) or ((ap_predicate_op57_write_state4 = ap_const_boolean_1) and (icmp_out_TREADY_int_regslice = ap_const_logic_0)));
    end process;


    ap_block_state4_pp0_stage0_iter3_assign_proc : process(ap_predicate_op57_write_state4, ap_predicate_op59_write_state4, regslice_both_hivenet_out_V_data_V_U_apdone_blk, regslice_both_icmp_out_V_data_V_U_apdone_blk, hivenet_out_TREADY_int_regslice, icmp_out_TREADY_int_regslice)
    begin
                ap_block_state4_pp0_stage0_iter3 <= ((regslice_both_icmp_out_V_data_V_U_apdone_blk = ap_const_logic_1) or (regslice_both_hivenet_out_V_data_V_U_apdone_blk = ap_const_logic_1) or ((ap_predicate_op59_write_state4 = ap_const_boolean_1) and (hivenet_out_TREADY_int_regslice = ap_const_logic_0)) or ((ap_predicate_op57_write_state4 = ap_const_boolean_1) and (icmp_out_TREADY_int_regslice = ap_const_logic_0)));
    end process;


    ap_condition_147_assign_proc : process(p_vld_fu_164_p1, isFirst_V_load_load_fu_184_p1, icmp_ln1065_fu_198_p2, icmp_ln1065_1_fu_214_p2)
    begin
                ap_condition_147 <= ((icmp_ln1065_1_fu_214_p2 = ap_const_lv1_1) and (icmp_ln1065_fu_198_p2 = ap_const_lv1_1) and (isFirst_V_load_load_fu_184_p1 = ap_const_lv1_1) and (p_vld_fu_164_p1 = ap_const_lv1_1));
    end process;


    ap_condition_163_assign_proc : process(ap_block_pp0_stage0_11001, ap_CS_fsm_pp0_stage0)
    begin
                ap_condition_163 <= ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_const_logic_1));
    end process;


    ap_condition_169_assign_proc : process(p_vld_fu_164_p1, isFirst_V_load_load_fu_184_p1, icmp_ln1065_fu_198_p2, icmp_ln1065_1_fu_214_p2)
    begin
                ap_condition_169 <= (((icmp_ln1065_fu_198_p2 = ap_const_lv1_0) and (isFirst_V_load_load_fu_184_p1 = ap_const_lv1_1) and (p_vld_fu_164_p1 = ap_const_lv1_1)) or ((icmp_ln1065_1_fu_214_p2 = ap_const_lv1_0) and (isFirst_V_load_load_fu_184_p1 = ap_const_lv1_1) and (p_vld_fu_164_p1 = ap_const_lv1_1)));
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_const_logic_1 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_phi_mux_isFirst_V_flag_0_phi_fu_139_p6_assign_proc : process(p_vld_fu_164_p1, isFirst_V_load_load_fu_184_p1, icmp_ln1065_fu_198_p2, icmp_ln1065_1_fu_214_p2, ap_phi_reg_pp0_iter0_isFirst_V_flag_0_reg_136)
    begin
        if (((isFirst_V_load_load_fu_184_p1 = ap_const_lv1_0) and (p_vld_fu_164_p1 = ap_const_lv1_1))) then 
            ap_phi_mux_isFirst_V_flag_0_phi_fu_139_p6 <= ap_const_lv1_0;
        elsif ((((icmp_ln1065_fu_198_p2 = ap_const_lv1_0) and (isFirst_V_load_load_fu_184_p1 = ap_const_lv1_1) and (p_vld_fu_164_p1 = ap_const_lv1_1)) or ((icmp_ln1065_1_fu_214_p2 = ap_const_lv1_0) and (isFirst_V_load_load_fu_184_p1 = ap_const_lv1_1) and (p_vld_fu_164_p1 = ap_const_lv1_1)) or ((icmp_ln1065_1_fu_214_p2 = ap_const_lv1_1) and (icmp_ln1065_fu_198_p2 = ap_const_lv1_1) and (isFirst_V_load_load_fu_184_p1 = ap_const_lv1_1) and (p_vld_fu_164_p1 = ap_const_lv1_1)))) then 
            ap_phi_mux_isFirst_V_flag_0_phi_fu_139_p6 <= ap_const_lv1_1;
        else 
            ap_phi_mux_isFirst_V_flag_0_phi_fu_139_p6 <= ap_phi_reg_pp0_iter0_isFirst_V_flag_0_reg_136;
        end if; 
    end process;

    ap_phi_reg_pp0_iter0_isFirst_V_flag_0_reg_136 <= "X";
    ap_phi_reg_pp0_iter0_temp_out_data_V_reg_150 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";

    ap_predicate_op55_write_state3_assign_proc : process(p_vld_reg_260_pp0_iter1_reg, isHivenet_V_load_reg_305)
    begin
                ap_predicate_op55_write_state3 <= ((isHivenet_V_load_reg_305 = ap_const_lv1_0) and (p_vld_reg_260_pp0_iter1_reg = ap_const_lv1_1));
    end process;


    ap_predicate_op56_write_state3_assign_proc : process(p_vld_reg_260_pp0_iter1_reg, isHivenet_V_load_reg_305)
    begin
                ap_predicate_op56_write_state3 <= ((isHivenet_V_load_reg_305 = ap_const_lv1_1) and (p_vld_reg_260_pp0_iter1_reg = ap_const_lv1_1));
    end process;


    ap_predicate_op57_write_state4_assign_proc : process(p_vld_reg_260_pp0_iter2_reg, isHivenet_V_load_reg_305_pp0_iter2_reg)
    begin
                ap_predicate_op57_write_state4 <= ((isHivenet_V_load_reg_305_pp0_iter2_reg = ap_const_lv1_0) and (p_vld_reg_260_pp0_iter2_reg = ap_const_lv1_1));
    end process;


    ap_predicate_op59_write_state4_assign_proc : process(p_vld_reg_260_pp0_iter2_reg, isHivenet_V_load_reg_305_pp0_iter2_reg)
    begin
                ap_predicate_op59_write_state4 <= ((isHivenet_V_load_reg_305_pp0_iter2_reg = ap_const_lv1_1) and (p_vld_reg_260_pp0_iter2_reg = ap_const_lv1_1));
    end process;

    ap_reset_idle_pp0 <= ap_const_logic_0;

    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    empty_nbread_fu_92_p5_0 <= (0=>(p_in_TVALID_int_regslice), others=>'-');

    hivenet_out_TDATA_blk_n_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0, p_vld_reg_260_pp0_iter1_reg, isHivenet_V_load_reg_305, ap_enable_reg_pp0_iter3, p_vld_reg_260_pp0_iter2_reg, isHivenet_V_load_reg_305_pp0_iter2_reg, hivenet_out_TREADY_int_regslice)
    begin
        if ((((isHivenet_V_load_reg_305_pp0_iter2_reg = ap_const_lv1_1) and (p_vld_reg_260_pp0_iter2_reg = ap_const_lv1_1) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0)) or ((isHivenet_V_load_reg_305 = ap_const_lv1_1) and (p_vld_reg_260_pp0_iter1_reg = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)))) then 
            hivenet_out_TDATA_blk_n <= hivenet_out_TREADY_int_regslice;
        else 
            hivenet_out_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    hivenet_out_TVALID <= regslice_both_hivenet_out_V_data_V_U_vld_out;

    hivenet_out_TVALID_int_regslice_assign_proc : process(ap_enable_reg_pp0_iter2, ap_predicate_op56_write_state3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_predicate_op56_write_state3 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            hivenet_out_TVALID_int_regslice <= ap_const_logic_1;
        else 
            hivenet_out_TVALID_int_regslice <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln1065_1_fu_214_p2 <= "1" when (tmp_s_fu_204_p4 = ap_const_lv8_1) else "0";
    icmp_ln1065_fu_198_p2 <= "1" when (tmp_fu_188_p4 = ap_const_lv16_8) else "0";

    icmp_out_TDATA_blk_n_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0, p_vld_reg_260_pp0_iter1_reg, isHivenet_V_load_reg_305, ap_enable_reg_pp0_iter3, p_vld_reg_260_pp0_iter2_reg, isHivenet_V_load_reg_305_pp0_iter2_reg, icmp_out_TREADY_int_regslice)
    begin
        if ((((isHivenet_V_load_reg_305_pp0_iter2_reg = ap_const_lv1_0) and (p_vld_reg_260_pp0_iter2_reg = ap_const_lv1_1) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0)) or ((isHivenet_V_load_reg_305 = ap_const_lv1_0) and (p_vld_reg_260_pp0_iter1_reg = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)))) then 
            icmp_out_TDATA_blk_n <= icmp_out_TREADY_int_regslice;
        else 
            icmp_out_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    icmp_out_TVALID <= regslice_both_icmp_out_V_data_V_U_vld_out;

    icmp_out_TVALID_int_regslice_assign_proc : process(ap_enable_reg_pp0_iter2, ap_predicate_op55_write_state3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_predicate_op55_write_state3 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            icmp_out_TVALID_int_regslice <= ap_const_logic_1;
        else 
            icmp_out_TVALID_int_regslice <= ap_const_logic_0;
        end if; 
    end process;

    isFirst_V_load_load_fu_184_p1 <= isFirst_V;
    or_ln28_fu_244_p2 <= (p_in_TLAST_int_regslice or ap_phi_mux_isFirst_V_flag_0_phi_fu_139_p6);
    p_Result_s_fu_226_p5 <= (p_in_TDATA_int_regslice(511 downto 48) & icpm_dmac);
    p_in_TREADY <= regslice_both_p_in_V_data_V_U_ack_in;

    p_in_TREADY_int_regslice_assign_proc : process(ap_block_pp0_stage0_11001, ap_CS_fsm_pp0_stage0, p_in_TVALID_int_regslice)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (p_in_TVALID_int_regslice = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_const_logic_1))) then 
            p_in_TREADY_int_regslice <= ap_const_logic_1;
        else 
            p_in_TREADY_int_regslice <= ap_const_logic_0;
        end if; 
    end process;

    p_vld_fu_164_p1 <= empty_nbread_fu_92_p5_0;
    tmp_fu_188_p4 <= p_in_TDATA_int_regslice(111 downto 96);
    tmp_s_fu_204_p4 <= p_in_TDATA_int_regslice(191 downto 184);
end behav;
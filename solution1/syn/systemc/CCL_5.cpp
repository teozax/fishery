#include "CCL.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void CCL::thread_sext_ln559_7_fu_19501_p1() {
    sext_ln559_7_fu_19501_p1 = esl_sext<64,16>(select_ln851_10_fu_19492_p3.read());
}

void CCL::thread_sext_ln559_8_fu_19506_p1() {
    sext_ln559_8_fu_19506_p1 = esl_sext<64,16>(ap_phi_mux_p_01106_0_i_phi_fu_17595_p4.read());
}

void CCL::thread_sext_ln559_fu_18417_p1() {
    sext_ln559_fu_18417_p1 = esl_sext<64,16>(select_ln850_fu_18409_p3.read());
}

void CCL::thread_sext_ln835_1_fu_18986_p1() {
    sext_ln835_1_fu_18986_p1 = esl_sext<64,18>(add_ln835_2_fu_18980_p2.read());
}

void CCL::thread_sext_ln835_2_fu_19457_p1() {
    sext_ln835_2_fu_19457_p1 = esl_sext<64,18>(add_ln835_3_fu_19451_p2.read());
}

void CCL::thread_sext_ln835_fu_18547_p1() {
    sext_ln835_fu_18547_p1 = esl_sext<18,10>(add_ln142_fu_18541_p2.read());
}

void CCL::thread_shl_ln728_1_fu_18744_p3() {
    shl_ln728_1_fu_18744_p3 = esl_concat<16,16>(above_fu_18683_p3.read(), ap_const_lv16_0);
}

void CCL::thread_shl_ln_fu_18735_p3() {
    shl_ln_fu_18735_p3 = esl_concat<16,16>(previous_fu_18648_p3.read(), ap_const_lv16_0);
}

void CCL::thread_sizes_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp4_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp4_iter0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp4_stage0.read(), ap_const_boolean_0))) {
        sizes_V_address0 =  (sc_lv<17>) (sext_ln835_2_fu_19457_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state42.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln292_reg_38834.read()))) {
        sizes_V_address0 = grp_windows_fu_17781_sizes_V_address0.read();
    } else {
        sizes_V_address0 =  (sc_lv<17>) ("XXXXXXXXXXXXXXXXX");
    }
}

void CCL::thread_sizes_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp4_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp4_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp4_iter0.read()))) {
        sizes_V_ce0 = ap_const_logic_1;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state42.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln292_reg_38834.read()))) {
        sizes_V_ce0 = grp_windows_fu_17781_sizes_V_ce0.read();
    } else {
        sizes_V_ce0 = ap_const_logic_0;
    }
}

void CCL::thread_sizes_V_d0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp4_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp4_iter0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp4_stage0.read(), ap_const_boolean_0))) {
        sizes_V_d0 = ap_const_lv17_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state42.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln292_reg_38834.read()))) {
        sizes_V_d0 = grp_windows_fu_17781_sizes_V_d0.read();
    } else {
        sizes_V_d0 =  (sc_lv<17>) ("XXXXXXXXXXXXXXXXX");
    }
}

void CCL::thread_sizes_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp4_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp4_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp4_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln206_fu_19381_p2.read()))) {
        sizes_V_we0 = ap_const_logic_1;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state42.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln292_reg_38834.read()))) {
        sizes_V_we0 = grp_windows_fu_17781_sizes_V_we0.read();
    } else {
        sizes_V_we0 = ap_const_logic_0;
    }
}

void CCL::thread_smax31_cast_fu_23285_p1() {
    smax31_cast_fu_23285_p1 = esl_zext<18,17>(smax31_fu_23277_p3.read());
}

void CCL::thread_smax31_fu_23277_p3() {
    smax31_fu_23277_p3 = (!empty_596_fu_23271_p2.read()[0].is_01())? sc_lv<17>(): ((empty_596_fu_23271_p2.read()[0].to_bool())? add_ln234_fu_23261_p2.read(): empty_595_fu_23257_p1.read());
}

void CCL::thread_smax33_cast_fu_23645_p1() {
    smax33_cast_fu_23645_p1 = esl_zext<18,17>(smax33_fu_23637_p3.read());
}

void CCL::thread_smax33_fu_23637_p3() {
    smax33_fu_23637_p3 = (!empty_599_fu_23631_p2.read()[0].is_01())? sc_lv<17>(): ((empty_599_fu_23631_p2.read()[0].to_bool())? add_ln246_fu_23621_p2.read(): empty_598_fu_23617_p1.read());
}

void CCL::thread_storemerge_fu_18726_p3() {
    storemerge_fu_18726_p3 = esl_concat<16,16>(ap_phi_mux_storemerge_in_in_phi_fu_17475_p4.read(), ap_const_lv16_0);
}

void CCL::thread_sub_ln1499_fu_19267_p2() {
    sub_ln1499_fu_19267_p2 = (!tmp_28_fu_19247_p3.read().is_01() || !zext_ln1499_fu_19263_p1.read().is_01())? sc_lv<18>(): (sc_biguint<18>(tmp_28_fu_19247_p3.read()) - sc_biguint<18>(zext_ln1499_fu_19263_p1.read()));
}

void CCL::thread_sub_ln176_fu_27486_p2() {
    sub_ln176_fu_27486_p2 = (!tmp_34_fu_27466_p3.read().is_01() || !zext_ln176_fu_27482_p1.read().is_01())? sc_lv<18>(): (sc_biguint<18>(tmp_34_fu_27466_p3.read()) - sc_biguint<18>(zext_ln176_fu_27482_p1.read()));
}

void CCL::thread_sub_ln221_1_fu_22759_p2() {
    sub_ln221_1_fu_22759_p2 = (!ap_const_lv8_0.is_01() || !trunc_ln221_1_fu_22749_p4.read().is_01())? sc_lv<8>(): (sc_biguint<8>(ap_const_lv8_0) - sc_biguint<8>(trunc_ln221_1_fu_22749_p4.read()));
}

void CCL::thread_sub_ln221_fu_22743_p2() {
    sub_ln221_fu_22743_p2 = (!ap_const_lv32_0.is_01() || !grp_local_sort_fu_18061_ap_return_0.read().is_01())? sc_lv<32>(): (sc_biguint<32>(ap_const_lv32_0) - sc_biguint<32>(grp_local_sort_fu_18061_ap_return_0.read()));
}

void CCL::thread_sub_ln234_1_fu_23289_p2() {
    sub_ln234_1_fu_23289_p2 = (!smax31_cast_fu_23285_p1.read().is_01() || !p_cast19981_fu_23267_p1.read().is_01())? sc_lv<18>(): (sc_biguint<18>(smax31_cast_fu_23285_p1.read()) - sc_biguint<18>(p_cast19981_fu_23267_p1.read()));
}

void CCL::thread_sub_ln234_fu_23237_p2() {
    sub_ln234_fu_23237_p2 = (!ap_const_lv16_FFCD.is_01() || !row_0_i_reg_17601.read().is_01())? sc_lv<16>(): (sc_bigint<16>(ap_const_lv16_FFCD) - sc_biguint<16>(row_0_i_reg_17601.read()));
}

void CCL::thread_sub_ln246_1_fu_23649_p2() {
    sub_ln246_1_fu_23649_p2 = (!smax33_cast_fu_23645_p1.read().is_01() || !p_cast19978_fu_23627_p1.read().is_01())? sc_lv<18>(): (sc_biguint<18>(smax33_cast_fu_23645_p1.read()) - sc_biguint<18>(p_cast19978_fu_23627_p1.read()));
}

void CCL::thread_sub_ln246_fu_23597_p2() {
    sub_ln246_fu_23597_p2 = (!ap_const_lv16_FFCD.is_01() || !col_0_i_reg_17647.read().is_01())? sc_lv<16>(): (sc_bigint<16>(ap_const_lv16_FFCD) - sc_biguint<16>(col_0_i_reg_17647.read()));
}

void CCL::thread_sub_ln835_1_fu_18532_p2() {
    sub_ln835_1_fu_18532_p2 = (!p_shl_cast_fu_18514_p3.read().is_01() || !zext_ln835_1_fu_18528_p1.read().is_01())? sc_lv<18>(): (sc_biguint<18>(p_shl_cast_fu_18514_p3.read()) - sc_biguint<18>(zext_ln835_1_fu_18528_p1.read()));
}

void CCL::thread_sub_ln835_2_fu_18970_p2() {
    sub_ln835_2_fu_18970_p2 = (!tmp_26_fu_18950_p3.read().is_01() || !zext_ln835_5_fu_18966_p1.read().is_01())? sc_lv<18>(): (sc_biguint<18>(tmp_26_fu_18950_p3.read()) - sc_biguint<18>(zext_ln835_5_fu_18966_p1.read()));
}

void CCL::thread_sub_ln835_3_fu_19441_p2() {
    sub_ln835_3_fu_19441_p2 = (!tmp_32_fu_19421_p3.read().is_01() || !zext_ln835_7_fu_19437_p1.read().is_01())? sc_lv<18>(): (sc_biguint<18>(tmp_32_fu_19421_p3.read()) - sc_biguint<18>(zext_ln835_7_fu_19437_p1.read()));
}

void CCL::thread_sub_ln835_fu_18508_p2() {
    sub_ln835_fu_18508_p2 = (!p_shl1_cast_fu_18490_p3.read().is_01() || !zext_ln835_fu_18504_p1.read().is_01())? sc_lv<18>(): (sc_biguint<18>(p_shl1_cast_fu_18490_p3.read()) - sc_biguint<18>(zext_ln835_fu_18504_p1.read()));
}

void CCL::thread_tmp_26_fu_18950_p3() {
    tmp_26_fu_18950_p3 = esl_concat<9,9>(select_ln179_1_fu_18942_p3.read(), ap_const_lv9_0);
}

void CCL::thread_tmp_27_fu_18958_p3() {
    tmp_27_fu_18958_p3 = esl_concat<9,5>(select_ln179_1_fu_18942_p3.read(), ap_const_lv5_0);
}

void CCL::thread_tmp_28_fu_19247_p3() {
    tmp_28_fu_19247_p3 = esl_concat<9,9>(select_ln193_1_fu_19239_p3.read(), ap_const_lv9_0);
}

void CCL::thread_tmp_31_fu_19255_p3() {
    tmp_31_fu_19255_p3 = esl_concat<9,5>(select_ln193_1_fu_19239_p3.read(), ap_const_lv5_0);
}

void CCL::thread_tmp_32_fu_19421_p3() {
    tmp_32_fu_19421_p3 = esl_concat<9,9>(select_ln210_1_fu_19413_p3.read(), ap_const_lv9_0);
}

void CCL::thread_tmp_33_fu_19429_p3() {
    tmp_33_fu_19429_p3 = esl_concat<9,5>(select_ln210_1_fu_19413_p3.read(), ap_const_lv5_0);
}

void CCL::thread_tmp_34_fu_27466_p3() {
    tmp_34_fu_27466_p3 = esl_concat<9,9>(select_ln301_1_fu_27458_p3.read(), ap_const_lv9_0);
}

void CCL::thread_tmp_35_fu_27474_p3() {
    tmp_35_fu_27474_p3 = esl_concat<9,5>(select_ln301_1_fu_27458_p3.read(), ap_const_lv5_0);
}

void CCL::thread_tmp_61_fu_18497_p3() {
    tmp_61_fu_18497_p3 = esl_concat<9,5>(select_ln171_1_reg_27590.read(), ap_const_lv5_0);
}

void CCL::thread_tmp_62_fu_18521_p3() {
    tmp_62_fu_18521_p3 = esl_concat<9,5>(select_ln171_2_reg_27597.read(), ap_const_lv5_0);
}

void CCL::thread_tmp_72_fu_22735_p3() {
    tmp_72_fu_22735_p3 = grp_local_sort_fu_18061_ap_return_0.read().range(31, 31);
}

void CCL::thread_tmp_s_fu_24351_p271() {
    tmp_s_fu_24351_p271 = (!ap_const_lv9_1FF.is_01() || !trunc_ln285_fu_23762_p1.read().is_01())? sc_lv<9>(): (sc_bigint<9>(ap_const_lv9_1FF) + sc_biguint<9>(trunc_ln285_fu_23762_p1.read()));
}

void CCL::thread_trunc_ln1499_fu_23233_p1() {
    trunc_ln1499_fu_23233_p1 = select_ln227_fu_23213_p3.read().range(9-1, 0);
}

void CCL::thread_trunc_ln203_fu_20113_p1() {
    trunc_ln203_fu_20113_p1 = N_6_fu_3042.read().range(8-1, 0);
}

void CCL::thread_trunc_ln221_1_fu_22749_p4() {
    trunc_ln221_1_fu_22749_p4 = sub_ln221_fu_22743_p2.read().range(8, 1);
}

void CCL::thread_trunc_ln221_2_fu_22765_p4() {
    trunc_ln221_2_fu_22765_p4 = grp_local_sort_fu_18061_ap_return_0.read().range(8, 1);
}

void CCL::thread_trunc_ln285_fu_23762_p1() {
    trunc_ln285_fu_23762_p1 = select_ln285_3_fu_23754_p3.read().range(9-1, 0);
}

void CCL::thread_trunc_ln731_fu_20097_p1() {
    trunc_ln731_fu_20097_p1 = select_ln850_10_fu_20080_p3.read().range(15-1, 0);
}

void CCL::thread_trunc_ln851_10_fu_19482_p1() {
    trunc_ln851_10_fu_19482_p1 = results_V_q1.read().range(16-1, 0);
}

void CCL::thread_trunc_ln851_11_fu_20062_p1() {
    trunc_ln851_11_fu_20062_p1 = labels_V_q1.read().range(16-1, 0);
}

void CCL::thread_trunc_ln851_2_fu_18624_p1() {
    trunc_ln851_2_fu_18624_p1 = results_V_q0.read().range(16-1, 0);
}

void CCL::thread_trunc_ln851_3_fu_18665_p1() {
    trunc_ln851_3_fu_18665_p1 = results_V_q1.read().range(16-1, 0);
}

void CCL::thread_trunc_ln851_4_fu_19005_p1() {
    trunc_ln851_4_fu_19005_p1 = results_V_q1.read().range(16-1, 0);
}

void CCL::thread_trunc_ln851_5_fu_19054_p1() {
    trunc_ln851_5_fu_19054_p1 = labels_V_q0.read().range(16-1, 0);
}

void CCL::thread_trunc_ln851_6_fu_18871_p1() {
    trunc_ln851_6_fu_18871_p1 = labels_V_q1.read().range(16-1, 0);
}

void CCL::thread_trunc_ln851_7_fu_18832_p1() {
    trunc_ln851_7_fu_18832_p1 = labels_V_q1.read().range(16-1, 0);
}

void CCL::thread_trunc_ln851_8_fu_18776_p1() {
    trunc_ln851_8_fu_18776_p1 = p_Val2_60_fu_2238.read().range(16-1, 0);
}

void CCL::thread_trunc_ln851_9_fu_19308_p1() {
    trunc_ln851_9_fu_19308_p1 = results_V_q1.read().range(16-1, 0);
}

void CCL::thread_trunc_ln851_fu_18386_p1() {
    trunc_ln851_fu_18386_p1 = p_Val2_63_reg_27529.read().range(16-1, 0);
}

void CCL::thread_window_sizes_0_V_4_fu_20101_p3() {
    window_sizes_0_V_4_fu_20101_p3 = esl_concat<15,16>(trunc_ln731_fu_20097_p1.read(), ap_const_lv16_0);
}

void CCL::thread_window_sizes_0_V_5_fu_20109_p1() {
    window_sizes_0_V_5_fu_20109_p1 = esl_zext<32,31>(window_sizes_0_V_4_fu_20101_p3.read());
}

void CCL::thread_ws_V_V_din() {
    if ((esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op6754_write_state37.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter3.read()) && 
         esl_seteq<1,1,1>(ap_block_pp5_stage0_01001.read(), ap_const_boolean_0))) {
        ws_V_V_din = tmp_V_231_reg_34736_pp5_iter2_reg.read();
    } else if ((esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op6753_write_state37.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter3.read()) && 
                esl_seteq<1,1,1>(ap_block_pp5_stage0_01001.read(), ap_const_boolean_0))) {
        ws_V_V_din = tmp_V_232_reg_34723_pp5_iter2_reg.read();
    } else if (((esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op6751_write_state37.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter3.read()) && 
                 esl_seteq<1,1,1>(ap_block_pp5_stage0_01001.read(), ap_const_boolean_0)) || 
                (esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op6752_write_state37.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter3.read()) && 
                 esl_seteq<1,1,1>(ap_block_pp5_stage0_01001.read(), ap_const_boolean_0)))) {
        ws_V_V_din = tmp_V_1_reg_36097_pp5_iter2_reg.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, phi_ln234_reg_17636.read()) && 
                 !(esl_seteq<1,1,1>(ap_const_logic_0, ws_V_V_full_n.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, phi_ln234_reg_17636.read()))) || 
                (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp6_stage0.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln285_reg_38825.read()) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp6_iter1.read()) && 
                 esl_seteq<1,1,1>(ap_block_pp6_stage0_01001.read(), ap_const_boolean_0)))) {
        ws_V_V_din = ap_const_lv32_0;
    } else {
        ws_V_V_din =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void CCL::thread_ws_V_V_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state42.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln292_reg_38834.read()))) {
        ws_V_V_read = grp_windows_fu_17781_window_V_V_read.read();
    } else {
        ws_V_V_read = ap_const_logic_0;
    }
}

void CCL::thread_ws_V_V_write() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state32.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, phi_ln234_reg_17636.read()) && 
          !(esl_seteq<1,1,1>(ap_const_logic_0, ws_V_V_full_n.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, phi_ln234_reg_17636.read()))) || 
         (esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op6751_write_state37.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter3.read()) && 
          esl_seteq<1,1,1>(ap_block_pp5_stage0_11001.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op6752_write_state37.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter3.read()) && 
          esl_seteq<1,1,1>(ap_block_pp5_stage0_11001.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op6753_write_state37.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter3.read()) && 
          esl_seteq<1,1,1>(ap_block_pp5_stage0_11001.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op6754_write_state37.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp5_iter3.read()) && 
          esl_seteq<1,1,1>(ap_block_pp5_stage0_11001.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp6_stage0.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln285_reg_38825.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp6_iter1.read()) && 
          esl_seteq<1,1,1>(ap_block_pp6_stage0_11001.read(), ap_const_boolean_0)))) {
        ws_V_V_write = ap_const_logic_1;
    } else {
        ws_V_V_write = ap_const_logic_0;
    }
}

void CCL::thread_xor_ln234_fu_27421_p2() {
    xor_ln234_fu_27421_p2 = (icmp_ln237_reg_30056.read() ^ ap_const_lv1_1);
}

void CCL::thread_y_fu_27404_p2() {
    y_fu_27404_p2 = (!y_0_i_reg_17738.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<32>(): (sc_biguint<32>(y_0_i_reg_17738.read()) + sc_biguint<32>(ap_const_lv32_1));
}

void CCL::thread_zext_ln114_fu_18319_p1() {
    zext_ln114_fu_18319_p1 = esl_zext<32,18>(ap_phi_mux_p_Val2_ph_phi_fu_17419_p4.read());
}

void CCL::thread_zext_ln120_fu_18353_p1() {
    zext_ln120_fu_18353_p1 = esl_zext<64,9>(i_0_i_reg_17427.read());
}

void CCL::thread_zext_ln123_fu_18343_p1() {
    zext_ln123_fu_18343_p1 = esl_zext<64,9>(add_ln123_fu_18337_p2.read());
}

void CCL::thread_zext_ln127_fu_18348_p1() {
    zext_ln127_fu_18348_p1 = esl_zext<64,9>(i_0_i_reg_17427.read());
}

void CCL::thread_zext_ln136_fu_18538_p1() {
    zext_ln136_fu_18538_p1 = esl_zext<10,9>(select_ln171_reg_27582.read());
}

void CCL::thread_zext_ln148_1_fu_18721_p1() {
    zext_ln148_1_fu_18721_p1 = esl_zext<64,16>(above_fu_18683_p3.read());
}

void CCL::thread_zext_ln148_fu_18906_p1() {
    zext_ln148_fu_18906_p1 = esl_zext<64,16>(previous_reg_27627.read());
}

void CCL::thread_zext_ln1499_1_fu_19273_p1() {
    zext_ln1499_1_fu_19273_p1 = esl_zext<18,9>(select_ln193_fu_19231_p3.read());
}

void CCL::thread_zext_ln1499_fu_19263_p1() {
    zext_ln1499_fu_19263_p1 = esl_zext<18,14>(tmp_31_fu_19255_p3.read());
}

void CCL::thread_zext_ln153_1_fu_18716_p1() {
    zext_ln153_1_fu_18716_p1 = esl_zext<64,16>(previous_fu_18648_p3.read());
}

void CCL::thread_zext_ln153_fu_18902_p1() {
    zext_ln153_fu_18902_p1 = esl_zext<64,16>(above_reg_27632.read());
}

void CCL::thread_zext_ln176_1_fu_27492_p1() {
    zext_ln176_1_fu_27492_p1 = esl_zext<18,9>(select_ln301_fu_27450_p3.read());
}

void CCL::thread_zext_ln176_fu_27482_p1() {
    zext_ln176_fu_27482_p1 = esl_zext<18,14>(tmp_35_fu_27474_p3.read());
}

void CCL::thread_zext_ln187_1_fu_19108_p1() {
    zext_ln187_1_fu_19108_p1 = esl_zext<64,13>(or_ln184_fu_19102_p2.read());
}

void CCL::thread_zext_ln187_2_fu_19125_p1() {
    zext_ln187_2_fu_19125_p1 = esl_zext<64,13>(add_ln184_fu_19119_p2.read());
}

void CCL::thread_zext_ln187_3_fu_19136_p1() {
    zext_ln187_3_fu_19136_p1 = esl_zext<64,13>(add_ln184_1_fu_19130_p2.read());
}

void CCL::thread_zext_ln187_4_fu_19147_p1() {
    zext_ln187_4_fu_19147_p1 = esl_zext<64,13>(add_ln184_2_fu_19141_p2.read());
}

void CCL::thread_zext_ln187_5_fu_19158_p1() {
    zext_ln187_5_fu_19158_p1 = esl_zext<64,13>(add_ln184_3_fu_19152_p2.read());
}

void CCL::thread_zext_ln187_6_fu_19169_p1() {
    zext_ln187_6_fu_19169_p1 = esl_zext<64,13>(add_ln184_4_fu_19163_p2.read());
}

void CCL::thread_zext_ln187_7_fu_19180_p1() {
    zext_ln187_7_fu_19180_p1 = esl_zext<64,13>(add_ln184_5_fu_19174_p2.read());
}

void CCL::thread_zext_ln187_8_fu_19191_p1() {
    zext_ln187_8_fu_19191_p1 = esl_zext<64,13>(add_ln184_6_fu_19185_p2.read());
}

void CCL::thread_zext_ln187_9_fu_19202_p1() {
    zext_ln187_9_fu_19202_p1 = esl_zext<64,13>(add_ln184_7_fu_19196_p2.read());
}

void CCL::thread_zext_ln187_fu_19097_p1() {
    zext_ln187_fu_19097_p1 = esl_zext<64,13>(i_3_0_i_reg_17514.read());
}

void CCL::thread_zext_ln203_2_fu_18596_p1() {
    zext_ln203_2_fu_18596_p1 = esl_zext<64,18>(add_ln203_fu_18590_p2.read());
}

void CCL::thread_zext_ln203_3_fu_18582_p1() {
    zext_ln203_3_fu_18582_p1 = esl_zext<64,18>(add_ln203_3_fu_18576_p2.read());
}

void CCL::thread_zext_ln203_fu_18587_p1() {
    zext_ln203_fu_18587_p1 = esl_zext<18,9>(select_ln171_reg_27582.read());
}

void CCL::thread_zext_ln210_fu_19511_p1() {
    zext_ln210_fu_19511_p1 = esl_zext<64,9>(select_ln210_reg_28971_pp4_iter1_reg.read());
}

void CCL::thread_zext_ln235_fu_23299_p1() {
    zext_ln235_fu_23299_p1 = esl_zext<64,32>(sext_ln234_fu_23295_p1.read());
}

void CCL::thread_zext_ln249_1_fu_23676_p1() {
    zext_ln249_1_fu_23676_p1 = esl_zext<17,16>(select_ln237_reg_30061.read());
}

void CCL::thread_zext_ln249_2_fu_23685_p1() {
    zext_ln249_2_fu_23685_p1 = esl_zext<32,17>(add_ln249_fu_23679_p2.read());
}

void CCL::thread_zext_ln256_fu_23323_p1() {
    zext_ln256_fu_23323_p1 = esl_zext<64,16>(select_ln237_fu_23315_p3.read());
}

void CCL::thread_zext_ln559_fu_19477_p1() {
    zext_ln559_fu_19477_p1 = esl_zext<64,16>(grp_fu_18271_p4.read());
}

void CCL::thread_zext_ln835_1_fu_18528_p1() {
    zext_ln835_1_fu_18528_p1 = esl_zext<18,14>(tmp_62_fu_18521_p3.read());
}

void CCL::thread_zext_ln835_2_fu_18557_p1() {
    zext_ln835_2_fu_18557_p1 = esl_zext<64,18>(add_ln835_fu_18551_p2.read());
}

void CCL::thread_zext_ln835_3_fu_18562_p1() {
    zext_ln835_3_fu_18562_p1 = esl_zext<18,9>(select_ln171_reg_27582.read());
}

void CCL::thread_zext_ln835_4_fu_18571_p1() {
    zext_ln835_4_fu_18571_p1 = esl_zext<64,18>(add_ln835_1_fu_18565_p2.read());
}

void CCL::thread_zext_ln835_5_fu_18966_p1() {
    zext_ln835_5_fu_18966_p1 = esl_zext<18,14>(tmp_27_fu_18958_p3.read());
}

void CCL::thread_zext_ln835_6_fu_18976_p1() {
    zext_ln835_6_fu_18976_p1 = esl_zext<18,9>(select_ln179_fu_18934_p3.read());
}

void CCL::thread_zext_ln835_7_fu_19437_p1() {
    zext_ln835_7_fu_19437_p1 = esl_zext<18,14>(tmp_33_fu_19429_p3.read());
}

void CCL::thread_zext_ln835_8_fu_19447_p1() {
    zext_ln835_8_fu_19447_p1 = esl_zext<18,9>(select_ln210_fu_19405_p3.read());
}

void CCL::thread_zext_ln835_fu_18504_p1() {
    zext_ln835_fu_18504_p1 = esl_zext<18,14>(tmp_61_fu_18497_p3.read());
}

}


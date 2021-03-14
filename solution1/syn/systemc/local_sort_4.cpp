#include "local_sort.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void local_sort::thread_select_ln343_95_fu_8711_p3() {
    select_ln343_95_fu_8711_p3 = (!icmp_ln1494_147_fu_8697_p2.read()[0].is_01())? sc_lv<32>(): ((icmp_ln1494_147_fu_8697_p2.read()[0].to_bool())? select_ln330_95_fu_6511_p3.read(): select_ln330_96_fu_6525_p3.read());
}

void local_sort::thread_select_ln343_96_fu_8725_p3() {
    select_ln343_96_fu_8725_p3 = (!icmp_ln1494_148_fu_8719_p2.read()[0].is_01())? sc_lv<32>(): ((icmp_ln1494_148_fu_8719_p2.read()[0].to_bool())? select_ln330_98_fu_6547_p3.read(): select_ln330_97_fu_6533_p3.read());
}

void local_sort::thread_select_ln343_97_fu_8733_p3() {
    select_ln343_97_fu_8733_p3 = (!icmp_ln1494_148_fu_8719_p2.read()[0].is_01())? sc_lv<32>(): ((icmp_ln1494_148_fu_8719_p2.read()[0].to_bool())? select_ln330_97_fu_6533_p3.read(): select_ln330_98_fu_6547_p3.read());
}

void local_sort::thread_select_ln343_98_fu_8747_p3() {
    select_ln343_98_fu_8747_p3 = (!icmp_ln1494_149_fu_8741_p2.read()[0].is_01())? sc_lv<32>(): ((icmp_ln1494_149_fu_8741_p2.read()[0].to_bool())? select_ln330_100_fu_6569_p3.read(): select_ln330_99_fu_6555_p3.read());
}

void local_sort::thread_select_ln343_99_fu_8755_p3() {
    select_ln343_99_fu_8755_p3 = (!icmp_ln1494_149_fu_8741_p2.read()[0].is_01())? sc_lv<32>(): ((icmp_ln1494_149_fu_8741_p2.read()[0].to_bool())? select_ln330_99_fu_6555_p3.read(): select_ln330_100_fu_6569_p3.read());
}

void local_sort::thread_select_ln343_9_fu_7765_p3() {
    select_ln343_9_fu_7765_p3 = (!icmp_ln1494_104_fu_7751_p2.read()[0].is_01())? sc_lv<32>(): ((icmp_ln1494_104_fu_7751_p2.read()[0].to_bool())? select_ln330_9_fu_5565_p3.read(): select_ln330_10_fu_5579_p3.read());
}

void local_sort::thread_select_ln343_fu_7669_p3() {
    select_ln343_fu_7669_p3 = (!icmp_ln1494_100_fu_7663_p2.read()[0].is_01())? sc_lv<32>(): ((icmp_ln1494_100_fu_7663_p2.read()[0].to_bool())? select_ln330_2_fu_5491_p3.read(): select_ln330_1_fu_5477_p3.read());
}

void local_sort::thread_tmp_2_fu_13656_p201() {
    tmp_2_fu_13656_p201 = prev_1_fu_2434.read().range(8-1, 0);
}

void local_sort::thread_trunc_ln1499_fu_13652_p1() {
    trunc_ln1499_fu_13652_p1 = prev_1_fu_2434.read().range(8-1, 0);
}

void local_sort::thread_v_fu_12640_p2() {
    v_fu_12640_p2 = (!v_0_reg_5438.read().is_01() || !ap_const_lv8_1.is_01())? sc_lv<8>(): (sc_biguint<8>(v_0_reg_5438.read()) + sc_biguint<8>(ap_const_lv8_1));
}

}


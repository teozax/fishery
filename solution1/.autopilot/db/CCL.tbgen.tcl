set moduleName CCL
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {CCL}
set C_modelType { void 0 }
set C_modelArgList {
	{ Luminance_img_V_V int 32 regular {fifo 0 volatile } {global 0}  }
	{ LI_V_V int 32 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Luminance_img_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "LI_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ Luminance_img_V_V_dout sc_in sc_lv 32 signal 0 } 
	{ Luminance_img_V_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ Luminance_img_V_V_read sc_out sc_logic 1 signal 0 } 
	{ LI_V_V_din sc_out sc_lv 32 signal 1 } 
	{ LI_V_V_full_n sc_in sc_logic 1 signal 1 } 
	{ LI_V_V_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "Luminance_img_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Luminance_img_V_V", "role": "dout" }} , 
 	{ "name": "Luminance_img_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Luminance_img_V_V", "role": "empty_n" }} , 
 	{ "name": "Luminance_img_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Luminance_img_V_V", "role": "read" }} , 
 	{ "name": "LI_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "LI_V_V", "role": "din" }} , 
 	{ "name": "LI_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LI_V_V", "role": "full_n" }} , 
 	{ "name": "LI_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LI_V_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262", "263", "264", "265", "266", "267", "268", "269", "270", "271", "272", "273", "274", "289", "292", "293", "294", "295", "296", "297", "298", "299", "300"],
		"CDFG" : "CCL",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1190653", "EstimateLatencyMax" : "1421692",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state42", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_windows_fu_17781"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_local_sort_fu_18061"}],
		"Port" : [
			{"Name" : "Luminance_img_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "Luminance_img_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "LI_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "LI_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.labels_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.results_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_0_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_1_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_2_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_3_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_4_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_5_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_6_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_7_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_8_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_9_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_10_V_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_11_V_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_12_V_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_13_V_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_14_V_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_15_V_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_16_V_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_17_V_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_18_V_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_19_V_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_20_V_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_21_V_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_22_V_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_23_V_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_24_V_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_25_V_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_26_V_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_27_V_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_28_V_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_29_V_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_30_V_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_31_V_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_32_V_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_33_V_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_34_V_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_35_V_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_36_V_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_37_V_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_38_V_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_39_V_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_40_V_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_41_V_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_42_V_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_43_V_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_44_V_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_45_V_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_46_V_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_47_V_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_48_V_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_49_V_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_50_V_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_51_V_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_52_V_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_53_V_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_54_V_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_55_V_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_56_V_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_57_V_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_58_V_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_59_V_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_60_V_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_61_V_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_62_V_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_63_V_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_64_V_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_65_V_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_66_V_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_67_V_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_68_V_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_69_V_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_70_V_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_71_V_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_72_V_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_73_V_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_74_V_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_75_V_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_76_V_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_77_V_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_78_V_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_79_V_U", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_80_V_U", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_81_V_U", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_82_V_U", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_83_V_U", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_84_V_U", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_85_V_U", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_86_V_U", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_87_V_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_88_V_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_89_V_U", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_90_V_U", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_91_V_U", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_92_V_U", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_93_V_U", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_94_V_U", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_95_V_U", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_96_V_U", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_97_V_U", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_98_V_U", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_99_V_U", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_100_V_U", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_101_V_U", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_102_V_U", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_103_V_U", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_104_V_U", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_105_V_U", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_106_V_U", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_107_V_U", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_108_V_U", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_109_V_U", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_110_V_U", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_111_V_U", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_112_V_U", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_113_V_U", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_114_V_U", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_115_V_U", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_116_V_U", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_117_V_U", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_118_V_U", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_119_V_U", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_120_V_U", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_121_V_U", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_122_V_U", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_123_V_U", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_124_V_U", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_125_V_U", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_126_V_U", "Parent" : "0"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_127_V_U", "Parent" : "0"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_128_V_U", "Parent" : "0"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_129_V_U", "Parent" : "0"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_130_V_U", "Parent" : "0"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_131_V_U", "Parent" : "0"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_132_V_U", "Parent" : "0"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_133_V_U", "Parent" : "0"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_134_V_U", "Parent" : "0"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_135_V_U", "Parent" : "0"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_136_V_U", "Parent" : "0"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_137_V_U", "Parent" : "0"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_138_V_U", "Parent" : "0"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_139_V_U", "Parent" : "0"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_140_V_U", "Parent" : "0"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_141_V_U", "Parent" : "0"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_142_V_U", "Parent" : "0"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_143_V_U", "Parent" : "0"},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_144_V_U", "Parent" : "0"},
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_145_V_U", "Parent" : "0"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_146_V_U", "Parent" : "0"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_147_V_U", "Parent" : "0"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_148_V_U", "Parent" : "0"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_149_V_U", "Parent" : "0"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_150_V_U", "Parent" : "0"},
	{"ID" : "154", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_151_V_U", "Parent" : "0"},
	{"ID" : "155", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_152_V_U", "Parent" : "0"},
	{"ID" : "156", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_153_V_U", "Parent" : "0"},
	{"ID" : "157", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_154_V_U", "Parent" : "0"},
	{"ID" : "158", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_155_V_U", "Parent" : "0"},
	{"ID" : "159", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_156_V_U", "Parent" : "0"},
	{"ID" : "160", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_157_V_U", "Parent" : "0"},
	{"ID" : "161", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_158_V_U", "Parent" : "0"},
	{"ID" : "162", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_159_V_U", "Parent" : "0"},
	{"ID" : "163", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_160_V_U", "Parent" : "0"},
	{"ID" : "164", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_161_V_U", "Parent" : "0"},
	{"ID" : "165", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_162_V_U", "Parent" : "0"},
	{"ID" : "166", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_163_V_U", "Parent" : "0"},
	{"ID" : "167", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_164_V_U", "Parent" : "0"},
	{"ID" : "168", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_165_V_U", "Parent" : "0"},
	{"ID" : "169", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_166_V_U", "Parent" : "0"},
	{"ID" : "170", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_167_V_U", "Parent" : "0"},
	{"ID" : "171", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_168_V_U", "Parent" : "0"},
	{"ID" : "172", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_169_V_U", "Parent" : "0"},
	{"ID" : "173", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_170_V_U", "Parent" : "0"},
	{"ID" : "174", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_171_V_U", "Parent" : "0"},
	{"ID" : "175", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_172_V_U", "Parent" : "0"},
	{"ID" : "176", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_173_V_U", "Parent" : "0"},
	{"ID" : "177", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_174_V_U", "Parent" : "0"},
	{"ID" : "178", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_175_V_U", "Parent" : "0"},
	{"ID" : "179", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_176_V_U", "Parent" : "0"},
	{"ID" : "180", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_177_V_U", "Parent" : "0"},
	{"ID" : "181", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_178_V_U", "Parent" : "0"},
	{"ID" : "182", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_179_V_U", "Parent" : "0"},
	{"ID" : "183", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_180_V_U", "Parent" : "0"},
	{"ID" : "184", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_181_V_U", "Parent" : "0"},
	{"ID" : "185", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_182_V_U", "Parent" : "0"},
	{"ID" : "186", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_183_V_U", "Parent" : "0"},
	{"ID" : "187", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_184_V_U", "Parent" : "0"},
	{"ID" : "188", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_185_V_U", "Parent" : "0"},
	{"ID" : "189", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_186_V_U", "Parent" : "0"},
	{"ID" : "190", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_187_V_U", "Parent" : "0"},
	{"ID" : "191", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_188_V_U", "Parent" : "0"},
	{"ID" : "192", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_189_V_U", "Parent" : "0"},
	{"ID" : "193", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_190_V_U", "Parent" : "0"},
	{"ID" : "194", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_191_V_U", "Parent" : "0"},
	{"ID" : "195", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_192_V_U", "Parent" : "0"},
	{"ID" : "196", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_193_V_U", "Parent" : "0"},
	{"ID" : "197", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_194_V_U", "Parent" : "0"},
	{"ID" : "198", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_195_V_U", "Parent" : "0"},
	{"ID" : "199", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_196_V_U", "Parent" : "0"},
	{"ID" : "200", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_197_V_U", "Parent" : "0"},
	{"ID" : "201", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_198_V_U", "Parent" : "0"},
	{"ID" : "202", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_199_V_U", "Parent" : "0"},
	{"ID" : "203", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_200_V_U", "Parent" : "0"},
	{"ID" : "204", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_201_V_U", "Parent" : "0"},
	{"ID" : "205", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_202_V_U", "Parent" : "0"},
	{"ID" : "206", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_203_V_U", "Parent" : "0"},
	{"ID" : "207", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_204_V_U", "Parent" : "0"},
	{"ID" : "208", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_205_V_U", "Parent" : "0"},
	{"ID" : "209", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_206_V_U", "Parent" : "0"},
	{"ID" : "210", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_207_V_U", "Parent" : "0"},
	{"ID" : "211", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_208_V_U", "Parent" : "0"},
	{"ID" : "212", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_209_V_U", "Parent" : "0"},
	{"ID" : "213", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_210_V_U", "Parent" : "0"},
	{"ID" : "214", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_211_V_U", "Parent" : "0"},
	{"ID" : "215", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_212_V_U", "Parent" : "0"},
	{"ID" : "216", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_213_V_U", "Parent" : "0"},
	{"ID" : "217", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_214_V_U", "Parent" : "0"},
	{"ID" : "218", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_215_V_U", "Parent" : "0"},
	{"ID" : "219", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_216_V_U", "Parent" : "0"},
	{"ID" : "220", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_217_V_U", "Parent" : "0"},
	{"ID" : "221", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_218_V_U", "Parent" : "0"},
	{"ID" : "222", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_219_V_U", "Parent" : "0"},
	{"ID" : "223", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_220_V_U", "Parent" : "0"},
	{"ID" : "224", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_221_V_U", "Parent" : "0"},
	{"ID" : "225", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_222_V_U", "Parent" : "0"},
	{"ID" : "226", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_223_V_U", "Parent" : "0"},
	{"ID" : "227", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_224_V_U", "Parent" : "0"},
	{"ID" : "228", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_225_V_U", "Parent" : "0"},
	{"ID" : "229", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_226_V_U", "Parent" : "0"},
	{"ID" : "230", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_227_V_U", "Parent" : "0"},
	{"ID" : "231", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_228_V_U", "Parent" : "0"},
	{"ID" : "232", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_229_V_U", "Parent" : "0"},
	{"ID" : "233", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_230_V_U", "Parent" : "0"},
	{"ID" : "234", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_231_V_U", "Parent" : "0"},
	{"ID" : "235", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_232_V_U", "Parent" : "0"},
	{"ID" : "236", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_233_V_U", "Parent" : "0"},
	{"ID" : "237", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_234_V_U", "Parent" : "0"},
	{"ID" : "238", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_235_V_U", "Parent" : "0"},
	{"ID" : "239", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_236_V_U", "Parent" : "0"},
	{"ID" : "240", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_237_V_U", "Parent" : "0"},
	{"ID" : "241", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_238_V_U", "Parent" : "0"},
	{"ID" : "242", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_239_V_U", "Parent" : "0"},
	{"ID" : "243", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_240_V_U", "Parent" : "0"},
	{"ID" : "244", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_241_V_U", "Parent" : "0"},
	{"ID" : "245", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_242_V_U", "Parent" : "0"},
	{"ID" : "246", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_243_V_U", "Parent" : "0"},
	{"ID" : "247", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_244_V_U", "Parent" : "0"},
	{"ID" : "248", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_245_V_U", "Parent" : "0"},
	{"ID" : "249", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_246_V_U", "Parent" : "0"},
	{"ID" : "250", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_247_V_U", "Parent" : "0"},
	{"ID" : "251", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_248_V_U", "Parent" : "0"},
	{"ID" : "252", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_249_V_U", "Parent" : "0"},
	{"ID" : "253", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_250_V_U", "Parent" : "0"},
	{"ID" : "254", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_251_V_U", "Parent" : "0"},
	{"ID" : "255", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_252_V_U", "Parent" : "0"},
	{"ID" : "256", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_253_V_U", "Parent" : "0"},
	{"ID" : "257", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_254_V_U", "Parent" : "0"},
	{"ID" : "258", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_255_V_U", "Parent" : "0"},
	{"ID" : "259", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_256_V_U", "Parent" : "0"},
	{"ID" : "260", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_257_V_U", "Parent" : "0"},
	{"ID" : "261", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_258_V_U", "Parent" : "0"},
	{"ID" : "262", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_259_V_U", "Parent" : "0"},
	{"ID" : "263", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_260_V_U", "Parent" : "0"},
	{"ID" : "264", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_261_V_U", "Parent" : "0"},
	{"ID" : "265", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_262_V_U", "Parent" : "0"},
	{"ID" : "266", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_263_V_U", "Parent" : "0"},
	{"ID" : "267", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_264_V_U", "Parent" : "0"},
	{"ID" : "268", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_265_V_U", "Parent" : "0"},
	{"ID" : "269", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_266_V_U", "Parent" : "0"},
	{"ID" : "270", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_267_V_U", "Parent" : "0"},
	{"ID" : "271", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_268_V_U", "Parent" : "0"},
	{"ID" : "272", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SI_269_V_U", "Parent" : "0"},
	{"ID" : "273", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sizes_V_U", "Parent" : "0"},
	{"ID" : "274", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_windows_fu_17781", "Parent" : "0", "Child" : ["275", "278", "279", "280", "281", "282", "283", "284", "285", "286", "287", "288"],
		"CDFG" : "windows",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "412", "EstimateLatencyMax" : "3650",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_local_sort_fu_5557"}],
		"Port" : [
			{"Name" : "window_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "window_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "global_median_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"},
			{"Name" : "SI_0_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_1_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_2_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_3_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_4_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_5_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_6_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_7_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_8_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_9_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_10_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_11_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_12_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_13_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_14_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_15_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_16_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_17_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_18_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_19_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_20_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_21_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_22_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_23_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_24_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_25_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_26_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_27_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_28_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_29_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_30_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_31_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_32_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_33_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_34_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_35_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_36_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_37_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_38_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_39_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_40_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_41_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_42_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_43_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_44_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_45_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_46_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_47_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_48_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_49_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_50_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_51_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_52_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_53_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_54_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_55_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_56_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_57_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_58_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_59_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_60_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_61_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_62_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_63_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_64_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_65_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_66_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_67_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_68_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_69_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_70_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_71_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_72_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_73_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_74_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_75_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_76_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_77_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_78_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_79_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_80_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_81_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_82_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_83_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_84_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_85_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_86_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_87_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_88_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_89_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_90_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_91_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_92_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_93_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_94_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_95_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_96_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_97_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_98_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_99_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_100_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_101_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_102_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_103_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_104_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_105_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_106_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_107_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_108_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_109_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_110_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_111_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_112_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_113_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_114_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_115_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_116_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_117_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_118_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_119_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_120_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_121_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_122_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_123_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_124_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_125_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_126_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_127_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_128_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_129_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_130_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_131_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_132_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_133_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_134_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_135_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_136_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_137_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_138_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_139_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_140_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_141_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_142_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_143_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_144_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_145_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_146_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_147_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_148_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_149_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_150_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_151_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_152_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_153_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_154_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_155_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_156_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_157_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_158_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_159_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_160_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_161_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_162_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_163_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_164_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_165_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_166_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_167_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_168_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_169_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_170_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_171_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_172_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_173_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_174_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_175_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_176_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_177_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_178_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_179_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_180_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_181_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_182_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_183_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_184_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_185_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_186_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_187_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_188_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_189_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_190_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_191_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_192_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_193_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_194_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_195_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_196_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_197_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_198_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_199_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_200_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_201_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_202_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_203_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_204_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_205_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_206_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_207_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_208_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_209_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_210_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_211_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_212_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_213_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_214_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_215_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_216_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_217_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_218_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_219_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_220_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_221_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_222_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_223_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_224_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_225_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_226_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_227_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_228_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_229_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_230_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_231_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_232_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_233_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_234_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_235_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_236_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_237_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_238_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_239_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_240_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_241_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_242_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_243_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_244_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_245_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_246_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_247_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_248_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_249_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_250_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_251_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_252_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_253_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_254_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_255_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_256_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_257_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_258_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_259_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_260_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_261_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_262_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_263_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_264_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_265_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_266_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_267_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_268_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "SI_269_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sizes_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "holes_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "275", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_windows_fu_17781.grp_local_sort_fu_5557", "Parent" : "274", "Child" : ["276", "277"],
		"CDFG" : "local_sort",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "204", "EstimateLatencyMax" : "303",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "work_array_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_2_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_3_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_4_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_5_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_6_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_7_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_8_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_9_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_10_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_11_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_12_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_13_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_14_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_15_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_16_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_17_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_18_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_19_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_20_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_21_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_22_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_23_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_24_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_25_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_26_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_27_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_28_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_29_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_30_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_31_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_32_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_33_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_34_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_35_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_36_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_37_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_38_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_39_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_40_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_41_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_42_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_43_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_44_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_45_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_46_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_47_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_48_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_49_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_50_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_51_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_52_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_53_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_54_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_55_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_56_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_57_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_58_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_59_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_60_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_61_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_62_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_63_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_64_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_65_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_66_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_67_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_68_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_69_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_70_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_71_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_72_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_73_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_74_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_75_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_76_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_77_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_78_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_79_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_80_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_81_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_82_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_83_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_84_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_85_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_86_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_87_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_88_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_89_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_90_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_91_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_92_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_93_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_94_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_95_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_96_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_97_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_98_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_99_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_100_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_101_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_102_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_103_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_104_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_105_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_106_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_107_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_108_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_109_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_110_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_111_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_112_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_113_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_114_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_115_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_116_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_117_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_118_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_119_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_120_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_121_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_122_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_123_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_124_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_125_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_126_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_127_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_128_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_129_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_130_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_131_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_132_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_133_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_134_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_135_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_136_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_137_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_138_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_139_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_140_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_141_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_142_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_143_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_144_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_145_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_146_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_147_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_148_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_149_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_150_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_151_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_152_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_153_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_154_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_155_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_156_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_157_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_158_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_159_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_160_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_161_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_162_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_163_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_164_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_165_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_166_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_167_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_168_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_169_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_170_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_171_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_172_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_173_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_174_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_175_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_176_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_177_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_178_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_179_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_180_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_181_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_182_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_183_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_184_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_185_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_186_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_187_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_188_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_189_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_190_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_191_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_192_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_193_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_194_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_195_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_196_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_197_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_198_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_199_V_re", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "276", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_windows_fu_17781.grp_local_sort_fu_5557.net_holes_detectidqG_U169", "Parent" : "275"},
	{"ID" : "277", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_windows_fu_17781.grp_local_sort_fu_5557.net_holes_detectidqG_U170", "Parent" : "275"},
	{"ID" : "278", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_windows_fu_17781.net_holes_detectidqG_U372", "Parent" : "274"},
	{"ID" : "279", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_windows_fu_17781.net_holes_detectidqG_U373", "Parent" : "274"},
	{"ID" : "280", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_windows_fu_17781.net_holes_detectidqG_U374", "Parent" : "274"},
	{"ID" : "281", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_windows_fu_17781.net_holes_detectidqG_U375", "Parent" : "274"},
	{"ID" : "282", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_windows_fu_17781.net_holes_detectidqG_U376", "Parent" : "274"},
	{"ID" : "283", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_windows_fu_17781.net_holes_detectidqG_U377", "Parent" : "274"},
	{"ID" : "284", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_windows_fu_17781.net_holes_detectidrG_U378", "Parent" : "274"},
	{"ID" : "285", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_windows_fu_17781.net_holes_detectidsG_U379", "Parent" : "274"},
	{"ID" : "286", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_windows_fu_17781.net_holes_detectidrG_U380", "Parent" : "274"},
	{"ID" : "287", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_windows_fu_17781.net_holes_detectidtH_U381", "Parent" : "274"},
	{"ID" : "288", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_windows_fu_17781.net_holes_detectidtH_U382", "Parent" : "274"},
	{"ID" : "289", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_local_sort_fu_18061", "Parent" : "0", "Child" : ["290", "291"],
		"CDFG" : "local_sort",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "204", "EstimateLatencyMax" : "303",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "work_array_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_2_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_3_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_4_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_5_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_6_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_7_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_8_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_9_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_10_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_11_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_12_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_13_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_14_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_15_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_16_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_17_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_18_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_19_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_20_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_21_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_22_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_23_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_24_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_25_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_26_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_27_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_28_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_29_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_30_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_31_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_32_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_33_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_34_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_35_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_36_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_37_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_38_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_39_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_40_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_41_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_42_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_43_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_44_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_45_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_46_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_47_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_48_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_49_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_50_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_51_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_52_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_53_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_54_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_55_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_56_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_57_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_58_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_59_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_60_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_61_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_62_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_63_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_64_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_65_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_66_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_67_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_68_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_69_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_70_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_71_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_72_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_73_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_74_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_75_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_76_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_77_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_78_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_79_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_80_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_81_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_82_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_83_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_84_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_85_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_86_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_87_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_88_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_89_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_90_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_91_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_92_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_93_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_94_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_95_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_96_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_97_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_98_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_99_V_rea", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_100_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_101_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_102_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_103_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_104_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_105_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_106_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_107_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_108_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_109_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_110_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_111_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_112_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_113_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_114_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_115_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_116_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_117_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_118_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_119_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_120_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_121_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_122_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_123_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_124_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_125_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_126_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_127_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_128_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_129_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_130_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_131_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_132_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_133_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_134_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_135_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_136_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_137_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_138_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_139_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_140_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_141_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_142_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_143_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_144_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_145_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_146_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_147_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_148_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_149_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_150_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_151_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_152_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_153_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_154_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_155_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_156_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_157_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_158_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_159_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_160_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_161_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_162_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_163_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_164_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_165_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_166_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_167_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_168_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_169_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_170_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_171_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_172_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_173_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_174_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_175_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_176_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_177_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_178_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_179_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_180_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_181_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_182_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_183_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_184_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_185_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_186_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_187_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_188_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_189_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_190_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_191_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_192_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_193_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_194_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_195_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_196_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_197_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_198_V_re", "Type" : "None", "Direction" : "I"},
			{"Name" : "work_array_199_V_re", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "290", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_local_sort_fu_18061.net_holes_detectidqG_U169", "Parent" : "289"},
	{"ID" : "291", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_local_sort_fu_18061.net_holes_detectidqG_U170", "Parent" : "289"},
	{"ID" : "292", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.net_holes_detectidqG_U662", "Parent" : "0"},
	{"ID" : "293", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.net_holes_detectidsG_U663", "Parent" : "0"},
	{"ID" : "294", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.net_holes_detectidsG_U664", "Parent" : "0"},
	{"ID" : "295", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.net_holes_detectidsG_U665", "Parent" : "0"},
	{"ID" : "296", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.net_holes_detectidsG_U666", "Parent" : "0"},
	{"ID" : "297", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.net_holes_detectidsG_U667", "Parent" : "0"},
	{"ID" : "298", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.net_holes_detectidsG_U668", "Parent" : "0"},
	{"ID" : "299", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.net_holes_detectidsG_U669", "Parent" : "0"},
	{"ID" : "300", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ws_V_V_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	CCL {
		Luminance_img_V_V {Type I LastRead 4 FirstWrite -1}
		LI_V_V {Type O LastRead -1 FirstWrite 15}}
	windows {
		window_V_V {Type I LastRead 2 FirstWrite -1}
		global_median_V {Type I LastRead 0 FirstWrite -1}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}
		SI_0_V {Type I LastRead 8 FirstWrite -1}
		SI_1_V {Type I LastRead 8 FirstWrite -1}
		SI_2_V {Type I LastRead 8 FirstWrite -1}
		SI_3_V {Type I LastRead 8 FirstWrite -1}
		SI_4_V {Type I LastRead 8 FirstWrite -1}
		SI_5_V {Type I LastRead 8 FirstWrite -1}
		SI_6_V {Type I LastRead 8 FirstWrite -1}
		SI_7_V {Type I LastRead 8 FirstWrite -1}
		SI_8_V {Type I LastRead 8 FirstWrite -1}
		SI_9_V {Type I LastRead 8 FirstWrite -1}
		SI_10_V {Type I LastRead 8 FirstWrite -1}
		SI_11_V {Type I LastRead 8 FirstWrite -1}
		SI_12_V {Type I LastRead 8 FirstWrite -1}
		SI_13_V {Type I LastRead 8 FirstWrite -1}
		SI_14_V {Type I LastRead 8 FirstWrite -1}
		SI_15_V {Type I LastRead 8 FirstWrite -1}
		SI_16_V {Type I LastRead 8 FirstWrite -1}
		SI_17_V {Type I LastRead 8 FirstWrite -1}
		SI_18_V {Type I LastRead 8 FirstWrite -1}
		SI_19_V {Type I LastRead 8 FirstWrite -1}
		SI_20_V {Type I LastRead 8 FirstWrite -1}
		SI_21_V {Type I LastRead 8 FirstWrite -1}
		SI_22_V {Type I LastRead 8 FirstWrite -1}
		SI_23_V {Type I LastRead 8 FirstWrite -1}
		SI_24_V {Type I LastRead 8 FirstWrite -1}
		SI_25_V {Type I LastRead 8 FirstWrite -1}
		SI_26_V {Type I LastRead 8 FirstWrite -1}
		SI_27_V {Type I LastRead 8 FirstWrite -1}
		SI_28_V {Type I LastRead 8 FirstWrite -1}
		SI_29_V {Type I LastRead 8 FirstWrite -1}
		SI_30_V {Type I LastRead 8 FirstWrite -1}
		SI_31_V {Type I LastRead 8 FirstWrite -1}
		SI_32_V {Type I LastRead 8 FirstWrite -1}
		SI_33_V {Type I LastRead 8 FirstWrite -1}
		SI_34_V {Type I LastRead 8 FirstWrite -1}
		SI_35_V {Type I LastRead 8 FirstWrite -1}
		SI_36_V {Type I LastRead 8 FirstWrite -1}
		SI_37_V {Type I LastRead 8 FirstWrite -1}
		SI_38_V {Type I LastRead 8 FirstWrite -1}
		SI_39_V {Type I LastRead 8 FirstWrite -1}
		SI_40_V {Type I LastRead 8 FirstWrite -1}
		SI_41_V {Type I LastRead 8 FirstWrite -1}
		SI_42_V {Type I LastRead 8 FirstWrite -1}
		SI_43_V {Type I LastRead 8 FirstWrite -1}
		SI_44_V {Type I LastRead 8 FirstWrite -1}
		SI_45_V {Type I LastRead 8 FirstWrite -1}
		SI_46_V {Type I LastRead 8 FirstWrite -1}
		SI_47_V {Type I LastRead 8 FirstWrite -1}
		SI_48_V {Type I LastRead 8 FirstWrite -1}
		SI_49_V {Type I LastRead 8 FirstWrite -1}
		SI_50_V {Type I LastRead 8 FirstWrite -1}
		SI_51_V {Type I LastRead 8 FirstWrite -1}
		SI_52_V {Type I LastRead 8 FirstWrite -1}
		SI_53_V {Type I LastRead 8 FirstWrite -1}
		SI_54_V {Type I LastRead 8 FirstWrite -1}
		SI_55_V {Type I LastRead 8 FirstWrite -1}
		SI_56_V {Type I LastRead 8 FirstWrite -1}
		SI_57_V {Type I LastRead 8 FirstWrite -1}
		SI_58_V {Type I LastRead 8 FirstWrite -1}
		SI_59_V {Type I LastRead 8 FirstWrite -1}
		SI_60_V {Type I LastRead 8 FirstWrite -1}
		SI_61_V {Type I LastRead 8 FirstWrite -1}
		SI_62_V {Type I LastRead 8 FirstWrite -1}
		SI_63_V {Type I LastRead 8 FirstWrite -1}
		SI_64_V {Type I LastRead 8 FirstWrite -1}
		SI_65_V {Type I LastRead 8 FirstWrite -1}
		SI_66_V {Type I LastRead 8 FirstWrite -1}
		SI_67_V {Type I LastRead 8 FirstWrite -1}
		SI_68_V {Type I LastRead 8 FirstWrite -1}
		SI_69_V {Type I LastRead 8 FirstWrite -1}
		SI_70_V {Type I LastRead 8 FirstWrite -1}
		SI_71_V {Type I LastRead 8 FirstWrite -1}
		SI_72_V {Type I LastRead 8 FirstWrite -1}
		SI_73_V {Type I LastRead 8 FirstWrite -1}
		SI_74_V {Type I LastRead 8 FirstWrite -1}
		SI_75_V {Type I LastRead 8 FirstWrite -1}
		SI_76_V {Type I LastRead 8 FirstWrite -1}
		SI_77_V {Type I LastRead 8 FirstWrite -1}
		SI_78_V {Type I LastRead 8 FirstWrite -1}
		SI_79_V {Type I LastRead 8 FirstWrite -1}
		SI_80_V {Type I LastRead 8 FirstWrite -1}
		SI_81_V {Type I LastRead 8 FirstWrite -1}
		SI_82_V {Type I LastRead 8 FirstWrite -1}
		SI_83_V {Type I LastRead 8 FirstWrite -1}
		SI_84_V {Type I LastRead 8 FirstWrite -1}
		SI_85_V {Type I LastRead 8 FirstWrite -1}
		SI_86_V {Type I LastRead 8 FirstWrite -1}
		SI_87_V {Type I LastRead 8 FirstWrite -1}
		SI_88_V {Type I LastRead 8 FirstWrite -1}
		SI_89_V {Type I LastRead 8 FirstWrite -1}
		SI_90_V {Type I LastRead 8 FirstWrite -1}
		SI_91_V {Type I LastRead 8 FirstWrite -1}
		SI_92_V {Type I LastRead 8 FirstWrite -1}
		SI_93_V {Type I LastRead 8 FirstWrite -1}
		SI_94_V {Type I LastRead 8 FirstWrite -1}
		SI_95_V {Type I LastRead 8 FirstWrite -1}
		SI_96_V {Type I LastRead 8 FirstWrite -1}
		SI_97_V {Type I LastRead 8 FirstWrite -1}
		SI_98_V {Type I LastRead 8 FirstWrite -1}
		SI_99_V {Type I LastRead 8 FirstWrite -1}
		SI_100_V {Type I LastRead 8 FirstWrite -1}
		SI_101_V {Type I LastRead 8 FirstWrite -1}
		SI_102_V {Type I LastRead 8 FirstWrite -1}
		SI_103_V {Type I LastRead 8 FirstWrite -1}
		SI_104_V {Type I LastRead 8 FirstWrite -1}
		SI_105_V {Type I LastRead 8 FirstWrite -1}
		SI_106_V {Type I LastRead 8 FirstWrite -1}
		SI_107_V {Type I LastRead 8 FirstWrite -1}
		SI_108_V {Type I LastRead 8 FirstWrite -1}
		SI_109_V {Type I LastRead 8 FirstWrite -1}
		SI_110_V {Type I LastRead 8 FirstWrite -1}
		SI_111_V {Type I LastRead 8 FirstWrite -1}
		SI_112_V {Type I LastRead 8 FirstWrite -1}
		SI_113_V {Type I LastRead 8 FirstWrite -1}
		SI_114_V {Type I LastRead 8 FirstWrite -1}
		SI_115_V {Type I LastRead 8 FirstWrite -1}
		SI_116_V {Type I LastRead 8 FirstWrite -1}
		SI_117_V {Type I LastRead 8 FirstWrite -1}
		SI_118_V {Type I LastRead 8 FirstWrite -1}
		SI_119_V {Type I LastRead 8 FirstWrite -1}
		SI_120_V {Type I LastRead 8 FirstWrite -1}
		SI_121_V {Type I LastRead 8 FirstWrite -1}
		SI_122_V {Type I LastRead 8 FirstWrite -1}
		SI_123_V {Type I LastRead 8 FirstWrite -1}
		SI_124_V {Type I LastRead 8 FirstWrite -1}
		SI_125_V {Type I LastRead 8 FirstWrite -1}
		SI_126_V {Type I LastRead 8 FirstWrite -1}
		SI_127_V {Type I LastRead 8 FirstWrite -1}
		SI_128_V {Type I LastRead 8 FirstWrite -1}
		SI_129_V {Type I LastRead 8 FirstWrite -1}
		SI_130_V {Type I LastRead 8 FirstWrite -1}
		SI_131_V {Type I LastRead 8 FirstWrite -1}
		SI_132_V {Type I LastRead 8 FirstWrite -1}
		SI_133_V {Type I LastRead 8 FirstWrite -1}
		SI_134_V {Type I LastRead 8 FirstWrite -1}
		SI_135_V {Type I LastRead 8 FirstWrite -1}
		SI_136_V {Type I LastRead 8 FirstWrite -1}
		SI_137_V {Type I LastRead 8 FirstWrite -1}
		SI_138_V {Type I LastRead 8 FirstWrite -1}
		SI_139_V {Type I LastRead 8 FirstWrite -1}
		SI_140_V {Type I LastRead 8 FirstWrite -1}
		SI_141_V {Type I LastRead 8 FirstWrite -1}
		SI_142_V {Type I LastRead 8 FirstWrite -1}
		SI_143_V {Type I LastRead 8 FirstWrite -1}
		SI_144_V {Type I LastRead 8 FirstWrite -1}
		SI_145_V {Type I LastRead 8 FirstWrite -1}
		SI_146_V {Type I LastRead 8 FirstWrite -1}
		SI_147_V {Type I LastRead 8 FirstWrite -1}
		SI_148_V {Type I LastRead 8 FirstWrite -1}
		SI_149_V {Type I LastRead 8 FirstWrite -1}
		SI_150_V {Type I LastRead 8 FirstWrite -1}
		SI_151_V {Type I LastRead 8 FirstWrite -1}
		SI_152_V {Type I LastRead 8 FirstWrite -1}
		SI_153_V {Type I LastRead 8 FirstWrite -1}
		SI_154_V {Type I LastRead 8 FirstWrite -1}
		SI_155_V {Type I LastRead 8 FirstWrite -1}
		SI_156_V {Type I LastRead 8 FirstWrite -1}
		SI_157_V {Type I LastRead 8 FirstWrite -1}
		SI_158_V {Type I LastRead 8 FirstWrite -1}
		SI_159_V {Type I LastRead 8 FirstWrite -1}
		SI_160_V {Type I LastRead 8 FirstWrite -1}
		SI_161_V {Type I LastRead 8 FirstWrite -1}
		SI_162_V {Type I LastRead 8 FirstWrite -1}
		SI_163_V {Type I LastRead 8 FirstWrite -1}
		SI_164_V {Type I LastRead 8 FirstWrite -1}
		SI_165_V {Type I LastRead 8 FirstWrite -1}
		SI_166_V {Type I LastRead 8 FirstWrite -1}
		SI_167_V {Type I LastRead 8 FirstWrite -1}
		SI_168_V {Type I LastRead 8 FirstWrite -1}
		SI_169_V {Type I LastRead 8 FirstWrite -1}
		SI_170_V {Type I LastRead 8 FirstWrite -1}
		SI_171_V {Type I LastRead 8 FirstWrite -1}
		SI_172_V {Type I LastRead 8 FirstWrite -1}
		SI_173_V {Type I LastRead 8 FirstWrite -1}
		SI_174_V {Type I LastRead 8 FirstWrite -1}
		SI_175_V {Type I LastRead 8 FirstWrite -1}
		SI_176_V {Type I LastRead 8 FirstWrite -1}
		SI_177_V {Type I LastRead 8 FirstWrite -1}
		SI_178_V {Type I LastRead 8 FirstWrite -1}
		SI_179_V {Type I LastRead 8 FirstWrite -1}
		SI_180_V {Type I LastRead 8 FirstWrite -1}
		SI_181_V {Type I LastRead 8 FirstWrite -1}
		SI_182_V {Type I LastRead 8 FirstWrite -1}
		SI_183_V {Type I LastRead 8 FirstWrite -1}
		SI_184_V {Type I LastRead 8 FirstWrite -1}
		SI_185_V {Type I LastRead 8 FirstWrite -1}
		SI_186_V {Type I LastRead 8 FirstWrite -1}
		SI_187_V {Type I LastRead 8 FirstWrite -1}
		SI_188_V {Type I LastRead 8 FirstWrite -1}
		SI_189_V {Type I LastRead 8 FirstWrite -1}
		SI_190_V {Type I LastRead 8 FirstWrite -1}
		SI_191_V {Type I LastRead 8 FirstWrite -1}
		SI_192_V {Type I LastRead 8 FirstWrite -1}
		SI_193_V {Type I LastRead 8 FirstWrite -1}
		SI_194_V {Type I LastRead 8 FirstWrite -1}
		SI_195_V {Type I LastRead 8 FirstWrite -1}
		SI_196_V {Type I LastRead 8 FirstWrite -1}
		SI_197_V {Type I LastRead 8 FirstWrite -1}
		SI_198_V {Type I LastRead 8 FirstWrite -1}
		SI_199_V {Type I LastRead 8 FirstWrite -1}
		SI_200_V {Type I LastRead 8 FirstWrite -1}
		SI_201_V {Type I LastRead 8 FirstWrite -1}
		SI_202_V {Type I LastRead 8 FirstWrite -1}
		SI_203_V {Type I LastRead 8 FirstWrite -1}
		SI_204_V {Type I LastRead 8 FirstWrite -1}
		SI_205_V {Type I LastRead 8 FirstWrite -1}
		SI_206_V {Type I LastRead 8 FirstWrite -1}
		SI_207_V {Type I LastRead 8 FirstWrite -1}
		SI_208_V {Type I LastRead 8 FirstWrite -1}
		SI_209_V {Type I LastRead 8 FirstWrite -1}
		SI_210_V {Type I LastRead 8 FirstWrite -1}
		SI_211_V {Type I LastRead 8 FirstWrite -1}
		SI_212_V {Type I LastRead 8 FirstWrite -1}
		SI_213_V {Type I LastRead 8 FirstWrite -1}
		SI_214_V {Type I LastRead 8 FirstWrite -1}
		SI_215_V {Type I LastRead 8 FirstWrite -1}
		SI_216_V {Type I LastRead 8 FirstWrite -1}
		SI_217_V {Type I LastRead 8 FirstWrite -1}
		SI_218_V {Type I LastRead 8 FirstWrite -1}
		SI_219_V {Type I LastRead 8 FirstWrite -1}
		SI_220_V {Type I LastRead 8 FirstWrite -1}
		SI_221_V {Type I LastRead 8 FirstWrite -1}
		SI_222_V {Type I LastRead 8 FirstWrite -1}
		SI_223_V {Type I LastRead 8 FirstWrite -1}
		SI_224_V {Type I LastRead 8 FirstWrite -1}
		SI_225_V {Type I LastRead 8 FirstWrite -1}
		SI_226_V {Type I LastRead 8 FirstWrite -1}
		SI_227_V {Type I LastRead 8 FirstWrite -1}
		SI_228_V {Type I LastRead 8 FirstWrite -1}
		SI_229_V {Type I LastRead 8 FirstWrite -1}
		SI_230_V {Type I LastRead 8 FirstWrite -1}
		SI_231_V {Type I LastRead 8 FirstWrite -1}
		SI_232_V {Type I LastRead 8 FirstWrite -1}
		SI_233_V {Type I LastRead 8 FirstWrite -1}
		SI_234_V {Type I LastRead 8 FirstWrite -1}
		SI_235_V {Type I LastRead 8 FirstWrite -1}
		SI_236_V {Type I LastRead 8 FirstWrite -1}
		SI_237_V {Type I LastRead 8 FirstWrite -1}
		SI_238_V {Type I LastRead 8 FirstWrite -1}
		SI_239_V {Type I LastRead 8 FirstWrite -1}
		SI_240_V {Type I LastRead 8 FirstWrite -1}
		SI_241_V {Type I LastRead 8 FirstWrite -1}
		SI_242_V {Type I LastRead 8 FirstWrite -1}
		SI_243_V {Type I LastRead 8 FirstWrite -1}
		SI_244_V {Type I LastRead 8 FirstWrite -1}
		SI_245_V {Type I LastRead 8 FirstWrite -1}
		SI_246_V {Type I LastRead 8 FirstWrite -1}
		SI_247_V {Type I LastRead 8 FirstWrite -1}
		SI_248_V {Type I LastRead 8 FirstWrite -1}
		SI_249_V {Type I LastRead 8 FirstWrite -1}
		SI_250_V {Type I LastRead 8 FirstWrite -1}
		SI_251_V {Type I LastRead 8 FirstWrite -1}
		SI_252_V {Type I LastRead 8 FirstWrite -1}
		SI_253_V {Type I LastRead 8 FirstWrite -1}
		SI_254_V {Type I LastRead 8 FirstWrite -1}
		SI_255_V {Type I LastRead 8 FirstWrite -1}
		SI_256_V {Type I LastRead 8 FirstWrite -1}
		SI_257_V {Type I LastRead 8 FirstWrite -1}
		SI_258_V {Type I LastRead 8 FirstWrite -1}
		SI_259_V {Type I LastRead 8 FirstWrite -1}
		SI_260_V {Type I LastRead 8 FirstWrite -1}
		SI_261_V {Type I LastRead 8 FirstWrite -1}
		SI_262_V {Type I LastRead 8 FirstWrite -1}
		SI_263_V {Type I LastRead 8 FirstWrite -1}
		SI_264_V {Type I LastRead 8 FirstWrite -1}
		SI_265_V {Type I LastRead 8 FirstWrite -1}
		SI_266_V {Type I LastRead 8 FirstWrite -1}
		SI_267_V {Type I LastRead 8 FirstWrite -1}
		SI_268_V {Type I LastRead 8 FirstWrite -1}
		SI_269_V {Type I LastRead 8 FirstWrite -1}
		sizes_V {Type IO LastRead 28 FirstWrite 25}
		holes_V {Type O LastRead -1 FirstWrite 29}}
	local_sort {
		work_array_0_V_read {Type I LastRead 0 FirstWrite -1}
		work_array_1_V_read {Type I LastRead 0 FirstWrite -1}
		work_array_2_V_read {Type I LastRead 0 FirstWrite -1}
		work_array_3_V_read {Type I LastRead 0 FirstWrite -1}
		work_array_4_V_read {Type I LastRead 0 FirstWrite -1}
		work_array_5_V_read {Type I LastRead 0 FirstWrite -1}
		work_array_6_V_read {Type I LastRead 0 FirstWrite -1}
		work_array_7_V_read {Type I LastRead 0 FirstWrite -1}
		work_array_8_V_read {Type I LastRead 0 FirstWrite -1}
		work_array_9_V_read {Type I LastRead 0 FirstWrite -1}
		work_array_10_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_11_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_12_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_13_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_14_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_15_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_16_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_17_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_18_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_19_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_20_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_21_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_22_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_23_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_24_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_25_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_26_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_27_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_28_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_29_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_30_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_31_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_32_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_33_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_34_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_35_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_36_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_37_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_38_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_39_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_40_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_41_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_42_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_43_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_44_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_45_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_46_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_47_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_48_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_49_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_50_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_51_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_52_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_53_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_54_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_55_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_56_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_57_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_58_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_59_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_60_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_61_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_62_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_63_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_64_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_65_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_66_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_67_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_68_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_69_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_70_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_71_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_72_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_73_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_74_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_75_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_76_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_77_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_78_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_79_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_80_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_81_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_82_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_83_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_84_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_85_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_86_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_87_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_88_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_89_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_90_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_91_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_92_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_93_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_94_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_95_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_96_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_97_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_98_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_99_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_100_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_101_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_102_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_103_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_104_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_105_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_106_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_107_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_108_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_109_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_110_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_111_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_112_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_113_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_114_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_115_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_116_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_117_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_118_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_119_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_120_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_121_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_122_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_123_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_124_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_125_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_126_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_127_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_128_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_129_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_130_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_131_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_132_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_133_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_134_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_135_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_136_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_137_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_138_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_139_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_140_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_141_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_142_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_143_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_144_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_145_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_146_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_147_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_148_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_149_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_150_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_151_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_152_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_153_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_154_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_155_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_156_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_157_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_158_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_159_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_160_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_161_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_162_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_163_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_164_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_165_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_166_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_167_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_168_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_169_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_170_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_171_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_172_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_173_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_174_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_175_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_176_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_177_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_178_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_179_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_180_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_181_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_182_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_183_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_184_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_185_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_186_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_187_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_188_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_189_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_190_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_191_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_192_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_193_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_194_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_195_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_196_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_197_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_198_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_199_V_re {Type I LastRead 0 FirstWrite -1}}
	local_sort {
		work_array_0_V_read {Type I LastRead 0 FirstWrite -1}
		work_array_1_V_read {Type I LastRead 0 FirstWrite -1}
		work_array_2_V_read {Type I LastRead 0 FirstWrite -1}
		work_array_3_V_read {Type I LastRead 0 FirstWrite -1}
		work_array_4_V_read {Type I LastRead 0 FirstWrite -1}
		work_array_5_V_read {Type I LastRead 0 FirstWrite -1}
		work_array_6_V_read {Type I LastRead 0 FirstWrite -1}
		work_array_7_V_read {Type I LastRead 0 FirstWrite -1}
		work_array_8_V_read {Type I LastRead 0 FirstWrite -1}
		work_array_9_V_read {Type I LastRead 0 FirstWrite -1}
		work_array_10_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_11_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_12_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_13_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_14_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_15_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_16_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_17_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_18_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_19_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_20_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_21_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_22_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_23_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_24_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_25_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_26_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_27_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_28_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_29_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_30_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_31_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_32_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_33_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_34_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_35_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_36_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_37_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_38_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_39_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_40_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_41_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_42_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_43_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_44_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_45_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_46_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_47_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_48_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_49_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_50_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_51_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_52_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_53_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_54_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_55_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_56_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_57_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_58_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_59_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_60_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_61_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_62_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_63_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_64_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_65_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_66_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_67_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_68_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_69_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_70_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_71_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_72_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_73_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_74_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_75_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_76_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_77_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_78_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_79_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_80_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_81_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_82_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_83_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_84_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_85_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_86_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_87_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_88_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_89_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_90_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_91_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_92_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_93_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_94_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_95_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_96_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_97_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_98_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_99_V_rea {Type I LastRead 0 FirstWrite -1}
		work_array_100_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_101_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_102_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_103_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_104_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_105_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_106_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_107_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_108_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_109_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_110_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_111_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_112_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_113_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_114_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_115_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_116_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_117_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_118_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_119_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_120_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_121_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_122_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_123_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_124_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_125_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_126_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_127_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_128_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_129_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_130_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_131_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_132_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_133_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_134_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_135_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_136_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_137_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_138_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_139_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_140_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_141_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_142_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_143_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_144_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_145_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_146_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_147_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_148_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_149_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_150_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_151_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_152_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_153_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_154_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_155_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_156_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_157_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_158_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_159_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_160_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_161_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_162_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_163_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_164_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_165_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_166_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_167_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_168_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_169_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_170_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_171_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_172_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_173_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_174_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_175_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_176_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_177_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_178_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_179_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_180_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_181_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_182_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_183_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_184_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_185_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_186_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_187_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_188_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_189_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_190_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_191_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_192_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_193_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_194_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_195_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_196_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_197_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_198_V_re {Type I LastRead 0 FirstWrite -1}
		work_array_199_V_re {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1190653", "Max" : "1421692"}
	, {"Name" : "Interval", "Min" : "1190653", "Max" : "1421692"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
	{"Pipeline" : "3", "EnableSignal" : "ap_enable_pp3"}
	{"Pipeline" : "4", "EnableSignal" : "ap_enable_pp4"}
	{"Pipeline" : "5", "EnableSignal" : "ap_enable_pp5"}
	{"Pipeline" : "6", "EnableSignal" : "ap_enable_pp6"}
	{"Pipeline" : "7", "EnableSignal" : "ap_enable_pp7"}
]}

set Spec2ImplPortList { 
	Luminance_img_V_V { ap_fifo {  { Luminance_img_V_V_dout fifo_data 0 32 }  { Luminance_img_V_V_empty_n fifo_status 0 1 }  { Luminance_img_V_V_read fifo_update 1 1 } } }
	LI_V_V { ap_fifo {  { LI_V_V_din fifo_data 1 32 }  { LI_V_V_full_n fifo_status 0 1 }  { LI_V_V_write fifo_update 1 1 } } }
}

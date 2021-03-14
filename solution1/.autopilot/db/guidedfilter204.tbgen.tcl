set moduleName guidedfilter204
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {guidedfilter204}
set C_modelType { void 0 }
set C_modelArgList {
	{ I_enhanced_data_stream_V int 16 regular {fifo 1 volatile }  }
	{ ONES_V_V int 32 regular {fifo 0 volatile } {global 0}  }
	{ I_V_V int 32 regular {fifo 0 volatile } {global 0}  }
	{ I_2_V_V int 32 regular {fifo 0 volatile } {global 0}  }
	{ I_COPY_V_V int 32 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "I_enhanced_data_stream_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ONES_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "I_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "I_2_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "I_COPY_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ I_enhanced_data_stream_V_din sc_out sc_lv 16 signal 0 } 
	{ I_enhanced_data_stream_V_full_n sc_in sc_logic 1 signal 0 } 
	{ I_enhanced_data_stream_V_write sc_out sc_logic 1 signal 0 } 
	{ ONES_V_V_dout sc_in sc_lv 32 signal 1 } 
	{ ONES_V_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ ONES_V_V_read sc_out sc_logic 1 signal 1 } 
	{ I_V_V_dout sc_in sc_lv 32 signal 2 } 
	{ I_V_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ I_V_V_read sc_out sc_logic 1 signal 2 } 
	{ I_2_V_V_dout sc_in sc_lv 32 signal 3 } 
	{ I_2_V_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ I_2_V_V_read sc_out sc_logic 1 signal 3 } 
	{ I_COPY_V_V_dout sc_in sc_lv 32 signal 4 } 
	{ I_COPY_V_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ I_COPY_V_V_read sc_out sc_logic 1 signal 4 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "I_enhanced_data_stream_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "I_enhanced_data_stream_V", "role": "din" }} , 
 	{ "name": "I_enhanced_data_stream_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "I_enhanced_data_stream_V", "role": "full_n" }} , 
 	{ "name": "I_enhanced_data_stream_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "I_enhanced_data_stream_V", "role": "write" }} , 
 	{ "name": "ONES_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ONES_V_V", "role": "dout" }} , 
 	{ "name": "ONES_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ONES_V_V", "role": "empty_n" }} , 
 	{ "name": "ONES_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ONES_V_V", "role": "read" }} , 
 	{ "name": "I_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "I_V_V", "role": "dout" }} , 
 	{ "name": "I_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "I_V_V", "role": "empty_n" }} , 
 	{ "name": "I_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "I_V_V", "role": "read" }} , 
 	{ "name": "I_2_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "I_2_V_V", "role": "dout" }} , 
 	{ "name": "I_2_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "I_2_V_V", "role": "empty_n" }} , 
 	{ "name": "I_2_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "I_2_V_V", "role": "read" }} , 
 	{ "name": "I_COPY_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "I_COPY_V_V", "role": "dout" }} , 
 	{ "name": "I_COPY_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "I_COPY_V_V", "role": "empty_n" }} , 
 	{ "name": "I_COPY_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "I_COPY_V_V", "role": "read" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "37", "73", "109", "113", "149", "185", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198"],
		"CDFG" : "guidedfilter204",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "137443", "EstimateLatencyMax" : "137443",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "boxfilter200205_U0", "ReadyCount" : "boxfilter200205_U0_ap_ready_count"},
			{"ID" : "37", "Name" : "boxfilter201206_U0", "ReadyCount" : "boxfilter201206_U0_ap_ready_count"},
			{"ID" : "73", "Name" : "boxfilter202207_U0", "ReadyCount" : "boxfilter202207_U0_ap_ready_count"},
			{"ID" : "185", "Name" : "compute_I_enhanced21_U0", "ReadyCount" : "compute_I_enhanced21_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "185", "Name" : "compute_I_enhanced21_U0"}],
		"Port" : [
			{"Name" : "I_enhanced_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "compute_I_enhanced21_U0", "Port" : "I_enhanced_data_stream_V"}]},
			{"Name" : "ONES_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "boxfilter200205_U0", "Port" : "ONES_V_V"}]},
			{"Name" : "N_V_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "boxfilter200205_U0", "Port" : "N_V_V"},
					{"ID" : "109", "SubInstance" : "compute_a_b208_U0", "Port" : "N_V_V"}]},
			{"Name" : "I_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "boxfilter201206_U0", "Port" : "I_V_V"}]},
			{"Name" : "mean_I_V_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "boxfilter201206_U0", "Port" : "mean_I_V_V"},
					{"ID" : "109", "SubInstance" : "compute_a_b208_U0", "Port" : "mean_I_V_V"}]},
			{"Name" : "I_2_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "73", "SubInstance" : "boxfilter202207_U0", "Port" : "I_2_V_V"}]},
			{"Name" : "mean_II_V_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "73", "SubInstance" : "boxfilter202207_U0", "Port" : "mean_II_V_V"},
					{"ID" : "109", "SubInstance" : "compute_a_b208_U0", "Port" : "mean_II_V_V"}]},
			{"Name" : "N_COPY_V_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "compute_I_enhanced21_U0", "Port" : "N_COPY_V_V"},
					{"ID" : "109", "SubInstance" : "compute_a_b208_U0", "Port" : "N_COPY_V_V"}]},
			{"Name" : "a_V_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "compute_a_b208_U0", "Port" : "a_V_V"},
					{"ID" : "113", "SubInstance" : "boxfilter203209_U0", "Port" : "a_V_V"}]},
			{"Name" : "b_V_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "boxfilter210_U0", "Port" : "b_V_V"},
					{"ID" : "109", "SubInstance" : "compute_a_b208_U0", "Port" : "b_V_V"}]},
			{"Name" : "mean_A_V_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "compute_I_enhanced21_U0", "Port" : "mean_A_V_V"},
					{"ID" : "113", "SubInstance" : "boxfilter203209_U0", "Port" : "mean_A_V_V"}]},
			{"Name" : "mean_B_V_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "149", "SubInstance" : "boxfilter210_U0", "Port" : "mean_B_V_V"},
					{"ID" : "185", "SubInstance" : "compute_I_enhanced21_U0", "Port" : "mean_B_V_V"}]},
			{"Name" : "I_COPY_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "compute_I_enhanced21_U0", "Port" : "I_COPY_V_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.boxfilter200205_U0", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36"],
		"CDFG" : "boxfilter200205",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "137283", "EstimateLatencyMax" : "137283",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "ONES_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "ONES_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "N_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "109", "DependentChan" : "188",
				"BlockSignal" : [
					{"Name" : "N_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter200205_U0.imCum_val_0_V_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter200205_U0.imCum_val_1_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter200205_U0.imCum_val_2_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter200205_U0.imCum_val_3_V_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter200205_U0.imCum_val_4_V_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter200205_U0.imCum_val_5_V_U", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter200205_U0.imCum_val_6_V_U", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter200205_U0.imCum_val_7_V_U", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter200205_U0.imCum_val_8_V_U", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter200205_U0.imCum_val_9_V_U", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter200205_U0.imCum_val_10_V_U", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter200205_U0.imCum_val_11_V_U", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter200205_U0.imCum_val_12_V_U", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter200205_U0.imCum_val_13_V_U", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter200205_U0.imCum_val_14_V_U", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter200205_U0.imCum_val_15_V_U", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter200205_U0.imCum_val_16_V_U", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter200205_U0.imCum_val_17_V_U", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter200205_U0.imCum_val_18_V_U", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter200205_U0.imCum_val_19_V_U", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter200205_U0.imCum_val_20_V_U", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter200205_U0.imCum_val_21_V_U", "Parent" : "1"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter200205_U0.imCum_val_22_V_U", "Parent" : "1"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter200205_U0.imCum_val_23_V_U", "Parent" : "1"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter200205_U0.imCum_val_24_V_U", "Parent" : "1"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter200205_U0.imCum_val_25_V_U", "Parent" : "1"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter200205_U0.imCum_val_26_V_U", "Parent" : "1"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter200205_U0.imCum_val_27_V_U", "Parent" : "1"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter200205_U0.imCum_val_28_V_U", "Parent" : "1"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter200205_U0.imCum_val_29_V_U", "Parent" : "1"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter200205_U0.imCum_val_30_V_U", "Parent" : "1"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter200205_U0.imCum_val_31_V_U", "Parent" : "1"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter200205_U0.imCum_val_32_V_U", "Parent" : "1"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter200205_U0.net_holes_detectiIfE_U27", "Parent" : "1"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter200205_U0.net_holes_detectiIfE_U28", "Parent" : "1"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.boxfilter201206_U0", "Parent" : "0", "Child" : ["38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72"],
		"CDFG" : "boxfilter201206",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "137283", "EstimateLatencyMax" : "137283",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "I_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "I_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mean_I_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "109", "DependentChan" : "189",
				"BlockSignal" : [
					{"Name" : "mean_I_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter201206_U0.imCum_val_0_V_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter201206_U0.imCum_val_1_V_U", "Parent" : "37"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter201206_U0.imCum_val_2_V_U", "Parent" : "37"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter201206_U0.imCum_val_3_V_U", "Parent" : "37"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter201206_U0.imCum_val_4_V_U", "Parent" : "37"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter201206_U0.imCum_val_5_V_U", "Parent" : "37"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter201206_U0.imCum_val_6_V_U", "Parent" : "37"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter201206_U0.imCum_val_7_V_U", "Parent" : "37"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter201206_U0.imCum_val_8_V_U", "Parent" : "37"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter201206_U0.imCum_val_9_V_U", "Parent" : "37"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter201206_U0.imCum_val_10_V_U", "Parent" : "37"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter201206_U0.imCum_val_11_V_U", "Parent" : "37"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter201206_U0.imCum_val_12_V_U", "Parent" : "37"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter201206_U0.imCum_val_13_V_U", "Parent" : "37"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter201206_U0.imCum_val_14_V_U", "Parent" : "37"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter201206_U0.imCum_val_15_V_U", "Parent" : "37"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter201206_U0.imCum_val_16_V_U", "Parent" : "37"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter201206_U0.imCum_val_17_V_U", "Parent" : "37"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter201206_U0.imCum_val_18_V_U", "Parent" : "37"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter201206_U0.imCum_val_19_V_U", "Parent" : "37"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter201206_U0.imCum_val_20_V_U", "Parent" : "37"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter201206_U0.imCum_val_21_V_U", "Parent" : "37"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter201206_U0.imCum_val_22_V_U", "Parent" : "37"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter201206_U0.imCum_val_23_V_U", "Parent" : "37"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter201206_U0.imCum_val_24_V_U", "Parent" : "37"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter201206_U0.imCum_val_25_V_U", "Parent" : "37"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter201206_U0.imCum_val_26_V_U", "Parent" : "37"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter201206_U0.imCum_val_27_V_U", "Parent" : "37"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter201206_U0.imCum_val_28_V_U", "Parent" : "37"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter201206_U0.imCum_val_29_V_U", "Parent" : "37"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter201206_U0.imCum_val_30_V_U", "Parent" : "37"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter201206_U0.imCum_val_31_V_U", "Parent" : "37"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter201206_U0.imCum_val_32_V_U", "Parent" : "37"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter201206_U0.net_holes_detectiIfE_U33", "Parent" : "37"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter201206_U0.net_holes_detectiIfE_U34", "Parent" : "37"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.boxfilter202207_U0", "Parent" : "0", "Child" : ["74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108"],
		"CDFG" : "boxfilter202207",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "137283", "EstimateLatencyMax" : "137283",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "I_2_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "I_2_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mean_II_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "109", "DependentChan" : "190",
				"BlockSignal" : [
					{"Name" : "mean_II_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter202207_U0.imCum_val_0_V_U", "Parent" : "73"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter202207_U0.imCum_val_1_V_U", "Parent" : "73"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter202207_U0.imCum_val_2_V_U", "Parent" : "73"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter202207_U0.imCum_val_3_V_U", "Parent" : "73"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter202207_U0.imCum_val_4_V_U", "Parent" : "73"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter202207_U0.imCum_val_5_V_U", "Parent" : "73"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter202207_U0.imCum_val_6_V_U", "Parent" : "73"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter202207_U0.imCum_val_7_V_U", "Parent" : "73"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter202207_U0.imCum_val_8_V_U", "Parent" : "73"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter202207_U0.imCum_val_9_V_U", "Parent" : "73"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter202207_U0.imCum_val_10_V_U", "Parent" : "73"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter202207_U0.imCum_val_11_V_U", "Parent" : "73"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter202207_U0.imCum_val_12_V_U", "Parent" : "73"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter202207_U0.imCum_val_13_V_U", "Parent" : "73"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter202207_U0.imCum_val_14_V_U", "Parent" : "73"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter202207_U0.imCum_val_15_V_U", "Parent" : "73"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter202207_U0.imCum_val_16_V_U", "Parent" : "73"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter202207_U0.imCum_val_17_V_U", "Parent" : "73"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter202207_U0.imCum_val_18_V_U", "Parent" : "73"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter202207_U0.imCum_val_19_V_U", "Parent" : "73"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter202207_U0.imCum_val_20_V_U", "Parent" : "73"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter202207_U0.imCum_val_21_V_U", "Parent" : "73"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter202207_U0.imCum_val_22_V_U", "Parent" : "73"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter202207_U0.imCum_val_23_V_U", "Parent" : "73"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter202207_U0.imCum_val_24_V_U", "Parent" : "73"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter202207_U0.imCum_val_25_V_U", "Parent" : "73"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter202207_U0.imCum_val_26_V_U", "Parent" : "73"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter202207_U0.imCum_val_27_V_U", "Parent" : "73"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter202207_U0.imCum_val_28_V_U", "Parent" : "73"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter202207_U0.imCum_val_29_V_U", "Parent" : "73"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter202207_U0.imCum_val_30_V_U", "Parent" : "73"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter202207_U0.imCum_val_31_V_U", "Parent" : "73"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter202207_U0.imCum_val_32_V_U", "Parent" : "73"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter202207_U0.net_holes_detectiIfE_U37", "Parent" : "73"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter202207_U0.net_holes_detectiIfE_U38", "Parent" : "73"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_a_b208_U0", "Parent" : "0", "Child" : ["110", "111", "112"],
		"CDFG" : "compute_a_b208",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129706", "EstimateLatencyMax" : "129706",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "1",
		"StartFifo" : "start_for_computecUB_U",
		"Port" : [
			{"Name" : "N_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "188",
				"BlockSignal" : [
					{"Name" : "N_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "N_COPY_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "185", "DependentChan" : "191",
				"BlockSignal" : [
					{"Name" : "N_COPY_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mean_I_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "37", "DependentChan" : "189",
				"BlockSignal" : [
					{"Name" : "mean_I_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mean_II_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "73", "DependentChan" : "190",
				"BlockSignal" : [
					{"Name" : "mean_II_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "a_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "113", "DependentChan" : "192",
				"BlockSignal" : [
					{"Name" : "a_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "b_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "149", "DependentChan" : "193",
				"BlockSignal" : [
					{"Name" : "b_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_a_b208_U0.net_holes_detectibNq_U41", "Parent" : "109"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_a_b208_U0.net_holes_detectibNq_U42", "Parent" : "109"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_a_b208_U0.net_holes_detectibOq_U43", "Parent" : "109"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.boxfilter203209_U0", "Parent" : "0", "Child" : ["114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148"],
		"CDFG" : "boxfilter203209",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "137283", "EstimateLatencyMax" : "137283",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "109",
		"StartFifo" : "start_for_boxfiltcVB_U",
		"Port" : [
			{"Name" : "a_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "109", "DependentChan" : "192",
				"BlockSignal" : [
					{"Name" : "a_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mean_A_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "185", "DependentChan" : "194",
				"BlockSignal" : [
					{"Name" : "mean_A_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter203209_U0.imCum_val_0_V_U", "Parent" : "113"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter203209_U0.imCum_val_1_V_U", "Parent" : "113"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter203209_U0.imCum_val_2_V_U", "Parent" : "113"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter203209_U0.imCum_val_3_V_U", "Parent" : "113"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter203209_U0.imCum_val_4_V_U", "Parent" : "113"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter203209_U0.imCum_val_5_V_U", "Parent" : "113"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter203209_U0.imCum_val_6_V_U", "Parent" : "113"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter203209_U0.imCum_val_7_V_U", "Parent" : "113"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter203209_U0.imCum_val_8_V_U", "Parent" : "113"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter203209_U0.imCum_val_9_V_U", "Parent" : "113"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter203209_U0.imCum_val_10_V_U", "Parent" : "113"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter203209_U0.imCum_val_11_V_U", "Parent" : "113"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter203209_U0.imCum_val_12_V_U", "Parent" : "113"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter203209_U0.imCum_val_13_V_U", "Parent" : "113"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter203209_U0.imCum_val_14_V_U", "Parent" : "113"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter203209_U0.imCum_val_15_V_U", "Parent" : "113"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter203209_U0.imCum_val_16_V_U", "Parent" : "113"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter203209_U0.imCum_val_17_V_U", "Parent" : "113"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter203209_U0.imCum_val_18_V_U", "Parent" : "113"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter203209_U0.imCum_val_19_V_U", "Parent" : "113"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter203209_U0.imCum_val_20_V_U", "Parent" : "113"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter203209_U0.imCum_val_21_V_U", "Parent" : "113"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter203209_U0.imCum_val_22_V_U", "Parent" : "113"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter203209_U0.imCum_val_23_V_U", "Parent" : "113"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter203209_U0.imCum_val_24_V_U", "Parent" : "113"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter203209_U0.imCum_val_25_V_U", "Parent" : "113"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter203209_U0.imCum_val_26_V_U", "Parent" : "113"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter203209_U0.imCum_val_27_V_U", "Parent" : "113"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter203209_U0.imCum_val_28_V_U", "Parent" : "113"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter203209_U0.imCum_val_29_V_U", "Parent" : "113"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter203209_U0.imCum_val_30_V_U", "Parent" : "113"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter203209_U0.imCum_val_31_V_U", "Parent" : "113"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter203209_U0.imCum_val_32_V_U", "Parent" : "113"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter203209_U0.net_holes_detectiIfE_U52", "Parent" : "113"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter203209_U0.net_holes_detectiIfE_U53", "Parent" : "113"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.boxfilter210_U0", "Parent" : "0", "Child" : ["150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184"],
		"CDFG" : "boxfilter210",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "137283", "EstimateLatencyMax" : "137283",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "109",
		"StartFifo" : "start_for_boxfiltcWB_U",
		"Port" : [
			{"Name" : "b_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "109", "DependentChan" : "193",
				"BlockSignal" : [
					{"Name" : "b_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mean_B_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "185", "DependentChan" : "195",
				"BlockSignal" : [
					{"Name" : "mean_B_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter210_U0.imCum_val_0_V_U", "Parent" : "149"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter210_U0.imCum_val_1_V_U", "Parent" : "149"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter210_U0.imCum_val_2_V_U", "Parent" : "149"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter210_U0.imCum_val_3_V_U", "Parent" : "149"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter210_U0.imCum_val_4_V_U", "Parent" : "149"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter210_U0.imCum_val_5_V_U", "Parent" : "149"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter210_U0.imCum_val_6_V_U", "Parent" : "149"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter210_U0.imCum_val_7_V_U", "Parent" : "149"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter210_U0.imCum_val_8_V_U", "Parent" : "149"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter210_U0.imCum_val_9_V_U", "Parent" : "149"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter210_U0.imCum_val_10_V_U", "Parent" : "149"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter210_U0.imCum_val_11_V_U", "Parent" : "149"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter210_U0.imCum_val_12_V_U", "Parent" : "149"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter210_U0.imCum_val_13_V_U", "Parent" : "149"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter210_U0.imCum_val_14_V_U", "Parent" : "149"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter210_U0.imCum_val_15_V_U", "Parent" : "149"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter210_U0.imCum_val_16_V_U", "Parent" : "149"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter210_U0.imCum_val_17_V_U", "Parent" : "149"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter210_U0.imCum_val_18_V_U", "Parent" : "149"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter210_U0.imCum_val_19_V_U", "Parent" : "149"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter210_U0.imCum_val_20_V_U", "Parent" : "149"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter210_U0.imCum_val_21_V_U", "Parent" : "149"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter210_U0.imCum_val_22_V_U", "Parent" : "149"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter210_U0.imCum_val_23_V_U", "Parent" : "149"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter210_U0.imCum_val_24_V_U", "Parent" : "149"},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter210_U0.imCum_val_25_V_U", "Parent" : "149"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter210_U0.imCum_val_26_V_U", "Parent" : "149"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter210_U0.imCum_val_27_V_U", "Parent" : "149"},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter210_U0.imCum_val_28_V_U", "Parent" : "149"},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter210_U0.imCum_val_29_V_U", "Parent" : "149"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter210_U0.imCum_val_30_V_U", "Parent" : "149"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter210_U0.imCum_val_31_V_U", "Parent" : "149"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter210_U0.imCum_val_32_V_U", "Parent" : "149"},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter210_U0.net_holes_detectiIfE_U56", "Parent" : "149"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.boxfilter210_U0.net_holes_detectiIfE_U57", "Parent" : "149"},
	{"ID" : "185", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_I_enhanced21_U0", "Parent" : "0", "Child" : ["186", "187"],
		"CDFG" : "compute_I_enhanced21",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129654", "EstimateLatencyMax" : "129654",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "I_enhanced_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "I_enhanced_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mean_A_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "113", "DependentChan" : "194",
				"BlockSignal" : [
					{"Name" : "mean_A_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mean_B_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "149", "DependentChan" : "195",
				"BlockSignal" : [
					{"Name" : "mean_B_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "N_COPY_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "109", "DependentChan" : "191",
				"BlockSignal" : [
					{"Name" : "N_COPY_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "I_COPY_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "I_COPY_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_I_enhanced21_U0.net_holes_detecticTB_U60", "Parent" : "185"},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute_I_enhanced21_U0.net_holes_detectibNq_U61", "Parent" : "185"},
	{"ID" : "188", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.N_V_V_U", "Parent" : "0"},
	{"ID" : "189", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mean_I_V_V_U", "Parent" : "0"},
	{"ID" : "190", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mean_II_V_V_U", "Parent" : "0"},
	{"ID" : "191", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.N_COPY_V_V_U", "Parent" : "0"},
	{"ID" : "192", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a_V_V_U", "Parent" : "0"},
	{"ID" : "193", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.b_V_V_U", "Parent" : "0"},
	{"ID" : "194", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mean_A_V_V_U", "Parent" : "0"},
	{"ID" : "195", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mean_B_V_V_U", "Parent" : "0"},
	{"ID" : "196", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_computecUB_U", "Parent" : "0"},
	{"ID" : "197", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_boxfiltcVB_U", "Parent" : "0"},
	{"ID" : "198", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_boxfiltcWB_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	guidedfilter204 {
		I_enhanced_data_stream_V {Type O LastRead -1 FirstWrite 54}
		ONES_V_V {Type I LastRead 2 FirstWrite -1}
		N_V_V {Type IO LastRead -1 FirstWrite -1}
		I_V_V {Type I LastRead 2 FirstWrite -1}
		mean_I_V_V {Type IO LastRead -1 FirstWrite -1}
		I_2_V_V {Type I LastRead 2 FirstWrite -1}
		mean_II_V_V {Type IO LastRead -1 FirstWrite -1}
		N_COPY_V_V {Type IO LastRead -1 FirstWrite -1}
		a_V_V {Type IO LastRead -1 FirstWrite -1}
		b_V_V {Type IO LastRead -1 FirstWrite -1}
		mean_A_V_V {Type IO LastRead -1 FirstWrite -1}
		mean_B_V_V {Type IO LastRead -1 FirstWrite -1}
		I_COPY_V_V {Type I LastRead 2 FirstWrite -1}}
	boxfilter200205 {
		ONES_V_V {Type I LastRead 2 FirstWrite -1}
		N_V_V {Type O LastRead -1 FirstWrite 3}}
	boxfilter201206 {
		I_V_V {Type I LastRead 2 FirstWrite -1}
		mean_I_V_V {Type O LastRead -1 FirstWrite 3}}
	boxfilter202207 {
		I_2_V_V {Type I LastRead 2 FirstWrite -1}
		mean_II_V_V {Type O LastRead -1 FirstWrite 3}}
	compute_a_b208 {
		N_V_V {Type I LastRead 2 FirstWrite -1}
		N_COPY_V_V {Type O LastRead -1 FirstWrite 106}
		mean_I_V_V {Type I LastRead 2 FirstWrite -1}
		mean_II_V_V {Type I LastRead 2 FirstWrite -1}
		a_V_V {Type O LastRead -1 FirstWrite 106}
		b_V_V {Type O LastRead -1 FirstWrite 106}}
	boxfilter203209 {
		a_V_V {Type I LastRead 2 FirstWrite -1}
		mean_A_V_V {Type O LastRead -1 FirstWrite 3}}
	boxfilter210 {
		b_V_V {Type I LastRead 2 FirstWrite -1}
		mean_B_V_V {Type O LastRead -1 FirstWrite 3}}
	compute_I_enhanced21 {
		I_enhanced_data_stream_V {Type O LastRead -1 FirstWrite 54}
		mean_A_V_V {Type I LastRead 2 FirstWrite -1}
		mean_B_V_V {Type I LastRead 2 FirstWrite -1}
		N_COPY_V_V {Type I LastRead 2 FirstWrite -1}
		I_COPY_V_V {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "137443", "Max" : "137443"}
	, {"Name" : "Interval", "Min" : "137284", "Max" : "137284"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	I_enhanced_data_stream_V { ap_fifo {  { I_enhanced_data_stream_V_din fifo_data 1 16 }  { I_enhanced_data_stream_V_full_n fifo_status 0 1 }  { I_enhanced_data_stream_V_write fifo_update 1 1 } } }
	ONES_V_V { ap_fifo {  { ONES_V_V_dout fifo_data 0 32 }  { ONES_V_V_empty_n fifo_status 0 1 }  { ONES_V_V_read fifo_update 1 1 } } }
	I_V_V { ap_fifo {  { I_V_V_dout fifo_data 0 32 }  { I_V_V_empty_n fifo_status 0 1 }  { I_V_V_read fifo_update 1 1 } } }
	I_2_V_V { ap_fifo {  { I_2_V_V_dout fifo_data 0 32 }  { I_2_V_V_empty_n fifo_status 0 1 }  { I_2_V_V_read fifo_update 1 1 } } }
	I_COPY_V_V { ap_fifo {  { I_COPY_V_V_dout fifo_data 0 32 }  { I_COPY_V_V_empty_n fifo_status 0 1 }  { I_COPY_V_V_read fifo_update 1 1 } } }
}

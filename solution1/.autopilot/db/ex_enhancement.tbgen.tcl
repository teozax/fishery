set moduleName ex_enhancement
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
set C_modelName {ex_enhancement}
set C_modelType { void 0 }
set C_modelArgList {
	{ inputImage_data_stream_0_V int 8 regular {fifo 0 volatile }  }
	{ inputImage_data_stream_1_V int 8 regular {fifo 0 volatile }  }
	{ inputImage_data_stream_2_V int 8 regular {fifo 0 volatile }  }
	{ I_enhanced_data_stream_V int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "inputImage_data_stream_0_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "inputImage_data_stream_1_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "inputImage_data_stream_2_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "I_enhanced_data_stream_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ inputImage_data_stream_0_V_dout sc_in sc_lv 8 signal 0 } 
	{ inputImage_data_stream_0_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ inputImage_data_stream_0_V_read sc_out sc_logic 1 signal 0 } 
	{ inputImage_data_stream_1_V_dout sc_in sc_lv 8 signal 1 } 
	{ inputImage_data_stream_1_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ inputImage_data_stream_1_V_read sc_out sc_logic 1 signal 1 } 
	{ inputImage_data_stream_2_V_dout sc_in sc_lv 8 signal 2 } 
	{ inputImage_data_stream_2_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ inputImage_data_stream_2_V_read sc_out sc_logic 1 signal 2 } 
	{ I_enhanced_data_stream_V_din sc_out sc_lv 16 signal 3 } 
	{ I_enhanced_data_stream_V_full_n sc_in sc_logic 1 signal 3 } 
	{ I_enhanced_data_stream_V_write sc_out sc_logic 1 signal 3 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "inputImage_data_stream_0_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inputImage_data_stream_0_V", "role": "dout" }} , 
 	{ "name": "inputImage_data_stream_0_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inputImage_data_stream_0_V", "role": "empty_n" }} , 
 	{ "name": "inputImage_data_stream_0_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inputImage_data_stream_0_V", "role": "read" }} , 
 	{ "name": "inputImage_data_stream_1_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inputImage_data_stream_1_V", "role": "dout" }} , 
 	{ "name": "inputImage_data_stream_1_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inputImage_data_stream_1_V", "role": "empty_n" }} , 
 	{ "name": "inputImage_data_stream_1_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inputImage_data_stream_1_V", "role": "read" }} , 
 	{ "name": "inputImage_data_stream_2_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inputImage_data_stream_2_V", "role": "dout" }} , 
 	{ "name": "inputImage_data_stream_2_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inputImage_data_stream_2_V", "role": "empty_n" }} , 
 	{ "name": "inputImage_data_stream_2_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inputImage_data_stream_2_V", "role": "read" }} , 
 	{ "name": "I_enhanced_data_stream_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "I_enhanced_data_stream_V", "role": "din" }} , 
 	{ "name": "I_enhanced_data_stream_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "I_enhanced_data_stream_V", "role": "full_n" }} , 
 	{ "name": "I_enhanced_data_stream_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "I_enhanced_data_stream_V", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "201", "202", "203", "204", "205"],
		"CDFG" : "ex_enhancement",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "137445", "EstimateLatencyMax" : "137445",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "read_data1_U0"}],
		"OutputProcess" : [
			{"ID" : "2", "Name" : "guidedfilter204_U0"}],
		"Port" : [
			{"Name" : "inputImage_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "read_data1_U0", "Port" : "inputImage_data_stream_0_V"}]},
			{"Name" : "inputImage_data_stream_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "read_data1_U0", "Port" : "inputImage_data_stream_1_V"}]},
			{"Name" : "inputImage_data_stream_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "read_data1_U0", "Port" : "inputImage_data_stream_2_V"}]},
			{"Name" : "I_enhanced_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "guidedfilter204_U0", "Port" : "I_enhanced_data_stream_V"}]},
			{"Name" : "I_V_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "guidedfilter204_U0", "Port" : "I_V_V"},
					{"ID" : "1", "SubInstance" : "read_data1_U0", "Port" : "I_V_V"}]},
			{"Name" : "I_COPY_V_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "guidedfilter204_U0", "Port" : "I_COPY_V_V"},
					{"ID" : "1", "SubInstance" : "read_data1_U0", "Port" : "I_COPY_V_V"}]},
			{"Name" : "I_2_V_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "guidedfilter204_U0", "Port" : "I_2_V_V"},
					{"ID" : "1", "SubInstance" : "read_data1_U0", "Port" : "I_2_V_V"}]},
			{"Name" : "ONES_V_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "guidedfilter204_U0", "Port" : "ONES_V_V"},
					{"ID" : "1", "SubInstance" : "read_data1_U0", "Port" : "ONES_V_V"}]},
			{"Name" : "N_V_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "guidedfilter204_U0", "Port" : "N_V_V"}]},
			{"Name" : "mean_I_V_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "guidedfilter204_U0", "Port" : "mean_I_V_V"}]},
			{"Name" : "mean_II_V_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "guidedfilter204_U0", "Port" : "mean_II_V_V"}]},
			{"Name" : "N_COPY_V_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "guidedfilter204_U0", "Port" : "N_COPY_V_V"}]},
			{"Name" : "a_V_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "guidedfilter204_U0", "Port" : "a_V_V"}]},
			{"Name" : "b_V_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "guidedfilter204_U0", "Port" : "b_V_V"}]},
			{"Name" : "mean_A_V_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "guidedfilter204_U0", "Port" : "mean_A_V_V"}]},
			{"Name" : "mean_B_V_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "guidedfilter204_U0", "Port" : "mean_B_V_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.read_data1_U0", "Parent" : "0",
		"CDFG" : "read_data1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129603", "EstimateLatencyMax" : "129603",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "inputImage_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "inputImage_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inputImage_data_stream_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "inputImage_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inputImage_data_stream_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "inputImage_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "I_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "39", "DependentChan" : "201",
				"BlockSignal" : [
					{"Name" : "I_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "I_COPY_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "187", "DependentChan" : "202",
				"BlockSignal" : [
					{"Name" : "I_COPY_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "I_2_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "75", "DependentChan" : "203",
				"BlockSignal" : [
					{"Name" : "I_2_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ONES_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "204",
				"BlockSignal" : [
					{"Name" : "ONES_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0", "Parent" : "0", "Child" : ["3", "39", "75", "111", "115", "151", "187", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200"],
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
		"StartSource" : "1",
		"StartFifo" : "start_for_guidedfcXB_U",
		"InputProcess" : [
			{"ID" : "3", "Name" : "boxfilter200205_U0", "ReadyCount" : "boxfilter200205_U0_ap_ready_count"},
			{"ID" : "39", "Name" : "boxfilter201206_U0", "ReadyCount" : "boxfilter201206_U0_ap_ready_count"},
			{"ID" : "75", "Name" : "boxfilter202207_U0", "ReadyCount" : "boxfilter202207_U0_ap_ready_count"},
			{"ID" : "187", "Name" : "compute_I_enhanced21_U0", "ReadyCount" : "compute_I_enhanced21_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "187", "Name" : "compute_I_enhanced21_U0"}],
		"Port" : [
			{"Name" : "I_enhanced_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "187", "SubInstance" : "compute_I_enhanced21_U0", "Port" : "I_enhanced_data_stream_V"}]},
			{"Name" : "ONES_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "204",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "boxfilter200205_U0", "Port" : "ONES_V_V"}]},
			{"Name" : "N_V_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "boxfilter200205_U0", "Port" : "N_V_V"},
					{"ID" : "111", "SubInstance" : "compute_a_b208_U0", "Port" : "N_V_V"}]},
			{"Name" : "I_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "201",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "boxfilter201206_U0", "Port" : "I_V_V"}]},
			{"Name" : "mean_I_V_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "boxfilter201206_U0", "Port" : "mean_I_V_V"},
					{"ID" : "111", "SubInstance" : "compute_a_b208_U0", "Port" : "mean_I_V_V"}]},
			{"Name" : "I_2_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "203",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "boxfilter202207_U0", "Port" : "I_2_V_V"}]},
			{"Name" : "mean_II_V_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "boxfilter202207_U0", "Port" : "mean_II_V_V"},
					{"ID" : "111", "SubInstance" : "compute_a_b208_U0", "Port" : "mean_II_V_V"}]},
			{"Name" : "N_COPY_V_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "187", "SubInstance" : "compute_I_enhanced21_U0", "Port" : "N_COPY_V_V"},
					{"ID" : "111", "SubInstance" : "compute_a_b208_U0", "Port" : "N_COPY_V_V"}]},
			{"Name" : "a_V_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "compute_a_b208_U0", "Port" : "a_V_V"},
					{"ID" : "115", "SubInstance" : "boxfilter203209_U0", "Port" : "a_V_V"}]},
			{"Name" : "b_V_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "boxfilter210_U0", "Port" : "b_V_V"},
					{"ID" : "111", "SubInstance" : "compute_a_b208_U0", "Port" : "b_V_V"}]},
			{"Name" : "mean_A_V_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "187", "SubInstance" : "compute_I_enhanced21_U0", "Port" : "mean_A_V_V"},
					{"ID" : "115", "SubInstance" : "boxfilter203209_U0", "Port" : "mean_A_V_V"}]},
			{"Name" : "mean_B_V_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "boxfilter210_U0", "Port" : "mean_B_V_V"},
					{"ID" : "187", "SubInstance" : "compute_I_enhanced21_U0", "Port" : "mean_B_V_V"}]},
			{"Name" : "I_COPY_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "202",
				"SubConnect" : [
					{"ID" : "187", "SubInstance" : "compute_I_enhanced21_U0", "Port" : "I_COPY_V_V"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter200205_U0", "Parent" : "2", "Child" : ["4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38"],
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
			{"Name" : "ONES_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "204",
				"BlockSignal" : [
					{"Name" : "ONES_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "N_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "111", "DependentChan" : "190",
				"BlockSignal" : [
					{"Name" : "N_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter200205_U0.imCum_val_0_V_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter200205_U0.imCum_val_1_V_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter200205_U0.imCum_val_2_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter200205_U0.imCum_val_3_V_U", "Parent" : "3"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter200205_U0.imCum_val_4_V_U", "Parent" : "3"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter200205_U0.imCum_val_5_V_U", "Parent" : "3"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter200205_U0.imCum_val_6_V_U", "Parent" : "3"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter200205_U0.imCum_val_7_V_U", "Parent" : "3"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter200205_U0.imCum_val_8_V_U", "Parent" : "3"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter200205_U0.imCum_val_9_V_U", "Parent" : "3"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter200205_U0.imCum_val_10_V_U", "Parent" : "3"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter200205_U0.imCum_val_11_V_U", "Parent" : "3"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter200205_U0.imCum_val_12_V_U", "Parent" : "3"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter200205_U0.imCum_val_13_V_U", "Parent" : "3"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter200205_U0.imCum_val_14_V_U", "Parent" : "3"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter200205_U0.imCum_val_15_V_U", "Parent" : "3"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter200205_U0.imCum_val_16_V_U", "Parent" : "3"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter200205_U0.imCum_val_17_V_U", "Parent" : "3"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter200205_U0.imCum_val_18_V_U", "Parent" : "3"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter200205_U0.imCum_val_19_V_U", "Parent" : "3"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter200205_U0.imCum_val_20_V_U", "Parent" : "3"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter200205_U0.imCum_val_21_V_U", "Parent" : "3"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter200205_U0.imCum_val_22_V_U", "Parent" : "3"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter200205_U0.imCum_val_23_V_U", "Parent" : "3"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter200205_U0.imCum_val_24_V_U", "Parent" : "3"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter200205_U0.imCum_val_25_V_U", "Parent" : "3"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter200205_U0.imCum_val_26_V_U", "Parent" : "3"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter200205_U0.imCum_val_27_V_U", "Parent" : "3"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter200205_U0.imCum_val_28_V_U", "Parent" : "3"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter200205_U0.imCum_val_29_V_U", "Parent" : "3"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter200205_U0.imCum_val_30_V_U", "Parent" : "3"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter200205_U0.imCum_val_31_V_U", "Parent" : "3"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter200205_U0.imCum_val_32_V_U", "Parent" : "3"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter200205_U0.net_holes_detectiIfE_U27", "Parent" : "3"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter200205_U0.net_holes_detectiIfE_U28", "Parent" : "3"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter201206_U0", "Parent" : "2", "Child" : ["40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74"],
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
			{"Name" : "I_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "201",
				"BlockSignal" : [
					{"Name" : "I_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mean_I_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "111", "DependentChan" : "191",
				"BlockSignal" : [
					{"Name" : "mean_I_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter201206_U0.imCum_val_0_V_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter201206_U0.imCum_val_1_V_U", "Parent" : "39"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter201206_U0.imCum_val_2_V_U", "Parent" : "39"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter201206_U0.imCum_val_3_V_U", "Parent" : "39"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter201206_U0.imCum_val_4_V_U", "Parent" : "39"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter201206_U0.imCum_val_5_V_U", "Parent" : "39"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter201206_U0.imCum_val_6_V_U", "Parent" : "39"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter201206_U0.imCum_val_7_V_U", "Parent" : "39"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter201206_U0.imCum_val_8_V_U", "Parent" : "39"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter201206_U0.imCum_val_9_V_U", "Parent" : "39"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter201206_U0.imCum_val_10_V_U", "Parent" : "39"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter201206_U0.imCum_val_11_V_U", "Parent" : "39"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter201206_U0.imCum_val_12_V_U", "Parent" : "39"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter201206_U0.imCum_val_13_V_U", "Parent" : "39"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter201206_U0.imCum_val_14_V_U", "Parent" : "39"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter201206_U0.imCum_val_15_V_U", "Parent" : "39"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter201206_U0.imCum_val_16_V_U", "Parent" : "39"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter201206_U0.imCum_val_17_V_U", "Parent" : "39"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter201206_U0.imCum_val_18_V_U", "Parent" : "39"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter201206_U0.imCum_val_19_V_U", "Parent" : "39"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter201206_U0.imCum_val_20_V_U", "Parent" : "39"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter201206_U0.imCum_val_21_V_U", "Parent" : "39"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter201206_U0.imCum_val_22_V_U", "Parent" : "39"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter201206_U0.imCum_val_23_V_U", "Parent" : "39"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter201206_U0.imCum_val_24_V_U", "Parent" : "39"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter201206_U0.imCum_val_25_V_U", "Parent" : "39"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter201206_U0.imCum_val_26_V_U", "Parent" : "39"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter201206_U0.imCum_val_27_V_U", "Parent" : "39"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter201206_U0.imCum_val_28_V_U", "Parent" : "39"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter201206_U0.imCum_val_29_V_U", "Parent" : "39"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter201206_U0.imCum_val_30_V_U", "Parent" : "39"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter201206_U0.imCum_val_31_V_U", "Parent" : "39"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter201206_U0.imCum_val_32_V_U", "Parent" : "39"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter201206_U0.net_holes_detectiIfE_U33", "Parent" : "39"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter201206_U0.net_holes_detectiIfE_U34", "Parent" : "39"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter202207_U0", "Parent" : "2", "Child" : ["76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110"],
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
			{"Name" : "I_2_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "203",
				"BlockSignal" : [
					{"Name" : "I_2_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mean_II_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "111", "DependentChan" : "192",
				"BlockSignal" : [
					{"Name" : "mean_II_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter202207_U0.imCum_val_0_V_U", "Parent" : "75"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter202207_U0.imCum_val_1_V_U", "Parent" : "75"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter202207_U0.imCum_val_2_V_U", "Parent" : "75"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter202207_U0.imCum_val_3_V_U", "Parent" : "75"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter202207_U0.imCum_val_4_V_U", "Parent" : "75"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter202207_U0.imCum_val_5_V_U", "Parent" : "75"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter202207_U0.imCum_val_6_V_U", "Parent" : "75"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter202207_U0.imCum_val_7_V_U", "Parent" : "75"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter202207_U0.imCum_val_8_V_U", "Parent" : "75"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter202207_U0.imCum_val_9_V_U", "Parent" : "75"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter202207_U0.imCum_val_10_V_U", "Parent" : "75"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter202207_U0.imCum_val_11_V_U", "Parent" : "75"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter202207_U0.imCum_val_12_V_U", "Parent" : "75"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter202207_U0.imCum_val_13_V_U", "Parent" : "75"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter202207_U0.imCum_val_14_V_U", "Parent" : "75"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter202207_U0.imCum_val_15_V_U", "Parent" : "75"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter202207_U0.imCum_val_16_V_U", "Parent" : "75"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter202207_U0.imCum_val_17_V_U", "Parent" : "75"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter202207_U0.imCum_val_18_V_U", "Parent" : "75"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter202207_U0.imCum_val_19_V_U", "Parent" : "75"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter202207_U0.imCum_val_20_V_U", "Parent" : "75"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter202207_U0.imCum_val_21_V_U", "Parent" : "75"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter202207_U0.imCum_val_22_V_U", "Parent" : "75"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter202207_U0.imCum_val_23_V_U", "Parent" : "75"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter202207_U0.imCum_val_24_V_U", "Parent" : "75"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter202207_U0.imCum_val_25_V_U", "Parent" : "75"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter202207_U0.imCum_val_26_V_U", "Parent" : "75"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter202207_U0.imCum_val_27_V_U", "Parent" : "75"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter202207_U0.imCum_val_28_V_U", "Parent" : "75"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter202207_U0.imCum_val_29_V_U", "Parent" : "75"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter202207_U0.imCum_val_30_V_U", "Parent" : "75"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter202207_U0.imCum_val_31_V_U", "Parent" : "75"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter202207_U0.imCum_val_32_V_U", "Parent" : "75"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter202207_U0.net_holes_detectiIfE_U37", "Parent" : "75"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter202207_U0.net_holes_detectiIfE_U38", "Parent" : "75"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.compute_a_b208_U0", "Parent" : "2", "Child" : ["112", "113", "114"],
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
		"StartSource" : "3",
		"StartFifo" : "start_for_computecUB_U",
		"Port" : [
			{"Name" : "N_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "190",
				"BlockSignal" : [
					{"Name" : "N_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "N_COPY_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "187", "DependentChan" : "193",
				"BlockSignal" : [
					{"Name" : "N_COPY_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mean_I_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "39", "DependentChan" : "191",
				"BlockSignal" : [
					{"Name" : "mean_I_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mean_II_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "192",
				"BlockSignal" : [
					{"Name" : "mean_II_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "a_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "115", "DependentChan" : "194",
				"BlockSignal" : [
					{"Name" : "a_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "b_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "151", "DependentChan" : "195",
				"BlockSignal" : [
					{"Name" : "b_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.compute_a_b208_U0.net_holes_detectibNq_U41", "Parent" : "111"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.compute_a_b208_U0.net_holes_detectibNq_U42", "Parent" : "111"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.compute_a_b208_U0.net_holes_detectibOq_U43", "Parent" : "111"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter203209_U0", "Parent" : "2", "Child" : ["116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150"],
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
		"StartSource" : "111",
		"StartFifo" : "start_for_boxfiltcVB_U",
		"Port" : [
			{"Name" : "a_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "111", "DependentChan" : "194",
				"BlockSignal" : [
					{"Name" : "a_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mean_A_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "187", "DependentChan" : "196",
				"BlockSignal" : [
					{"Name" : "mean_A_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter203209_U0.imCum_val_0_V_U", "Parent" : "115"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter203209_U0.imCum_val_1_V_U", "Parent" : "115"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter203209_U0.imCum_val_2_V_U", "Parent" : "115"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter203209_U0.imCum_val_3_V_U", "Parent" : "115"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter203209_U0.imCum_val_4_V_U", "Parent" : "115"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter203209_U0.imCum_val_5_V_U", "Parent" : "115"},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter203209_U0.imCum_val_6_V_U", "Parent" : "115"},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter203209_U0.imCum_val_7_V_U", "Parent" : "115"},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter203209_U0.imCum_val_8_V_U", "Parent" : "115"},
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter203209_U0.imCum_val_9_V_U", "Parent" : "115"},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter203209_U0.imCum_val_10_V_U", "Parent" : "115"},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter203209_U0.imCum_val_11_V_U", "Parent" : "115"},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter203209_U0.imCum_val_12_V_U", "Parent" : "115"},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter203209_U0.imCum_val_13_V_U", "Parent" : "115"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter203209_U0.imCum_val_14_V_U", "Parent" : "115"},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter203209_U0.imCum_val_15_V_U", "Parent" : "115"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter203209_U0.imCum_val_16_V_U", "Parent" : "115"},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter203209_U0.imCum_val_17_V_U", "Parent" : "115"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter203209_U0.imCum_val_18_V_U", "Parent" : "115"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter203209_U0.imCum_val_19_V_U", "Parent" : "115"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter203209_U0.imCum_val_20_V_U", "Parent" : "115"},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter203209_U0.imCum_val_21_V_U", "Parent" : "115"},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter203209_U0.imCum_val_22_V_U", "Parent" : "115"},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter203209_U0.imCum_val_23_V_U", "Parent" : "115"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter203209_U0.imCum_val_24_V_U", "Parent" : "115"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter203209_U0.imCum_val_25_V_U", "Parent" : "115"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter203209_U0.imCum_val_26_V_U", "Parent" : "115"},
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter203209_U0.imCum_val_27_V_U", "Parent" : "115"},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter203209_U0.imCum_val_28_V_U", "Parent" : "115"},
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter203209_U0.imCum_val_29_V_U", "Parent" : "115"},
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter203209_U0.imCum_val_30_V_U", "Parent" : "115"},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter203209_U0.imCum_val_31_V_U", "Parent" : "115"},
	{"ID" : "148", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter203209_U0.imCum_val_32_V_U", "Parent" : "115"},
	{"ID" : "149", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter203209_U0.net_holes_detectiIfE_U52", "Parent" : "115"},
	{"ID" : "150", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter203209_U0.net_holes_detectiIfE_U53", "Parent" : "115"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter210_U0", "Parent" : "2", "Child" : ["152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186"],
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
		"StartSource" : "111",
		"StartFifo" : "start_for_boxfiltcWB_U",
		"Port" : [
			{"Name" : "b_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "111", "DependentChan" : "195",
				"BlockSignal" : [
					{"Name" : "b_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mean_B_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "187", "DependentChan" : "197",
				"BlockSignal" : [
					{"Name" : "mean_B_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter210_U0.imCum_val_0_V_U", "Parent" : "151"},
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter210_U0.imCum_val_1_V_U", "Parent" : "151"},
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter210_U0.imCum_val_2_V_U", "Parent" : "151"},
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter210_U0.imCum_val_3_V_U", "Parent" : "151"},
	{"ID" : "156", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter210_U0.imCum_val_4_V_U", "Parent" : "151"},
	{"ID" : "157", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter210_U0.imCum_val_5_V_U", "Parent" : "151"},
	{"ID" : "158", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter210_U0.imCum_val_6_V_U", "Parent" : "151"},
	{"ID" : "159", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter210_U0.imCum_val_7_V_U", "Parent" : "151"},
	{"ID" : "160", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter210_U0.imCum_val_8_V_U", "Parent" : "151"},
	{"ID" : "161", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter210_U0.imCum_val_9_V_U", "Parent" : "151"},
	{"ID" : "162", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter210_U0.imCum_val_10_V_U", "Parent" : "151"},
	{"ID" : "163", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter210_U0.imCum_val_11_V_U", "Parent" : "151"},
	{"ID" : "164", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter210_U0.imCum_val_12_V_U", "Parent" : "151"},
	{"ID" : "165", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter210_U0.imCum_val_13_V_U", "Parent" : "151"},
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter210_U0.imCum_val_14_V_U", "Parent" : "151"},
	{"ID" : "167", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter210_U0.imCum_val_15_V_U", "Parent" : "151"},
	{"ID" : "168", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter210_U0.imCum_val_16_V_U", "Parent" : "151"},
	{"ID" : "169", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter210_U0.imCum_val_17_V_U", "Parent" : "151"},
	{"ID" : "170", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter210_U0.imCum_val_18_V_U", "Parent" : "151"},
	{"ID" : "171", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter210_U0.imCum_val_19_V_U", "Parent" : "151"},
	{"ID" : "172", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter210_U0.imCum_val_20_V_U", "Parent" : "151"},
	{"ID" : "173", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter210_U0.imCum_val_21_V_U", "Parent" : "151"},
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter210_U0.imCum_val_22_V_U", "Parent" : "151"},
	{"ID" : "175", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter210_U0.imCum_val_23_V_U", "Parent" : "151"},
	{"ID" : "176", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter210_U0.imCum_val_24_V_U", "Parent" : "151"},
	{"ID" : "177", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter210_U0.imCum_val_25_V_U", "Parent" : "151"},
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter210_U0.imCum_val_26_V_U", "Parent" : "151"},
	{"ID" : "179", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter210_U0.imCum_val_27_V_U", "Parent" : "151"},
	{"ID" : "180", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter210_U0.imCum_val_28_V_U", "Parent" : "151"},
	{"ID" : "181", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter210_U0.imCum_val_29_V_U", "Parent" : "151"},
	{"ID" : "182", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter210_U0.imCum_val_30_V_U", "Parent" : "151"},
	{"ID" : "183", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter210_U0.imCum_val_31_V_U", "Parent" : "151"},
	{"ID" : "184", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter210_U0.imCum_val_32_V_U", "Parent" : "151"},
	{"ID" : "185", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter210_U0.net_holes_detectiIfE_U56", "Parent" : "151"},
	{"ID" : "186", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.boxfilter210_U0.net_holes_detectiIfE_U57", "Parent" : "151"},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.compute_I_enhanced21_U0", "Parent" : "2", "Child" : ["188", "189"],
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
			{"Name" : "mean_A_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "115", "DependentChan" : "196",
				"BlockSignal" : [
					{"Name" : "mean_A_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mean_B_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "151", "DependentChan" : "197",
				"BlockSignal" : [
					{"Name" : "mean_B_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "N_COPY_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "111", "DependentChan" : "193",
				"BlockSignal" : [
					{"Name" : "N_COPY_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "I_COPY_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "202",
				"BlockSignal" : [
					{"Name" : "I_COPY_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "188", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.compute_I_enhanced21_U0.net_holes_detecticTB_U60", "Parent" : "187"},
	{"ID" : "189", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.compute_I_enhanced21_U0.net_holes_detectibNq_U61", "Parent" : "187"},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.N_V_V_U", "Parent" : "2"},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.mean_I_V_V_U", "Parent" : "2"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.mean_II_V_V_U", "Parent" : "2"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.N_COPY_V_V_U", "Parent" : "2"},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.a_V_V_U", "Parent" : "2"},
	{"ID" : "195", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.b_V_V_U", "Parent" : "2"},
	{"ID" : "196", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.mean_A_V_V_U", "Parent" : "2"},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.mean_B_V_V_U", "Parent" : "2"},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.start_for_computecUB_U", "Parent" : "2"},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.start_for_boxfiltcVB_U", "Parent" : "2"},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.guidedfilter204_U0.start_for_boxfiltcWB_U", "Parent" : "2"},
	{"ID" : "201", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.I_V_V_U", "Parent" : "0"},
	{"ID" : "202", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.I_COPY_V_V_U", "Parent" : "0"},
	{"ID" : "203", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.I_2_V_V_U", "Parent" : "0"},
	{"ID" : "204", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ONES_V_V_U", "Parent" : "0"},
	{"ID" : "205", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_guidedfcXB_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ex_enhancement {
		inputImage_data_stream_0_V {Type I LastRead 2 FirstWrite -1}
		inputImage_data_stream_1_V {Type I LastRead 2 FirstWrite -1}
		inputImage_data_stream_2_V {Type I LastRead 2 FirstWrite -1}
		I_enhanced_data_stream_V {Type O LastRead -1 FirstWrite 54}
		I_V_V {Type IO LastRead -1 FirstWrite -1}
		I_COPY_V_V {Type IO LastRead -1 FirstWrite -1}
		I_2_V_V {Type IO LastRead -1 FirstWrite -1}
		ONES_V_V {Type IO LastRead -1 FirstWrite -1}
		N_V_V {Type IO LastRead -1 FirstWrite -1}
		mean_I_V_V {Type IO LastRead -1 FirstWrite -1}
		mean_II_V_V {Type IO LastRead -1 FirstWrite -1}
		N_COPY_V_V {Type IO LastRead -1 FirstWrite -1}
		a_V_V {Type IO LastRead -1 FirstWrite -1}
		b_V_V {Type IO LastRead -1 FirstWrite -1}
		mean_A_V_V {Type IO LastRead -1 FirstWrite -1}
		mean_B_V_V {Type IO LastRead -1 FirstWrite -1}}
	read_data1 {
		inputImage_data_stream_0_V {Type I LastRead 2 FirstWrite -1}
		inputImage_data_stream_1_V {Type I LastRead 2 FirstWrite -1}
		inputImage_data_stream_2_V {Type I LastRead 2 FirstWrite -1}
		I_V_V {Type O LastRead -1 FirstWrite 3}
		I_COPY_V_V {Type O LastRead -1 FirstWrite 3}
		I_2_V_V {Type O LastRead -1 FirstWrite 3}
		ONES_V_V {Type O LastRead -1 FirstWrite 3}}
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
	{"Name" : "Latency", "Min" : "137445", "Max" : "137445"}
	, {"Name" : "Interval", "Min" : "137284", "Max" : "137284"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	inputImage_data_stream_0_V { ap_fifo {  { inputImage_data_stream_0_V_dout fifo_data 0 8 }  { inputImage_data_stream_0_V_empty_n fifo_status 0 1 }  { inputImage_data_stream_0_V_read fifo_update 1 1 } } }
	inputImage_data_stream_1_V { ap_fifo {  { inputImage_data_stream_1_V_dout fifo_data 0 8 }  { inputImage_data_stream_1_V_empty_n fifo_status 0 1 }  { inputImage_data_stream_1_V_read fifo_update 1 1 } } }
	inputImage_data_stream_2_V { ap_fifo {  { inputImage_data_stream_2_V_dout fifo_data 0 8 }  { inputImage_data_stream_2_V_empty_n fifo_status 0 1 }  { inputImage_data_stream_2_V_read fifo_update 1 1 } } }
	I_enhanced_data_stream_V { ap_fifo {  { I_enhanced_data_stream_V_din fifo_data 1 16 }  { I_enhanced_data_stream_V_full_n fifo_status 0 1 }  { I_enhanced_data_stream_V_write fifo_update 1 1 } } }
}

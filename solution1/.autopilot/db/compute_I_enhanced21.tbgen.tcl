set moduleName compute_I_enhanced21
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
set C_modelName {compute_I_enhanced21}
set C_modelType { void 0 }
set C_modelArgList {
	{ I_enhanced_data_stream_V int 16 regular {fifo 1 volatile }  }
	{ mean_A_V_V int 32 regular {fifo 0 volatile } {global 0}  }
	{ mean_B_V_V int 32 regular {fifo 0 volatile } {global 0}  }
	{ N_COPY_V_V int 32 regular {fifo 0 volatile } {global 0}  }
	{ I_COPY_V_V int 32 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "I_enhanced_data_stream_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mean_A_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mean_B_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "N_COPY_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "I_COPY_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ I_enhanced_data_stream_V_din sc_out sc_lv 16 signal 0 } 
	{ I_enhanced_data_stream_V_full_n sc_in sc_logic 1 signal 0 } 
	{ I_enhanced_data_stream_V_write sc_out sc_logic 1 signal 0 } 
	{ mean_A_V_V_dout sc_in sc_lv 32 signal 1 } 
	{ mean_A_V_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ mean_A_V_V_read sc_out sc_logic 1 signal 1 } 
	{ mean_B_V_V_dout sc_in sc_lv 32 signal 2 } 
	{ mean_B_V_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ mean_B_V_V_read sc_out sc_logic 1 signal 2 } 
	{ N_COPY_V_V_dout sc_in sc_lv 32 signal 3 } 
	{ N_COPY_V_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ N_COPY_V_V_read sc_out sc_logic 1 signal 3 } 
	{ I_COPY_V_V_dout sc_in sc_lv 32 signal 4 } 
	{ I_COPY_V_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ I_COPY_V_V_read sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "I_enhanced_data_stream_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "I_enhanced_data_stream_V", "role": "din" }} , 
 	{ "name": "I_enhanced_data_stream_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "I_enhanced_data_stream_V", "role": "full_n" }} , 
 	{ "name": "I_enhanced_data_stream_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "I_enhanced_data_stream_V", "role": "write" }} , 
 	{ "name": "mean_A_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mean_A_V_V", "role": "dout" }} , 
 	{ "name": "mean_A_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mean_A_V_V", "role": "empty_n" }} , 
 	{ "name": "mean_A_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mean_A_V_V", "role": "read" }} , 
 	{ "name": "mean_B_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mean_B_V_V", "role": "dout" }} , 
 	{ "name": "mean_B_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mean_B_V_V", "role": "empty_n" }} , 
 	{ "name": "mean_B_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mean_B_V_V", "role": "read" }} , 
 	{ "name": "N_COPY_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "N_COPY_V_V", "role": "dout" }} , 
 	{ "name": "N_COPY_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "N_COPY_V_V", "role": "empty_n" }} , 
 	{ "name": "N_COPY_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "N_COPY_V_V", "role": "read" }} , 
 	{ "name": "I_COPY_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "I_COPY_V_V", "role": "dout" }} , 
 	{ "name": "I_COPY_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "I_COPY_V_V", "role": "empty_n" }} , 
 	{ "name": "I_COPY_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "I_COPY_V_V", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
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
			{"Name" : "mean_A_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "mean_A_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mean_B_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "mean_B_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "N_COPY_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "N_COPY_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "I_COPY_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "I_COPY_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.net_holes_detecticTB_U60", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.net_holes_detectibNq_U61", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute_I_enhanced21 {
		I_enhanced_data_stream_V {Type O LastRead -1 FirstWrite 54}
		mean_A_V_V {Type I LastRead 2 FirstWrite -1}
		mean_B_V_V {Type I LastRead 2 FirstWrite -1}
		N_COPY_V_V {Type I LastRead 2 FirstWrite -1}
		I_COPY_V_V {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129654", "Max" : "129654"}
	, {"Name" : "Interval", "Min" : "129654", "Max" : "129654"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	I_enhanced_data_stream_V { ap_fifo {  { I_enhanced_data_stream_V_din fifo_data 1 16 }  { I_enhanced_data_stream_V_full_n fifo_status 0 1 }  { I_enhanced_data_stream_V_write fifo_update 1 1 } } }
	mean_A_V_V { ap_fifo {  { mean_A_V_V_dout fifo_data 0 32 }  { mean_A_V_V_empty_n fifo_status 0 1 }  { mean_A_V_V_read fifo_update 1 1 } } }
	mean_B_V_V { ap_fifo {  { mean_B_V_V_dout fifo_data 0 32 }  { mean_B_V_V_empty_n fifo_status 0 1 }  { mean_B_V_V_read fifo_update 1 1 } } }
	N_COPY_V_V { ap_fifo {  { N_COPY_V_V_dout fifo_data 0 32 }  { N_COPY_V_V_empty_n fifo_status 0 1 }  { N_COPY_V_V_read fifo_update 1 1 } } }
	I_COPY_V_V { ap_fifo {  { I_COPY_V_V_dout fifo_data 0 32 }  { I_COPY_V_V_empty_n fifo_status 0 1 }  { I_COPY_V_V_read fifo_update 1 1 } } }
}

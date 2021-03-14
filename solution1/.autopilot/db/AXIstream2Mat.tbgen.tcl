set moduleName AXIstream2Mat
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
set C_modelName {AXIstream2Mat}
set C_modelType { void 0 }
set C_modelArgList {
	{ my_image_data_stream_0_V int 8 regular {fifo 1 volatile }  }
	{ my_image_data_stream_1_V int 8 regular {fifo 1 volatile }  }
	{ my_image_data_stream_2_V int 8 regular {fifo 1 volatile }  }
	{ LI_V_V int 32 regular {fifo 0 volatile } {global 0}  }
	{ help_V_V int 32 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "my_image_data_stream_0_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "my_image_data_stream_1_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "my_image_data_stream_2_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "LI_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "help_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ my_image_data_stream_0_V_din sc_out sc_lv 8 signal 0 } 
	{ my_image_data_stream_0_V_full_n sc_in sc_logic 1 signal 0 } 
	{ my_image_data_stream_0_V_write sc_out sc_logic 1 signal 0 } 
	{ my_image_data_stream_1_V_din sc_out sc_lv 8 signal 1 } 
	{ my_image_data_stream_1_V_full_n sc_in sc_logic 1 signal 1 } 
	{ my_image_data_stream_1_V_write sc_out sc_logic 1 signal 1 } 
	{ my_image_data_stream_2_V_din sc_out sc_lv 8 signal 2 } 
	{ my_image_data_stream_2_V_full_n sc_in sc_logic 1 signal 2 } 
	{ my_image_data_stream_2_V_write sc_out sc_logic 1 signal 2 } 
	{ LI_V_V_dout sc_in sc_lv 32 signal 3 } 
	{ LI_V_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ LI_V_V_read sc_out sc_logic 1 signal 3 } 
	{ help_V_V_dout sc_in sc_lv 32 signal 4 } 
	{ help_V_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ help_V_V_read sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "my_image_data_stream_0_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "my_image_data_stream_0_V", "role": "din" }} , 
 	{ "name": "my_image_data_stream_0_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "my_image_data_stream_0_V", "role": "full_n" }} , 
 	{ "name": "my_image_data_stream_0_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "my_image_data_stream_0_V", "role": "write" }} , 
 	{ "name": "my_image_data_stream_1_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "my_image_data_stream_1_V", "role": "din" }} , 
 	{ "name": "my_image_data_stream_1_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "my_image_data_stream_1_V", "role": "full_n" }} , 
 	{ "name": "my_image_data_stream_1_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "my_image_data_stream_1_V", "role": "write" }} , 
 	{ "name": "my_image_data_stream_2_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "my_image_data_stream_2_V", "role": "din" }} , 
 	{ "name": "my_image_data_stream_2_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "my_image_data_stream_2_V", "role": "full_n" }} , 
 	{ "name": "my_image_data_stream_2_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "my_image_data_stream_2_V", "role": "write" }} , 
 	{ "name": "LI_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "LI_V_V", "role": "dout" }} , 
 	{ "name": "LI_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LI_V_V", "role": "empty_n" }} , 
 	{ "name": "LI_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "LI_V_V", "role": "read" }} , 
 	{ "name": "help_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "help_V_V", "role": "dout" }} , 
 	{ "name": "help_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "help_V_V", "role": "empty_n" }} , 
 	{ "name": "help_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "help_V_V", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "AXIstream2Mat",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129602", "EstimateLatencyMax" : "129602",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "my_image_data_stream_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "my_image_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "my_image_data_stream_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "my_image_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "my_image_data_stream_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "my_image_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "LI_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "LI_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "help_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "help_V_V_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	AXIstream2Mat {
		my_image_data_stream_0_V {Type O LastRead -1 FirstWrite 2}
		my_image_data_stream_1_V {Type O LastRead -1 FirstWrite 2}
		my_image_data_stream_2_V {Type O LastRead -1 FirstWrite 2}
		LI_V_V {Type I LastRead 2 FirstWrite -1}
		help_V_V {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129602", "Max" : "129602"}
	, {"Name" : "Interval", "Min" : "129602", "Max" : "129602"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	my_image_data_stream_0_V { ap_fifo {  { my_image_data_stream_0_V_din fifo_data 1 8 }  { my_image_data_stream_0_V_full_n fifo_status 0 1 }  { my_image_data_stream_0_V_write fifo_update 1 1 } } }
	my_image_data_stream_1_V { ap_fifo {  { my_image_data_stream_1_V_din fifo_data 1 8 }  { my_image_data_stream_1_V_full_n fifo_status 0 1 }  { my_image_data_stream_1_V_write fifo_update 1 1 } } }
	my_image_data_stream_2_V { ap_fifo {  { my_image_data_stream_2_V_din fifo_data 1 8 }  { my_image_data_stream_2_V_full_n fifo_status 0 1 }  { my_image_data_stream_2_V_write fifo_update 1 1 } } }
	LI_V_V { ap_fifo {  { LI_V_V_dout fifo_data 0 32 }  { LI_V_V_empty_n fifo_status 0 1 }  { LI_V_V_read fifo_update 1 1 } } }
	help_V_V { ap_fifo {  { help_V_V_dout fifo_data 0 32 }  { help_V_V_empty_n fifo_status 0 1 }  { help_V_V_read fifo_update 1 1 } } }
}

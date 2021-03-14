set moduleName mat2gray
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
set C_modelName {mat2gray}
set C_modelType { void 0 }
set C_modelArgList {
	{ M_data_stream_V int 16 regular {fifo 0 volatile }  }
	{ I_data_stream_V int 16 regular {fifo 1 volatile }  }
	{ min_value int 16 regular {fifo 0}  }
	{ max_value int 16 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "M_data_stream_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "I_data_stream_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "min_value", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "max_value", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
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
	{ M_data_stream_V_dout sc_in sc_lv 16 signal 0 } 
	{ M_data_stream_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ M_data_stream_V_read sc_out sc_logic 1 signal 0 } 
	{ I_data_stream_V_din sc_out sc_lv 16 signal 1 } 
	{ I_data_stream_V_full_n sc_in sc_logic 1 signal 1 } 
	{ I_data_stream_V_write sc_out sc_logic 1 signal 1 } 
	{ min_value_dout sc_in sc_lv 16 signal 2 } 
	{ min_value_empty_n sc_in sc_logic 1 signal 2 } 
	{ min_value_read sc_out sc_logic 1 signal 2 } 
	{ max_value_dout sc_in sc_lv 16 signal 3 } 
	{ max_value_empty_n sc_in sc_logic 1 signal 3 } 
	{ max_value_read sc_out sc_logic 1 signal 3 } 
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
 	{ "name": "M_data_stream_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "M_data_stream_V", "role": "dout" }} , 
 	{ "name": "M_data_stream_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_data_stream_V", "role": "empty_n" }} , 
 	{ "name": "M_data_stream_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "M_data_stream_V", "role": "read" }} , 
 	{ "name": "I_data_stream_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "I_data_stream_V", "role": "din" }} , 
 	{ "name": "I_data_stream_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "I_data_stream_V", "role": "full_n" }} , 
 	{ "name": "I_data_stream_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "I_data_stream_V", "role": "write" }} , 
 	{ "name": "min_value_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "min_value", "role": "dout" }} , 
 	{ "name": "min_value_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "min_value", "role": "empty_n" }} , 
 	{ "name": "min_value_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "min_value", "role": "read" }} , 
 	{ "name": "max_value_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "max_value", "role": "dout" }} , 
 	{ "name": "max_value_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_value", "role": "empty_n" }} , 
 	{ "name": "max_value_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max_value", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "mat2gray",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129655", "EstimateLatencyMax" : "129655",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "M_data_stream_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "M_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "I_data_stream_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "I_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "min_value", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "min_value_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "max_value", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "max_value_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.net_holes_detectidhF_U154", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mat2gray {
		M_data_stream_V {Type I LastRead 2 FirstWrite -1}
		I_data_stream_V {Type O LastRead -1 FirstWrite 55}
		min_value {Type I LastRead 0 FirstWrite -1}
		max_value {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129655", "Max" : "129655"}
	, {"Name" : "Interval", "Min" : "129655", "Max" : "129655"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	M_data_stream_V { ap_fifo {  { M_data_stream_V_dout fifo_data 0 16 }  { M_data_stream_V_empty_n fifo_status 0 1 }  { M_data_stream_V_read fifo_update 1 1 } } }
	I_data_stream_V { ap_fifo {  { I_data_stream_V_din fifo_data 1 16 }  { I_data_stream_V_full_n fifo_status 0 1 }  { I_data_stream_V_write fifo_update 1 1 } } }
	min_value { ap_fifo {  { min_value_dout fifo_data 0 16 }  { min_value_empty_n fifo_status 0 1 }  { min_value_read fifo_update 1 1 } } }
	max_value { ap_fifo {  { max_value_dout fifo_data 0 16 }  { max_value_empty_n fifo_status 0 1 }  { max_value_read fifo_update 1 1 } } }
}

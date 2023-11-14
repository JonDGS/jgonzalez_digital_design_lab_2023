module top(input logic clk, reset,
output logic [15:0] WriteData, DataAdr,
output logic MemWrite);

	logic [31:0] PC, Instr,ReadData;
	logic wren;
	logic [7:0] data_wr,data, addr_wr, addr_arm;
	
	// instantiate processor and memories
	
	arm arm(clk, reset, PC, Instr, MemWrite, DataAdr,WriteData, ReadData);
	
	ram1 ram (DataAdr,clk,WriteData,MemWrite,ReadData );
	
	imem imem(PC, Instr);
	//dmem dmem(clk, MemWrite, DataAdr, WriteData, ReadData);
	
	//write_mem wmem (btn,wren, addr_wr,data_wr);
	
	//mux_21 mux_addr(addr_arm,addr_wr,sel,DataAdr);
	
endmodule
module top(input logic clk, reset,sel,
input [2:0]btn,
output logic [7:0] WriteData, DataAdr,
output logic MemWrite);

	logic [31:0] PC, Instr,ReadData;
	logic wren;
	logic [7:0] data_wr,data, addr_wr, usedAddr;
	
	// instantiate processor and memories
	
	arm arm(clk, reset, PC, Instr, MemWrite, DataAdr,WriteData, ReadData);
	
	//ram1 ram (DataAdr,clk,WriteData,MemWrite,ReadData );
	topRam ram (clk, reset,sel, btn, DataAdr,WriteData, ReadData,usedAddr);
	
	imem imem(PC, Instr);
	//dmem dmem(clk, MemWrite, DataAdr, WriteData, ReadData);
	
	//write_mem wmem (btn,wren, addr_wr,data_wr);
	
	
	
endmodule
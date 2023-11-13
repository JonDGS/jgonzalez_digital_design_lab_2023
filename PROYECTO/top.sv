module top(input logic clk, reset, input logic [2:0] btn,
output logic [31:0] WriteData, DataAdr,
output logic MemWrite);

	logic [31:0] PC, Instr, ReadData;
	logic wren;
	logic [15:0] data, addr_wr, addr_ram;
	
	// instantiate processor and memories
	
	arm arm(clk, reset, PC, Instr, MemWrite, DataAdr,WriteData, ReadData);
	
	ram1 ram (addr_ram,clk,data,MemWrite,ReadData );
	
	imem imem(PC, Instr);
	//dmem dmem(clk, MemWrite, DataAdr, WriteData, ReadData);
	
	
	write_mem wmem (btn,wren, addr_wr,data);
	
	mux_21 mux_addr(addr_wr,DataAdr,reset,addr_ram);
	
endmodule
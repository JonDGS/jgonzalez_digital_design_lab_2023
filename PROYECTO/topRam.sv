module topRam(input logic clk, rst,sel,
				  input logic [2:0] btn,
				  input [13:0] armAdress,
				  input [7:0] dataArm,
				  output [7:0] q,
				  output [13:0] dataAddress);
				  
	logic wren, seconds,address,DataAdr,dataFinal;
	
	mux_21 mux_addr(armAdress,address,sel,DataAdr);
	mux_21 mux_data(dataArm,dataWrite,sel,dataFinal);

	ram1 mem(DataAdr, clk, dataFinal, wren, q);

	write_mem escribir(btn, wren, address, dataWrite);
	assign dataAddress=DataAdr;

endmodule
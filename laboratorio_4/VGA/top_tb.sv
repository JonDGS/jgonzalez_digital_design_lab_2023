`timescale 1ns / 1ps

module top_tb;

	reg clk = 0;
	wire Hsync;
	wire Vsync;
	wire [7:0] Red;
	wire [7:0] Green;
	wire [7:0] Blue;
	
	top UUT (clk, Hsync, Vsync, Red, Green, Blue);
	
	always #5 clk = ~clk;
endmodule

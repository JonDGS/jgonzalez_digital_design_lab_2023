module vga_tb();

	logic clk = 0;
	logic vga_clk = 0;
	wire Hsync;
	wire Vsync;
	wire VGA_Sync;
	wire VGA_Blank;
	wire [7:0] Red;
	wire [7:0] Green;
	wire [7:0] Blue;
	
	vga v (clk, vga_clk, Hsync, Vsync, VGA_Sync, VGA_Blank, Red, Green, Blue);
	
	always #5 clk = ~clk;
	
endmodule
	
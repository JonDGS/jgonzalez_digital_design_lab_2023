module top
		(
			input clk,
			output logic Hsync,
			output logic Vsync,
			output logic VGA_Sync,
			output logic Sync_Blank,
			output [7:0] Red,
			output [7:0] Green,
			output [7:0] Blue
		);
		
	logic clk_25MHz;
	wire enable_V_Counter;
	reg [10:0] H_Counter;
	reg [10:0] V_Counter;
	
//	ClockGenerator clkGen (.clk_in(clk), .clk_out(clk_25MHz));

	divisorClock clkGen (clk, clk_25MHz);
	
	vga_controller vga_c (clk, Hsync, Vsync, VGA_Sync, Sync_Blank, H_Counter, V_Counter);
	
	assign Red = (H_Counter < 784 && H_Counter > 143 && V_Counter < 515 && V_Counter > 35) ? 8'hF:8'h0;
	assign Green = (H_Counter < 784 && H_Counter > 143 && V_Counter < 515 && V_Counter > 35) ? 8'hF:8'h0;
	assign Blue = (H_Counter < 784 && H_Counter > 143 && V_Counter < 515 && V_Counter > 35) ? 8'hF:8'h0;
	
endmodule

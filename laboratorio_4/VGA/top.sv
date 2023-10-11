`timescale 1ns / 1ps

module top
		(
			input clk,
			output Hsync,
			output Vsync,
			output [7:0] Red,
			output [7:0] Green,
			output [7:0] Blue
		);
		
	logic clk_25MHz;
	wire enable_V_Counter;
	wire [15:0] H_Count_Value;
	wire [15:0] V_Count_Value;
	
	ClockGenerator clkGen (.clk_in(clk), .clk_out(clk_25MHz));
	horizontal_counter HC (.clk_25MHz(clk_25MHz), .enable_V_Counter(enable_V_Counter), .H_Count_Value(H_Count_Value));
	vertical_counter VC (.clk_25MHz(clk_25MHz), .enable_V_Counter(enable_V_Counter), .V_Count_Value(V_Count_Value));
	
	assign Hsync = (H_Count_Value < 96) ? 1'b1:1'b0;
	assign Vsync = (V_Count_Value < 2) ? 1'b1:1'b0;
	
	assign Red = (H_Count_Value < 784 && H_Count_Value > 143 && V_Count_Value < 515 && V_Count_Value > 35) ? 8'hF:8'h0;
	assign Green = (H_Count_Value < 784 && H_Count_Value > 143 && V_Count_Value < 515 && V_Count_Value > 35) ? 8'hF:8'h0;
	assign Blue = (H_Count_Value < 784 && H_Count_Value > 143 && V_Count_Value < 515 && V_Count_Value > 35) ? 8'hF:8'h0;
	
endmodule

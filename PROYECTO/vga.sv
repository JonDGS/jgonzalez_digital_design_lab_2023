module vga(
			  input logic clk,
			  output logic vgaclk,
			  output logic hsync, vsync,
			  output logic sync_b, blank_b,
			  output logic unsigned [7:0] r_out, g_out, b_out,
			  output reg [15:0] readAddress, posoffset = 0,
			  output reg rst,
			  output logic hold,
			  input reg switch
			  );
	
	pll vgapll(clk, vgaclk);
	
	/*module ram1 (
	address,
	clock,
	data,
	wren,
	q);*/
	
	reg [7:0] x, y;
	reg [7:0] pixelValue;

	always_ff @(posedge vgaclk) begin

		if (switch == 0) begin
			posoffset <= readAddress + 2;
		end else begin
			posoffset <= readAddress + 2 + 10001;
		end

	end
	
	vgaController vgaCont(vgaclk, hsync, vsync, sync_b, blank_b, rst, hold, x, y);
	
	vgaMatrix #(200) vgaMx(vgaclk, rst, hold, x, y, pixelValue, readAddress, r_out, g_out, b_out);
	
	ram1 videomemory (.address(posoffset), .clock(vgaclk), .wren(0), .q(pixelValue));
	
endmodule

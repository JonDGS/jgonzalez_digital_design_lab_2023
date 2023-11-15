module vga(
			  input logic clk,
			  output logic vgaclk,
			  output logic hsync, vsync,
			  output logic sync_b, blank_b,
			  output logic unsigned [7:0] r_out, g_out, b_out,
			  output reg [15:0] readAddress = 0
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
	
	vgaController vgaCont(vgaclk, hsync, vsync, sync_b, blank_b, x, y);
	
	vgaMatrix #(200) vgaMx(x, y, pixelValue, readAddress, r_out, g_out, b_out);
	
	ram1 videomemory (.address(readAddress), .clock(vgaclk), .wren(0), .q(pixelValue));
	
endmodule

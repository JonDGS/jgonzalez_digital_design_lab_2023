module vga(
			  input logic clk,
			  input logic wr_enable,
			  input logic posX, posY,
			  input logic r_in, g_in, b_in,
			  output logic vgaclk,
			  output logic hsync, vsync,
			  output logic sync_b, blank_b,
			  output logic [7:0] r_out, g_out, b_out
			  );
			  
	logic [9:0] x, y;
	
	pll vgapll(clk, vgaclk);
	
	vgaController vgaCont(vgaclk, hsync, vsync, sync_b, blank_b, x, y);

	vgaGrid grid(.x(x),
					 .y(y), 
					 .posX(posX), 
					 .posY(posY), 
					 .wr_enable(wr_enable), 
					 .r_in(r_in), 
					 .g_in(g_in), 
					 .b_in(b_in), 
					 .r_out(r_out), 
					 .g_out(g_out), 
					 .b_out(b_out));
	
endmodule

module main(
				
				input logic clk,
				input logic reset,
				input logic esBomba, initButton, btn_up_down, btn_left_right, btn_flag, btn_select,
				input [3:0] bombas, // Entrada para configurar la cantidad de bombas
				output logic [7:0] r_out, g_out, b_out
				
				);
				
				reg [3:0] matrix [7:0][7:0];
				logic vga_clk;
				logic hsync;
				logic vsync;
				logic sync_b;
				logic blank_b;
				logic wr_enable;
				logic [3:0] code;
				logic [7:0] r_in, g_in, b_in;
				reg [2:0] cursor_x, cursor_y;
				
				assign code = matrix[cursor_x][cursor_y];
				
				logic_buscaminas lb(vga_clk, reset, esBomba, initButton, btn_up_down, btn_left_right, btn_flag, btn_select, bombas, cursor_x, cursor_y, wr_enable);
				
				random_matrix rm(bombas, matrix);
				
				decoColor dC(code, r_in, g_in, b_in);
				
				vga vga0(clk, wr_enable, cursor_x, cursor_y, r_in, g_in, b_in, vga_clk, hsync, vsync, sync_b, blank_b, r_out, g_out, b_out);
endmodule

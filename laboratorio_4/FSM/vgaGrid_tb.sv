module vgaGrid_tb;
  
  // Define test inputs
  logic clk = 0;
  logic clk_out = 0;
  logic [9:0] x, y;
  logic [3:0] posX, posY;
  logic wr_enable = 0;
  
  // Define test outputs
  logic [7:0] r_in, g_in, b_in;
  
  // Define test outputs
  logic [7:0] r, g, b;
  
  //Square color test
  reg [7:0] sqr_color [7:0][7:0][2:0];
  
  module pll (
    input logic inclk0,    // Señal de reloj de entrada
    output logic c0        // Señal de reloj de salida
);

    logic toggle;
	 
	 initial begin
		toggle = 0;
	 end


    // Flip-flop para dividir por 2
    always @(posedge inclk0) begin
        toggle <= ~toggle;
    end

    // Salida es el valor de toggle, que cambia con cada flanco de subida de inclk0
    assign c0 = toggle;

endmodule
  
  pll converter(clk, clk_out);
  
  
  // Instantiate the module under test
  vgaGrid dut(
				  .clk(clk_out),
				  .x(x),
				  .y(y),
				  .posX(posX),
				  .posY(posY),
				  .wr_enable(wr_enable),
				  .r_in(r_in),
				  .g_in(g_in),
				  .b_in(b_in),
				  .r_out(r),
				  .g_out(g),
				  .b_out(b));
  
  // Generate a clock signal
  always #5 clk = ~clk;
  
  initial begin
	$dumpvars(0, dut);
  
  // Generate test stimuli
  begin
  
    for (int i = 0; i < 8; i++) begin
		for (int j = 0; j < 8; j++) begin
		 // Set the color for this row
			 case (i)
				  0: begin
					  sqr_color[i][j][0] <= 8'hFF; // Red
					  sqr_color[i][j][1] <= 8'h00;
					  sqr_color[i][j][2] <= 8'h00;
				  end
				  1: begin
					  sqr_color[i][j][0] <= 8'h00; // Green
					  sqr_color[i][j][1] <= 8'hFF;
					  sqr_color[i][j][2] <= 8'h00;
				  end
				  2: begin
					  sqr_color[i][j][0] <= 8'h00; // Blue
					  sqr_color[i][j][1] <= 8'h00;
					  sqr_color[i][j][2] <= 8'hFF;
				  end
				  3: begin
					  sqr_color[i][j][0] <= 8'hFF; // Yellow
					  sqr_color[i][j][1] <= 8'hFF;
					  sqr_color[i][j][2] <= 8'h00;
				  end
				  4: begin
					  sqr_color[i][j][0] <= 8'hFF; // Magenta
					  sqr_color[i][j][1] <= 8'h00;
					  sqr_color[i][j][2] <= 8'hFF;
				  end
				  5: begin
					  sqr_color[i][j][0] <= 8'h00; // Cyan
					  sqr_color[i][j][1] <= 8'hFF;
					  sqr_color[i][j][2] <= 8'hFF;
				  end
				  default: begin
					  sqr_color[i][j][0] <= 8'h80; // Gray
					  sqr_color[i][j][1] <= 8'h80;
					  sqr_color[i][j][2] <= 8'h80;
				  end
			 endcase
			end
		end
end
	 
    
   begin
	 posX <= 0;
    posY <= 0;
	 wr_enable <= 1;
	 
	 assign r_in = sqr_color[posX][posY][0];
	 assign g_in = sqr_color[posX][posY][1];
	 assign b_in = sqr_color[posX][posY][2];
	 
    repeat (8 * 8) begin
      @(posedge clk_out) begin
        posX <= posX + 1;
        if (posX == 8) begin
          posX <= 0;
          posY <= posY + 1;
        end
      end
    end
	 
	 wr_enable = 0;
	end
	 
   begin
	 x <= 0;
    y <= 0;
    repeat (640 * 480) begin
      @(posedge clk_out) begin
        x <= x + 1;
        if (x == 640) begin
          x <= 0;
          y <= y + 1;
        end
      end
    end
    
    $finish();
  end
 end
  
endmodule

module vgaGrid(
					input logic clk,
					input logic [9:0] x, y,
					input logic [3:0] posX, posY,
					input logic wr_enable,
					input logic [7:0] r_in, g_in, b_in,
               output logic [7:0] r_out, g_out, b_out
					);
	
	 localparam SQR_SIZE = 60;
  
	 logic inrectBG1;
    logic inrectBG2;
    logic inSquare;
	 
	 reg [7:0] squaresValues [7:0][7:0][2:0];
	 
	 initial begin
		for (int i = 0; i < 8; i++) begin
			for (int j = 0; j < 8; j++) begin
				squaresValues[i][j][0] <= 8'h53;
				squaresValues[i][j][1] <= 8'h56;
				squaresValues[i][j][2] <= 8'h5B;
			end
		end
	 end

    // Rectangulo lateral izq
    rectgen rectBG1(x, y, 10'd0, 10'd0, 10'd80, 10'd480, inrectBG1);
	 
    // Rectangulo lateral der
    rectgen rectBG2(x, y, 10'd560, 10'd0, 10'd640, 10'd480, inrectBG2);

    // Crea los cuadrados grices oscuros de SQR_SIZE x SQR_SIZE
    assign inSquare = ((x-80) % (SQR_SIZE+1) < SQR_SIZE) && (y % (SQR_SIZE+1) < SQR_SIZE) && (x > 80) && (x < 560);
	 assign currentSqrX = x/SQR_SIZE;
	 assign currentSqrY = y/SQR_SIZE;

    // Determinar colores
    assign r_out = (inrectBG1 | inrectBG2) ? 8'hD9 : (inSquare ? squaresValues[currentSqrX][currentSqrY][0] : 8'h00);
    assign g_out = (inrectBG1 | inrectBG2) ? 8'hD9 : (inSquare ? squaresValues[currentSqrX][currentSqrY][1] : 8'h00);
    assign b_out = (inrectBG1 | inrectBG2) ? 8'hD6 : (inSquare ? squaresValues[currentSqrX][currentSqrY][2] : 8'h00);
	 
	 always @(posedge clk) begin
		
		if (wr_enable == 1) begin
			
			squaresValues[posX][posY][0] <= r_in;
			squaresValues[posX][posY][1] <= g_in;
			squaresValues[posX][posY][2] <= b_in;
			
		end
		
	 end
  
endmodule

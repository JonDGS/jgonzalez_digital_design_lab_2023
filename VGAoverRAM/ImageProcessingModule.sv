`timescale 1 ps / 1 ps

module ImageProcessingModule #(parameter displayH = 200, parameter displayV = 200,
 parameter offset = 0)
	(
    input logic clk,
    input logic rst_n,
	input [7:0] pixelValueIn,
	 
	output reg [15:0] readAddress_In = 0,
	output reg [15:0] writeA_out = 0,
	output reg wren = 0,
	output reg [7:0] pixelValueOut = 0,
	output reg [7:0] counter = -1,
	output reg flag = 0, //flag de operacion
	output reg [7:0] x = 0, y = 0 //debug x y y, fila columna
);


	//reg [7:0] x = 0; //fila
	//reg [7:0] y = 0; //columna
	//int offset = displayH * displayV;
	//reg [7:0] counter = 0;
	reg [7:0] sum = 0;
	reg [7:0] kernel [2:0][2:0] = '{'{0, 1, 0}, '{1, -4, 1}, '{0, 1, 0}};
	 
	always_ff @(posedge clk) begin

		flag <= 0;

		case (counter)
		
			0: begin
			
				if (
					((x-1) >= 0) &&
					((x-1) < displayV) &&
					((y-1) >= 0) &&
					((y-1) < displayH)
					) begin
			
					readAddress_In <= (x-1)*displayV + (y-1) + offset;
					
					sum <= sum + kernel[0][0]*pixelValueIn;

					flag <= 1;
				end
			
			end
			1: begin
				
				if (
					((x-1) >= 0) &&
					((x-1) < displayV) &&
					((y) >= 0) &&
					((y) < displayH)
					) begin
			
					readAddress_In <= (x-1)*displayV + (y) + offset;
					
					sum <= sum + kernel[0][1]*pixelValueIn;
					
					flag <= 1;
				end
			
			end
			2: begin
				
				if (
					((x-1) >= 0) &&
					((x-1) < displayV) &&
					((y+1) >= 0) &&
					((y+1) < displayH)
					) begin
			
					readAddress_In <= (x-1)*displayV + (y+1) + offset;
					
					sum <= sum + kernel[0][2]*pixelValueIn;

					
					flag <= 1;
				end
			
			end
			3: begin
				
				if (
					((x) >= 0) &&
					((x) < displayV) &&
					((y-1) >= 0) &&
					((y-1) < displayH)
					) begin
			
					readAddress_In <= (x)*displayV + (y-1) + offset;
					
					sum <= sum + kernel[1][0]*pixelValueIn;

					
					flag <= 1;
				end
			
			end
			4: begin
				
				if (
					((x) >= 0) &&
					((x) < displayV) &&
					((y) >= 0) &&
					((y) < displayH)
					) begin
			
					readAddress_In <= (x)*displayV + (y) + offset;
					
					sum <= sum + kernel[1][1]*pixelValueIn;

					
					flag <= 1;
				end
			
			end
			5: begin
				
				if (
					((x) >= 0) &&
					((x) < displayV) &&
					((y+1) >= 0) &&
					((y+1) < displayH)
					) begin
			
					readAddress_In <= (x)*displayV + (y+1) + offset;
					
					sum <= sum + kernel[1][2]*pixelValueIn;
					
					flag <= 1;
				end
			
			end
			6: begin
				
				if (
					((x+1) >= 0) &&
					((x+1) < displayV) &&
					((y-1) >= 0) &&
					((y-1) < displayH)
					) begin
			
					readAddress_In <= (x+1)*displayV + (y-1) + offset;
					
					sum <= sum + kernel[2][0]*pixelValueIn;
					
					flag <= 1;
				end
			
			end
			7: begin
				
				if (
					((x+1) >= 0) &&
					((x+1) < displayV) &&
					((y) >= 0) &&
					((y) < displayH)
					) begin
			
					readAddress_In <= (x+1)*displayV + (y) + offset;
					
					sum <= sum + kernel[2][1]*pixelValueIn;
					
					flag <= 1;
				end
			
			end
			8: begin
				
				if (
					((x+1) >= 0) &&
					((x+1) < displayV) &&
					((y+1) >= 0) &&
					((y+1) < displayH)
					) begin
			
					readAddress_In <= (x+1)*displayV + (y+1) + offset;
					
					sum <= sum + kernel[2][2]*pixelValueIn;
					
					flag <= 1;
				end
			end
			9: begin
				
				if ((sum < 0) || (255 < sum)) begin
					pixelValueOut <= 0;
				end else begin
					pixelValueOut <= sum;
				end
				wren <= 1;
			end
			10: begin
				if ((y+1) == displayH) begin
					x <= x + 1;
					y <= 0;

				end else begin
					y <= y + 1;
				end
				
				sum <= 0;
				wren <= 0;
			end
		endcase
	end

	always_ff @(negedge clk) begin
		if (counter == 10) begin
			counter <= 0;
		end else begin
			counter <= counter + 1;
		end
	end

endmodule

module vgaMatrix #(parameter displayH)
						(
						input logic clk,
						input reg [7:0] x, y,
						input [7:0] pixelValue,
						output reg [15:0] readAddress = 0,
						output logic [7:0] r = 0, g = 0, b = 0
						);

						always_ff @(posedge clk) begin

							readAddress <= {8'b0, y} * displayH + {8'b0, x};
						
							r <= pixelValue;
							g <= pixelValue;
							b <= pixelValue;

						end
						 
endmodule
			
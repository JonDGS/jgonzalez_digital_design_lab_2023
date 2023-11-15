module vgaMatrix #(parameter displayH)
						(
						input reg [7:0] x, y,
						input [7:0] pixelValue,
						output reg [15:0] readAddress,
						output logic [7:0] r, g, b
						);
						 
						assign readAddress = {8'b0, y} * displayH + {8'b0, x};
						
						assign r = pixelValue;
						assign g = pixelValue;
						assign b = pixelValue;

endmodule
			
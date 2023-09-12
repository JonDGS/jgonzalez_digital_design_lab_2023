module csm_block #(parameter n = 5)
					(
						input logic [n-1:0] A, B,
						output logic [n-1:0] D,
						output logic Bout4
					);
					
					wire Bout [n-1:0];
					
					genvar i;
					
					generate
						for (i = 0; i < n; i++) begin : csm
							if (i == 0) begin
								csm csm(.X(A[i]), .Y(B[i]), .Os(Bout4), .Bin(1'b0), .Bout(Bout[i]), .Dcsm(D[i]));
							end else if (i == n-1) begin
								csm csm(.X(A[i]), .Y(B[i]), .Os(Bout4), .Bin(Bout[i-1]), .Bout(Bout4));
							end else begin
								csm csm(.X(A[i]), .Y(B[i]), .Os(Bout4), .Bin(Bout[i-1]), .Bout(Bout[i]), .Dcsm(D[i]));
							end
						end
					endgenerate
					
					assign D[n-1] = 1'b0;
					
endmodule

					
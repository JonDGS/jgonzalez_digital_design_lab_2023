module fourBitDivider #(parameter n = 8)
							(
							input logic [n-1:0] A,
							input logic [(n/2)-1:0] B,
							output logic [n-1:0] Q,
							output logic [n/2:0] R
							);
							
							logic [(n/2):0] Dout [n-1:0];
							wire Bout [n-1:0];
							
							genvar i;
							
							generate
								for (i = 0; i < n; i++) begin : csmblock
									if (i == 0) begin
										csm_block #((n/2)+1) block(.A({{(n/2){1'b0}}, A[n-1-i]}), .B({1'b0, B}), .D(Dout[i]), .Bout4(Bout[i]));
									end else begin
										csm_block #((n/2)+1) block(.A({Dout[i-1][(n/2)-1:0], A[n-1-i]}), .B({1'b0, B}), .D(Dout[i]), .Bout4(Bout[i]));
									end
									
									assign Q[n-1-i] = !Bout[i];
									
								end
								
							endgenerate
							
							assign R = Dout[n-1];

endmodule

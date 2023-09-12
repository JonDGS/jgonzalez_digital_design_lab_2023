module fourBitFullAdder #(parameter n = 4)
							(
							input logic [n-1:0] A,
							input logic [n-1:0] B,
							input logic K,
							output logic [n:0] S,
							output logic Cout,
							output logic Overflow
							);
							
							wire C [n-1:0];
							
							genvar i;
							
							generate
								for (i = 0; i < n; i++) begin : fa
									if (i == 0) begin
										fullAdder fa(.A(A[i]), .B(B[i] ^ K),.Cin(K), .S(S[i]), .Cout(C[i]));
									end else begin
										fullAdder fa(.A(A[i]), .B(B[i] ^ K),.Cin(C[i-1]), .S(S[i]), .Cout(C[i]));
									end
								end
							endgenerate
							
							assign Cout = C[n-1];
							assign Overflow = C[n-1] ^ C[n-2];
							
endmodule

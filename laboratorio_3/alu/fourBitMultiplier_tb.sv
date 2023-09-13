module fourBitMultiplier_tb();

			logic [3:0] A, B;
			logic [7:0] M;
			
			fourBitMultiplier #(4) mod(
					.A(A),
					.B(B),
					.M(M)
			);
			
			initial begin
					
					A = 4'b1010;
					B = 4'b1101;
					
			end
endmodule
			
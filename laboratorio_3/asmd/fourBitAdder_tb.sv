module fourBitAdder_tb();

		logic [3:0] A,B,S;
		logic Cout;
		
		fourBitFullAdder #(4) mod(
			.A(A),
			.B(B),
			.K(0),
			.S(S),
			.Cout(Cout)
		);
		
		initial begin
			
			A = 4'b1101;
			B = 4'b1101;
			#50;
			
		end
endmodule
			
module fullAdder_tb();

		logic A,B,S;
		logic Cout;
		
		fullAdder mod(
			.A(A),
			.B(B),
			.Cin(0),
			.S(S),
			.Cout(Cout)
		);
		
		initial begin
			
			A = 1'b0;
			B = 1'b0;
			#40
			
			A = 1'b0;
			B = 1'b1;
			#40
			
			A = 1'b1;
			B = 1'b0;
			#40
			
			A = 1'b1;
			B = 1'b1;
			#40;
			
		end
endmodule
			
module fullSubtractor_tb();

		logic A;
		logic B;
		logic Lin;
		logic D;
		logic Lout;
		
		fullSubtractor mod(
			.A(A),
			.B(B),
			.Lin(Lin),
			.D(D),
			.Lout(Lout)
		);
		
		initial begin
			
			A = 1'b0;
			B = 1'b0;
			Lin = 1'b0;
			#40
			
			A = 1'b0;
			B = 1'b0;
			Lin = 1'b1;
			#40
			
			A = 1'b0;
			B = 1'b1;
			Lin = 1'b0;
			#40
			
			A = 1'b0;
			B = 1'b1;
			Lin = 1'b1;
			#40
			
			A = 1'b1;
			B = 1'b0;
			Lin = 1'b0;
			#40
			
			A = 1'b1;
			B = 1'b0;
			Lin = 1'b1;
			#40
			
			A = 1'b1;
			B = 1'b1;
			Lin = 1'b0;
			#40
			
			A = 1'b1;
			B = 1'b1;
			Lin = 1'b1;
			#40;
		
		end
endmodule
		
module fourBitDivider_tb();

		logic [3:0] A, B;
		logic [7:0] Q;
		logic [4:0] R;
		
		fourBitDivider #(8) mod(
				.A({0, 0, 0, 0, A}),
				.B(B),
				.Q(Q),
				.R(R)
		);
		
		initial begin
			
			A = 4'b1101;
			B = 4'b1100;
			#40
			
			A = 4'b1001;
			B = 4'b0110;
			#40;
			
		end
endmodule
				
module csm(
			input logic X,
			input logic Y,
			input logic Os,
			input logic Bin,
			output logic Bout,
			output logic Dcsm
			);
			
			wire D;
			
			fullSubtractor fs(.A(X), .B(Y), .Lin(Bin), .D(D), .Lout(Bout));
			
			assign Dcsm = (Os & X) + (!Os & D);
endmodule
			
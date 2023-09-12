module fullSubtractor(
							input logic A,
							input logic B,
							input logic Lin,
							output logic D,
							output logic Lout
							);
							
							assign D = (A ~^ B) ~^ Lin;
							assign Lout = (!A & Lin) | (!A & B) | (B & Lin);
endmodule
							
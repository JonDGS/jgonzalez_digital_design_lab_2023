module write_mem (input [2:0]btn,
						output reg enable,
						output reg [15:0] adrr,
						output reg [15:0] data);
	
	always @(btn) begin
		case(btn)
			3'b110:begin
				enable=1'b1;
				adrr=7'd6;
				data=7'd9;
			end
			3'b101:begin
				enable=1'b1;
				adrr=7'd6;
				data=7'd7;
			end
			default:begin
				enable=1'b0;
				adrr=7'd0;
				data=7'd9;
			end
		endcase
	end		
						
endmodule 					
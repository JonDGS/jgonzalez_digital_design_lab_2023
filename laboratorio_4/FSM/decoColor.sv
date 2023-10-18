module decoColor(
		input logic [3:0] code,
		output logic [7:0] r,
		output logic [7:0] g,
		output logic [7:0] b
		);
		
	initial begin
		case(code)
			0: begin
				r <= 8'hFF;
				g <= 8'hFF;
				b <= 8'h00;
			end
			1: begin
				r <= 8'h00;
				g <= 8'h00;
				b <= 8'hFF;
			end
			2: begin
				r <= 8'h00;
				g <= 8'hFF;
				b <= 8'h00;
			end
			3: begin
				r <= 8'hFF;
				g <= 8'h00;
				b <= 8'h00;
			end
			4: begin
				r <= 8'h80;
				g <= 8'h00;
				b <= 8'h80;
			end
			5: begin
				r <= 8'hFF;
				g <= 8'hA5;
				b <= 8'h00;
			end
			6: begin
				r <= 8'hA9;
				g <= 8'hA9;
				b <= 8'hA9;
			end
			7: begin
				r <= 8'hC0;
				g <= 8'hC0;
				b <= 8'hC0;
			end
		endcase
	end
endmodule
		
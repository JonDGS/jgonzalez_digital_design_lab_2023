module shiftRight #(parameter n=0)(data, shift ,y);
	
	input[n-1:0] data;
	input[2:0] shift;
	output[n-1:0] y;
	reg[n-1:0] dataReg;
	reg[n-1:0] y;    

	always @(*) begin
	 dataReg=data;
    for (int i = 0; i < shift; i++) begin
      y = {1'b0, dataReg[n-1:1] }; // Shift right en un bit en cada iteración
		dataReg=y;
    end
  end


	
endmodule
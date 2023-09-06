module shiftLeft #(parameter n=0)(data, shift ,resultado);

	input[n-1:0] data;
	input[2:0] shift;
	output[n-1:0] resultado;
	reg[n-1:0] dataReg;
	reg[n-1:0] resultado;    

	always @(*) begin
	 dataReg=data;
    for (int i = 0; i < shift; i++) begin
      resultado= {dataReg[n-1:0], 1'b0}; // Shift left en un bit en cada iteración
		dataReg=resultado;
    end
  end

	

	
endmodule
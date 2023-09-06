module Shifts #(parameter n=15)(data, shift, direccion, resultado);
	
	//input[2:0]n;
	input[n-1:0] data;
	input[2:0] shift;
	input[2:0] direccion;
	output[n-1:0] resultado;
	reg[n-1:0] resultado;
	reg[n-1:0] resultadoLeft; 	
	reg[n-1:0] resultadoRight; 
	
	  shiftLeft #(.n(n)) LsL
	  
	  (
        .data(data),
        .shift(shift),
        .resultado(resultadoLeft)
      );
		
		shiftRight #(.n(n)) LsR
		
		(
        .data(data),
        .shift(shift),
        .resultado(resultadoRight)
      );
		
		
		always @(*) begin
    if (direccion == 0)
      resultado = resultadoLeft;
    else
      resultado = resultadoRight;
  end


endmodule










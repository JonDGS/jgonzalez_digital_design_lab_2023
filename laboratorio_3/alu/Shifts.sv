module Shifts #(parameter n=15)(data, shift, direccion, y);
	
	//input[2:0]n;
	input[n-1:0] data;
	input[2:0] shift;
	input[2:0] direccion;
	output[n-1:0] y;
	reg[n-1:0] y;
	reg[n-1:0] resultadoLeft; 	
	reg[n-1:0] resultadoRight; 
	
	  shiftLeft #(.n(n)) LsL
	  
	  (
        .data(data),
        .shift(shift),
        .y(resultadoLeft)
      );
		
		shiftRight #(.n(n)) LsR
		
		(
        .data(data),
        .shift(shift),
        .y(resultadoRight)
      );
		
		
		always @(*) begin
    if (direccion == 0)
      y = resultadoLeft;
    else
      y = resultadoRight;
  end


endmodule

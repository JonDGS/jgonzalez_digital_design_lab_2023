module shifts_tb();

		
    // Input
	 parameter n=6;
    reg [n-1:0] data;
	 reg [2:0] shift;
	 reg [2:0] direccion;
	 reg [n-1:0] resultado;
	 

    
	 
	  Shifts #(.n(n)) LsL 
		
	  (
		  
        .data(data),
		  .shift(shift),
		  .direccion(direccion),
		  .resultado(resultado)
    );
	 
	 
	 initial begin
	 data=6'b111000;
	 shift=4;
	 direccion=1;
	 #40
	 
	 data=4'b1101;
	 
	 end
	 /*
    shiftLeft LsL (
        .data(data),
		  .shift(shift),
		  .data2(data2)
    );
	 
	 
	 initial begin
	 
	 data=8'b11110000;
	 shift=3;
	 #40
	 
	 data=4'b11110011;
	 
	 end
	 
	 shiftRight LsR (
        .data(data),
		  .shift(shiftR),
		  .data2(dataR)
    );
	 
	 
	 initial begin
	 
	 data=8'b11110000;
	 shiftR=2;
	 #40
	 
	 data=4'b11110011;
	 
	 end*/
	 
	 
endmodule
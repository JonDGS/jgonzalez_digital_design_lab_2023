module shifts_tb();

		
    // Input
	 parameter n=4;
    reg [n-1:0] data;
	 reg [2:0] shift;
	 reg [2:0] direccion;
	 reg [n-1:0] y;
	 

    
	 
	  Shifts #(.n(n)) LsL 
		
	  (
        .data(data),
		  .shift(shift),
		  .direccion(direccion),
		  .y(y)
    );
	 
	 
	 initial begin
	 data=4'b1100;
	 shift=2;
	 direccion=0;
	 #40
	 if (y !== 4'b0000)
      $display("Prueba de SHIFT LEFT fallida. Data=%b,Resultado=%b", data, y);
    else
      $display("Prueba de SHIFT LEFT correcta. Data=%b,Resultado=%b", data, y);
	 
	 data=4'b1101;
	 
	 end
	 
endmodule
 module bin_bcd_deco_tb();

    // Input
    reg [3:0] bin;
    // Output
    wire [6:0] seg;

    
    bin_bcd_deco mod (
        .bin(bin), 
        .seg(seg)
    );

    initial begin
	 //Valor 1 (0)
	 bin=4'b0000;
	 #40
	 
	 //Valor 2 (1)
	 bin=4'b0001;
	 #40
	 
	 //Valor 3 (2)
	 bin=4'b0010;
	 #40
	 
	 //Valor 4 (10)
	 bin=4'b1010;
	 #40
	 
	 //Valor 5 (11)
	 bin=4'b1011;
	 #40
	 
	 //Valor 6 (12)
	 bin=4'b1100;
	 #40
	 
	 //Valor 7 (13)
	 bin=4'b1101;
	 #40
	 
	 //Valor 8 (15)
	 bin=4'b1111;
	 #40
	 
	 bin=4'b1110;
       
    end
      
endmodule
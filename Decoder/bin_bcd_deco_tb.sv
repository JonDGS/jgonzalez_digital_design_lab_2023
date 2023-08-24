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
	 //Valor 1
	 bin=4'b0000;
	 #40
	 
	 //Valor 2
	 bin=4'b0001;
	 #40
	 
	 //Valor 3
	 bin=4'b0010;
	 #40
	 
	 bin=4'b0011;
	 #40
	 
	 bin=4'b0100;
	 #40
	 bin=4'b0101;
	 #40
	 bin=4'b0110;
	 #40
	 bin=4'b0111;
	 #40
	 bin=4'b1000;
	 #40
	 bin=4'b1001;
	 #40
	 bin=4'b1011;
	 #40
	 
	 //Valor 4
	 bin=4'b1010;
	 #40
	 
	 //Valor 5
	 bin=4'b1011;
	 #40
	 
	 //Valor 6
	 bin=4'b1100;
	 #40
	 
	 //Valor 7
	 bin=4'b1101;
	 #40
	 
	 //Valor 8
	 bin=4'b1111;
	 #40
	 
	 bin=4'b1110;
       
    end
      
endmodule
module bin_bcd_deco (
    bin,
     seg
    );
    
    //Tamaño del input (4bits)
    input [3:0] bin;
    //Tamaño del output 
    output [6:0] seg;
    //Registro para trabajar el resultado de BCD
    reg [7 : 0] bcd; 
	 //registro para el display 
	 reg [6:0] seg;
	 
	 
	 
	 //Contador para ciclo
    integer i;   
     
     
     always @(bin) //Algoritmo Double Dabble
        begin
            bcd = 0; //Inicializa bcd a 0.
            for (i = 0; i < 4; i = i+1) 
            begin
                bcd = {bcd[6:0],bin[3-i]}; //BCD final Concatenacion
                     
					 //Si un digito del bcd es mayor a 4, se le suma 3 (algoritmo)
                if(i < 3 && bcd[3:0] > 4) 
                    bcd[3:0] = bcd[3:0] + 3;
                if(i < 3 && bcd[7:4] > 4)
                    bcd[7:4] = bcd[7:4] + 3; 
            end
				
				
				
        end 
		  
		  
	always @(bcd)
		begin
			case(bcd)
				0:seg=7'b1000000;
				1:seg=7'b1111001;
				2:seg=7'b0100100;
				3:seg=7'b0110000;
				4:seg=7'b0011001;
				5:seg=7'b0010010;
				6:seg=7'b0000010;
				7:seg=7'b1111000;
				8:seg=7'b0000000;
				9:seg=7'b0011000;
				16:seg=7'b0001000;
				17:seg=7'b0000011;
				18:seg=7'b1000110;
				19:seg=7'b0100001;
				20:seg=7'b0000110;
				21:seg=7'b0001110;
				default: seg=7'bx;
				endcase
		end
 
                
endmodule

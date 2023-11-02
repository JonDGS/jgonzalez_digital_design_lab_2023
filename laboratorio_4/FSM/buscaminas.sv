module buscaminas (
  input clk,
  input rst,
  input [2:0] x,
  input [2:0] y,
  input logic esBomba,
  input logic initButton,
  input reg [3:0]matriz [7:0][7:0],
  output estado,
  output logic wr_enable
);

//reg [3:0]matriz_bombas [7:0][7:0];
logic [1:0] estado_actual,estado_siguiente;
reg [3:0]matriz_bombas [7:0][7:0];

initial begin
matriz_bombas<= matriz;
end

/*
initial begin
	for (int i = 0; i < 8; i++) begin
		for (int j = 0; j < 8; j++) begin
			if(i%2==0 & j%2==0)begin
				matriz_bombas[i][j] =11;
			end else
			 matriz_bombas[i][j] = 0;
		  end
	end
end*/

always @(*)begin
for (int i = 0; i < 8; i++) begin
		for (int j = 0; j < 8; j++) begin
	$display("matriz_bombas[%0d][%0d] = %d", i,j, matriz_bombas[i][j]);
	end
end
end


always_ff @(posedge clk or posedge rst)
	if(rst) 
		estado_actual = 2'b00;
	else begin
		estado_actual=estado_siguiente;
	end

always @(*)
begin

//ESTADO DE BOMBA    0--NADA,1-9--NUMERO DE BOMBAS ADYACENTES, 10-BOMBA MARCADA,11-BOMBA
		wr_enable <= 0;
      case (estado_actual)
        2'b00: // ESTADO INICIAL
		  begin
         if(initButton)
			begin
				estado_siguiente=2'b01;
			end	
			else
				estado_siguiente=2'b00;
        end
        2'b01: // ESTADO JUGANDO 
		  begin
         if(matriz_bombas[x][y]==11 )begin
			
				if(esBomba)begin
					$display("ES BOMBA Y LA MARCO");
					matriz_bombas[x][y]= 10;
					wr_enable <= 1;
					estado_siguiente=2'b01;
				end
				else begin
					$display("BOMBA Y NO MARCADA===PERDIO");
					estado_siguiente=2'b11;end
				end
			else
				if(!esBomba)begin
					$display("NO ES BOMBA Y NO MARCADA");
					
					estado_siguiente=2'b01;
					end
				else begin
					$display("NO ES BOMBA Y LA MARCO");
					matriz_bombas[x][y]= 10;
					wr_enable <= 1;
					estado_siguiente=2'b01;
					end
         end
        2'b10: // ESTADO GANO
		  begin
			estado_siguiente=2'b10;
        end
        2'b11: // ESTADO PERDIO
			estado_siguiente=2'b11;
        
      endcase
end
assign estado =estado_actual;

endmodule



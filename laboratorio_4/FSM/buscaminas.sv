module buscaminas (
  input clk,
  input rst,
  input [2:0] x,
  input [2:0] y,
  input logic esBomba,
  input logic initButton,
  output estado
);

reg [3:0]matriz_bombas [7:0][7:0];
logic [1:0] estado_actual,estado_siguiente;



initial begin
	for (int i = 0; i < 8; i++) begin
		for (int j = 0; j < 8; j++) begin
			if(i%2==0 & j%2==0)begin
				matriz_bombas[i][j] =11;
			end else
			 matriz_bombas[i][j] = 0;
		  end
	end
end

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
$display("matriz_bombas SELECCIONADA[%0d][%0d] = %d", x,y, matriz_bombas[x][y]);
$display("ESTADO DE LA MAQUINA: %b",estado_actual);

//ESTADO DE BOMBA    0--NADA,1-9--NUMERO DE BOMBAS ADYACENTES, 10-BOMBA MARCADA,11-BOMBA
      case (estado_actual)
        2'b00: // ESTADO INICIAL
		  begin
		  $display("CAMBIO DE LA MAQUINA: %b",estado_actual);
         if(initButton)
			begin
				estado_siguiente=2'b01;
			end	
			else
				estado_siguiente=2'b00;
        end
        2'b01: // ESTADO JUGANDO 
		  begin
		  $display("CAMBIO DE LA MAQUINA: %b",estado_actual);
         if(matriz_bombas[x][y]==11 )begin
			
				if(esBomba)begin
					$display("ES BOMBA Y LA MARCO");
					matriz_bombas[x][y]= 10;
				end
				else begin
					$display("BOMBA Y NO MARCADA===MAMO");
					estado_siguiente=2'b11;end
				end
			else
				if(!esBomba)begin
					$display("NO ES BOMBA Y NO MARCADA");
					
					
					estado_siguiente=2'b01;
					end
				else begin
					$display("NO ES BOMBA Y NO MARCADA");
					matriz_bombas[x][y]= 10;
					end
         end
        2'b10: // ESTADO GANO
		  begin
		  $display("CAMBIO DE LA MAQUINA: %b",estado_actual);
			estado_siguiente=2'b10;
        end
        2'b11: // ESTADO PERDIO
			estado_siguiente=2'b11;
        
      endcase
end
assign estado =estado_actual;

endmodule



module logic_buscaminas (
  input clk,
  input rst,
  input logic esBomba,
  input logic initButton,
  input logic btn_up_down,
  input logic btn_left_right,
  input logic btn_flag,
  input logic btn_select,
  input [3:0] bombas // Entrada para configurar la cantidad de bombas
  //output logic estado
);

  reg [3:0] matriz [7:0][7:0];
  //logic [1:0] estado_actual, estado_siguiente;
  reg [2:0] bombasAdyacentes;
  
  // Instancia del módulo buscaminas
  buscaminas fsm_inst(
    .clk(clk),
    .rst(rst),
    .x(cursor_x),
    .y(cursor_y),
    .esBomba(esBomba),
    .initButton(initButton),
    .estado(estado_actual)
  );
  
    movimiento move_inst (
    .clk(clk),
    .rst(rst),
    .btn_up_down(btn_up_down),
    .btn_left_right(btn_left_right),
    .cursor_x(cursor_x),
    .cursor_y(cursor_y)
  );

  reg [3:0] cursor_x; // Variable interna para el cursor en X
  reg [3:0] cursor_y; // Variable interna para el cursor en Y
  
//verBombas bombasAd (.matriz_bombas(matriz),.x(cursor_x),.y(cursor_y), .bombasAdyacentes(bombasAdyacentes));

// Lógica para cambiar al estado 0010 (posible bomba) al presionar el botón de la bandera
always_ff @(posedge clk or posedge rst) begin
  if (rst) begin
    // Inicializaciones cuando se reinicia el juego.
    estado_actual <= 2'b00;
  end else if (btn_flag && matriz[cursor_x][cursor_y] == 4'b0011) begin
    // Cambiar al estado 0010 (posible bomba) cuando se presiona el botón de la bandera
    estado_actual <= 2'b10;
  end else if (matriz[cursor_x][cursor_y] == 4'b0000)begin
		matriz[cursor_x][cursor_y] = bombasAdyacentes;
	end 
end

//Asignar el estado actual
assign estado = estado_actual;
endmodule


module verBombas (input [3:0]matriz_bombas [7:0][7:0],input [2:0] x,input [2:0] y, output logic [2:0]bombasAdyacentes);
always @(*)begin
	bombasAdyacentes=3'b000;

	if(matriz_bombas[x-1][y-1]==11)
		bombasAdyacentes=bombasAdyacentes+3'b001;

	if(matriz_bombas[x-1][y]==11)
		bombasAdyacentes=bombasAdyacentes+3'b001;
		
	if(matriz_bombas[x-1][y+1]==11)
		bombasAdyacentes=bombasAdyacentes+3'b001;
		
	if(matriz_bombas[x][y-1]==11)
		bombasAdyacentes=bombasAdyacentes+3'b001;
		
	if(matriz_bombas[x][y+1]==11)
		bombasAdyacentes=bombasAdyacentes+3'b001;
		
	if(matriz_bombas[x+1][y-1]==11)
		bombasAdyacentes=bombasAdyacentes+3'b001;
		
	if(matriz_bombas[x+1][y]==11)
		bombasAdyacentes=bombasAdyacentes+3'b001;
		
	if(matriz_bombas[x+1][y+1]==11)
		bombasAdyacentes=bombasAdyacentes+3'b001;
end	

endmodule


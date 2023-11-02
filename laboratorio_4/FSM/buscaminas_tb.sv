module buscaminas_tb;
reg clk, rst, initButton,esBomba,estado;
reg [2:0] x;
reg [2:0] y;
buscaminas uut(
	.clk(clk),
	.rst(rst),
	.x(x),
	.y(y),
	.esBomba(esBomba),
	.initButton(initButton),
	.estado(estado)
	);
always begin
    #5 clk = ~clk;
end
  
  
initial begin
	clk = 0;
   rst = 0;
   initButton= 0;

   // Reset inicial
   rst = 1;
   #10 rst = 0;

    initButton = 0;
    #100 initButton = 1;
	 $display("Juego iniciado SIN BOMBA Y SIN MARCAR");
	 x=3'b011;
	 y=3'b011;
	 esBomba=0;
	 $display("Estado resultante: %b",uut.estado_siguiente);
	 
	 #20
	 
	 rst = 1;
    #10 rst = 0;
	 initButton = 0;
    #100 initButton = 1;
	 $display("Juego iniciado pt2 EN BOMBA PERO MARCADA");
	 x=3'b000;
	 y=3'b000;
	 esBomba=1;
	 $display("Estado resultante: %b",estado);
	 
	 #20
	 
	 rst = 1;
    #10 rst = 0;
	 initButton = 0;
    #100 initButton = 1;
	 $display("Juego iniciado pt3 EN BOMBA SIN MARCAR");
	 x=3'b000;
	 y=3'b010;
	 esBomba=0;
	 $display("Estado resultante: %b",estado);

end


endmodule
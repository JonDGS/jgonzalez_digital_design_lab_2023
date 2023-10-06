module alu_tb;

  // Parámetros
  parameter N = 4;  // Cambia N según la longitud de bits que necesitas

  // Señales de entrada
  reg [N-1:0] a;
  reg [N-1:0] b;
  reg [3:0] operation; // Código de control para la operación (0: AND, 1: OR, 2: XOR)
  logic carryOutF;
  logic overflowF;
  logic negativeF;
  logic zeroF;

  // Señales de salida
  logic [N-1:0] y;
  logic [N-1:0] x;
  logic [N-1:0] z;
  logic [N-1:0] w;
  logic [6:0] display1;
  logic [6:0] display2;
  logic [6:0] display3;
  logic [6:0] display4;

  // Instancia del módulo ALU
  alu #(N) dut (
    .a(a),
    .b(b),
    .operation(operation),
    .carryOutF(carryOutF),
	 .overflowF(overflowF),
	 .negativeF(negativeF),
	 .zeroF(zeroF),
	 .y(y),
	 .x(x),
	 .z(z),
	 .w(w)
  );

  // Inicialización
  initial begin
    // Prueba de operación AND
    a = 4'b1010;
    b = 4'b1100;
    operation = 4'b0000; // AND
    #10; // Espera 10 unidades de tiempo
    if (y !== (a & b))
      $display("Prueba de AND fallida. a=%b, b=%b, y=%b", a, b, y);
    else
      $display("Prueba de AND correcta. a=%b, b=%b, y=%b", a, b, y);

    // Prueba de operación OR
    a = 4'b1010;
    b = 4'b1100;
    operation = 4'b0001; // OR
    #10; // Espera 10 unidades de tiempo
    if (y !== (a | b))
      $display("Prueba de OR fallida. a=%b, b=%b, y=%b", a, b, y);
    else
      $display("Prueba de OR correcta. a=%b, b=%b, y=%b", a, b, y);

    // Prueba de operación XOR
    a = 4'b1010;
    b = 4'b1100;
    operation = 4'b0010; // XOR
    #10; // Espera 10 unidades de tiempo
    if (y !== (a ^ b))
      $display("Prueba de XOR fallida. a=%b, b=%b, y=%b", a, b, y);
    else
      $display("Prueba de XOR correcta. a=%b, b=%b, y=%b", a, b, y);
		
		
		// Prueba de operación residuo donde de 0
    a = 4'b1010;
    b = 4'b0010;
    operation = 4'b0101; // residuo
    #10; // Espera 10 unidades de tiempo
    if (y !== (a % b))
      $display("Prueba de residuo fallida. a=%b, b=%b, y=%b", a, b, y);
    else
      $display("Prueba de residuo correcta. a=%b, b=%b, y=%b", a, b, y);
		
		
		// Prueba de operación residuo donde no de 0
    a = 4'b1111;
    b = 4'b0110;
    operation = 4'b0101; // Residuo
    #10; // Espera 10 unidades de tiempo
    if (y !== (a % b))
      $display("Prueba de residuo fallida. a=%b, b=%b, y=%b", a, b, y);
    else
      $display("Prueba de residuo correcta. a=%b, b=%b, y=%b", a, b, y);

		
	 // Prueba de SHIFT LEFT
    a=4'b1110;
    operation = 4'b0011; // SHIFT LEFT
	 b=2;
    #10; // Espera 10 unidades de tiempo
	 if (y !== 4'b1000)
      $display("Prueba de SHIFT LEFT fallida. Data=%b,Resultado=%b", a, y);
    else
      $display("Prueba de SHIFT LEFT correcta. Data=%b,Resultado=%b", a, y);
		
	 // Prueba de SHIFT RIGHT
    a=4'b0100;
    operation = 4'b0100; // SHIFT RIGHT
	 b=2;
    #10; // Espera 10 unidades de tiempo
	 if (y !== 4'b0001)
      $display("Prueba de SHIFT RIGHT fallida. Data=%b,Resultado=%b", a, y);
    else
      $display("Prueba de SHIFT RIGHT correcta. Data=%b,Resultado=%b", a, y);
	 
    // Agrega más pruebas según sea necesario
	 
	 //Prueba de sumador
	 a = 4'b1010;
	 b = 4'b1011;
	 operation = 4'b0110;
	 #10;
	 $display("Prueba de ADDER 1. a=%b, b=%b, y=%b", a, b, y);
	 a = 4'b1001;
	 b = 4'b0110;
	 #10;
	 $display("Prueba de ADDER 2. a=%b, b=%b, y=%b", a, b, y);
	 
	 //Prueba de restador
	 a = 4'b0101;
	 b = 4'b0011;
	 operation = 4'b0111;
	 #10;
	 $display("Prueba de SUB 1. a=%b, b=%b, y=%b", a, b, y);
	 a = 4'b0001;
	 b = 4'b0010;
	 #10;
	 $display("Prueba de SUB 2. a=%b, b=%b, y=%b", a, b, y);
	 
	 //Prueba de multiplicación
	 a = 4'b1000;
	 b = 4'b0100;
	 operation = 4'b1000;
	 #10;
	 $display("Prueba de MUL 1. a=%b, b=%b, x=%b, y=%b", a, b, x, y);
	 a = 4'b0100;
	 b = 4'b0010;
	 operation = 4'b1000;
	 #10;
	 $display("Prueba de MUL 2. a=%b, b=%b, x=%b, y=%b", a, b, x, y);
	 
	 //Prueba de division
	 a = 4'b1000;
	 b = 4'b0100;
	 operation = 4'b1001;
	 #10;
	 $display("Prueba de DIV 1. a=%b, b=%b, x=%b, y=%b, w=%b, z=%b", a, b, x, y, w, z);
	 a = 4'b1111;
	 b = 4'b0110;
	 operation = 4'b1001;
	 #10;
	 $display("Prueba de DIV 2. a=%b, b=%b, x=%b, y=%b, w=%b, z=%b", a, b, x, y, w, z);

  end

endmodule




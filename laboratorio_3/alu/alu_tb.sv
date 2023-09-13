module alu_tb;

  // Parámetros
  parameter N = 4;  // Cambia N según la longitud de bits que necesitas

  // Señales de entrada
  reg [N-1:0] a;
  reg [N-1:0] b;
  reg [N-1:0] data_shifts;
  reg [N-1:0] shift_number;
  reg [3:0] operation; // Código de control para la operación (0: AND, 1: OR, 2: XOR)

  // Señal de salida
  wire [N-1:0] y;

  // Instancia del módulo ALU
  alu #(N) dut (
    .a(a),
    .b(b),
	 .data_shifts(data_shifts),
	 .shift_number(shift_number),
    .operation(operation),
    .y(y)
  );

  // Inicialización
  initial begin
    // Prueba de operación AND
    a = 4'b1010;
    b = 4'b1100;
    operation = 3'b0000; // AND
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
    data_shifts=4'b1110;
    operation = 4'b0011; // SHIFT LEFT
	 shift_number=2;
    #10; // Espera 10 unidades de tiempo
	 if (y !== 4'b1000)
      $display("Prueba de SHIFT LEFT fallida. Data=%b,Resultado=%b", data_shifts, y);
    else
      $display("Prueba de SHIFT LEFT correcta. Data=%b,Resultado=%b", data_shifts, y);
		
	 // Prueba de SHIFT RIGHT
    data_shifts=4'b0100;
    operation = 4'b0100; // SHIFT RIGHT
	 shift_number=2;
    #10; // Espera 10 unidades de tiempo
	 if (y !== 4'b0001)
      $display("Prueba de SHIFT RIGHT fallida. Data=%b,Resultado=%b", data_shifts, y);
    else
      $display("Prueba de SHIFT RIGHT correcta. Data=%b,Resultado=%b", data_shifts, y);
	 
    // Agrega más pruebas según sea necesario

  end

endmodule




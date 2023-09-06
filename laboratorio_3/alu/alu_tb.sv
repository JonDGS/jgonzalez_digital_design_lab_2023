module alu_tb;

  // Parámetros
  parameter N = 4;  // Cambia N según la longitud de bits que necesitas

  // Señales de entrada
  reg [N-1:0] a;
  reg [N-1:0] b;
  reg [3:0] operation; // Código de control para la operación (0: AND, 1: OR, 2: XOR)

  // Señal de salida
  wire [N-1:0] y;

  // Instancia del módulo ALU
  alu #(N) dut (
    .a(a),
    .b(b),
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
      $display("Prueba de AND pasada. a=%b, b=%b, y=%b", a, b, y);

    // Prueba de operación OR
    a = 4'b1010;
    b = 4'b1100;
    operation = 4'b0001; // OR
    #10; // Espera 10 unidades de tiempo
    if (y !== (a | b))
      $display("Prueba de OR fallida. a=%b, b=%b, y=%b", a, b, y);
    else
      $display("Prueba de OR pasada. a=%b, b=%b, y=%b", a, b, y);

    // Prueba de operación XOR
    a = 4'b1010;
    b = 4'b1100;
    operation = 4'b0010; // XOR
    #10; // Espera 10 unidades de tiempo
    if (y !== (a ^ b))
      $display("Prueba de XOR fallida. a=%b, b=%b, y=%b", a, b, y);
    else
      $display("Prueba de XOR pasada. a=%b, b=%b, y=%b", a, b, y);

    // Agrega más pruebas según sea necesario

    // Finaliza la simulación
    $finish;
  end

endmodule




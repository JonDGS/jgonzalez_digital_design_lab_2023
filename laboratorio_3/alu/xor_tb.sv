module xor_tb;

  // Parámetros
  parameter N = 4;  // Cambia N según la longitud de bits que necesitas

  // Señales de entrada
  reg [N-1:0] a;
  reg [N-1:0] b;

  // Señal de salida
  wire [N-1:0] y;

  // Instancia del módulo
  xor_module #(N) dut (
    .a(a),
    .b(b),
    .y(y)
  );

  // Inicialización
  initial begin
    // Asigna valores a las entradas
    a = 4'b1010; // Cambia estos valores según tus necesidades
    b = 4'b1100; // Cambia estos valores según tus necesidades

    // Realiza una prueba
    #10; // Espera 10 unidades de tiempo

    // Verifica el resultado
    if (y === (a ^ b)) begin
      $display("Prueba pasada: resultado correcto.");
    end else begin
      $display("Prueba fallida: resultado incorrecto.");
    end

    // Finaliza la simulación
    $finish;
  end

endmodule

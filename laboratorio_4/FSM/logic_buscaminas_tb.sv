module logic_buscaminas_tb;

  // Parámetros
  parameter CLK_PERIOD = 10;

  // Señales de reloj
  reg clk = 0;
  always #(CLK_PERIOD/2) clk = ~clk;

  // Señales de control
  reg rst;
  logic btn_up_down;
  logic btn_left_right;

  // Señales de entrada
  wire logic esBomba;
  wire logic initButton;
  wire logic btn_flag;
  wire logic btn_select;
  wire [3:0] bombas;

  // Instancia del módulo bajo prueba
  logic_buscaminas dut (
    .clk(clk),
    .rst(rst),
    .esBomba(esBomba),
    .initButton(initButton),
    .btn_up_down(btn_up_down),
    .btn_left_right(btn_left_right),
    .btn_flag(btn_flag),
    .btn_select(btn_select),
    .bombas(bombas)
  );

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, logic_buscaminas_tb);

    // Reset inicial
    rst = 1;
    btn_up_down = 0;
    btn_left_right = 0;
    #2 rst = 0;

    // Simulación para mostrar la matriz
    #20;
    $display("Matriz:");
    for (int i = 0; i < 8; i++) begin
      $write("  ");
      for (int j = 0; j < 8; j++) begin
        $write("%h ", dut.matriz[i][j]);
      end
      $display("");
    end

    #50 $finish;
  end

endmodule

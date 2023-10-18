module movimiento_tb;

  // Parámetros
  parameter CLK_PERIOD = 10;

  // Señales de reloj
  reg clk = 0;
  always #(CLK_PERIOD/10) clk = ~clk;

  // Señales de control
  reg rst;
  reg btn_up_down;
  reg btn_left_right;

  // Señales de salida
  wire [3:0] cursor_x;
  wire [3:0] cursor_y;

  // Contadores de movimiento
  integer move_count_x = 0;
  integer move_count_y = 0;

  // Instancia del módulo bajo prueba
  movimiento dut (
    .clk(clk),
    .rst(rst),
    .btn_up_down(btn_up_down),
    .btn_left_right(btn_left_right),
    .cursor_x(cursor_x),
    .cursor_y(cursor_y)
  );

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, movimiento_tb);

    // Reset inicial
    rst = 1;
    btn_up_down = 0;
    btn_left_right = 0;
    #2 rst = 0;

    // Imprimir la posición inicial
    $display("Posicion inicial del cursor - X: %d, Y: %d", cursor_x, cursor_y);

    // Mover el cursor 9 veces en la dirección Y
    repeat (9) begin
      btn_up_down = 1;
      #20 btn_up_down = 0;
      $display("Nueva posicion del cursor - X: %d, Y: %d", cursor_x, cursor_y);
      move_count_y = move_count_y + 1;
    end

    // Mover el cursor 9 veces en la dirección X
    repeat (9) begin
      btn_left_right = 1;
      #20 btn_left_right = 0;
      $display("Nueva posicion del cursor - X: %d, Y: %d", cursor_x, cursor_y);
      move_count_x = move_count_x + 1;
    end

    $display("Numero total de movimientos en X: %d", move_count_x);
    $display("Numero total de movimientos en Y: %d", move_count_y);
  end

endmodule

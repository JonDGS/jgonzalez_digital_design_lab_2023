module movimiento (
  input clk,
  input rst,
  input btn_up_down,
  input btn_left_right,
  output logic [3:0] cursor_x,
  output logic [3:0] cursor_y
);

  always_ff @(posedge clk or posedge rst) begin
    if (rst) begin
      // Inicializaciones cuando se reinicia el juego.
      // También puedes reiniciar otros estados del juego según tus necesidades.
      cursor_x <= 0; // Inicializar la posición en la esquina superior izquierda
      cursor_y <= 0;
    end else begin
      // Actualizar la posición en función de los botones de movimiento.
      if (btn_up_down) begin
        if (cursor_y < 8) // Mover hacia abajo si no se alcanza el borde inferior
          cursor_y <= cursor_y + 1;
        else if (cursor_y == 8) // Rebotar al llegar al borde inferior
          cursor_y <= 0;
      end
      
      if (btn_left_right) begin
        if (cursor_x < 8) // Mover hacia la derecha si no se alcanza el borde derecho
          cursor_x <= cursor_x + 1;
        else if (cursor_x == 8) // Rebotar al llegar al borde derecho
          cursor_x <= 0;
      end
    end
  end

endmodule

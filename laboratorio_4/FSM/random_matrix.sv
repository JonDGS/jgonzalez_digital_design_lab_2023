module random_matrix (
    input [3:0] entrada, // Entrada de 4 bits
    output reg [3:0] matriz [7:0][7:0] // Matriz de 8x8 de elementos de 4 bits cada uno
);

    integer i, j, count_bombas;
    reg [3:0] row_counter = 0; // Contador de fila
    reg [3:0] col_counter = 0; // Contador de columna

    // Llenar toda la matriz con 2'b00
    initial begin
        for (i = 0; i < 8; i = i + 1) begin
            for (j = 0; j < 8; j = j + 1) begin
                matriz[i][j] = 4'b00;
            end
        end
    end

    always @ (entrada) begin
        if (entrada > 15 || entrada < 1) begin
            $display("Error: Entrada fuera de rango");
        end else begin
            count_bombas = 0; // Contador de bombas

            // Agregar bombas avanzando de 3 en 3 en filas y columnas
            for (i = 0; i < 8; i = i + 1) begin
                for (j = 0; j < 8; j = j + 2) begin
                    if (count_bombas < entrada) begin
                        matriz[row_counter][col_counter] = 4'b11; // Agregar 11 a la matriz
                        count_bombas = count_bombas + 1; // Incrementar el contador de bombas
                    end
                    col_counter = (col_counter + 3) % 8; // Restablecer el contador de columna si supera 8
                end
                row_counter = (row_counter + 3) % 8; // Restablecer el contador de fila si supera 8
            end
        end
    end

endmodule

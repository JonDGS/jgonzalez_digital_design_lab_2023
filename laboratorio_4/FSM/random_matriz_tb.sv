module random_matriz_tb;

    // Parámetros
    reg [3:0] entrada = 4'b1111; // Establecer la entrada como 1111
    reg [3:0] matriz [7:0][7:0];

    // Instancia del módulo bajo prueba
    random_matrix dut (
        .entrada(entrada),
        .matriz(matriz)
    );

    // Generación de estímulos y visualización de resultados
    initial begin
        // Imprimir la entrada establecida
        $display("Entrada establecida: %0d", entrada);

        // Prueba con la entrada establecida
        #10; // Espera 10 unidades de tiempo para que el resultado sea visible

        // Imprimir todas las casillas de la matriz
        $display("Valores de la matriz:");
        for (int i = 0; i < 8; i++) begin
            for (int j = 0; j < 8; j++) begin
                $display("Matriz[%0d][%0d] = %0d", i, j, matriz[i][j]);
            end
        end
    end

endmodule

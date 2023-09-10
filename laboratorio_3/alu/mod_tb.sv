module mod_tb;

    // Parámetro N para el tamaño de los números binarios
    parameter N = 4;

    // Señales para las entradas y salidas del módulo
    reg [N-1:0] a;
    reg [N-1:0] b;
    wire [N-1:0] y; // Cambio de "remainder" a "y"

    // Instancia del módulo bajo prueba
    modulo_mod #(N) mod_inst (
        .a(a),
        .b(b),
        .y(y) // Cambio de "remainder" a "y"
    );

    // Generador de estímulos
    initial begin
        $display("Testbench para modulo_mod");

        // Prueba 1: División exacta (a = 10, b = 2)
        a = 4'b1010;
        b = 4'b0010;
        #10;
        if (y === 4'b0000) begin // Cambio de "remainder" a "y"
            $display("Prueba 1 pasada: y = %b", y); // Cambio de "remainder" a "y"
        end else begin
            $display("Prueba 1 fallida: y = %b", y); // Cambio de "remainder" a "y"
        end

        // Prueba 2: División con residuo (a = 15, b = 2)
        a = 4'b1111;
        b = 4'b0010;
        #10;
        if (y === 4'b0001) begin // Cambio de "remainder" a "y"
            $display("Prueba 2 pasada: y = %b", y); // Cambio de "remainder" a "y"
        end else begin
            $display("Prueba 2 fallida: y = %b", y); // Cambio de "remainder" a "y"
        end

        // Prueba 3: División por cero (a = 5, b = 0)
        a = 4'b0101;
        b = 4'b0000;
        #10;
        if (y === 4'b0000) begin // Cambio de "remainder" a "y"
            $display("Prueba 3 pasada: y = %b", y); // Cambio de "remainder" a "y"
        end else begin
            $display("Prueba 3 fallida: y = %b", y); // Cambio de "remainder" a "y"
        end

        $finish;
    end

endmodule

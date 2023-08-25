module ContadorN_tb;

    // Parámetros del testbench
    parameter N = 2; // Número de bits del contador

    // Variables del testbench
    logic clk = 0;
    logic rst = 0;
    logic [N-1:0] valor_inicial = 3; // Valor inicial para el contador
    logic [N-1:0] contador;

    // Instancia del contador
    ContadorN contador_inst(
        .clk(clk),
        .rst(rst),
        .valor_inicial(valor_inicial),
        .contador(contador)
    );

    // Generación del reloj
    always #10 clk = ~clk;

    // Simulación del testbench
    initial begin
        $display("Comenzando simulación para un contador de %0d bits...", N);
        
        rst = 1; // Activa el reset inicialmente
        #1 rst = 0; // Desactiva el reset
        
        // Simula durante 30 unidades de tiempo
        repeat (10) @(posedge clk);

        // Verificación automática de resultados
        case (N)
            2: if (contador !== 0) $error("Fallo de aserción para 2 bits");
            4: if (contador !== 4) $error("Fallo de aserción para 4 bits");
            6: if (contador !== 8) $error("Fallo de aserción para 6 bits");
            default: $error("Número de bits no soportado: %0d", N);
        endcase
        
        // Realiza un reset del contador
        rst = 1;
        #1 rst = 0;
        
        // Simula durante 20 unidades de tiempo después del reset
        repeat (10) @(posedge clk);

        // Verificación automática de resultados después del reset
        case (N)
            2: if (contador !== valor_inicial) $error("Fallo de aserción para 2 bits después del reset");
            4: if (contador !== valor_inicial) $error("Fallo de aserción para 4 bits después del reset");
            6: if (contador !== valor_inicial) $error("Fallo de aserción para 6 bits después del reset");
            default: $error("Número de bits no soportado: %0d", N);
        endcase
        
        $display("Simulación finalizada para un contador de %0d bits.", N);
        $finish;
    end

endmodule



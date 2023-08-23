module Contador6b_tb;

    // Parámetros del testbench
    parameter N = 6; // Número de bits del contador

    // Variables del testbench
    logic clk = 0;
    logic rst = 0;
    logic [N-1:0] contador;

    // Instancia del contador
    Contador6b contador_inst(
        .clk(clk),
        .rst(rst),
        .contador(contador)
    );

    // Generación del reloj
    always #5 clk = ~clk;

    // Simulación del testbench
    initial begin
        $display("Comenzando simulación para un contador regresivo de %0d bits...", N);

        rst = 1; // Activa el reset inicialmente
        #10 rst = 0; // Desactiva el reset
        
        // Simula durante 64 unidades de tiempo para contar hasta 0
        repeat (64) @(posedge clk);

        // Verificación automática de resultados
        if (contador !== 6'h00) $error("Fallo de aserción para contador regresivo de 6 bits");

        $display("Simulación finalizada para un contador regresivo de %0d bits.", N);
        $finish;
    end

endmodule

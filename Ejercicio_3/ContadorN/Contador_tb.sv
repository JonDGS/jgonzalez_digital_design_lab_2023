module Contador_tb;

    // Señales del testbench
    logic clk = 0;
    logic reset = 0;
    logic [1:0] valor_inicial = 2'b11; // Iniciar con "11" (decimal 3)
    logic [1:0] valor_contador;
    
    // Instancia del contador
    Contador dut (
        .clk(clk),
        .reset(reset),
        .valor_inicial(valor_inicial),
        .valor_contador(valor_contador)
    );
    
    // Generación del reloj
    always #(50) clk = ~clk; // Intervalo más largo para observar los cambios
    
    // Procedimiento de reset inicial
    initial begin
        reset = 1;
        #50;
        reset = 0;
        #50;
    end
    
    // Monitoreo y auto-chequeo
    always @(posedge clk) begin
        $display("Tiempo: %0t, Valor del Contador: %b", $time, valor_contador);
        if (valor_contador === 2'b00) begin
            $display("¡Prueba exitosa! El valor del contador llegó a cero.");
            $finish;
        end
    end

endmodule





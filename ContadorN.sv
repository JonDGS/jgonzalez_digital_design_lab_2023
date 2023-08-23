module ContadorN(
    input logic clk,
    input logic rst,
    input logic [3:0] valor_inicial,
    output logic [3:0] contador
);

    // Parámetros
    parameter N = 6; // Número de bits del contador

    // Variables internas
    logic [N-1:0] reg_contador;

    // Asignación del contador con reset asíncrono
    always_ff @(posedge clk or posedge rst)
    begin
        if (rst)
            reg_contador <= valor_inicial;
        else if (reg_contador != 0)
            reg_contador <= reg_contador - 1;
    end

    // Asignación de la salida
    assign contador = reg_contador;

endmodule

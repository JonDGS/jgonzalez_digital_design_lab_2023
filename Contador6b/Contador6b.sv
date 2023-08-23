module Contador6b(
    input logic clk,
    input logic rst,
    output logic [5:0] contador
);

    // Variables internas
    logic [5:0] reg_contador;

    // Asignación del contador regresivo con reset asíncrono
    always_ff @(posedge clk or posedge rst) begin
        if (rst)
            reg_contador <= 6'hF;
        else if (reg_contador != 6'h00)
            reg_contador <= reg_contador - 1;
    end

    // Asignación de la salida
    assign contador = reg_contador;

endmodule

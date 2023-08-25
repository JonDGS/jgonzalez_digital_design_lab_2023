module Contador (
    input logic clk,
    input logic reset,
    input logic [1:0] valor_inicial,
    output logic [1:0] valor_contador
);
    logic [1:0] contador;

    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            contador <= 2'b00;
        else if (contador != 2'b00)
            contador <= contador - 1;
        else if (valor_inicial != contador)
            contador <= valor_inicial;
    end

    assign valor_contador = contador;

endmodule





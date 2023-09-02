//Se declara el modulo con
//las entradas y salidas logicas
//que se van a usar

module ContadorN(
    input logic clk,
    input logic rst,
    input logic [3:0] valor_inicial,
    output logic [3:0] contador
);

    // Parámetros
    parameter N = 2; // Número de bits del contador

    // Variables internas para llevar el registro del contador
    logic [N-1:0] reg_contador;

    // Asignación del contador con reset asíncrono
	 // cada vez que hace click este disminuye en 1
	 // y si el reset se cumple regresa al valor inicial
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

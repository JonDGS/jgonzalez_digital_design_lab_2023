module Contador6b(
    input logic clk,
    input logic rst,
    output logic [5:0] contador,
    output logic [6:0] display1, //unidades
    output logic [6:0] display2  //decenas
);

    logic [5:0] reg_contador;
    logic [3:0] unidades;
    logic [3:0] decenas;

    // Contador regresivo con reset asíncrono
    always_ff @(posedge clk or posedge rst) begin
        if (rst)
            reg_contador <= 6'b111111;
        else if (reg_contador != 6'b000000)
            reg_contador <= reg_contador - 1;
    end

    // Conversión de binario a unidades y decenas
    assign unidades = reg_contador[3:0];
    assign decenas = reg_contador[5:4];

    // Tabla de conversión de hexadecimal a 7 segmentos
    always_comb begin
        case (unidades)
            4'b0000: display1 = 7'b1000000; // 0
            4'b0001: display1 = 7'b1111001; // 1
            4'b0010: display1 = 7'b0100100; // 2
            4'b0011: display1 = 7'b0110000; // 3
            4'b0100: display1 = 7'b0011001; // 4
            4'b0101: display1 = 7'b0010010; // 5
            4'b0110: display1 = 7'b0000010; // 6
            4'b0111: display1 = 7'b1111000; // 7
            4'b1000: display1 = 7'b0000000; // 8
            4'b1001: display1 = 7'b0010000; // 9
            4'b1010: display1 = 7'b0001000; // A
            4'b1011: display1 = 7'b0000011; // B
            4'b1100: display1 = 7'b1000110; // C
            4'b1101: display1 = 7'b0100001; // D
            4'b1110: display1 = 7'b0000110; // E
            4'b1111: display1 = 7'b0001110; // F
            default: display1 = 7'b0000000;
        endcase

        case (decenas)
            4'b0000: display2 = 7'b1000000; // 0
            4'b0001: display2 = 7'b1111001; // 1
            4'b0010: display2 = 7'b0100100; // 2
            4'b0011: display2 = 7'b0110000; // 3
            4'b0100: display2 = 7'b0011001; // 4
            4'b0101: display2 = 7'b0010010; // 5
            4'b0110: display2 = 7'b0000010; // 6
            4'b0111: display2 = 7'b1111000; // 7
            4'b1000: display2 = 7'b0000000; // 8
            4'b1001: display2 = 7'b0010000; // 9
            4'b1010: display2 = 7'b0001000; // A
            4'b1011: display2 = 7'b0000011; // B
            4'b1100: display2 = 7'b1000110; // C
            4'b1101: display2 = 7'b0100001; // D
            4'b1110: display2 = 7'b0000110; // E
            4'b1111: display2 = 7'b0001110; // F
            default: display2 = 7'b0000000;
        endcase
    end

    assign contador = reg_contador;

endmodule


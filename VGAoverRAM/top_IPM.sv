module top_IPM(
    input logic clk,
    output reg [7:0] pixelValue_In,
    output reg [15:0] readAddress_In,
    output reg [15:0] writeA_out,
    output reg wren,
    output reg [7:0] pixelValueOut,
    output reg [7:0] counter,
    output reg flag, //flag de operacion
	 output reg [7:0] x, y //debug x y y, fila columna
);

logic rst_n = 0;


    // Instantiate the module
  ImageProcessingModule #(200, 200, 0) uut (
    .clk(clk),
    .rst_n(rst_n),
    .pixelValueIn(pixelValue_In),
    .readAddress_In(readAddress_In),
    .writeA_out(writeA_out),
    .wren(wren),
    .pixelValueOut(pixelValueOut),
    .counter(counter),
    .flag(flag),
    .x(x),
    .y(y)
  );
  
  ram1 ram (
    .address(readAddress_In+2),
    .clock(clk),
    .data(pixelValueOut),
    .wren(wren),
    .q(pixelValue_In)
  );

endmodule
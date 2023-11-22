`timescale 1 ps / 1 ps

module top_IPM_tb();


  // Inputs
  logic clk;
  logic rst_n;

  // Outputs
  wire [7:0] pixelValue_In;
  wire [15:0] readAddress_In;
  wire [15:0] writeA_out;
  wire wren;
  wire [7:0] pixelValueOut;
  wire [7:0] counter;
  wire flag;
  wire [7:0] x,y;

  // Instantiate the module
  top_IPM uut (
    .clk(clk),
    .pixelValue_In(pixelValue_In),
    .readAddress_In(readAddress_In),
    .writeA_out(writeA_out),
    .wren(wren),
    .pixelValueOut(pixelValueOut),
    .counter(counter),
    .flag(flag),
    .x(x),
    .y(y)
  );

  // Clock generation
  initial begin
    clk = 0;
    forever #50 clk = ~clk;
  end

endmodule

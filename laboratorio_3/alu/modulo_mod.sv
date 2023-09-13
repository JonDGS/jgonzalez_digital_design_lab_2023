module modulo_mod #(parameter N = 4) (
  input wire [N-1:0] a,
  input wire [N-1:0] b,
  output reg [N-1:0] y
);

  wire [N-1:0] remainder;

  // Calcula el cociente
  reg [N-1:0] quotient;
  assign quotient = a / b;

  // Calcula el producto del cociente y el divisor
  wire [N-1:0] product;
  assign product = quotient * b;

  // Calcula el residuo restando el producto de a y b
  assign remainder = a - product;

  // Si el residuo es negativo, ajusta el valor sumando b
  always @* begin
    if (remainder < 0) begin
      y = remainder + b;
    end else begin
      y = remainder;
    end
  end

endmodule





/*module modulo_mod #(parameter N = 4) (
  input wire [N-1:0] a,
  input wire [N-1:0] b,
  output wire [N-1:0] y
);

  assign y = a % b;

endmodule*/




module alu #(parameter N = 4) (
  input wire [N-1:0] a,
  input wire [N-1:0] b,
  input wire [3:0] operation,  // Código de control para la operación (0: AND, 1: OR, 2: XOR, otros valores personalizables)
  output reg [N-1:0] y,
  output logic [6:0] display1
);

  wire [N-1:0] and_result, or_result, xor_result;
  logic [3:0] displayResult1;

  and_module #(N) and_inst (
    .a(a),
    .b(b),
    .y(and_result)
  );

  or_module #(N) or_inst (
    .a(a),
    .b(b),
    .y(or_result)
  );

  xor_module #(N) xor_inst (
    .a(a),
    .b(b),
    .y(xor_result)
  );

  always @* begin
    case (operation)
      4'b0000: y = and_result; // AND
      4'b0001: y = or_result;  // OR
      4'b0010: y = xor_result; // XOR
      default: y = 0;          // Otras operaciones personalizables
    endcase
  end
  
endmodule

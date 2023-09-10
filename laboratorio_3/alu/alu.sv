module alu #(parameter N = 4) (
  input wire [N-1:0] a,
  input wire [N-1:0] b,
  input wire [N-1:0] data_shifts,
  input wire [N-1:0] shift_number,
  input wire [3:0] operation,  // Código de control para la operación (0: AND, 1: OR, 2: XOR, Faltan agregar los demás)
  output reg [N-1:0] y,
  output logic [6:0] display1
);

  wire [N-1:0] and_result, or_result, xor_result, shiftLeft_result,shiftRight_result,mod_result;
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
  
  Shifts #(.n(N)) shiftLeft_inst (
		.data(data_shifts),
		.shift(shift_number),
		.direccion(0),
		.y(shiftLeft_result)
   );
	
	Shifts #(.n(N)) shiftRight_inst (
		.data(data_shifts),
		.shift(shift_number),
		.direccion(1),
		.y(shiftRight_result)
   );
  
   modulo_mod #(N) residuo_inst (
    .a(a),
    .b(b),
    .y(mod_result)
  );

  always @* begin
    case (operation)
      4'b0000: y = and_result; // AND
      4'b0001: y = or_result;  // OR
      4'b0010: y = xor_result; // XOR
		4'b0010: y = xor_result; // XOR
		4'b0011: y = shiftLeft_result; // Shift Left
		4'b0100: y = shiftRight_result; // Shift Right
		4'b0101: y = mod_result; // Residuo

      default: y = 0;          // Otras operaciones personalizables
    endcase
  end
  
  
  
endmodule

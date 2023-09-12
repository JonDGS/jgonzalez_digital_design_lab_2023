module alu #(parameter N = 4) (
  input wire [N-1:0] a,
  input wire [N-1:0] b,
  input wire [3:0] operation,  // Código de control para la operación (0: AND, 1: OR, 2: XOR, Faltan agregar los demás)
  output reg [N-1:0] y,
  output logic carryOut,
  output logic zero,
  output logic overflowAdd,
  output logic overflowSub, 
  output logic negative,
  output logic [6:0] display1
);

  wire [N-1:0] and_result, or_result, xor_result, shiftLeft_result,shiftRight_result,mod_result, adder_result, sub_result;
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
		.data(a),
		.shift(b),
		.direccion(0),
		.y(shiftLeft_result)
   );
	
	Shifts #(.n(N)) shiftRight_inst (
		.data(a),
		.shift(b),
		.direccion(1),
		.y(shiftRight_result)
   );
  
   modulo_mod #(N) residuo_inst (
    .a(a),
    .b(b),
    .y(mod_result)
  );
  
  
  fourBitFullAdder #(N) sumador_inst(
  .A(a),
  .B(b),
  .K(1'b0),
  .S(adder_result),
  .Cout(carryOut),
  .Overflow(overflowAdd)
  );
  
    fourBitFullAdder #(N) sub_inst(
  .A(a),
  .B(b),
  .K(1'b1),
  .S(sub_result),
  .Cout(negative),
  .Overflow(overflowSub)
  );
  
  assign overflow = overflowAdd | overflowSub;
    
  always @* begin
  
    case (operation)
      4'b0000: y = and_result; // AND
      4'b0001: y = or_result;  // OR
      4'b0010: y = xor_result; // XOR
		4'b0010: y = xor_result; // XOR
		4'b0011: y = shiftLeft_result; // Shift Left
		4'b0100: y = shiftRight_result; // Shift Right
		4'b0101: y = mod_result; // Residuo
		4'b0110: y = adder_result; // Suma
		4'b0111: y = sub_result; // Resta
      4'b1111: y = 0;
    endcase
	 
	 if (y == 4'b0000) begin
        zero = 1'b1; // Establecer la bandera en 1 si el resultado es cero
    end else begin
        zero = 1'b0; // Establecer la bandera en 0 si el resultado no es cero
    end	 
  end
  
  
  
  always_comb begin
        case (y)
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
		  end
  
  
endmodule

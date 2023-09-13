module alu #(parameter N = 4) (
  input wire [N-1:0] a,
  input wire [N-1:0] b,
  input wire [3:0] operation,  // Código de control para la operación (0: AND, 1: OR, 2: XOR, Faltan agregar los demás)
  output logic carryOutF,
  output logic overflowF,
  output logic negativeF,
  output logic zeroF,
  output logic [6:0] display1,
  output logic [6:0] display2,
  output logic [6:0] display3,
  output logic [6:0] display4
);

  wire [N-1:0] and_result, or_result, xor_result, shiftLeft_result,shiftRight_result,mod_result, adder_result, sub_result, multi_resultA, multi_resultB, divQ_resultA, divQ_resultB, divR_resultA, divR_resultB;
  logic [3:0] displayResult1;
  reg [N-1:0] y;
  reg [N-1:0] x;
  reg [N-1:0] z;
  reg [N-1:0] w;
  logic carryOut;
  logic zero;
  logic overflowAdd;
  logic overflowSub; 
  logic negative;

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
  
  fourBitMultiplier #(N) multi_inst(
	.A(a),
	.B(b),
	.M({multi_resultA, multi_resultB})
	
	);
	
  fourBitDivider #(N+4) div_inst(
	.A(a),
	.B(b),
	.Q({divQ_resultA, divQ_resultB}),
	.R({divR_resultA, divR_resultB})
	);
	
  
  assign overflow = overflowAdd | overflowSub;
    
  always @* begin
  
    case (operation)
      4'b0000: begin
			y = and_result; // AND
		end
      4'b0001: begin
			y = or_result;  // OR
		end
      4'b0010: begin
			y = xor_result; // XOR
		end
		4'b0010: begin
			y = xor_result; // XOR
		end
		4'b0011: begin
			y = shiftLeft_result; // Shift Left
		end
		4'b0100: begin
			y = shiftRight_result; // Shift Right
		end
		4'b0101: begin
			y = mod_result; // Residuo
		end
		4'b0110: begin
			y = adder_result; // Suma
			carryOutF = carryOut;
			overflowF = overflowAdd;
		end
		4'b0111: begin
			y = sub_result; // Resta
			negativeF = negative;
			overflowF = overflowSub;
		end
		4'b1000: begin
			y = multi_resultB;
			x = multi_resultA;
		end
		4'b1001: begin
			y = divQ_resultB;
			x = divQ_resultA;
			z = divR_resultB;
			w = divR_resultA;
		end
      4'b1111: begin
			y = 0;
			x = 0;
			z = 0;
			w = 0;
			zeroF = 0;
			overflowF = 0;
			negativeF = 0;
			carryOutF = 0;
		end
    endcase
	 
	 if (y == 4'b0000) begin
        zeroF = 1'b1; // Establecer la bandera en 1 si el resultado es cero
    end else begin
        zeroF = 1'b0; // Establecer la bandera en 0 si el resultado no es cero
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
		  
		  case (x)
            4'b0000: display2 = 7'b1111111; // 0
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
		  
		  case (z)
            4'b0000: display3 = 7'b1111111; // 0
            4'b0001: display3 = 7'b1111001; // 1
            4'b0010: display3 = 7'b0100100; // 2
            4'b0011: display3 = 7'b0110000; // 3
            4'b0100: display3 = 7'b0011001; // 4
            4'b0101: display3 = 7'b0010010; // 5
            4'b0110: display3 = 7'b0000010; // 6
            4'b0111: display3 = 7'b1111000; // 7
            4'b1000: display3 = 7'b0000000; // 8
            4'b1001: display3 = 7'b0010000; // 9
            4'b1010: display3 = 7'b0001000; // A
            4'b1011: display3 = 7'b0000011; // B
            4'b1100: display3 = 7'b1000110; // C
            4'b1101: display3 = 7'b0100001; // D
            4'b1110: display3 = 7'b0000110; // E
            4'b1111: display3 = 7'b0001110; // F
            default: display3 = 7'b0000000;
        endcase
		  
		  case (w)
            4'b0000: display4 = 7'b1111111; // 0
            4'b0001: display4 = 7'b1111001; // 1
            4'b0010: display4 = 7'b0100100; // 2
            4'b0011: display4 = 7'b0110000; // 3
            4'b0100: display4 = 7'b0011001; // 4
            4'b0101: display4 = 7'b0010010; // 5
            4'b0110: display4 = 7'b0000010; // 6
            4'b0111: display4 = 7'b1111000; // 7
            4'b1000: display4 = 7'b0000000; // 8
            4'b1001: display4 = 7'b0010000; // 9
            4'b1010: display4 = 7'b0001000; // A
            4'b1011: display4 = 7'b0000011; // B
            4'b1100: display4 = 7'b1000110; // C
            4'b1101: display4 = 7'b0100001; // D
            4'b1110: display4 = 7'b0000110; // E
            4'b1111: display4 = 7'b0001110; // F
            default: display4 = 7'b0000000;
        endcase
		  end
		  
		  
  
  
endmodule

module xor_module #(parameter N = 4) (
  input wire [N-1:0] a,
  input wire [N-1:0] b,
  output wire [N-1:0] y
);

  genvar i;
  generate
    for (i = 0; i < N; i = i + 1) begin : bit_and_generate
      assign y[i] = a[i] ^ b[i];
    end
  endgenerate

endmodule



module clock_divider #(
  parameter DIV = 4  // division factor
)
(
  input  logic clk, 
  output logic clk_div
);

  localparam COUNTER_WIDTH = $clog2(DIV);
  
  logic [COUNTER_WIDTH-1:0] counter = 0;

  always_ff @(posedge clk) begin
    if(counter == DIV-1) begin
      counter <= 0;
      clk_div <= ~clk_div;
    end
    else begin
      counter <= counter + 1;
    end 
  end

endmodule
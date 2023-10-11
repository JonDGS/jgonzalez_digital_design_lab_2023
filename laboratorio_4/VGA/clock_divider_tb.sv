// Testbench
module clock_divider_tb;

// Clock parameters  
parameter CLK_FREQ = 100_000_000; // 100 MHz
parameter DIV = 4;

// Clock period 
localparam CLK_PERIOD = 1_000_000_000 / CLK_FREQ; // 10ns period

// Signals
logic clk;
logic clk_div;

// DUT
clock_divider #(
  .DIV(DIV) 
) dut (
  .clk(clk),
  .clk_div(clk_div)  
);

// Generate 100MHz clock
always begin
  clk = 1'b0; 
  #(CLK_PERIOD/2);
  clk = 1'b1;
  #(CLK_PERIOD/2); 
end

// Monitor divided clock
always @(posedge clk_div) begin
  $display("clk_div toggled at %0t", $time); 
end

endmodule
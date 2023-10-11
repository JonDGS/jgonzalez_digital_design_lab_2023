module ClockGenerator (
    input logic clk_in,  // Input clock (e.g., 100MHz)
    output logic clk_out = 0 // 25MHz output clock
);

reg [7:0] counter = 8'b0;

always @(posedge clk_in)
begin
    if (counter == 1)  // Divide by 50 (50MHz / 2 = 25MHz)
    begin
        counter <= 8'b0;
        clk_out <= ~clk_out;
    end
    else
        counter <= counter + 1;
end

endmodule

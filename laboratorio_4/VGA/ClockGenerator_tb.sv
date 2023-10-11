module ClockGenerator_tb;

logic clk_in = 1'b0;
logic clk_out = 1'b0;

ClockGenerator clock_gen (
    .clk_in(clk_in),
    .clk_out(clk_out)
);

initial begin


    // Generate the 100MHz clock for 50ns period
    forever begin
        #25 clk_in = ~clk_in;
    end
	 
end

endmodule

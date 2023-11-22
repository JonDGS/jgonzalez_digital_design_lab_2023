`timescale 1 ps / 1 ps

module ram1_tb();

    reg clk;
    reg [15:0] address;
    reg [7:0] data;
    reg wren;
    wire [7:0] q;

    ram1 ram (
        .address(address),
        .clock(clk),
        .data(data),
        .wren(wren),
        .q(q)
    );

    // Clock generation
    always #5 clk = ~clk; // Toggle the clock every 5 time units

    // Testbench stimulus
    initial begin
        clk = 0;
        address = 0;
        data = 8'h00;
        wren = 0;

        // Read data from memory
        for (int i = 0; i < 10; i = i + 1) begin
            #10; // Wait for 10 time units
            address = i;
            wren = 0;
            #10; // Wait for 10 time units
            $display("Memory[%0d] = %h", i, q);
        end

        $stop; // Stop simulation
    end

endmodule

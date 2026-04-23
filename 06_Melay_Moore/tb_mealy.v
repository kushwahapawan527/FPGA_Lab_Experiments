`timescale 1ns/1ps

module tb_mealy;

    reg clk;
    reg rst;
    reg x;
    wire y;

    // Instantiate DUT
    mealy_seq uut (
        .clk(clk),
        .rst(rst),
        .x(x),
        .y(y)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        // VCD dump
        $dumpfile("mealy.vcd");
        $dumpvars(0, tb_mealy);

        clk = 0;
        rst = 1;
        x = 0;

        // Reset release
        #10 rst = 0;

        // Input sequence
        #10 x = 1;
        #10 x = 0;
        #10 x = 1;
        #10 x = 1;  // detection point
        #10 x = 0;
        #10 x = 1;
        #10 x = 1;
        #10 x = 1;

        #50 $finish;
    end

endmodule

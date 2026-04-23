`timescale 1ns/1ps

module tb_moore;

reg clk, rst, x;
wire y;

moore_seq uut (.clk(clk), .rst(rst), .x(x), .y(y));

always #5 clk = ~clk;

initial begin
    $dumpfile("moore.vcd");
    $dumpvars(0, tb_moore);

    clk = 0; rst = 1; x = 0;
    #10 rst = 0;

    // same input
    #10 x=1;
    #10 x=0;
    #10 x=1;
    #10 x=1; // detect (1 cycle later)
    #10 x=0;
    #10 x=1;
    #10 x=1;

    #20 $finish;
end

endmodule

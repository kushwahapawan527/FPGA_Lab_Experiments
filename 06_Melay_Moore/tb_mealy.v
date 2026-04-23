`timescale 1ns/1ps

module tb_mealy;

reg clk, rst, x;
wire y;

mealy_seq uut (.clk(clk), .rst(rst), .x(x), .y(y));

always #5 clk = ~clk;

initial begin
    $dumpfile("mealy.vcd");
    $dumpvars(0, tb_mealy);

    clk = 0; rst = 1; x = 0;
    #10 rst = 0;

    // Input stream: 1011011 (overlap)
    #10 x=1;
    #10 x=0;
    #10 x=1;
    #10 x=1; // detect here
    #10 x=0;
    #10 x=1;
    #10 x=1; // detect again

    #20 $finish;
end

endmodule

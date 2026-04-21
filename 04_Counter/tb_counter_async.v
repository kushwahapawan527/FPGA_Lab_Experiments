`timescale 1ns/1ps

module tb_counter;

reg clk;
reg rst;
reg load;
reg up_down;
reg [7:0] data;
wire [7:0] count;

up_down_counter uut (
    .clk(clk),
    .rst(rst),
    .load(load),
    .up_down(up_down),
    .data(data),
    .count(count)
);

// clock generation
always #5 clk = ~clk;

initial begin
    $dumpfile("dump_counter.vcd");
    $dumpvars(0, tb_counter);

    clk = 0;
    rst = 1;
    load = 0;
    up_down = 1;
    data = 8'd10;

    #10 rst = 0;       // reset release

    #10 load = 1;      // load 10
    #10 load = 0;

    #50 up_down = 0;   // start down counting

    #50 rst = 1;       // async reset
    #10 rst = 0;

    #50 $finish;
end

endmodule

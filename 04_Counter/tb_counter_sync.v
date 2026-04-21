`timescale 1ns/1ps

module tb_counter;

reg clk;
reg rst;
reg load;
reg up_down;
reg [7:0] data;
wire [7:0] count;

up_down_counter_sync uut (
    .clk(clk),
    .rst(rst),
    .load(load),
    .up_down(up_down),
    .data(data),
    .count(count)
);

// Clock generation
always #5 clk = ~clk;

initial begin
    $dumpfile("dump_counter_sync.vcd");
    $dumpvars(0, tb_counter);

    clk = 0;
    rst = 0;
    load = 0;
    up_down = 1;
    data = 8'h0A;

    // Apply synchronous reset
    #10 rst = 1;
    #10 rst = 0;

    // Count UP
    #20;

    // Load value
    load = 1;
    data = 8'h55;
    #10 load = 0;

    // Count DOWN
    up_down = 0;
    #40;

    $finish;
end

endmodule

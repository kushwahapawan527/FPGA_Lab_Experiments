`timescale 1ns/1ps

module tb_usr_async;

reg clk, rst, load;
reg [1:0] mode;
reg [7:0] data;
reg serial_in;
wire [7:0] q;

// DUT
usr_async uut (
    .clk(clk),
    .rst(rst),
    .load(load),
    .mode(mode),
    .data(data),
    .serial_in(serial_in),
    .q(q)
);

// Clock generation
always #5 clk = ~clk;

initial begin
    $dumpfile("dump_async.vcd");
    $dumpvars(0, tb_usr_async);

    // Initial values
    clk = 0;
    rst = 0;
    load = 0;
    mode = 2'b00;
    data = 8'h00;
    serial_in = 1;

    // 🔴 Test asynchronous reset
    rst = 1;
    #10;
    rst = 0;

    // 🔴 Load operation
    data = 8'hAA;      // 10101010
    mode = 2'b11;
    #10;

    // 🔴 Hold
    mode = 2'b00;
    #10;

    // 🔴 Shift Right
    mode = 2'b01;
    #10;
    #10;

    // 🔴 Shift Left
    mode = 2'b10;
    #10;
    #10;

    // 🔴 Again Load new value
    data = 8'hF0;
    mode = 2'b11;
    #10;

    // 🔴 More shifts
    mode = 2'b01;
    #20;

    mode = 2'b10;
    #20;

    $finish;
end

endmodule



`timescale 1ns/1ps

module tb_cpu;

reg clk, rst;
reg [7:0] instruction;
wire [7:0] acc;

cpu uut (.clk(clk), .rst(rst), .instruction(instruction), .acc(acc));

always #5 clk = ~clk;

initial begin
    $dumpfile("cpu.vcd");
    $dumpvars(0, tb_cpu);

    clk = 0;
    rst = 1;

    #10 rst = 0;

    // LOAD 5
    instruction = 8'b0001_0101; #10;

    // ADD 3 → 8
    instruction = 8'b0010_0011; #10;

    // SUB 2 → 6
    instruction = 8'b0011_0010; #10;

    // AND 3 → 2
    instruction = 8'b0100_0011; #10;

    // OR 1 → 3
    instruction = 8'b0101_0001; #10;

    // XOR 2 → 1
    instruction = 8'b0110_0010; #10;

    // NOT → invert
    instruction = 8'b0111_0000; #10;

    $finish;
end

endmodule

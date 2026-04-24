`timescale 1ns/1ps

module tb_fp_adder;

reg [31:0] a, b;
wire [31:0] result;

fp_adder uut (.a(a), .b(b), .result(result));

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_fp_adder);

    // 1.0 + 1.0 = 2.0
    a = 32'h3F800000; b = 32'h3F800000; #10;

    // 1.5 + 2.5 = 4.0
    a = 32'h3FC00000; b = 32'h40200000; #10;

    // 5.5 + 1.5 = 7.0
    a = 32'h40B00000; b = 32'h3FC00000; #10;

    $finish;
end

endmodule

`timescale 1ns/1ps

module tb_divider_8bit;

reg [7:0] dividend;
reg [7:0] divisor;
wire [7:0] quotient;
wire [7:0] remainder;

divider_8bit uut (
    .dividend(dividend),
    .divisor(divisor),
    .quotient(quotient),
    .remainder(remainder)
);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_divider_8bit);

    dividend = 10; divisor = 2; #10;
    dividend = 15; divisor = 3; #10;
    dividend = 20; divisor = 4; #10;
    dividend = 25; divisor = 6; #10;
    dividend = 30; divisor = 7; #10;

    $finish;
end

endmodule

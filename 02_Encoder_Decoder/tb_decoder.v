`timescale 1ns/1ps

module tb_decoder;

reg [2:0] A;
wire [7:0] Y;

decoder3to8 uut(A, Y);

initial begin
$dumpfile("dump_decoder.vcd");
$dumpvars(0, tb_decoder);

A=0; #10;
A=1; #10;
A=2; #10;
A=3; #10;
A=4; #10;
A=5; #10;
A=6; #10;
A=7; #10;

$finish;
end

endmodule

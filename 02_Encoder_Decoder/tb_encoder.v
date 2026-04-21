`timescale 1ns/1ps

module tb_encoder;

reg [7:0] Y;
wire [2:0] A;

encoder8to3 uut(Y, A);

initial begin
$dumpfile("dump_encoder.vcd");
$dumpvars(0, tb_encoder);

Y=8'b00000001; #10;
Y=8'b00000010; #10;
Y=8'b00000100; #10;
Y=8'b00001000; #10;
Y=8'b00010000; #10;
Y=8'b00100000; #10;
Y=8'b01000000; #10;
Y=8'b10000000; #10;

$finish;
end

endmodule

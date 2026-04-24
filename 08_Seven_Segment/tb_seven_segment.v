`timescale 1ns/1ps

module tb_seven_segment;

reg [3:0] data;
wire [6:0] seg;

seven_segment uut (
    .data(data),
    .seg(seg)
);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_seven_segment);

    data = 4'h0; #10;
    data = 4'h1; #10;
    data = 4'h5; #10;
    data = 4'hA; #10;
    data = 4'hF; #10;

    $finish;
end

endmodule

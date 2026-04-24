`timescale 1ns/1ps

module tb_multiplier_8bit;

    reg [7:0] A, B;
    wire [15:0] P;

    multiplier_8bit uut (
        .A(A),
        .B(B),
        .P(P)
    );

    initial begin
        $dumpfile("mult8.vcd");
        $dumpvars(0, tb_multiplier_8bit);

        A = 0; B = 0;

        #10 A = 8'd5;  B = 8'd3;   // 15
        #10 A = 8'd10; B = 8'd4;   // 40
        #10 A = 8'd15; B = 8'd15;  // 225
        #10 A = 8'd25; B = 8'd2;   // 50

        #20 $finish;
    end

endmodule

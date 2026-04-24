`timescale 1ns/1ps

module tb_alu;

reg [7:0] A, B;
reg [2:0] sel;
wire [7:0] result;
wire carry;

alu uut (
    .A(A),
    .B(B),
    .sel(sel),
    .result(result),
    .carry(carry)
);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_alu);

    A = 8'd10; B = 8'd5;

    sel = 3'b000; #10; // ADD
    sel = 3'b001; #10; // SUB
    sel = 3'b010; #10; // AND
    sel = 3'b011; #10; // OR
    sel = 3'b100; #10; // XOR
    sel = 3'b101; #10; // NOT
    sel = 3'b110; #10; // SHIFT LEFT
    sel = 3'b111; #10; // SHIFT RIGHT

    $finish;
end

endmodule

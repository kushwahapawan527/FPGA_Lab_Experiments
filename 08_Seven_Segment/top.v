module top(
    input [7:0] A,
    input [7:0] B,
    output [6:0] seg
);

wire [15:0] P;

assign P = A * B;

// सिर्फ lower 4-bit display कर रहे हैं
seven_segment display(
    .data(P[3:0]),
    .seg(seg)
);

endmodule

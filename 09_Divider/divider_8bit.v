module divider_8bit (
    input [7:0] dividend,
    input [7:0] divisor,
    output [7:0] quotient,
    output [7:0] remainder
);

assign quotient  = (divisor != 0) ? dividend / divisor : 0;
assign remainder = (divisor != 0) ? dividend % divisor : 0;

endmodule

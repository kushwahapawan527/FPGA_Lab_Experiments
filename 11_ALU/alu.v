module alu (
    input [7:0] A,
    input [7:0] B,
    input [2:0] sel,
    output reg [7:0] result,
    output reg carry
);

always @(*) begin
    case (sel)

        // Arithmetic Operations
        3'b000: {carry, result} = A + B;   // ADD
        3'b001: {carry, result} = A - B;   // SUB

        // Logical Operations
        3'b010: begin result = A & B; carry = 0; end
        3'b011: begin result = A | B; carry = 0; end
        3'b100: begin result = A ^ B; carry = 0; end
        3'b101: begin result = ~A;    carry = 0; end

        // Shift Operations
        3'b110: begin result = A << 1; carry = 0; end
        3'b111: begin result = A >> 1; carry = 0; end

        default: begin result = 8'b0; carry = 0; end

    endcase
end

endmodule

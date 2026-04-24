module cpu (
    input clk,
    input rst,
    input [7:0] instruction,
    output reg [7:0] acc
);

wire [3:0] opcode = instruction[7:4];
wire [7:0] data = {4'b0000, instruction[3:0]};

always @(posedge clk or posedge rst) begin
    if (rst)
        acc <= 8'b0;
    else begin
        case (opcode)

            4'b0001: acc <= data;         // LOAD
            4'b0010: acc <= acc + data;   // ADD
            4'b0011: acc <= acc - data;   // SUB
            4'b0100: acc <= acc & data;   // AND
            4'b0101: acc <= acc | data;   // OR
            4'b0110: acc <= acc ^ data;   // XOR
            4'b0111: acc <= ~acc;         // NOT

            default: acc <= acc;

        endcase
    end
end

endmodule

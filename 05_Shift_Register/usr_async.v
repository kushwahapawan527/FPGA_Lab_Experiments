module usr_async (
    input clk,
    input rst,              // asynchronous reset
    input load,             // synchronous load
    input [1:0] mode,       // 00: hold, 01: shift right, 10: shift left, 11: load
    input [7:0] data,       // parallel input
    input serial_in,        // serial input
    output reg [7:0] q
);

always @(posedge clk or posedge rst) begin
    if (rst)
        q <= 8'b00000000;   // async reset
    else begin
        case (mode)
            2'b00: q <= q;                              // hold
            2'b01: q <= {serial_in, q[7:1]};            // shift right
            2'b10: q <= {q[6:0], serial_in};            // shift left
            2'b11: q <= data;                           // load
        endcase
    end
end

endmodule

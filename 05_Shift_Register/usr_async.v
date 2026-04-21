module usr_async (
    input clk,
    input rst,              // async reset
    input load,             // sync load
    input [1:0] mode,
    input [7:0] data,
    input serial_in,
    output reg [7:0] q
);

always @(posedge clk or posedge rst) begin
    if (rst)
        q <= 8'b0;

    else begin
        case (mode)

            2'b00: q <= q;  // hold

            2'b01: q <= {serial_in, q[7:1]}; // shift right

            2'b10: q <= {q[6:0], serial_in}; // shift left

            2'b11: begin
                if (load)
                    q <= data;
            end

        endcase
    end
end

endmodule

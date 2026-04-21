module usr_sync (
    input clk,
    input rst,          // sync reset
    input load,
    input [1:0] mode,
    input [7:0] data,
    input serial_in,
    output reg [7:0] q
);

always @(posedge clk) begin
    if (rst)
        q <= 8'b0;

    else begin
        case (mode)

            2'b00: q <= q;

            2'b01: q <= {serial_in, q[7:1]};

            2'b10: q <= {q[6:0], serial_in};

            2'b11: begin
                if (load)
                    q <= data;
            end

        endcase
    end
end

endmodule

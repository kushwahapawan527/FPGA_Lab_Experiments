module up_down_counter_sync (
    input clk,
    input rst,         // synchronous reset
    input load,        // synchronous load
    input up_down,     // 1 = up, 0 = down
    input [7:0] data,
    output reg [7:0] count
);

always @(posedge clk) begin
    if (rst)
        count <= 8'b0;           // reset at clock edge
    else if (load)
        count <= data;           // load at clock edge
    else if (up_down)
        count <= count + 1;      // up count
    else
        count <= count - 1;      // down count
end

endmodule

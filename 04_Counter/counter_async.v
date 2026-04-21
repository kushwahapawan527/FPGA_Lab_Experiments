module up_down_counter (
    input clk,
    input rst,          // asynchronous reset
    input load,         // synchronous load
    input up_down,      // 1 = up, 0 = down
    input [7:0] data,   // load value
    output reg [7:0] count
);

always @(posedge clk or posedge rst) begin
    if (rst)
        count <= 8'b00000000;     // async reset
    else if (load)
        count <= data;            // sync load
    else if (up_down)
        count <= count + 1;       // up count
    else
        count <= count - 1;       // down count
end

endmodule

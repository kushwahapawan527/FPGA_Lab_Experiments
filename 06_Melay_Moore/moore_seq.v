module moore_seq (
    input clk,
    input rst,
    input x,
    output reg y
);

reg [2:0] state, next;

parameter S0=3'd0, S1=3'd1, S2=3'd2, S3=3'd3, S4=3'd4;

// State update
always @(posedge clk or posedge rst) begin
    if (rst)
        state <= S0;
    else
        state <= next;
end

// Next state
always @(*) begin
    case (state)
        S0: next = (x) ? S1 : S0;
        S1: next = (x) ? S1 : S2;
        S2: next = (x) ? S3 : S0;
        S3: next = (x) ? S4 : S2;
        S4: next = (x) ? S1 : S2;
        default: next = S0;
    endcase
end

// Output (state-based)
always @(*) begin
    if (state == S4)
        y = 1;
    else
        y = 0;
end

endmodule

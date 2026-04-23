module mealy_seq (
    input clk,
    input rst,
    input x,
    output reg y
);

    reg [1:0] state, next;

    // State encoding
    parameter S0 = 2'b00,
              S1 = 2'b01,
              S2 = 2'b10,
              S3 = 2'b11;

    // State transition
    always @(posedge clk or posedge rst) begin
        if (rst)
            state <= S0;
        else
            state <= next;
    end

    // Next state + output logic (Mealy)
    always @(*) begin
        case (state)
            S0: begin
                if (x) begin
                    next = S1;
                    y = 0;
                end else begin
                    next = S0;
                    y = 0;
                end
            end

            S1: begin
                if (x) begin
                    next = S1;
                    y = 0;
                end else begin
                    next = S2;
                    y = 0;
                end
            end

            S2: begin
                if (x) begin
                    next = S3;
                    y = 0;
                end else begin
                    next = S0;
                    y = 0;
                end
            end

            S3: begin
                if (x) begin
                    next = S1;
                    y = 1;   // sequence detected
                end else begin
                    next = S2;
                    y = 0;
                end
            end

            default: begin
                next = S0;
                y = 0;
            end
        endcase
    end

endmodule

module fp_adder(
    input  [31:0] a,
    input  [31:0] b,
    output [31:0] result
);

    // split fields
    wire sign_a = a[31];
    wire sign_b = b[31];
    wire [7:0] exp_a = a[30:23];
    wire [7:0] exp_b = b[30:23];
    wire [23:0] man_a = {1'b1, a[22:0]};
    wire [23:0] man_b = {1'b1, b[22:0]};

    reg sign_r;
    reg [7:0] exp_r;
    reg [24:0] man_r; // extra bit for carry

    reg [23:0] man_a_shift, man_b_shift;

    always @(*) begin
        // Step 1: align exponents
        if (exp_a > exp_b) begin
            exp_r = exp_a;
            man_a_shift = man_a;
            man_b_shift = man_b >> (exp_a - exp_b);
            sign_r = sign_a;
        end else begin
            exp_r = exp_b;
            man_a_shift = man_a >> (exp_b - exp_a);
            man_b_shift = man_b;
            sign_r = sign_b;
        end

        // Step 2: add/sub mantissa
        if (sign_a == sign_b) begin
            man_r = man_a_shift + man_b_shift;
            sign_r = sign_a;
        end else begin
            if (man_a_shift > man_b_shift) begin
                man_r = man_a_shift - man_b_shift;
                sign_r = sign_a;
            end else begin
                man_r = man_b_shift - man_a_shift;
                sign_r = sign_b;
            end
        end

        // Step 3: normalization
        if (man_r[24]) begin
            man_r = man_r >> 1;
            exp_r = exp_r + 1;
        end else begin
            while (man_r[23] == 0 && exp_r > 0) begin
                man_r = man_r << 1;
                exp_r = exp_r - 1;
            end
        end
    end

    assign result = {sign_r, exp_r, man_r[22:0]};

endmodule

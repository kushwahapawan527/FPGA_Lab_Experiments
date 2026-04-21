module tb_mux;

reg [3:0] I;
reg [1:0] S;
wire Y;

mux_4to1 uut(I, S, Y);

initial begin
    $dumpfile("dump_mux.vcd");
    $dumpvars(0, tb_mux);

    I = 4'b1010;

    S = 2'b00; #10;
    S = 2'b01; #10;
    S = 2'b10; #10;
    S = 2'b11; #10;

    $finish;
end

endmodule

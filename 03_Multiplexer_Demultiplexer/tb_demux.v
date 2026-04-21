module tb_demux;

reg D;
reg [1:0] S;
wire [3:0] Y;

demux_1to4 uut(D, S, Y);

initial begin
    $dumpfile("dump_demux.vcd");
    $dumpvars(0, tb_demux);

    D = 1;

    S = 2'b00; #10;
    S = 2'b01; #10;
    S = 2'b10; #10;
    S = 2'b11; #10;

    $finish;
end

endmodule

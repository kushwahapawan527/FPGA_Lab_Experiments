module tb_usr_sync;

reg clk, rst, load;
reg [1:0] mode;
reg [7:0] data;
reg serial_in;
wire [7:0] q;

usr_sync uut(clk, rst, load, mode, data, serial_in, q);

always #5 clk = ~clk;

initial begin
    $dumpfile("dump_sync.vcd");
    $dumpvars(0, tb_usr_sync);

    clk = 0;
    rst = 1;
    load = 0;
    mode = 0;
    data = 8'b11001100;
    serial_in = 1;

    #10 rst = 0;

    #10 mode = 2'b11; load = 1;
    #10 load = 0;

    #20 mode = 2'b01;
    #20 mode = 2'b10;

    #20 $finish;
end

endmodule

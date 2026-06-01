`timescale 1ns/1ps

module tb;

reg clk = 0;
reg rst_n = 0;

reg [7:0] ui_in = 0;
reg [7:0] uio_in = 0;

wire [7:0] uo_out;
wire [7:0] uio_out;
wire [7:0] uio_oe;

always #5 clk = ~clk;

tt_um_example dut (
    .ui_in(ui_in),
    .uo_out(uo_out),
    .uio_in(uio_in),
    .uio_out(uio_out),
    .uio_oe(uio_oe),
    .ena(1'b1),
    .clk(clk),
    .rst_n(rst_n)
);

initial begin
    #20;
    rst_n = 1;
    #200;
    $finish;
end

endmodule



`timescale 1ns/1ps
module tb_top;
  reg clk = 0;
  wire led;
  top dut(.clk(clk), .led(led));
  always #5 clk = ~clk;
  initial begin
    repeat (8) @(posedge clk);
    $display("FPGA fixture simulation PASS");
    $finish;
  end
endmodule

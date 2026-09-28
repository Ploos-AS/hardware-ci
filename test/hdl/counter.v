module counter(input clk,input reset,input enable,output reg [1:0] q);
always @(posedge clk) begin
  if (reset) q <= 2'b00;
  else if (enable) q <= q + 2'b01;
end
endmodule

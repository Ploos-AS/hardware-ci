module counter_tb;
reg clk=0, reset=1, enable=0; wire [1:0] q; integer errors=0;
counter dut(clk,reset,enable,q);
task pulse; begin #1 clk=1; #1 clk=0; end endtask
task check; input [1:0] value; begin if(q !== value) errors=errors+1; end endtask
initial begin
 pulse; check(2'b00); reset=0; enable=1; pulse; check(2'b01); pulse; check(2'b10);
 enable=0; pulse; check(2'b10); reset=1; pulse; check(2'b00);
 if(errors) $fatal(1,"%0d failures",errors);
 $display("PASS sequential HDL fixture"); $finish;
end
endmodule

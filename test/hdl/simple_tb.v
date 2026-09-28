module simple_tb;
  reg A, B; wire Y; integer errors=0;
  simple dut(A,B,Y);
  task check; input a,b,y; begin A=a; B=b; #1; if(Y!==y) errors=errors+1; end endtask
  initial begin
    check(0,0,0); check(0,1,1); check(1,0,1); check(1,1,0);
    if(errors) $fatal(1,"%0d failures",errors);
    $display("PASS HDL fixture"); $finish;
  end
endmodule

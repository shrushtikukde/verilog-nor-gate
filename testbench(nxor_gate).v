module tb;
reg a,b;
wire y;
nor_gate dut(y,a,b);
initial begin
  $dumpfile("dump.vcd");
  $dumpvars(0,tb);
  a=0;b=0;
  #10 a=0;b=1;
  #10 a=1;b=0;
  #10 a=1;b=1;
  #10 $finish;
end
initial begin 
  $monitor("time=%0t a=%b b=%b y=%b",$time,y,a,b);
end
endmodule
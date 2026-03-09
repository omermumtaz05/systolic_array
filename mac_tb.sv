module tb();
  
 logic clock;
  logic reset;
  logic [31:0] Ain, Bin, Cin;
  logic [31:0] Aout, Bout, Cout;
  
  
  
  MAC uut(reset, clock, Ain, Bin, Cin, Aout,Bout, Cout);
  
  
  
  initial clock = 0;
  always #5 clock = ~clock;
  
  initial begin
    clock = 0; reset = 1;
    #10;
    reset = 0;
    #10;
    Cin = 32'd10; Ain = 32'd5; Bin = 32'd5;
    
    #10;
    $display("Aout = %d, Bout = %d, Cout = %d", Aout, Bout, Cout);
    #10;
    
    $finish;    
    
  end
  
endmodule


module tb();
  
  logic reset;
  logic clock;
  logic [31:0] A0;
  logic [31:0] A1;
  logic [31:0] A2;
  logic [31:0] A3;

  logic [31:0] B0;
  logic [31:0] B1;
  logic [31:0] B2;
  logic [31:0] B3;
  
  logic [31:0] dot_prod;
  
  
  dot_product uut(
  
   reset,
  
   clock,
  
 A0,
  A1,
  A2,
  A3,

   B0,
 B1,
  B2,
   B3,
 	
 dot_prod
  
);
  
  
  
  initial clock = 0;
  always #5 clock = ~clock;
  
  initial begin
    clock = 0; reset = 1;
    #10;
    reset = 0;
    #10;
    A0 = 32'd1; A1 = 32'd2; A2 = 32'd3; A3 = 32'd4;
    B0 = 32'd1; B1 = 32'd2; B2 = 32'd3; B3 = 32'd4;

    
    #10;
        #10;

        #10;

        #10;

        #10;

    $display("dot product of (1, 2, 3, 4) . (1, 2, 3, 4) = %d", dot_prod);
    #10;
    
    $finish;    
    
  end
  
endmodule

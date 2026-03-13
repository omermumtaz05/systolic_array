module dot_product(
  
  input reset,
  
  input clock,
  
  input logic [31:0] A0,
  input logic [31:0] A1,
  input logic [31:0] A2,
  input logic [31:0] A3,

  input logic [31:0] B0,
  input logic [31:0] B1,
  input logic [31:0] B2,
  input logic [31:0] B3,
 	
  output logic [31:0] dot_prod
  
);
  
  logic [31:0] Aint [3:0];
  logic [31:0] Bint [3:0];
  logic [31:0] Cint [3:0];
  
  MAC block1(.reset(reset), .clock(clock), .Ain(A0), .Bin(B0), .Cin('0), .Aout(Aint[0]), .Bout(Bint[0]), .Cout(Cint[0]));
  
  MAC block2(.reset(reset), .clock(clock), .Ain(A1), .Bin(B1), .Cin(Cint[0]), .Aout(Aint[1]), .Bout(Bint[1]), .Cout(Cint[1]));
  
  MAC block3(.reset(reset), .clock(clock), .Ain(A2), .Bin(B2), .Cin(Cint[1]), .Aout(Aint[2]), .Bout(Bint[2]), .Cout(Cint[2]));
  
  MAC block4(.reset(reset), .clock(clock), .Ain(A3), .Bin(B3), .Cin(Cint[2]), .Aout(Aint[3]), .Bout(Bint[3]), .Cout(Cint[3]));

  assign dot_prod = Cint[3];
  
  
  
endmodule

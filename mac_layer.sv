
module MAC(
  input reset,
  input clock,
  input logic [31:0] Ain,
  input logic [31:0] Bin,
  input logic [31:0] Cin,

  output logic [31:0] Aout,
  output logic [31:0] Bout,
  output logic [31:0] Cout
);
  
  reg [31:0] regA, regB, regC; 
  
  
  always_comb

    
    begin
      regA = Ain;
      regB = Bin;
      regC = Cin + (Ain * Bin);
      
    	
    end
  
  	
  always_ff @ (posedge clock)
    if(reset)
      begin
        Cout <= '0;
        Aout <= '0;
        Bout <= '0;
      end
    else
      begin
        Cout <= regC;
        Aout <= regA;
        Bout <= regB;

      end

  
  
  
endmodule
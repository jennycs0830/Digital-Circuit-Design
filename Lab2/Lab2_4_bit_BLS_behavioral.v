module Lab2_4_bit_BLS_behavioral (input [3:0]X,Y,input Bin,output reg Bout,output reg [3:0]Diff);
    
    always @(X,Y,Bin)
      begin
        {Bout,Diff}=X-Y-Bin;
      end
endmodule
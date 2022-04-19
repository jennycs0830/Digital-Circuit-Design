module Lab2_encoder_5bit_behavior (input [0:4]D,output reg [2:0]A,output reg V);
    always@(D)
    begin
        A[0]=((~D[0]) & D[1]) | ((~D[0]) & (~D[1]) & (~D[2]) & D[3]);
        A[1]=((~D[0]) & (~D[1]) & (~D[2]) & D[3]) | ((~D[0]) & (~D[1]) & D[2]);
        A[2]=(~D[0]) & (~D[1]) & (~D[2]) & (~D[3]) & D[4];
        V=D[0] | D[1] | D[2] | D[3] | D[4];
    end
endmodule
module Lab2_4_bit_BLS_gatelevel (input [3:0]X,Y,input Bin,output Bout,output[3:0]Diff);
    wire[3:0]P,G,X_not,P_not,PB;
    wire[3:1]B;

    xnor#(20)(P[0],X[0],Y[0]);
    xnor#(20)(P[1],X[1],Y[1]);
    xnor#(20)(P[2],X[2],Y[2]);
    xnor#(20)(P[3],X[3],Y[3]);
    not(X_not[0],X[0]);
    not(X_not[1],X[1]);
    not(X_not[2],X[2]);
    not(X_not[3],X[3]);
    or#(10)(G[0],X_not[0],Y[0]);
    or#(10)(G[1],X_not[1],Y[1]);
    or#(10)(G[2],X_not[2],Y[2]);
    or#(10)(G[3],X_not[3],Y[3]);
    and#(10)(PB[0],P[0],Bin);
    and#(10)(PB[1],P[1],B[1]);
    and#(10)(PB[2],P[2],B[2]);
    and#(10)(PB[3],P[3],B[3]);
    or#(10)(B[1],PB[0],G[0]);
    or#(10)(B[2],PB[1],G[1]);
    or#(10)(B[3],PB[2],G[2]);
    or#(10)(Bout,PB[3],G[3]);
    not(P_not[0],P[0]);
    not(P_not[1],P[1]);
    not(P_not[2],P[2]);
    not(P_not[3],P[3]);
    xor#(20)(Diff[0],P_not[0],Bin);
    xor#(20)(Diff[1],P_not[1],B[1]);
    xor#(20)(Diff[2],P_not[2],B[2]);
    xor#(20)(Diff[3],P_not[3],B[3]);

endmodule
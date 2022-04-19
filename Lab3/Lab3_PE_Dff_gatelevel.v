module Lab3_PE_Dff_gatelevel (input D,clock,output Q,Qb);
    wire w1,w2,Sb,Rb;
    nand#(5)(w2,D,Rb);
    nand#(5)(w1,w2,Sb);
    nand#(5)(Rb,Sb,clock,w2);
    nand#(5)(Sb,clock,w1);
    Lab3_SbRb_Latch_gatelevel M(Sb,Rb,Q,Qb);
endmodule
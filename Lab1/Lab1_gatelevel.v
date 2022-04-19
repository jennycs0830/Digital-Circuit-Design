module Lab1_gatelevel(F,A,B,C,D);
    output F;
    input A,B,C,D;
    wire W1,W2,W3,W4,W5;

    not G1(W1,C);
    not G6(W6,B);
    or G2(W2,A,B);
    or G3(W3,W1,D);
    and G4(W4,W2,W3);
    or G5(W5,A,C);
    and G7(W7,W5,W6);
    or(F,W4,W7);
endmodule
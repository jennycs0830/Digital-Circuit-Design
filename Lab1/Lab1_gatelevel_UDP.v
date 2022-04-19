primitive Lab1_UDP(W4,A,B,C,D);
    output W4;
    input A,B,C,D;
    //Truth table for F=m(5,6,7,9,10,11,13,14,15)//
    table
    //  A B C D:W4//
        0 0 0 0:0;
        0 0 0 1:0;
        0 0 1 0:0;
        0 0 1 1:0;
        0 1 0 0:0;
        0 1 0 1:1;
        0 1 1 0:1;
        0 1 1 1:1;
        1 0 0 0:0;
        1 0 0 1:1;
        1 0 1 0:1;
        1 0 1 1:1;
        1 1 0 0:0;
        1 1 0 1:1;
        1 1 1 0:1;
        1 1 1 1:1;
    endtable
endprimitive

module Lab1_gatelevel_UDP (F,A,B,C,D);
    output F;
    input A,B,C,D;
    wire W1,W4,W5,W6,W7;

    not(W1,C);
    Lab1_UDP M0(W4,A,B,W1,D);
    or(W5,A,C);
    not(W6,B);
    and(W7,W5,W6);
    or(F,W4,W7);
endmodule


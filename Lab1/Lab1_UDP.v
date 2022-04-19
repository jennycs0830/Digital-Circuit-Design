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
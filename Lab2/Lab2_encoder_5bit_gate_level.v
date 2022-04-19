module Lab2_encoder_5bit_gate_level (input [0:4]D,output [2:0]A,output V);
    wire E0,E1,E2,E3,E4,E5,E6;

    not no(E0,D[0]),
        n1(E1,D[1]),
        n2(E2,D[2]),
        n3(E3,D[3]);
    and a0(E4,E0,D[1]),
        a1(E5,E0,E1,D[2]),
        a2(E6,E0,E1,E2,D[3]),
        a3(A[2],E0,E1,E2,E3,D[4]);
    or o0(A[0],E4,E6),
       o1(A[1],E6,E5),
       o2(V,D[0],D[1],D[2],D[3],D[4]);
       
endmodule
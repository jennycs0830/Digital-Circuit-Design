module Lab3_Sequence_Recognizer_structure (input x,clock,reset,output z);
    wire TA,TB,TC,A,B,C,DA,DB,DC;
    //flip flop equations
    assign DA=(~C&x)||(B&C&~x);
    assign DB=(B&~C&~x)||(A&~C&~x)||(B&C)||(A&C&x);
    assign DC=~x;
    //output equation
    assign Z=(B&~C&~x)||(A&C&x);

    D_flip_flop_AR MA(A,DA,clock,reset);
    D_flip_flop_AR MB(B,DB,clock,reset);
    D_flip_flop_AR MC(C,DC,clock,reset);
endmodule
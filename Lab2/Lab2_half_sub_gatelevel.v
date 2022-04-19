module Lab2_half_sub_gatelevel (input x,y,output B,D);
    wire x_not;

    not (x_not,x);
    and#(10) (B,x_not,y);
    xor#(20) (D,x,y);
endmodule
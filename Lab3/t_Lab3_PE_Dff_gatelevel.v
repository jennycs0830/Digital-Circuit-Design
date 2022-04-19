module t_Lab3_PE_Dff_gatelevel ();
    reg D,clock;
    wire Q,Qb;
    Lab3_PE_Dff_gatelevel M1(D,clock,Q,Qb);
    
    initial begin
        clock=0;
        forever #20 clock=~clock;
    end

    initial fork
        D=1'b1;
        #25 D=1'b0;
        #65 D=1'b1;
        #88 D=1'b0;
        #122 D=1'b1;
        #195 D=1'b0;
    join
    initial #300 $finish;
    initial begin
        $dumpfile("Lab3_PE_Dff_gatelevel.vcd");
        $dumpvars;
    end
endmodule
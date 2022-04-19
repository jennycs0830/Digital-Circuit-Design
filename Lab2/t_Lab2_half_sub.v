module t_Lab2_half_sub ;
    wire B,D;
    reg x,y;
    Lab2_half_sub_gatelevel M3(x,y,B,D);

    initial 
    begin
       x=1'b0;y=1'b0;
       #50 x=1'b0;y=1'b1;
       #50 x=1'b1;y=1'b0;
       #50 x=1'b1;y=1'b1;
    end
    initial #200 $finish;
    initial begin
        $dumpfile("Lab2_half_sub.vcd");
		$dumpvars;
    end
endmodule
module t_Lab3_Sequence_Recognizer ();
    wire z;
    reg x,clock,reset;

    Lab3_Sequence_Recognizer_state_diagram M1(x,clock,reset,z);
    Lab3_Sequence_Recognizer_structure M2(x,clock,reset,z);

    initial #200 $finish;
    initial begin
        clock=0;
        forever #5 clock=~clock;
    end
    initial fork
        reset=0;
		#2 reset=1;
		    x=0;
		#10 x=1;
		#20 x=0;
		#30 x=0;
		#40 x=1;
		#50 x=0;
		#60 x=0;
		#70 x=1;
		#80 x=1;
		#87 reset=0;
    join
    initial #100 $finish;
    initial begin
        $dumpfile("Lab3_Sequence_Recognizer.vcd");
        $dumpvars;
    end
endmodule
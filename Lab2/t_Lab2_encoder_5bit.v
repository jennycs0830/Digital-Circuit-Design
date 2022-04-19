module t_Lab2_encoder_5bit ();
    wire [2:0]A1,A2,A3;
    wire V1,V2,V3;
    reg [4:0]D;

    Lab2_encoder_5bit_gate_level EGL (D,A1,V1);
    Lab2_encoder_5bit_dataflow ED(D,A2,V2);
    Lab2_encoder_5bit_behavior EB(D,A3,V3);

    initial begin
        D=5'b00000;
        #50 D=5'b00001;
        #50 D=5'b00011;
        #50 D=5'b00110;
        #50 D=5'b01001;
        #50 D=5'b01101;
        #50 D=5'b10110;
        #50 D=5'b11010;
    end
    initial #400 $finish;

    initial begin
        $dumpfile("Lab2_encoder_5bit.vcd");
        $dumpvars;
    end
    
endmodule
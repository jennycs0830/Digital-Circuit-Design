module Lab3_Sequence_Recognizer_state_diagram (input x,clock,reset,output reg z);
    reg[1:0] state,next_state;
    parameter s0=3'b000,s1=3'b001,s2=3'b010,s3=3'b011,s4=3'b100,s5=3'b101;
    always@(posedge clock,negedge reset)
        if(reset==0) state<=s0;
        else state<=next_state;
    always@(state,x)
        case (state)
            s0:if(x) next_state=s1;else next_state=s4;
            s1:if(x) next_state=s1;else next_state=s2;
            s2:if(x) next_state=s3;else next_state=s4;
            s3:if(x) next_state=s5;else next_state=s2;
            s4:if(x) next_state=s3;else next_state=s4;
            s5:if(x) next_state=s1;else next_state=s2;
        endcase
    always @(state,x)
        case (state)
            s0,s1,s3,s4:z=0;
            s2:z=~x;
            s5:z=x;  
        endcase
endmodule
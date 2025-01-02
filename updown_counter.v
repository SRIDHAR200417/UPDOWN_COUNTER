module updown_counter(clk,reset,mode,out);
input clk;
input reset;
input mode;
output reg[3:0] out;
always@(posedge clk)
begin
case({reset,mode})
2'b10:out =0;
2'b11:out =0;
2'b00:out =out + 1;
2'b01:out =out - 1;
endcase
end
endmodule


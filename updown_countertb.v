
module updown_countertb();
 reg clk;
 reg reset;
 reg mode;
 wire[3:0] out;

updown_counter uut(.clk(clk),.reset(reset),.mode(mode),.out(out));
initial
begin
reset = 1;
clk = 1;
mode = 0;

#100;
reset = 0;
mode =0;
#100;
reset = 0;
mode = 1;
end
always #5 clk=~clk;
endmodule
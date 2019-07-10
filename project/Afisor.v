module Afisor (output [2:0] out_afis,
					input resetNUM, clk
					input [2:0] in_afis);
reg [31:0] counter; //neaaparat registru 
always @ (negedge clk)
begin 
if (reset == 0) counter <= 0;
else counter <= counter + 1; 
if (counter == 50000000)
out_afis <= ~in_afis;
else if(counter==100000000)
begin
out_afis <= 3'b111;
counter <= 0;
end
end
endmodule
 
	
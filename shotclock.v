module shotclock(clk, sel, reset,  countdown); 
	parameter n = 5; 
	input reset; 
	input clk; 
	input sel; 
	output [n-1:0] countdown; 
	reg[n-1:0] count; 
	count = (sel == 0) ? 5'd30 : 5'd24;
	
	@always(clk)
	begin 
		if(count > 0)
			count <= count-1; 	
	end 
	
	@always(reset)
	begin 
		count = (sel == 0) ? 5'd30 : 5'd24;
	end 
	assign countdown = count; 

endmodule 
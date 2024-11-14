module sevensegmentdecoder(in,out);
	input wire[4:0] in;
	//output right_top, top, left_top, miin[3]in[3]le, left_in[1]ottom, in[1]ottom, right_in[1]ottom; 
	output wire[6:0] out;

	assign out[0] = ((~in[0])*(~in[1])*(~in[2])*in[3]) | ((~in[0])*(in[1])*(~in[2])*(~in[3])) |  (in[0]*(~in[1])*in[2]*in[4]) | (in[0]*in[1]*(~in[2])*in[3]);
	assign out[1] = ((~in[0])*in[1]*(~in[2])*in[3])|((~in[0])*in[1]*in[2]*(~in[3]))|(in[0]*(~in[1])*in[2]*in[3]) | (in[0]*in[1]*(~in[2])*(~in[3])) | (in[0]*in[1]*in[2]*(~in[3])) | (in[0]*in[1]*in[2]*in[3]);
	assign out[2] = (~in[0]*~in[1]*in[2]*~in[3]) | (in[0]*in[1]*~in[2]*~in[3]) | (in[0]*in[1]*in[2]*~in[3]) | (in[0]*in[1]*in[2]*in[3]);
	assign out[3] = (~in[0]*~in[1]*~in[2]*in[3]) | (~in[0]*in[1]*~in[2]*~in[3]) | (~in[0]*in[1]*in[2]*in[3]) | (in[0]*~in[1]*in[2]*~in[3]) | (in[0]*in[1]*in[2]*in[3]);
	assign out[4] =  ((~in[0])*(~in[1])*(~in[2])*in[3]) | (~in[0]*~in[1]*in[2]*in[3]) | (~in[0]*in[1]*~in[2]*~in[3]) | (~in[0]*in[1]*~in[2]*in[3]) | (~in[0]*in[1]*in[2]*in[3]) | (in[0]*~in[1]*~in[2]*in[3]) ;
	assign out[5] = ((~in[0])*(~in[1])*(~in[2])*in[3]) | ((~in[0])*(~in[1])*in[2]*(~in[3])) | ((~in[0])*(~in[1])*in[2]*in[3]) | ((~in[0])*in[1]*(in[2])*(in[3])) | (in[0]*in[1]*(~in[2])*in[3]);
	
	
	// Fout = ~in[0]~in[1]~in[2]~in[3] + ~in[0]~in[1]~in[2]in[3] + ~in[0]in[1]in[2]in[3] +in[0]in[1]~in[2]~in[3] 
	//	     = ~in[0]~in[1]~in[2](~in[3]+in[3]) +~in[0]in[1]in[2]in[3]+in[0]in[1]~in[2]~in[3]
	//      = ~in[0]~in[1]~in[2] +~in[0]in[1]in[2]in[3] + in[0]in[1]~in[2]~in[3] 
				
	assign out[6] = (~in[0]*~in[1]*~in[2]) | (~in[0]*in[1]*in[2]*in[3]) | (in[0]*in[1]*~in[2]*~in[3]) ;
	


endmodule 
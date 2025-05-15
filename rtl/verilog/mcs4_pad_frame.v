`timescale 1ns / 1ps
`default_nettype none
////////////////////////////////////////////////////////////////////////
//
// MCS-4 project pad frame 
//
////////////////////////////////////////////////////////////////////////

module mcs4_pad_frame(
    inout			VDD,
    inout			VSS,
    inout			VDD_IOR,
    inout			VSS_IOR,
	input 			sysclk,
	input 			poc_pad,
	input 			clear_pad,
	output [9:0]	p_out,
	output [7:0]	io_pad
	);

	wire 		sysclk_w, poc_pad_w, clear_pad_w;
	wire [9:0]	p_out_w;
	wire [7:0] 	io_pad_w;

	//Integrated MCS-4 Chip Family 
	mcs4	mcs4_core	(	.sysclk		(sysclk_w), 
							.poc_pad	(poc_pad_w),
							.clear_pad	(clear_pad_w),
							.p_out		(p_out_w), 
							.io_pad		(io_pad_w)
						);

	//input pads
	PADDI	pad_sysclk	(	.PAD(sysclk), .Y(sysclk_w)	);	
	
	PADDI	pad_poc_pad	(	.PAD(poc_pad), .Y(poc_pad_w)	);	
	
	PADDI	pad_clear_pad	(	.PAD(clear_pad), .Y(clear_pad_w)	);

	//output pads
	PADDO	pad_p_out0	(	.A(p_out_w[0]), .PAD(p_out[0])	);		
	PADDO	pad_p_out1	(	.A(p_out_w[1]), .PAD(p_out[1])	);		
	PADDO	pad_p_out2	(	.A(p_out_w[2]), .PAD(p_out[2])	);		
	PADDO	pad_p_out3	(	.A(p_out_w[3]), .PAD(p_out[3])	);		
	PADDO	pad_p_out4	(	.A(p_out_w[4]), .PAD(p_out[4])	);		
	PADDO	pad_p_out5	(	.A(p_out_w[5]), .PAD(p_out[5])	);		
	PADDO	pad_p_out6	(	.A(p_out_w[6]), .PAD(p_out[6])	);		
	PADDO	pad_p_out7	(	.A(p_out_w[7]), .PAD(p_out[7])	);		
	PADDO	pad_p_out8	(	.A(p_out_w[8]), .PAD(p_out[8])	);		
	PADDO	pad_p_out9	(	.A(p_out_w[9]), .PAD(p_out[9])	);
		
	PADDO	pad_io_pad0	(	.A(io_pad_w[0]), .PAD(io_pad[0])	);		
	PADDO	pad_io_pad1	(	.A(io_pad_w[1]), .PAD(io_pad[1])	);		
	PADDO	pad_io_pad2	(	.A(io_pad_w[2]), .PAD(io_pad[2])	);		
	PADDO	pad_io_pad3	(	.A(io_pad_w[3]), .PAD(io_pad[3])	);		
	PADDO	pad_io_pad4	(	.A(io_pad_w[4]), .PAD(io_pad[4])	);		
	PADDO	pad_io_pad5	(	.A(io_pad_w[5]), .PAD(io_pad[5])	);		
	PADDO	pad_io_pad6	(	.A(io_pad_w[6]), .PAD(io_pad[6])	);		
	PADDO	pad_io_pad7	(	.A(io_pad_w[7]), .PAD(io_pad[7])	);		
	
	//core pwr pads
	PADVDD	pad_vdd	(	.VDD(VDD)	);
	PADVSS	pad_vss	(	.VSS(VSS)	);
	
	//io ring pwr pads
	PADVDDIOR	pad_vdd_ior	(	.VDD(VDD_IOR)	);
	PADVSSIOR	pad_vss_ior	(	.VSS(VSS_IOR)	);

	//corner pads
	padIORINGCORNER	NE_padIORINGCORNER	();
	padIORINGCORNER NW_padIORINGCORNER	();
	padIORINGCORNER SE_padIORINGCORNER	();
	padIORINGCORNER SW_padIORINGCORNER	();

endmodule

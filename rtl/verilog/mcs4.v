`timescale 1ns / 1ps
`default_nettype none
////////////////////////////////////////////////////////////////////////
//
// MCS-4 chip family 
//
// This module is a top level for the full MCS-4 chip family
// implementation as a single unit
//
// This top level instantiates an i4004 CPU module, i4001 and
// i4001_rom ROM modules, an i4002 RAM module, and an i4003 Shift
// Register module for a full system FPGA emulation
//
//
// Copyright © 2021 by Reece Pollack <rrpollack@opencores.org>
//
// These materials are provided under the Creative Commons
// "Attribution-NonCommercial-ShareAlike" (CC BY-NC-SA) Public License.
// They are NOT "public domain", and are protected by copyright.
//
// This work based on materials provided by Intel Corporation and
// others under the same license. See the file doc/License for
// details of this license.
//
////////////////////////////////////////////////////////////////////////

module mcs4(

    // Inputs
    input	wire	sysclk,
    input	wire	poc_pad,
    //input	wire	test_pad,
    input	wire	clear_pad,

    // Outputs
    //output	wire        cmrom_pad,
    //output	wire        cmram0_pad,
    //output	wire        cmram1_pad,
    //output	wire        cmram2_pad,
    //output	wire        cmram3_pad,
    //output	wire        sync_pad,
	output 	wire [9:0] 	p_out, 

    // Bidirs
    //inout	wire [3:0]  data_pad,
    inout	wire [7:0]  io_pad
	);
	
    localparam SYSCLK_TCY = 50;     // 20 MHz Oscillator period in ns
    // localparam SYSCLK_TCY = 20;     // 50 MHz Oscillator period in ns

	// Instantiate the 2-phase clock generator
    wire	clk1_pad;
    wire	clk2_pad;

	wire		sync_pad;
	wire		cmrom_pad;
	wire		cmram0_pad;
	wire		cmram1_pad;
	wire		cmram2_pad;
	wire		cmram3_pad;
	
	wire [3:0]	data_pad;
	wire [3:0] data_in;
	wire [3:0] data_out;
	wire       data_dir;

	assign data_pad = data_dir ? data_out : 4'bzzzz;
	assign data_in  = data_pad;

	clockgen #(
        .SYSCLK_TCY (SYSCLK_TCY)
    ) clockgen (
        .sysclk     (sysclk),
        .clk1       (clk1_pad),
        .clk2       (clk2_pad)
    );

    // Instantiate 4001 ROM chips
	wire [11:0] rom_addr0;
	wire [11:0] rom_addr1;
    wire [ 7:0] rom_data0;
    wire [ 7:0] rom_data1;
    
	i4001 #(
        .ROM_NUMBER(4'd0)//,
        //.IO_OUTPUT(4'b1111)
    ) rom_0 (
        .sysclk(sysclk),
        .clk1_pad(clk1_pad),
        .clk2_pad(clk2_pad),
        .sync_pad(sync_pad),
        .poc_pad(poc_pad),
        .cmrom_pad(cmrom_pad),
        //.data_pad(data_pad),
        .data_pad(data_in),
        .data_out(data_out),
        .data_dir(data_dir),
        .io_pad(io_pad[3:0]),
        .clear_pad(clear_pad),
        .rom_addr(rom_addr0),
        .rom_data(rom_data0)
    );

    i4001_rom #(
        .ROM_NUMBER(4'd0)
    ) rom_store0 (
        .sysclk(sysclk),
        .rom_addr(rom_addr0),
        .rom_data(rom_data0)
    );
    
	i4001 #(
        .ROM_NUMBER(4'd1)//,
        //.IO_OUTPUT(4'b1111)
    ) rom_1 (
        .sysclk(sysclk),
        .clk1_pad(clk1_pad),
        .clk2_pad(clk2_pad),
        .sync_pad(sync_pad),
        .poc_pad(poc_pad),
        .cmrom_pad(cmrom_pad),
        //.data_pad(data_pad),
		.data_pad(data_in),
        .data_out(data_out),
        .data_dir(data_dir),
        .io_pad(io_pad[7:4]),
        .clear_pad(clear_pad),
        .rom_addr(rom_addr1),
        .rom_data(rom_data1)
    );

    i4001_rom #(
        .ROM_NUMBER(4'd1)
    ) rom_store1 (
        .sysclk(sysclk),
        .rom_addr(rom_addr1),
        .rom_data(rom_data1)
    );

    // Instantiate a 4002 RAM chip
    wire [3:0]  oport;
    
	i4002 ram_0 (
        .sysclk         (sysclk),
        .clk1           (clk1_pad),
        .clk2           (clk2_pad),
        .sync           (sync_pad),
        .reset          (poc_pad),
        .cm             (cmram0_pad),
        //.data           (data_pad),
		.data_pad(data_in),
        .data_out(data_out),
        .data_dir(data_dir),
        .oport          (oport),
        .ram0_addr2     (5'h00),
        .ram0_data2_out (),
        .ram1_addr2     (5'h00),
        .ram1_data2_out (),
        .ram2_addr2     (5'h00),
        .ram2_data2_out (),
        .ram3_addr2     (5'h00),
        .ram3_data2_out ()
    );
	
	// Instantiate a 4003 Shift Register chip
	i4003 shiftreg (
   		.sysclk(sysclk),
    	.cp(clk2_pad),                    // Usa clk2 como reloj de entrada
    	.serial_in(oport[0]),      // Entrada serial desde el bus de datos (bit 0)
    	.enable(1'b1),                // Siempre habilitado para fines de prueba
    	.parallel_out(p_out),
    	.serial_out()                 // No lo usamos por ahora
	);

    // Instantiate the Unit Under Test (UUT)
    i4004 i4004 (
        .sysclk(sysclk),
		.clk1_pad(clk1_pad),
        .clk2_pad(clk2_pad),
        .poc_pad(poc_pad),
        .test_pad(/*test_pad*/),
        //.data_pad(data_pad),
		.data_pad(data_in),
        .data_out(data_out),
        .data_dir(data_dir),
        .cmrom_pad(cmrom_pad),
        .cmram0_pad(cmram0_pad),
        .cmram1_pad(cmram1_pad),
        .cmram2_pad(cmram2_pad),
        .cmram3_pad(cmram3_pad),
        .sync_pad(sync_pad)
    );

    // Simplify access to internal registers
/*
	wire  [3:0] acc  = i4004.alu_board.acc;
    wire        cy   = i4004.alu_board.cy;

	wire  [7:0] r0r1 = i4004.sp_board.dram_array[0];
    wire  [7:0] r2r3 = i4004.sp_board.dram_array[1];
    wire  [7:0] r4r5 = i4004.sp_board.dram_array[2];
    wire  [7:0] r6r7 = i4004.sp_board.dram_array[3];
    wire  [7:0] r8r9 = i4004.sp_board.dram_array[4];
    wire  [7:0] rarb = i4004.sp_board.dram_array[5];
    wire  [7:0] rcrd = i4004.sp_board.dram_array[6];
    wire  [7:0] rerf = i4004.sp_board.dram_array[7];

    wire [11:0] ip0  = i4004.ip_board.dram_array[0];
    wire [11:0] ip1  = i4004.ip_board.dram_array[1];
    wire [11:0] ip2  = i4004.ip_board.dram_array[2];
    wire [11:0] ip3  = i4004.ip_board.dram_array[3];
    wire  [1:0] ptr  = i4004.ip_board.addr_ptr;
*/
endmodule

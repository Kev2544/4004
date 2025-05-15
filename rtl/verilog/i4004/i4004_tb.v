`timescale 1ns / 1ps
`default_nettype none
////////////////////////////////////////////////////////////////////////
//
// MCS-4 i4004 CPU testbench
//
// This module is a testbench for the i4004 and related modules.
//
// This testbench instantiates an i4004 CPU module, i4001 and
// i4001_rom ROM modules, and an i4002 RAM module, so that the
// simulation can be compared with that of Lagos Kintle's software
// emulator.
//
// This file is part of the MCS-4 project hosted at OpenCores:
//      http://www.opencores.org/cores/mcs-4/
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

module i4004_tb;

    localparam SYSCLK_TCY = 50;     // 20 MHz Oscillator period in ns
    // localparam SYSCLK_TCY = 20;     // 50 MHz Oscillator period in ns

    // Inputs
    reg         sysclk    = 1'b0;
    reg         poc_pad   = 1'b1;
    reg         test_pad  = 1'b1;
    reg         clear_pad = 1'b0;
    wire        clk1_pad;
    wire        clk2_pad;

    // Outputs
    wire        cmrom_pad;
    wire        cmram0_pad;
    wire        cmram1_pad;
    wire        cmram2_pad;
    wire        cmram3_pad;
    wire        sync_pad;

    // Bidirs
    wire [3:0]  data_pad;
    wire [3:0]  io_pad;

    // Generate a system clock
    always begin
        sysclk = 1'b0;
        #(SYSCLK_TCY / 2);
        sysclk = 1'b1;
        #(SYSCLK_TCY / 2);
    end

    // Instantiate the 2-phase clock generator
    clockgen #(
        .SYSCLK_TCY (SYSCLK_TCY)
    ) clockgen (
        .sysclk     (sysclk),
        .clk1       (clk1_pad),
        .clk2       (clk2_pad)
    );

    // Instantiate a 4001 ROM chip
    wire [11:0] rom_addr;
    wire [ 7:0] rom_data;
    i4001 #(
        .ROM_NUMBER(4'd0),
        .IO_OUTPUT(4'b1111)
    ) rom_0 (
        .sysclk(sysclk),
        .clk1_pad(clk1_pad),
        .clk2_pad(clk2_pad),
        .sync_pad(sync_pad),
        .poc_pad(poc_pad),
        .cmrom_pad(cmrom_pad),
        .data_pad(data_pad),
        .io_pad(io_pad),
        .clear_pad(clear_pad),
        .rom_addr(rom_addr),
        .rom_data(rom_data)
    );

    i4001_rom #(
        .ROM_NUMBER(4'd0)
    ) rom_store (
        .sysclk(sysclk),
        .rom_addr(rom_addr),
        .rom_data(rom_data)
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
        .data           (data_pad),
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

    // Instantiate the Unit Under Test (UUT)
    i4004 i4004 (
        .clk1_pad(clk1_pad),
        .clk2_pad(clk2_pad),
        .poc_pad(poc_pad),
        .test_pad(test_pad),
        .data_pad(data_pad),
        .cmrom_pad(cmrom_pad),
        .cmram0_pad(cmram0_pad),
        .cmram1_pad(cmram1_pad),
        .cmram2_pad(cmram2_pad),
        .cmram3_pad(cmram3_pad),
        .sync_pad(sync_pad)
    );

    // Simplify access to internal registers
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

    // Count cycles to make it easier to sync with the analyzer
    integer     cycle = 1;
    always @(posedge clk1_pad or negedge clk1_pad or
             posedge clk2_pad or negedge clk2_pad) begin
        cycle = cycle + 1;
        if (cycle == 1100) begin
            // Bring us out of reset
            poc_pad = 1'b0;
        end
    end

    // initial begin
    //     // Wait for 33 SYNCs to allow the i4002 RAMs to initialize
    //     repeat (33)
    //         @(posedge sync_pad);

    //     // Bring us out of reset
    //     poc_pad = 1'b0;
    // end

endmodule

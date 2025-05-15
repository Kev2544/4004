`timescale 1ns / 1ps
`default_nettype none
////////////////////////////////////////////////////////////////////////
//
// MCS-4 i4001 ROM testbench
//
// This module is a testbench for the i4001 and i4001_rom modules.
//
// This testbench instantiates i4001 and i4001_rom modules, and
// and enough of the i4004 system bus logic to be able to test
// ROM access. The testbench dumps the contents of ROM in a
// textual hex dump format that can be reviewed by a human; not
// the ideal testbench operation but useful at the time.
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

module i4001_tb;

    localparam SYSCLK_TCY = 50;     // 20 MHz Oscillator period in ns
    // localparam SYSCLK_TCY = 20;     // 50 MHz Oscillator period in ns

    // Inputs
    reg         sysclk;
    wire        clk1;
    wire        clk2;
    reg         poc;
    reg         clear_pad = 1'b0;

    wire [11:0] rom_addr;
    wire [ 7:0] rom_data;

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
        .clk1       (clk1),
        .clk2       (clk2)
    );

    // Timing generator outputs
    wire        a12;
    wire        a22;
    wire        a32;
    wire        m12;
    wire        m22;
    wire        x12;
    wire        x22;
    wire        x32;
    wire        sync;

    // Generate the 8 execution phase indicators
    timing_generator timing_generator (
        .clk1   (clk1),
        .clk2   (clk2),
        .a12    (a12),
        .a22    (a22),
        .a32    (a32),
        .m12    (m12),
        .m22    (m22),
        .x12    (x12),
        .x22    (x22),
        .x32    (x32),
        .sync   (sync)
    );

    reg [3:0] opr, opa;
    always @(*) begin
        if (clk2) begin
            if (m12) opr <= data_pad;
            if (m22) opa <= data_pad;
        end
    end

    // Manage the CPU tristate buffers
    reg ior = 1'b0;
    reg L;
    always @(*) begin
        if (clk2)
            L <= a32 | m12 | (x12 & (ior | poc));
    end

    wire n0702 = ~clk2;
    reg n0707;
    always @(*) begin
        if (clk1) begin
            n0707 <=  L;
        end
    end
    wire n0700 = n0707 | (L & n0702) | poc;


    reg  [11:0] addr;
    reg  [ 3:0] data_out;
    always @(*) begin
        if (poc)
            data_out = 4'bzzzz;
        else begin
            (* PARALLEL_CASE *)
            case (1'b1)
            a12:        data_out = addr[ 3:0];
            a22:        data_out = addr[ 7:4];
            a32:        data_out = addr[11:8];
            m12:        data_out = 4'bxxxx;
            m22:        data_out = 4'bxxxx;
            x12:        data_out = opa;
            x22:        data_out = 4'b1111;
            x32:        data_out = 4'b1111;
            default:    data_out = 4'bxxxx;
            endcase
        end
    end
    assign data_pad = n0700 ? 4'bzzzz : data_out;

    // Instantiate the Units Under Test (UUT)
    i4001 #(
        .ROM_NUMBER (4'd0)
    ) rom_0 (
        .sysclk     (sysclk),
        .clk1_pad   (clk1),
        .clk2_pad   (clk2),
        .sync_pad   (sync),
        .poc_pad    (poc),
        .cmrom_pad  (a32),
        .data_pad   (data_pad),
        .io_pad     (io_pad),
        .clear_pad  (clear_pad),
        .rom_addr   (rom_addr),
        .rom_data   (rom_data)
    );

    i4001 #(
        .ROM_NUMBER (4'd1)
    ) rom_1 (
        .sysclk     (sysclk),
        .clk1_pad   (clk1),
        .clk2_pad   (clk2),
        .sync_pad   (sync),
        .poc_pad    (poc),
        .cmrom_pad  (a32),
        .data_pad   (data_pad),
        .io_pad     (io_pad),
        .clear_pad  (clear_pad),
        .rom_addr   (rom_addr),
        .rom_data   (rom_data)
    );

    i4001_rom #(
        .ROM_FILE   ("busicom.mem"),
        .ROM_NUMBER (4'd0)
    ) rom_store (
        .sysclk     (sysclk),
        .rom_addr   (rom_addr),
        .rom_data   (rom_data)
    );


    always @(posedge sync) begin
        if (poc)
            addr <= 12'h000;
        else begin
            if (addr[3:0] == 4'h0)
                $write("\n@%03x", addr);
            $write(" %x%x", opr, opa);
            if (addr == 1279) begin
                $write("\n");
                $finish;
            end
            addr <= addr + 1'b1;
        end
    end

    initial begin
        // Initialize Inputs
        poc = 1'b1;
        clear_pad = 1'b1;

        // Wait 3 SYNCs to reset
        @(posedge sync);
        @(posedge sync);
        @(posedge sync);
        #10;
        poc = 1'b0;
        clear_pad = 1'b0;

    end

endmodule


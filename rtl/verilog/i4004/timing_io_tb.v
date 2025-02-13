`timescale 1ns / 1ps
`default_nettype none
////////////////////////////////////////////////////////////////////////
//
// MCS-4 i4004 CPU Timing and I/O Interface testbench
//
// This testbench instantiates a timing_io module, and drives it
// with the basic 8-subcycle (A1, A2, A3, M1, M2, X1, X2, X3)
// instruction cycle to allow confirmation of the correct direction
// of transfer through the system bus interface.
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

module timing_io_tb;

    localparam SYSCLK_TCY    = 20;   // sysclk period in nanoseconds

    // Inputs
    reg sysclk;
    wire clk1_pad;
    wire clk2_pad;
    reg poc_pad = 1'b0;
    reg test_pad = 1'b0;
    reg ior = 1'b0;
    reg cmrom = 1'b0;
    reg cmram0 = 1'b0;
    reg cmram1 = 1'b0;
    reg cmram2 = 1'b0;
    reg cmram3 = 1'b0;

    // Outputs
    wire clk1;
    wire clk2;
    wire a12;
    wire a22;
    wire a32;
    wire m12;
    wire m22;
    wire x12;
    wire x22;
    wire x32;
    wire sync;
    wire gate;
    wire poc;
    wire n0432;
    wire cmrom_pad;
    wire cmram0_pad;
    wire cmram1_pad;
    wire cmram2_pad;
    wire cmram3_pad;

    // Bidirs
    wire [3:0] data;
    wire [3:0] data_pad;

    // Instantiate the Unit Under Test (UUT)
    timing_io uut (
        .sysclk(sysclk),
        .clk1_pad(clk1_pad),
        .clk2_pad(clk2_pad),
        .poc_pad(poc_pad),
        .ior(ior),
        .clk1(clk1),
        .clk2(clk2),
        .a12(a12),
        .a22(a22),
        .a32(a32),
        .m12(m12),
        .m22(m22),
        .x12(x12),
        .x22(x22),
        .x32(x32),
        .sync(sync),
        .gate(gate),
        .poc(poc),
        .data(data),
        .data_pad(data_pad),
        .test_pad(test_pad),
        .n0432(n0432),
        .cmrom(cmrom),
        .cmrom_pad(cmrom_pad),
        .cmram0(cmram0),
        .cmram0_pad(cmram0_pad),
        .cmram1(cmram1),
        .cmram1_pad(cmram1_pad),
        .cmram2(cmram2),
        .cmram2_pad(cmram2_pad),
        .cmram3(cmram3),
        .cmram3_pad(cmram3_pad)
    );

    // Instantiate the 2-phase clock generator
    clockgen #(
        .SYSCLK_TCY(SYSCLK_TCY)
    ) clockgen (
        .sysclk(sysclk),
        .clk1(clk1_pad),
        .clk2(clk2_pad)
    );

    always begin
        sysclk = 1'b0;
        #(SYSCLK_TCY / 2);
        sysclk = 1'b1;
        #(SYSCLK_TCY / 2);
    end

    reg [3:0] data_out;
    always @* begin
        if (poc)
            data_out = 4'bzzzz;
        else begin
            (* PARALLEL_CASE *)
            case (1'b1)
            a12:        data_out = 4'b0001;
            a22:        data_out = 4'b0010;
            a32:        data_out = 4'b0011;
            m12:        data_out = 4'bzzzz;
            m22:        data_out = 4'bzzzz;
            x12:        data_out = 4'b0110;
            x22:        data_out = 4'b0111;
            x32:        data_out = 4'b1000;
            default:    data_out = 4'bxxxx;
            endcase
        end
    end
    assign data = data_out;
    assign data_pad = 4'bzzzz;

    initial begin
        // Initialize Inputs
        poc_pad = 1'b1;

        // Wait 10000 ns for global reset to finish
        #10000;

        // Add stimulus here
        @(posedge m12);
        poc_pad = 1'b0;
    end

endmodule


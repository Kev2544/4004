`timescale 1ns / 1ps
`default_nettype none
////////////////////////////////////////////////////////////////////////
//
// MCS-4 i40031 Shift Register testbench
//
// This testbench instantiates two i4003 modules, resets them, and
// shifts a single '1' bit through them.
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

module i4003_tb;

    // Inputs
    reg sysclk = 1'b0;
    reg cp;
    reg serial_in;
    reg enable;

    // Interconnection
    wire serial_chain;

    // Outputs
    wire [19:0] parallel_out;
    wire serial_out;

    // Instantiate the Unit Under Test (UUT)
    i4003 #(
        .SYSCLK_TCY     (50)
        ) uut1 (
        .sysclk         (sysclk),
        .cp             (cp),
        .serial_in      (serial_in),
        .enable         (enable),
        .parallel_out   (parallel_out[9:0]),
        .serial_out     (serial_chain)
    );

    // Instantiate the Unit Under Test (UUT)
    i4003 #(
        .SYSCLK_TCY     (50)
        ) uut2 (
        .sysclk         (sysclk),
        .cp             (cp),
        .serial_in      (serial_chain),
        .enable         (enable),
        .parallel_out   (parallel_out[19:10]),
        .serial_out     (serial_out)
    );

    always begin
        #25 sysclk = ~sysclk;
    end

    integer i;

    initial begin
        // Initialize Inputs
        cp = 1'b0;
        serial_in = 1'b0;
        enable = 1'b0;

        // Wait 100 ns for global reset to finish
        #100;
        enable = 1'b1;

        // Shift a 1 down the registers
        shift(1'b1);
        for (i = 0; i < 21; i = i + 1)
            shift(1'b0);

        $finish;
    end

    task shift(
        input si
    );
        begin
            cp = 1'b1;
            #250;
            serial_in = si;
            #2750;
            serial_in = 1'b0;
            #3000;
            cp = 1'b0;
            #6000;
        end
    endtask

endmodule


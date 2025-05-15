`timescale 1ns / 1ps
`default_nettype none
////////////////////////////////////////////////////////////////////////
//
// MCS-4 common clock generator testbench
//
// This module is a testbench for the two-phase clock generator module.
//
// As a testbench, it leaves much to be desired. It allows a user to
// observe the behavior of the module through simulation, but does
// not verify its proper operation. Use at your own risk.
//
// This file is part of the MCS-4 project hosted at OpenCores:
//      http://www.opencores.org/cores/mcs-4/
//
// Copyright © 2012, 2021 by Reece Pollack <rrpollack@opencores.org>
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

module clockgen_tb;

    parameter SYSCLK_TCY = 20;

    // Inputs
    reg     sysclk;

    // Outputs
    wire    clk1;
    wire    clk2;
    wire    clk1_ext;
    wire    clk2_ext;

    // Instantiate the Unit Under Test (UUT)
    clockgen #(
        .SYSCLK_TCY     (SYSCLK_TCY),
        .EXT_CLK_PROP   (4)
    ) clockgen (
        .sysclk     (sysclk),
        .clk1       (clk1),
        .clk2       (clk2),
        .clk1_ext   (clk1_ext),
        .clk2_ext   (clk2_ext)
    );

    always begin
        sysclk = 1'b0;
        #(SYSCLK_TCY / 2);
        sysclk = 1'b1;
        #(SYSCLK_TCY / 2);
    end

    initial begin
        $display ("counter width (W) is %d\n", clockgen.W);
    end

endmodule


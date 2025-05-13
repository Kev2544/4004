`timescale 1ns / 1ps
`default_nettype none
////////////////////////////////////////////////////////////////////////
//
// MCS-4 common clock generator sub-module
//
// This module implements a two-phase clock generator suitable
// for use with the MCS-4 emulation.
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

module clockgen #(
    parameter SYSCLK_TCY    = 20//,   // System clock cycle time in nanoseconds
//    parameter EXT_CLK_PROP  = 0     // External clock propagation delay in sysclk cycles
    ) (
    input  wire sysclk,
    output reg  clk1,
    output reg  clk2//,
//    output reg  clk1_ext,
//    output reg  clk2_ext
    );

`include "functions.vh"

    //
    // Instruction phase timing in nanoseconds
    //
    // These are chosen to be nicely divisible by the clock
    // period from any of these three systems while giving
    // timing that would be compatible with a real i4004:
    //   * 50ns (20 MHz)  -- P170-DH replacement board
    //   * 20ns (50 MHz)  -- Digilent Spartan-3e Starter board
    //   * 10ns (100 MHz) -- Digilent Atlys Spartan-6 board
    //
    localparam  TPW = 400;      // Clock high pulse width
    localparam  TD1 = 400;      // Delay from clk1 to clk2
    localparam  TD2 = 200;      // Delay from clk2 to clk1

    // MCS-4 instruction phase cycle time
    localparam  TCY = TD1 + TPW + TD2 + TPW;

    // Calculate counter maximum value and width
    localparam  CMAX    = (TCY / SYSCLK_TCY) - 1;
    localparam  W       = clog2(CMAX);

    //
    // Instruction phase timing in sysclk cycles
    //
    localparam  SYSCLK_TPW  = TPW / SYSCLK_TCY;
    localparam  SYSCLK_TD1  = TD1 / SYSCLK_TCY;
    localparam  SYSCLK_TD2  = TD2 / SYSCLK_TCY;

    // Divide the system clock to produce basic machine cycle
    localparam  [W-1:0] CLOCKDIV_MAX    = CMAX;
    reg         [W-1:0] clockdiv;
    always @(posedge sysclk) begin
        clockdiv <= (clockdiv == CLOCKDIV_MAX) ? 1'd0 : (clockdiv + 1'd1);
    end

    // Set the timing of the internal 2-phase clocks
    localparam  [W-1:0] CLK1_START  = SYSCLK_TD2 - 1,
                        CLK1_END    = CLK1_START + SYSCLK_TPW,
                        CLK2_START  = CLK1_END   + SYSCLK_TD1,
                        CLK2_END    = CLK2_START + SYSCLK_TPW;

    always @(posedge sysclk) begin
        case (clockdiv)
            CLK1_START: clk1 <= 1'b1;
            CLK1_END:   clk1 <= 1'b0;
        endcase
    end

    always @(posedge sysclk) begin
        case (clockdiv)
            CLK2_START: clk2 <= 1'b1;
            CLK2_END:   clk2 <= 1'b0;
        endcase
    end

    //
    // Set the timing of the external 2-phase clocks
    //
    // It takes ~70ns for the clocks to propagate from the FPGA through the
    // clock driver chip to the reconstructed i4004 CPU circuitry. To match
    // the timings, this module also provides advanced clock outputs.
    //
/*    localparam  [W-1:0] CLK1_EXT_START  = CLK1_START - EXT_CLK_PROP,
                        CLK1_EXT_END    = CLK1_END   - EXT_CLK_PROP,
                        CLK2_EXT_START  = CLK2_START - EXT_CLK_PROP,
                        CLK2_EXT_END    = CLK2_END   - EXT_CLK_PROP;

    always @(posedge sysclk) begin
        case (clockdiv)
            CLK1_EXT_START: clk1_ext <= 1'b1;
            CLK1_EXT_END:   clk1_ext <= 1'b0;
        endcase
    end

    always @(posedge sysclk) begin
        case (clockdiv)
            CLK2_EXT_START: clk2_ext <= 1'b1;
            CLK2_EXT_END:   clk2_ext <= 1'b0;
        endcase
    end
*/

endmodule

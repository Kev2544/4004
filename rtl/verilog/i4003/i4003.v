`timescale 1ns / 1ps
`default_nettype none
////////////////////////////////////////////////////////////////////////
//
// MCS-4 i4003 Shift Register
//
// This module emulates the Intel 4003 shift register chip.
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

module i4003 #(
    parameter SYSCLK_TCY = 20       // System clock period in nanoseconds
    ) (
    input  wire         sysclk,
    input  wire         cp,
    input  wire         serial_in,
    input  wire         enable,
    output wire [9:0]   parallel_out,
    output reg          serial_out
    );

/*    initial begin
        serial_out = 1'b0;
    end */

    localparam  LATCH_DELAY_NS = 250;
    localparam  LATCH_DELAY_CY = nstocy(LATCH_DELAY_NS);

    localparam  W = clog2(LATCH_DELAY_CY);

    reg          cp_delayed;
    reg  [W-1:0] cp_delay;
    wire         cp_edge = (cp_delay == LATCH_DELAY_CY[W-1:0]);
    always @(posedge sysclk) begin
        if (cp == cp_delayed) begin
            cp_delay <= 1'b0;
        end
        else begin
            if (cp_edge) begin
                cp_delay <= 1'b0;
                cp_delayed <= cp;
            end
            else begin
                cp_delay <= cp_delay + 1'b1;
            end
        end
    end

    reg  [9:0]  shifter;
    always @(posedge sysclk) begin
        if (cp_edge & cp) begin
            shifter <= {shifter[8:0], serial_in};
        end
    end
    assign parallel_out = enable ? shifter : 10'h000;

    always @(posedge sysclk) begin
        if (cp_edge & ~cp) begin
            serial_out <= shifter[9];
        end
    end


`include "../common/functions.vh"

endmodule

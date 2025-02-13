`timescale 1ns / 1ps
`default_nettype none
////////////////////////////////////////////////////////////////////////
//
// MCS-4 common counter testbench
//
// This module is a testbench for the counter logic found in Intel MCS-4
// integrated circuits such as the i4004 CPU.
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

module counter_tb;

    // Inputs
    reg     sysclk;
    reg     clk1 = 1'b0;
    reg     clk2 = 1'b0;
    wire    step;

    // Outputs
    wire q0, q0n, q1, q1n, q2, q2n;

    // Inter-module connections
    wire b01a, b01b;
    wire b12a, b12b;

    // Instantiate the Unit Under Test (UUT)
    counter b0 (
        .step_a_in(clk1),
        .step_b_in(step),
        .step_a_out(b01a),
        .step_b_out(b01b),
        .q(q0),
        .qn(q0n)
    );

    counter b1 (
        .step_a_in(b01a),
        .step_b_in(b01b),
        .step_a_out(b12a),
        .step_b_out(b12b),
        .q(q1),
        .qn(q1n)
    );

    counter b2 (
        .step_a_in(b12a),
        .step_b_in(b12b),
        .step_a_out(),
        .step_b_out(),
        .q(q2),
        .qn(q2n)
    );

    always begin
        sysclk = 1'b0;  #10;
        sysclk = 1'b1;  #10;
    end

    reg [4:0] clockdiv = 5'b0;
    always @(posedge sysclk) begin
        clockdiv = (clockdiv == 5'd19) ? 5'b0 : (clockdiv + 5'd1);
        if (clockdiv == 5'd0 )  clk1 = 1'b1;
        if (clockdiv == 5'd5 )  clk1 = 1'b0;
        if (clockdiv == 5'd10)  clk2 = 1'b1;
        if (clockdiv == 5'd15)  clk2 = 1'b0;
    end

    // Generate the 8 execution phase indicators
    reg  [0:7]  master = 8'h00;
    reg  [0:7]  slave  = 8'h00;
    reg         sync_pad;
    always @(*) begin
        if (clk2)
            master <= {~|slave[0:6], slave[0:6]};
        else
            sync_pad <= master[7];

        if (clk1)
            slave <= master;
    end

    wire    a12 = slave[0];
    wire    a22 = slave[1];
    wire    a32 = slave[2];
    wire    m12 = slave[3];
    wire    m22 = slave[4];
    wire    x12 = slave[5];
    wire    x22 = slave[6];
    wire    x32 = slave[7];

    assign step = x32 & clk2;

endmodule

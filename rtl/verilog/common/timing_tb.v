`timescale 1ns / 1ps
`default_nettype none
////////////////////////////////////////////////////////////////////////
//
// MCS-4 clock phase generator and recovery module testbench
//
// As a testbench, it leaves much to be desired. It allows a user to
// observe the behavior of the modules through simulation, but does
// not verify their proper operation. Use at your own risk.
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

module timing_tb;

	localparam SYSCLK_TCY = 50;

	// Shared
	reg sysclk;
	wire sync;

    // Clockgen outputs
    wire clk1;
    wire clk2;

    clockgen #(
        .SYSCLK_TCY     (SYSCLK_TCY)
    ) clockgen (
        .sysclk         (sysclk),
        .clk1           (clk1),
        .clk2           (clk2)
    );

	// Generater outputs
	wire gen_a11;
	wire gen_a12;
	wire gen_a21;
	wire gen_a22;
	wire gen_a31;
	wire gen_a32;
	wire gen_m11;
	wire gen_m12;
	wire gen_m21;
	wire gen_m22;
	wire gen_x11;
	wire gen_x12;
	wire gen_x21;
	wire gen_x22;
	wire gen_x31;
	wire gen_x32;

	// Instantiate the timing generator
	timing_generator generator (
		.sysclk(sysclk),
		.clk1(clk1),
		.clk2(clk2),
		.a11(gen_a11),
		.a12(gen_a12),
		.a21(gen_a21),
		.a22(gen_a22),
		.a31(gen_a31),
		.a32(gen_a32),
		.m11(gen_m11),
		.m12(gen_m12),
		.m21(gen_m21),
		.m22(gen_m22),
		.x11(gen_x11),
		.x12(gen_x12),
		.x21(gen_x21),
		.x22(gen_x22),
		.x31(gen_x31),
		.x32(gen_x32),
		.sync(sync)
	);

	// Recovery outputs
	wire rec_a11;
	wire rec_a12;
	wire rec_a21;
	wire rec_a22;
	wire rec_a31;
	wire rec_a32;
	wire rec_m11;
	wire rec_m12;
	wire rec_m21;
	wire rec_m22;
	wire rec_x11;
	wire rec_x12;
	wire rec_x21;
	wire rec_x22;
	wire rec_x31;
	wire rec_x32;

	// Instantiate the timing recovery
	timing_recovery recovery (
		.sysclk(sysclk),
		.clk1(clk1),
		.clk2(clk2),
		.sync(sync),
		.a11(rec_a11),
		.a12(rec_a12),
		.a21(rec_a21),
		.a22(rec_a22),
		.a31(rec_a31),
		.a32(rec_a32),
		.m11(rec_m11),
		.m12(rec_m12),
		.m21(rec_m21),
		.m22(rec_m22),
		.x11(rec_x11),
		.x12(rec_x12),
		.x21(rec_x21),
		.x22(rec_x22),
		.x31(rec_x31),
		.x32(rec_x32)
	);

	initial begin
		// Initialize Inputs
		sysclk = 0;

		forever begin
			#(SYSCLK_TCY/2) sysclk = ~sysclk;
		end
	end

endmodule


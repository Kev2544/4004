`timescale 1ns / 1ps
`default_nettype none
////////////////////////////////////////////////////////////////////////
//
// MCS-4 i4001 shared ROM storage
//
// This module emulates the Intel 4001 ROM storage. It is separate from
// the "i4001" module to make efficient use of FPGA block ram resources.
// One i4001_rom instantiation can be connected to multiple "i4001"
// modules via a rom_addr / rom_data bus.
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

module i4001_rom #(
    parameter       ROM_FILE    = "i4001-0.mem",
    parameter [3:0] ROM_NUMBER  = 4'd0,
    parameter       ROM_SIZE    = 2048
    ) (
    input  wire         sysclk,
    input  wire [11:0]  rom_addr,
    output reg  [ 7:0]  rom_data
    );

    (* rom_style="block" *)
    reg [7:0]   rom_array [0:ROM_SIZE-1];
    initial begin
        $readmemh (ROM_FILE, rom_array);
    end

    wire [11:0] array_addr = {rom_addr[11:8] - ROM_NUMBER,
                              rom_addr[ 7:0]};

    // Block RAMs have synchronous read ports
    // that require a clock to read the array
    always @(posedge sysclk) begin
        rom_data <= rom_array[array_addr];
    end

endmodule

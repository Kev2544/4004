`timescale 1ns / 1ps
`default_nettype none
////////////////////////////////////////////////////////////////////////
//
// MCS-4 i4002 RAM storage
//
// This module defines the RAM allocated to a single i4002 register,
// containing 16x4-bit "main" memory array and a 4x4-bit "status"
// array. An i4002 RAM chip contains four of these RAM register modules.
//
// This implementation allocates a single 20x4-bit dual-port
// RAM: ram_array. The "main" memory array is represented by the
// elements [0:15] of ram_array, while the "status" array is
// represented by elements [16:19].
//
// This module defines a dual-port array to allow the VFD driver access
// to the "Working Register", WR, which is stored in RAM0 register 1.
// The synthesis tools should recognize theinstantiations that do not
// need to be dual-port and trim the unneeded logic and storage.
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

module i4002_ram #(
    parameter   RAM_ARRAY_SIZE = 32 // Size of the RAM array
    ) (
    input  wire         sysclk,
    input  wire [4:0]   addr,       // Address
    input  wire         write,      // Write Enable
    input  wire [3:0]   data_in,    // Data input to write
    output wire [3:0]   data_out,   // Data output (unregistered)

    input  wire [4:0]   addr2,      // 2nd port address
    output wire [3:0]   data2_out   // 2nd port data output (unregisted)
    );

    //
    // Infer a 32x4 distributed dual-port RAM
    //
    // The "status" characters are stored in [16:19]
    //
    (* ram_style="distributed" *)
    reg  [3:0]  ram_array [0:(RAM_ARRAY_SIZE-1)];
    always @(posedge sysclk) begin
        if (write) begin
            ram_array[addr] <= data_in;
        end
    end
    assign data_out  = ram_array[addr];
    assign data2_out = ram_array[addr2];

`ifdef XILINX_ISIM
    // Pre-initialize the RAM
    genvar i;
    generate
        for (i = 0; i < RAM_ARRAY_SIZE; i = i + 1) begin : initial_ram
            initial ram_array[i] = 4'bxxxx;
        end
    endgenerate
`endif

endmodule

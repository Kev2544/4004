`timescale 1ns / 1ps
`default_nettype none
////////////////////////////////////////////////////////////////////////
//
// 4004 Scratchpad Register Array
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

module scratchpad (
    input  wire         sysclk,                 // 50 MHz FPGA clock

    // Inputs from the Timing and I/O board
    input  wire         clk1,
    input  wire         clk2,
    input  wire         a12,
    input  wire         a22,
    input  wire         a32,
    input  wire         m12,
    input  wire         m22,
    input  wire         x12,
    input  wire         x22,
    input  wire         x32,
    input  wire         poc,                    // Power-On Clear (reset)
    input  wire         m12_m22_clk1_m11_m12,   // M12+M22+CLK1~(M11+M12)

    // Common 4-bit data bus
    inout  wire [3:0]   data,

    // Inputs from the Instruction Decode board
    input  wire         n0636,                  // JIN+FIN
    input  wire         sc_m22_clk2,            // SC&M22&CLK2
    input  wire         fin_fim_src_jin,        // FIN+FIM+SRC+JIN
    input  wire         inc_isz_add_sub_xch_ld, // INC+ISZ+ADD+SUB+XCH+LD
    input  wire         inc_isz_xch,            // INC+ISZ+XCH
    input  wire         opa0_n,                 // ~OPA.0
    input  wire         sc,                     // SC (Single Cycle)
    input  wire         dc,                      // DC (Double Cycle, ~SC)
    
    input  wire [3:0] data_in,
    output wire [3:0] data_out,
    output wire       data_dir
    );

    reg  [7:0]  dram_array [0:7];
    reg  [7:0]  dram_temp;
    reg  [3:0]  din_n;

    // Refresh counter stuff
    wire [2:0]  reg_rfsh;               // Row Refresh counter
    wire        reg_rfsh_step;          // SC&A12&CLK2
    wire        n0571;
    wire        n0574;
    wire        n0600;
    wire        n0610;

    assign reg_rfsh_step = sc & a12 & clk2;

    counter reg_rfsh_0 (
        .sysclk(sysclk),
        .step_a_in(clk1),
        .step_b_in(reg_rfsh_step),
        .step_a_out(n0571),
        .step_b_out(n0574),
        .q(reg_rfsh[0]),
        .qn()
    );
    counter reg_rfsh_1 (
        .sysclk(sysclk),
        .step_a_in(n0571),
        .step_b_in(n0574),
        .step_a_out(n0600),
        .step_b_out(n0610),
        .q(reg_rfsh[1]),
        .qn()
    );
    counter reg_rfsh_2 (
        .sysclk(sysclk),
        .step_a_in(n0600),
        .step_b_in(n0610),
        .step_a_out(),
        .step_b_out(),
        .q(reg_rfsh[2]),
        .qn()
    );

    // Row selection mux
    reg  [2:0]  row;                    // {N0646, N0617, N0582}
    always @(posedge sysclk) begin
        if (sc & a22)
            row <= reg_rfsh;
        if (sc_m22_clk2)
            row <= data[3:1];
    end


    // Row Precharge/Read/Write stuff
    wire        precharge;              // SC(A22+M22)CLK2
    wire        row_read;               // (~POC)&CLK2&SC(A32+X12)
    wire        row_write;              // CLK2&SC(A12+M12)

    assign precharge = sc & (a22 | m22) & clk2;
    assign row_read  = ~(poc | ~(clk2 & sc & (a32 | x12)));
    assign row_write = sc & (a12 | m12) & clk2;


    // Column Read selection stuff
    reg n0615;
    always @(posedge sysclk) begin
        if (clk2)
            n0615 <= ~(x12 & (fin_fim_src_jin |
                    (opa0_n & inc_isz_add_sub_xch_ld)));
    end
    wire rrab0 = ~(dc | n0615 | clk2);

    reg n0592;
    always @(posedge sysclk) begin
        if (clk2)
            n0592 <= ~((x22 & fin_fim_src_jin) |
                    (~opa0_n & x12 & inc_isz_add_sub_xch_ld));
    end
    wire rrab1 = ~(dc | n0592 | clk2);


    // Column Write selection stuff
    wire n0564 = opa0_n & fin_fim_src_jin & dc;
    wire n0568 = inc_isz_xch & x32 & sc;
    wire wrab0 = clk2 & ((m12 & n0564) | ( opa0_n & n0568));
    wire wrab1 = clk2 & ((m22 & n0564) | (~opa0_n & n0568));


    // Force row 0 if FIN&X12
    wire fin_x12 = (n0636 & opa0_n) & x12;

    // Manage the row data buffer
    wire [7:0] row_data = dram_array[fin_x12 ? 3'b000 : row];
    always @(posedge sysclk) begin
        if (precharge)
            dram_temp <= 8'b0;

        if (row_read)
            dram_temp <= row_data;

        if (wrab0)
            dram_temp[ 7:4] <= ~din_n;
        if (wrab1)
            dram_temp[ 3:0] <= ~din_n;
    end

    // Handle row writes
    always @(posedge sysclk) begin
        if (row_write)
            dram_array[row] <= dram_temp;
    end

    // Manage the data output mux
    reg   [3:0] dout;
    always @* begin
        if (rrab0)
            dout = dram_temp[7:4];
        else if (rrab1)
            dout = dram_temp[3:0];
        else
            dout = 4'bzzzz; // Default high-impedance state
    end
    assign data = dout;

    // Data In latch
    always @(posedge sysclk) begin
        if (m12_m22_clk1_m11_m12)
            din_n <= ~data;
    end


    // Lógica tentativa para el bus de datos compartido
    reg [3:0] data_out_reg;
    reg       data_dir_reg;

    assign data_out = data_out_reg;
    assign data_dir = data_dir_reg;

    always @(posedge sysclk) begin
        if (poc) begin
            data_out_reg <= 4'b0000;
            data_dir_reg <= 1'b0;
        end else begin
            // Escribe durante m22 y fase válida si se activa xch o fin/fim/src/jin
            if ((m22 && clk2) && (xch || fin_fim_src_jin)) begin
                data_dir_reg <= 1'b1;
                data_out_reg <= /* valor del registro que se intercambia */;
            end else begin
                data_dir_reg <= 1'b0;
            end
        end
    end

endmodule

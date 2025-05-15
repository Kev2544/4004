`timescale 1ns / 1ps
`default_nettype none
////////////////////////////////////////////////////////////////////////
//
// MCS-4 i4001 RAM testbench
//
// This module is a testbench for the i4002 and i4002_ram modules.
//
// This testbench instantiates an i4002 RAM module, and enough of
// the i4004 system bus logic to be able to test RAM access.
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

module i4002_tb;

    localparam SYSCLK_TCY    = 20;   // sysclk period in nanoseconds

    // Inputs
    reg         rst;
    reg         reset;
    reg         cm;
    reg  [4:0]  ram0_addr2;
    reg  [4:0]  ram1_addr2;
    reg  [4:0]  ram2_addr2;
    reg  [4:0]  ram3_addr2;

    // Outputs
    wire [3:0]  oport;
    wire [3:0]  ram0_data2_out;
    wire [3:0]  ram1_data2_out;
    wire [3:0]  ram2_data2_out;
    wire [3:0]  ram3_data2_out;

    // Bidirs
    wire [3:0]  data;

    // Simulate the system clock
    reg     sysclk;
    always begin
        sysclk = 1'b0;
        #(SYSCLK_TCY / 2);
        sysclk = 1'b1;
        #(SYSCLK_TCY / 2);
    end

    // Instantiate a 2-phase clock generator
    wire    clk1, clk2;
    clockgen #(
        .SYSCLK_TCY (SYSCLK_TCY)
    ) clockgen (
        .sysclk     (sysclk),
        .clk1       (clk1),
        .clk2       (clk2)
    );

    // Generate the 8 execution phase indicators
    wire    a12, a22, a32, m12, m22, x12, x22, x32, sync;
    timing_generator timing_generator (
        .clk1   (clk1),
        .clk2   (clk2),
        .a12    (a12),
        .a22    (a22),
        .a32    (a32),
        .m12    (m12),
        .m22    (m22),
        .x12    (x12),
        .x22    (x22),
        .x32    (x32),
        .sync   (sync)
    );


    // Instantiate the Unit Under Test (UUT)
    i4002 uut (
        .sysclk         (sysclk),
        .clk1           (clk1),
        .clk2           (clk2),
        .sync           (sync),
        .reset          (reset),
        .cm             (cm),
        .data           (data),
        .oport          (oport),
        .ram0_addr2     (ram0_addr2),
        .ram0_data2_out (ram0_data2_out),
        .ram1_addr2     (ram1_addr2),
        .ram1_data2_out (ram1_data2_out),
        .ram2_addr2     (ram2_addr2),
        .ram2_data2_out (ram2_data2_out),
        .ram3_addr2     (ram3_addr2),
        .ram3_data2_out (ram3_data2_out)
    );

    reg         data_dir    = 1'b0;
    reg  [3:0]  data_out    = 4'bxxxx;
    reg  [3:0]  data_in     = 4'bxxxx;
    assign data = data_dir ? data_out : 4'bzzzz;

    initial begin
        // Initialize Inputs
        rst         = 1;
        reset       = 1;
        cm          = 0;
        ram0_addr2  = 5'h00;
        ram1_addr2  = 5'h00;
        ram2_addr2  = 5'h00;
        ram3_addr2  = 5'h00;

        // Wait 100 ns for global reset to finish
        #100;
        rst     = 0;
        @(negedge sync);
        reset   = 0;
    end

    // Simulate enough of a i4004 CPU to access RAM
    always @(*) begin
        data_dir = 1'b1;
        data_out = 4'bxxxx;
        cm       = 1'b0;
        case (1'b1)
                a12 :   task_a12;
                a22 :   task_a22;
                a32 :   task_a32;
                m12 :   task_m12;
                m22 :   task_m22;
                x12 :   task_x12;
                x22 :   task_x22;
                x32 :   task_x32;
            default : /* default */;
        endcase
    end

    //
    // i4004 simulation registers
    //
    //
    reg  [11:0] ip       = 12'h000;
    reg  [1:0]  chip_num = 2'b00;
    reg  [1:0]  reg_num  = 2'b01;
    reg  [3:0]  char_num = 4'ha;
    reg  [3:0]  acc;

    reg  [7:0]  rom[0:'hfff];
    wire [7:0]  rom_data = rom[ip];
    initial begin
`ifdef USE_READMEMH
        $readmemh("i4002_tb.mem", rom, 0);
`else
        rom[ 0] = 8'hFD;    // DCL
        rom[ 1] = 8'h21;    // SRC R0
        rom[ 2] = 8'hE9;    // RDM
        rom[ 3] = 8'hE0;    // WRM
        rom[ 4] = 8'h21;    // SRC R0
        rom[ 5] = 8'hE9;    // RDM
        rom[ 6] = 8'hE0;    // WRM
        rom[ 7] = 8'hFF;    // HLT (sim only)
`endif
    end

    // Capture OPR during the M1 phase
    reg  [3:0]  opr;
    always @(*) begin
        if (clk2 & m12)
            opr = data;
    end

    // Capture OPA during the M2 phase
    reg  [3:0]  opa;
    always @(*) begin
        if (clk2 & m22)
            opa = data;
    end

    // Instruction decode
    wire        src = (opr == 4'b0010) & opa[0];
    wire        io  = (opr == 4'b1110);
    wire        ior = io &  opa[3];
    wire        iow = io & ~opa[3];
    wire        ag  = (opr == 4'b1111);
    wire        iac = ag & (opa == 4'b0010);

    always @(*) begin
        if (clk2 & ior) begin
            acc = data;
        end
    end

    task task_a12();
    begin
        data_out = ip[3:0];
        data_dir = 1'b1;
    end
    endtask 

    task task_a22();
    begin
        data_out = ip[7:4];
    end
    endtask 

    task task_a32();
    begin
        data_out = ip[11:8];
        cm = 1'b1;
    end
    endtask 

    task task_m12();
    begin
        data_out = rom_data[7:4];
    end
    endtask 

    task task_m22();
    begin
        data_out = rom_data[3:0];
        cm = io;
        if (~reset) begin
            ip = ip + 'd1;
        end
    end
    endtask 

    task task_x12();
    begin
        data_out = opa;
        if ({opr, opa} == 8'hFF)
            $stop();
    end
    endtask 

    task task_x22();
    begin
        if (src) begin
            data_out = {chip_num, reg_num};
            cm       = 1'b1;
        end
        if (iow) begin
            data_out = acc + 'd1;
        end
        if (ior) begin
            data_dir = 1'b0;
        end
    end
    endtask 

    task task_x32();
    begin
        if (src) begin
            data_out = char_num;
        end
    end
    endtask 


endmodule

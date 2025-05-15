////////////////////////////////////////////////////////////////////////
//
// MCS-4 common useful functions
//
// This file contains a set of useful functions used by other
// MCS-4 emulation modules.
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

    //
    // Calculate integer ceil(log2(value))
    //
    // This is useful for determining the width of a register
    // required to hold the specified value.
    //
    // The implementation of $clog2() in iSim is FUBAR. This
    // performs the same function, except it actually works.
    //
    function integer clog2 (
        input integer value
    );
        integer bits;
        begin
            value = value - 1;
            for (bits = 0; value > 0; bits = bits + 1)
                value = value >> 1;
            clog2 = bits;
        end
    endfunction

    //
    // Convert Nanoseconds to Cycles
    //
    // This converts nanoseconds to cycles, rounded up. This
    // implementation assumes SYSCLK_TCY is already defined.
    //
    function integer nstocy (
        input integer ns
    );
        begin
            nstocy = (ns + (SYSCLK_TCY - 1)) / SYSCLK_TCY;
        end
    endfunction

    //
    // Calculate a Base-2 ceiling
    //
    function integer ceil2 (
        input integer value,
        input integer step
    );
        begin
            ceil2 = (value + (step - 1)) & ~(step - 1);
        end
    endfunction

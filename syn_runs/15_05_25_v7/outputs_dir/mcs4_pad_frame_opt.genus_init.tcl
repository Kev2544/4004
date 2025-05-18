################################################################################
#
# Init setup file
# Created by Genus(TM) Synthesis Solution on 05/15/2025 20:25:06
#
################################################################################

      if { ![is_common_ui_mode] } {
        error "This script must be loaded into an 'innovus -stylus' session."
      }
    


read_mmmc outputs_dir/mcs4_pad_frame_opt.mmmc.tcl

read_physical -lef {/CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/lef//gsclib045_tech.lef /CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/lef//gsclib045_macro.lef /CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/lef//gsclib045_multibitsDFF.lef /CMC/kits/cadence/GPDK045/giolib045_v3.3/lef/giolib045.lef}

read_netlist outputs_dir/mcs4_pad_frame_opt.v

init_design -skip_sdc_read

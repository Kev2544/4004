################################################################################
#
# Init setup file
# Created by Genus(TM) Synthesis Solution on 05/14/2025 00:26:25
#
################################################################################

      if { ![is_common_ui_mode] } {
        error "This script must be loaded into an 'innovus -stylus' session."
      }
    


read_mmmc outputs_May14-00:22:18/mcs4_opt.mmmc.tcl

read_physical -lef {/CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/lef//gsclib045_tech.lef /CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/lef//gsclib045_macro.lef /CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/lef//gsclib045_multibitsDFF.lef}

read_netlist outputs_May14-00:22:18/mcs4_opt.v

init_design -skip_sdc_read

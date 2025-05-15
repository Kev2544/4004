#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Thu May 15 04:27:31 2025                
#                                                     
#######################################################

#@(#)CDS: Innovus v21.12-s106_1 (64bit) 12/08/2021 18:19 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: NanoRoute 21.12-s106_1 NR211128-2235/21_12-UB (database version 18.20.567) {superthreading v2.17}
#@(#)CDS: AAE 21.12-s039 (64bit) 12/08/2021 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: CTE 21.12-s043_1 () Dec  1 2021 10:06:22 ( )
#@(#)CDS: SYNTECH 21.12-s014_1 () Oct 27 2021 04:39:25 ( )
#@(#)CDS: CPE v21.12-s094
#@(#)CDS: IQuantus/TQuantus 20.1.2-s624 (64bit) Thu Sep 2 20:12:03 PDT 2021 (Linux 2.6.32-431.11.2.el6.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
win
save_global Default.globals
set init_gnd_net VSS
set init_lef_file {/CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/lef/gsclib045_tech.lef /CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/lef/gsclib045_macro.lef /CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/lef/gsclib045_multibitsDFF.lef}
set init_verilog ../../release/v0.0.5/mcs4_pad_frame_opt.v
set init_mmmc_file ../../release/v0.0.5/WC_BC_GPDK045_mcs4_Analysis.view
set init_io_file ../../mcs4_frame_GPDK045.ioc
set init_top_cell mcs4_pad_frame
set init_pwr_net VDD
init_design
save_global Default.globals
set init_gnd_net VSS
set init_lef_file {/CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/lef/gsclib045_tech.lef /CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/lef/gsclib045_macro.lef /CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/lef/gsclib045_multibitsDFF.lef}
set init_verilog ../../release/v0.0.5/mcs4_pad_frame_opt.v
set init_mmmc_file ../../release/v0.0.5/WC_BC_GPDK045_mcs4_Analysis.view
set init_io_file ../../mcs4_frame_GPDK045.ioc
set init_top_cell mcs4_pad_frame
set init_pwr_net VDD
init_design
zoomBox -8.09250 -7.59200 213.21400 188.23400
zoomBox 6.50850 -5.14400 194.61900 161.30800
zoomBox 46.13650 1.48600 144.33200 88.37550
zoomBox 52.63400 2.57150 136.10050 76.42800
zoomBox -215.87350 -42.18150 474.48000 568.68750
zoomBox -98.01400 -22.53850 325.94950 352.61150
zoomBox -69.87800 -17.84900 290.49100 301.02850
fit

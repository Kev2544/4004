#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Wed May 14 01:13:57 2025                
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
save_global mcs4.globals
set init_gnd_net VSS
set init_lef_file {/CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/lef/gsclib045_tech.lef /CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/lef/gsclib045_macro.lef /CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/lef/gsclib045_multibitsDFF.lef}
set init_verilog ../../release/v0.0.1/mcs4_opt.v
set init_mmmc_file ../../release/v0.0.1/WC_BC_GPDK045_mcs4_Analysis.view
set init_top_cell mcs4
set init_pwr_net VDD
init_design
getIoFlowFlag
setDesignMode -process 45
floorPlan -site CoreSite -r {170 170 4.0 4.0 4.0 4.0} -adjustToSite
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site CoreSite -s 170 170 4.0 4.18 4.0 4.18
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site CoreSite -s 170.0 170.05 4.0 4.0 4.0 4.0
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site CoreSite -s 170.0 170.05 4.0 4 4.0 4
uiSetTool select
getIoFlowFlag
fit
getIoFlowFlag
setFPlanRowSpacingAndType 1.71 2
setIoFlowFlag 0
set dbgIsMaxIoHeight 1
floorPlan -dieSizeByIoHeight max -site CoreSite -s 170.0 170.05 4.0 4 4.0 4
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site CoreSite -s 170.0 170.05 2.5 2.5 2.5 2.5
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site CoreSite -s 170.0 170.05 2.6 2.6 2.6 2.6
uiSetTool select
getIoFlowFlag
fit

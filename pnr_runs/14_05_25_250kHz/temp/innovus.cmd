#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Wed May 14 05:04:56 2025                
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
encMessage warning 0
encMessage debug 0
is_common_ui_mode
restoreDesign /users/iteso/iteso-s10043/designs/4004/pnr_runs/14_05_25_250kHz/mcs4_bef_hold_fix.dat mcs4
setDrawView fplan
encMessage warning 1
encMessage debug 0
zoomBox -106.83550 11.03150 291.89350 175.03050
zoomBox -72.74100 27.86300 266.17850 167.26200
zoomBox -10.49900 47.77450 234.37050 148.49050
zoomBox 80.99550 76.68850 189.64700 121.37750
selectInst CTS_ccl_a_buf_00003
zoomBox 88.17850 79.09900 180.53300 117.08500
zoomBox 94.25050 81.05600 172.75250 113.34450
zoomBox 99.39050 82.65600 166.11800 110.10150
zoomBox 94.24900 81.06250 172.75300 113.35150
zoomBox -7184.77400 -2224.92250 9567.30250 4665.28800
deselectAll
fit
zoomBox 118.20500 91.08500 150.36150 61.18500
selectInst CTS_cpc_drv_buf_00732
deselectAll
selectInst CTS_cpc_drv_buf_00732
deselectAll
selectInst CTS_cpc_drv_buf_00732
deselectAll
selectInst CTS_cpc_drv_buf_00732
deselectAll
selectInst CTS_cpc_drv_buf_00732
deselectAll
selectInst CTS_cpc_drv_buf_00732
setDrawView place
setDrawView ameba
setDrawView ameba
zoomBox 19.89100 41.33650 183.73000 108.72450
zoomBox -114.53450 5.31250 199.33100 134.40700
setDrawView fplan
ui_view_box
ui_view_box
dbquery -area {-114.5345 5.3125 199.331 134.407} -objType inst
dbquery -area {-114.5345 5.3125 199.331 134.407} -objType regular
dbquery -area {-114.5345 5.3125 199.331 134.407} -objType special
setDrawView place
deselectAll
fit
getAnalysisMode -checkType -quiet
setLayerPreference timingMap -isVisible 1
ctd_win -side none -id ctd_window
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
getMultiCpuUsage -localCpu
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -check_ndr_spacing auto -check_only default -check_same_via_cell true -exclude_pg_net false -ignore_trial_route false -ignore_cell_blockage false -use_min_spacing_on_block_obs auto -report mcs4.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
violationBrowser -all -no_display_false -displayByLayer
zoomBox -6.19050 96.44450 14.40100 73.31400
zoomBox 0.97700 93.02900 9.80300 82.85050
zoomBox 2.21300 88.26700 9.04300 85.02300
zoomBox 6.85400 87.79250 7.44200 86.82050
zoomBox 6.89450 87.53250 7.14750 87.15450
selectMarker 6.9400 87.2700 6.9700 87.4000 2 1 2
zoomBox 6.25550 87.08750 7.75200 87.70300
zoomBox 6.11550 87.05550 7.87700 87.78000
fit
zoomBox 59.81500 91.93100 66.86700 77.82750
zoomBox 62.65000 88.71450 65.47500 86.61150
zoomBox 63.61200 87.94600 64.13150 87.50000
zoomBox 63.69200 87.79750 63.83800 87.65650
zoomBox 63.38150 87.61000 64.15700 87.92900
zoomBox 63.31400 87.59550 64.22700 87.97100
zoomBox 62.75350 87.47400 64.81000 88.32000
uiSetTool copy
fit
zoomBox 65.73900 27.05350 69.68800 23.95100
zoomBox 67.53000 25.66550 68.19650 25.13500
zoomBox 67.62200 25.59050 67.80750 25.45050
zoomBox 67.56500 25.45950 67.85450 25.57850
zoomBox 67.58250 25.46700 67.82850 25.56800
zoomBox 67.59650 25.47300 67.80600 25.55900
zoomBox 66.89700 25.14950 68.93700 25.98850
zoomBox 68.03300 25.96500 68.07200 25.93450
zoomBox 68.00800 25.93150 68.09550 25.96750
zoomBox 67.99950 25.92800 68.10300 25.97050
deselectAll
selectMarker 68.0350 25.9400 68.0850 25.9750 1 1 6
zoomBox 67.94400 25.90350 68.17750 25.99950
zoomBox 67.90550 25.88600 68.22900 26.01900
zoomBox 67.53450 25.70500 68.72350 26.19400
zoomBox 67.06750 25.46900 69.34600 26.40600
checkFPlan -reportUtil
zoomBox 58.40850 22.11800 72.02550 27.71850
fit
zoomBox 173.77400 91.08500 178.00500 76.41700
zoomBox 175.04250 88.21150 175.49300 88.01850
deselectAll
zoomBox 175.00050 88.00150 175.55250 88.22850
zoomBox 174.96200 87.98000 175.61100 88.24700
zoomBox 174.91650 87.95450 175.68000 88.26850
zoomBox 174.27000 87.58900 176.65450 88.57000
zoomBox 174.79200 87.96250 175.85100 88.39800
zoomBox 174.85450 88.00750 175.75450 88.37750
selectObject IO_Pin {io_pad[6]}
deselectAll
zoomBox 48.09650 57.56450 361.28200 186.37900
selectMarker 175.2000 88.2150 175.2650 88.2950 5 1 6
fit
zoomBox 80.12450 73.59600 92.53600 69.36500
zoomBox 85.04300 72.13750 85.88600 71.53300
deselectAll
selectWire 84.6600 71.6850 86.5400 71.7650 3 CTS_3
zoomBox 84.57400 71.48650 86.30300 72.19750
zoomBox 84.39100 71.43100 86.42500 72.26750
zoomBox 84.17600 71.36500 86.56850 72.34900
fit
violationBrowserClose
deselectAll
zoomBox 110.02500 72.46750 130.61650 50.18350
zoomBox 110.01300 60.35000 111.89900 58.39900
report_unit_parasitics
report_clocks
fit
ctd_win -side none -id ctd_window
selectInst CTS_cdb_buf_00028
zoomSelected
deselectAll
fit
zoomBox -173.56200 6.17150 326.44650 170.17050
zoomBox -7.26050 81.12150 44.12800 97.97650
zoomBox -4.51900 82.34950 39.16100 96.67600
zoomBox 1.47450 85.03400 28.30000 93.83250
zoomBox -0.49150 84.23350 31.06800 94.58500
zoomBox -2.83550 83.32700 34.29500 95.50550
zoomBox -5.59250 82.26050 38.09150 96.58850
zoomBox -12.65150 79.53000 47.81200 99.36150
zoomBox -17.14050 77.79350 53.99400 101.12500
zoomBox -22.42150 75.75050 61.26650 103.19950
zoomBox -28.63400 73.34700 69.82250 105.64000
zoomBox -35.95400 70.53050 79.87700 108.52200
ctd_win -side none -id ctd_window
fit
selectObject IO_Pin sysclk
selectInst CTS_cdb_buf_00024
selectObject Net sysclk
selectInst CTS_cdb_buf_00025
selectObject Net CTS_710
selectInst CTS_cdb_buf_00026
selectObject Net CTS_709
selectInst CTS_cdb_buf_00027
selectObject Net CTS_708
selectInst CTS_cdb_buf_00028
selectObject Net CTS_707
selectInst CTS_cdb_buf_00029
selectObject Net CTS_706
selectInst CTS_cdb_buf_00030
selectObject Net CTS_705
selectInst CTS_cdb_buf_00031
selectObject Net CTS_704
selectInst CTS_cdb_buf_00032
selectObject Net CTS_703
selectInst CTS_cdb_buf_00033
selectObject Net CTS_702
selectInst CTS_cdb_buf_00034
selectObject Net CTS_701
selectInst CTS_cdb_buf_00035
selectObject Net CTS_700
selectInst CTS_cdb_buf_00036
selectObject Net CTS_699
selectObject Net CTS_698
zoomSelected
deselectAll
zoomBox -214.67700 -22.73400 115.25350 112.96800
zoomBox -178.78750 -12.70500 101.65350 102.64150
fit
